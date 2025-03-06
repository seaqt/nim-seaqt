type QSGMaterialShader* {.inheritable.} = object
  h*: pointer
  owned*: bool

const cflags = gorge("pkg-config --cflags Qt5Quick") & " -fPIC"
{.compile("gen_qsgmaterialshader.cpp", cflags).}

proc fcQSGMaterialShader_delete(self: pointer) {.importc: "QSGMaterialShader_delete".}
proc `=destroy`(self: var QSGMaterialShader) =
  if self.owned: fcQSGMaterialShader_delete(self.h)

proc `=sink`(dest: var QSGMaterialShader, source: QSGMaterialShader) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGMaterialShader, source: QSGMaterialShader) {.error.}
proc delete*(self: sink QSGMaterialShader) =
  let h = self.h
  wasMoved(self)
  fcQSGMaterialShader_delete(h)

type QSGMaterialShaderRenderState* {.inheritable.} = object
  h*: pointer
  owned*: bool

proc fcQSGMaterialShaderRenderState_delete(self: pointer) {.importc: "QSGMaterialShader__RenderState_delete".}
proc `=destroy`(self: var QSGMaterialShaderRenderState) =
  if self.owned: fcQSGMaterialShaderRenderState_delete(self.h)

proc `=sink`(dest: var QSGMaterialShaderRenderState, source: QSGMaterialShaderRenderState) =
  `=destroy`(dest)
  wasMoved(dest)
  dest.h = source.h
  dest.owned = source.owned

proc `=copy`(dest: var QSGMaterialShaderRenderState, source: QSGMaterialShaderRenderState) {.error.}
proc delete*(self: sink QSGMaterialShaderRenderState) =
  let h = self.h
  wasMoved(self)
  fcQSGMaterialShaderRenderState_delete(h)

