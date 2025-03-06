import ./Qt5Quick_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qsgmaterialrhishader.cpp", cflags).}


type QSGMaterialRhiShaderFlagEnum* = distinct cint
template UpdatesGraphicsPipelineState*(_: type QSGMaterialRhiShaderFlagEnum): untyped = 1


type QSGMaterialRhiShaderStageEnum* = distinct cint
template VertexStage*(_: type QSGMaterialRhiShaderStageEnum): untyped = 0
template FragmentStage*(_: type QSGMaterialRhiShaderStageEnum): untyped = 1


type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum* = distinct cint
template Zero*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 0
template One*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 1
template SrcColor*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 2
template OneMinusSrcColor*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 3
template DstColor*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 4
template OneMinusDstColor*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 5
template SrcAlpha*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 6
template OneMinusSrcAlpha*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 7
template DstAlpha*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 8
template OneMinusDstAlpha*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 9
template ConstantColor*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 10
template OneMinusConstantColor*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 11
template ConstantAlpha*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 12
template OneMinusConstantAlpha*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 13
template SrcAlphaSaturate*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 14
template Src1Color*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 15
template OneMinusSrc1Color*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 16
template Src1Alpha*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 17
template OneMinusSrc1Alpha*(_: type QSGMaterialRhiShaderGraphicsPipelineStateBlendFactorEnum): untyped = 18


type QSGMaterialRhiShaderGraphicsPipelineStateColorMaskComponentEnum* = distinct cint
template R*(_: type QSGMaterialRhiShaderGraphicsPipelineStateColorMaskComponentEnum): untyped = 1
template G*(_: type QSGMaterialRhiShaderGraphicsPipelineStateColorMaskComponentEnum): untyped = 2
template B*(_: type QSGMaterialRhiShaderGraphicsPipelineStateColorMaskComponentEnum): untyped = 4
template A*(_: type QSGMaterialRhiShaderGraphicsPipelineStateColorMaskComponentEnum): untyped = 8


type QSGMaterialRhiShaderGraphicsPipelineStateCullModeEnum* = distinct cint
template CullNone*(_: type QSGMaterialRhiShaderGraphicsPipelineStateCullModeEnum): untyped = 0
template CullFront*(_: type QSGMaterialRhiShaderGraphicsPipelineStateCullModeEnum): untyped = 1
template CullBack*(_: type QSGMaterialRhiShaderGraphicsPipelineStateCullModeEnum): untyped = 2


import ./gen_qsgmaterialrhishader_types
export gen_qsgmaterialrhishader_types

import
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qmatrix4x4_types,
  ./gen_qsgmaterial_types,
  ./gen_qsgmaterialshader
export
  gen_qrect_types,
  gen_qmatrix4x4_types,
  gen_qsgmaterial_types,
  gen_qsgmaterialshader

type cQSGMaterialRhiShader*{.exportc: "QSGMaterialRhiShader", incompleteStruct.} = object
type cQSGMaterialRhiShaderRenderState*{.exportc: "QSGMaterialRhiShader__RenderState", incompleteStruct.} = object
type cQSGMaterialRhiShaderGraphicsPipelineState*{.exportc: "QSGMaterialRhiShader__GraphicsPipelineState", incompleteStruct.} = object

