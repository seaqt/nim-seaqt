import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QSGMaterialShaderFlagEnum* = distinct cint
template UpdatesGraphicsPipelineState*(_: type QSGMaterialShaderFlagEnum): untyped = 1


type QSGMaterialShaderStageEnum* = distinct cint
template VertexStage*(_: type QSGMaterialShaderStageEnum): untyped = 0
template FragmentStage*(_: type QSGMaterialShaderStageEnum): untyped = 1


type QSGMaterialShaderRenderStateDirtyStateEnum* = distinct cint
template DirtyMatrix*(_: type QSGMaterialShaderRenderStateDirtyStateEnum): untyped = 1
template DirtyOpacity*(_: type QSGMaterialShaderRenderStateDirtyStateEnum): untyped = 2
template DirtyCachedMaterialData*(_: type QSGMaterialShaderRenderStateDirtyStateEnum): untyped = 4
template DirtyAll*(_: type QSGMaterialShaderRenderStateDirtyStateEnum): untyped = 65535


type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum* = distinct cint
template Zero*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 0
template One*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 1
template SrcColor*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 2
template OneMinusSrcColor*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 3
template DstColor*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 4
template OneMinusDstColor*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 5
template SrcAlpha*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 6
template OneMinusSrcAlpha*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 7
template DstAlpha*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 8
template OneMinusDstAlpha*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 9
template ConstantColor*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 10
template OneMinusConstantColor*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 11
template ConstantAlpha*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 12
template OneMinusConstantAlpha*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 13
template SrcAlphaSaturate*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 14
template Src1Color*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 15
template OneMinusSrc1Color*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 16
template Src1Alpha*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 17
template OneMinusSrc1Alpha*(_: type QSGMaterialShaderGraphicsPipelineStateBlendFactorEnum): untyped = 18


type QSGMaterialShaderGraphicsPipelineStateColorMaskComponentEnum* = distinct cint
template R*(_: type QSGMaterialShaderGraphicsPipelineStateColorMaskComponentEnum): untyped = 1
template G*(_: type QSGMaterialShaderGraphicsPipelineStateColorMaskComponentEnum): untyped = 2
template B*(_: type QSGMaterialShaderGraphicsPipelineStateColorMaskComponentEnum): untyped = 4
template A*(_: type QSGMaterialShaderGraphicsPipelineStateColorMaskComponentEnum): untyped = 8


type QSGMaterialShaderGraphicsPipelineStateCullModeEnum* = distinct cint
template CullNone*(_: type QSGMaterialShaderGraphicsPipelineStateCullModeEnum): untyped = 0
template CullFront*(_: type QSGMaterialShaderGraphicsPipelineStateCullModeEnum): untyped = 1
template CullBack*(_: type QSGMaterialShaderGraphicsPipelineStateCullModeEnum): untyped = 2


type QSGMaterialShaderGraphicsPipelineStatePolygonModeEnum* = distinct cint
template Fill*(_: type QSGMaterialShaderGraphicsPipelineStatePolygonModeEnum): untyped = 0
template Line*(_: type QSGMaterialShaderGraphicsPipelineStatePolygonModeEnum): untyped = 1


import ./gen_qsgmaterialshader_types
export gen_qsgmaterialshader_types

import
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qmatrix4x4_types,
  ./gen_qsgmaterial_types
export
  gen_qrect_types,
  gen_qmatrix4x4_types,
  gen_qsgmaterial_types

type cQSGMaterialShader*{.exportc: "QSGMaterialShader", incompleteStruct.} = object
type cQSGMaterialShaderRenderState*{.exportc: "QSGMaterialShader__RenderState", incompleteStruct.} = object
type cQSGMaterialShaderGraphicsPipelineState*{.exportc: "QSGMaterialShader__GraphicsPipelineState", incompleteStruct.} = object

proc fcQSGMaterialShader_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialShader_updateUniformData".}
proc fcQSGMaterialShader_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialShader_updateGraphicsPipelineState".}
proc fcQSGMaterialShader_flags(self: pointer): cint {.importc: "QSGMaterialShader_flags".}
proc fcQSGMaterialShader_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterialShader_setFlag".}
proc fcQSGMaterialShader_setFlags(self: pointer, flags: cint): void {.importc: "QSGMaterialShader_setFlags".}
proc fcQSGMaterialShader_combinedImageSamplerCount(self: pointer, binding: cint): cint {.importc: "QSGMaterialShader_combinedImageSamplerCount".}
proc fcQSGMaterialShader_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterialShader_setFlag2".}
proc fcQSGMaterialShader_vtbl(self: pointer): pointer {.importc: "QSGMaterialShader_vtbl".}
proc fcQSGMaterialShader_vdata(self: pointer): pointer {.importc: "QSGMaterialShader_vdata".}

type cQSGMaterialShaderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  updateUniformData*: proc(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl, raises: [], gcsafe.}
  updateGraphicsPipelineState*: proc(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl, raises: [], gcsafe.}
proc fcQSGMaterialShader_virtualbase_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialShader_virtualbase_updateUniformData".}
proc fcQSGMaterialShader_virtualbase_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialShader_virtualbase_updateGraphicsPipelineState".}
proc fcQSGMaterialShader_protectedbase_setShaderFileName(self: pointer, stage: cint, filename: struct_miqt_string): void {.importc: "QSGMaterialShader_protectedbase_setShaderFileName".}
proc fcQSGMaterialShader_protectedbase_setShader(self: pointer, stage: cint, shader: ptr cQShader): void {.importc: "QSGMaterialShader_protectedbase_setShader".}
proc fcQSGMaterialShader_new(vtbl, vdata: pointer): ptr cQSGMaterialShader {.importc: "QSGMaterialShader_new".}
proc fcQSGMaterialShaderRenderState_dirtyStates(self: pointer): cint {.importc: "QSGMaterialShader__RenderState_dirtyStates".}
proc fcQSGMaterialShaderRenderState_isMatrixDirty(self: pointer): bool {.importc: "QSGMaterialShader__RenderState_isMatrixDirty".}
proc fcQSGMaterialShaderRenderState_isOpacityDirty(self: pointer): bool {.importc: "QSGMaterialShader__RenderState_isOpacityDirty".}
proc fcQSGMaterialShaderRenderState_opacity(self: pointer): float32 {.importc: "QSGMaterialShader__RenderState_opacity".}
proc fcQSGMaterialShaderRenderState_combinedMatrix(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_combinedMatrix".}
proc fcQSGMaterialShaderRenderState_modelViewMatrix(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_modelViewMatrix".}
proc fcQSGMaterialShaderRenderState_projectionMatrix(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_projectionMatrix".}
proc fcQSGMaterialShaderRenderState_viewportRect(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_viewportRect".}
proc fcQSGMaterialShaderRenderState_deviceRect(self: pointer): pointer {.importc: "QSGMaterialShader__RenderState_deviceRect".}
proc fcQSGMaterialShaderRenderState_determinant(self: pointer): float32 {.importc: "QSGMaterialShader__RenderState_determinant".}
proc fcQSGMaterialShaderRenderState_devicePixelRatio(self: pointer): float32 {.importc: "QSGMaterialShader__RenderState_devicePixelRatio".}
proc fcQSGMaterialShaderRenderState_uniformData(self: pointer): struct_miqt_string {.importc: "QSGMaterialShader__RenderState_uniformData".}

proc updateUniformData*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialShader_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

proc updateGraphicsPipelineState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ps: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialShader_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)

proc flags*(self: gen_qsgmaterialshader_types.QSGMaterialShader): cint =
  cint(fcQSGMaterialShader_flags(self.h))

proc setFlag*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint): void =
  fcQSGMaterialShader_setFlag(self.h, cint(flags))

proc setFlags*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint): void =
  fcQSGMaterialShader_setFlags(self.h, cint(flags))

proc combinedImageSamplerCount*(self: gen_qsgmaterialshader_types.QSGMaterialShader, binding: cint): cint =
  fcQSGMaterialShader_combinedImageSamplerCount(self.h, binding)

proc setFlag*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint, on: bool): void =
  fcQSGMaterialShader_setFlag2(self.h, cint(flags), on)

