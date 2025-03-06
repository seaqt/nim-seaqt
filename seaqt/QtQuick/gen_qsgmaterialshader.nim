import ./Qt6Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt6Quick")  & " -fPIC"
{.compile("gen_qsgmaterialshader.cpp", cflags).}


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

proc fcQSGMaterialShader_new(): ptr cQSGMaterialShader {.importc: "QSGMaterialShader_new".}
proc fcQSGMaterialShader_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialShader_updateUniformData".}
proc fcQSGMaterialShader_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.importc: "QSGMaterialShader_updateGraphicsPipelineState".}
proc fcQSGMaterialShader_flags(self: pointer, ): cint {.importc: "QSGMaterialShader_flags".}
proc fcQSGMaterialShader_setFlag(self: pointer, flags: cint): void {.importc: "QSGMaterialShader_setFlag".}
proc fcQSGMaterialShader_setFlags(self: pointer, flags: cint): void {.importc: "QSGMaterialShader_setFlags".}
proc fcQSGMaterialShader_combinedImageSamplerCount(self: pointer, binding: cint): cint {.importc: "QSGMaterialShader_combinedImageSamplerCount".}
proc fcQSGMaterialShader_setFlag2(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterialShader_setFlag2".}
proc fQSGMaterialShader_virtualbase_updateUniformData(self: pointer, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool{.importc: "QSGMaterialShader_virtualbase_updateUniformData".}
proc fcQSGMaterialShader_override_virtual_updateUniformData(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_updateUniformData".}
proc fQSGMaterialShader_virtualbase_updateGraphicsPipelineState(self: pointer, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool{.importc: "QSGMaterialShader_virtualbase_updateGraphicsPipelineState".}
proc fcQSGMaterialShader_override_virtual_updateGraphicsPipelineState(self: pointer, slot: int) {.importc: "QSGMaterialShader_override_virtual_updateGraphicsPipelineState".}
proc fcQSGMaterialShader_delete(self: pointer) {.importc: "QSGMaterialShader_delete".}
proc fcQSGMaterialShaderRenderState_dirtyStates(self: pointer, ): cint {.importc: "QSGMaterialShader__RenderState_dirtyStates".}
proc fcQSGMaterialShaderRenderState_isMatrixDirty(self: pointer, ): bool {.importc: "QSGMaterialShader__RenderState_isMatrixDirty".}
proc fcQSGMaterialShaderRenderState_isOpacityDirty(self: pointer, ): bool {.importc: "QSGMaterialShader__RenderState_isOpacityDirty".}
proc fcQSGMaterialShaderRenderState_opacity(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_opacity".}
proc fcQSGMaterialShaderRenderState_combinedMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_combinedMatrix".}
proc fcQSGMaterialShaderRenderState_modelViewMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_modelViewMatrix".}
proc fcQSGMaterialShaderRenderState_projectionMatrix(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_projectionMatrix".}
proc fcQSGMaterialShaderRenderState_viewportRect(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_viewportRect".}
proc fcQSGMaterialShaderRenderState_deviceRect(self: pointer, ): pointer {.importc: "QSGMaterialShader__RenderState_deviceRect".}
proc fcQSGMaterialShaderRenderState_determinant(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_determinant".}
proc fcQSGMaterialShaderRenderState_devicePixelRatio(self: pointer, ): float32 {.importc: "QSGMaterialShader__RenderState_devicePixelRatio".}
proc fcQSGMaterialShaderRenderState_uniformData(self: pointer, ): struct_miqt_string {.importc: "QSGMaterialShader__RenderState_uniformData".}
proc fcQSGMaterialShaderRenderState_delete(self: pointer) {.importc: "QSGMaterialShader__RenderState_delete".}
proc fcQSGMaterialShaderGraphicsPipelineState_delete(self: pointer) {.importc: "QSGMaterialShader__GraphicsPipelineState_delete".}


func init*(T: type gen_qsgmaterialshader_types.QSGMaterialShader, h: ptr cQSGMaterialShader): gen_qsgmaterialshader_types.QSGMaterialShader =
  T(h: h)
proc create*(T: type gen_qsgmaterialshader_types.QSGMaterialShader, ): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader.init(fcQSGMaterialShader_new())

proc updateUniformData*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialShader_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

proc updateGraphicsPipelineState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ps: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fcQSGMaterialShader_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)

proc flags*(self: gen_qsgmaterialshader_types.QSGMaterialShader, ): cint =
  cint(fcQSGMaterialShader_flags(self.h))

proc setFlag*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint): void =
  fcQSGMaterialShader_setFlag(self.h, cint(flags))

proc setFlags*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint): void =
  fcQSGMaterialShader_setFlags(self.h, cint(flags))

proc combinedImageSamplerCount*(self: gen_qsgmaterialshader_types.QSGMaterialShader, binding: cint): cint =
  fcQSGMaterialShader_combinedImageSamplerCount(self.h, binding)

proc setFlag*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint, on: bool): void =
  fcQSGMaterialShader_setFlag2(self.h, cint(flags), on)

proc QSGMaterialShaderupdateUniformData*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fQSGMaterialShader_virtualbase_updateUniformData(self.h, state.h, newMaterial.h, oldMaterial.h)

type QSGMaterialShaderupdateUniformDataProc* = proc(state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool
proc onupdateUniformData*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShaderupdateUniformDataProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShaderupdateUniformDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_updateUniformData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_updateUniformData(self: ptr cQSGMaterialShader, slot: int, state: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.exportc: "miqt_exec_callback_QSGMaterialShader_updateUniformData ".} =
  var nimfunc = cast[ptr QSGMaterialShaderupdateUniformDataProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)

  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSGMaterialShaderupdateGraphicsPipelineState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ps: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool =
  fQSGMaterialShader_virtualbase_updateGraphicsPipelineState(self.h, state.h, ps.h, newMaterial.h, oldMaterial.h)

type QSGMaterialShaderupdateGraphicsPipelineStateProc* = proc(state: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ps: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, newMaterial: gen_qsgmaterial_types.QSGMaterial, oldMaterial: gen_qsgmaterial_types.QSGMaterial): bool
proc onupdateGraphicsPipelineState*(self: gen_qsgmaterialshader_types.QSGMaterialShader, slot: QSGMaterialShaderupdateGraphicsPipelineStateProc) =
  # TODO check subclass
  var tmp = new QSGMaterialShaderupdateGraphicsPipelineStateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSGMaterialShader_override_virtual_updateGraphicsPipelineState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGMaterialShader_updateGraphicsPipelineState(self: ptr cQSGMaterialShader, slot: int, state: pointer, ps: pointer, newMaterial: pointer, oldMaterial: pointer): bool {.exportc: "miqt_exec_callback_QSGMaterialShader_updateGraphicsPipelineState ".} =
  var nimfunc = cast[ptr QSGMaterialShaderupdateGraphicsPipelineStateProc](cast[pointer](slot))
  let slotval1 = gen_qsgmaterialshader_types.QSGMaterialShaderRenderState(h: state)

  let slotval2 = gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState(h: ps)

  let slotval3 = gen_qsgmaterial_types.QSGMaterial(h: newMaterial)

  let slotval4 = gen_qsgmaterial_types.QSGMaterial(h: oldMaterial)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc delete*(self: gen_qsgmaterialshader_types.QSGMaterialShader) =
  fcQSGMaterialShader_delete(self.h)

func init*(T: type gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, h: ptr cQSGMaterialShaderRenderState): gen_qsgmaterialshader_types.QSGMaterialShaderRenderState =
  T(h: h)
proc dirtyStates*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): cint =
  cint(fcQSGMaterialShaderRenderState_dirtyStates(self.h))

proc isMatrixDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): bool =
  fcQSGMaterialShaderRenderState_isMatrixDirty(self.h)

proc isOpacityDirty*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): bool =
  fcQSGMaterialShaderRenderState_isOpacityDirty(self.h)

proc opacity*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): float32 =
  fcQSGMaterialShaderRenderState_opacity(self.h)

proc combinedMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_combinedMatrix(self.h))

proc modelViewMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_modelViewMatrix(self.h))

proc projectionMatrix*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialShaderRenderState_projectionMatrix(self.h))

proc viewportRect*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialShaderRenderState_viewportRect(self.h))

proc deviceRect*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialShaderRenderState_deviceRect(self.h))

proc determinant*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): float32 =
  fcQSGMaterialShaderRenderState_determinant(self.h)

proc devicePixelRatio*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): float32 =
  fcQSGMaterialShaderRenderState_devicePixelRatio(self.h)

proc uniformData*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState, ): seq[byte] =
  var v_bytearray = fcQSGMaterialShaderRenderState_uniformData(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc delete*(self: gen_qsgmaterialshader_types.QSGMaterialShaderRenderState) =
  fcQSGMaterialShaderRenderState_delete(self.h)

func init*(T: type gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, h: ptr cQSGMaterialShaderGraphicsPipelineState): gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState =
  T(h: h)
proc delete*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState) =
  fcQSGMaterialShaderGraphicsPipelineState_delete(self.h)