proc fcQSGMaterialRhiShader_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialRhiShader_updateUniformData".}
proc fcQSGMaterialRhiShader_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialRhiShader_updateGraphicsPipelineState".}
proc fcQSGMaterialRhiShader_flags(self: pointer, ): cint {.importc: "QSGMaterialRhiShader_flags".}
proc fcQSGMaterialRhiShader_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterialRhiShader_setFlag".}
proc fcQSGMaterialRhiShader_attributeNames(self: pointer, ): cstring {.importc: "QSGMaterialRhiShader_attributeNames".}
proc fcQSGMaterialRhiShader_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterialRhiShader_setFlag2".}
type cQSGMaterialRhiShaderVTable = object
  destructor*: proc(vtbl: ptr cQSGMaterialRhiShaderVTable, self: ptr cQSGMaterialRhiShader) {.cdecl, raises:[], gcsafe.}
  updateUniformData*: proc(vtbl, self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateGraphicsPipelineState*: proc(vtbl, self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl, raises: [], gcsafe.}
  attributeNames*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  activate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  deactivate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateState*: proc(vtbl, self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.cdecl, raises: [], gcsafe.}
  compile*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  initialize*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  vertexShader*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
  fragmentShader*: proc(vtbl, self: pointer, ): cstring {.cdecl, raises: [], gcsafe.}
proc fcQSGMaterialRhiShader_virtualbase_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialRhiShader_virtualbase_updateUniformData".}
proc fcQSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState".}
proc fcQSGMaterialRhiShader_virtualbase_attributeNames(self: pointer, ): cstring {.importc: "QSGMaterialRhiShader_virtualbase_attributeNames".}
proc fcQSGMaterialRhiShader_virtualbase_activate(self: pointer, ): void {.importc: "QSGMaterialRhiShader_virtualbase_activate".}
proc fcQSGMaterialRhiShader_virtualbase_deactivate(self: pointer, ): void {.importc: "QSGMaterialRhiShader_virtualbase_deactivate".}
proc fcQSGMaterialRhiShader_virtualbase_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.importc: "QSGMaterialRhiShader_virtualbase_updateState".}
proc fcQSGMaterialRhiShader_virtualbase_compile(self: pointer, ): void {.importc: "QSGMaterialRhiShader_virtualbase_compile".}
proc fcQSGMaterialRhiShader_virtualbase_initialize(self: pointer, ): void {.importc: "QSGMaterialRhiShader_virtualbase_initialize".}
proc fcQSGMaterialRhiShader_virtualbase_vertexShader(self: pointer, ): cstring {.importc: "QSGMaterialRhiShader_virtualbase_vertexShader".}
proc fcQSGMaterialRhiShader_virtualbase_fragmentShader(self: pointer, ): cstring {.importc: "QSGMaterialRhiShader_virtualbase_fragmentShader".}
proc fcQSGMaterialRhiShader_protectedbase_setShaderFileName(self: pointer, stage: cint, filename: struct_miqt_string): void {.importc: "QSGMaterialRhiShader_protectedbase_setShaderFileName".}
proc fcQSGMaterialRhiShader_protectedbase_setShader(self: pointer, stage: cint, shader: ptr cQShader): void {.importc: "QSGMaterialRhiShader_protectedbase_setShader".}
proc fcQSGMaterialRhiShader_protectedbase_setShaderSourceFile(self: pointer, typeVal: cQOpenGLShaderShaderType, sourceFile: struct_miqt_string): void {.importc: "QSGMaterialRhiShader_protectedbase_setShaderSourceFile".}
proc fcQSGMaterialRhiShader_protectedbase_setShaderSourceFiles(self: pointer, typeVal: cQOpenGLShaderShaderType, sourceFiles: struct_miqt_array): void {.importc: "QSGMaterialRhiShader_protectedbase_setShaderSourceFiles".}
proc fcQSGMaterialRhiShader_new(vtbl: pointer, ): ptr cQSGMaterialRhiShader {.importc: "QSGMaterialRhiShader_new".}
proc fcQSGMaterialRhiShader_delete(self: pointer) {.importc: "QSGMaterialRhiShader_delete".}
proc fcQSGMaterialRhiShaderRenderState_dirtyStates(self: pointer, ): cint {.importc: "QSGMaterialRhiShader__RenderState_dirtyStates".}
proc fcQSGMaterialRhiShaderRenderState_isMatrixDirty(self: pointer, ): bool {.importc: "QSGMaterialRhiShader__RenderState_isMatrixDirty".}
proc fcQSGMaterialRhiShaderRenderState_isOpacityDirty(self: pointer, ): bool {.importc: "QSGMaterialRhiShader__RenderState_isOpacityDirty".}
proc fcQSGMaterialRhiShaderRenderState_opacity(self: pointer, ): float32 {.importc: "QSGMaterialRhiShader__RenderState_opacity".}
proc fcQSGMaterialRhiShaderRenderState_combinedMatrix(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_combinedMatrix".}
proc fcQSGMaterialRhiShaderRenderState_modelViewMatrix(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_modelViewMatrix".}
proc fcQSGMaterialRhiShaderRenderState_projectionMatrix(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_projectionMatrix".}
proc fcQSGMaterialRhiShaderRenderState_viewportRect(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_viewportRect".}
proc fcQSGMaterialRhiShaderRenderState_deviceRect(self: pointer, ): pointer {.importc: "QSGMaterialRhiShader__RenderState_deviceRect".}
proc fcQSGMaterialRhiShaderRenderState_determinant(self: pointer, ): float32 {.importc: "QSGMaterialRhiShader__RenderState_determinant".}
proc fcQSGMaterialRhiShaderRenderState_devicePixelRatio(self: pointer, ): float32 {.importc: "QSGMaterialRhiShader__RenderState_devicePixelRatio".}
proc fcQSGMaterialRhiShaderRenderState_uniformData(self: pointer, ): struct_miqt_string {.importc: "QSGMaterialRhiShader__RenderState_uniformData".}
proc fcQSGMaterialRhiShaderRenderState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__RenderState_delete".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_new(param1: pointer): ptr cQSGMaterialRhiShaderGraphicsPipelineState {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_new".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_delete".}

proc updateUniformData*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialRhiShader_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

proc updateGraphicsPipelineState*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ps: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialRhiShader_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)

proc flags*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): cint =
  cint(fcQSGMaterialRhiShader_flags(self.h))

proc setFlag*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, flags: cint): void =
  fcQSGMaterialRhiShader_setFlag(self.h, cint(flags))

proc attributeNames*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): cstring =
  (fcQSGMaterialRhiShader_attributeNames(self.h))

