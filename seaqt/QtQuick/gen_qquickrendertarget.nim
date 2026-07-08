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


type QQuickRenderTargetFlagEnum* = distinct cint
template MultisampleResolve*(_: type QQuickRenderTargetFlagEnum): untyped = 1


import ./gen_qquickrendertarget_types
export gen_qquickrendertarget_types

import
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qpaintdevice_types
export
  gen_qsize_types,
  gen_qpaintdevice_types

type cQQuickRenderTarget*{.exportc: "QQuickRenderTarget", incompleteStruct.} = object

proc fcQQuickRenderTarget_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QQuickRenderTarget_operatorAssign".}
proc fcQQuickRenderTarget_isNull(self: pointer): bool {.importc: "QQuickRenderTarget_isNull".}
proc fcQQuickRenderTarget_devicePixelRatio(self: pointer): float64 {.importc: "QQuickRenderTarget_devicePixelRatio".}
proc fcQQuickRenderTarget_setDevicePixelRatio(self: pointer, ratio: float64): void {.importc: "QQuickRenderTarget_setDevicePixelRatio".}
proc fcQQuickRenderTarget_mirrorVertically(self: pointer): bool {.importc: "QQuickRenderTarget_mirrorVertically".}
proc fcQQuickRenderTarget_setMirrorVertically(self: pointer, enable: bool): void {.importc: "QQuickRenderTarget_setMirrorVertically".}
proc fcQQuickRenderTarget_fromOpenGLTextureTextureIdPixelSize(textureId: cuint, pixelSize: pointer): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture_textureId_pixelSize".}
proc fcQQuickRenderTarget_fromOpenGLTextureTextureIdFormatPixelSize(textureId: cuint, format: cuint, pixelSize: pointer): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture_textureId_format_pixelSize".}
proc fcQQuickRenderTarget_fromOpenGLTextureTextureIdFormatPixelSizeSampleCountArraySizeFlags(textureId: cuint, format: cuint, pixelSize: pointer, sampleCount: cint, arraySize: cint, flags: cint): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture_textureId_format_pixelSize_sampleCount_arraySize_flags".}
proc fcQQuickRenderTarget_fromOpenGLRenderBufferRenderbufferIdPixelSize(renderbufferId: cuint, pixelSize: pointer): pointer {.importc: "QQuickRenderTarget_fromOpenGLRenderBuffer_renderbufferId_pixelSize".}
proc fcQQuickRenderTarget_fromPaintDevice(device: pointer): pointer {.importc: "QQuickRenderTarget_fromPaintDevice".}
proc fcQQuickRenderTarget_fromOpenGLTextureTextureIdPixelSizeSampleCount(textureId: cuint, pixelSize: pointer, sampleCount: cint): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture_textureId_pixelSize_sampleCount".}
proc fcQQuickRenderTarget_fromOpenGLTextureTextureIdFormatPixelSizeSampleCount(textureId: cuint, format: cuint, pixelSize: pointer, sampleCount: cint): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture_textureId_format_pixelSize_sampleCount".}
proc fcQQuickRenderTarget_fromOpenGLRenderBufferRenderbufferIdPixelSizeSampleCount(renderbufferId: cuint, pixelSize: pointer, sampleCount: cint): pointer {.importc: "QQuickRenderTarget_fromOpenGLRenderBuffer_renderbufferId_pixelSize_sampleCount".}
proc fcQQuickRenderTarget_new(): ptr cQQuickRenderTarget {.importc: "QQuickRenderTarget_new".}
proc fcQQuickRenderTarget_new2(fromVal: pointer): ptr cQQuickRenderTarget {.importc: "QQuickRenderTarget_new_from".}

proc operatorAssign*(self: gen_qquickrendertarget_types.QQuickRenderTarget, fromVal: gen_qquickrendertarget_types.QQuickRenderTarget): void =
  fcQQuickRenderTarget_operatorAssign(self.h, fromVal.h)

proc isNull*(self: gen_qquickrendertarget_types.QQuickRenderTarget): bool =
  fcQQuickRenderTarget_isNull(self.h)

proc devicePixelRatio*(self: gen_qquickrendertarget_types.QQuickRenderTarget): float64 =
  fcQQuickRenderTarget_devicePixelRatio(self.h)

proc setDevicePixelRatio*(self: gen_qquickrendertarget_types.QQuickRenderTarget, ratio: float64): void =
  fcQQuickRenderTarget_setDevicePixelRatio(self.h, ratio)

proc mirrorVertically*(self: gen_qquickrendertarget_types.QQuickRenderTarget): bool =
  fcQQuickRenderTarget_mirrorVertically(self.h)

proc setMirrorVertically*(self: gen_qquickrendertarget_types.QQuickRenderTarget, enable: bool): void =
  fcQQuickRenderTarget_setMirrorVertically(self.h, enable)

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, pixelSize: gen_qsize_types.QSize): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTextureTextureIdPixelSize(textureId, pixelSize.h), owned: true)

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, format: cuint, pixelSize: gen_qsize_types.QSize): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTextureTextureIdFormatPixelSize(textureId, format, pixelSize.h), owned: true)

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, format: cuint, pixelSize: gen_qsize_types.QSize, sampleCount: cint, arraySize: cint, flags: cint): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTextureTextureIdFormatPixelSizeSampleCountArraySizeFlags(textureId, format, pixelSize.h, sampleCount, arraySize, cint(flags)), owned: true)

proc fromOpenGLRenderBuffer*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, renderbufferId: cuint, pixelSize: gen_qsize_types.QSize): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLRenderBufferRenderbufferIdPixelSize(renderbufferId, pixelSize.h), owned: true)

proc fromPaintDevice*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, device: gen_qpaintdevice_types.QPaintDevice): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromPaintDevice(device.h), owned: true)

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, pixelSize: gen_qsize_types.QSize, sampleCount: cint): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTextureTextureIdPixelSizeSampleCount(textureId, pixelSize.h, sampleCount), owned: true)

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, format: cuint, pixelSize: gen_qsize_types.QSize, sampleCount: cint): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTextureTextureIdFormatPixelSizeSampleCount(textureId, format, pixelSize.h, sampleCount), owned: true)

proc fromOpenGLRenderBuffer*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, renderbufferId: cuint, pixelSize: gen_qsize_types.QSize, sampleCount: cint): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLRenderBufferRenderbufferIdPixelSizeSampleCount(renderbufferId, pixelSize.h, sampleCount), owned: true)

proc create*(T: type gen_qquickrendertarget_types.QQuickRenderTarget): gen_qquickrendertarget_types.QQuickRenderTarget =
  let tmp = gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_new(), owned: true)
  tmp
proc create*(T: type gen_qquickrendertarget_types.QQuickRenderTarget,
    fromVal: gen_qquickrendertarget_types.QQuickRenderTarget): gen_qquickrendertarget_types.QQuickRenderTarget =
  let tmp = gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_new2(fromVal.h), owned: true)
  tmp
