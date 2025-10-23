#!/usr/bin/env python3
"""
Concatena todos los markdowns en docs/lib/ en un único archivo docs/ALL_SOURCES_CONSOLIDATED.md
Incluye un índice (TOC) y separadores con la ruta original.
"""
from pathlib import Path
ROOT = Path(__file__).resolve().parents[1]
LIB_DIR = ROOT / 'docs' / 'lib'
OUT = ROOT / 'docs' / 'ALL_SOURCES_CONSOLIDATED.md'

files = sorted([p for p in LIB_DIR.glob('*.md')])

with OUT.open('w', encoding='utf-8') as fh:
    fh.write('# Bliss Shader — Documentación consolidada\n\n')
    fh.write('Este archivo contiene la concatenación de los MD generados automáticamente para cada fuente en `shaders/`.\n\n')
    fh.write('## Índice\n\n')
    for i, p in enumerate(files, 1):
        fh.write(f'{i}. [{p.name}](#{p.name.replace(".", "")})\n')
    fh.write('\n---\n\n')

    for p in files:
        fh.write(f'## {p.name}\n\n')
        fh.write(f'**Fuente:** `{p.relative_to(ROOT)}`\n\n')
        txt = p.read_text(encoding='utf-8')
        fh.write(txt)
        fh.write('\n\n---\n\n')

print('Consolidación completada:', OUT)
