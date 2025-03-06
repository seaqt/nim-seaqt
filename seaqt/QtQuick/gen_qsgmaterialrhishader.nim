import ./Qt5Quick_libs

{.push raises: [].}

from system/ansi_c import c_free

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

proc fcQSGMaterialRhiShader_new(): ptr cQSGMaterialRhiShader {.importc: "QSGMaterialRhiShader_new".}
proc fcQSGMaterialRhiShader_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialRhiShader_updateUniformData".}
proc fcQSGMaterialRhiShader_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialRhiShader_updateGraphicsPipelineState".}
proc fcQSGMaterialRhiShader_flags(self: pointer, ): cint {.importc: "QSGMaterialRhiShader_flags".}
proc fcQSGMaterialRhiShader_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterialRhiShader_setFlag".}
proc fcQSGMaterialRhiShader_attributeNames(self: pointer, ): cstring {.importc: "QSGMaterialRhiShader_attributeNames".}
proc fcQSGMaterialRhiShader_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterialRhiShader_setFlag2".}
proc fQSGMaterialRhiShader_virtualbase_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool{.importc: "QSGMaterialRhiShader_virtualbase_updateUniformData".}
proc fcQSGMaterialRhiShader_override_virtual_updateUniformData(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_updateUniformData".}
proc fQSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool{.importc: "QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState".}
proc fcQSGMaterialRhiShader_override_virtual_updateGraphicsPipelineState(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_updateGraphicsPipelineState".}
proc fQSGMaterialRhiShader_virtualbase_attributeNames(self: pointer, ): cstring{.importc: "QSGMaterialRhiShader_virtualbase_attributeNames".}
proc fcQSGMaterialRhiShader_override_virtual_attributeNames(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_attributeNames".}
proc fQSGMaterialRhiShader_virtualbase_activate(self: pointer, ): void{.importc: "QSGMaterialRhiShader_virtualbase_activate".}
proc fcQSGMaterialRhiShader_override_virtual_activate(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_activate".}
proc fQSGMaterialRhiShader_virtualbase_deactivate(self: pointer, ): void{.importc: "QSGMaterialRhiShader_virtualbase_deactivate".}
proc fcQSGMaterialRhiShader_override_virtual_deactivate(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_deactivate".}
proc fQSGMaterialRhiShader_virtualbase_updateState(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): void{.importc: "QSGMaterialRhiShader_virtualbase_updateState".}
proc fcQSGMaterialRhiShader_override_virtual_updateState(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_updateState".}
proc fQSGMaterialRhiShader_virtualbase_compile(self: pointer, ): void{.importc: "QSGMaterialRhiShader_virtualbase_compile".}
proc fcQSGMaterialRhiShader_override_virtual_compile(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_compile".}
proc fQSGMaterialRhiShader_virtualbase_initialize(self: pointer, ): void{.importc: "QSGMaterialRhiShader_virtualbase_initialize".}
proc fcQSGMaterialRhiShader_override_virtual_initialize(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_initialize".}
proc fQSGMaterialRhiShader_virtualbase_vertexShader(self: pointer, ): cstring{.importc: "QSGMaterialRhiShader_virtualbase_vertexShader".}
proc fcQSGMaterialRhiShader_override_virtual_vertexShader(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_vertexShader".}
proc fQSGMaterialRhiShader_virtualbase_fragmentShader(self: pointer, ): cstring{.importc: "QSGMaterialRhiShader_virtualbase_fragmentShader".}
proc fcQSGMaterialRhiShader_override_virtual_fragmentShader(self: pointer, slot: int) {.importc: "QSGMaterialRhiShader_override_virtual_fragmentShader".}
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
proc fcQSGMaterialRhiShaderGraphicsPipelineState_new(param1: pointer): ptr cQSGMaterialRhiShaderGraphicsPipelineState {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_new".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_delete".}


func init*(T: type gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, h: ptr cQSGMaterialRhiShader): gen_qsgmaterialrhishader_types.QSGMaterialRhiShader =
  T(h: h)
proc create*(T: type gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): gen_qsgmaterialrhishader_types.QSGMaterialRhiShader =
  gen_qsgmaterialrhishader_types.QSGMaterialRhiShader.init(fcQSGMaterialRhiShader_new())

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

proc QSGMaterialRhiShaderupdateUniformData*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fQSGMaterialRhiShader_virtualbase_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

type QSGMaterialRhiShaderupdateUniformDataProc* = proc(state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool
proc onupdateUniformData*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShaderupdateUniformDataProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShaderupdateUniformDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_updateUniformData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_updateUniformData(self: ptr cQSGMaterialRhiShader, slot: int, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_updateUniformData ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShaderupdateUniformDataProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)

  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSGMaterialRhiShaderupdateGraphicsPipelineState*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ps: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fQSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)

type QSGMaterialRhiShaderupdateGraphicsPipelineStateProc* = proc(state: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, ps: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool
proc onupdateGraphicsPipelineState*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShaderupdateGraphicsPipelineStateProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShaderupdateGraphicsPipelineStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_updateGraphicsPipelineState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_updateGraphicsPipelineState(self: ptr cQSGMaterialRhiShader, slot: int, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_updateGraphicsPipelineState ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShaderupdateGraphicsPipelineStateProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState(h: ps)

  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)

  let slotval4 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc QSGMaterialRhiShaderattributeNames*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): cstring =
  (fQSGMaterialRhiShader_virtualbase_attributeNames(self.h))

type QSGMaterialRhiShaderattributeNamesProc* = proc(): cstring
proc onattributeNames*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShaderattributeNamesProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShaderattributeNamesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_attributeNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_attributeNames(self: ptr cQSGMaterialRhiShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_attributeNames ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShaderattributeNamesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGMaterialRhiShaderactivate*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): void =
  fQSGMaterialRhiShader_virtualbase_activate(self.h)

type QSGMaterialRhiShaderactivateProc* = proc(): void
proc onactivate*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShaderactivateProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShaderactivateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_activate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_activate(self: ptr cQSGMaterialRhiShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_activate ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShaderactivateProc](cast[pointer](slot))

  nimfunc[]()
proc QSGMaterialRhiShaderdeactivate*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): void =
  fQSGMaterialRhiShader_virtualbase_deactivate(self.h)

type QSGMaterialRhiShaderdeactivateProc* = proc(): void
proc ondeactivate*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShaderdeactivateProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShaderdeactivateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_deactivate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_deactivate(self: ptr cQSGMaterialRhiShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_deactivate ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShaderdeactivateProc](cast[pointer](slot))

  nimfunc[]()
proc QSGMaterialRhiShaderupdateState*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void =
  fQSGMaterialRhiShader_virtualbase_updateState(self.h, state.h, newMaterial.h, oldMaterial.h)

type QSGMaterialRhiShaderupdateStateProc* = proc(state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): void
proc onupdateState*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShaderupdateStateProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShaderupdateStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_updateState(self: ptr cQSGMaterialRhiShader, slot: int, state: pointer, newMaterial: pointer, oldMaterial: pointer): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_updateState ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShaderupdateStateProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)

  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)


  nimfunc[](slotval1, slotval2, slotval3)
proc QSGMaterialRhiShadercompile*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): void =
  fQSGMaterialRhiShader_virtualbase_compile(self.h)

type QSGMaterialRhiShadercompileProc* = proc(): void
proc oncompile*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShadercompileProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShadercompileProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_compile(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_compile(self: ptr cQSGMaterialRhiShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_compile ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShadercompileProc](cast[pointer](slot))

  nimfunc[]()
proc QSGMaterialRhiShaderinitialize*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): void =
  fQSGMaterialRhiShader_virtualbase_initialize(self.h)

type QSGMaterialRhiShaderinitializeProc* = proc(): void
proc oninitialize*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShaderinitializeProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShaderinitializeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_initialize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_initialize(self: ptr cQSGMaterialRhiShader, slot: int): void {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_initialize ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShaderinitializeProc](cast[pointer](slot))

  nimfunc[]()
proc QSGMaterialRhiShadervertexShader*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): cstring =
  (fQSGMaterialRhiShader_virtualbase_vertexShader(self.h))

type QSGMaterialRhiShadervertexShaderProc* = proc(): cstring
proc onvertexShader*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShadervertexShaderProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShadervertexShaderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_vertexShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_vertexShader(self: ptr cQSGMaterialRhiShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_vertexShader ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShadervertexShaderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSGMaterialRhiShaderfragmentShader*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, ): cstring =
  (fQSGMaterialRhiShader_virtualbase_fragmentShader(self.h))

type QSGMaterialRhiShaderfragmentShaderProc* = proc(): cstring
proc onfragmentShader*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader, slot: QSGMaterialRhiShaderfragmentShaderProc) =
  # TODO check subclass
  var tmp = new QSGMaterialRhiShaderfragmentShaderProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialRhiShader_override_virtual_fragmentShader(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialRhiShader_fragmentShader(self: ptr cQSGMaterialRhiShader, slot: int): cstring {.exportc: "miqt_exec_callback_QSGMaterialRhiShader_fragmentShader ".} =
  var nimfunc = cast[ptr QSGMaterialRhiShaderfragmentShaderProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc delete*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShader) =
  fcQSGMaterialRhiShader_delete(self.h)

func init*(T: type gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState, h: ptr cQSGMaterialRhiShaderRenderState): gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState =
  T(h: h)
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

func init*(T: type gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, h: ptr cQSGMaterialRhiShaderGraphicsPipelineState): gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState =
  T(h: h)
proc create*(T: type gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, param1: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState): gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState =
  gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState.init(fcQSGMaterialRhiShaderGraphicsPipelineState_new(param1.h))

proc operatorAssign*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, param1: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState): void =
  fcQSGMaterialRhiShaderGraphicsPipelineState_operatorAssign(self.h, param1.h)

proc delete*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState) =
  fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self.h)