type QSGMaterialShaderupdateUniformDataProc* = proc(self: QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool {.raises: [], gcsafe.}
type QSGMaterialShaderupdateGraphicsPipelineStateProc* = proc(self: QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ps: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool {.raises: [], gcsafe.}

type QSGMaterialShaderVTable* {.inheritable, pure.} = object
  vtbl: cQSGMaterialShaderVTable
  updateUniformData*: QSGMaterialShaderupdateUniformDataProc
  updateGraphicsPipelineState*: QSGMaterialShaderupdateGraphicsPipelineStateProc

proc QSGMaterialShaderupdateUniformData*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialShader_virtualbase_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

proc QSGMaterialShaderupdateGraphicsPipelineState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ps: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialShader_virtualbase_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)


proc fcQSGMaterialShader_vtable_callback_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state, owned: false)
  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial, owned: false)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial, owned: false)
  var virtualReturn = vtbl[].updateUniformData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSGMaterialShader_vtable_callback_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
  let self = QSGMaterialShader(h: self)
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state, owned: false)
  let slotval2 = gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState(h: ps, owned: false)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial, owned: false)
  let slotval4 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial, owned: false)
  var virtualReturn = vtbl[].updateGraphicsPipelineState(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

type VirtualQSGMaterialShader* {.inheritable.} = ref object of QSGMaterialShader
  vtbl*: cQSGMaterialShaderVTable

method updateUniformData*(self: VirtualQSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool {.base.} =
  QSGMaterialShaderupdateUniformData(self[], state, newMaterial, oldMaterial)
method updateGraphicsPipelineState*(self: VirtualQSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ps: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool {.base.} =
  QSGMaterialShaderupdateGraphicsPipelineState(self[], state, ps, newMaterial, oldMaterial)

proc fcQSGMaterialShader_method_callback_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state, owned: false)
  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial, owned: false)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial, owned: false)
  var virtualReturn = inst.updateUniformData(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSGMaterialShader_method_callback_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSGMaterialShader](fcQSGMaterialShader_vdata(self))
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state, owned: false)
  let slotval2 = gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState(h: ps, owned: false)
  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial, owned: false)
  let slotval4 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial, owned: false)
  var virtualReturn = inst.updateGraphicsPipelineState(slotval1, slotval2, slotval3, slotval4)
  virtualReturn


proc setShaderFileName*(self: gen_qsgmaterialshader_types.QSGMaterialShader, stage: cint, filename: openArray[char]): void =
  fcQSGMaterialShader_protectedbase_setShaderFileName(self.h, cint(stage), struct_miqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc setShader*(self: gen_qsgmaterialshader_types.QSGMaterialShader, stage: cint, shader: ptr QShader): void =
  fcQSGMaterialShader_protectedbase_setShader(self.h, cint(stage), shader)

proc create*(T: type gen_qsgmaterialshader_types.QSGMaterialShader,
    vtbl: ref QSGMaterialShaderVTable = nil): gen_qsgmaterialshader_types.QSGMaterialShader =
  let vtbl = if vtbl == nil: new QSGMaterialShaderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSGMaterialShaderVTable](fcQSGMaterialShader_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].updateUniformData):
    vtbl[].vtbl.updateUniformData = fcQSGMaterialShader_vtable_callback_updateUniformData
  if not isNil(vtbl[].updateGraphicsPipelineState):
    vtbl[].vtbl.updateGraphicsPipelineState = fcQSGMaterialShader_vtable_callback_updateGraphicsPipelineState
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGMaterialShader_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQSGMaterialShader_mvtbl = cQSGMaterialShaderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSGMaterialShader()[])](self.fcQSGMaterialShader_vtbl())
    inst[].h = nil
    inst[].owned = false,

  updateUniformData: fcQSGMaterialShader_method_callback_updateUniformData,
  updateGraphicsPipelineState: fcQSGMaterialShader_method_callback_updateGraphicsPipelineState,
)
proc create*(T: type gen_qsgmaterialshader_types.QSGMaterialShader,
    inst: VirtualQSGMaterialShader) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSGMaterialShader_new(addr(cQSGMaterialShader_mvtbl), addr(inst[]))
  inst[].owned = true

proc dirtyStates*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): cint =
  cint(fcQSGMaterialShaderRenderState_dirtyStates(self.h))

proc isMatrixDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): bool =
  fcQSGMaterialShaderRenderState_isMatrixDirty(self.h)

proc isOpacityDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): bool =
  fcQSGMaterialShaderRenderState_isOpacityDirty(self.h)

proc opacity*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): float32 =
  fcQSGMaterialShaderRenderState_opacity(self.h)

proc combinedMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_combinedMatrix(self.h), owned: true)

proc modelViewMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_modelViewMatrix(self.h), owned: true)

proc projectionMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_projectionMatrix(self.h), owned: true)

proc viewportRect*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialShaderRenderState_viewportRect(self.h), owned: true)

proc deviceRect*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialShaderRenderState_deviceRect(self.h), owned: true)

proc determinant*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): float32 =
  fcQSGMaterialShaderRenderState_determinant(self.h)

proc devicePixelRatio*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): float32 =
  fcQSGMaterialShaderRenderState_devicePixelRatio(self.h)

proc uniformData*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState): seq[byte] =
  var v_bytearray = fcQSGMaterialShaderRenderState_uniformData(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

