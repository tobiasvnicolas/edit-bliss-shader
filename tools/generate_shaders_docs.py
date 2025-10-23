#!/usr/bin/env python3
"""
Simple extractor para generar documentación por archivo GLSL/FSH/VSH/CSH.
Genera un markdown por archivo en docs/lib/ con:
 - path original
 - includes (#include "/lib/...")
 - uniforms/variables (líneas que empiezan con uniform/variable)
 - defines (#define, #ifdef, #ifndef)
 - funciones (heurística: líneas que terminan con ") {" o patrones de "vec3 name(" )
 - constantes (const )

El script es heurístico y no parsea GLSL completamente; busca patrones útiles para documentación.
"""

import os
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SHADERS_DIR = ROOT / 'shaders'
OUT_DIR = ROOT / 'docs' / 'lib'
OUT_DIR.mkdir(parents=True, exist_ok=True)

EXTS = ['.glsl', '.fsh', '.vsh', '.csh']

include_re = re.compile(r"#include\s+\"?(?:'|\")?/?([\w\-\./]+)\"?(?:'|\")?")
uniform_re = re.compile(r"^\s*(uniform|variable)\.?(?:vec\d|int|float|bool|sampler2D|sampler2DShadow|image2D)?[\s\w\[\].]*")
define_re = re.compile(r"^\s*#\s*(define|ifdef|ifndef|endif|if|else|elif)\b(.*)")
const_re = re.compile(r"\bconst\b")
func_re = re.compile(r"^\s*([\w\d_]+)\s+([\w\d_]+)\s*\((.*?)\)\s*\{")


def extract_metadata(text):
    lines = text.splitlines()
    includes = []
    uniforms = []
    defines = []
    consts = []
    funcs = []

    for i, line in enumerate(lines):
        # includes
        m = re.search(r'#include\s+\"([^\"]+)\"', line)
        if m:
            includes.append(m.group(1))
            continue
        # uniforms/variables (heuristic)
        if line.strip().startswith(('uniform ', 'uniform.', 'variable.', 'variable ')):
            uniforms.append(line.strip())
            continue
        # defines
        m = define_re.match(line)
        if m:
            defines.append(line.strip())
            continue
        # constants
        if 'const ' in line:
            consts.append(line.strip())
            continue
        # functions (heuristic)
        m = func_re.match(line)
        if m:
            ret = m.group(1)
            name = m.group(2)
            params = m.group(3)
            funcs.append({'name': name, 'ret': ret, 'params': params, 'line': i+1})

    return {
        'includes': includes,
        'uniforms': uniforms,
        'defines': defines,
        'consts': consts,
        'funcs': funcs,
    }


for root, dirs, files in os.walk(SHADERS_DIR):
    for f in files:
        p = Path(root) / f
        if p.suffix.lower() in EXTS:
            rel = p.relative_to(ROOT)
            out_name = '_'.join(rel.parts).replace('/', '_') + '.md'
            out_path = OUT_DIR / out_name
            try:
                text = p.read_text(encoding='utf-8')
            except Exception:
                text = p.read_text(encoding='latin-1')

            meta = extract_metadata(text)

            with out_path.open('w', encoding='utf-8') as fh:
                fh.write(f"# {rel}\n\n")
                fh.write(f"**Ruta original:** `{rel}`\n\n")
                fh.write("## Includes\n\n")
                if meta['includes']:
                    for inc in meta['includes']:
                        fh.write(f"- `{inc}`\n")
                else:
                    fh.write("(ninguno detectado)\n")
                fh.write("\n## Uniforms / Variables detectadas\n\n")
                if meta['uniforms']:
                    for u in meta['uniforms'][:200]:
                        fh.write(f"- `{u}`\n")
                else:
                    fh.write("(ninguno detectado)\n")

                fh.write("\n## Defines / Preprocesador\n\n")
                if meta['defines']:
                    for d in meta['defines'][:200]:
                        fh.write(f"- `{d}`\n")
                else:
                    fh.write("(ninguno detectado)\n")

                fh.write("\n## Constantes detectadas\n\n")
                if meta['consts']:
                    for c in meta['consts'][:200]:
                        fh.write(f"- `{c}`\n")
                else:
                    fh.write("(ninguno detectado)\n")

                fh.write("\n## Funciones detectadas (heurística)\n\n")
                if meta['funcs']:
                    for fn in meta['funcs']:
                        fh.write(f"- `{fn['ret']} {fn['name']}({fn['params']})` — línea {fn['line']}\n")
                else:
                    fh.write("(ninguna detectada con heurística)\n")

                fh.write("\n## Notas heurísticas\n\n")
                fh.write("- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.\n")

print('Generación completada: archivos en', OUT_DIR)
