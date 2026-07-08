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
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qmatrix4x4_types
export
  gen_qrect_types,
  gen_qcolor_types,
  gen_qmatrix4x4_types

type cQSGMaterialShader*{.exportc: "QSGMaterialShader", incompleteStruct.} = object
type cQSGMaterialShaderRenderState*{.exportc: "QSGMaterialShader__RenderState", incompleteStruct.} = object
type cQSGMaterialShaderGraphicsPipelineState*{.exportc: "QSGMaterialShader__GraphicsPipelineState", incompleteStruct.} = object

proc fcQSGMaterialShader_flags(self: pointer): cint {.importc: "QSGMaterialShader_flags".}
proc fcQSGMaterialShader_setFlagFlags(self: pointer, flags: cint): void {.importc: "QSGMaterialShader_setFlag_flags".}
proc fcQSGMaterialShader_setFlags(self: pointer, flags: cint): void {.importc: "QSGMaterialShader_setFlags".}
proc fcQSGMaterialShader_combinedImageSamplerCount(self: pointer, binding: cint): cint {.importc: "QSGMaterialShader_combinedImageSamplerCount".}
proc fcQSGMaterialShader_setFlagFlagsOn(self: pointer, flags: cint, on: bool): void {.importc: "QSGMaterialShader_setFlag_flags_on".}
proc fcQSGMaterialShader_protectedbase_setShaderFileName(self: pointer, stage: cint, filename: struct_seaqt_string): void {.importc: "QSGMaterialShader_protectedbase_setShaderFileName".}
proc fcQSGMaterialShader_new(): ptr cQSGMaterialShader {.importc: "QSGMaterialShader_new".}
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
proc fcQSGMaterialShaderRenderState_uniformData(self: pointer): struct_seaqt_string {.importc: "QSGMaterialShader__RenderState_uniformData".}
proc fcQSGMaterialShaderGraphicsPipelineState_blendEnable(self: pointer): bool {.importc: "QSGMaterialShader__GraphicsPipelineState_blendEnable".}
proc fcQSGMaterialShaderGraphicsPipelineState_setBlendEnable(self: pointer, blendEnable: bool): void {.importc: "QSGMaterialShader__GraphicsPipelineState_setBlendEnable".}
proc fcQSGMaterialShaderGraphicsPipelineState_srcColor(self: pointer): cint {.importc: "QSGMaterialShader__GraphicsPipelineState_srcColor".}
proc fcQSGMaterialShaderGraphicsPipelineState_setSrcColor(self: pointer, srcColor: cint): void {.importc: "QSGMaterialShader__GraphicsPipelineState_setSrcColor".}
proc fcQSGMaterialShaderGraphicsPipelineState_dstColor(self: pointer): cint {.importc: "QSGMaterialShader__GraphicsPipelineState_dstColor".}
proc fcQSGMaterialShaderGraphicsPipelineState_setDstColor(self: pointer, dstColor: cint): void {.importc: "QSGMaterialShader__GraphicsPipelineState_setDstColor".}
proc fcQSGMaterialShaderGraphicsPipelineState_colorWrite(self: pointer): cint {.importc: "QSGMaterialShader__GraphicsPipelineState_colorWrite".}
proc fcQSGMaterialShaderGraphicsPipelineState_setColorWrite(self: pointer, colorWrite: cint): void {.importc: "QSGMaterialShader__GraphicsPipelineState_setColorWrite".}
proc fcQSGMaterialShaderGraphicsPipelineState_blendConstant(self: pointer): pointer {.importc: "QSGMaterialShader__GraphicsPipelineState_blendConstant".}
proc fcQSGMaterialShaderGraphicsPipelineState_setBlendConstant(self: pointer, blendConstant: pointer): void {.importc: "QSGMaterialShader__GraphicsPipelineState_setBlendConstant".}
proc fcQSGMaterialShaderGraphicsPipelineState_cullMode(self: pointer): cint {.importc: "QSGMaterialShader__GraphicsPipelineState_cullMode".}
proc fcQSGMaterialShaderGraphicsPipelineState_setCullMode(self: pointer, cullMode: cint): void {.importc: "QSGMaterialShader__GraphicsPipelineState_setCullMode".}
proc fcQSGMaterialShaderGraphicsPipelineState_polygonMode(self: pointer): cint {.importc: "QSGMaterialShader__GraphicsPipelineState_polygonMode".}
proc fcQSGMaterialShaderGraphicsPipelineState_setPolygonMode(self: pointer, polygonMode: cint): void {.importc: "QSGMaterialShader__GraphicsPipelineState_setPolygonMode".}