proc setFlag*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, flags: cint, on: bool): void =
  fcQSGMaterialRhiShader_setFlag2(self.h, cint(flags), on)

type QSGMaterialRhiShaderupdateUniformDataProc* = proc(self: QSGMaterialRhiShader, state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool {.raises: [], gcsafe.}
type QSGMaterialRhiShaderupdateGraphicsPipelineStateProc* = proc(self: QSGMaterialRhiShader, state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ps: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool {.raises: [], gcsafe.}
type QSGMaterialRhiShaderattributeNamesProc* = proc(self: QSGMaterialRhiShader): cstring {.raises: [], gcsafe.}
type QSGMaterialRhiShaderactivateProc* = proc(self: QSGMaterialRhiShader): void {.raises: [], gcsafe.}
type QSGMaterialRhiShaderdeactivateProc* = proc(self: QSGMaterialRhiShader): void {.raises: [], gcsafe.}
type QSGMaterialRhiShaderupdateStateProc* = proc(self: QSGMaterialRhiShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void {.raises: [], gcsafe.}
type QSGMaterialRhiShadercompileProc* = proc(self: QSGMaterialRhiShader): void {.raises: [], gcsafe.}
type QSGMaterialRhiShaderinitializeProc* = proc(self: QSGMaterialRhiShader): void {.raises: [], gcsafe.}
type QSGMaterialRhiShadervertexShaderProc* = proc(self: QSGMaterialRhiShader): cstring {.raises: [], gcsafe.}
type QSGMaterialRhiShaderfragmentShaderProc* = proc(self: QSGMaterialRhiShader): cstring {.raises: [], gcsafe.}
type QSGMaterialRhiShaderVTable* = object
  vtbl: cQSGMaterialRhiShaderVTable
  updateUniformData*: QSGMaterialRhiShaderupdateUniformDataProc
  updateGraphicsPipelineState*: QSGMaterialRhiShaderupdateGraphicsPipelineStateProc
  attributeNames*: QSGMaterialRhiShaderattributeNamesProc
  activate*: QSGMaterialRhiShaderactivateProc
  deactivate*: QSGMaterialRhiShaderdeactivateProc
  updateState*: QSGMaterialRhiShaderupdateStateProc
  compile*: QSGMaterialRhiShadercompileProc
  initialize*: QSGMaterialRhiShaderinitializeProc
  vertexShader*: QSGMaterialRhiShadervertexShaderProc
  fragmentShader*: QSGMaterialRhiShaderfragmentShaderProc
proc QSGMaterialRhiShaderupdateUniformData*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialRhiShader_virtualbase_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

proc miqt_exec_callback_cQSGMaterialRhiShader_updateUniformData(vtbl: pointer, self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  let slotval1 = gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState(h: state)
  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)
  var virtualReturn = vtbl[].updateUniformData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSGMaterialRhiShaderupdateGraphicsPipelineState*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ps: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)

proc miqt_exec_callback_cQSGMaterialRhiShader_updateGraphicsPipelineState(vtbl: pointer, self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  let slotval1 = gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState(h: state)
  let slotval2 = gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState(h: ps)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)
  let slotval4 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)
  var virtualReturn = vtbl[].updateGraphicsPipelineState(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QSGMaterialRhiShaderattributeNames*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): cstring =
  (fcQSGMaterialRhiShader_virtualbase_attributeNames(self.h))

proc miqt_exec_callback_cQSGMaterialRhiShader_attributeNames(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  var virtualReturn = vtbl[].attributeNames(self)
  virtualReturn

proc QSGMaterialRhiShaderactivate*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): void =
  fcQSGMaterialRhiShader_virtualbase_activate(self.h)

proc miqt_exec_callback_cQSGMaterialRhiShader_activate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  vtbl[].activate(self)

proc QSGMaterialRhiShaderdeactivate*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): void =
  fcQSGMaterialRhiShader_virtualbase_deactivate(self.h)

