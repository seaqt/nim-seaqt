import ./gen_qsgmaterialshader_types
export gen_qsgmaterialshader_types

type QSGMaterialRhiShader* = object of gen_qsgmaterialshader_types.QSGMaterialShader
type QSGMaterialRhiShaderRenderState* {.inheritable, pure.} = object
  h*: pointer
type QSGMaterialRhiShaderGraphicsPipelineState* {.inheritable, pure.} = object
  h*: pointer
