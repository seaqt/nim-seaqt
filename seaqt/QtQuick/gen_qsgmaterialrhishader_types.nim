import ./gen_qsgmaterialshader_types
export gen_qsgmaterialshader_types

type QSGMaterialRhiShader* = object of gen_qsgmaterialshader_types.QSGMaterialShader
proc `=copy`(dest: var QSGMaterialRhiShader, source: QSGMaterialRhiShader) {.error.}
proc `=sink`(dest: var QSGMaterialRhiShader, source: QSGMaterialRhiShader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

type QSGMaterialRhiShaderRenderState* {.inheritable.} = object
  h*: pointer
  owned*: bool

import ./qtquick_pkg

{.compile("gen_qsgmaterialrhishader.cpp", QtQuickCFlags).}

proc fcQSGMaterialRhiShaderRenderState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__RenderState_delete".}
proc `=destroy`(self: var QSGMaterialRhiShaderRenderState) =
  if self.owned: fcQSGMaterialRhiShaderRenderState_delete(self.h)

proc `=sink`(dest: var QSGMaterialRhiShaderRenderState, source: QSGMaterialRhiShaderRenderState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGMaterialRhiShaderRenderState, source: QSGMaterialRhiShaderRenderState) {.error.}
proc delete*(self: sink QSGMaterialRhiShaderRenderState) =
  let h = self.h
  wasMoved(self)
  fcQSGMaterialRhiShaderRenderState_delete(h)

type QSGMaterialRhiShaderGraphicsPipelineState* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_delete".}
proc `=destroy`(self: var QSGMaterialRhiShaderGraphicsPipelineState) =
  if self.owned: fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self.h)

proc `=sink`(dest: var QSGMaterialRhiShaderGraphicsPipelineState, source: QSGMaterialRhiShaderGraphicsPipelineState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGMaterialRhiShaderGraphicsPipelineState, source: QSGMaterialRhiShaderGraphicsPipelineState) {.error.}
proc delete*(self: sink QSGMaterialRhiShaderGraphicsPipelineState) =
  let h = self.h
  wasMoved(self)
  fcQSGMaterialRhiShaderGraphicsPipelineState_delete(h)