proc miqt_exec_callback_cQSGMaterialRhiShader_deactivate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  vtbl[].deactivate(self)

proc QSGMaterialRhiShaderupdateState*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void =
  fcQSGMaterialRhiShader_virtualbase_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

proc miqt_exec_callback_cQSGMaterialRhiShader_updateState(vtbl: pointer, self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state)
  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)
  vtbl[].updateState(self, slotval1, slotval2, slotval3)

proc QSGMaterialRhiShadercompile*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): void =
  fcQSGMaterialRhiShader_virtualbase_compile(self.h)

proc miqt_exec_callback_cQSGMaterialRhiShader_compile(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  vtbl[].compile(self)

proc QSGMaterialRhiShaderinitialize*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): void =
  fcQSGMaterialRhiShader_virtualbase_initialize(self.h)

proc miqt_exec_callback_cQSGMaterialRhiShader_initialize(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  vtbl[].initialize(self)

proc QSGMaterialRhiShadervertexShader*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): cstring =
  (fcQSGMaterialRhiShader_virtualbase_vertexShader(self.h))

proc miqt_exec_callback_cQSGMaterialRhiShader_vertexShader(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  var virtualReturn = vtbl[].vertexShader(self)
  virtualReturn

proc QSGMaterialRhiShaderfragmentShader*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): cstring =
  (fcQSGMaterialRhiShader_virtualbase_fragmentShader(self.h))

proc miqt_exec_callback_cQSGMaterialRhiShader_fragmentShader(vtbl: pointer, self: pointer): cstring {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialRhiShaderVTable](vtbl)
  let self = QSGMaterialRhiShader(h: self)
  var virtualReturn = vtbl[].fragmentShader(self)
  virtualReturn

proc setShaderFileName*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, stage: cint, filename: string): void =
  fcQSGMaterialRhiShader_protectedbase_setShaderFileName(self.h, cint(stage), struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc setShader*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, stage: cint, shader: ptr QShader): void =
  fcQSGMaterialRhiShader_protectedbase_setShader(self.h, cint(stage), shader)

proc setShaderSourceFile*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, typeVal: QOpenGLShaderShaderType, sourceFile: string): void =
  fcQSGMaterialRhiShader_protectedbase_setShaderSourceFile(self.h, typeVal, struct_miqt_string(data: sourceFile, len: csize_t(len(sourceFile))))

proc setShaderSourceFiles*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, typeVal: QOpenGLShaderShaderType, sourceFiles: seq[string]): void =
  var sourceFiles_CArray = newSeq[struct_miqt_string](len(sourceFiles))
  for i in 0..<len(sourceFiles):
    sourceFiles_CArray[i] = struct_miqt_string(data: sourceFiles[i], len: csize_t(len(sourceFiles[i])))

  fcQSGMaterialRhiShader_protectedbase_setShaderSourceFiles(self.h, typeVal, struct_miqt_array(len: csize_t(len(sourceFiles)), data: if len(sourceFiles) == 0: nil else: addr(sourceFiles_CArray[0])))

