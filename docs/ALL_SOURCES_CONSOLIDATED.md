# Bliss Shader — Documentación consolidada

Este archivo contiene la concatenación de los MD generados automáticamente para cada fuente en `shaders/`.

## Índice

1. [shaders_dimensions_all_particles.fsh.md](#shaders_dimensions_all_particlesfshmd)
2. [shaders_dimensions_all_particles.vsh.md](#shaders_dimensions_all_particlesvshmd)
3. [shaders_dimensions_all_solid.fsh.md](#shaders_dimensions_all_solidfshmd)
4. [shaders_dimensions_all_solid.vsh.md](#shaders_dimensions_all_solidvshmd)
5. [shaders_dimensions_all_translucent.fsh.md](#shaders_dimensions_all_translucentfshmd)
6. [shaders_dimensions_all_translucent.vsh.md](#shaders_dimensions_all_translucentvshmd)
7. [shaders_dimensions_all_vanilla_emissives.fsh.md](#shaders_dimensions_all_vanilla_emissivesfshmd)
8. [shaders_dimensions_all_vanilla_emissives.vsh.md](#shaders_dimensions_all_vanilla_emissivesvshmd)
9. [shaders_dimensions_composite.fsh.md](#shaders_dimensions_compositefshmd)
10. [shaders_dimensions_composite.vsh.md](#shaders_dimensions_compositevshmd)
11. [shaders_dimensions_composite1.fsh.md](#shaders_dimensions_composite1fshmd)
12. [shaders_dimensions_composite1.vsh.md](#shaders_dimensions_composite1vshmd)
13. [shaders_dimensions_composite10.fsh.md](#shaders_dimensions_composite10fshmd)
14. [shaders_dimensions_composite10.vsh.md](#shaders_dimensions_composite10vshmd)
15. [shaders_dimensions_composite11.fsh.md](#shaders_dimensions_composite11fshmd)
16. [shaders_dimensions_composite11.vsh.md](#shaders_dimensions_composite11vshmd)
17. [shaders_dimensions_composite12.fsh.md](#shaders_dimensions_composite12fshmd)
18. [shaders_dimensions_composite12.vsh.md](#shaders_dimensions_composite12vshmd)
19. [shaders_dimensions_composite2.fsh.md](#shaders_dimensions_composite2fshmd)
20. [shaders_dimensions_composite2.vsh.md](#shaders_dimensions_composite2vshmd)
21. [shaders_dimensions_composite3.fsh.md](#shaders_dimensions_composite3fshmd)
22. [shaders_dimensions_composite3.vsh.md](#shaders_dimensions_composite3vshmd)
23. [shaders_dimensions_composite4.fsh.md](#shaders_dimensions_composite4fshmd)
24. [shaders_dimensions_composite4.vsh.md](#shaders_dimensions_composite4vshmd)
25. [shaders_dimensions_composite5.fsh.md](#shaders_dimensions_composite5fshmd)
26. [shaders_dimensions_composite5.vsh.md](#shaders_dimensions_composite5vshmd)
27. [shaders_dimensions_composite6.fsh.md](#shaders_dimensions_composite6fshmd)
28. [shaders_dimensions_composite6.vsh.md](#shaders_dimensions_composite6vshmd)
29. [shaders_dimensions_composite7.fsh.md](#shaders_dimensions_composite7fshmd)
30. [shaders_dimensions_composite7.vsh.md](#shaders_dimensions_composite7vshmd)
31. [shaders_dimensions_composite8.fsh.md](#shaders_dimensions_composite8fshmd)
32. [shaders_dimensions_composite8.vsh.md](#shaders_dimensions_composite8vshmd)
33. [shaders_dimensions_composite9.fsh.md](#shaders_dimensions_composite9fshmd)
34. [shaders_dimensions_composite9.vsh.md](#shaders_dimensions_composite9vshmd)
35. [shaders_dimensions_deferred.fsh.md](#shaders_dimensions_deferredfshmd)
36. [shaders_dimensions_deferred.vsh.md](#shaders_dimensions_deferredvshmd)
37. [shaders_dimensions_deferred1.fsh.md](#shaders_dimensions_deferred1fshmd)
38. [shaders_dimensions_deferred1.vsh.md](#shaders_dimensions_deferred1vshmd)
39. [shaders_dimensions_deferred2.fsh.md](#shaders_dimensions_deferred2fshmd)
40. [shaders_dimensions_deferred2.vsh.md](#shaders_dimensions_deferred2vshmd)
41. [shaders_dimensions_DH_solid.fsh.md](#shaders_dimensions_DH_solidfshmd)
42. [shaders_dimensions_DH_solid.vsh.md](#shaders_dimensions_DH_solidvshmd)
43. [shaders_dimensions_DH_translucent.fsh.md](#shaders_dimensions_DH_translucentfshmd)
44. [shaders_dimensions_DH_translucent.vsh.md](#shaders_dimensions_DH_translucentvshmd)
45. [shaders_dimensions_final.fsh.md](#shaders_dimensions_finalfshmd)
46. [shaders_dimensions_final.vsh.md](#shaders_dimensions_finalvshmd)
47. [shaders_dimensions_fogBehindTranslucent_pass.fsh.md](#shaders_dimensions_fogBehindTranslucent_passfshmd)
48. [shaders_dimensions_fogBehindTranslucent_pass.vsh.md](#shaders_dimensions_fogBehindTranslucent_passvshmd)
49. [shaders_dimensions_setup.csh.md](#shaders_dimensions_setupcshmd)
50. [shaders_dimensions_shadowcomp.csh.md](#shaders_dimensions_shadowcompcshmd)
51. [shaders_lib_blocks.glsl.md](#shaders_lib_blocksglslmd)
52. [shaders_lib_bokeh.glsl.md](#shaders_lib_bokehglslmd)
53. [shaders_lib_climate_settings.glsl.md](#shaders_lib_climate_settingsglslmd)
54. [shaders_lib_color_dither.glsl.md](#shaders_lib_color_ditherglslmd)
55. [shaders_lib_color_transforms.glsl.md](#shaders_lib_color_transformsglslmd)
56. [shaders_lib_diffuse_lighting.glsl.md](#shaders_lib_diffuse_lightingglslmd)
57. [shaders_lib_DistantHorizons_projections.glsl.md](#shaders_lib_DistantHorizons_projectionsglslmd)
58. [shaders_lib_end_fog.glsl.md](#shaders_lib_end_fogglslmd)
59. [shaders_lib_entities.glsl.md](#shaders_lib_entitiesglslmd)
60. [shaders_lib_gameplay_effects.glsl.md](#shaders_lib_gameplay_effectsglslmd)
61. [shaders_lib_hsv.glsl.md](#shaders_lib_hsvglslmd)
62. [shaders_lib_indirect_lighting_effects.glsl.md](#shaders_lib_indirect_lighting_effectsglslmd)
63. [shaders_lib_items.glsl.md](#shaders_lib_itemsglslmd)
64. [shaders_lib_lightning_stuff.glsl.md](#shaders_lib_lightning_stuffglslmd)
65. [shaders_lib_lpv_blocks.glsl.md](#shaders_lib_lpv_blocksglslmd)
66. [shaders_lib_lpv_buffer.glsl.md](#shaders_lib_lpv_bufferglslmd)
67. [shaders_lib_lpv_common.glsl.md](#shaders_lib_lpv_commonglslmd)
68. [shaders_lib_lpv_render.glsl.md](#shaders_lib_lpv_renderglslmd)
69. [shaders_lib_nether_fog.glsl.md](#shaders_lib_nether_fogglslmd)
70. [shaders_lib_overworld_fog.glsl.md](#shaders_lib_overworld_fogglslmd)
71. [shaders_lib_PhotonGTAO.glsl.md](#shaders_lib_PhotonGTAOglslmd)
72. [shaders_lib_projections.glsl.md](#shaders_lib_projectionsglslmd)
73. [shaders_lib_res_params.glsl.md](#shaders_lib_res_paramsglslmd)
74. [shaders_lib_ROBOBO_sky.glsl.md](#shaders_lib_ROBOBO_skyglslmd)
75. [shaders_lib_settings.glsl.md](#shaders_lib_settingsglslmd)
76. [shaders_lib_Shadow_Params.glsl.md](#shaders_lib_Shadow_Paramsglslmd)
77. [shaders_lib_Shadows.glsl.md](#shaders_lib_Shadowsglslmd)
78. [shaders_lib_sky_gradient.glsl.md](#shaders_lib_sky_gradientglslmd)
79. [shaders_lib_specular.glsl.md](#shaders_lib_specularglslmd)
80. [shaders_lib_stars.glsl.md](#shaders_lib_starsglslmd)
81. [shaders_lib_TAA_jitter.glsl.md](#shaders_lib_TAA_jitterglslmd)
82. [shaders_lib_texFiltering.glsl.md](#shaders_lib_texFilteringglslmd)
83. [shaders_lib_util.glsl.md](#shaders_lib_utilglslmd)
84. [shaders_lib_volumetricClouds.glsl.md](#shaders_lib_volumetricCloudsglslmd)
85. [shaders_lib_voxel_common.glsl.md](#shaders_lib_voxel_commonglslmd)
86. [shaders_lib_voxel_write.glsl.md](#shaders_lib_voxel_writeglslmd)
87. [shaders_lib_waterBump.glsl.md](#shaders_lib_waterBumpglslmd)
88. [shaders_world-1_composite.fsh.md](#shaders_world-1_compositefshmd)
89. [shaders_world-1_composite.vsh.md](#shaders_world-1_compositevshmd)
90. [shaders_world-1_composite1.fsh.md](#shaders_world-1_composite1fshmd)
91. [shaders_world-1_composite1.vsh.md](#shaders_world-1_composite1vshmd)
92. [shaders_world-1_composite10.fsh.md](#shaders_world-1_composite10fshmd)
93. [shaders_world-1_composite10.vsh.md](#shaders_world-1_composite10vshmd)
94. [shaders_world-1_composite11.fsh.md](#shaders_world-1_composite11fshmd)
95. [shaders_world-1_composite11.vsh.md](#shaders_world-1_composite11vshmd)
96. [shaders_world-1_composite12.fsh.md](#shaders_world-1_composite12fshmd)
97. [shaders_world-1_composite12.vsh.md](#shaders_world-1_composite12vshmd)
98. [shaders_world-1_composite13.fsh.md](#shaders_world-1_composite13fshmd)
99. [shaders_world-1_composite13.vsh.md](#shaders_world-1_composite13vshmd)
100. [shaders_world-1_composite2.fsh.md](#shaders_world-1_composite2fshmd)
101. [shaders_world-1_composite2.vsh.md](#shaders_world-1_composite2vshmd)
102. [shaders_world-1_composite3.fsh.md](#shaders_world-1_composite3fshmd)
103. [shaders_world-1_composite3.vsh.md](#shaders_world-1_composite3vshmd)
104. [shaders_world-1_composite4.fsh.md](#shaders_world-1_composite4fshmd)
105. [shaders_world-1_composite4.vsh.md](#shaders_world-1_composite4vshmd)
106. [shaders_world-1_composite5.fsh.md](#shaders_world-1_composite5fshmd)
107. [shaders_world-1_composite5.vsh.md](#shaders_world-1_composite5vshmd)
108. [shaders_world-1_composite6.fsh.md](#shaders_world-1_composite6fshmd)
109. [shaders_world-1_composite6.vsh.md](#shaders_world-1_composite6vshmd)
110. [shaders_world-1_composite7.fsh.md](#shaders_world-1_composite7fshmd)
111. [shaders_world-1_composite7.vsh.md](#shaders_world-1_composite7vshmd)
112. [shaders_world-1_composite8.fsh.md](#shaders_world-1_composite8fshmd)
113. [shaders_world-1_composite8.vsh.md](#shaders_world-1_composite8vshmd)
114. [shaders_world-1_composite9.fsh.md](#shaders_world-1_composite9fshmd)
115. [shaders_world-1_composite9.vsh.md](#shaders_world-1_composite9vshmd)
116. [shaders_world-1_deferred.fsh.md](#shaders_world-1_deferredfshmd)
117. [shaders_world-1_deferred.vsh.md](#shaders_world-1_deferredvshmd)
118. [shaders_world-1_deferred1.fsh.md](#shaders_world-1_deferred1fshmd)
119. [shaders_world-1_deferred1.vsh.md](#shaders_world-1_deferred1vshmd)
120. [shaders_world-1_dh_terrain.fsh.md](#shaders_world-1_dh_terrainfshmd)
121. [shaders_world-1_dh_terrain.vsh.md](#shaders_world-1_dh_terrainvshmd)
122. [shaders_world-1_dh_water.fsh.md](#shaders_world-1_dh_waterfshmd)
123. [shaders_world-1_dh_water.vsh.md](#shaders_world-1_dh_watervshmd)
124. [shaders_world-1_final.fsh.md](#shaders_world-1_finalfshmd)
125. [shaders_world-1_final.vsh.md](#shaders_world-1_finalvshmd)
126. [shaders_world-1_gbuffers_armor_glint.fsh.md](#shaders_world-1_gbuffers_armor_glintfshmd)
127. [shaders_world-1_gbuffers_armor_glint.vsh.md](#shaders_world-1_gbuffers_armor_glintvshmd)
128. [shaders_world-1_gbuffers_basic.fsh.md](#shaders_world-1_gbuffers_basicfshmd)
129. [shaders_world-1_gbuffers_basic.vsh.md](#shaders_world-1_gbuffers_basicvshmd)
130. [shaders_world-1_gbuffers_beaconbeam.fsh.md](#shaders_world-1_gbuffers_beaconbeamfshmd)
131. [shaders_world-1_gbuffers_beaconbeam.vsh.md](#shaders_world-1_gbuffers_beaconbeamvshmd)
132. [shaders_world-1_gbuffers_block.fsh.md](#shaders_world-1_gbuffers_blockfshmd)
133. [shaders_world-1_gbuffers_block.vsh.md](#shaders_world-1_gbuffers_blockvshmd)
134. [shaders_world-1_gbuffers_block_translucent.fsh.md](#shaders_world-1_gbuffers_block_translucentfshmd)
135. [shaders_world-1_gbuffers_block_translucent.vsh.md](#shaders_world-1_gbuffers_block_translucentvshmd)
136. [shaders_world-1_gbuffers_damagedblock.fsh.md](#shaders_world-1_gbuffers_damagedblockfshmd)
137. [shaders_world-1_gbuffers_damagedblock.vsh.md](#shaders_world-1_gbuffers_damagedblockvshmd)
138. [shaders_world-1_gbuffers_entities.fsh.md](#shaders_world-1_gbuffers_entitiesfshmd)
139. [shaders_world-1_gbuffers_entities.vsh.md](#shaders_world-1_gbuffers_entitiesvshmd)
140. [shaders_world-1_gbuffers_entities_glowing.fsh.md](#shaders_world-1_gbuffers_entities_glowingfshmd)
141. [shaders_world-1_gbuffers_entities_glowing.vsh.md](#shaders_world-1_gbuffers_entities_glowingvshmd)
142. [shaders_world-1_gbuffers_entities_translucent.fsh.md](#shaders_world-1_gbuffers_entities_translucentfshmd)
143. [shaders_world-1_gbuffers_entities_translucent.vsh.md](#shaders_world-1_gbuffers_entities_translucentvshmd)
144. [shaders_world-1_gbuffers_hand.fsh.md](#shaders_world-1_gbuffers_handfshmd)
145. [shaders_world-1_gbuffers_hand.vsh.md](#shaders_world-1_gbuffers_handvshmd)
146. [shaders_world-1_gbuffers_hand_water.fsh.md](#shaders_world-1_gbuffers_hand_waterfshmd)
147. [shaders_world-1_gbuffers_hand_water.vsh.md](#shaders_world-1_gbuffers_hand_watervshmd)
148. [shaders_world-1_gbuffers_skybasic.fsh.md](#shaders_world-1_gbuffers_skybasicfshmd)
149. [shaders_world-1_gbuffers_skybasic.vsh.md](#shaders_world-1_gbuffers_skybasicvshmd)
150. [shaders_world-1_gbuffers_skytextured.fsh.md](#shaders_world-1_gbuffers_skytexturedfshmd)
151. [shaders_world-1_gbuffers_skytextured.vsh.md](#shaders_world-1_gbuffers_skytexturedvshmd)
152. [shaders_world-1_gbuffers_spidereyes.fsh.md](#shaders_world-1_gbuffers_spidereyesfshmd)
153. [shaders_world-1_gbuffers_spidereyes.vsh.md](#shaders_world-1_gbuffers_spidereyesvshmd)
154. [shaders_world-1_gbuffers_terrain.fsh.md](#shaders_world-1_gbuffers_terrainfshmd)
155. [shaders_world-1_gbuffers_terrain.vsh.md](#shaders_world-1_gbuffers_terrainvshmd)
156. [shaders_world-1_gbuffers_textured.fsh.md](#shaders_world-1_gbuffers_texturedfshmd)
157. [shaders_world-1_gbuffers_textured.vsh.md](#shaders_world-1_gbuffers_texturedvshmd)
158. [shaders_world-1_gbuffers_textured_lit.fsh.md](#shaders_world-1_gbuffers_textured_litfshmd)
159. [shaders_world-1_gbuffers_textured_lit.vsh.md](#shaders_world-1_gbuffers_textured_litvshmd)
160. [shaders_world-1_gbuffers_water.fsh.md](#shaders_world-1_gbuffers_waterfshmd)
161. [shaders_world-1_gbuffers_water.vsh.md](#shaders_world-1_gbuffers_watervshmd)
162. [shaders_world-1_gbuffers_weather.fsh.md](#shaders_world-1_gbuffers_weatherfshmd)
163. [shaders_world-1_gbuffers_weather.vsh.md](#shaders_world-1_gbuffers_weathervshmd)
164. [shaders_world-1_setup.csh.md](#shaders_world-1_setupcshmd)
165. [shaders_world-1_shadow.fsh.md](#shaders_world-1_shadowfshmd)
166. [shaders_world-1_shadow.vsh.md](#shaders_world-1_shadowvshmd)
167. [shaders_world-1_shadowcomp.csh.md](#shaders_world-1_shadowcompcshmd)
168. [shaders_world0_composite.fsh.md](#shaders_world0_compositefshmd)
169. [shaders_world0_composite.vsh.md](#shaders_world0_compositevshmd)
170. [shaders_world0_composite1.fsh.md](#shaders_world0_composite1fshmd)
171. [shaders_world0_composite1.vsh.md](#shaders_world0_composite1vshmd)
172. [shaders_world0_composite10.fsh.md](#shaders_world0_composite10fshmd)
173. [shaders_world0_composite10.vsh.md](#shaders_world0_composite10vshmd)
174. [shaders_world0_composite11.fsh.md](#shaders_world0_composite11fshmd)
175. [shaders_world0_composite11.vsh.md](#shaders_world0_composite11vshmd)
176. [shaders_world0_composite12.fsh.md](#shaders_world0_composite12fshmd)
177. [shaders_world0_composite12.vsh.md](#shaders_world0_composite12vshmd)
178. [shaders_world0_composite13.fsh.md](#shaders_world0_composite13fshmd)
179. [shaders_world0_composite13.vsh.md](#shaders_world0_composite13vshmd)
180. [shaders_world0_composite2.fsh.md](#shaders_world0_composite2fshmd)
181. [shaders_world0_composite2.vsh.md](#shaders_world0_composite2vshmd)
182. [shaders_world0_composite3.fsh.md](#shaders_world0_composite3fshmd)
183. [shaders_world0_composite3.vsh.md](#shaders_world0_composite3vshmd)
184. [shaders_world0_composite4.fsh.md](#shaders_world0_composite4fshmd)
185. [shaders_world0_composite4.vsh.md](#shaders_world0_composite4vshmd)
186. [shaders_world0_composite5.fsh.md](#shaders_world0_composite5fshmd)
187. [shaders_world0_composite5.vsh.md](#shaders_world0_composite5vshmd)
188. [shaders_world0_composite6.fsh.md](#shaders_world0_composite6fshmd)
189. [shaders_world0_composite6.vsh.md](#shaders_world0_composite6vshmd)
190. [shaders_world0_composite7.fsh.md](#shaders_world0_composite7fshmd)
191. [shaders_world0_composite7.vsh.md](#shaders_world0_composite7vshmd)
192. [shaders_world0_composite8.fsh.md](#shaders_world0_composite8fshmd)
193. [shaders_world0_composite8.vsh.md](#shaders_world0_composite8vshmd)
194. [shaders_world0_composite9.fsh.md](#shaders_world0_composite9fshmd)
195. [shaders_world0_composite9.vsh.md](#shaders_world0_composite9vshmd)
196. [shaders_world0_deferred.fsh.md](#shaders_world0_deferredfshmd)
197. [shaders_world0_deferred.vsh.md](#shaders_world0_deferredvshmd)
198. [shaders_world0_deferred1.fsh.md](#shaders_world0_deferred1fshmd)
199. [shaders_world0_deferred1.vsh.md](#shaders_world0_deferred1vshmd)
200. [shaders_world0_deferred2.fsh.md](#shaders_world0_deferred2fshmd)
201. [shaders_world0_deferred2.vsh.md](#shaders_world0_deferred2vshmd)
202. [shaders_world0_dh_shadow.fsh.md](#shaders_world0_dh_shadowfshmd)
203. [shaders_world0_dh_shadow.vsh.md](#shaders_world0_dh_shadowvshmd)
204. [shaders_world0_dh_terrain.fsh.md](#shaders_world0_dh_terrainfshmd)
205. [shaders_world0_dh_terrain.vsh.md](#shaders_world0_dh_terrainvshmd)
206. [shaders_world0_dh_water.fsh.md](#shaders_world0_dh_waterfshmd)
207. [shaders_world0_dh_water.vsh.md](#shaders_world0_dh_watervshmd)
208. [shaders_world0_final.fsh.md](#shaders_world0_finalfshmd)
209. [shaders_world0_final.vsh.md](#shaders_world0_finalvshmd)
210. [shaders_world0_gbuffers_armor_glint.fsh.md](#shaders_world0_gbuffers_armor_glintfshmd)
211. [shaders_world0_gbuffers_armor_glint.vsh.md](#shaders_world0_gbuffers_armor_glintvshmd)
212. [shaders_world0_gbuffers_basic.fsh.md](#shaders_world0_gbuffers_basicfshmd)
213. [shaders_world0_gbuffers_basic.vsh.md](#shaders_world0_gbuffers_basicvshmd)
214. [shaders_world0_gbuffers_beaconbeam.fsh.md](#shaders_world0_gbuffers_beaconbeamfshmd)
215. [shaders_world0_gbuffers_beaconbeam.vsh.md](#shaders_world0_gbuffers_beaconbeamvshmd)
216. [shaders_world0_gbuffers_block.fsh.md](#shaders_world0_gbuffers_blockfshmd)
217. [shaders_world0_gbuffers_block.vsh.md](#shaders_world0_gbuffers_blockvshmd)
218. [shaders_world0_gbuffers_block_translucent.fsh.md](#shaders_world0_gbuffers_block_translucentfshmd)
219. [shaders_world0_gbuffers_block_translucent.vsh.md](#shaders_world0_gbuffers_block_translucentvshmd)
220. [shaders_world0_gbuffers_damagedblock.fsh.md](#shaders_world0_gbuffers_damagedblockfshmd)
221. [shaders_world0_gbuffers_damagedblock.vsh.md](#shaders_world0_gbuffers_damagedblockvshmd)
222. [shaders_world0_gbuffers_entities.fsh.md](#shaders_world0_gbuffers_entitiesfshmd)
223. [shaders_world0_gbuffers_entities.vsh.md](#shaders_world0_gbuffers_entitiesvshmd)
224. [shaders_world0_gbuffers_entities_glowing.fsh.md](#shaders_world0_gbuffers_entities_glowingfshmd)
225. [shaders_world0_gbuffers_entities_glowing.vsh.md](#shaders_world0_gbuffers_entities_glowingvshmd)
226. [shaders_world0_gbuffers_entities_translucent.fsh.md](#shaders_world0_gbuffers_entities_translucentfshmd)
227. [shaders_world0_gbuffers_entities_translucent.vsh.md](#shaders_world0_gbuffers_entities_translucentvshmd)
228. [shaders_world0_gbuffers_hand.fsh.md](#shaders_world0_gbuffers_handfshmd)
229. [shaders_world0_gbuffers_hand.vsh.md](#shaders_world0_gbuffers_handvshmd)
230. [shaders_world0_gbuffers_hand_water.fsh.md](#shaders_world0_gbuffers_hand_waterfshmd)
231. [shaders_world0_gbuffers_hand_water.vsh.md](#shaders_world0_gbuffers_hand_watervshmd)
232. [shaders_world0_gbuffers_skybasic.fsh.md](#shaders_world0_gbuffers_skybasicfshmd)
233. [shaders_world0_gbuffers_skybasic.vsh.md](#shaders_world0_gbuffers_skybasicvshmd)
234. [shaders_world0_gbuffers_skytextured.fsh.md](#shaders_world0_gbuffers_skytexturedfshmd)
235. [shaders_world0_gbuffers_skytextured.vsh.md](#shaders_world0_gbuffers_skytexturedvshmd)
236. [shaders_world0_gbuffers_spidereyes.fsh.md](#shaders_world0_gbuffers_spidereyesfshmd)
237. [shaders_world0_gbuffers_spidereyes.vsh.md](#shaders_world0_gbuffers_spidereyesvshmd)
238. [shaders_world0_gbuffers_terrain.fsh.md](#shaders_world0_gbuffers_terrainfshmd)
239. [shaders_world0_gbuffers_terrain.vsh.md](#shaders_world0_gbuffers_terrainvshmd)
240. [shaders_world0_gbuffers_textured.fsh.md](#shaders_world0_gbuffers_texturedfshmd)
241. [shaders_world0_gbuffers_textured.vsh.md](#shaders_world0_gbuffers_texturedvshmd)
242. [shaders_world0_gbuffers_textured_lit.fsh.md](#shaders_world0_gbuffers_textured_litfshmd)
243. [shaders_world0_gbuffers_textured_lit.vsh.md](#shaders_world0_gbuffers_textured_litvshmd)
244. [shaders_world0_gbuffers_water.fsh.md](#shaders_world0_gbuffers_waterfshmd)
245. [shaders_world0_gbuffers_water.vsh.md](#shaders_world0_gbuffers_watervshmd)
246. [shaders_world0_gbuffers_weather.fsh.md](#shaders_world0_gbuffers_weatherfshmd)
247. [shaders_world0_gbuffers_weather.vsh.md](#shaders_world0_gbuffers_weathervshmd)
248. [shaders_world0_setup.csh.md](#shaders_world0_setupcshmd)
249. [shaders_world0_shadow.fsh.md](#shaders_world0_shadowfshmd)
250. [shaders_world0_shadow.vsh.md](#shaders_world0_shadowvshmd)
251. [shaders_world0_shadowcomp.csh.md](#shaders_world0_shadowcompcshmd)
252. [shaders_world1_composite.fsh.md](#shaders_world1_compositefshmd)
253. [shaders_world1_composite.vsh.md](#shaders_world1_compositevshmd)
254. [shaders_world1_composite1.fsh.md](#shaders_world1_composite1fshmd)
255. [shaders_world1_composite1.vsh.md](#shaders_world1_composite1vshmd)
256. [shaders_world1_composite10.fsh.md](#shaders_world1_composite10fshmd)
257. [shaders_world1_composite10.vsh.md](#shaders_world1_composite10vshmd)
258. [shaders_world1_composite11.fsh.md](#shaders_world1_composite11fshmd)
259. [shaders_world1_composite11.vsh.md](#shaders_world1_composite11vshmd)
260. [shaders_world1_composite12.fsh.md](#shaders_world1_composite12fshmd)
261. [shaders_world1_composite12.vsh.md](#shaders_world1_composite12vshmd)
262. [shaders_world1_composite13.fsh.md](#shaders_world1_composite13fshmd)
263. [shaders_world1_composite13.vsh.md](#shaders_world1_composite13vshmd)
264. [shaders_world1_composite2.fsh.md](#shaders_world1_composite2fshmd)
265. [shaders_world1_composite2.vsh.md](#shaders_world1_composite2vshmd)
266. [shaders_world1_composite3.fsh.md](#shaders_world1_composite3fshmd)
267. [shaders_world1_composite3.vsh.md](#shaders_world1_composite3vshmd)
268. [shaders_world1_composite4.fsh.md](#shaders_world1_composite4fshmd)
269. [shaders_world1_composite4.vsh.md](#shaders_world1_composite4vshmd)
270. [shaders_world1_composite5.fsh.md](#shaders_world1_composite5fshmd)
271. [shaders_world1_composite5.vsh.md](#shaders_world1_composite5vshmd)
272. [shaders_world1_composite6.fsh.md](#shaders_world1_composite6fshmd)
273. [shaders_world1_composite6.vsh.md](#shaders_world1_composite6vshmd)
274. [shaders_world1_composite7.fsh.md](#shaders_world1_composite7fshmd)
275. [shaders_world1_composite7.vsh.md](#shaders_world1_composite7vshmd)
276. [shaders_world1_composite8.fsh.md](#shaders_world1_composite8fshmd)
277. [shaders_world1_composite8.vsh.md](#shaders_world1_composite8vshmd)
278. [shaders_world1_composite9.fsh.md](#shaders_world1_composite9fshmd)
279. [shaders_world1_composite9.vsh.md](#shaders_world1_composite9vshmd)
280. [shaders_world1_deferred.fsh.md](#shaders_world1_deferredfshmd)
281. [shaders_world1_deferred.vsh.md](#shaders_world1_deferredvshmd)
282. [shaders_world1_deferred1.fsh.md](#shaders_world1_deferred1fshmd)
283. [shaders_world1_deferred1.vsh.md](#shaders_world1_deferred1vshmd)
284. [shaders_world1_dh_terrain.fsh.md](#shaders_world1_dh_terrainfshmd)
285. [shaders_world1_dh_terrain.vsh.md](#shaders_world1_dh_terrainvshmd)
286. [shaders_world1_dh_water.fsh.md](#shaders_world1_dh_waterfshmd)
287. [shaders_world1_dh_water.vsh.md](#shaders_world1_dh_watervshmd)
288. [shaders_world1_final.fsh.md](#shaders_world1_finalfshmd)
289. [shaders_world1_final.vsh.md](#shaders_world1_finalvshmd)
290. [shaders_world1_gbuffers_armor_glint.fsh.md](#shaders_world1_gbuffers_armor_glintfshmd)
291. [shaders_world1_gbuffers_armor_glint.vsh.md](#shaders_world1_gbuffers_armor_glintvshmd)
292. [shaders_world1_gbuffers_basic.fsh.md](#shaders_world1_gbuffers_basicfshmd)
293. [shaders_world1_gbuffers_basic.vsh.md](#shaders_world1_gbuffers_basicvshmd)
294. [shaders_world1_gbuffers_beaconbeam.fsh.md](#shaders_world1_gbuffers_beaconbeamfshmd)
295. [shaders_world1_gbuffers_beaconbeam.vsh.md](#shaders_world1_gbuffers_beaconbeamvshmd)
296. [shaders_world1_gbuffers_block.fsh.md](#shaders_world1_gbuffers_blockfshmd)
297. [shaders_world1_gbuffers_block.vsh.md](#shaders_world1_gbuffers_blockvshmd)
298. [shaders_world1_gbuffers_block_translucent.fsh.md](#shaders_world1_gbuffers_block_translucentfshmd)
299. [shaders_world1_gbuffers_block_translucent.vsh.md](#shaders_world1_gbuffers_block_translucentvshmd)
300. [shaders_world1_gbuffers_damagedblock.fsh.md](#shaders_world1_gbuffers_damagedblockfshmd)
301. [shaders_world1_gbuffers_damagedblock.vsh.md](#shaders_world1_gbuffers_damagedblockvshmd)
302. [shaders_world1_gbuffers_entities.fsh.md](#shaders_world1_gbuffers_entitiesfshmd)
303. [shaders_world1_gbuffers_entities.vsh.md](#shaders_world1_gbuffers_entitiesvshmd)
304. [shaders_world1_gbuffers_entities_glowing.fsh.md](#shaders_world1_gbuffers_entities_glowingfshmd)
305. [shaders_world1_gbuffers_entities_glowing.vsh.md](#shaders_world1_gbuffers_entities_glowingvshmd)
306. [shaders_world1_gbuffers_entities_translucent.fsh.md](#shaders_world1_gbuffers_entities_translucentfshmd)
307. [shaders_world1_gbuffers_entities_translucent.vsh.md](#shaders_world1_gbuffers_entities_translucentvshmd)
308. [shaders_world1_gbuffers_hand.fsh.md](#shaders_world1_gbuffers_handfshmd)
309. [shaders_world1_gbuffers_hand.vsh.md](#shaders_world1_gbuffers_handvshmd)
310. [shaders_world1_gbuffers_hand_water.fsh.md](#shaders_world1_gbuffers_hand_waterfshmd)
311. [shaders_world1_gbuffers_hand_water.vsh.md](#shaders_world1_gbuffers_hand_watervshmd)
312. [shaders_world1_gbuffers_skybasic.fsh.md](#shaders_world1_gbuffers_skybasicfshmd)
313. [shaders_world1_gbuffers_skybasic.vsh.md](#shaders_world1_gbuffers_skybasicvshmd)
314. [shaders_world1_gbuffers_skytextured.fsh.md](#shaders_world1_gbuffers_skytexturedfshmd)
315. [shaders_world1_gbuffers_skytextured.vsh.md](#shaders_world1_gbuffers_skytexturedvshmd)
316. [shaders_world1_gbuffers_spidereyes.fsh.md](#shaders_world1_gbuffers_spidereyesfshmd)
317. [shaders_world1_gbuffers_spidereyes.vsh.md](#shaders_world1_gbuffers_spidereyesvshmd)
318. [shaders_world1_gbuffers_terrain.fsh.md](#shaders_world1_gbuffers_terrainfshmd)
319. [shaders_world1_gbuffers_terrain.vsh.md](#shaders_world1_gbuffers_terrainvshmd)
320. [shaders_world1_gbuffers_textured.fsh.md](#shaders_world1_gbuffers_texturedfshmd)
321. [shaders_world1_gbuffers_textured.vsh.md](#shaders_world1_gbuffers_texturedvshmd)
322. [shaders_world1_gbuffers_textured_lit.fsh.md](#shaders_world1_gbuffers_textured_litfshmd)
323. [shaders_world1_gbuffers_textured_lit.vsh.md](#shaders_world1_gbuffers_textured_litvshmd)
324. [shaders_world1_gbuffers_water.fsh.md](#shaders_world1_gbuffers_waterfshmd)
325. [shaders_world1_gbuffers_water.vsh.md](#shaders_world1_gbuffers_watervshmd)
326. [shaders_world1_gbuffers_weather.fsh.md](#shaders_world1_gbuffers_weatherfshmd)
327. [shaders_world1_gbuffers_weather.vsh.md](#shaders_world1_gbuffers_weathervshmd)
328. [shaders_world1_setup.csh.md](#shaders_world1_setupcshmd)
329. [shaders_world1_shadow.fsh.md](#shaders_world1_shadowfshmd)
330. [shaders_world1_shadow.vsh.md](#shaders_world1_shadowvshmd)
331. [shaders_world1_shadowcomp.csh.md](#shaders_world1_shadowcompcshmd)

---

## shaders_dimensions_all_particles.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_all_particles.fsh.md`

# shaders\dimensions\all_particles.fsh

**Ruta original:** `shaders\dimensions\all_particles.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/util.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/hsv.glsl`
- `/lib/lpv_common.glsl`
- `/lib/lpv_render.glsl`
- `/lib/diffuse_lighting.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform int isEyeInWater;`
- `uniform sampler2D texture;`
- `uniform sampler2D noisetex;`
- `uniform sampler2D colortex4;`
- `uniform usampler1D texBlockData;`
- `uniform sampler3D texLpv1;`
- `uniform sampler3D texLpv2;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowProjection;`
- `uniform vec3 cameraPosition;`
- `uniform float frameTimeCounter;`
- `uniform vec2 texelSize;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float rainStrength;`
- `uniform float nightVision;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`
- `uniform int frameCounter;`
- `uniform int framemod8;`
- `uniform mat4 gbufferProjection;`
- `uniform sampler2D normals;`
- `uniform float near;`
- `uniform vec3 eyePosition;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef LINES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#define CLOUDSHADOWSONLY`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#endif`
- `#if defined DAMAGE_BLOCK_EFFECT && defined POM`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#else`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#ifdef POM`
- `#ifdef Adaptive_Step_length`
- `#else`
- `#endif`
- `#else`
- `#endif`
- `#endif`
- `#if !defined DAMAGE_BLOCK_EFFECT`
- `#ifdef LINES`
- `#ifndef SELECT_BOX`
- `#endif`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#if defined Hand_Held_lights && !defined LPV_ENABLED`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef WEATHER`
- `#endif`
- `#ifndef WEATHER`
- `#ifndef LINES`
- `#else`
- `#endif`
- `#ifndef BLOOMY_PARTICLES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef CLOUDS_SHADOWS`
- `#endif`
- `#ifndef LINES`
- `#endif`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#else`
- `#endif`
- `#ifdef LINES`
- `#else`
- `#endif`
- `#endif`
- `#endif`

## Constantes detectadas

- `const bool shadowHardwareFiltering = true;`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `const float MAX_OCCLUSION_DISTANCE = MAX_DIST;`
- `const float MIX_OCCLUSION_DISTANCE = MAX_DIST*0.9;`
- `const int   MAX_OCCLUSION_POINTS   = MAX_ITERATIONS;`
- `const float mincoord = 1.0/4096.0;`
- `const float maxcoord = 1.0-mincoord;`
- `const vec3 lpvPos = vec3(0.0);`

## Funciones detectadas (heurística)

- `vec3 toLinear(vec3 sRGB)` — línea 92
- `vec3 toScreenSpace(vec3 p)` — línea 98
- `float phaseg(float x, float g)` — línea 111
- `float encodeVec2(vec2 a)` — línea 117
- `float encodeVec2(float x,float y)` — línea 122
- `float ComputeShadowMap(inout vec3 directLightColor, vec3 playerPos, float maxDistFade)` — línea 130
- `mat3 inverseMatrix(mat3 m)` — línea 190
- `vec3 toClipSpace3(vec3 viewSpacePosition)` — línea 221
- `float ld(float dist)` — línea 245
- `void main()` — línea 271

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_all_particles.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_all_particles.vsh.md`

# shaders\dimensions\all_particles.vsh

**Ruta original:** `shaders\dimensions\all_particles.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/items.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform vec3 sunPosition;`
- `uniform float sunElevation;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform float frameTimeCounter;`
- `uniform vec3 cameraPosition;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`

## Defines / Preprocesador

- `#ifdef LINES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#endif`
- `#ifdef Hand_Held_lights`
- `#endif`
- `#ifdef WEATHER`
- `#else`
- `#endif`
- `#ifdef LINES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifndef WEATHER`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 52
- `void main()` — línea 76

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_all_solid.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_all_solid.fsh.md`

# shaders\dimensions\all_solid.fsh

**Ruta original:** `shaders\dimensions\all_solid.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/items.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform float far;`
- `uniform float wetness;`
- `uniform sampler2D normals;`
- `uniform sampler2D specular;`
- `uniform sampler2D texture;`
- `uniform sampler2D colortex1;//albedo(rgb),material(alpha) RGBA16`
- `uniform float frameTimeCounter;`
- `uniform int frameCounter;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 cameraPosition;`
- `uniform float rainStrength;`
- `uniform sampler2D noisetex;//depth`
- `uniform sampler2D depthtex0;`
- `uniform vec4 entityColor;`
- `uniform float noPuddleAreas;`
- `uniform float near;`
- `uniform vec3 eyePosition;`

## Defines / Preprocesador

- `#ifdef HAND`
- `#endif`
- `#ifndef USE_LUMINANCE_AS_HEIGHTMAP`
- `#ifndef MC_NORMAL_MAP`
- `#endif`
- `#endif`
- `#ifdef POM`
- `#define MC_NORMAL_MAP`
- `#endif`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef POM`
- `#endif`
- `#if defined HAND || defined ENTITIES || defined BLOCKENTITIES`
- `#else`
- `#endif`
- `#ifdef POM`
- `#endif`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#if defined Hand_Held_lights && !defined LPV_ENABLED`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#ifdef HAND`
- `#endif`
- `#endif`
- `#if defined Puddles && defined WORLD && !defined ENTITIES && !defined HAND`
- `#endif`
- `#if defined POM && defined WORLD && !defined ENTITIES && !defined HAND`
- `#ifdef Adaptive_Step_length`
- `#else`
- `#endif`
- `#endif`
- `#if defined HAND`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#ifdef AEROCHROME_MODE`
- `#ifdef AEROCHROME_WOOL_ENABLED`
- `#endif`
- `#endif`
- `#ifdef WORLD`
- `#endif`
- `#ifdef HAND`
- `#endif`
- `#if defined PARTICLE_RENDERING_FIX && (defined ENTITIES || defined BLOCKENTITIES)`
- `#endif`
- `#if defined WORLD && defined MC_NORMAL_MAP`
- `#ifdef MATERIAL_AO`
- `#endif`
- `#endif`
- `#ifdef WORLD`
- `#if EMISSIVE_TYPE == 0`
- `#endif`
- `#if EMISSIVE_TYPE == 1`
- `#endif`
- `#if EMISSIVE_TYPE == 2`
- `#endif`
- `#if EMISSIVE_TYPE == 3`
- `#endif`
- `#if SSS_TYPE == 0`
- `#endif`
- `#if SSS_TYPE == 1`
- `#endif`
- `#if SSS_TYPE == 2`
- `#endif`
- `#if SSS_TYPE == 3`
- `#endif`
- `#endif`
- `#ifdef ENTITIES`
- `#endif`
- `#ifdef WORLD`
- `#ifdef Puddles`
- `#ifdef Porosity`
- `#endif`
- `#endif`
- `#endif`

## Constantes detectadas

- `const float mincoord = 1.0/4096.0;`
- `const float maxcoord = 1.0-mincoord;`
- `const float MAX_OCCLUSION_DISTANCE = MAX_DIST;`
- `const float MIX_OCCLUSION_DISTANCE = MAX_DIST*0.9;`
- `const int   MAX_OCCLUSION_POINTS   = MAX_ITERATIONS;`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`

## Funciones detectadas (heurística)

- `float interleaved_gradientNoise_temporal()` — línea 102
- `float interleaved_gradientNoise()` — línea 105
- `float blueNoise()` — línea 110
- `float R2_dither()` — línea 113
- `mat3 inverseMatrix(mat3 m)` — línea 118
- `vec3 viewToWorld(vec3 viewPosition)` — línea 134
- `vec3 worldToView(vec3 worldPos)` — línea 141
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 146
- `float encodeVec2(vec2 a)` — línea 155
- `float encodeVec2(float x,float y)` — línea 160
- `vec3 applyBump(mat3 tbnMatrix, vec3 bump, float puddle_values)` — línea 165
- `vec3 toScreenSpace(vec3 p)` — línea 176
- `vec3 toClipSpace3(vec3 viewSpacePosition)` — línea 182
- `float luma(vec3 color)` — línea 198
- `vec3 toLinear(vec3 sRGB)` — línea 203
- `float ld(float dist)` — línea 221
- `vec4 readNoise(in vec2 coord)` — línea 226
- `float bias()` — línea 260
- `void main()` — línea 292
- `else if(blockID == BLOCK_GRASS)` — línea 434
- `else if(blockID == BLOCK_SSS_WEAK_2 || blockID == BLOCK_CARPET)` — línea 440

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_all_solid.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_all_solid.vsh.md`

# shaders\dimensions\all_solid.vsh

**Ruta original:** `shaders\dimensions\all_solid.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/bokeh.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/items.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/climate_settings.glsl`

## Uniforms / Variables detectadas

- `uniform float frameTimeCounter;`
- `uniform int blockEntityId;`
- `uniform int entityId;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`
- `uniform int frameCounter;`
- `uniform float far;`
- `uniform float aspectRatio;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform int hideGUI;`
- `uniform float screenBrightness;`
- `uniform int isEyeInWater;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 cameraPosition;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform sampler2D noisetex;//depth`

## Defines / Preprocesador

- `#ifdef HAND`
- `#endif`
- `#ifndef USE_LUMINANCE_AS_HEIGHTMAP`
- `#ifndef MC_NORMAL_MAP`
- `#endif`
- `#endif`
- `#ifdef POM`
- `#define MC_NORMAL_MAP`
- `#endif`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#define SEASONS_VSH`
- `#ifdef MC_NORMAL_MAP`
- `#endif`
- `#ifdef WORLD`
- `#endif`
- `#ifdef ENTITIES`
- `#endif`
- `#ifdef Hand_Held_lights`
- `#endif`
- `#ifdef ENTITIES`
- `#endif`
- `#ifdef WORLD`
- `#ifdef MISC_BLOCK_SSS`
- `#endif`
- `#ifdef ENTITIES`
- `#ifdef MOB_SSS`
- `#endif`
- `#endif`
- `#ifdef BLOCKENTITIES`
- `#endif`
- `#ifdef WAVY_PLANTS`
- `#endif`
- `#endif`
- `#if defined Seasons && defined WORLD && !defined ENTITIES && !defined BLOCKENTITIES && !defined HAND`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#if MANUAL_FOCUS == -2`
- `#elif MANUAL_FOCUS == -1`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

- `const float PI48 = 150.796447372*WAVY_SPEED;`

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 100
- `vec2 calcWave(in vec3 pos)` — línea 104
- `vec3 calcMovePlants(in vec3 pos)` — línea 112
- `vec3 calcWaveLeaves(in vec3 pos, in float fm, in float mm, in float ma, in float f0, in float f1, in float f2, in float f3, in float f4, in float f5)` — línea 118
- `vec3 calcMoveLeaves(in vec3 pos, in float f0, in float f1, in float f2, in float f3, in float f4, in float f5, in vec3 amp1, in vec3 amp2)` — línea 126
- `vec3 srgbToLinear2(vec3 srgb)` — línea 130
- `float densityAtPos(in vec3 pos)` — línea 161
- `float luma(vec3 color)` — línea 174
- `vec3 viewToWorld(vec3 viewPos)` — línea 177
- `void main()` — línea 190

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_all_translucent.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_all_translucent.fsh.md`

# shaders\dimensions\all_translucent.fsh

**Ruta original:** `shaders\dimensions\all_translucent.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/util.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/color_transforms.glsl`
- `/lib/projections.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/waterBump.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/end_fog.glsl`
- `/lib/hsv.glsl`
- `/lib/lpv_common.glsl`
- `/lib/lpv_render.glsl`
- `/lib/diffuse_lighting.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform vec4 entityColor;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform float lightSign;`
- `uniform sampler2D noisetex;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex12;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D colortex5;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D texture;`
- `uniform sampler2D specular;`
- `uniform sampler2D normals;`
- `uniform usampler1D texBlockData;`
- `uniform sampler3D texLpv1;`
- `uniform sampler3D texLpv2;`
- `uniform vec3 sunVec;`
- `uniform float near;`
- `uniform float sunElevation;`
- `uniform int isEyeInWater;`
- `uniform float rainStrength;`
- `uniform float skyIntensityNight;`
- `uniform float skyIntensity;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform vec3 previousCameraPosition;`
- `uniform float moonIntensity;`
- `uniform float sunIntensity;`
- `uniform vec3 sunColor;`
- `uniform vec3 nsunColor;`
- `uniform float nightVision;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`
- `uniform float dhFarPlane;`
- `uniform vec3 eyePosition;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef LARGE_WAVE_DISPLACEMENT`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#define CLOUDSHADOWSONLY`
- `#else`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#define PW_DEPTH 1.5 //[0.5 1.0 1.5 2.0 2.5 3.0]`
- `#define PW_POINTS 2 //[2 4 6 8 16 32]`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifndef HAND`
- `#endif`
- `#if defined ENTITIES`
- `#endif`
- `#ifdef BASIC_SHADOW_FILTER`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef BASIC_SHADOW_FILTER`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#endif`
- `#ifdef HAND`
- `#endif`
- `#ifdef HAND`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#ifndef WhiteWorld`
- `#ifdef Vanilla_like_water`
- `#else`
- `#endif`
- `#endif`
- `#ifdef ENTITIES`
- `#endif`
- `#ifdef BIOME_TINT_WATER`
- `#endif`
- `#ifdef LARGE_WAVE_DISPLACEMENT`
- `#endif`
- `#ifndef HAND`
- `#endif`
- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#if defined Hand_Held_lights && !defined LPV_ENABLED`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#ifdef END_LIGHTNING`
- `#else`
- `#endif`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#if LPV_NORMAL_STRENGTH > 0`
- `#endif`
- `#else`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef SKY_GROUND`
- `#else`
- `#endif`
- `#endif`
- `#ifdef DAMAGE_BLOCK_EFFECT`
- `#endif`
- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#ifdef WATER_REFLECTIONS`
- `#ifdef HAND`
- `#endif`
- `#ifdef SNELLS_WINDOW`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef WATER_SUN_SPECULAR`
- `#endif`
- `#ifdef WATER_BACKGROUND_SPECULAR`
- `#endif`
- `#else`
- `#ifdef WATER_BACKGROUND_SPECULAR`
- `#endif`
- `#endif`
- `#ifdef SCREENSPACE_REFLECTIONS`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#endif`
- `#else`
- `#endif`
- `#if EMISSIVE_TYPE == 2 || EMISSIVE_TYPE == 3`
- `#endif`
- `#if defined DISTANT_HORIZONS && defined DH_OVERDRAW_PREVENTION && !defined HAND`
- `#endif`
- `#ifndef HAND`
- `#endif`
- `#if DEBUG_VIEW == debug_DH_WATER_BLENDING`
- `#endif`
- `#if DEBUG_VIEW == debug_NORMALS`
- `#endif`
- `#if DEBUG_VIEW == debug_INDIRECT`
- `#endif`
- `#if DEBUG_VIEW == debug_DIRECT`
- `#endif`

## Constantes detectadas

- `const bool shadowHardwareFiltering = true;`
- `const bool colortex4MipmapEnabled = true;`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `const vec3 lpvPos = vec3(0.0);`

## Funciones detectadas (heurística)

- `float blueNoise()` — línea 136
- `vec4 blueNoise(vec2 coord)` — línea 139
- `float interleaved_gradientNoise_temporal()` — línea 142
- `float interleaved_gradientNoise()` — línea 145
- `float R2_dither()` — línea 150
- `vec3 getParallaxDisplacement(vec3 posxz)` — línea 169
- `vec3 applyBump(mat3 tbnMatrix, vec3 bump, float puddle_values)` — línea 181
- `vec3 viewToWorld(vec3 viewPos)` — línea 211
- `vec3 worldToView(vec3 worldPos)` — línea 219
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 224
- `float encodeVec2(vec2 a)` — línea 233
- `float encodeVec2(float x,float y)` — línea 238
- `float invLinZ(float lindepth)` — línea 243
- `float ld(float dist)` — línea 246
- `vec3 rayTrace(vec3 dir, vec3 position,float dither, float fresnel, bool inwater, inout float reflectLength)` — línea 250
- `float GGX(vec3 n, vec3 v, vec3 l, float r, float f0)` — línea 306
- `float ComputeShadowMap(inout vec3 directLightColor, vec3 playerPos, float maxDistFade, float noise)` — línea 338
- `void convertHandDepth(inout float depth)` — línea 419
- `void main()` — línea 446

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_all_translucent.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_all_translucent.vsh.md`

# shaders\dimensions\all_translucent.vsh

**Ruta original:** `shaders\dimensions\all_translucent.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/bokeh.glsl`
- `/lib/items.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform float frameTimeCounter;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D noisetex;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform vec3 sunPosition;`
- `uniform vec3 cameraPosition;`
- `uniform float sunElevation;`
- `uniform int frameCounter;`
- `uniform float aspectRatio;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform int hideGUI;`
- `uniform float screenBrightness;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifdef LARGE_WAVE_DISPLACEMENT`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef LARGE_WAVE_DISPLACEMENT`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef Hand_Held_lights`
- `#endif`
- `#if defined ENTITIES || defined BLOCKENTITIES`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#if MANUAL_FOCUS == -2`
- `#elif MANUAL_FOCUS == -1`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 81
- `float getWave(vec3 pos, float range)` — línea 86
- `vec3 getWaveNormal(vec3 posxz, float range)` — línea 89
- `void main()` — línea 113

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_all_vanilla_emissives.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_all_vanilla_emissives.fsh.md`

# shaders\dimensions\all_vanilla_emissives.fsh

**Ruta original:** `shaders\dimensions\all_vanilla_emissives.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D texture;`
- `uniform sampler2D normals;`
- `uniform sampler2D noisetex;`
- `uniform float frameTimeCounter;`
- `uniform mat4 gbufferModelViewInverse;`

## Defines / Preprocesador

- `#if defined SPIDER_EYES || defined BEACON_BEAM || defined GLOWING`
- `#ifdef BEACON_BEAM`
- `#endif`
- `#ifdef DISABLE_VANILLA_EMISSIVES`
- `#else`
- `#endif`
- `#endif`
- `#ifdef ENCHANT_GLINT`
- `#ifdef DISABLE_ENCHANT_GLINT`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`

## Funciones detectadas (heurística)

- `vec3 toLinear(vec3 sRGB)` — línea 17
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 21
- `float encodeVec2(vec2 a)` — línea 30
- `float encodeVec2(float x,float y)` — línea 35
- `vec3 viewToWorld(vec3 viewPos)` — línea 41
- `void main()` — línea 57

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_all_vanilla_emissives.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_all_vanilla_emissives.vsh.md`

# shaders\dimensions\all_vanilla_emissives.vsh

**Ruta original:** `shaders\dimensions\all_vanilla_emissives.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform sampler2D colortex4;`

## Defines / Preprocesador

- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#if defined ENCHANT_GLINT || defined SPIDER_EYES || defined BEACON_BEAM`
- `#else`
- `#endif`
- `#ifdef BEACON_BEAM`
- `#endif`
- `#ifdef ENCHANT_GLINT`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 26
- `void main()` — línea 39

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite.fsh.md`

# shaders\dimensions\composite.fsh

**Ruta original:** `shaders\dimensions\composite.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/indirect_lighting_effects.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex3; // Noise`
- `uniform sampler2D colortex6; // Noise`
- `uniform sampler2D colortex8; // Noise`
- `uniform sampler2D colortex14; // Noise`
- `uniform sampler2D colortex12; // Noise`
- `uniform sampler2D colortex15; // Noise`
- `uniform sampler2D shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2D shadowtex0;`
- `uniform sampler2D shadowtex1;`
- `uniform sampler2D noisetex;`
- `uniform vec3 sunVec;`
- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform float rainStrength;`
- `uniform int frameCounter;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform vec3 cameraPosition;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform vec3 previousCameraPosition;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowProjection;`
- `uniform float viewWidth;`
- `uniform float aspectRatio;`
- `uniform float viewHeight;`
- `uniform float near;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`

## Defines / Preprocesador

- `#ifndef DH_AMBIENT_OCCLUSION`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#define ffstep(x,y) clamp((y - x) * 1e35,0.0,1.0)`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef Ambient_SSS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Ambient_SSS`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if defined DENOISE_SSS_AND_SSAO && indirect_effect == 1`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef BASIC_SHADOW_FILTER`
- `#endif`
- `#ifdef Variable_Penumbra_Shadows`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS_SHADOWMAP`
- `#else`
- `#endif`
- `#endif`
- `#endif`

## Constantes detectadas

- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`
- `const float PI = 3.141592653589793238462643383279502884197169;`
- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `const float threshMul = max(2048.0/shadowMapResolution*shadowDistance/128.0,0.95);`

## Funciones detectadas (heurística)

- `vec3 toScreenSpace(vec3 p)` — línea 72
- `vec3 worldToView(vec3 worldPos)` — línea 80
- `vec2 tapLocation2(int sampleNumber, int nb, float jitter)` — línea 97
- `vec3 decode(vec2 encn)` — línea 109
- `vec2 decodeVec2(float a)` — línea 117
- `float interleaved_gradientNoise_temporal()` — línea 125
- `float interleaved_gradientNoise()` — línea 128
- `float R2_dither()` — línea 134
- `float blueNoise()` — línea 143
- `vec4 blueNoise(vec2 coord)` — línea 146
- `vec2 R2_samples(int n)` — línea 149
- `vec3 viewToWorld(vec3 viewPos)` — línea 161
- `float DH_ld(float dist)` — línea 215
- `float DH_inv_ld(float lindepth)` — línea 218
- `void convertHandDepth(inout float depth)` — línea 226
- `float convertHandDepth_2(in float depth, bool hand)` — línea 232
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 305
- `float encodeVec2(vec2 a)` — línea 314
- `float encodeVec2(float x,float y)` — línea 319
- `vec3 toClipSpace3Prev(vec3 viewSpacePosition)` — línea 325
- `float ld(float dist)` — línea 361
- `float sampleDepth(sampler2D depthTex, vec2 texcoord, bool hand)` — línea 364
- `void main()` — línea 373

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite.vsh.md`

# shaders\dimensions\composite.vsh

**Ruta original:** `shaders\dimensions\composite.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform int frameCounter;`
- `uniform float sunElevation;`
- `uniform vec3 sunPosition;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 23

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite1.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite1.fsh.md`

# shaders\dimensions\composite1.fsh

**Ruta original:** `shaders\dimensions\composite1.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/color_transforms.glsl`
- `/lib/waterBump.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/Shadows.glsl`
- `/lib/stars.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/hsv.glsl`
- `/lib/lpv_common.glsl`
- `/lib/lpv_render.glsl`
- `/lib/diffuse_lighting.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/end_fog.glsl`
- `/lib/specular.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/indirect_lighting_effects.glsl`
- `/lib/PhotonGTAO.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform float nightVision;`
- `uniform vec3 lightningEffect;`
- `uniform float nightVision;`
- `uniform vec3 lightningEffect;`
- `uniform int hideGUI;`
- `uniform sampler2D noisetex; //noise`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D depthtex2;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex0; //clouds`
- `uniform sampler2D colortex1; //albedo(rgb),material(alpha) RGBA16`
- `uniform sampler2D colortex2; //translucents(rgba)`
- `uniform sampler2D colortex3; //filtered shadowmap(VPS)`
- `uniform sampler2D colortex4; //LUT(rgb), quarter res depth(alpha)`
- `uniform sampler2D colortex5; //TAA buffer/previous frame`
- `uniform sampler2D colortex6; //Noise`
- `uniform sampler2D colortex7; //water?`
- `uniform sampler2D colortex8; //Specular`
- `uniform sampler2D colortex10;`
- `uniform sampler2D colortex11;`
- `uniform sampler2D colortex12;`
- `uniform sampler2D colortex13;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D colortex15; // flat normals(rgb), vanillaAO(alpha)`
- `uniform usampler1D texBlockData;`
- `uniform sampler3D texLpv1;`
- `uniform sampler3D texLpv2;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowModelViewInverse;`
- `uniform mat4 shadowProjection;`
- `uniform mat4 shadowProjectionInverse;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform vec3 cameraPosition;`
- `uniform vec3 previousCameraPosition;`
- `uniform float near;`
- `uniform float farPlane;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform vec2 texelSize;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`
- `uniform float aspectRatio;`
- `uniform float eyeAltitude;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform float rainStrength;`
- `uniform int isEyeInWater;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform vec3 sunVec;`
- `uniform int heldItemId;`
- `uniform int heldItemId2;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#define diagonal3_old(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD_old(m, v) (diagonal3_old(m) * (v) + (m)[3].xyz)`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#if Sun_specular_Strength != 0`
- `#define LIGHTSOURCE_REFLECTION`
- `#endif`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#define TESTTHINGYG`
- `#ifdef OVERWORLD_SHADER`
- `#define CLOUDSHADOWSONLY`
- `#define CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef LIGHTING_EFFECTS_BLUR_FILTER`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Variable_Penumbra_Shadows`
- `#endif`
- `#if indirect_effect == 1`
- `#endif`
- `#endif`
- `#ifdef Variable_Penumbra_Shadows`
- `#endif`
- `#if indirect_effect == 1`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef BASIC_SHADOW_FILTER`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef BASIC_SHADOW_FILTER`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#endif`
- `#if defined BASIC_SHADOW_FILTER && defined Variable_Penumbra_Shadows`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#else`
- `#endif`
- `#if !defined OVERWORLD_SHADER`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef POM`
- `#ifdef Horrible_slope_normals`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if RESOURCEPACK_SKY == 1 || RESOURCEPACK_SKY == 0 || RESOURCEPACK_SKY == 3`
- `#if !defined ambientLight_only && (RESOURCEPACK_SKY == 1 || RESOURCEPACK_SKY == 0)`
- `#endif`
- `#endif`
- `#endif`
- `#if RESOURCEPACK_SKY == 1 || RESOURCEPACK_SKY == 2 || RESOURCEPACK_SKY == 3`
- `#ifdef SKY_GROUND`
- `#endif`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined VOLUMETRIC_CLOUDS && !defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined DISTANT_HORIZONS && defined DH_AMBIENT_OCCLUSION`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if OPTIMIZED_SHADOW_DISTANCE > 0`
- `#else`
- `#endif`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef OLD_LIGHTLEAK_FIX`
- `#endif`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef END_SHADER`
- `#ifdef END_LIGHTNING`
- `#else`
- `#endif`
- `#endif`
- `#if defined OVERWORLD_SHADER`
- `#if indirect_effect == 0 || indirect_effect == 1 || indirect_effect == 2`
- `#if indirect_effect == 1`
- `#endif`
- `#endif`
- `#if indirect_effect == 3 || indirect_effect == 4`
- `#endif`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#if indirect_effect == 1`
- `#endif`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#if LPV_NORMAL_STRENGTH > 0`
- `#endif`
- `#else`
- `#endif`
- `#if indirect_effect == 0`
- `#endif`
- `#if indirect_effect == 1`
- `#endif`
- `#if indirect_effect == 2`
- `#endif`
- `#if indirect_effect == 3 || indirect_effect == 4`
- `#endif`
- `#if defined END_SHADER`
- `#endif`
- `#if defined Ambient_SSS && defined OVERWORLD_SHADER && indirect_effect == 1`
- `#endif`
- `#if SSS_TYPE != 0 && defined OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifndef RENDER_ENTITY_SHADOWS`
- `#endif`
- `#ifdef SCREENSPACE_CONTACT_SHADOWS`
- `#endif`
- `#ifndef SCREENSPACE_CONTACT_SHADOWS`
- `#endif`
- `#ifdef CLOUDS_SHADOWS`
- `#endif`
- `#endif`
- `#ifdef SSS_view`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef Specular_Reflections`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef SKY_GROUND`
- `#else`
- `#endif`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if DEBUG_VIEW == debug_SHADOWMAP`
- `#endif`
- `#if DEBUG_VIEW == debug_NORMALS`
- `#endif`
- `#if DEBUG_VIEW == debug_SPECULAR`
- `#endif`
- `#if DEBUG_VIEW == debug_INDIRECT`
- `#endif`
- `#if DEBUG_VIEW == debug_DIRECT`
- `#endif`
- `#if DEBUG_VIEW == debug_VIEW_POSITION`
- `#endif`
- `#if DEBUG_VIEW == debug_FILTERED_STUFF`
- `#endif`

## Constantes detectadas

- `const bool colortex5MipmapEnabled = true;`
- `const bool shadowHardwareFiltering = true;`
- `const bool colortex4MipmapEnabled = true;`
- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`
- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `float invertlinearDepthFast(const in float depth, const in float near, const in float far) {`
- `const vec3 mantissaBits = vec3(6.,6.,5.);`
- `const float PI = 3.141592653589793238462643383279502884197169;`
- `const ivec2 scaling = ivec2(1.0/VL_RENDER_RESOLUTION);`
- `const vec3 lpvPos = vec3(0.0);`

## Funciones detectadas (heurística)

- `void convertHandDepth(inout float depth)` — línea 140
- `float convertHandDepth_2(in float depth, bool hand)` — línea 145
- `vec3 toScreenSpace(vec3 p)` — línea 153
- `float ld(float dist)` — línea 187
- `vec3 decode(vec2 encn)` — línea 192
- `vec2 decodeVec2(float a)` — línea 200
- `float DH_ld(float dist)` — línea 214
- `float DH_inv_ld(float lindepth)` — línea 217
- `vec3 normVec(vec3 vec)` — línea 230
- `float lengthVec(vec3 vec)` — línea 233
- `vec3 fp10Dither(vec3 color,float dither)` — línea 246
- `vec3 BilateralFiltering(sampler2D tex, sampler2D depth,vec2 coord,float frDepth,float maxZ)` — línea 274
- `float interleaved_gradientNoise()` — línea 279
- `float R2_dither()` — línea 284
- `float blueNoise()` — línea 289
- `vec4 blueNoise(vec2 coord)` — línea 292
- `vec3 toShadowSpaceProjected(vec3 feetPlayerPos)` — línea 296
- `vec3 viewToWorld(vec3 viewPos)` — línea 355
- `vec3 worldToView(vec3 worldPos)` — línea 362
- `float swapperlinZ(float depth, float _near, float _far)` — línea 367
- `vec2 SSRT_Shadows(vec3 viewPos, bool depthCheck, vec3 lightDir, float noise, bool isSSS, bool hand)` — línea 376
- `vec4 BilateralUpscale(sampler2D tex, sampler2D depth, vec2 coord, float referenceDepth)` — línea 453
- `vec4 BilateralUpscale_DH(sampler2D tex, sampler2D depth, vec2 coord, float referenceDepth)` — línea 489
- `void BilateralUpscale_REUSE_Z(sampler2D tex1, sampler2D tex2, sampler2D depth, vec2 coord, float referenceDepth, inout vec2 ambientEffects, inout vec3 filteredShadow, bool hand)` — línea 538
- `vec4 BilateralUpscale_VLFOG(sampler2D tex, sampler2D depth, vec2 coord, float referenceDepth)` — línea 597
- `float ComputeShadowMap(in vec3 projectedShadowPosition, float distortFactor, float noise, float shadowBlockerDepth, float NdotL, float maxDistFade, inout vec3 directLightColor, inout float FUNNYSHADOW, bool isSSS)` — línea 641
- `float CustomPhase(float LightPos)` — línea 702
- `vec3 SubsurfaceScattering_sun(vec3 albedo, float Scattering, float Density, float lightPos, float shadows, float distantSSS)` — línea 711
- `vec3 SubsurfaceScattering_sky(vec3 albedo, float Scattering, float Density)` — línea 739
- `void main()` — línea 753

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite1.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite1.vsh.md`

# shaders\dimensions\composite1.vsh

**Ruta original:** `shaders\dimensions\composite1.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/util.glsl`
- `/lib/Shadow_Params.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform float near;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 sunPosition;`
- `uniform float rainStrength;`
- `uniform float sunElevation;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef END_SHADER`
- `#endif`
- `#if defined Daily_Weather`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#if defined Daily_Weather`
- `#endif`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 43

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite10.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite10.fsh.md`

# shaders\dimensions\composite10.fsh

**Ruta original:** `shaders\dimensions\composite10.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex6;`
- `uniform vec2 texelSize;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

- `#ifdef OLD_BLOOM`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 81

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite10.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite10.vsh.md`

# shaders\dimensions\composite10.vsh

**Ruta original:** `shaders\dimensions\composite10.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 9

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite11.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite11.fsh.md`

# shaders\dimensions\composite11.fsh

**Ruta original:** `shaders\dimensions\composite11.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/biome_specifics.glsl`
- `/lib/bokeh.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex5;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D noisetex;`
- `uniform vec2 texelSize;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`
- `uniform float frameTimeCounter;`
- `uniform int frameCounter;`
- `uniform int isEyeInWater;`
- `uniform float near;`
- `uniform float aspectRatio;`
- `uniform float far;`
- `uniform float rainStrength;`
- `uniform float screenBrightness;`
- `uniform vec4 Moon_Weather_properties; // R = cloud coverage 		G = fog density`
- `uniform int hideGUI;`
- `uniform int framemod8;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform sampler2D dhDepthTex;`
- `uniform float dhNearPlane;`
- `uniform float dhFarPlane;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#define linear_to_srgb(x) (pow(x, vec3(1.0/2.2)))`
- `#if DOF_QUALITY >= 0`
- `#if MANUAL_FOCUS == -2`
- `#elif MANUAL_FOCUS == -1`
- `#elif MANUAL_FOCUS > 0`
- `#endif`
- `#if DOF_QUALITY < 5`
- `#ifdef FAR_BLUR_ONLY`
- `#endif`
- `#endif`
- `#endif`
- `#ifdef OLD_BLOOM`
- `#else`
- `#endif`
- `#ifdef AUTO_EXPOSURE`
- `#else`
- `#endif`
- `#ifndef USE_ACES_COLORSPACE_APPROXIMATION`
- `#else`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#if FOCUS_LASER_COLOR == 0 // Red`
- `#elif FOCUS_LASER_COLOR == 1 // Green`
- `#elif FOCUS_LASER_COLOR == 2 // Blue`
- `#elif FOCUS_LASER_COLOR == 3 // Pink`
- `#elif FOCUS_LASER_COLOR == 4 // Yellow`
- `#elif FOCUS_LASER_COLOR == 5 // White`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

- `const bool colortex5MipmapEnabled = true;`
- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`

## Funciones detectadas (heurística)

- `float cdist(vec2 coord)` — línea 50
- `float blueNoise()` — línea 53
- `float ld(float depth)` — línea 56
- `float bloomWeight()` — línea 81
- `void main()` — línea 97

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite11.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite11.vsh.md`

# shaders\dimensions\composite11.vsh

**Ruta original:** `shaders\dimensions\composite11.vsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 16

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite12.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite12.fsh.md`

# shaders\dimensions\composite12.fsh

**Ruta original:** `shaders\dimensions\composite12.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D noisetex;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform float aspectRatio;`
- `uniform float frameTimeCounter;`
- `uniform int hideGUI;`

## Defines / Preprocesador

- `#ifdef CONTRAST_ADAPTATIVE_SHARPENING`
- `#endif`
- `#ifdef LUMINANCE_CURVE`
- `#endif`
- `#ifdef COLOR_GRADING_ENABLED`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float lowerCurve(float x)` — línea 75
- `float upperCurve(float x)` — línea 80
- `vec3 luminanceCurve(vec3 color)` — línea 85
- `vec3 colorGrading(vec3 color)` — línea 92
- `vec3 contrastAdaptiveSharpening(vec3 color, vec2 texcoord)` — línea 105
- `vec3 saturationAndCrosstalk(vec3 color)` — línea 126
- `void main()` — línea 137

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite12.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite12.vsh.md`

# shaders\dimensions\composite12.vsh

**Ruta original:** `shaders\dimensions\composite12.vsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 12

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite2.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite2.fsh.md`

# shaders\dimensions\composite2.fsh

**Ruta original:** `shaders\dimensions\composite2.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/projections.glsl`
- `/lib/res_params.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/waterBump.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/hsv.glsl`
- `/lib/lpv_common.glsl`
- `/lib/lpv_render.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/overworld_fog.glsl`
- `/lib/nether_fog.glsl`
- `/lib/end_fog.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D noisetex;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex0;`
- `uniform sampler2D colortex2;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D colortex7;`
- `uniform vec3 sunVec;`
- `uniform float sunElevation;`
- `uniform float near;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform vec2 texelSize;`
- `uniform int isEyeInWater;`
- `uniform float rainStrength;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float eyeAltitude;`
- `uniform float caveDetection;`
- `uniform usampler1D texBlockData;`
- `uniform sampler3D texLpv1;`
- `uniform sampler3D texLpv2;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex4;`

## Defines / Preprocesador

- `#define EXCLUDE_WRITE_TO_LUT`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#define DHVLFOG`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#define IS_LPV_ENABLED`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined IS_LPV_ENABLED`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#define TIMEOFDAYFOG`
- `#define CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#define fsign(a)  (clamp((a)*1e35,0.,1.)*2.-1.)`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef VL_CLOUDS_SHADOWS`
- `#endif`
- `#else`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#if defined CAVE_FOG && defined CAVE_FOG_DARKEN_SKY`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#if defined NETHER_SHADER || defined END_SHADER`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`

## Constantes detectadas

- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const bool shadowHardwareFiltering = true;`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`

## Funciones detectadas (heurística)

- `float DH_ld(float dist)` — línea 63
- `float DH_inv_ld(float lindepth)` — línea 66
- `vec3 LPV_FOG_ILLUMINATION(in vec3 playerPos, float dd, float dL)` — línea 103
- `float invLinZ(float lindepth)` — línea 130
- `float interleaved_gradientNoise_temporal()` — línea 161
- `float interleaved_gradientNoise()` — línea 164
- `float blueNoise()` — línea 170
- `float R2_dither()` — línea 174
- `void waterVolumetrics_notoverworld(inout vec3 inColor, vec3 rayStart, vec3 rayEnd, float estEndDepth, float estSunDepth, float rayLength, float dither, vec3 waterCoefs, vec3 scatterCoef, vec3 ambient)` — línea 184
- `void waterVolumetrics(inout vec3 inColor, vec3 rayStart, vec3 rayEnd, float estEyeDepth, float estSunDepth, float rayLength, float dither, vec3 waterCoefs, vec3 scatterCoef, vec3 ambient, vec3 lightSource, float VdotL)` — línea 229
- `vec4 blueNoise(vec2 coord)` — línea 328
- `vec2 R2_samples(int n)` — línea 331
- `float fogPhase2(float lightPoint)` — línea 336
- `float encodeVec2(vec2 a)` — línea 346
- `void main()` — línea 364

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite2.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite2.vsh.md`

# shaders\dimensions\composite2.vsh

**Ruta original:** `shaders\dimensions\composite2.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/sky_gradient.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform sampler2D colortex4;`
- `uniform float sunElevation;`
- `uniform vec3 sunPosition;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform int frameCounter;`
- `uniform int framemod8;`
- `uniform float frameTimeCounter;`

## Defines / Preprocesador

- `#if defined LPV_VL_FOG_ILLUMINATION && defined IS_LPV_ENABLED`
- `#endif`
- `#if defined Daily_Weather`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined IS_LPV_ENABLED`
- `#endif`
- `#ifdef TAA`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite3.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite3.fsh.md`

# shaders\dimensions\composite3.fsh

**Ruta original:** `shaders\dimensions\composite3.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/waterBump.glsl`
- `/lib/res_params.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/climate_settings.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D noisetex;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex0;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex2;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex5;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex8;`
- `uniform sampler2D colortex9;`
- `uniform sampler2D colortex10;`
- `uniform sampler2D colortex11;`
- `uniform sampler2D colortex12;`
- `uniform sampler2D colortex13;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D colortex15;`
- `uniform vec2 texelSize;`
- `uniform sampler2D colortex4;`
- `uniform vec3 sunVec;`
- `uniform float frameTimeCounter;`
- `uniform int frameCounter;`
- `uniform float far;`
- `uniform float near;`
- `uniform float farPlane;`
- `uniform float dhNearPlane;`
- `uniform float dhFarPlane;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform vec3 cameraPosition;`
- `uniform vec3 previousCameraPosition;`
- `uniform int isEyeInWater;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform ivec2 eyeBrightness;`
- `uniform float rainStrength;`
- `uniform float blindness;`
- `uniform float darknessFactor;`
- `uniform float darknessLightFactor;`
- `uniform float caveDetection;`
- `uniform int dhRenderDistance;`
- `uniform float eyeAltitude;`

## Defines / Preprocesador

- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#define CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CLOUDS_INTERSECT_TERRAIN`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Refraction`
- `#endif`
- `#ifdef Glass_Tint`
- `#endif`
- `#ifdef BorderFog`
- `#endif`
- `#if defined OVERWORLD_SHADER && defined CAVE_FOG`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#ifdef CAVE_FOG_DARKEN_SKY`
- `#else`
- `#endif`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef display_LUT`
- `#endif`

## Constantes detectadas

- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`

## Funciones detectadas (heurística)

- `float ld(float depth)` — línea 85
- `float luma(vec3 color)` — línea 88
- `vec3 toLinear(vec3 sRGB)` — línea 91
- `vec3 toScreenSpace(vec3 p)` — línea 94
- `float blueNoise()` — línea 103
- `vec4 blueNoise(vec2 coord)` — línea 106
- `vec3 normVec(vec3 vec)` — línea 109
- `float interleaved_gradientNoise()` — línea 113
- `float DH_ld(float dist)` — línea 119
- `float DH_inv_ld(float lindepth)` — línea 122
- `vec2 decodeVec2(float a)` — línea 128
- `vec4 BilateralUpscale(sampler2D tex, sampler2D tex2, sampler2D depth, vec2 coord, float referenceDepth, inout float CLOUDALPHA)` — línea 133
- `vec3 decode(vec2 encn)` — línea 184
- `vec3 worldToView(vec3 worldPos)` — línea 194
- `vec3 viewToWorld(vec3 viewPosition)` — línea 199
- `void applyContrast(inout vec3 color, float contrast)` — línea 208
- `void ApplyDistortion(inout vec2 Texcoord, vec2 TangentNormals, float lineardistance, bool isTranslucentEntity)` — línea 212
- `void main()` — línea 231

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite3.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite3.vsh.md`

# shaders\dimensions\composite3.vsh

**Ruta original:** `shaders\dimensions\composite3.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform float far;`
- `uniform float near;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 sunPosition;`
- `uniform float sunElevation;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef BorderFog`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef BorderFog`
- `#endif`
- `#endif`
- `#ifdef TAA`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 36

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite4.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite4.fsh.md`

# shaders\dimensions\composite4.fsh

**Ruta original:** `shaders\dimensions\composite4.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex3;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 12

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite4.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite4.vsh.md`

# shaders\dimensions\composite4.vsh

**Ruta original:** `shaders\dimensions\composite4.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef TAA_UPSCALING`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 10

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite5.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite5.fsh.md`

# shaders\dimensions\composite5.fsh

**Ruta original:** `shaders\dimensions\composite5.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/util.glsl`
- `/lib/projections.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex0;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex5;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D colortex10;`
- `uniform sampler2D colortex12;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform vec3 previousCameraPosition;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform int hideGUI;`
- `uniform float CriticalDamageTaken;`
- `uniform int framemod8;`
- `uniform sampler2D dhDepthTex;`
- `uniform float near;`
- `uniform float far;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`

## Defines / Preprocesador

- `#ifdef SCREENSHOT_MODE`
- `#else`
- `#endif`
- `#ifdef DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifndef SMOOTHESTSTEP_INTERPOLATION`
- `#endif`
- `#ifdef SMOOTHESTSTEP_INTERPOLATION`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#else`
- `#endif`
- `#ifdef DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#ifdef DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#ifdef SCREENSHOT_MODE`
- `#endif`
- `#ifdef TAA`
- `#if DEBUG_VIEW == debug_TEMPORAL_REPROJECTION`
- `#endif`
- `#ifdef SCREENSHOT_MODE`
- `#else`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

- `const int colortex0Format = RGBA16F;				// low res clouds (deferred->composite2) + low res VL (composite5->composite15)`
- `const int colortex1Format = RGBA16;					// terrain gbuffer (gbuffer->composite2)`
- `const int colortex2Format = RGBA16F;				// forward + transparencies (gbuffer->composite4)`
- `const int colortex3Format = R11F_G11F_B10F;			// frame buffer + bloom (deferred6->final)`
- `const int colortex4Format = RGBA16F;				// light values and skyboxes (everything)`
- `const int colortex6Format = R11F_G11F_B10F;			// additionnal buffer for bloom (composite3->final)`
- `const int colortex7Format = RGBA8;					// Final output, transparencies id (gbuffer->composite4)`
- `const int colortex8Format = RGBA8;					// Specular Texture`
- `const int colortex9Format = RGBA8;					// rain in alpha`
- `const int colortex10Format = RGBA16;				// resourcepack Skies`
- `const int colortex11Format = RGBA16; 				// unchanged translucents albedo, alpha and tangent normals`
- `const int colortex12Format = RGBA16F;				// DISTANT HORIZONS + VANILLA MIXED DEPTHs`
- `const int colortex13Format = RGBA16F;				// low res VL (composite5->composite15)`
- `const int colortex14Format = RGBA16;					// rg = SSAO and SS-SSS. a = skylightmap for translucents.`
- `const int colortex15Format = RGBA8;					// flat normals and vanilla AO`
- `const bool colortex0Clear = false;`
- `const bool colortex1Clear = false;`
- `const bool colortex2Clear = true;`
- `const bool colortex3Clear = false;`
- `const bool colortex4Clear = false;`
- `const bool colortex5Clear = false;`
- `const bool colortex6Clear = false;`
- `const bool colortex7Clear = false;`
- `const bool colortex8Clear = false;`
- `const bool colortex9Clear = true;`
- `const bool colortex10Clear = true;`
- `const bool colortex11Clear = true;`
- `const bool colortex12Clear = false;`
- `const bool colortex13Clear = false;`
- `const bool colortex14Clear = true;`
- `const bool colortex15Clear = false;`
- `const int colortex5Format = RGBA32F;// TAA buffer (everything)`
- `const int colortex5Format = R11F_G11F_B10F;	// TAA buffer (everything)`
- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`
- `const vec3 mantissaBits = vec3(6.,6.,5.);`
- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `float invertlinearDepthFast(const in float depth, const in float near, const in float far) {`

## Funciones detectadas (heurística)

- `vec2 decodeVec2(float a)` — línea 86
- `float luma(vec3 color)` — línea 92
- `float interleaved_gradientNoise()` — línea 95
- `vec4 fp10Dither(vec4 color ,float dither)` — línea 104
- `vec3 toClipSpace3Prev(vec3 viewSpacePosition)` — línea 110
- `vec3 tonemap(vec3 col)` — línea 113
- `vec3 invTonemap(vec3 col)` — línea 116
- `void convertHandDepth(inout float depth)` — línea 119
- `float convertHandDepth2( float depth)` — línea 124
- `float ld(float dist)` — línea 142
- `float DH_ld(float dist)` — línea 145
- `float DH_inv_ld(float lindepth)` — línea 148
- `vec3 toClipSpace3Prev_DH( vec3 viewSpacePosition, bool depthCheck )` — línea 159
- `vec3 toScreenSpace_DH_special(vec3 POS, bool depthCheck )` — línea 169
- `vec4 computeTAA(vec2 texcoord, bool hand)` — línea 317
- `void main()` — línea 411

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite5.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite5.vsh.md`

# shaders\dimensions\composite5.vsh

**Ruta original:** `shaders\dimensions\composite5.vsh`

## Includes

- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform int frameCounter;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef TAA_UPSCALING`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 13

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite6.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite6.fsh.md`

# shaders\dimensions\composite6.fsh

**Ruta original:** `shaders\dimensions\composite6.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D depthtex0;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex5;`
- `uniform vec2 texelSize;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`

## Funciones detectadas (heurística)

- `vec2 decodeVec2(float a)` — línea 11
- `void main()` — línea 23

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite6.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite6.vsh.md`

# shaders\dimensions\composite6.vsh

**Ruta original:** `shaders\dimensions\composite6.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 9

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite7.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite7.fsh.md`

# shaders\dimensions\composite7.fsh

**Ruta original:** `shaders\dimensions\composite7.fsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform sampler2D colortex3;`
- `uniform vec2 texelSize;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 11

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite7.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite7.vsh.md`

# shaders\dimensions\composite7.vsh

**Ruta original:** `shaders\dimensions\composite7.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 9

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite8.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite8.fsh.md`

# shaders\dimensions\composite8.fsh

**Ruta original:** `shaders\dimensions\composite8.fsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform sampler2D colortex6;`
- `uniform vec2 texelSize;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 gauss1D(vec2 coord,vec2 dir,float alpha,int maxIT)` — línea 7
- `void main()` — línea 26

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite8.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite8.vsh.md`

# shaders\dimensions\composite8.vsh

**Ruta original:** `shaders\dimensions\composite8.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 10

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite9.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite9.fsh.md`

# shaders\dimensions\composite9.fsh

**Ruta original:** `shaders\dimensions\composite9.fsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform sampler2D colortex6;`
- `uniform vec2 texelSize;`
- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 gauss1D(vec2 coord,vec2 dir,float alpha,int maxIT)` — línea 7
- `void main()` — línea 25

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_composite9.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_composite9.vsh.md`

# shaders\dimensions\composite9.vsh

**Ruta original:** `shaders\dimensions\composite9.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float viewWidth;`
- `uniform float viewHeight;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 10

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_deferred.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_deferred.fsh.md`

# shaders\dimensions\deferred.fsh

**Ruta original:** `shaders\dimensions\deferred.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/ROBOBO_sky.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/overworld_fog.glsl`
- `/lib/nether_fog.glsl`
- `/lib/end_fog.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D noisetex;`
- `uniform float frameTime;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform float rainStrength;`
- `uniform float eyeAltitude;`
- `uniform vec3 sunVec;`
- `uniform vec2 texelSize;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowProjection;`
- `uniform float sunElevation;`
- `uniform vec3 sunPosition;`
- `uniform vec3 cameraPosition;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float caveDetection;`
- `uniform float near;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex4;`

## Defines / Preprocesador

- `#define ReflectedFog`
- `#define DHVLFOG`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#define TEST`
- `#define TIMEOFDAYFOG`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef Daily_Weather`
- `#endif`
- `#ifdef ambientLight_only`
- `#else`
- `#endif`
- `#ifdef AEROCHROME_MODE`
- `#endif`
- `#ifdef ambientLight_only`
- `#endif`
- `#endif`
- `#if defined NETHER_SHADER || defined END_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`

## Constantes detectadas

- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `// const bool shadowHardwareFiltering = true;`

## Funciones detectadas (heurística)

- `vec3 toShadowSpaceProjected(vec3 p3)` — línea 60
- `float interleaved_gradientNoise()` — línea 67
- `float blueNoise()` — línea 72
- `vec3 toScreenSpace(vec3 p)` — línea 80
- `vec3 DH_toScreenSpace(vec3 p)` — línea 93
- `vec3 DH_toClipSpace3(vec3 viewSpacePosition)` — línea 100
- `float DH_ld(float dist)` — línea 111
- `float DH_inv_ld(float lindepth)` — línea 114
- `float invLinZ(float lindepth)` — línea 121
- `vec2 R2_samples(float n)` — línea 163
- `void main()` — línea 168

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_deferred.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_deferred.vsh.md`

# shaders\dimensions\deferred.vsh

**Ruta original:** `shaders\dimensions\deferred.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/util.glsl`
- `/lib/ROBOBO_sky.glsl`

## Uniforms / Variables detectadas

- `uniform float frameTimeCounter;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D depthtex2;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 sunPosition;`
- `uniform vec2 texelSize;`
- `uniform float sunElevation;`
- `uniform float eyeAltitude;`
- `uniform float near;`
- `uniform float frameTime;`
- `uniform int frameCounter;`
- `uniform float rainStrength;`
- `uniform float nightVision;`
- `uniform int worldDay;`

## Defines / Preprocesador

- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#ifdef Daily_Weather`
- `#ifdef CHOOSE_RANDOM_WEATHER_PROFILE`
- `#else`
- `#endif`
- `#endif`
- `#ifndef AUTO_EXPOSURE`
- `#endif`

## Constantes detectadas

- `const int maxITexp = 50;`

## Funciones detectadas (heurística)

- `float luma(vec3 color)` — línea 55
- `vec2 R2_samples(int n)` — línea 66
- `float tanh(float x)` — línea 70
- `float ld(float depth)` — línea 73
- `void main()` — línea 106

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_deferred1.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_deferred1.fsh.md`

# shaders\dimensions\deferred1.fsh

**Ruta original:** `shaders\dimensions\deferred1.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex1;`
- `uniform sampler2D colortex12;`
- `uniform vec2 texelSize;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform float near;`
- `uniform float far;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`

## Constantes detectadas

- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`

## Funciones detectadas (heurística)

- `float linZ(float depth)` — línea 20
- `float DH_linZ(float dist)` — línea 23
- `float DH_invLinZ(float lindepth)` — línea 26
- `void convertHandDepth(inout float depth)` — línea 29
- `vec2 decodeVec2(float a)` — línea 34
- `void main()` — línea 45

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_deferred1.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_deferred1.vsh.md`

# shaders\dimensions\deferred1.vsh

**Ruta original:** `shaders\dimensions\deferred1.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 5

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_deferred2.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_deferred2.fsh.md`

# shaders\dimensions\deferred2.fsh

**Ruta original:** `shaders\dimensions\deferred2.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/res_params.glsl`
- `/lib/volumetricClouds.glsl`

## Uniforms / Variables detectadas

- `uniform float near;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D noisetex;`
- `uniform sampler2D colortex12;`
- `uniform float sunElevation;`
- `uniform vec3 sunVec;`
- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform float rainStrength;`
- `uniform int frameCounter;`
- `uniform int framemod8;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 cameraPosition;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferProjection;`
- `uniform float far;`
- `uniform int dhRenderDistance;`
- `uniform float eyeAltitude;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#define CLOUDS_INTERSECT_TERRAIN`
- `#if defined OVERWORLD_SHADER && defined VOLUMETRIC_CLOUDS && !defined  CLOUDS_INTERSECT_TERRAIN`
- `#ifdef CLOUDS_INTERSECT_TERRAIN`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#else`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 toScreenSpace(vec3 p)` — línea 45
- `float R2_dither()` — línea 55
- `float interleaved_gradientNoise()` — línea 65
- `float blueNoise()` — línea 76
- `vec3 normVec(vec3 vec)` — línea 85
- `float ld(float dist)` — línea 91
- `void main()` — línea 118

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_deferred2.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_deferred2.vsh.md`

# shaders\dimensions\deferred2.vsh

**Ruta original:** `shaders\dimensions\deferred2.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`

## Uniforms / Variables detectadas

- `uniform mat4 gbufferModelViewInverse;`
- `uniform vec3 sunPosition;`
- `uniform float sunElevation;`
- `uniform sampler2D colortex4;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`

## Defines / Preprocesador

- `#if defined Daily_Weather`
- `#endif`
- `#if defined Daily_Weather`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 29

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_DH_solid.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_DH_solid.fsh.md`

# shaders\dimensions\DH_solid.fsh

**Ruta original:** `shaders\dimensions\DH_solid.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform float far;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform sampler2D noisetex;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform vec3 cameraPosition;`

## Defines / Preprocesador

- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef DH_OVERDRAW_PREVENTION`
- `#if OVERDRAW_MAX_DISTANCE == 0`
- `#else`
- `#endif`
- `#endif`
- `#ifdef DH_NOISE_TEXTURE`
- `#else`
- `#endif`
- `#ifdef AEROCHROME_MODE`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#if EMISSIVE_TYPE == 0`
- `#else`
- `#endif`
- `#if SSS_TYPE == 0`
- `#else`
- `#endif`

## Constantes detectadas

- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`
- `// const int noiseSteps = NOISE_RESOLUTION;`
- `const float noiseIntensity = NOISE_INTENSITY;`
- `const int noiseDropoff = NOISE_DROPOFF;`
- `vec3 quantize(const in vec3 val, const in int stepSize) {`
- `vec4 applyNoise(in vec4 fragColor, const in vec3 viewPos, const in float viewDist) {`

## Funciones detectadas (heurística)

- `vec3 viewToWorld(vec3 viewPosition)` — línea 18
- `vec3 worldToView(vec3 worldPos)` — línea 25
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 30
- `float encodeVec2(vec2 a)` — línea 39
- `float encodeVec2(float x,float y)` — línea 44
- `vec3 toScreenSpace(vec3 p)` — línea 58
- `float blueNoise()` — línea 68
- `float interleaved_gradientNoise_temporal()` — línea 71
- `float interleaved_gradientNoise()` — línea 74
- `float R2_dither()` — línea 79
- `float densityAtPos(in vec3 pos)` — línea 86
- `float rand(float co)` — línea 110
- `float rand(vec2 co)` — línea 111
- `float rand(vec3 co)` — línea 112
- `void main()` — línea 157

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_DH_solid.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_DH_solid.vsh.md`

# shaders\dimensions\DH_solid.vsh

**Ruta original:** `shaders\dimensions\DH_solid.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/bokeh.glsl`
- `/lib/TAA_jitter.glsl`
- `/lib/climate_settings.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform int hideGUI;`
- `uniform int frameCounter;`
- `uniform float aspectRatio;`
- `uniform float screenBrightness;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform float far;`
- `uniform mat4 dhProjection;`
- `uniform vec3 cameraPosition;`

## Defines / Preprocesador

- `#if DOF_QUALITY == 5`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#define SEASONS_VSH`
- `#define DH_SEASONS`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#if defined DH_SUBSURFACE_SCATTERING`
- `#endif`
- `#if defined Seasons && defined OVERWORLD_SHADER`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#if MANUAL_FOCUS == -2`
- `#elif MANUAL_FOCUS == -1`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 38
- `void main()` — línea 47

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_DH_translucent.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_DH_translucent.fsh.md`

# shaders\dimensions\DH_translucent.fsh

**Ruta original:** `shaders\dimensions\DH_translucent.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/color_transforms.glsl`
- `/lib/projections.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/waterBump.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform sampler2D noisetex;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D colortex12;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex5;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform vec3 previousCameraPosition;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform int frameCounter;`
- `uniform int isEyeInWater;`
- `uniform float rainStrength;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#define CLOUDSHADOWSONLY`
- `#endif`
- `#ifdef DH_OVERDRAW_PREVENTION`
- `#if OVERDRAW_MAX_DISTANCE == 0`
- `#else`
- `#endif`
- `#endif`
- `#ifdef WhiteWorld`
- `#endif`
- `#ifndef WhiteWorld`
- `#ifndef Vanilla_like_water`
- `#endif`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS_SHADOWMAP`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#endif`
- `#ifdef CLOUDS_SHADOWS`
- `#endif`
- `#endif`
- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef SKY_GROUND`
- `#else`
- `#endif`
- `#endif`
- `#ifdef WATER_REFLECTIONS`
- `#ifdef SNELLS_WINDOW`
- `#endif`
- `#if defined SCREENSPACE_REFLECTIONS && defined DH_SCREENSPACE_REFLECTIONS`
- `#endif`
- `#ifdef WATER_BACKGROUND_SPECULAR`
- `#endif`
- `#ifdef WATER_SUN_SPECULAR`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#endif`
- `#else`
- `#endif`
- `#if defined BorderFog && defined OVERWORLD_SHADER`
- `#endif`
- `#ifdef DH_OVERDRAW_PREVENTION`
- `#endif`
- `#if DEBUG_VIEW == debug_DH_WATER_BLENDING`
- `#endif`

## Constantes detectadas

- `const bool shadowHardwareFiltering = true;`
- `float linearizeDepthFast(const in float depth, const in float dhNearPlane, const in float far) {`
- `// float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const vec2 constant1 = vec2( 1., 256.) / 65535.;`

## Funciones detectadas (heurística)

- `vec3 DH_toScreenSpace(vec3 p)` — línea 78
- `vec3 DH_toClipSpace3(vec3 viewSpacePosition)` — línea 85
- `float invLinZ(float lindepth)` — línea 89
- `float ld(float dist)` — línea 92
- `float DH_ld(float dist)` — línea 95
- `float DH_inv_ld(float lindepth)` — línea 98
- `float GGX(vec3 n, vec3 v, vec3 l, float r, float f0)` — línea 117
- `vec3 doScreenSpaceReflectiom(vec3 dir, vec3 position, float dither, float quality)` — línea 197
- `float R2_dither()` — línea 237
- `float interleaved_gradientNoise()` — línea 242
- `vec3 viewToWorld(vec3 viewPos)` — línea 247
- `vec3 worldToView(vec3 worldPos)` — línea 254
- `vec4 encode(vec3 n, vec2 lightmaps)` — línea 259
- `float encodeVec2(vec2 a)` — línea 268
- `float encodeVec2(float x,float y)` — línea 273
- `vec3 applyBump(mat3 tbnMatrix, vec3 bump, float puddle_values)` — línea 276
- `void main()` — línea 285

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_DH_translucent.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_DH_translucent.vsh.md`

# shaders\dimensions\DH_translucent.vsh

**Ruta original:** `shaders\dimensions\DH_translucent.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`
- `/lib/bokeh.glsl`
- `/lib/TAA_jitter.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 dhProjection;`
- `uniform vec3 sunPosition;`
- `uniform float sunElevation;`
- `uniform vec2 texelSize;`
- `uniform int framemod8;`
- `uniform int hideGUI;`
- `uniform int frameCounter;`
- `uniform float aspectRatio;`
- `uniform float screenBrightness;`
- `uniform float far;`
- `uniform vec3 cameraPosition;`

## Defines / Preprocesador

- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#if DOF_QUALITY == 5`
- `#if MANUAL_FOCUS == -2`
- `#elif MANUAL_FOCUS == -1`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec4 toClipSpace3_THING(vec3 viewSpacePosition)` — línea 57
- `void main()` — línea 61

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_final.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_final.fsh.md`

# shaders\dimensions\final.fsh

**Ruta original:** `shaders\dimensions\final.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/res_params.glsl`
- `/lib/gameplay_effects.glsl`
- `/lib/util.glsl`
- `/lib/projections.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex14;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex2;`
- `uniform sampler2D noisetex;`
- `uniform vec2 texelSize;`
- `uniform float frameTimeCounter;`
- `uniform float viewHeight;`
- `uniform float viewWidth;`
- `uniform float aspectRatio;`
- `uniform int hideGUI;`
- `uniform vec3 previousCameraPosition;`
- `uniform mat4 gbufferPreviousModelView;`
- `uniform sampler2D shadowcolor1;`

## Defines / Preprocesador

- `#ifdef MOTION_BLUR`
- `#else`
- `#endif`
- `#if defined LOW_HEALTH_EFFECT || defined DAMAGE_TAKEN_EFFECT || defined WATER_ON_CAMERA_EFFECT`
- `#endif`
- `#ifdef CAMERA_GRIDLINES`
- `#endif`
- `#if DEBUG_VIEW == debug_SHADOWMAP`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float interleaved_gradientNoise()` — línea 23
- `void doCameraGridLines(inout vec3 color, vec2 UV)` — línea 31
- `vec3 doMotionBlur(vec2 texcoord, float depth, float noise)` — línea 57
- `void main()` — línea 90

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_final.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_final.vsh.md`

# shaders\dimensions\final.vsh

**Ruta original:** `shaders\dimensions\final.vsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 12

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_fogBehindTranslucent_pass.fsh.md

**Fuente:** `docs\lib\shaders_dimensions_fogBehindTranslucent_pass.fsh.md`

# shaders\dimensions\fogBehindTranslucent_pass.fsh

**Ruta original:** `shaders\dimensions\fogBehindTranslucent_pass.fsh`

## Includes

- `/lib/settings.glsl`
- `/lib/color_transforms.glsl`
- `/lib/color_dither.glsl`
- `/lib/projections.glsl`
- `/lib/res_params.glsl`
- `/lib/sky_gradient.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/waterBump.glsl`
- `/lib/DistantHorizons_projections.glsl`
- `/lib/lightning_stuff.glsl`
- `/lib/volumetricClouds.glsl`
- `/lib/overworld_fog.glsl`
- `/lib/nether_fog.glsl`
- `/lib/end_fog.glsl`
- `/lib/diffuse_lighting.glsl`

## Uniforms / Variables detectadas

- `uniform float nightVision;`
- `uniform sampler2D noisetex;`
- `uniform sampler2D depthtex0;`
- `uniform sampler2D depthtex1;`
- `uniform sampler2D dhDepthTex;`
- `uniform sampler2D dhDepthTex1;`
- `uniform sampler2D colortex2;`
- `uniform sampler2D colortex3;`
- `uniform sampler2D colortex6;`
- `uniform sampler2D colortex7;`
- `uniform sampler2D colortex11;`
- `uniform sampler2D colortex14;`
- `uniform vec3 sunVec;`
- `uniform float sunElevation;`
- `uniform float dhFarPlane;`
- `uniform float dhNearPlane;`
- `uniform float near;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`
- `uniform vec2 texelSize;`
- `uniform int isEyeInWater;`
- `uniform float rainStrength;`
- `uniform ivec2 eyeBrightnessSmooth;`
- `uniform float eyeAltitude;`
- `uniform float caveDetection;`
- `uniform sampler2DShadow shadow;`
- `uniform sampler2D shadowcolor0;`
- `uniform sampler2DShadow shadowtex0;`
- `uniform sampler2DShadow shadowtex1;`
- `uniform sampler2D colortex4;`
- `uniform sampler2D colortex4;`

## Defines / Preprocesador

- `#ifndef OVERWORLD_SHADER`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#define DHVLFOG`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#define TIMEOFDAYFOG`
- `#define CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`
- `#define fsign(a)  (clamp((a)*1e35,0.,1.)*2.-1.)`
- `#ifdef TAA`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef VL_CLOUDS_SHADOWS`
- `#endif`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef BIOME_TINT_WATER`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#else`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#endif`

## Constantes detectadas

- `float linearizeDepthFast(const in float depth, const in float near, const in float far) {`
- `const bool shadowHardwareFiltering = true;`
- `const vec2 constant1 = 65535. / vec2( 256., 65536.);`
- `const float constant2 = 256. / 255.;`

## Funciones detectadas (heurística)

- `float DH_ld(float dist)` — línea 67
- `float DH_inv_ld(float lindepth)` — línea 70
- `float interleaved_gradientNoise()` — línea 115
- `float blueNoise()` — línea 118
- `float R2_dither()` — línea 121
- `void waterVolumetrics_notoverworld(inout vec3 inColor, vec3 rayStart, vec3 rayEnd, float estEndDepth, float estSunDepth, float rayLength, float dither, vec3 waterCoefs, vec3 scatterCoef, vec3 ambient)` — línea 131
- `vec4 blueNoise(vec2 coord)` — línea 175
- `vec2 R2_samples(int n)` — línea 178
- `float fogPhase2(float lightPoint)` — línea 183
- `vec4 waterVolumetrics_test( vec3 rayStart, vec3 rayEnd, float estEndDepth, float estSunDepth, float rayLength, float dither, vec3 waterCoefs, vec3 scatterCoef, vec3 ambient, vec3 lightSource, float VdotL)` — línea 193
- `vec2 decodeVec2(float a)` — línea 276
- `void main()` — línea 289

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_fogBehindTranslucent_pass.vsh.md

**Fuente:** `docs\lib\shaders_dimensions_fogBehindTranslucent_pass.vsh.md`

# shaders\dimensions\fogBehindTranslucent_pass.vsh

**Ruta original:** `shaders\dimensions\fogBehindTranslucent_pass.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/util.glsl`
- `/lib/res_params.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/sky_gradient.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D colortex4;`
- `uniform float sunElevation;`
- `uniform vec2 texelSize;`
- `uniform vec3 sunPosition;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform int frameCounter;`
- `uniform float frameTimeCounter;`

## Defines / Preprocesador

- `#if defined Daily_Weather`
- `#endif`
- `#ifdef OVERWORLD_SHADER`
- `#if defined Daily_Weather`
- `#endif`
- `#endif`
- `#ifdef NETHER_SHADER`
- `#endif`
- `#ifdef END_SHADER`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 41

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_setup.csh.md

**Fuente:** `docs\lib\shaders_dimensions_setup.csh.md`

# shaders\dimensions\setup.csh

**Ruta original:** `shaders\dimensions\setup.csh`

## Includes

- `/lib/items.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/lpv_blocks.glsl`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#ifdef LPV_COLORED_CANDLES`
- `#else`
- `#endif`
- `#ifdef LPV_REDSTONE_LIGHTS`
- `#endif`
- `#ifdef LPV_REDSTONE_LIGHTS`
- `#endif`
- `#endif`

## Constantes detectadas

- `const ivec3 workGroups = ivec3(6, 6, 1);`
- `const vec3 LightColor_Amethyst = vec3(0.464, 0.227, 0.788);`
- `const vec3 LightColor_Candles = vec3(1.0, 0.4, 0.1);`
- `const vec3 LightColor_CopperBulb = vec3(1.0);`
- `const vec3 LightColor_LightBlock = vec3(1.0);`
- `const vec3 LightColor_RedstoneTorch = vec3(0.939, 0.305, 0.164);`
- `const vec3 LightColor_SeaPickle = vec3(0.283, 0.394, 0.212);`
- `const vec3 LightColor_Candles_Black = vec3(0.200);`
- `const vec3 LightColor_Candles_Blue = vec3(0.000, 0.259, 1.000);`
- `const vec3 LightColor_Candles_Brown = vec3(0.459, 0.263, 0.149);`
- `const vec3 LightColor_Candles_Cyan = vec3(0.000, 0.839, 0.839);`
- `const vec3 LightColor_Candles_Gray = vec3(0.329, 0.357, 0.388);`
- `const vec3 LightColor_Candles_Green = vec3(0.263, 0.451, 0.000);`
- `const vec3 LightColor_Candles_LightBlue = vec3(0.153, 0.686, 1.000);`
- `const vec3 LightColor_Candles_LightGray = vec3(0.631, 0.627, 0.624);`
- `const vec3 LightColor_Candles_Lime = vec3(0.439, 0.890, 0.000);`
- `const vec3 LightColor_Candles_Magenta = vec3(0.757, 0.098, 0.812);`
- `const vec3 LightColor_Candles_Orange = vec3(1.000, 0.459, 0.000);`
- `const vec3 LightColor_Candles_Pink = vec3(1.000, 0.553, 0.718);`
- `const vec3 LightColor_Candles_Purple = vec3(0.569, 0.000, 1.000);`
- `const vec3 LightColor_Candles_Red = vec3(0.859, 0.000, 0.000);`
- `const vec3 LightColor_Candles_White = vec3(1.000);`
- `const vec3 LightColor_Candles_Yellow = vec3(1.000, 0.878, 0.000);`
- `uint BuildLpvMask(const in uint north, const in uint east, const in uint south, const in uint west, const in uint up, const in uint down) {`
- `mat4 GetSaturationMatrix(const in float saturation) {`
- `const vec3 luminance = vec3(0.3086, 0.6094, 0.0820);`
- `const float saturationF = LPV_SATURATION / 100.0;`
- `const float tintSaturationF = LPV_TINT_SATURATION / 100.0;`

## Funciones detectadas (heurística)

- `void main()` — línea 54
- `else if(blockId == ITEM_LAVA_BUCKET)` — línea 561
- `else if(blockId == BLOCK_WALL_POST_TALL_N_S || blockId == BLOCK_WALL_TALL_N_S)` — línea 1080
- `else if(blockId == BLOCK_WALL_POST_TALL_W_E || blockId == BLOCK_WALL_TALL_W_E)` — línea 1083

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_dimensions_shadowcomp.csh.md

**Fuente:** `docs\lib\shaders_dimensions_shadowcomp.csh.md`

# shaders\dimensions\shadowcomp.csh

**Ruta original:** `shaders\dimensions\shadowcomp.csh`

## Includes

- `/lib/hsv.glsl`
- `/lib/util.glsl`
- `/lib/blocks.glsl`
- `/lib/lpv_common.glsl`
- `/lib/lpv_blocks.glsl`
- `/lib/lpv_buffer.glsl`
- `/lib/voxel_common.glsl`

## Uniforms / Variables detectadas

- `uniform int frameCounter;`
- `uniform vec3 cameraPosition;`
- `uniform vec3 previousCameraPosition;`

## Defines / Preprocesador

- `#define RENDER_SHADOWCOMP`
- `#if   LPV_SIZE == 8`
- `#elif LPV_SIZE == 7`
- `#elif LPV_SIZE == 6`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#ifdef IS_LPV_ENABLED`
- `#endif`

## Constantes detectadas

- `const ivec3 workGroups = ivec3(32, 32, 32);`
- `const ivec3 workGroups = ivec3(16, 16, 16);`
- `const ivec3 workGroups = ivec3(8, 8, 8);`
- `const vec2 LpvBlockSkyFalloff = vec2(0.96, 0.96);`
- `const ivec3 lpvFlatten = ivec3(1, 10, 100);`
- `uint GetVoxelBlock(const in ivec3 voxelPos) {`
- `void PopulateSharedIndex(const in ivec3 imgCoordOffset, const in ivec3 workGroupOffset, const in uint i) {`
- `vec4 mixNeighbours(const in ivec3 fragCoord, const in uint mask) {`
- `const vec4 avgFalloff = (1.0/6.0) * LpvBlockSkyFalloff.xxxy;`

## Funciones detectadas (heurística)

- `int sumOf(ivec3 vec)` — línea 32
- `int getSharedIndex(ivec3 pos)` — línea 34
- `vec4 GetLpvValue(in ivec3 texCoord)` — línea 38
- `vec4 sampleShared(ivec3 pos, int mask_index)` — línea 66
- `void main()` — línea 100

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_blocks.glsl.md

**Fuente:** `docs\lib\shaders_lib_blocks.glsl.md`

# shaders\lib\blocks.glsl

**Ruta original:** `shaders\lib\blocks.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BLOCK_WATER 8`
- `#define BLOCK_BAMBOO 11`
- `#define BLOCK_GRASS_SHORT 12`
- `#define BLOCK_GRASS_TALL_LOWER 13`
- `#define BLOCK_GRASS_TALL_UPPER 14`
- `#define BLOCK_SAPLING 15`
- `#define BLOCK_VINE 16`
- `#define BLOCK_VINE_OTHER 17`
- `#define BLOCK_LPV_IGNORE 50`
- `#define BLOCK_LPV_MIN 51`
- `#define BLOCK_LPV_MED 52`
- `#define BLOCK_LPV_MAX 53`
- `#define BLOCK_GROUND_WAVING 54`
- `#define BLOCK_GROUND_WAVING_VERTICAL 55`
- `#define BLOCK_AIR_WAVING 56`
- `#define BLOCK_SSS_STRONG 80`
- `#define BLOCK_SSS_WEAK 81`
- `#define BLOCK_SSS_WEAK_2 82`
- `#define BLOCK_SSS_WEAK_3 83`
- `#define BLOCK_SSS_WEIRD 84`
- `#define BLOCK_GRASS 85`
- `#define BLOCK_AMETHYST_BUD_LARGE 101`
- `#define BLOCK_AMETHYST_BUD_MEDIUM 102`
- `#define BLOCK_AMETHYST_CLUSTER 103`
- `#define BLOCK_BEACON 104`
- `#define BLOCK_BREWING_STAND 105`
- `#define BLOCK_CANDLES_PLAIN_LIT_1 106`
- `#define BLOCK_CANDLES_PLAIN_LIT_2 107`
- `#define BLOCK_CANDLES_PLAIN_LIT_3 108`
- `#define BLOCK_CANDLES_PLAIN_LIT_4 109`
- `#define BLOCK_CANDLES_BLACK_LIT_1 110`
- `#define BLOCK_CANDLES_BLACK_LIT_2 111`
- `#define BLOCK_CANDLES_BLACK_LIT_3 112`
- `#define BLOCK_CANDLES_BLACK_LIT_4 113`
- `#define BLOCK_CANDLES_BLUE_LIT_1 114`
- `#define BLOCK_CANDLES_BLUE_LIT_2 115`
- `#define BLOCK_CANDLES_BLUE_LIT_3 116`
- `#define BLOCK_CANDLES_BLUE_LIT_4 117`
- `#define BLOCK_CANDLES_BROWN_LIT_1 118`
- `#define BLOCK_CANDLES_BROWN_LIT_2 119`
- `#define BLOCK_CANDLES_BROWN_LIT_3 120`
- `#define BLOCK_CANDLES_BROWN_LIT_4 121`
- `#define BLOCK_CANDLES_CYAN_LIT_1 122`
- `#define BLOCK_CANDLES_CYAN_LIT_2 123`
- `#define BLOCK_CANDLES_CYAN_LIT_3 124`
- `#define BLOCK_CANDLES_CYAN_LIT_4 125`
- `#define BLOCK_CANDLES_GRAY_LIT_1 126`
- `#define BLOCK_CANDLES_GRAY_LIT_2 127`
- `#define BLOCK_CANDLES_GRAY_LIT_3 128`
- `#define BLOCK_CANDLES_GRAY_LIT_4 129`
- `#define BLOCK_CANDLES_GREEN_LIT_1 130`
- `#define BLOCK_CANDLES_GREEN_LIT_2 131`
- `#define BLOCK_CANDLES_GREEN_LIT_3 132`
- `#define BLOCK_CANDLES_GREEN_LIT_4 133`
- `#define BLOCK_CANDLES_LIGHT_BLUE_LIT_1 134`
- `#define BLOCK_CANDLES_LIGHT_BLUE_LIT_2 135`
- `#define BLOCK_CANDLES_LIGHT_BLUE_LIT_3 136`
- `#define BLOCK_CANDLES_LIGHT_BLUE_LIT_4 137`
- `#define BLOCK_CANDLES_LIGHT_GRAY_LIT_1 138`
- `#define BLOCK_CANDLES_LIGHT_GRAY_LIT_2 139`
- `#define BLOCK_CANDLES_LIGHT_GRAY_LIT_3 140`
- `#define BLOCK_CANDLES_LIGHT_GRAY_LIT_4 141`
- `#define BLOCK_CANDLES_LIME_LIT_1 142`
- `#define BLOCK_CANDLES_LIME_LIT_2 143`
- `#define BLOCK_CANDLES_LIME_LIT_3 144`
- `#define BLOCK_CANDLES_LIME_LIT_4 145`
- `#define BLOCK_CANDLES_MAGENTA_LIT_1 146`
- `#define BLOCK_CANDLES_MAGENTA_LIT_2 147`
- `#define BLOCK_CANDLES_MAGENTA_LIT_3 148`
- `#define BLOCK_CANDLES_MAGENTA_LIT_4 149`
- `#define BLOCK_CANDLES_ORANGE_LIT_1 150`
- `#define BLOCK_CANDLES_ORANGE_LIT_2 151`
- `#define BLOCK_CANDLES_ORANGE_LIT_3 152`
- `#define BLOCK_CANDLES_ORANGE_LIT_4 153`
- `#define BLOCK_CANDLES_PINK_LIT_1 154`
- `#define BLOCK_CANDLES_PINK_LIT_2 155`
- `#define BLOCK_CANDLES_PINK_LIT_3 156`
- `#define BLOCK_CANDLES_PINK_LIT_4 157`
- `#define BLOCK_CANDLES_PURPLE_LIT_1 158`
- `#define BLOCK_CANDLES_PURPLE_LIT_2 159`
- `#define BLOCK_CANDLES_PURPLE_LIT_3 160`
- `#define BLOCK_CANDLES_PURPLE_LIT_4 161`
- `#define BLOCK_CANDLES_RED_LIT_1 162`
- `#define BLOCK_CANDLES_RED_LIT_2 163`
- `#define BLOCK_CANDLES_RED_LIT_3 164`
- `#define BLOCK_CANDLES_RED_LIT_4 165`
- `#define BLOCK_CANDLES_WHITE_LIT_1 166`
- `#define BLOCK_CANDLES_WHITE_LIT_2 167`
- `#define BLOCK_CANDLES_WHITE_LIT_3 168`
- `#define BLOCK_CANDLES_WHITE_LIT_4 169`
- `#define BLOCK_CANDLES_YELLOW_LIT_1 170`
- `#define BLOCK_CANDLES_YELLOW_LIT_2 171`
- `#define BLOCK_CANDLES_YELLOW_LIT_3 172`
- `#define BLOCK_CANDLES_YELLOW_LIT_4 173`
- `#define BLOCK_CANDLES_LIT_1 174`
- `#define BLOCK_CANDLES_LIT_2 175`
- `#define BLOCK_CANDLES_LIT_3 176`
- `#define BLOCK_CANDLES_LIT_4 177`
- `#define BLOCK_CAVE_VINE_BERRIES 178`
- `#define BLOCK_COMPARATOR_LIT 179`
- `#define BLOCK_COPPER_BULB_LIT 180`
- `#define BLOCK_COPPER_BULB_EXPOSED_LIT 181`
- `#define BLOCK_COPPER_BULB_OXIDIZED_LIT 182`
- `#define BLOCK_COPPER_BULB_WEATHERED_LIT 183`
- `#define BLOCK_CONDUIT 184`
- `#define BLOCK_CRYING_OBSIDIAN 185`
- `#define BLOCK_DEEPSLATE_REDSTONE_ORE_LIT 186`
- `#define BLOCK_END_GATEWAY 187`
- `#define BLOCK_END_ROD 188`
- `#define BLOCK_FIRE 189`
- `#define BLOCK_FIRE_FLIES 190`
- `#define BLOCK_FROGLIGHT_OCHRE 191`
- `#define BLOCK_FROGLIGHT_PEARLESCENT 192`
- `#define BLOCK_FROGLIGHT_VERDANT 193`
- `#define BLOCK_FURNACE_LIT 194`
- `#define BLOCK_GLOW_LICHEN 195`
- `#define BLOCK_GLOWSTONE 196`
- `#define BLOCK_JACK_O_LANTERN 197`
- `#define BLOCK_LANTERN 198`
- `#define BLOCK_LAVA 199`
- `#define BLOCK_LIGHT_1 200`
- `#define BLOCK_LIGHT_2 201`
- `#define BLOCK_LIGHT_3 202`
- `#define BLOCK_LIGHT_4 203`
- `#define BLOCK_LIGHT_5 204`
- `#define BLOCK_LIGHT_6 205`
- `#define BLOCK_LIGHT_7 206`
- `#define BLOCK_LIGHT_8 207`
- `#define BLOCK_LIGHT_9 208`
- `#define BLOCK_LIGHT_10 209`
- `#define BLOCK_LIGHT_11 210`
- `#define BLOCK_LIGHT_12 211`
- `#define BLOCK_LIGHT_13 212`
- `#define BLOCK_LIGHT_14 213`
- `#define BLOCK_LIGHT_15 214`
- `#define BLOCK_MAGMA 215`
- `#define BLOCK_RAIL_POWERED_ON 216`
- `#define BLOCK_REDSTONE_LAMP_LIT 217`
- `#define BLOCK_REDSTONE_ORE_LIT 218`
- `#define BLOCK_REDSTONE_TORCH_LIT 219`
- `#define BLOCK_REDSTONE_WIRE_1 220`
- `#define BLOCK_REDSTONE_WIRE_2 221`
- `#define BLOCK_REDSTONE_WIRE_3 222`
- `#define BLOCK_REDSTONE_WIRE_4 223`
- `#define BLOCK_REDSTONE_WIRE_5 224`
- `#define BLOCK_REDSTONE_WIRE_6 225`
- `#define BLOCK_REDSTONE_WIRE_7 226`
- `#define BLOCK_REDSTONE_WIRE_8 227`
- `#define BLOCK_REDSTONE_WIRE_9 228`
- `#define BLOCK_REDSTONE_WIRE_10 229`
- `#define BLOCK_REDSTONE_WIRE_11 230`
- `#define BLOCK_REDSTONE_WIRE_12 231`
- `#define BLOCK_REDSTONE_WIRE_13 232`
- `#define BLOCK_REDSTONE_WIRE_14 233`
- `#define BLOCK_REDSTONE_WIRE_15 234`
- `#define BLOCK_REPEATER_LIT 235`
- `#define BLOCK_RESPAWN_ANCHOR_4 236`
- `#define BLOCK_SCULK_SENSOR_ACTIVE 237`
- `#define BLOCK_SEA_PICKLE_WET_1 238`
- `#define BLOCK_SEA_PICKLE_WET_2 239`
- `#define BLOCK_SEA_PICKLE_WET_3 240`
- `#define BLOCK_SEA_PICKLE_WET_4 241`
- `#define BLOCK_SEA_LANTERN 242`
- `#define BLOCK_SHROOMLIGHT 243`
- `#define BLOCK_SOUL_FIRE 244`
- `#define BLOCK_SOUL_LANTERN 245`
- `#define BLOCK_SOUL_TORCH 246`
- `#define BLOCK_TORCH 247`
- `#define BLOCK_LAMP_LIT_BLACK 250`
- `#define BLOCK_LAMP_LIT_BLUE 251`
- `#define BLOCK_LAMP_LIT_BROWN 252`
- `#define BLOCK_LAMP_LIT_CYAN 253`
- `#define BLOCK_LAMP_LIT_GRAY 254`
- `#define BLOCK_LAMP_LIT_GREEN 255`
- `#define BLOCK_LAMP_LIT_LIGHT_BLUE 256`
- `#define BLOCK_LAMP_LIT_LIGHT_GRAY 257`
- `#define BLOCK_LAMP_LIT_LIME 258`
- `#define BLOCK_LAMP_LIT_MAGENTA 259`
- `#define BLOCK_LAMP_LIT_ORANGE 260`
- `#define BLOCK_LAMP_LIT_PINK 261`
- `#define BLOCK_LAMP_LIT_PURPLE 262`
- `#define BLOCK_LAMP_LIT_RED 263`
- `#define BLOCK_LAMP_LIT_WHITE 264`
- `#define BLOCK_LAMP_LIT_YELLOW 265`
- `#define BLOCK_GLASS 301`
- `#define BLOCK_GLASS_BLACK 302`
- `#define BLOCK_GLASS_BLUE 303`
- `#define BLOCK_GLASS_BROWN 304`
- `#define BLOCK_GLASS_CYAN 305`
- `#define BLOCK_GLASS_GRAY 306`
- `#define BLOCK_GLASS_GREEN 307`
- `#define BLOCK_GLASS_LIGHT_BLUE 308`
- `#define BLOCK_GLASS_LIGHT_GRAY 309`
- `#define BLOCK_GLASS_LIME 310`
- `#define BLOCK_GLASS_MAGENTA 311`
- `#define BLOCK_GLASS_ORANGE 312`
- `#define BLOCK_GLASS_PINK 313`
- `#define BLOCK_GLASS_PURPLE 314`
- `#define BLOCK_GLASS_RED 315`
- `#define BLOCK_GLASS_WHITE 316`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_bokeh.glsl.md

**Fuente:** `docs\lib\shaders_lib_bokeh.glsl.md`

# shaders\lib\bokeh.glsl

**Ruta original:** `shaders\lib\bokeh.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#if DOF_QUALITY == 0 // Original choc hex bokeh`
- `#define BOKEH_SAMPLES 60`
- `#define HEXAGONAL_BOKEH`
- `#elif DOF_QUALITY == 1 // Low quality bokeh`
- `#define BOKEH_SAMPLES 32`
- `#elif DOF_QUALITY == 2 // Medium quality bokeh`
- `#define BOKEH_SAMPLES 64`
- `#elif DOF_QUALITY == 3 // High quality bokeh`
- `#define BOKEH_SAMPLES 96`
- `#elif DOF_QUALITY == 4 // Ultra quality bokeh`
- `#define BOKEH_SAMPLES 128`
- `#endif`
- `#if DOF_QUALITY == 5 || defined(DOF_JITTER_SHADOW) // DOF_QUALITY == 5 && defined(SCREENSHOT_MODE)`
- `#endif`

## Constantes detectadas

- `const vec2 bokeh_offsets[60] = vec2[60] (`
- `const vec2 bokeh_offsets[32] = vec2[32](`
- `const vec2 bokeh_offsets[64] = vec2[64](`
- `const vec2 bokeh_offsets[96] = vec2[96](`
- `const vec2 bokeh_offsets[128] = vec2[128](`
- `const vec2 jitter_offsets[64] = vec2[](`

## Funciones detectadas (heurística)

- `mat2 rotate(float angle)` — línea 472

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_climate_settings.glsl.md

**Fuente:** `docs\lib\shaders_lib_climate_settings.glsl.md`

# shaders\lib\climate_settings.glsl

**Ruta original:** `shaders\lib\climate_settings.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform int worldDay;`
- `uniform float noPuddleAreas;`
- `uniform float nightVision;`
- `uniform float isJungles;`
- `uniform float isSwamps;`
- `uniform float isDarkForests;`
- `uniform float sandStorm;`
- `uniform float snowStorm;`

## Defines / Preprocesador

- `#ifdef Seasons`
- `#ifdef SEASONS_VSH`
- `#ifdef DH_SEASONS`
- `#else`
- `#endif`
- `#endif`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#ifdef TIMEOFDAYFOG`
- `#ifdef Daily_Weather`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 getSeasonColor( int worldDay )` — línea 91
- `float BiomeVLFogColors(inout vec3 DirectLightCol, inout vec3 IndirectLightCol)` — línea 175

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_color_dither.glsl.md

**Fuente:** `docs\lib\shaders_lib_color_dither.glsl.md`

# shaders\lib\color_dither.glsl

**Ruta original:** `shaders\lib\color_dither.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const vec3 mantissaBits = vec3(6.,6.,5.);`
- `const vec3 mantissaBits = vec3(10.);`

## Funciones detectadas (heurística)

- `vec3 fp10Dither(vec3 color,vec2 tc01)` — línea 19
- `vec3 fp16Dither(vec3 color,vec2 tc01)` — línea 26
- `vec3 int8Dither(vec3 color,vec2 tc01)` — línea 33
- `vec3 int10Dither(vec3 color,vec2 tc01)` — línea 38
- `vec3 int16Dither(vec3 color,vec2 tc01)` — línea 43

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_color_transforms.glsl.md

**Fuente:** `docs\lib\shaders_lib_color_transforms.glsl.md`

# shaders\lib\color_transforms.glsl

**Ruta original:** `shaders\lib\color_transforms.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const mat3 ACESInputMat =`
- `const mat3 ACESOutputMat =`
- `const float A = 0.6;`
- `const float B = 0.5;`
- `const float C = 0.1;`
- `const float D = 0.5;`
- `const float E = 0.01;`
- `const float F = 0.3;`
- `const float W = 11.0;`
- `const float white = ((W * (A * W + C * B) + D * E) / (W * (A * W + B) + D * F)) - E / F;`
- `const float a = 1.6;`
- `const float d = 0.977;`
- `const float hdrMax = 8.0;`
- `const float midIn = 0.23;`
- `const float midOut = 0.267;`
- `const float b =`
- `const float c =`
- `const float P = 1.0;  // max display brightness 1.0`
- `const float a = 1.0;  // contrast 1.0`
- `const float m = 0.12; // linear section start 0.22`
- `const float l = 0.22;  // linear section length 0.4`
- `const float c = 1.0; // black 1.33`
- `const float b = 0.0;  // pedestal 0.0`
- `const vec3 lw = vec3(0.2126, 0.7152, 0.0722);`
- `const mat3 AgXInsetMatrix = mat3(`
- `const mat3 AgXOutsetMatrix = mat3(`
- `const float AgxMinEv = - 12.47393;  // log2( pow( 2, LOG2_MIN ) * MIDDLE_GRAY )`
- `const float AgxMaxEv = 4.026069;    // log2( pow( 2, LOG2_MAX ) * MIDDLE_GRAY )`
- `const mat3 AgXInsetMatrix = mat3(`
- `const mat3 AgXOutsetMatrix = mat3(`
- `const float AgxMinEv = - 12.47393;  // log2( pow( 2, LOG2_MIN ) * MIDDLE_GRAY )`
- `const float AgxMaxEv = 4.026069;    // log2( pow( 2, LOG2_MAX ) * MIDDLE_GRAY )`

## Funciones detectadas (heurística)

- `vec3 toLinear(vec3 sRGB)` — línea 2
- `float luma(vec3 color)` — línea 6
- `vec3 HableTonemap(vec3 linearColor)` — línea 41
- `vec3 reinhard(vec3 x)` — línea 66
- `vec3 Tonemap_Lottes(vec3 x)` — línea 82
- `vec3 curve(vec3 x)` — línea 100
- `vec3 Tonemap_Uchimura_Modified(vec3 x, float P, float a, float m, float l, float c, float b)` — línea 103
- `vec3 Tonemap_Uchimura(vec3 x, float P, float a, float m, float l, float c, float b)` — línea 126
- `vec3 Tonemap_Uchimura(vec3 x)` — línea 149
- `vec3 Tonemap_Xonk(vec3 Color)` — línea 160
- `vec3 Tonemap_Full_Reinhard(vec3 C)` — línea 168
- `vec3 Full_Reinhard_Edit(vec3 C)` — línea 176
- `vec3 agxDefaultContrastApprox( vec3 x )` — línea 222
- `vec3 agxLook(vec3 val)` — línea 235
- `vec3 ToneMap_AgX( vec3 color )` — línea 249
- `vec3 ToneMap_AgX_minimal( vec3 color )` — línea 291

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_diffuse_lighting.glsl.md

**Fuente:** `docs\lib\shaders_lib_diffuse_lighting.glsl.md`

# shaders\lib\diffuse_lighting.glsl

**Ruta original:** `shaders\lib\diffuse_lighting.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#if defined IS_LPV_ENABLED && defined MC_GL_EXT_shader_image_load_store`
- `#ifdef Hand_Held_lights`
- `#endif`
- `#endif`

## Constantes detectadas

- `vec3 GetHandLight(const in int itemId, const in vec3 playerPos, const in vec3 normal) {`
- `const vec3 normal = vec3(0.0); // TODO`

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_DistantHorizons_projections.glsl.md

**Fuente:** `docs\lib\shaders_lib_DistantHorizons_projections.glsl.md`

# shaders\lib\DistantHorizons_projections.glsl

**Ruta original:** `shaders\lib\DistantHorizons_projections.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform mat4 dhPreviousProjection;`
- `uniform mat4 dhProjectionInverse;`
- `uniform mat4 dhProjection;`

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DH_SHADOWPROJECTIONTWEAK`
- `#ifdef DISTANT_HORIZONS`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 toScreenSpace_DH( vec2 texcoord, float depth, float DHdepth )` — línea 7
- `vec3 toClipSpace3_DH( vec3 viewSpacePosition, bool depthCheck )` — línea 34
- `mat4 DH_shadowProjectionTweak( in mat4 projection)` — línea 45

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_end_fog.glsl.md

**Fuente:** `docs\lib\shaders_lib_end_fog.glsl.md`

# shaders\lib\end_fog.glsl

**Ruta original:** `shaders\lib\end_fog.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef THE_ORB`
- `#else`
- `#endif`
- `#ifdef THE_ORB`
- `#else`
- `#endif`
- `#ifndef TOGGLE_VL_FOG`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifdef END_LIGHTNING`
- `#else`
- `#endif`
- `#ifdef THE_ORB`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`

## Constantes detectadas

- `const uint k = 1103515245u;`

## Funciones detectadas (heurística)

- `vec3 LightSourcePosition(vec3 worldPos, vec3 cameraPos, float vortexBounds)` — línea 69
- `float densityAtPosFog(in vec3 pos)` — línea 95
- `void SwirlAroundOrigin(inout vec3 alteredOrigin, vec3 origin)` — línea 110
- `void VolumeBounds(inout float Volume, vec3 Origin)` — línea 122
- `float fogShape(in vec3 pos)` — línea 144
- `float endFogPhase(vec3 LightPos)` — línea 169
- `vec3 LightSourceColors(float vortexBounds, float lightningflash)` — línea 179
- `vec3 LightSourceLighting(vec3 startPos, vec3 lightPos, float noise, float density, vec3 lightColor, float vortexBound)` — línea 194
- `float phaseEND(float x, float g)` — línea 211
- `float GetCloudShadow(vec3 WorldPos, vec3 LightPos)` — línea 345

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_entities.glsl.md

**Fuente:** `docs\lib\shaders_lib_entities.glsl.md`

# shaders\lib\entities.glsl

**Ruta original:** `shaders\lib\entities.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITY_PLAYER 1601`
- `#define ENTITY_LIGHTNING 1602`
- `#define ENTITY_BLAZE 1603`
- `#define ENTITY_DRAGON_WITHER 1604`
- `#define ENTITY_END_CRYSTAL 1605`
- `#define ENTITY_GLOW_SQUID 1606`
- `#define ENTITY_ITEM_FRAME 1607`
- `#define ENTITY_MAGMA_CUBE 1608`
- `#define ENTITY_TNT 1609`
- `#define ENTITY_FIREBALL_SMALL 1610`
- `#define ENTITY_SPECTRAL_ARROW 1611`
- `#define ENTITY_SSS_MEDIUM 1801`
- `#define ENTITY_SSS_WEAK 1802`
- `#define ENTITY_SLIME 1803`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_gameplay_effects.glsl.md

**Fuente:** `docs\lib\shaders_lib_gameplay_effects.glsl.md`

# shaders\lib\gameplay_effects.glsl

**Ruta original:** `shaders\lib\gameplay_effects.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float currentPlayerHealth;`
- `uniform float maxPlayerHealth;`
- `uniform float oneHeart;`
- `uniform float threeHeart;`
- `uniform float CriticalDamageTaken;`
- `uniform float MinorDamageTaken;`
- `uniform bool isDead;`
- `uniform float exitWater;`
- `uniform int isEyeInWater;`

## Defines / Preprocesador

- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#if defined LOW_HEALTH_EFFECT || defined DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#if defined WATER_ON_CAMERA_EFFECT`
- `#endif`
- `#ifdef WATER_ON_CAMERA_EFFECT`
- `#endif`
- `#if defined LOW_HEALTH_EFFECT || defined DAMAGE_TAKEN_EFFECT`
- `#ifdef LOW_HEALTH_EFFECT`
- `#endif`
- `#ifdef DAMAGE_TAKEN_EFFECT`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void applyGameplayEffects(inout vec3 color, in vec2 texcoord, float noise)` — línea 36

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_hsv.glsl.md

**Fuente:** `docs\lib\shaders_lib_hsv.glsl.md`

# shaders\lib\hsv.glsl

**Ruta original:** `shaders\lib\hsv.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `vec3 RgbToHsv(const in vec3 c) {`
- `const vec4 K = vec4(0.0, -1.0, 2.0, -3.0) / 3.0;`
- `const float e = 1.0e-10;`
- `vec3 HsvToRgb(const in vec3 c) {`
- `const vec4 K = vec4(3.0, 2.0, 1.0, 9.0) / 3.0;`

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_indirect_lighting_effects.glsl.md

**Fuente:** `docs\lib\shaders_lib_indirect_lighting_effects.glsl.md`

# shaders\lib\indirect_lighting_effects.glsl

**Ruta original:** `shaders\lib\indirect_lighting_effects.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Ambient_SSS`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef Ambient_SSS`
- `#endif`
- `#ifdef UseQuarterResDepth`
- `#else`
- `#endif`
- `#ifdef UseQuarterResDepth`
- `#else`
- `#endif`
- `#ifdef UseQuarterResDepth`
- `#else`
- `#endif`
- `#ifdef HQ_SSGI`
- `#else`
- `#endif`
- `#ifdef SKY_CONTRIBUTION_IN_SSRT`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#else`
- `#ifdef OVERWORLD_SHADER`
- `#endif`
- `#endif`
- `#if indirect_effect == 4`
- `#endif`
- `#ifdef SKY_CONTRIBUTION_IN_SSRT`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec2 R2_samples(int n)` — línea 1
- `vec3 cosineHemisphereSample(vec2 Xi)` — línea 6
- `vec3 TangentToWorld(vec3 N, vec3 H, float roughness)` — línea 16
- `vec4 BilateralUpscale_SSAO(sampler2D tex, sampler2D depth, vec2 coord, float referenceDepth)` — línea 43
- `vec3 rayTrace_GI(vec3 dir,vec3 position,float dither, float quality)` — línea 204
- `float convertHandDepth_3(in float depth, bool hand)` — línea 247
- `vec3 RT(vec3 dir, vec3 position, float noise, float stepsizes, bool hand)` — línea 254
- `vec3 RT_alternate(vec3 dir, vec3 position, float noise, float stepsizes, bool hand)` — línea 304

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_items.glsl.md

**Fuente:** `docs\lib\shaders_lib_items.glsl.md`

# shaders\lib\items.glsl

**Ruta original:** `shaders\lib\items.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ITEM_LIGHT_SOURCES 1000`
- `#define ITEM_AMETHYST_BUD_LARGE 1001`
- `#define ITEM_AMETHYST_BUD_MEDIUM 1002`
- `#define ITEM_AMETHYST_CLUSTER 1003`
- `#define ITEM_BEACON 1004`
- `#define ITEM_BLAZE_ROD 1005`
- `#define ITEM_END_ROD 1006`
- `#define ITEM_FROGLIGHT_OCHRE 1007`
- `#define ITEM_FROGLIGHT_PEARLESCENT 1008`
- `#define ITEM_FROGLIGHT_VERDANT 1009`
- `#define ITEM_GLOW_BERRIES 1010`
- `#define ITEM_GLOW_LICHEN 1011`
- `#define ITEM_GLOWSTONE 1012`
- `#define ITEM_GLOWSTONE_DUST 1013`
- `#define ITEM_JACK_O_LANTERN 1014`
- `#define ITEM_LANTERN 1015`
- `#define ITEM_LAVA_BUCKET 1016`
- `#define ITEM_MAGMA 1017`
- `#define ITEM_REDSTONE_TORCH 1018`
- `#define ITEM_SCULK_CATALYST 1019`
- `#define ITEM_SEA_LANTERN 1020`
- `#define ITEM_SHROOMLIGHT 1021`
- `#define ITEM_SOUL_LANTERN 1022`
- `#define ITEM_SOUL_TORCH 1023`
- `#define ITEM_TORCH 1024`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_lightning_stuff.glsl.md

**Fuente:** `docs\lib\shaders_lib_lightning_stuff.glsl.md`

# shaders\lib\lightning_stuff.glsl

**Ruta original:** `shaders\lib\lightning_stuff.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform vec3 lightningEffect;`
- `uniform vec4 lightningBoltPosition;`

## Defines / Preprocesador

- `#ifdef IS_IRIS`
- `#else`
- `#endif`
- `#ifdef TEST`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 Iris_Lightningflash(vec3 feetPlayerPos, vec3 lightningBoltPos, vec3 WorldSpace_normal, inout float Phase)` — línea 8
- `vec3 Iris_Lightningflash_VLcloud(vec3 feetPlayerPos, vec3 lightningBoltPos)` — línea 31
- `vec3 Iris_Lightningflash_VLfog(vec3 feetPlayerPos, vec3 lightningBoltPos)` — línea 44

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_lpv_blocks.glsl.md

**Fuente:** `docs\lib\shaders_lib_lpv_blocks.glsl.md`

# shaders\lib\lpv_blocks.glsl

**Ruta original:** `shaders\lib\lpv_blocks.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef RENDER_SETUP`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_lpv_buffer.glsl.md

**Fuente:** `docs\lib\shaders_lib_lpv_buffer.glsl.md`

# shaders\lib\lpv_buffer.glsl

**Ruta original:** `shaders\lib\lpv_buffer.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef RENDER_SHADOWCOMP`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_lpv_common.glsl.md

**Fuente:** `docs\lib\shaders_lib_lpv_common.glsl.md`

# shaders\lib\lpv_common.glsl

**Ruta original:** `shaders\lib\lpv_common.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const vec2 LpvBlockSkyRange = vec2(15.0, 24.0);`
- `const uint LpvSize = uint(exp2(LPV_SIZE));`
- `const uvec3 LpvSize3 = uvec3(LpvSize);`
- `vec3 GetLpvPosition(const in vec3 playerPos) {`

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_lpv_render.glsl.md

**Fuente:** `docs\lib\shaders_lib_lpv_render.glsl.md`

# shaders\lib\lpv_render.glsl

**Ruta original:** `shaders\lib\lpv_render.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const float LpvBlockBrightness = 1.0;`
- `vec4 SampleLpvLinear(const in vec3 lpvPos) {`
- `vec3 GetLpvBlockLight(const in vec4 lpvSample) {`
- `float GetLpvSkyLight(const in vec4 lpvSample) {`

## Funciones detectadas (heurística)

- `float lpvCurve(float values)` — línea 5

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_nether_fog.glsl.md

**Fuente:** `docs\lib\shaders_lib_nether_fog.glsl.md`

# shaders\lib\nether_fog.glsl

**Ruta original:** `shaders\lib\nether_fog.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifndef TOGGLE_VL_FOG`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifndef ReflectedFog`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float densityAtPosFog(in vec3 pos)` — línea 1
- `float cloudVol(in vec3 pos)` — línea 15

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_overworld_fog.glsl.md

**Fuente:** `docs\lib\shaders_lib_overworld_fog.glsl.md`

# shaders\lib\overworld_fog.glsl

**Ruta original:** `shaders\lib\overworld_fog.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float noPuddleAreas;`
- `uniform ivec2 eyeBrightness;`

## Defines / Preprocesador

- `#ifndef TOGGLE_VL_FOG`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef ambientLight_only`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#endif`
- `#ifdef DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#ifdef RAYMARCH_CLOUDS_WITH_FOG`
- `#ifdef ambientLight_only`
- `#endif`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#else`
- `#endif`
- `#ifdef RAYMARCH_CLOUDS_WITH_FOG`
- `#endif`
- `#ifdef VL_CLOUDS_SHADOWS`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#else`
- `#endif`
- `#ifdef PER_BIOME_ENVIRONMENT`
- `#else`
- `#endif`
- `#if defined CloudLayer0 && defined VOLUMETRIC_CLOUDS`
- `#else`
- `#endif`
- `#if defined LPV_VL_FOG_ILLUMINATION && defined EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifdef RAYMARCH_CLOUDS_WITH_FOG`
- `#if defined CloudLayer1 && defined CloudLayer0`
- `#else`
- `#endif`
- `#if defined CloudLayer1 && defined CloudLayer0`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

- `const vec2 mul_add = vec2(0.1, 0.28) / acos(-1.0);`

## Funciones detectadas (heurística)

- `float densityAtPosFog(in vec3 pos)` — línea 3
- `float cloudVol(in vec3 pos, float maxDistance )` — línea 16
- `float phaseRayleigh(float cosTheta)` — línea 50
- `float fogPhase(float lightPoint)` — línea 54

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_PhotonGTAO.glsl.md

**Fuente:** `docs\lib\shaders_lib_PhotonGTAO.glsl.md`

# shaders\lib\PhotonGTAO.glsl

**Ruta original:** `shaders\lib\PhotonGTAO.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform vec2 view_res;`
- `uniform vec2 view_pixel_size;`

## Defines / Preprocesador

- `#if defined TAA && defined TAA_UPSCALING`
- `#else`
- `#endif`
- `#define rcp(x) (1.0 / (x))`
- `#define clamp01(x) clamp(x, 0.0, 1.0) // free on operation output`
- `#define max0(x) max(x, 0.0)`
- `#define min1(x) min(x, 1.0)`
- `#define GTAO_SLICES        2`
- `#define GTAO_HORIZON_STEPS 3`
- `#define GTAO_RADIUS        2.0`
- `#define GTAO_FALLOFF_START 0.75`

## Constantes detectadas

- `const float eps          = 1e-6;`
- `const float e            = exp(1.0);`
- `const float tau          = 2.0 * pi;`
- `const float half_pi      = 0.5 * pi;`
- `const float rcp_pi       = 1.0 / pi;`
- `const float degree       = tau / 360.0; // Size of one degree in radians, useful because radians() is not a constant expression on all platforms`
- `const float golden_ratio = 0.5 + 0.5 * sqrt(5.0);`
- `const float golden_angle = tau / golden_ratio / golden_ratio;`
- `const float hand_depth   = 0.56;`
- `const float taau_render_scale = RENDER_SCALE.x;`
- `const float taau_render_scale = 1.0;`
- `const float C0 = 1.57018;`
- `const float C1 = -0.201877;`
- `const float C2 = 0.0464619;`
- `const float step_size = GTAO_RADIUS * rcp(float(GTAO_HORIZON_STEPS));`

## Funciones detectadas (heurística)

- `float sqr(float x)` — línea 27
- `vec2 sqr(vec2  v)` — línea 28
- `vec3 sqr(vec3  v)` — línea 29
- `vec4 sqr(vec4  v)` — línea 30
- `float cube(float x)` — línea 32
- `float max_of(vec2 v)` — línea 34
- `float max_of(vec3 v)` — línea 35
- `float max_of(vec4 v)` — línea 36
- `float min_of(vec2 v)` — línea 37
- `float min_of(vec3 v)` — línea 38
- `float min_of(vec4 v)` — línea 39
- `float length_squared(vec2 v)` — línea 41
- `float length_squared(vec3 v)` — línea 42
- `vec2 normalize_safe(vec2 v)` — línea 44
- `vec3 normalize_safe(vec3 v)` — línea 45
- `float rcp_length(vec2 v)` — línea 47
- `float rcp_length(vec3 v)` — línea 48
- `float fast_acos(float x)` — línea 50
- `vec2 fast_acos(vec2 v)` — línea 60
- `float linear_step(float edge0, float edge1, float x)` — línea 65
- `vec2 linear_step(vec2 edge0, vec2 edge1, vec2 x)` — línea 69
- `vec4 project(mat4 m, vec3 pos)` — línea 73
- `vec3 project_and_divide(mat4 m, vec3 pos)` — línea 76
- `vec3 screen_to_view_space(vec3 screen_pos, bool handle_jitter)` — línea 81
- `vec3 view_to_screen_space(vec3 view_pos, bool handle_jitter)` — línea 87
- `float integrate_arc(vec2 h, float n, float cos_n)` — línea 104
- `float ambient_occlusion(vec3 screen_pos, vec3 view_pos, vec3 view_normal, vec2 dither)` — línea 145

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_projections.glsl.md

**Fuente:** `docs\lib\shaders_lib_projections.glsl.md`

# shaders\lib\projections.glsl

**Ruta original:** `shaders\lib\projections.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform mat4 gbufferPreviousProjection;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 shadowProjection;`
- `uniform vec3 cameraPosition;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 toClipSpace3(vec3 viewSpacePosition)` — línea 14
- `vec3 toScreenSpace(vec3 p)` — línea 18
- `vec3 toScreenSpaceVector(vec3 p)` — línea 25
- `vec3 toWorldSpace(vec3 p3)` — línea 32
- `vec3 toWorldSpaceCamera(vec3 p3)` — línea 37
- `vec3 toShadowSpace(vec3 p3)` — línea 42
- `vec3 toShadowSpaceProjected(vec3 p3)` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_res_params.glsl.md

**Fuente:** `docs\lib\shaders_lib_res_params.glsl.md`

# shaders\lib\res_params.glsl

**Ruta original:** `shaders\lib\res_params.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifndef TAA`
- `#endif`
- `#ifdef TAA_UPSCALING`
- `#define SCALE_FACTOR 0.75  // render resolution multiplier. below 0.5 not recommended [0.10 0.15 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.55 0.60 0.65 0.70 0.75 0.80 0.85 0.90 0.95 1.0]`
- `#define RENDER_SCALE vec2(SCALE_FACTOR, SCALE_FACTOR)`
- `#define UPSCALING_SHARPNENING 2.0 - SCALE_FACTOR - SCALE_FACTOR`
- `#else`
- `#define RENDER_SCALE vec2(1.0, 1.0)`
- `#define UPSCALING_SHARPNENING 0.0`
- `#endif`
- `#define BLOOM_QUALITY 0.5 // Reduces the resolution at which bloom is computed. (0.5 = half of default resolution) [0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8  0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9  0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.  ]`
- `#define VL_RENDER_RESOLUTION 0.5 // Reduces the resolution at which volumetric fog is computed. (0.5 = half of default resolution) [0.25 0.5 1.0]`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_ROBOBO_sky.glsl.md

**Fuente:** `docs\lib\shaders_lib_ROBOBO_sky.glsl.md`

# shaders\lib\ROBOBO_sky.glsl

**Ruta original:** `shaders\lib\ROBOBO_sky.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define airNumberDensity 2.5035422e25`
- `#define ozoneConcentrationPeak 8e-6`
- `#define ozoneCrossSection vec3(4.51103766177301e-21, 3.2854797958699e-21, 1.96774621921165e-22)`
- `#define sky_planetRadius 6731e3`
- `#define sky_atmosphereHeight 110e3`
- `#define sky_scaleHeights vec2(8.0e3, 1.2e3)`
- `#define sky_coefficientRayleigh vec3(sky_coefficientRayleighR*1e-6, sky_coefficientRayleighG*1e-5, sky_coefficientRayleighB*1e-5)`
- `#define sky_coefficientMie vec3(sky_coefficientMieR*1e-6, sky_coefficientMieG*1e-6, sky_coefficientMieB*1e-6) // Should be >= 2e-6`
- `#define sky_coefficientsScattering mat2x3(sky_coefficientRayleigh, sky_coefficientMie)`
- `#ifdef SKY_GROUND`
- `#else`
- `#endif`
- `#ifdef ORIGINAL_CHOCAPIC_SKY`
- `#else`
- `#endif`
- `#ifdef ORIGINAL_CHOCAPIC_SKY`
- `#else`
- `#endif`

## Constantes detectadas

- `const float sunAngularSize = 0.533333;`
- `const float moonAngularSize = 0.516667;`
- `const float ozoneNumberDensity = airNumberDensity * ozoneConcentrationPeak;`
- `const vec3 sky_coefficientOzone = (ozoneCrossSection * (ozoneNumberDensity * 0.2e-6)); // ozone cross section * (ozone number density * (cm ^ 3))`
- `const vec2 sky_inverseScaleHeights = 1.0 / sky_scaleHeights;`
- `const vec2 sky_scaledPlanetRadius = sky_planetRadius * sky_inverseScaleHeights;`
- `const float sky_atmosphereRadius = sky_planetRadius + sky_atmosphereHeight;`
- `const float sky_atmosphereRadiusSquared = sky_atmosphereRadius * sky_atmosphereRadius;`
- `const mat3   sky_coefficientsAttenuation = mat3(sky_coefficientRayleigh , sky_coefficientMie, sky_coefficientOzone ); // commonly called the extinction coefficient`
- `const vec2 mul_add = vec2(0.1, 0.28) * rPI;`
- `float sky_miePhase(float cosTheta, const float g) {`
- `vec2 sky_phase(float cosTheta, const float g) {`
- `vec3 sky_airmass(vec3 position, vec3 direction, float rayLength, const float steps) {`
- `vec3 sky_airmass(vec3 position, vec3 direction, const float steps) {`
- `vec3 sky_opticalDepth(vec3 position, vec3 direction, float rayLength, const float steps) {`
- `vec3 sky_opticalDepth(vec3 position, vec3 direction, const float steps) {`
- `vec3 sky_transmittance(vec3 position, vec3 direction, const float steps) {`
- `vec3 calculateAtmosphere(vec3 background, vec3 viewVector, vec3 upVector, vec3 sunVector, vec3 moonVector, out vec2 pid, out vec3 transmittance, const int iSteps, float noise) {`
- `const int jSteps = 4;`

## Funciones detectadas (heurística)

- `float sky_rayleighPhase(float cosTheta)` — línea 38
- `vec3 sky_density(float centerDistance)` — línea 52

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_settings.glsl.md

**Fuente:** `docs\lib\shaders_lib_settings.glsl.md`

# shaders\lib\settings.glsl

**Ruta original:** `shaders\lib\settings.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform int moonPhase;`

## Defines / Preprocesador

- `#define SHADER_VERSION_LABEL`
- `#define saturate(x) clamp(x,0.0,1.0)`
- `#define WATER_WAVE_STRENGTH 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define WATER_WAVE_SPEED 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Dirt_Amount 0.14  // [0.0 0.04 0.08 0.12 0.16 0.2 0.24 0.28 0.32 0.36 0.4 0.44 0.48 0.52 0.56 0.6 0.64 0.68 0.72 0.76 0.8 0.84 0.88 0.92 0.96 1.0 1.04 1.08 1.12 1.16 1.2 1.24 1.28 1.32 1.36 1.4 1.44 1.48 1.52 1.56 1.6 1.64 1.68 1.72 1.76 1.8 1.84 1.88 1.92 1.96 2.0 ]`
- `#define Dirt_Scatter_R 0.7  // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 ]`
- `#define Dirt_Scatter_G 0.7  // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 ]`
- `#define Dirt_Scatter_B 0.7  // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 ]`
- `#define Dirt_Absorb_R 0.65  // [0.0 0.02 0.04 0.06 0.08 0.1 0.12 0.14 0.16 0.18 0.2 0.22 0.24 0.26 0.28 0.3 0.32 0.34 0.36 0.38 0.4 0.42 0.44 0.46 0.48 0.5 0.52 0.54 0.56 0.58 0.6 0.62 0.64 0.66 0.68 0.7 0.72 0.74 0.76 0.78 0.8 0.82 0.84 0.86 0.88 0.9 0.92 0.94 0.96 0.98 1.0 1.02 1.04 1.06 1.08 1.1 1.12 1.14 1.16 1.18 1.2 1.22 1.24 1.26 1.28 1.3 1.32 1.34 1.36 1.38 1.4 1.42 1.44 1.46 1.48 1.5 1.52 1.54 1.56 1.58 1.6 1.62 1.64 1.66 1.68 1.7 1.72 1.74 1.76 1.78 1.8 1.82 1.84 1.86 1.88 1.9 1.92 1.94 1.96 1.98 2.0 ]`
- `#define Dirt_Absorb_G 0.85  // [0.0 0.02 0.04 0.06 0.08 0.1 0.12 0.14 0.16 0.18 0.2 0.22 0.24 0.26 0.28 0.3 0.32 0.34 0.36 0.38 0.4 0.42 0.44 0.46 0.48 0.5 0.52 0.54 0.56 0.58 0.6 0.62 0.64 0.66 0.68 0.7 0.72 0.74 0.76 0.78 0.8 0.82 0.84 0.86 0.88 0.9 0.92 0.94 0.96 0.98 1.0 1.02 1.04 1.06 1.08 1.1 1.12 1.14 1.16 1.18 1.2 1.22 1.24 1.26 1.28 1.3 1.32 1.34 1.36 1.38 1.4 1.42 1.44 1.46 1.48 1.5 1.52 1.54 1.56 1.58 1.6 1.62 1.64 1.66 1.68 1.7 1.72 1.74 1.76 1.78 1.8 1.82 1.84 1.86 1.88 1.9 1.92 1.94 1.96 1.98 2.0 ]`
- `#define Dirt_Absorb_B 1.05  // [0.0 0.02 0.04 0.06 0.08 0.1 0.12 0.14 0.16 0.18 0.2 0.22 0.24 0.26 0.28 0.3 0.32 0.34 0.36 0.38 0.4 0.42 0.44 0.46 0.48 0.5 0.52 0.54 0.56 0.58 0.6 0.62 0.64 0.66 0.68 0.7 0.72 0.74 0.76 0.78 0.8 0.82 0.84 0.86 0.88 0.9 0.92 0.94 0.96 0.98 1.0 1.02 1.04 1.06 1.08 1.1 1.12 1.14 1.16 1.18 1.2 1.22 1.24 1.26 1.28 1.3 1.32 1.34 1.36 1.38 1.4 1.42 1.44 1.46 1.48 1.5 1.52 1.54 1.56 1.58 1.6 1.62 1.64 1.66 1.68 1.7 1.72 1.74 1.76 1.78 1.8 1.82 1.84 1.86 1.88 1.9 1.92 1.94 1.96 1.98 2.0 ]`
- `#define Water_Absorb_R 0.2629  // [0.0 0.0025 0.005 0.0075 0.01 0.0125 0.015 0.0175 0.02 0.0225 0.025 0.0275 0.03 0.0325 0.035 0.0375 0.04 0.0425 0.045 0.0475 0.05 0.0525 0.055 0.0575 0.06 0.0625 0.065 0.0675 0.07 0.0725 0.075 0.0775 0.08 0.0825 0.085 0.0875 0.09 0.0925 0.095 0.0975 0.1 0.1025 0.105 0.1075 0.11 0.1125 0.115 0.1175 0.12 0.1225 0.125 0.1275 0.13 0.1325 0.135 0.1375 0.14 0.1425 0.145 0.1475 0.15 0.1525 0.155 0.1575 0.16 0.1625 0.165 0.1675 0.17 0.1725 0.175 0.1775 0.18 0.1825 0.185 0.1875 0.19 0.1925 0.195 0.1975 0.2 0.2025 0.205 0.2075 0.21 0.2125 0.215 0.2175 0.22 0.2225 0.225 0.2275 0.23 0.2325 0.235 0.2375 0.24 0.2425 0.245 0.2475 0.25 ]`
- `#define Water_Absorb_G 0.0565  // [0.0 0.0025 0.005 0.0075 0.01 0.0125 0.015 0.0175 0.02 0.0225 0.025 0.0275 0.03 0.0325 0.035 0.0375 0.04 0.0425 0.045 0.0475 0.05 0.0525 0.055 0.0575 0.06 0.0625 0.065 0.0675 0.07 0.0725 0.075 0.0775 0.08 0.0825 0.085 0.0875 0.09 0.0925 0.095 0.0975 0.1 0.1025 0.105 0.1075 0.11 0.1125 0.115 0.1175 0.12 0.1225 0.125 0.1275 0.13 0.1325 0.135 0.1375 0.14 0.1425 0.145 0.1475 0.15 0.1525 0.155 0.1575 0.16 0.1625 0.165 0.1675 0.17 0.1725 0.175 0.1775 0.18 0.1825 0.185 0.1875 0.19 0.1925 0.195 0.1975 0.2 0.2025 0.205 0.2075 0.21 0.2125 0.215 0.2175 0.22 0.2225 0.225 0.2275 0.23 0.2325 0.235 0.2375 0.24 0.2425 0.245 0.2475 0.25 ]`
- `#define Water_Absorb_B 0.01011  // [0.0 0.0025 0.005 0.0075 0.01 0.0125 0.015 0.0175 0.02 0.0225 0.025 0.0275 0.03 0.0325 0.035 0.0375 0.04 0.0425 0.045 0.0475 0.05 0.0525 0.055 0.0575 0.06 0.0625 0.065 0.0675 0.07 0.0725 0.075 0.0775 0.08 0.0825 0.085 0.0875 0.09 0.0925 0.095 0.0975 0.1 0.1025 0.105 0.1075 0.11 0.1125 0.115 0.1175 0.12 0.1225 0.125 0.1275 0.13 0.1325 0.135 0.1375 0.14 0.1425 0.145 0.1475 0.15 0.1525 0.155 0.1575 0.16 0.1625 0.165 0.1675 0.17 0.1725 0.175 0.1775 0.18 0.1825 0.185 0.1875 0.19 0.1925 0.195 0.1975 0.2 0.2025 0.205 0.2075 0.21 0.2125 0.215 0.2175 0.22 0.2225 0.225 0.2275 0.23 0.2325 0.235 0.2375 0.24 0.2425 0.245 0.2475 0.25 ]`
- `#define rayMarchSampleCount 2 // [1 2 3 4 6 8 12 16 32 64]`
- `#define Water_Top_Layer 62.90 // [0.90 1.90 2.90 3.90 4.90 5.90 6.90 7.90 8.90 9.90 10.90 11.90 12.90 13.90 14.90 15.90 16.90 17.90 18.90 19.90 20.90 21.90 22.90 23.90 24.90 25.90 26.90 27.90 28.90 29.90 30.90 31.90 32.90 33.90 34.90 35.90 36.90 37.90 38.90 39.90 40.90 41.90 42.90 43.90 44.90 45.90 46.90 47.90 48.90 49.90 50.90 51.90 52.90 53.90 54.90 55.90 56.90 57.90 58.90 59.90 60.90 61.90 62.90 63.90 64.90 65.90 66.90 67.90 68.90 69.90 70.90 71.90 72.90 73.90 74.90 75.90 76.90 77.90 78.90 79.90 80.90 81.90 82.90 83.90 84.90 85.90 86.90 87.90 88.90 89.90 90.90 91.90 92.90 93.90 94.90 95.90 96.90 97.90 98.90 99.90 100.90 101.90 102.90 103.90 104.90 105.90 106.90 107.90 108.90 109.90 110.90 111.90 112.90 113.90 114.90 115.90 116.90 117.90 118.90 119.90 120.90 121.90 122.90 123.90 124.90 125.90 126.90 127.90 128.90 129.90 130.90 131.90 132.90 133.90 134.90 135.90 136.90 137.90 138.90 139.90 140.90 141.90 142.90 143.90 144.90 145.90 146.90 147.90 148.90 149.90 150.90 151.90 152.90 153.90 154.90 155.90 156.90 157.90 158.90 159.90 160.90 161.90 162.90 163.90 164.90 165.90 166.90 167.90 168.90 169.90 170.90 171.90 172.90 173.90 174.90 175.90 176.90 177.90 178.90 179.90 180.90 181.90 182.90 183.90 184.90 185.90 186.90 187.90 188.90 189.90 190.90 191.90 192.90 193.90 194.90 195.90 196.90 197.90 198.90 199.90]`
- `#define Refraction`
- `#define SSR_STEPS 30 // [10 15 20 25 30 35 40 50 100 200 400]`
- `#define USE_QUARTER_RES_DEPTH`
- `#define WATER_REFLECTIONS`
- `#define WATER_BACKGROUND_SPECULAR`
- `#define WATER_SUN_SPECULAR`
- `#define SCREENSPACE_REFLECTIONS`
- `#define SNELLS_WINDOW`
- `#define WAVY_PLANTS`
- `#define WAVY_STRENGTH 1.0 // [0.1 0.25 0.5 0.75 1.0 1.25 1.5 1.75 2.0]`
- `#define WAVY_SPEED 1.0 // [0.001 0.01 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 1.0 1.25 1.5 2.0 3.0 4.0]`
- `#define Season_Length 24 //  [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91]`
- `#define Start_Season 0 // [0 1 2 3]`
- `#define Summer_R 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Summer_G 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Summer_B 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Summer_Leaf_R 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Summer_Leaf_G 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Summer_Leaf_B 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Fall_R 1.5 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Fall_G 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Fall_B 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Fall_Leaf_R 1.8 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Fall_Leaf_G 0.9 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Fall_Leaf_B 0.7 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Winter_R 1.2 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Winter_G 0.8 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Winter_B 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Winter_Leaf_R 1.2 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Winter_Leaf_G 0.5 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Winter_Leaf_B 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Spring_R 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Spring_G 0.9 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Spring_B 1.1 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Spring_Leaf_R 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Spring_Leaf_G 0.8 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define Spring_Leaf_B 0.8 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define MIN_LIGHT_AMOUNT 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 15.0 20.0 25.0 30.0 35.0 40.0 45.0 50.0 100.0 ]`
- `#define ambient_brightness 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 ]`
- `#define AmbientLight_R 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define AmbientLight_G 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define AmbientLight_B 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0]`
- `#define TORCH_AMOUNT 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6.0 6.1 6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7.0 7.1 7.2 7.3 7.4 7.5 7.6 7.7 7.8 7.9 8.0 8.1 8.2 8.3 8.4 8.5 8.6 8.7 8.8 8.9 9.0 9.1 9.2 9.3 9.4 9.5 9.6 9.7 9.8 9.9 10.0]`
- `#define TORCH_R 1.0 // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define TORCH_G 0.75 // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define TORCH_B 0.65 // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Hand_Held_lights`
- `#define HANDHELD_LIGHT_RANGE 10 // [1 2 3 4 5 6 7 8 9 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100 105 110 115 120 125 130 135 140 145 150 155 160 165 170 175 180 185 190 195 200 205 210 215 220 225 230 235 240 245 250 255]`
- `#define indirect_effect 1 // [0 1 2 3 4]`
- `#define AO_in_sunlight`
- `#define AO_Strength 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0]`
- `#define UseQuarterResDepth`
- `#define GI_Strength 1.0 // [1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 ]`
- `#define RAY_COUNT 4 // [1 2 3 4 5 6 7 8 9 10 12 14 16 18 21 24 28 32 37 43 49 57 65 75 86 100]`
- `#define STEPS 8	//  [6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99]`
- `#define STEP_LENGTH 12.	//  [4.  5.  6.  7.  8.  9. 10. 11. 12. 13. 14. 15. 16. 17. 18. 19. 20. 21. 22. 23. 24. 25. 26. 27. 28. 29. 30.]`
- `#define SEPARATE_AO`
- `#ifdef IS_IRIS`
- `#define OPTIMIZED_SHADOW_DISTANCE 1 // [-1 1]`
- `#else`
- `#define OPTIMIZED_SHADOW_DISTANCE 1 // [-1 1]`
- `#endif`
- `#define RENDER_ENTITY_SHADOWS`
- `#define RENDER_PLAYER_SHADOWS`
- `#define SCREENSPACE_CONTACT_SHADOWS`
- `#define Variable_Penumbra_Shadows`
- `#define VPS_Search_Samples 4 // [4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32]`
- `#define Min_Shadow_Filter_Radius 5.0 // [0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 20.0 21.0 22.0 23.0 24.0 25.0 26.0 27.0 28.0 29.0 30.0 31.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 47.0 48.0 49.0 50.0 51.0 52.0 53.0 54.0 55.0 56.0 57.0 58.0 59.0 60.0 61.0 62.0 63.0 64.0 65.0 66.0 67.0 68.0 69.0 70.0 71.0 72.0 73.0 74.0 75.0 76.0 77.0 78.0 79.0 80.0 81.0 82.0 83.0 84.0 85.0 86.0 87.0 88.0 89.0 90.0 91.0 92.0 93.0 94.0 95.0 96.0 97.0 98.0 99.0 100.0 101.0 102.0 103.0 104.0 105.0 106.0 107.0 108.0 109.0 110.0 111.0 112.0 113.0 114.0 115.0 116.0 117.0 118.0 119.0 ]`
- `#define Max_Shadow_Filter_Radius 30.0 // [0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 20.0 21.0 22.0 23.0 24.0 25.0 26.0 27.0 28.0 29.0 30.0 31.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 47.0 48.0 49.0 50.0 51.0 52.0 53.0 54.0 55.0 56.0 57.0 58.0 59.0 60.0 61.0 62.0 63.0 64.0 65.0 66.0 67.0 68.0 69.0 70.0 71.0 72.0 73.0 74.0 75.0 76.0 77.0 78.0 79.0 80.0 81.0 82.0 83.0 84.0 85.0 86.0 87.0 88.0 89.0 90.0 91.0 92.0 93.0 94.0 95.0 96.0 97.0 98.0 99.0 100.0 101.0 102.0 103.0 104.0 105.0 106.0 107.0 108.0 109.0 110.0 111.0 112.0 113.0 114.0 115.0 116.0 117.0 118.0 119.0 ]`
- `#define Max_Filter_Depth 35.0 // [0.1 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 20.0 21.0 22.0 23.0 24.0 25.0 26.0 27.0 28.0 29.0 30.0 31.0 32.0 33.0 34.0 35.0 36.0 37.0 38.0 39.0 40.0 41.0 42.0 43.0 44.0 45.0 46.0 47.0 48.0 49.0 50.0 51.0 52.0 53.0 54.0 55.0 56.0 57.0 58.0 59.0 60.0 61.0 62.0 63.0 64.0 65.0 66.0 67.0 68.0 69.0 70.0 71.0 72.0 73.0 74.0 75.0 76.0 77.0 78.0 79.0 80.0 81.0 82.0 83.0 84.0 85.0 86.0 87.0 88.0 89.0 90.0 91.0 92.0 93.0 94.0 95.0 96.0 97.0 98.0 99.0 100.0 101.0 102.0 103.0 104.0 105.0 106.0 107.0 108.0 109.0 110.0 111.0 112.0 113.0 114.0 115.0 116.0 117.0 118.0 119.0 220.0]`
- `#define BASIC_SHADOW_FILTER`
- `#define SHADOW_FILTER_SAMPLE_COUNT 13 // [1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 ]`
- `#define SHADOW_DISABLE_ALPHA_MIPMAPS`
- `#define Stochastic_Transparent_Shadows`
- `#define Glass_Tint`
- `#ifdef TRANSLUCENT_COLORED_SHADOWS`
- `#endif`
- `#define TOGGLE_VL_FOG`
- `#define VL_SAMPLES 8 // [4 6 8 10 12 14 16 20 24 30 40 50]`
- `#define FOG_START_HEIGHT 60 // [-200 -190 -180 -170 -160 -150 -130 -120 -110 -100 -90 -80 -70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 190 200]`
- `#define TOD_Fog_mult 1.0 // [0.00 0.25 0.50 0.75 1.0 1.25 1.50 1.75 2.00 3.00 4.00 5.00]`
- `#define Morning_Uniform_Fog 0.01 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Morning_Cloudy_Fog 0.05 //  [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Noon_Uniform_Fog 0.0 //  [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Noon_Cloudy_Fog 0.0 //  [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Evening_Uniform_Fog 0.05 //  [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Evening_Cloudy_Fog 0.0 //  [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Night_Uniform_Fog 0.2 //  [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Night_Cloudy_Fog 0.05 //  [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define Haze_amount 1.0 // [0.0 0.2 0.4 0.6 0.8 1.0 1.25 1.5 1.75 2.0 3.0 4.0 5.0]`
- `#define fog_coefficientRayleighR 5.8 // [0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0]`
- `#define fog_coefficientRayleighG 1.35 // [0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0]`
- `#define fog_coefficientRayleighB 3.31 // [0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0]`
- `#define fog_coefficientMieR 3.0 // [0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0]`
- `#define fog_coefficientMieG 3.0 // [0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0]`
- `#define fog_coefficientMieB 3.0 // [0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5 6.0 6.5 7.0 7.5 8.0 8.5 9.0 9.5 10.0]`
- `#define RainFog_amount 0.1 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define BLOOMY_FOG 1.5 // [0.0 0.25 0.5 0.75 1.0 1.25 1.5 1.75 2.0 3.0 4.0 6.0 10.0 15.0 20.0]`
- `#define BLOOM_STRENGTH  1.0 // [0.0 0.25 0.5 0.75 1.0 1.25 1.5 1.75 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 15.0 20.0 25.0 50.0 75.0 100.0]`
- `#define CAVE_FOG`
- `#ifdef CAVE_FOG`
- `#endif`
- `#define CaveFogFallOff 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 4.0 5.0]`
- `#define CaveFogColor_R 0.1 // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define CaveFogColor_G 0.2 // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define CaveFogColor_B 0.5 // [0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define BorderFog`
- `#if !defined OVERWORLD_SHADER`
- `#endif`
- `#define DISTANT_HORIZONS_SUPPORT`
- `#ifndef DISTANT_HORIZONS_SUPPORT`
- `#endif`
- `#define SEA_LEVEL 70 // [0 10 20 30 40 50 60 70 80 90 100 110 120 130 150 170 190]`
- `#define PER_BIOME_ENVIRONMENT`
- `#define SWAMP_ENV`
- `#define SWAMP_UNIFORM_DENSITY 0.3 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define SWAMP_CLOUDY_DENSITY 0 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define SWAMP_R 0.15 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define SWAMP_G 0.25 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define SWAMP_B 0.05 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define JUNGLE_ENV`
- `#define JUNGLE_UNIFORM_DENSITY 0.1 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define JUNGLE_CLOUDY_DENSITY 0.2 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define JUNGLE_R 0.5 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define JUNGLE_G 1.0 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define JUNGLE_B 0.5 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define DARKFOREST_ENV`
- `#define DARKFOREST_UNIFORM_DENSITY 0.1 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define DARKFOREST_CLOUDY_DENSITY 0 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define DARKFOREST_R 0.3 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define DARKFOREST_G 0.4 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define DARKFOREST_B 1.0 // [0.00 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0]`
- `#define SNOW_STORMS`
- `#define SAND_STORMS`
- `#ifdef SWAMP_ENV`
- `#endif`
- `#ifdef JUNGLE_ENV`
- `#endif`
- `#ifdef DARKFOREST_ENV`
- `#endif`
- `#ifdef SNOW_STORMS`
- `#endif`
- `#ifdef SAND_STORMS`
- `#endif`
- `#define Dynamic_SSR_quality`
- `#define Sun_specular_Strength 1 // [0 1 2 3 4 5 6 7 8 9 10]`
- `#define reflection_quality 30 // [6.0 7.0 8.0 9.0 10.0 11.0 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 20.0 25.0 30.0 35.0 40.0 45.0 50.0 55.0 60.0 65.0 70.0 75.0 80.0 85.0 90.0 95.0 100.0 ]`
- `#define Roughness_Threshold 1.5 // [1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 ]`
- `#ifdef Specular_Reflections`
- `#define LIGHTSOURCE_REFLECTION`
- `#endif`
- `#define EMISSIVE_TYPE 1 // [0 1 2 3]`
- `#define Emissive_Brightness 1.0 // [1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0 15.0 20.0 25.0 30.0 35.0 40.0 45.0 50.0 100.]`
- `#define Emissive_Curve 2.0 // [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 ]`
- `#define Adaptive_Step_length`
- `#define POM_DEPTH 0.25 // [0.025 0.05 0.075 0.1 0.125 0.15 0.20 0.25 0.30 0.50 0.75 1.0]`
- `#define MAX_ITERATIONS 35 // [5 10 15 20 25 30 40 50 60 70 80 90 100 125 150 200 400]`
- `#define MAX_DIST 25.0 // [5.0 10.0 15.0 20.0 25.0 30.0 40.0 50.0 60.0 70.0 80.0 90.0 100.0 125.0 150.0 200.0 400.0]`
- `#define SSS_TYPE 1 // [0 1 2 3]`
- `#define LabSSS_Curve 1.0 // [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 ]`
- `#define Ambient_SSS`
- `#define ambientsss_brightness 1.0 // [0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0]`
- `#define sss_absorbance_multiplier 1.0   // [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0]`
- `#define sss_density_multiplier 1.0 		// [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0]`
- `#ifdef Specular_Reflections`
- `#define Puddles // yes`
- `#endif`
- `#define Puddle_Size 1.0 // [0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5]`
- `#define Sky_Brightness 1.0 //[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.75 0.8 0.85 0.9 0.95 1.0 1.5 2.0 3.0 4.0 5.0 6.0 10.0]`
- `#define sky_mieg 0.80 //[0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0 ]`
- `#define sky_coefficientRayleighR 5.8 //[0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6.0 6.1 6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7.0 7.1 7.2 7.3 7.4 7.5 7.6 7.7 7.8 7.9 8.0 8.1 8.2 8.3 8.4 8.5 8.6 8.7 8.8 8.9 9.0 9.1 9.2 9.3 9.4 9.5 9.6 9.7 9.8 9.9 10.0 ]`
- `#define sky_coefficientRayleighG 1.35 //[0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6.0 6.1 6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7.0 7.1 7.2 7.3 7.4 7.5 7.6 7.7 7.8 7.9 8.0 8.1 8.2 8.3 8.4 8.5 8.6 8.7 8.8 8.9 9.0 9.1 9.2 9.3 9.4 9.5 9.6 9.7 9.8 9.9 10.0 ]`
- `#define sky_coefficientRayleighB 3.31 //[0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6.0 6.1 6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7.0 7.1 7.2 7.3 7.4 7.5 7.6 7.7 7.8 7.9 8.0 8.1 8.2 8.3 8.4 8.5 8.6 8.7 8.8 8.9 9.0 9.1 9.2 9.3 9.4 9.5 9.6 9.7 9.8 9.9 10.0 ]`
- `#define sky_coefficientMieR 3.0 //[0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6.0 6.1 6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7.0 7.1 7.2 7.3 7.4 7.5 7.6 7.7 7.8 7.9 8.0 8.1 8.2 8.3 8.4 8.5 8.6 8.7 8.8 8.9 9.0 9.1 9.2 9.3 9.4 9.5 9.6 9.7 9.8 9.9 10.0 ]`
- `#define sky_coefficientMieG 3.0 //[0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6.0 6.1 6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7.0 7.1 7.2 7.3 7.4 7.5 7.6 7.7 7.8 7.9 8.0 8.1 8.2 8.3 8.4 8.5 8.6 8.7 8.8 8.9 9.0 9.1 9.2 9.3 9.4 9.5 9.6 9.7 9.8 9.9 10.0 ]`
- `#define sky_coefficientMieB 3.0 //[0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5 1.6 1.7 1.8 1.9 2.0 2.1 2.2 2.3 2.4 2.5 2.6 2.7 2.8 2.9 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4.0 4.1 4.2 4.3 4.4 4.5 4.6 4.7 4.8 4.9 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 6.0 6.1 6.2 6.3 6.4 6.5 6.6 6.7 6.8 6.9 7.0 7.1 7.2 7.3 7.4 7.5 7.6 7.7 7.8 7.9 8.0 8.1 8.2 8.3 8.4 8.5 8.6 8.7 8.8 8.9 9.0 9.1 9.2 9.3 9.4 9.5 9.6 9.7 9.8 9.9 10.0 ]`
- `#define colortype 2 // 1 = RGB sliders for sun/moon color. 2 = blackbody. [1 2]`
- `#define sun_illuminance 128000.0 //[0.0 10.0 20.0 30.0 40.0 50.0 60.0 70.0 80.0 90.0 100.0 150.0 200.0 300.0 400.0 500.0 600.0 700.0 800.0 900.0 1000.0 2000.0 3000.0 4000.0 5000.0 6000.0 7000.0 8000.0 9000.0 10000.0 11000.0 12000.0 13000.0 14000.0 15000.0 20000.0 30000.0 40000.0 50000.0 60000.0 70000.0 80000.0 90000.0 100000.0 150000.0 200000.0 250000.0 300000.0 400000.0 500000.0]`
- `#define Sun_temp 6300 // [1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 3100 3200 3300 3400 3500 3600 3700 3800 3900 4000 4100 4200 4300 4400 4500 4600 4700 4800 4900 5000 5100 5200 5300 5400 5500 5600 5700 5800 5900 6000 6100 6200 6300 6400 6500 6600 6700 6800 6900 7000 7100 7200 7300 7400 7500 7600 7700 7800 7900 8000 8100 8200 8300 8400 8500 8600 8700 8800 8900 9000 9100 9200 9300 9400 9500 9600 9700 9800 9900 10000]`
- `#define sunColorR 1.0 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0 ]`
- `#define sunColorG 0.91 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0 ]`
- `#define sunColorB 0.81 // [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0 ]`
- `#define moon_illuminance 50.0 //[0.0 10.0 20.0 30.0 40.0 50.0 60.0 70.0 80.0 90.0 100.0 150.0 200.0 300.0 400.0 500.0 600.0 700.0 800.0 900.0 1000.0 2000.0 3000.0 4000.0 5000.0 6000.0 7000.0 8000.0 9000.0 10000.0 11000.0 12000.0 13000.0 14000.0 15000.0 20000.0 30000.0 40000.0 50000.0 60000.0 70000.0 80000.0 90000.0 100000.0 150000.0 200000.0 250000.0 300000.0 400000.0 500000.0]`
- `#define Moon_temp 15000 // [1000 1100 1200 1300 1400 1500 1600 1700 1800 1900 2000 2100 2200 2300 2400 2500 2600 2700 2800 2900 3000 3100 3200 3300 3400 3500 3600 3700 3800 3900 4000 4100 4200 4300 4400 4500 4600 4700 4800 4900 5000 5100 5200 5300 4500 5600 5700 5800 5900 6000 6100 6200 6300 6400 6500 6600 6700 6800 6900 7000 7100 7200 7300 7400 7500 7600 7700 7800 7900 8000 8100 8200 8300 8400 8500 8600 8700 8800 8900 9000 9100 9200 9300 9400 9500 9600 9700 9800 9900 10000 15000 20000 25000 50000]`

## Constantes detectadas

- `const float ambientOcclusionLevel = 1.0; // this controls vanilla minecrafts ambient occlusion. [0.0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1.0 ]`
- `const float	sunPathRotation	= -35;	//[-90 -89 -88 -87 -86 -85 -84 -83 -82 -81 -80 -79 -78 -77 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -55 -54 -53 -52 -51 -50 -49 -48 -47 -46 -45 -44 -43 -42 -41 -40 -39 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 ]`
- `const int shadowMapResolution = 2048; // [512 768 1024 1536 2048 3172 4096 8192]`
- `const float shadowDistance = 128.0; // [32.0 48.0 64.0 80.0 96.0 112.0 128.0 144.0 160.0 176.0 192.0 208.0 224.0 240.0 256.0 272.0 288.0 304.0 320.0 336.0 352.0 368.0 384.0 512.0 768.0 1024.0 1536.0 2048.0 4096.0 8192.0]`
- `const float shadowDistanceRenderMul = OPTIMIZED_SHADOW_DISTANCE;`
- `const float shadowDistanceRenderMul = float(OPTIMIZED_SHADOW_DISTANCE);`
- `const float entityShadowDistanceMul = 0.25; // [0.01 0.02 0.03 0.04 0.05 0.10 0.15 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.75 1.00]`
- `const float aperture = focal/fstop;`
- `const vec3 SHADOWS_TARGET = length(vec3(SHADOWS_GRADE_R, SHADOWS_GRADE_G, SHADOWS_GRADE_B)) < 0.001 ? vec3(0.0) : normalize(vec3(SHADOWS_GRADE_R, SHADOWS_GRADE_G, SHADOWS_GRADE_B));`
- `const vec3 MIDS_TARGET = length(vec3(MIDS_GRADE_R, MIDS_GRADE_G, MIDS_GRADE_B)) < 0.001 ? vec3(0.0) : normalize(vec3(MIDS_GRADE_R, MIDS_GRADE_G, MIDS_GRADE_B));`
- `const vec3 HIGHLIGHTS_TARGET = length(vec3(HIGHLIGHTS_GRADE_R, HIGHLIGHTS_GRADE_G, HIGHLIGHTS_GRADE_B)) < 0.001 ? vec3(0.0) : normalize(vec3(HIGHLIGHTS_GRADE_R, HIGHLIGHTS_GRADE_G, HIGHLIGHTS_GRADE_B));`
- `const vec3 aerochrome_color = mix(vec3(1.0, 0.0, 0.0), vec3(0.715, 0.303, 0.631), AEROCHROME_PINKNESS);`
- `const float shadowNearPlane = -1.0;`
- `const float shadowFarPlane = -1.0;`
- `const float voxelDistance = 64.0;`

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_Shadow_Params.glsl.md

**Fuente:** `docs\lib\shaders_lib_Shadow_Params.glsl.md`

# shaders\lib\Shadow_Params.glsl

**Ruta original:** `shaders\lib\Shadow_Params.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform float far;`
- `uniform int dhRenderDistance;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const float k = 1.8;`
- `const float d0 = 0.04  + max(64.0 - shadowDistance, 0.0)/64.0  * 0.26;`
- `const float d1 = 0.61;`

## Funciones detectadas (heurística)

- `vec4 BiasShadowProjection(in vec4 projectedShadowSpacePosition)` — línea 17
- `float calcDistort(vec2 worldpos)` — línea 24

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_Shadows.glsl.md

**Fuente:** `docs\lib\shaders_lib_Shadows.glsl.md`

# shaders\lib\Shadows.glsl

**Ruta original:** `shaders\lib\Shadows.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_sky_gradient.glsl.md

**Fuente:** `docs\lib\shaders_lib_sky_gradient.glsl.md`

# shaders\lib\sky_gradient.glsl

**Ruta original:** `shaders\lib\sky_gradient.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ffstep(x,y) clamp((y - x) * 1e35,0.0,1.0)`
- `#ifdef SCREENSHOT_MODE`
- `#endif`

## Constantes detectadas

- `const float pi = 3.141592653589793238462643383279502884197169;`

## Funciones detectadas (heurística)

- `vec3 drawSun(float cosY, float sunInt,vec3 nsunlight,vec3 inColor)` — línea 3
- `vec3 drawMoon(vec3 PlayerPos, vec3 WorldSunVec, vec3 Color, inout vec3 occludeStars)` — línea 7
- `vec2 sphereToCarte(vec3 dir)` — línea 135
- `vec3 skyFromTex(vec3 pos,sampler2D sampler)` — línea 140
- `vec3 skyFromTexLOD(vec3 pos,sampler2D sampler, float LOD)` — línea 144
- `vec4 skyCloudsFromTex(vec3 pos,sampler2D sampler)` — línea 148
- `vec4 skyCloudsFromTexLOD(vec3 pos,sampler2D sampler, float LOD)` — línea 152
- `vec4 skyCloudsFromTexLOD2(vec3 pos,sampler2D sampler, float LOD)` — línea 157

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_specular.glsl.md

**Fuente:** `docs\lib\shaders_lib_specular.glsl.md`

# shaders\lib\specular.glsl

**Ruta original:** `shaders\lib\specular.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform int framemod8;`

## Defines / Preprocesador

- `#ifdef Rough_reflections`
- `#else`
- `#endif`
- `#ifdef Rough_reflections`
- `#else`
- `#endif`
- `#ifdef Sky_reflection`
- `#ifdef OVERWORLD_SHADER`
- `#else`
- `#endif`
- `#endif`
- `#ifdef Screen_Space_Reflections`
- `#ifdef Dynamic_SSR_quality`
- `#else`
- `#endif`
- `#endif`
- `#ifdef LIGHTSOURCE_REFLECTION`
- `#endif`

## Constantes detectadas

- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`
- `const float tau = 6.2831853; // 2 * pi`

## Funciones detectadas (heurística)

- `vec3 lerp(vec3 X, vec3 Y, float A)` — línea 12
- `float lerp(float X, float Y, float A)` — línea 16
- `float square(float x)` — línea 20
- `vec3 toClipSpace3(vec3 viewSpacePosition)` — línea 26
- `float invLinZ(float lindepth)` — línea 29
- `float linZ(float depth)` — línea 32
- `void frisvad(in vec3 n, out vec3 f, out vec3 r)` — línea 41
- `mat3 CoordBase(vec3 n)` — línea 53
- `vec2 R2_Sample(int n)` — línea 59
- `vec3 rayTraceSpeculars(vec3 dir, vec3 position, float dither, float quality, bool hand, inout float reflectLength)` — línea 64
- `float fma(float a,float b,float c)` — línea 123
- `float GGX(vec3 n, vec3 v, vec3 l, float r, float f0)` — línea 160

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_stars.glsl.md

**Fuente:** `docs\lib\shaders_lib_stars.glsl.md`

# shaders\lib\stars.glsl

**Ruta original:** `shaders\lib\stars.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float stars(vec3 viewPos)` — línea 52

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_TAA_jitter.glsl.md

**Fuente:** `docs\lib\shaders_lib_TAA_jitter.glsl.md`

# shaders\lib\TAA_jitter.glsl

**Ruta original:** `shaders\lib\TAA_jitter.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

- `const vec2[8] offsets = vec2[8](`
- `// const vec2[4] offsets = vec2[4](`
- `// const vec2[4] offsets = vec2[4](`
- `// const vec2[8] offsets = vec2[8](`

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_texFiltering.glsl.md

**Fuente:** `docs\lib\shaders_lib_texFiltering.glsl.md`

# shaders\lib\texFiltering.glsl

**Ruta original:** `shaders\lib\texFiltering.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_util.glsl.md

**Fuente:** `docs\lib\shaders_lib_util.glsl.md`

# shaders\lib\util.glsl

**Ruta original:** `shaders\lib\util.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define TIME_MULT 1.0`
- `#define TIME (frameTimeCounter * TIME_MULT)`
- `#define clamp01(x) clamp(x, 0.0, 1.0)`
- `#define max0(x) max(x, 0.0)`
- `#define min0(x) min(x, 0.0)`
- `#define max3(a) max(max(a.x, a.y), a.z)`
- `#define min3(a) min(min(a.x, a.y), a.z)`
- `#define max4(a, b, c, d) max(max(a, b), max(c, d))`
- `#define min4(a, b, c, d) min(min(a, b), min(c, d))`
- `#define fsign(x) (clamp01(x * 1e35) * 2.0 - 1.0)`
- `#define fstep(x,y) clamp01((y - x) * 1e35)`
- `#define diagonal2(m) vec2((m)[0].x, (m)[1].y)`
- `#define diagonal3(m) vec3(diagonal2(m), m[2].z)`
- `#define diagonal4(m) vec4(diagonal3(m), m[2].w)`
- `#define transMAD(mat, v) (mat3(mat) * (v) + (mat)[3].xyz)`
- `#define projMAD(mat, v) (diagonal3(mat) * (v) + (mat)[3].xyz)`
- `#define encodeColor(x) (x * 0.00005)`
- `#define decodeColor(x) (x * 20000.0)`
- `#define cubeSmooth(x) (x * x * (3.0 - 2.0 * x))`
- `#define lumCoeff vec3(0.2125, 0.7154, 0.0721)`

## Constantes detectadas

- `const float PI 		= acos(-1.0);`
- `const float TAU 	= PI * 2.0;`
- `const float hPI 	= PI * 0.5;`
- `const float rPI 	= 1.0 / PI;`
- `const float rTAU 	= 1.0 / TAU;`
- `const float PHI		= sqrt(5.0) * 0.5 + 0.5;`
- `const float rLOG2	= 1.0 / log(2.0);`
- `const float goldenAngle = TAU / PHI / PHI;`
- `float facos(const float sx){`
- `vec3 calculateRoughSpecular(const float i, const float alpha2, const int steps) {`

## Funciones detectadas (heurística)

- `vec2 sincos(float x)` — línea 49
- `vec2 circlemap(float i, float n)` — línea 53
- `vec3 circlemapL(float i, float n)` — línea 57
- `vec3 clampNormal(vec3 n, vec3 v)` — línea 72
- `vec3 srgbToLinear(vec3 srgb)` — línea 77
- `vec3 linearToSRGB(vec3 linear)` — línea 85
- `float calculateHardShadows(float shadowDepth, vec3 shadowPosition, float bias)` — línea 111
- `vec3 genUnitVector(vec2 xy)` — línea 117
- `vec2 rotate(vec2 x, float r)` — línea 122
- `vec3 cartToSphere(vec2 coord)` — línea 127
- `vec2 sphereToCart(vec3 dir)` — línea 133
- `mat3 getRotMat(vec3 x,vec3 y)` — línea 138
- `vec2 rsi(vec3 position, vec3 direction, float radius)` — línea 161

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_volumetricClouds.glsl.md

**Fuente:** `docs\lib\shaders_lib_volumetricClouds.glsl.md`

# shaders\lib\volumetricClouds.glsl

**Ruta original:** `shaders\lib\volumetricClouds.glsl`

## Includes

- `/lib/climate_settings.glsl`

## Uniforms / Variables detectadas

- `uniform int worldTime;`
- `uniform int worldDay;`
- `uniform sampler2D colortex4; //Skybox`

## Defines / Preprocesador

- `#ifdef HQ_CLOUDS`
- `#else`
- `#endif`
- `#define WEATHERCLOUDS`
- `#if defined Daily_Weather`
- `#else`
- `#endif`
- `#ifdef CloudLayer0`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifndef CLOUDSHADOWSONLY`
- `#ifdef CLOUDS_INTERSECT_TERRAIN`
- `#if defined DISTANT_HORIZONS`
- `#else`
- `#endif`
- `#endif`
- `#ifdef CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined CloudLayer1 && defined CloudLayer0`
- `#else`
- `#endif`
- `#ifdef CLOUDS_INTERSECT_TERRAIN`
- `#endif`
- `#if defined CloudLayer1 && defined CloudLayer0`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#ifndef VOLUMETRIC_CLOUDS`
- `#endif`
- `#ifdef EXCLUDE_WRITE_TO_LUT`
- `#endif`
- `#ifdef SKY_GROUND`
- `#else`
- `#endif`
- `#ifdef CloudLayer0`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#ifdef CloudLayer0`
- `#else`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#if !defined CloudLayer1 && defined CloudLayer2`
- `#endif`
- `#if defined CloudLayer1 && defined CloudLayer2`
- `#endif`
- `#if defined CloudLayer0 && defined CloudLayer1`
- `#endif`
- `#if defined CloudLayer0 && !defined CloudLayer1`
- `#endif`
- `#if !defined CloudLayer0 && defined CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#ifndef SKY_GROUND`
- `#else`
- `#endif`
- `#endif`
- `#ifdef CLOUDS_SHADOWS`
- `#ifdef CloudLayer0`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#else`
- `#endif`
- `#ifdef CLOUDS_SHADOWS`
- `#ifdef CloudLayer0`
- `#endif`
- `#ifdef CloudLayer1`
- `#endif`
- `#ifdef CloudLayer2`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

- `const int cloudLoD = cloud_LevelOfDetail;`
- `const int cloudShadowLoD = cloud_ShadowLevelOfDetail;`
- `const int cloudLoD = cloud_LevelOfDetailLQ;`
- `const int cloudShadowLoD = cloud_ShadowLevelOfDetailLQ;`

## Funciones detectadas (heurística)

- `float densityAtPos(in vec3 pos)` — línea 54
- `float GetAltostratusDensity(vec3 pos)` — línea 69
- `float cloudCov(int layer, in vec3 pos, vec3 samplePos, float minHeight, float maxHeight)` — línea 81
- `float cloudVol(int layer, in vec3 pos, in vec3 samplePos, in float cov, in int LoD, float minHeight, float maxHeight)` — línea 183
- `float GetCumulusDensity(int layer, in vec3 pos, in int LoD, float minHeight, float maxHeight)` — línea 212
- `float phaseg(float x, float g)` — línea 230
- `float invLinZ_cloud(float lindepth)` — línea 417
- `float GetCloudShadow(vec3 feetPlayerPos)` — línea 610
- `float GetCloudShadow_VLFOG(vec3 WorldPos, vec3 WorldSpace_sunVec)` — línea 642

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_voxel_common.glsl.md

**Fuente:** `docs\lib\shaders_lib_voxel_common.glsl.md`

# shaders\lib\voxel_common.glsl

**Ruta original:** `shaders\lib\voxel_common.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef RENDER_SHADOW`
- `#else`
- `#endif`
- `#define BLOCK_EMPTY 0`

## Constantes detectadas

- `const uint VoxelSize = uint(exp2(LPV_SIZE));`
- `const uvec3 VoxelSize3 = uvec3(VoxelSize);`

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_voxel_write.glsl.md

**Fuente:** `docs\lib\shaders_lib_voxel_write.glsl.md`

# shaders\lib\voxel_write.glsl

**Ruta original:** `shaders\lib\voxel_write.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef IRIS_FEATURE_BLOCK_EMISSION_ATTRIBUTE`
- `#endif`
- `#ifdef LPV_ENTITY_LIGHTS`
- `#endif`

## Constantes detectadas

- `ivec3 GetVoxelIndex(const in vec3 playerPos) {`
- `void SetVoxelBlock(const in vec3 playerPos, const in uint blockId) {`
- `void PopulateShadowVoxel(const in vec3 playerPos) {`

## Funciones detectadas (heurística)

- `else if(currentRenderedItemId > 0 && currentRenderedItemId < 1200)` — línea 40

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_lib_waterBump.glsl.md

**Fuente:** `docs\lib\shaders_lib_waterBump.glsl.md`

# shaders\lib\waterBump.glsl

**Ruta original:** `shaders\lib\waterBump.glsl`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#ifdef HYPER_DETAILED_WAVES`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float waterCaustics(vec3 worldPos, vec3 sunVec)` — línea 1
- `float getWaterHeightmap(vec2 posxz)` — línea 31
- `vec3 getWaveNormal(vec3 posxz, bool isLOD)` — línea 57

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite.fsh.md`

# shaders\world-1\composite.fsh

**Ruta original:** `shaders\world-1\composite.fsh`

## Includes

- `/dimensions/fogBehindTranslucent_pass.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite.vsh.md`

# shaders\world-1\composite.vsh

**Ruta original:** `shaders\world-1\composite.vsh`

## Includes

- `/dimensions/fogBehindTranslucent_pass.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite1.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite1.fsh.md`

# shaders\world-1\composite1.fsh

**Ruta original:** `shaders\world-1\composite1.fsh`

## Includes

- `/dimensions/composite.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite1.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite1.vsh.md`

# shaders\world-1\composite1.vsh

**Ruta original:** `shaders\world-1\composite1.vsh`

## Includes

- `/dimensions/composite.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite10.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite10.fsh.md`

# shaders\world-1\composite10.fsh

**Ruta original:** `shaders\world-1\composite10.fsh`

## Includes

- `/dimensions/composite9.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite10.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite10.vsh.md`

# shaders\world-1\composite10.vsh

**Ruta original:** `shaders\world-1\composite10.vsh`

## Includes

- `/dimensions/composite9.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite11.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite11.fsh.md`

# shaders\world-1\composite11.fsh

**Ruta original:** `shaders\world-1\composite11.fsh`

## Includes

- `/dimensions/composite10.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite11.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite11.vsh.md`

# shaders\world-1\composite11.vsh

**Ruta original:** `shaders\world-1\composite11.vsh`

## Includes

- `/dimensions/composite10.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite12.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite12.fsh.md`

# shaders\world-1\composite12.fsh

**Ruta original:** `shaders\world-1\composite12.fsh`

## Includes

- `/dimensions/composite11.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite12.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite12.vsh.md`

# shaders\world-1\composite12.vsh

**Ruta original:** `shaders\world-1\composite12.vsh`

## Includes

- `/dimensions/composite11.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite13.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite13.fsh.md`

# shaders\world-1\composite13.fsh

**Ruta original:** `shaders\world-1\composite13.fsh`

## Includes

- `/dimensions/composite12.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite13.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite13.vsh.md`

# shaders\world-1\composite13.vsh

**Ruta original:** `shaders\world-1\composite13.vsh`

## Includes

- `/dimensions/composite12.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite2.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite2.fsh.md`

# shaders\world-1\composite2.fsh

**Ruta original:** `shaders\world-1\composite2.fsh`

## Includes

- `/dimensions/composite1.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite2.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite2.vsh.md`

# shaders\world-1\composite2.vsh

**Ruta original:** `shaders\world-1\composite2.vsh`

## Includes

- `/dimensions/composite1.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite3.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite3.fsh.md`

# shaders\world-1\composite3.fsh

**Ruta original:** `shaders\world-1\composite3.fsh`

## Includes

- `/dimensions/composite2.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite3.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite3.vsh.md`

# shaders\world-1\composite3.vsh

**Ruta original:** `shaders\world-1\composite3.vsh`

## Includes

- `/dimensions/composite2.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite4.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite4.fsh.md`

# shaders\world-1\composite4.fsh

**Ruta original:** `shaders\world-1\composite4.fsh`

## Includes

- `/dimensions/composite3.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite4.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite4.vsh.md`

# shaders\world-1\composite4.vsh

**Ruta original:** `shaders\world-1\composite4.vsh`

## Includes

- `/dimensions/composite3.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite5.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite5.fsh.md`

# shaders\world-1\composite5.fsh

**Ruta original:** `shaders\world-1\composite5.fsh`

## Includes

- `/dimensions/composite4.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite5.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite5.vsh.md`

# shaders\world-1\composite5.vsh

**Ruta original:** `shaders\world-1\composite5.vsh`

## Includes

- `/dimensions/composite4.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite6.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite6.fsh.md`

# shaders\world-1\composite6.fsh

**Ruta original:** `shaders\world-1\composite6.fsh`

## Includes

- `/dimensions/composite5.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite6.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite6.vsh.md`

# shaders\world-1\composite6.vsh

**Ruta original:** `shaders\world-1\composite6.vsh`

## Includes

- `/dimensions/composite5.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite7.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite7.fsh.md`

# shaders\world-1\composite7.fsh

**Ruta original:** `shaders\world-1\composite7.fsh`

## Includes

- `/dimensions/composite6.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite7.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite7.vsh.md`

# shaders\world-1\composite7.vsh

**Ruta original:** `shaders\world-1\composite7.vsh`

## Includes

- `/dimensions/composite6.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite8.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite8.fsh.md`

# shaders\world-1\composite8.fsh

**Ruta original:** `shaders\world-1\composite8.fsh`

## Includes

- `/dimensions/composite7.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite8.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite8.vsh.md`

# shaders\world-1\composite8.vsh

**Ruta original:** `shaders\world-1\composite8.vsh`

## Includes

- `/dimensions/composite7.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite9.fsh.md

**Fuente:** `docs\lib\shaders_world-1_composite9.fsh.md`

# shaders\world-1\composite9.fsh

**Ruta original:** `shaders\world-1\composite9.fsh`

## Includes

- `/dimensions/composite8.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_composite9.vsh.md

**Fuente:** `docs\lib\shaders_world-1_composite9.vsh.md`

# shaders\world-1\composite9.vsh

**Ruta original:** `shaders\world-1\composite9.vsh`

## Includes

- `/dimensions/composite8.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_deferred.fsh.md

**Fuente:** `docs\lib\shaders_world-1_deferred.fsh.md`

# shaders\world-1\deferred.fsh

**Ruta original:** `shaders\world-1\deferred.fsh`

## Includes

- `/dimensions/deferred.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_deferred.vsh.md

**Fuente:** `docs\lib\shaders_world-1_deferred.vsh.md`

# shaders\world-1\deferred.vsh

**Ruta original:** `shaders\world-1\deferred.vsh`

## Includes

- `/dimensions/deferred.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_deferred1.fsh.md

**Fuente:** `docs\lib\shaders_world-1_deferred1.fsh.md`

# shaders\world-1\deferred1.fsh

**Ruta original:** `shaders\world-1\deferred1.fsh`

## Includes

- `/dimensions/deferred1.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_deferred1.vsh.md

**Fuente:** `docs\lib\shaders_world-1_deferred1.vsh.md`

# shaders\world-1\deferred1.vsh

**Ruta original:** `shaders\world-1\deferred1.vsh`

## Includes

- `/dimensions/deferred1.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_dh_terrain.fsh.md

**Fuente:** `docs\lib\shaders_world-1_dh_terrain.fsh.md`

# shaders\world-1\dh_terrain.fsh

**Ruta original:** `shaders\world-1\dh_terrain.fsh`

## Includes

- `/dimensions/DH_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_dh_terrain.vsh.md

**Fuente:** `docs\lib\shaders_world-1_dh_terrain.vsh.md`

# shaders\world-1\dh_terrain.vsh

**Ruta original:** `shaders\world-1\dh_terrain.vsh`

## Includes

- `/dimensions/DH_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_dh_water.fsh.md

**Fuente:** `docs\lib\shaders_world-1_dh_water.fsh.md`

# shaders\world-1\dh_water.fsh

**Ruta original:** `shaders\world-1\dh_water.fsh`

## Includes

- `/dimensions/DH_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_dh_water.vsh.md

**Fuente:** `docs\lib\shaders_world-1_dh_water.vsh.md`

# shaders\world-1\dh_water.vsh

**Ruta original:** `shaders\world-1\dh_water.vsh`

## Includes

- `/dimensions/DH_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_final.fsh.md

**Fuente:** `docs\lib\shaders_world-1_final.fsh.md`

# shaders\world-1\final.fsh

**Ruta original:** `shaders\world-1\final.fsh`

## Includes

- `/dimensions/final.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_final.vsh.md

**Fuente:** `docs\lib\shaders_world-1_final.vsh.md`

# shaders\world-1\final.vsh

**Ruta original:** `shaders\world-1\final.vsh`

## Includes

- `/dimensions/final.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_armor_glint.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_armor_glint.fsh.md`

# shaders\world-1\gbuffers_armor_glint.fsh

**Ruta original:** `shaders\world-1\gbuffers_armor_glint.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENCHANT_GLINT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_armor_glint.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_armor_glint.vsh.md`

# shaders\world-1\gbuffers_armor_glint.vsh

**Ruta original:** `shaders\world-1\gbuffers_armor_glint.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENCHANT_GLINT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_basic.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_basic.fsh.md`

# shaders\world-1\gbuffers_basic.fsh

**Ruta original:** `shaders\world-1\gbuffers_basic.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LINES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_basic.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_basic.vsh.md`

# shaders\world-1\gbuffers_basic.vsh

**Ruta original:** `shaders\world-1\gbuffers_basic.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LINES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_beaconbeam.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_beaconbeam.fsh.md`

# shaders\world-1\gbuffers_beaconbeam.fsh

**Ruta original:** `shaders\world-1\gbuffers_beaconbeam.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BEACON_BEAM`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_beaconbeam.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_beaconbeam.vsh.md`

# shaders\world-1\gbuffers_beaconbeam.vsh

**Ruta original:** `shaders\world-1\gbuffers_beaconbeam.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BEACON_BEAM`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_block.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_block.fsh.md`

# shaders\world-1\gbuffers_block.fsh

**Ruta original:** `shaders\world-1\gbuffers_block.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define BLOCKENTITIES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_block.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_block.vsh.md`

# shaders\world-1\gbuffers_block.vsh

**Ruta original:** `shaders\world-1\gbuffers_block.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define BLOCKENTITIES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_block_translucent.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_block_translucent.fsh.md`

# shaders\world-1\gbuffers_block_translucent.fsh

**Ruta original:** `shaders\world-1\gbuffers_block_translucent.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BLOCKENTITIES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_block_translucent.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_block_translucent.vsh.md`

# shaders\world-1\gbuffers_block_translucent.vsh

**Ruta original:** `shaders\world-1\gbuffers_block_translucent.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BLOCKENTITIES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_damagedblock.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_damagedblock.fsh.md`

# shaders\world-1\gbuffers_damagedblock.fsh

**Ruta original:** `shaders\world-1\gbuffers_damagedblock.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define DAMAGE_BLOCK_EFFECT`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_damagedblock.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_damagedblock.vsh.md`

# shaders\world-1\gbuffers_damagedblock.vsh

**Ruta original:** `shaders\world-1\gbuffers_damagedblock.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define DAMAGE_BLOCK_EFFECT`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_entities.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_entities.fsh.md`

# shaders\world-1\gbuffers_entities.fsh

**Ruta original:** `shaders\world-1\gbuffers_entities.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define ENTITIES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_entities.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_entities.vsh.md`

# shaders\world-1\gbuffers_entities.vsh

**Ruta original:** `shaders\world-1\gbuffers_entities.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITIES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_entities_glowing.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_entities_glowing.fsh.md`

# shaders\world-1\gbuffers_entities_glowing.fsh

**Ruta original:** `shaders\world-1\gbuffers_entities_glowing.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define GLOWING`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_entities_glowing.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_entities_glowing.vsh.md`

# shaders\world-1\gbuffers_entities_glowing.vsh

**Ruta original:** `shaders\world-1\gbuffers_entities_glowing.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define GLOWING`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_entities_translucent.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_entities_translucent.fsh.md`

# shaders\world-1\gbuffers_entities_translucent.fsh

**Ruta original:** `shaders\world-1\gbuffers_entities_translucent.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITIES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_entities_translucent.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_entities_translucent.vsh.md`

# shaders\world-1\gbuffers_entities_translucent.vsh

**Ruta original:** `shaders\world-1\gbuffers_entities_translucent.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITIES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_hand.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_hand.fsh.md`

# shaders\world-1\gbuffers_hand.fsh

**Ruta original:** `shaders\world-1\gbuffers_hand.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define HAND`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_hand.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_hand.vsh.md`

# shaders\world-1\gbuffers_hand.vsh

**Ruta original:** `shaders\world-1\gbuffers_hand.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define HAND`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_hand_water.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_hand_water.fsh.md`

# shaders\world-1\gbuffers_hand_water.fsh

**Ruta original:** `shaders\world-1\gbuffers_hand_water.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define HAND`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_hand_water.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_hand_water.vsh.md`

# shaders\world-1\gbuffers_hand_water.vsh

**Ruta original:** `shaders\world-1\gbuffers_hand_water.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define HAND`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_skybasic.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_skybasic.fsh.md`

# shaders\world-1\gbuffers_skybasic.fsh

**Ruta original:** `shaders\world-1\gbuffers_skybasic.fsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 5

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_skybasic.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_skybasic.vsh.md`

# shaders\world-1\gbuffers_skybasic.vsh

**Ruta original:** `shaders\world-1\gbuffers_skybasic.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 3

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_skytextured.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_skytextured.fsh.md`

# shaders\world-1\gbuffers_skytextured.fsh

**Ruta original:** `shaders\world-1\gbuffers_skytextured.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D texture;`
- `uniform int renderStage;`

## Defines / Preprocesador

- `#if RESOURCEPACK_SKY != 0`
- `#endif`
- `#if RESOURCEPACK_SKY != 0`
- `#if RESOURCEPACK_SKY == 3`
- `#endif`
- `#if RESOURCEPACK_SKY == 1`
- `#else`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float interleaved_gradientNoise()` — línea 11
- `void main()` — línea 20

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_skytextured.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_skytextured.vsh.md`

# shaders\world-1\gbuffers_skytextured.vsh

**Ruta original:** `shaders\world-1\gbuffers_skytextured.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#if RESOURCEPACK_SKY != 0`
- `#endif`
- `#if RESOURCEPACK_SKY != 0`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#endif`

## Constantes detectadas

- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`

## Funciones detectadas (heurística)

- `void main()` — línea 27

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_spidereyes.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_spidereyes.fsh.md`

# shaders\world-1\gbuffers_spidereyes.fsh

**Ruta original:** `shaders\world-1\gbuffers_spidereyes.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define SPIDER_EYES`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_spidereyes.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_spidereyes.vsh.md`

# shaders\world-1\gbuffers_spidereyes.vsh

**Ruta original:** `shaders\world-1\gbuffers_spidereyes.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define SPIDER_EYES`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_terrain.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_terrain.fsh.md`

# shaders\world-1\gbuffers_terrain.fsh

**Ruta original:** `shaders\world-1\gbuffers_terrain.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_terrain.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_terrain.vsh.md`

# shaders\world-1\gbuffers_terrain.vsh

**Ruta original:** `shaders\world-1\gbuffers_terrain.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_textured.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_textured.fsh.md`

# shaders\world-1\gbuffers_textured.fsh

**Ruta original:** `shaders\world-1\gbuffers_textured.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define PARTICLES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_textured.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_textured.vsh.md`

# shaders\world-1\gbuffers_textured.vsh

**Ruta original:** `shaders\world-1\gbuffers_textured.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define PARTICLES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_textured_lit.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_textured_lit.fsh.md`

# shaders\world-1\gbuffers_textured_lit.fsh

**Ruta original:** `shaders\world-1\gbuffers_textured_lit.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LIT`
- `#define PARTICLES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_textured_lit.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_textured_lit.vsh.md`

# shaders\world-1\gbuffers_textured_lit.vsh

**Ruta original:** `shaders\world-1\gbuffers_textured_lit.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LIT`
- `#define PARTICLES`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_water.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_water.fsh.md`

# shaders\world-1\gbuffers_water.fsh

**Ruta original:** `shaders\world-1\gbuffers_water.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_water.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_water.vsh.md`

# shaders\world-1\gbuffers_water.vsh

**Ruta original:** `shaders\world-1\gbuffers_water.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define NETHER`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_weather.fsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_weather.fsh.md`

# shaders\world-1\gbuffers_weather.fsh

**Ruta original:** `shaders\world-1\gbuffers_weather.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WEATHER`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_gbuffers_weather.vsh.md

**Fuente:** `docs\lib\shaders_world-1_gbuffers_weather.vsh.md`

# shaders\world-1\gbuffers_weather.vsh

**Ruta original:** `shaders\world-1\gbuffers_weather.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WEATHER`
- `#define NETHER_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_setup.csh.md

**Fuente:** `docs\lib\shaders_world-1_setup.csh.md`

# shaders\world-1\setup.csh

**Ruta original:** `shaders\world-1\setup.csh`

## Includes

- `/lib/settings.glsl`
- `/dimensions/setup.csh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define RENDER_SETUP`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_shadow.fsh.md

**Fuente:** `docs\lib\shaders_world-1_shadow.fsh.md`

# shaders\world-1\shadow.fsh

**Ruta original:** `shaders\world-1\shadow.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 8

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_shadow.vsh.md

**Fuente:** `docs\lib\shaders_world-1_shadow.vsh.md`

# shaders\world-1\shadow.vsh

**Ruta original:** `shaders\world-1\shadow.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/voxel_common.glsl`
- `/lib/voxel_write.glsl`

## Uniforms / Variables detectadas

- `uniform usampler1D texBlockData;`
- `uniform mat4 shadowModelViewInverse;`
- `uniform int renderStage;`
- `uniform vec3 chunkOffset;`
- `uniform vec3 cameraPosition;`
- `uniform int currentRenderedItemId;`
- `uniform int blockEntityId;`
- `uniform int entityId;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#define RENDER_SHADOW`
- `#ifdef IS_LPV_ENABLED`
- `#ifdef IRIS_FEATURE_BLOCK_EMISSION_ATTRIBUTE`
- `#else`
- `#endif`
- `#ifdef LPV_ENTITY_LIGHTS`
- `#endif`
- `#endif`
- `#if defined IS_LPV_ENABLED && defined MC_GL_EXT_shader_image_load_store`
- `#ifdef LPV_NOSHADOW_HACK`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world-1_shadowcomp.csh.md

**Fuente:** `docs\lib\shaders_world-1_shadowcomp.csh.md`

# shaders\world-1\shadowcomp.csh

**Ruta original:** `shaders\world-1\shadowcomp.csh`

## Includes

- `/lib/settings.glsl`
- `/dimensions/shadowcomp.csh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite.fsh.md`

# shaders\world0\composite.fsh

**Ruta original:** `shaders\world0\composite.fsh`

## Includes

- `/dimensions/fogBehindTranslucent_pass.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite.vsh.md`

# shaders\world0\composite.vsh

**Ruta original:** `shaders\world0\composite.vsh`

## Includes

- `/dimensions/fogBehindTranslucent_pass.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite1.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite1.fsh.md`

# shaders\world0\composite1.fsh

**Ruta original:** `shaders\world0\composite1.fsh`

## Includes

- `/dimensions/composite.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite1.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite1.vsh.md`

# shaders\world0\composite1.vsh

**Ruta original:** `shaders\world0\composite1.vsh`

## Includes

- `/dimensions/composite.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite10.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite10.fsh.md`

# shaders\world0\composite10.fsh

**Ruta original:** `shaders\world0\composite10.fsh`

## Includes

- `/dimensions/composite9.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite10.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite10.vsh.md`

# shaders\world0\composite10.vsh

**Ruta original:** `shaders\world0\composite10.vsh`

## Includes

- `/dimensions/composite9.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite11.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite11.fsh.md`

# shaders\world0\composite11.fsh

**Ruta original:** `shaders\world0\composite11.fsh`

## Includes

- `/dimensions/composite10.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite11.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite11.vsh.md`

# shaders\world0\composite11.vsh

**Ruta original:** `shaders\world0\composite11.vsh`

## Includes

- `/dimensions/composite10.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite12.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite12.fsh.md`

# shaders\world0\composite12.fsh

**Ruta original:** `shaders\world0\composite12.fsh`

## Includes

- `/dimensions/composite11.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite12.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite12.vsh.md`

# shaders\world0\composite12.vsh

**Ruta original:** `shaders\world0\composite12.vsh`

## Includes

- `/dimensions/composite11.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite13.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite13.fsh.md`

# shaders\world0\composite13.fsh

**Ruta original:** `shaders\world0\composite13.fsh`

## Includes

- `/dimensions/composite12.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite13.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite13.vsh.md`

# shaders\world0\composite13.vsh

**Ruta original:** `shaders\world0\composite13.vsh`

## Includes

- `/dimensions/composite12.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite2.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite2.fsh.md`

# shaders\world0\composite2.fsh

**Ruta original:** `shaders\world0\composite2.fsh`

## Includes

- `/dimensions/composite1.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite2.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite2.vsh.md`

# shaders\world0\composite2.vsh

**Ruta original:** `shaders\world0\composite2.vsh`

## Includes

- `/dimensions/composite1.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite3.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite3.fsh.md`

# shaders\world0\composite3.fsh

**Ruta original:** `shaders\world0\composite3.fsh`

## Includes

- `/dimensions/composite2.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite3.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite3.vsh.md`

# shaders\world0\composite3.vsh

**Ruta original:** `shaders\world0\composite3.vsh`

## Includes

- `/dimensions/composite2.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite4.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite4.fsh.md`

# shaders\world0\composite4.fsh

**Ruta original:** `shaders\world0\composite4.fsh`

## Includes

- `/dimensions/composite3.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite4.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite4.vsh.md`

# shaders\world0\composite4.vsh

**Ruta original:** `shaders\world0\composite4.vsh`

## Includes

- `/dimensions/composite3.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite5.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite5.fsh.md`

# shaders\world0\composite5.fsh

**Ruta original:** `shaders\world0\composite5.fsh`

## Includes

- `/dimensions/composite4.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite5.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite5.vsh.md`

# shaders\world0\composite5.vsh

**Ruta original:** `shaders\world0\composite5.vsh`

## Includes

- `/dimensions/composite4.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite6.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite6.fsh.md`

# shaders\world0\composite6.fsh

**Ruta original:** `shaders\world0\composite6.fsh`

## Includes

- `/dimensions/composite5.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite6.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite6.vsh.md`

# shaders\world0\composite6.vsh

**Ruta original:** `shaders\world0\composite6.vsh`

## Includes

- `/dimensions/composite5.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite7.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite7.fsh.md`

# shaders\world0\composite7.fsh

**Ruta original:** `shaders\world0\composite7.fsh`

## Includes

- `/dimensions/composite6.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite7.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite7.vsh.md`

# shaders\world0\composite7.vsh

**Ruta original:** `shaders\world0\composite7.vsh`

## Includes

- `/dimensions/composite6.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite8.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite8.fsh.md`

# shaders\world0\composite8.fsh

**Ruta original:** `shaders\world0\composite8.fsh`

## Includes

- `/dimensions/composite7.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite8.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite8.vsh.md`

# shaders\world0\composite8.vsh

**Ruta original:** `shaders\world0\composite8.vsh`

## Includes

- `/dimensions/composite7.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite9.fsh.md

**Fuente:** `docs\lib\shaders_world0_composite9.fsh.md`

# shaders\world0\composite9.fsh

**Ruta original:** `shaders\world0\composite9.fsh`

## Includes

- `/dimensions/composite8.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_composite9.vsh.md

**Fuente:** `docs\lib\shaders_world0_composite9.vsh.md`

# shaders\world0\composite9.vsh

**Ruta original:** `shaders\world0\composite9.vsh`

## Includes

- `/dimensions/composite8.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_deferred.fsh.md

**Fuente:** `docs\lib\shaders_world0_deferred.fsh.md`

# shaders\world0\deferred.fsh

**Ruta original:** `shaders\world0\deferred.fsh`

## Includes

- `/dimensions/deferred.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_deferred.vsh.md

**Fuente:** `docs\lib\shaders_world0_deferred.vsh.md`

# shaders\world0\deferred.vsh

**Ruta original:** `shaders\world0\deferred.vsh`

## Includes

- `/dimensions/deferred.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_deferred1.fsh.md

**Fuente:** `docs\lib\shaders_world0_deferred1.fsh.md`

# shaders\world0\deferred1.fsh

**Ruta original:** `shaders\world0\deferred1.fsh`

## Includes

- `/dimensions/deferred1.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_deferred1.vsh.md

**Fuente:** `docs\lib\shaders_world0_deferred1.vsh.md`

# shaders\world0\deferred1.vsh

**Ruta original:** `shaders\world0\deferred1.vsh`

## Includes

- `/dimensions/deferred1.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_deferred2.fsh.md

**Fuente:** `docs\lib\shaders_world0_deferred2.fsh.md`

# shaders\world0\deferred2.fsh

**Ruta original:** `shaders\world0\deferred2.fsh`

## Includes

- `/dimensions/deferred2.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_deferred2.vsh.md

**Fuente:** `docs\lib\shaders_world0_deferred2.vsh.md`

# shaders\world0\deferred2.vsh

**Ruta original:** `shaders\world0\deferred2.vsh`

## Includes

- `/dimensions/deferred2.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_dh_shadow.fsh.md

**Fuente:** `docs\lib\shaders_world0_dh_shadow.fsh.md`

# shaders\world0\dh_shadow.fsh

**Ruta original:** `shaders\world0\dh_shadow.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D tex;`

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 18

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_dh_shadow.vsh.md

**Fuente:** `docs\lib\shaders_world0_dh_shadow.vsh.md`

# shaders\world0\dh_shadow.vsh

**Ruta original:** `shaders\world0\dh_shadow.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform mat4 shadowProjectionInverse;`
- `uniform mat4 shadowProjection;`
- `uniform mat4 shadowModelViewInverse;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform float dhFarPlane;`

## Defines / Preprocesador

- `#define SHADOW_MAP_BIAS 0.5`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#ifdef DH_OVERDRAW_PREVENTION`
- `#else`
- `#endif`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`

## Constantes detectadas

- `const float PI = 3.1415927;`

## Funciones detectadas (heurística)

- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 36
- `void main()` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_dh_terrain.fsh.md

**Fuente:** `docs\lib\shaders_world0_dh_terrain.fsh.md`

# shaders\world0\dh_terrain.fsh

**Ruta original:** `shaders\world0\dh_terrain.fsh`

## Includes

- `/dimensions/DH_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_dh_terrain.vsh.md

**Fuente:** `docs\lib\shaders_world0_dh_terrain.vsh.md`

# shaders\world0\dh_terrain.vsh

**Ruta original:** `shaders\world0\dh_terrain.vsh`

## Includes

- `/dimensions/DH_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_dh_water.fsh.md

**Fuente:** `docs\lib\shaders_world0_dh_water.fsh.md`

# shaders\world0\dh_water.fsh

**Ruta original:** `shaders\world0\dh_water.fsh`

## Includes

- `/dimensions/DH_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_dh_water.vsh.md

**Fuente:** `docs\lib\shaders_world0_dh_water.vsh.md`

# shaders\world0\dh_water.vsh

**Ruta original:** `shaders\world0\dh_water.vsh`

## Includes

- `/dimensions/DH_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_final.fsh.md

**Fuente:** `docs\lib\shaders_world0_final.fsh.md`

# shaders\world0\final.fsh

**Ruta original:** `shaders\world0\final.fsh`

## Includes

- `/dimensions/final.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_final.vsh.md

**Fuente:** `docs\lib\shaders_world0_final.vsh.md`

# shaders\world0\final.vsh

**Ruta original:** `shaders\world0\final.vsh`

## Includes

- `/dimensions/final.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_armor_glint.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_armor_glint.fsh.md`

# shaders\world0\gbuffers_armor_glint.fsh

**Ruta original:** `shaders\world0\gbuffers_armor_glint.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENCHANT_GLINT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_armor_glint.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_armor_glint.vsh.md`

# shaders\world0\gbuffers_armor_glint.vsh

**Ruta original:** `shaders\world0\gbuffers_armor_glint.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENCHANT_GLINT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_basic.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_basic.fsh.md`

# shaders\world0\gbuffers_basic.fsh

**Ruta original:** `shaders\world0\gbuffers_basic.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LINES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_basic.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_basic.vsh.md`

# shaders\world0\gbuffers_basic.vsh

**Ruta original:** `shaders\world0\gbuffers_basic.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LINES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_beaconbeam.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_beaconbeam.fsh.md`

# shaders\world0\gbuffers_beaconbeam.fsh

**Ruta original:** `shaders\world0\gbuffers_beaconbeam.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BEACON_BEAM`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_beaconbeam.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_beaconbeam.vsh.md`

# shaders\world0\gbuffers_beaconbeam.vsh

**Ruta original:** `shaders\world0\gbuffers_beaconbeam.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BEACON_BEAM`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_block.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_block.fsh.md`

# shaders\world0\gbuffers_block.fsh

**Ruta original:** `shaders\world0\gbuffers_block.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define BLOCKENTITIES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_block.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_block.vsh.md`

# shaders\world0\gbuffers_block.vsh

**Ruta original:** `shaders\world0\gbuffers_block.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define BLOCKENTITIES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_block_translucent.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_block_translucent.fsh.md`

# shaders\world0\gbuffers_block_translucent.fsh

**Ruta original:** `shaders\world0\gbuffers_block_translucent.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BLOCKENTITIES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_block_translucent.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_block_translucent.vsh.md`

# shaders\world0\gbuffers_block_translucent.vsh

**Ruta original:** `shaders\world0\gbuffers_block_translucent.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BLOCKENTITIES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_damagedblock.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_damagedblock.fsh.md`

# shaders\world0\gbuffers_damagedblock.fsh

**Ruta original:** `shaders\world0\gbuffers_damagedblock.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define DAMAGE_BLOCK_EFFECT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_damagedblock.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_damagedblock.vsh.md`

# shaders\world0\gbuffers_damagedblock.vsh

**Ruta original:** `shaders\world0\gbuffers_damagedblock.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define DAMAGE_BLOCK_EFFECT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_entities.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_entities.fsh.md`

# shaders\world0\gbuffers_entities.fsh

**Ruta original:** `shaders\world0\gbuffers_entities.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define ENTITIES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_entities.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_entities.vsh.md`

# shaders\world0\gbuffers_entities.vsh

**Ruta original:** `shaders\world0\gbuffers_entities.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define ENTITIES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_entities_glowing.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_entities_glowing.fsh.md`

# shaders\world0\gbuffers_entities_glowing.fsh

**Ruta original:** `shaders\world0\gbuffers_entities_glowing.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define GLOWING`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_entities_glowing.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_entities_glowing.vsh.md`

# shaders\world0\gbuffers_entities_glowing.vsh

**Ruta original:** `shaders\world0\gbuffers_entities_glowing.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define GLOWING`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_entities_translucent.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_entities_translucent.fsh.md`

# shaders\world0\gbuffers_entities_translucent.fsh

**Ruta original:** `shaders\world0\gbuffers_entities_translucent.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITIES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_entities_translucent.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_entities_translucent.vsh.md`

# shaders\world0\gbuffers_entities_translucent.vsh

**Ruta original:** `shaders\world0\gbuffers_entities_translucent.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITIES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_hand.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_hand.fsh.md`

# shaders\world0\gbuffers_hand.fsh

**Ruta original:** `shaders\world0\gbuffers_hand.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define HAND`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_hand.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_hand.vsh.md`

# shaders\world0\gbuffers_hand.vsh

**Ruta original:** `shaders\world0\gbuffers_hand.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define HAND`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_hand_water.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_hand_water.fsh.md`

# shaders\world0\gbuffers_hand_water.fsh

**Ruta original:** `shaders\world0\gbuffers_hand_water.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define HAND`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_hand_water.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_hand_water.vsh.md`

# shaders\world0\gbuffers_hand_water.vsh

**Ruta original:** `shaders\world0\gbuffers_hand_water.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define HAND`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_skybasic.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_skybasic.fsh.md`

# shaders\world0\gbuffers_skybasic.fsh

**Ruta original:** `shaders\world0\gbuffers_skybasic.fsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 3

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_skybasic.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_skybasic.vsh.md`

# shaders\world0\gbuffers_skybasic.vsh

**Ruta original:** `shaders\world0\gbuffers_skybasic.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 3

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_skytextured.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_skytextured.fsh.md`

# shaders\world0\gbuffers_skytextured.fsh

**Ruta original:** `shaders\world0\gbuffers_skytextured.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D texture;`
- `uniform int renderStage;`

## Defines / Preprocesador

- `#if RESOURCEPACK_SKY != 0`
- `#endif`
- `#if RESOURCEPACK_SKY != 0`
- `#if RESOURCEPACK_SKY == 3`
- `#endif`
- `#if RESOURCEPACK_SKY == 1`
- `#else`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float interleaved_gradientNoise()` — línea 11
- `void main()` — línea 20

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_skytextured.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_skytextured.vsh.md`

# shaders\world0\gbuffers_skytextured.vsh

**Ruta original:** `shaders\world0\gbuffers_skytextured.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#if RESOURCEPACK_SKY != 0`
- `#endif`
- `#if RESOURCEPACK_SKY != 0`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#endif`

## Constantes detectadas

- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`

## Funciones detectadas (heurística)

- `void main()` — línea 27

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_spidereyes.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_spidereyes.fsh.md`

# shaders\world0\gbuffers_spidereyes.fsh

**Ruta original:** `shaders\world0\gbuffers_spidereyes.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define SPIDER_EYES`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_spidereyes.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_spidereyes.vsh.md`

# shaders\world0\gbuffers_spidereyes.vsh

**Ruta original:** `shaders\world0\gbuffers_spidereyes.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define SPIDER_EYES`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_terrain.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_terrain.fsh.md`

# shaders\world0\gbuffers_terrain.fsh

**Ruta original:** `shaders\world0\gbuffers_terrain.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`
- `#define WORLD`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_terrain.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_terrain.vsh.md`

# shaders\world0\gbuffers_terrain.vsh

**Ruta original:** `shaders\world0\gbuffers_terrain.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`
- `#define WORLD`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_textured.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_textured.fsh.md`

# shaders\world0\gbuffers_textured.fsh

**Ruta original:** `shaders\world0\gbuffers_textured.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define PARTICLES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_textured.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_textured.vsh.md`

# shaders\world0\gbuffers_textured.vsh

**Ruta original:** `shaders\world0\gbuffers_textured.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define PARTICLES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_textured_lit.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_textured_lit.fsh.md`

# shaders\world0\gbuffers_textured_lit.fsh

**Ruta original:** `shaders\world0\gbuffers_textured_lit.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LIT`
- `#define PARTICLES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_textured_lit.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_textured_lit.vsh.md`

# shaders\world0\gbuffers_textured_lit.vsh

**Ruta original:** `shaders\world0\gbuffers_textured_lit.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LIT`
- `#define PARTICLES`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_water.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_water.fsh.md`

# shaders\world0\gbuffers_water.fsh

**Ruta original:** `shaders\world0\gbuffers_water.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_water.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_water.vsh.md`

# shaders\world0\gbuffers_water.vsh

**Ruta original:** `shaders\world0\gbuffers_water.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_weather.fsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_weather.fsh.md`

# shaders\world0\gbuffers_weather.fsh

**Ruta original:** `shaders\world0\gbuffers_weather.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WEATHER`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_gbuffers_weather.vsh.md

**Fuente:** `docs\lib\shaders_world0_gbuffers_weather.vsh.md`

# shaders\world0\gbuffers_weather.vsh

**Ruta original:** `shaders\world0\gbuffers_weather.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WEATHER`
- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_setup.csh.md

**Fuente:** `docs\lib\shaders_world0_setup.csh.md`

# shaders\world0\setup.csh

**Ruta original:** `shaders\world0\setup.csh`

## Includes

- `/lib/settings.glsl`
- `/dimensions/setup.csh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define RENDER_SETUP`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_shadow.fsh.md

**Fuente:** `docs\lib\shaders_world0_shadow.fsh.md`

# shaders\world0\shadow.fsh

**Ruta original:** `shaders\world0\shadow.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D tex;`
- `uniform sampler2D noisetex;`

## Defines / Preprocesador

- `#ifdef Stochastic_Transparent_Shadows`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float blueNoise()` — línea 17
- `void main()` — línea 22

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_shadow.vsh.md

**Fuente:** `docs\lib\shaders_world0_shadow.vsh.md`

# shaders\world0\shadow.vsh

**Ruta original:** `shaders\world0\shadow.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/Shadow_Params.glsl`
- `/lib/bokeh.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/voxel_common.glsl`
- `/lib/voxel_write.glsl`
- `/lib/DistantHorizons_projections.glsl`

## Uniforms / Variables detectadas

- `uniform mat4 shadowProjectionInverse;`
- `uniform mat4 shadowProjection;`
- `uniform mat4 shadowModelViewInverse;`
- `uniform mat4 shadowModelView;`
- `uniform mat4 gbufferModelView;`
- `uniform mat4 gbufferModelViewInverse;`
- `uniform mat4 gbufferProjection;`
- `uniform mat4 gbufferProjectionInverse;`
- `uniform int hideGUI;`
- `uniform vec3 cameraPosition;`
- `uniform float frameTimeCounter;`
- `uniform int frameCounter;`
- `uniform float screenBrightness;`
- `uniform vec3 sunVec;`
- `uniform float aspectRatio;`
- `uniform float sunElevation;`
- `uniform vec3 sunPosition;`
- `uniform float lightSign;`
- `uniform float cosFov;`
- `uniform vec3 shadowViewDir;`
- `uniform vec3 shadowCamera;`
- `uniform vec3 shadowLightVec;`
- `uniform float shadowMaxProj;`
- `uniform int blockEntityId;`
- `uniform int entityId;`
- `uniform usampler1D texBlockData;`
- `uniform int currentRenderedItemId;`
- `uniform int renderStage;`
- `uniform float dhFarPlane;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#define RENDER_SHADOW`
- `#define SHADOW_MAP_BIAS 0.5`
- `#ifdef IS_LPV_ENABLED`
- `#ifdef IRIS_FEATURE_BLOCK_EMISSION_ATTRIBUTE`
- `#else`
- `#endif`
- `#ifdef LPV_ENTITY_LIGHTS`
- `#endif`
- `#endif`
- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`
- `#if defined IS_LPV_ENABLED || defined WAVY_PLANTS`
- `#endif`
- `#if defined IS_LPV_ENABLED && defined MC_GL_EXT_shader_image_load_store`
- `#endif`
- `#ifdef WAVY_PLANTS`
- `#endif`
- `#ifdef DISTORT_SHADOWMAP`
- `#else`
- `#endif`

## Constantes detectadas

- `const float PI = 3.1415927;`
- `const float PI48 = 150.796447372*WAVY_SPEED;`

## Funciones detectadas (heurística)

- `vec2 calcWave(in vec3 pos)` — línea 78
- `vec3 calcMovePlants(in vec3 pos)` — línea 86
- `vec3 calcWaveLeaves(in vec3 pos, in float fm, in float mm, in float ma, in float f0, in float f1, in float f2, in float f3, in float f4, in float f5)` — línea 92
- `vec3 calcMoveLeaves(in vec3 pos, in float f0, in float f1, in float f2, in float f3, in float f4, in float f5, in vec3 amp1, in vec3 amp2)` — línea 100
- `vec4 toClipSpace3(vec3 viewSpacePosition)` — línea 133
- `vec3 viewToWorld(vec3 viewPos)` — línea 139
- `void main()` — línea 150

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world0_shadowcomp.csh.md

**Fuente:** `docs\lib\shaders_world0_shadowcomp.csh.md`

# shaders\world0\shadowcomp.csh

**Ruta original:** `shaders\world0\shadowcomp.csh`

## Includes

- `/lib/settings.glsl`
- `/dimensions/shadowcomp.csh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite.fsh.md`

# shaders\world1\composite.fsh

**Ruta original:** `shaders\world1\composite.fsh`

## Includes

- `/dimensions/fogBehindTranslucent_pass.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite.vsh.md`

# shaders\world1\composite.vsh

**Ruta original:** `shaders\world1\composite.vsh`

## Includes

- `/dimensions/fogBehindTranslucent_pass.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite1.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite1.fsh.md`

# shaders\world1\composite1.fsh

**Ruta original:** `shaders\world1\composite1.fsh`

## Includes

- `/dimensions/composite.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite1.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite1.vsh.md`

# shaders\world1\composite1.vsh

**Ruta original:** `shaders\world1\composite1.vsh`

## Includes

- `/dimensions/composite.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite10.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite10.fsh.md`

# shaders\world1\composite10.fsh

**Ruta original:** `shaders\world1\composite10.fsh`

## Includes

- `/dimensions/composite9.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite10.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite10.vsh.md`

# shaders\world1\composite10.vsh

**Ruta original:** `shaders\world1\composite10.vsh`

## Includes

- `/dimensions/composite9.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite11.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite11.fsh.md`

# shaders\world1\composite11.fsh

**Ruta original:** `shaders\world1\composite11.fsh`

## Includes

- `/dimensions/composite10.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite11.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite11.vsh.md`

# shaders\world1\composite11.vsh

**Ruta original:** `shaders\world1\composite11.vsh`

## Includes

- `/dimensions/composite10.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite12.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite12.fsh.md`

# shaders\world1\composite12.fsh

**Ruta original:** `shaders\world1\composite12.fsh`

## Includes

- `/dimensions/composite11.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite12.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite12.vsh.md`

# shaders\world1\composite12.vsh

**Ruta original:** `shaders\world1\composite12.vsh`

## Includes

- `/dimensions/composite11.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite13.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite13.fsh.md`

# shaders\world1\composite13.fsh

**Ruta original:** `shaders\world1\composite13.fsh`

## Includes

- `/dimensions/composite12.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite13.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite13.vsh.md`

# shaders\world1\composite13.vsh

**Ruta original:** `shaders\world1\composite13.vsh`

## Includes

- `/dimensions/composite12.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define OVERWORLD_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite2.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite2.fsh.md`

# shaders\world1\composite2.fsh

**Ruta original:** `shaders\world1\composite2.fsh`

## Includes

- `/dimensions/composite1.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite2.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite2.vsh.md`

# shaders\world1\composite2.vsh

**Ruta original:** `shaders\world1\composite2.vsh`

## Includes

- `/dimensions/composite1.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite3.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite3.fsh.md`

# shaders\world1\composite3.fsh

**Ruta original:** `shaders\world1\composite3.fsh`

## Includes

- `/dimensions/composite2.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite3.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite3.vsh.md`

# shaders\world1\composite3.vsh

**Ruta original:** `shaders\world1\composite3.vsh`

## Includes

- `/dimensions/composite2.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite4.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite4.fsh.md`

# shaders\world1\composite4.fsh

**Ruta original:** `shaders\world1\composite4.fsh`

## Includes

- `/dimensions/composite3.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite4.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite4.vsh.md`

# shaders\world1\composite4.vsh

**Ruta original:** `shaders\world1\composite4.vsh`

## Includes

- `/dimensions/composite3.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite5.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite5.fsh.md`

# shaders\world1\composite5.fsh

**Ruta original:** `shaders\world1\composite5.fsh`

## Includes

- `/dimensions/composite4.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite5.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite5.vsh.md`

# shaders\world1\composite5.vsh

**Ruta original:** `shaders\world1\composite5.vsh`

## Includes

- `/dimensions/composite4.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite6.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite6.fsh.md`

# shaders\world1\composite6.fsh

**Ruta original:** `shaders\world1\composite6.fsh`

## Includes

- `/dimensions/composite5.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite6.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite6.vsh.md`

# shaders\world1\composite6.vsh

**Ruta original:** `shaders\world1\composite6.vsh`

## Includes

- `/dimensions/composite5.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite7.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite7.fsh.md`

# shaders\world1\composite7.fsh

**Ruta original:** `shaders\world1\composite7.fsh`

## Includes

- `/dimensions/composite6.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite7.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite7.vsh.md`

# shaders\world1\composite7.vsh

**Ruta original:** `shaders\world1\composite7.vsh`

## Includes

- `/dimensions/composite6.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite8.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite8.fsh.md`

# shaders\world1\composite8.fsh

**Ruta original:** `shaders\world1\composite8.fsh`

## Includes

- `/dimensions/composite7.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite8.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite8.vsh.md`

# shaders\world1\composite8.vsh

**Ruta original:** `shaders\world1\composite8.vsh`

## Includes

- `/dimensions/composite7.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite9.fsh.md

**Fuente:** `docs\lib\shaders_world1_composite9.fsh.md`

# shaders\world1\composite9.fsh

**Ruta original:** `shaders\world1\composite9.fsh`

## Includes

- `/dimensions/composite8.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_composite9.vsh.md

**Fuente:** `docs\lib\shaders_world1_composite9.vsh.md`

# shaders\world1\composite9.vsh

**Ruta original:** `shaders\world1\composite9.vsh`

## Includes

- `/dimensions/composite8.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_deferred.fsh.md

**Fuente:** `docs\lib\shaders_world1_deferred.fsh.md`

# shaders\world1\deferred.fsh

**Ruta original:** `shaders\world1\deferred.fsh`

## Includes

- `/dimensions/deferred.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_deferred.vsh.md

**Fuente:** `docs\lib\shaders_world1_deferred.vsh.md`

# shaders\world1\deferred.vsh

**Ruta original:** `shaders\world1\deferred.vsh`

## Includes

- `/dimensions/deferred.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_deferred1.fsh.md

**Fuente:** `docs\lib\shaders_world1_deferred1.fsh.md`

# shaders\world1\deferred1.fsh

**Ruta original:** `shaders\world1\deferred1.fsh`

## Includes

- `/dimensions/deferred1.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_deferred1.vsh.md

**Fuente:** `docs\lib\shaders_world1_deferred1.vsh.md`

# shaders\world1\deferred1.vsh

**Ruta original:** `shaders\world1\deferred1.vsh`

## Includes

- `/dimensions/deferred1.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_dh_terrain.fsh.md

**Fuente:** `docs\lib\shaders_world1_dh_terrain.fsh.md`

# shaders\world1\dh_terrain.fsh

**Ruta original:** `shaders\world1\dh_terrain.fsh`

## Includes

- `/dimensions/DH_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_dh_terrain.vsh.md

**Fuente:** `docs\lib\shaders_world1_dh_terrain.vsh.md`

# shaders\world1\dh_terrain.vsh

**Ruta original:** `shaders\world1\dh_terrain.vsh`

## Includes

- `/dimensions/DH_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_dh_water.fsh.md

**Fuente:** `docs\lib\shaders_world1_dh_water.fsh.md`

# shaders\world1\dh_water.fsh

**Ruta original:** `shaders\world1\dh_water.fsh`

## Includes

- `/dimensions/DH_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_dh_water.vsh.md

**Fuente:** `docs\lib\shaders_world1_dh_water.vsh.md`

# shaders\world1\dh_water.vsh

**Ruta original:** `shaders\world1\dh_water.vsh`

## Includes

- `/dimensions/DH_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_final.fsh.md

**Fuente:** `docs\lib\shaders_world1_final.fsh.md`

# shaders\world1\final.fsh

**Ruta original:** `shaders\world1\final.fsh`

## Includes

- `/dimensions/final.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_final.vsh.md

**Fuente:** `docs\lib\shaders_world1_final.vsh.md`

# shaders\world1\final.vsh

**Ruta original:** `shaders\world1\final.vsh`

## Includes

- `/dimensions/final.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_armor_glint.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_armor_glint.fsh.md`

# shaders\world1\gbuffers_armor_glint.fsh

**Ruta original:** `shaders\world1\gbuffers_armor_glint.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENCHANT_GLINT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_armor_glint.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_armor_glint.vsh.md`

# shaders\world1\gbuffers_armor_glint.vsh

**Ruta original:** `shaders\world1\gbuffers_armor_glint.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENCHANT_GLINT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_basic.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_basic.fsh.md`

# shaders\world1\gbuffers_basic.fsh

**Ruta original:** `shaders\world1\gbuffers_basic.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LINES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_basic.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_basic.vsh.md`

# shaders\world1\gbuffers_basic.vsh

**Ruta original:** `shaders\world1\gbuffers_basic.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define LINES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_beaconbeam.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_beaconbeam.fsh.md`

# shaders\world1\gbuffers_beaconbeam.fsh

**Ruta original:** `shaders\world1\gbuffers_beaconbeam.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BEACON_BEAM`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_beaconbeam.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_beaconbeam.vsh.md`

# shaders\world1\gbuffers_beaconbeam.vsh

**Ruta original:** `shaders\world1\gbuffers_beaconbeam.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BEACON_BEAM`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_block.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_block.fsh.md`

# shaders\world1\gbuffers_block.fsh

**Ruta original:** `shaders\world1\gbuffers_block.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define BLOCKENTITIES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_block.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_block.vsh.md`

# shaders\world1\gbuffers_block.vsh

**Ruta original:** `shaders\world1\gbuffers_block.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define BLOCKENTITIES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_block_translucent.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_block_translucent.fsh.md`

# shaders\world1\gbuffers_block_translucent.fsh

**Ruta original:** `shaders\world1\gbuffers_block_translucent.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BLOCKENTITIES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_block_translucent.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_block_translucent.vsh.md`

# shaders\world1\gbuffers_block_translucent.vsh

**Ruta original:** `shaders\world1\gbuffers_block_translucent.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define BLOCKENTITIES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_damagedblock.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_damagedblock.fsh.md`

# shaders\world1\gbuffers_damagedblock.fsh

**Ruta original:** `shaders\world1\gbuffers_damagedblock.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`
- `#define DAMAGE_BLOCK_EFFECT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_damagedblock.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_damagedblock.vsh.md`

# shaders\world1\gbuffers_damagedblock.vsh

**Ruta original:** `shaders\world1\gbuffers_damagedblock.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`
- `#define DAMAGE_BLOCK_EFFECT`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_entities.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_entities.fsh.md`

# shaders\world1\gbuffers_entities.fsh

**Ruta original:** `shaders\world1\gbuffers_entities.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define ENTITIES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_entities.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_entities.vsh.md`

# shaders\world1\gbuffers_entities.vsh

**Ruta original:** `shaders\world1\gbuffers_entities.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITIES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_entities_glowing.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_entities_glowing.fsh.md`

# shaders\world1\gbuffers_entities_glowing.fsh

**Ruta original:** `shaders\world1\gbuffers_entities_glowing.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define GLOWING`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_entities_glowing.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_entities_glowing.vsh.md`

# shaders\world1\gbuffers_entities_glowing.vsh

**Ruta original:** `shaders\world1\gbuffers_entities_glowing.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define GLOWING`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_entities_translucent.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_entities_translucent.fsh.md`

# shaders\world1\gbuffers_entities_translucent.fsh

**Ruta original:** `shaders\world1\gbuffers_entities_translucent.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITIES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_entities_translucent.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_entities_translucent.vsh.md`

# shaders\world1\gbuffers_entities_translucent.vsh

**Ruta original:** `shaders\world1\gbuffers_entities_translucent.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define ENTITIES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_hand.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_hand.fsh.md`

# shaders\world1\gbuffers_hand.fsh

**Ruta original:** `shaders\world1\gbuffers_hand.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define HAND`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_hand.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_hand.vsh.md`

# shaders\world1\gbuffers_hand.vsh

**Ruta original:** `shaders\world1\gbuffers_hand.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define WORLD`
- `#define HAND`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_hand_water.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_hand_water.fsh.md`

# shaders\world1\gbuffers_hand_water.fsh

**Ruta original:** `shaders\world1\gbuffers_hand_water.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define HAND`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_hand_water.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_hand_water.vsh.md`

# shaders\world1\gbuffers_hand_water.vsh

**Ruta original:** `shaders\world1\gbuffers_hand_water.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define HAND`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_skybasic.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_skybasic.fsh.md`

# shaders\world1\gbuffers_skybasic.fsh

**Ruta original:** `shaders\world1\gbuffers_skybasic.fsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 5

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_skybasic.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_skybasic.vsh.md`

# shaders\world1\gbuffers_skybasic.vsh

**Ruta original:** `shaders\world1\gbuffers_skybasic.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 3

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_skytextured.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_skytextured.fsh.md`

# shaders\world1\gbuffers_skytextured.fsh

**Ruta original:** `shaders\world1\gbuffers_skytextured.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

- `uniform sampler2D texture;`
- `uniform int renderStage;`

## Defines / Preprocesador

- `#if RESOURCEPACK_SKY != 0`
- `#endif`
- `#if RESOURCEPACK_SKY != 0`
- `#if RESOURCEPACK_SKY == 3`
- `#endif`
- `#if RESOURCEPACK_SKY == 1`
- `#else`
- `#endif`
- `#else`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `float interleaved_gradientNoise()` — línea 11
- `void main()` — línea 20

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_skytextured.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_skytextured.vsh.md`

# shaders\world1\gbuffers_skytextured.vsh

**Ruta original:** `shaders\world1\gbuffers_skytextured.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/res_params.glsl`

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#if RESOURCEPACK_SKY != 0`
- `#endif`
- `#if RESOURCEPACK_SKY != 0`
- `#ifdef TAA_UPSCALING`
- `#endif`
- `#ifdef TAA`
- `#endif`
- `#endif`

## Constantes detectadas

- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`

## Funciones detectadas (heurística)

- `void main()` — línea 27

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_spidereyes.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_spidereyes.fsh.md`

# shaders\world1\gbuffers_spidereyes.fsh

**Ruta original:** `shaders\world1\gbuffers_spidereyes.fsh`

## Includes

- `/dimensions/all_vanilla_emissives.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define SPIDER_EYES`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_spidereyes.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_spidereyes.vsh.md`

# shaders\world1\gbuffers_spidereyes.vsh

**Ruta original:** `shaders\world1\gbuffers_spidereyes.vsh`

## Includes

- `/dimensions/all_vanilla_emissives.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define SPIDER_EYES`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_terrain.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_terrain.fsh.md`

# shaders\world1\gbuffers_terrain.fsh

**Ruta original:** `shaders\world1\gbuffers_terrain.fsh`

## Includes

- `/dimensions/all_solid.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`
- `#define WORLD`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_terrain.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_terrain.vsh.md`

# shaders\world1\gbuffers_terrain.vsh

**Ruta original:** `shaders\world1\gbuffers_terrain.vsh`

## Includes

- `/dimensions/all_solid.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`
- `#define WORLD`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_textured.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_textured.fsh.md`

# shaders\world1\gbuffers_textured.fsh

**Ruta original:** `shaders\world1\gbuffers_textured.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_textured.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_textured.vsh.md`

# shaders\world1\gbuffers_textured.vsh

**Ruta original:** `shaders\world1\gbuffers_textured.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_textured_lit.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_textured_lit.fsh.md`

# shaders\world1\gbuffers_textured_lit.fsh

**Ruta original:** `shaders\world1\gbuffers_textured_lit.fsh`

## Includes

- `/dimensions/all_particles.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_textured_lit.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_textured_lit.vsh.md`

# shaders\world1\gbuffers_textured_lit.vsh

**Ruta original:** `shaders\world1\gbuffers_textured_lit.vsh`

## Includes

- `/dimensions/all_particles.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define PARTICLES`
- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_water.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_water.fsh.md`

# shaders\world1\gbuffers_water.fsh

**Ruta original:** `shaders\world1\gbuffers_water.fsh`

## Includes

- `/dimensions/all_translucent.fsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_water.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_water.vsh.md`

# shaders\world1\gbuffers_water.vsh

**Ruta original:** `shaders\world1\gbuffers_water.vsh`

## Includes

- `/dimensions/all_translucent.vsh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define END_SHADER`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_weather.fsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_weather.fsh.md`

# shaders\world1\gbuffers_weather.fsh

**Ruta original:** `shaders\world1\gbuffers_weather.fsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform sampler2D texture;`
- `uniform sampler2D gaux1;`
- `uniform vec4 lightCol;`
- `uniform vec3 sunVec;`
- `uniform vec2 texelSize;`
- `uniform float skyIntensityNight;`
- `uniform float skyIntensity;`
- `uniform float rainStrength;`
- `uniform mat4 gbufferProjectionInverse;`

## Defines / Preprocesador

- `#define diagonal3(m) vec3((m)[0].x, (m)[1].y, m[2].z)`
- `#define  projMAD(m, v) (diagonal3(m) * (v) + (m)[3].xyz)`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `vec3 toLinear(vec3 sRGB)` — línea 21
- `vec3 toScreenSpaceVector(vec3 p)` — línea 26
- `void main()` — línea 38

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_gbuffers_weather.vsh.md

**Fuente:** `docs\lib\shaders_world1_gbuffers_weather.vsh.md`

# shaders\world1\gbuffers_weather.vsh

**Ruta original:** `shaders\world1\gbuffers_weather.vsh`

## Includes

(ninguno detectado)

## Uniforms / Variables detectadas

- `uniform vec2 texelSize;`
- `uniform int framemod8;`

## Defines / Preprocesador

- `#define TAA`
- `#ifdef TAA`
- `#endif`

## Constantes detectadas

- `const vec2[8] offsets = vec2[8](vec2(1./8.,-3./8.),`

## Funciones detectadas (heurística)

- `void main()` — línea 30

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_setup.csh.md

**Fuente:** `docs\lib\shaders_world1_setup.csh.md`

# shaders\world1\setup.csh

**Ruta original:** `shaders\world1\setup.csh`

## Includes

- `/lib/settings.glsl`
- `/dimensions/setup.csh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

- `#define RENDER_SETUP`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_shadow.fsh.md

**Fuente:** `docs\lib\shaders_world1_shadow.fsh.md`

# shaders\world1\shadow.fsh

**Ruta original:** `shaders\world1\shadow.fsh`

## Includes

- `/lib/settings.glsl`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 8

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_shadow.vsh.md

**Fuente:** `docs\lib\shaders_world1_shadow.vsh.md`

# shaders\world1\shadow.vsh

**Ruta original:** `shaders\world1\shadow.vsh`

## Includes

- `/lib/settings.glsl`
- `/lib/blocks.glsl`
- `/lib/entities.glsl`
- `/lib/voxel_common.glsl`
- `/lib/voxel_write.glsl`

## Uniforms / Variables detectadas

- `uniform usampler1D texBlockData;`
- `uniform mat4 shadowModelViewInverse;`
- `uniform int renderStage;`
- `uniform vec3 chunkOffset;`
- `uniform vec3 cameraPosition;`
- `uniform int currentRenderedItemId;`
- `uniform int blockEntityId;`
- `uniform int entityId;`

## Defines / Preprocesador

- `#ifdef IS_LPV_ENABLED`
- `#endif`
- `#define RENDER_SHADOW`
- `#ifdef IS_LPV_ENABLED`
- `#ifdef IRIS_FEATURE_BLOCK_EMISSION_ATTRIBUTE`
- `#else`
- `#endif`
- `#ifdef LPV_ENTITY_LIGHTS`
- `#endif`
- `#endif`
- `#if defined IS_LPV_ENABLED && defined MC_GL_EXT_shader_image_load_store`
- `#ifdef LPV_NOSHADOW_HACK`
- `#else`
- `#endif`
- `#endif`

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

- `void main()` — línea 48

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

## shaders_world1_shadowcomp.csh.md

**Fuente:** `docs\lib\shaders_world1_shadowcomp.csh.md`

# shaders\world1\shadowcomp.csh

**Ruta original:** `shaders\world1\shadowcomp.csh`

## Includes

- `/lib/settings.glsl`
- `/dimensions/shadowcomp.csh`

## Uniforms / Variables detectadas

(ninguno detectado)

## Defines / Preprocesador

(ninguno detectado)

## Constantes detectadas

(ninguno detectado)

## Funciones detectadas (heurística)

(ninguna detectada con heurística)

## Notas heurísticas

- Este archivo fue analizado con heurísticas simples. Revise manualmente si necesita firmas exactas o comentarios.


---

