import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


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
  ../QtGui/gen_qmatrix4x4_types
export
  gen_qrect_types,
  gen_qmatrix4x4_types

type cQSGMaterialRhiShaderRenderState*{.exportc: "QSGMaterialRhiShader__RenderState", incompleteStruct.} = object
type cQSGMaterialRhiShaderGraphicsPipelineState*{.exportc: "QSGMaterialRhiShader__GraphicsPipelineState", incompleteStruct.} = object

proc fcQSGMaterialRhiShaderRenderState_dirtyStates(self: pointer): cint {.importc: "QSGMaterialRhiShader__RenderState_dirtyStates".}
proc fcQSGMaterialRhiShaderRenderState_isMatrixDirty(self: pointer): bool {.importc: "QSGMaterialRhiShader__RenderState_isMatrixDirty".}
proc fcQSGMaterialRhiShaderRenderState_isOpacityDirty(self: pointer): bool {.importc: "QSGMaterialRhiShader__RenderState_isOpacityDirty".}
proc fcQSGMaterialRhiShaderRenderState_opacity(self: pointer): float32 {.importc: "QSGMaterialRhiShader__RenderState_opacity".}
proc fcQSGMaterialRhiShaderRenderState_combinedMatrix(self: pointer): pointer {.importc: "QSGMaterialRhiShader__RenderState_combinedMatrix".}
proc fcQSGMaterialRhiShaderRenderState_modelViewMatrix(self: pointer): pointer {.importc: "QSGMaterialRhiShader__RenderState_modelViewMatrix".}
proc fcQSGMaterialRhiShaderRenderState_projectionMatrix(self: pointer): pointer {.importc: "QSGMaterialRhiShader__RenderState_projectionMatrix".}
proc fcQSGMaterialRhiShaderRenderState_viewportRect(self: pointer): pointer {.importc: "QSGMaterialRhiShader__RenderState_viewportRect".}
proc fcQSGMaterialRhiShaderRenderState_deviceRect(self: pointer): pointer {.importc: "QSGMaterialRhiShader__RenderState_deviceRect".}
proc fcQSGMaterialRhiShaderRenderState_determinant(self: pointer): float32 {.importc: "QSGMaterialRhiShader__RenderState_determinant".}
proc fcQSGMaterialRhiShaderRenderState_devicePixelRatio(self: pointer): float32 {.importc: "QSGMaterialRhiShader__RenderState_devicePixelRatio".}
proc fcQSGMaterialRhiShaderRenderState_uniformData(self: pointer): struct_seaqt_string {.importc: "QSGMaterialRhiShader__RenderState_uniformData".}
proc fcQSGMaterialRhiShaderRenderState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__RenderState_delete".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_operatorAssign(self: pointer, param1: pointer): void {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_new(param1: pointer): ptr cQSGMaterialRhiShaderGraphicsPipelineState {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_new".}
proc fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self: pointer) {.importc: "QSGMaterialRhiShader__GraphicsPipelineState_delete".}

proc dirtyStates*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): cint =
  cint(fcQSGMaterialRhiShaderRenderState_dirtyStates(self.h))

proc isMatrixDirty*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): bool =
  fcQSGMaterialRhiShaderRenderState_isMatrixDirty(self.h)

proc isOpacityDirty*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): bool =
  fcQSGMaterialRhiShaderRenderState_isOpacityDirty(self.h)

proc opacity*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): float32 =
  fcQSGMaterialRhiShaderRenderState_opacity(self.h)

proc combinedMatrix*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_combinedMatrix(self.h))

proc modelViewMatrix*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_modelViewMatrix(self.h))

proc projectionMatrix*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): gen_qmatrix4x4_types.QMatrix4x4 =
  gen_qmatrix4x4_types.QMatrix4x4(h: fcQSGMaterialRhiShaderRenderState_projectionMatrix(self.h))

proc viewportRect*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialRhiShaderRenderState_viewportRect(self.h))

proc deviceRect*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSGMaterialRhiShaderRenderState_deviceRect(self.h))

proc determinant*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): float32 =
  fcQSGMaterialRhiShaderRenderState_determinant(self.h)

proc devicePixelRatio*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): float32 =
  fcQSGMaterialRhiShaderRenderState_devicePixelRatio(self.h)

proc uniformData*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState): seq[byte] =
  var v_bytearray = fcQSGMaterialRhiShaderRenderState_uniformData(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc delete*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderRenderState) =
  fcQSGMaterialRhiShaderRenderState_delete(self.h)
proc operatorAssign*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState, param1: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState): void =
  fcQSGMaterialRhiShaderGraphicsPipelineState_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState,
    param1: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState): gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState =
  let tmp = gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState(h: fcQSGMaterialRhiShaderGraphicsPipelineState_new(param1.h))
  tmp
proc delete*(self: gen_qsgmaterialrhishader_types.QSGMaterialRhiShaderGraphicsPipelineState) =
  fcQSGMaterialRhiShaderGraphicsPipelineState_delete(self.h)