proc create*(T: type gen_qsgmaterialrhishader_types.QSGMaterialRhiShader,
    vtbl: ref QSGMaterialRhiShaderVTable = nil): gen_qsgmaterialrhishader_types.QSGMaterialRhiShader =
  let vtbl = if vtbl == nil: new QSGMaterialRhiShaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSGMaterialRhiShaderVTable, _: ptr cQSGMaterialRhiShader) {.cdecl.} =
    let vtbl = cast[ref QSGMaterialRhiShaderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.updateUniformData):
    vtbl[].vtbl.updateUniformData = miqt_exec_callback_cQSGMaterialRhiShader_updateUniformData
  if not isNil(vtbl.updateGraphicsPipelineState):
    vtbl[].vtbl.updateGraphicsPipelineState = miqt_exec_callback_cQSGMaterialRhiShader_updateGraphicsPipelineState
  if not isNil(vtbl.attributeNames):
    vtbl[].vtbl.attributeNames = miqt_exec_callback_cQSGMaterialRhiShader_attributeNames
  if not isNil(vtbl.activate):
    vtbl[].vtbl.activate = miqt_exec_callback_cQSGMaterialRhiShader_activate
  if not isNil(vtbl.deactivate):
    vtbl[].vtbl.deactivate = miqt_exec_callback_cQSGMaterialRhiShader_deactivate
  if not isNil(vtbl.updateState):
    vtbl[].vtbl.updateState = miqt_exec_callback_cQSGMaterialRhiShader_updateState
  if not isNil(vtbl.compile):
    vtbl[].vtbl.compile = miqt_exec_callback_cQSGMaterialRhiShader_compile
  if not isNil(vtbl.initialize):
    vtbl[].vtbl.initialize = miqt_exec_callback_cQSGMaterialRhiShader_initialize
  if not isNil(vtbl.vertexShader):
    vtbl[].vtbl.vertexShader = miqt_exec_callback_cQSGMaterialRhiShader_vertexShader
  if not isNil(vtbl.fragmentShader):
    vtbl[].vtbl.fragmentShader = miqt_exec_callback_cQSGMaterialRhiShader_fragmentShader
  gen_qsgmaterialrhishader_types.QSGMaterialRhiShader(h: fcQSGMaterialRhiShader_new(addr(vtbl[]), ))

proc delete*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader) =
  fcQSGMaterialRhiShader_delete(self.h)
proc dirtyStates*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): cint =
  cint(fcQSGMaterialRhiShaderRenderState_dirtyStates(self.h))

proc isMatrixDirty*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): bool =
  fcQSGMaterialRhiShaderRenderState_isMatrixDirty(self.h)

proc isOpacityDirty*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): bool =
  fcQSGMaterialRhiShaderRenderState_isOpacityDirty(self.h)

proc opacity*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): float32 =
  fcQSGMaterialRhiShaderRenderState_opacity(self.h)

proc combinedMatrix*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_combinedMatrix(self.h))

proc modelViewMatrix*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_modelViewMatrix(self.h))

proc projectionMatrix*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_projectionMatrix(self.h))

proc viewportRect*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialRhiShaderRenderState_viewportRect(self.h))

proc deviceRect*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialRhiShaderRenderState_deviceRect(self.h))

proc determinant*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): float32 =
  fcQSGMaterialRhiShaderRenderState_determinant(self.h)

proc devicePixelRatio*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): float32 =
  fcQSGMaterialRhiShaderRenderState_devicePixelRatio(self.h)

proc uniformData*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ): seq[byte] =
  var v_bytearray = fcQSGMaterialRhiShaderRenderState_uniformData(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc delete*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState) =
  fcQSGMaterialRhiShaderRenderState_delete(self.h)
proc operatorAssign*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, param1: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState): void =
  fcQSGMaterialRhiShaderGraphicsPipelineState_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState,
    param1: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState): gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState =
  gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState(h: fcQSGMaterialRhiShaderGraphicsPipelineState_new(param1.h))

proc delete*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState) =
  fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self.h)