proc flags*(self: gen_qsgmaterialshader_types.QSGMaterialShader): cint =
  cint(fcQSGMaterialShader_flags(self.h))

proc setFlag*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint): void =
  fcQSGMaterialShader_setFlagFlags(self.h, cint(flags))

proc setFlags*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint): void =
  fcQSGMaterialShader_setFlags(self.h, cint(flags))

proc combinedImageSamplerCount*(self: gen_qsgmaterialshader_types.QSGMaterialShader, binding: cint): cint =
  fcQSGMaterialShader_combinedImageSamplerCount(self.h, binding)

proc setFlag*(self: gen_qsgmaterialshader_types.QSGMaterialShader, flags: cint, on: bool): void =
  fcQSGMaterialShader_setFlagFlagsOn(self.h, cint(flags), on)

proc setShaderFileName*(self: gen_qsgmaterialshader_types.QSGMaterialShader, stage: cint, filename: openArray[char]): void =
  fcQSGMaterialShader_protectedbase_setShaderFileName(self.h, cint(stage), struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))))

proc create*(T: type gen_qsgmaterialshader_types.QSGMaterialShader): gen_qsgmaterialshader_types.QSGMaterialShader =
  let tmp = gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGMaterialShader_new(), owned: true)
  tmp
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

proc blendEnable*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState): bool =
  fcQSGMaterialShaderGraphicsPipelineState_blendEnable(self.h)

proc setBlendEnable*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, blendEnable: bool): void =
  fcQSGMaterialShaderGraphicsPipelineState_setBlendEnable(self.h, blendEnable)

proc srcColor*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState): cint =
  cint(fcQSGMaterialShaderGraphicsPipelineState_srcColor(self.h))

proc setSrcColor*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, srcColor: cint): void =
  fcQSGMaterialShaderGraphicsPipelineState_setSrcColor(self.h, cint(srcColor))

proc dstColor*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState): cint =
  cint(fcQSGMaterialShaderGraphicsPipelineState_dstColor(self.h))

proc setDstColor*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, dstColor: cint): void =
  fcQSGMaterialShaderGraphicsPipelineState_setDstColor(self.h, cint(dstColor))

proc colorWrite*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState): cint =
  cint(fcQSGMaterialShaderGraphicsPipelineState_colorWrite(self.h))

proc setColorWrite*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, colorWrite: cint): void =
  fcQSGMaterialShaderGraphicsPipelineState_setColorWrite(self.h, cint(colorWrite))

proc blendConstant*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGMaterialShaderGraphicsPipelineState_blendConstant(self.h), owned: true)

proc setBlendConstant*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, blendConstant: gen_qcolor_types.QColor): void =
  fcQSGMaterialShaderGraphicsPipelineState_setBlendConstant(self.h, blendConstant.h)

proc cullMode*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState): cint =
  cint(fcQSGMaterialShaderGraphicsPipelineState_cullMode(self.h))

proc setCullMode*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, cullMode: cint): void =
  fcQSGMaterialShaderGraphicsPipelineState_setCullMode(self.h, cint(cullMode))

proc polygonMode*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState): cint =
  cint(fcQSGMaterialShaderGraphicsPipelineState_polygonMode(self.h))

proc setPolygonMode*(self: gen_qsgmaterialshader_types.QSGMaterialShaderGraphicsPipelineState, polygonMode: cint): void =
  fcQSGMaterialShaderGraphicsPipelineState_setPolygonMode(self.h, cint(polygonMode))

