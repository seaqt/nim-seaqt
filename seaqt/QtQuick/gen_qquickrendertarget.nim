import ./Qt6Quick_libs

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


import ./gen_qquickrendertarget_types
export gen_qquickrendertarget_types

import
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qpaintdevice_types
export
  gen_qsize_types,
  gen_qpaintdevice_types

type cQQuickRenderTarget*{.exportc: "QQuickRenderTarget", incompleteStruct.} = object

proc fcQQuickRenderTarget_operatorAssign(self: pointer, other: pointer): void {.importc: "QQuickRenderTarget_operatorAssign".}
proc fcQQuickRenderTarget_isNull(self: pointer): bool {.importc: "QQuickRenderTarget_isNull".}
proc fcQQuickRenderTarget_devicePixelRatio(self: pointer): float64 {.importc: "QQuickRenderTarget_devicePixelRatio".}
proc fcQQuickRenderTarget_setDevicePixelRatio(self: pointer, ratio: float64): void {.importc: "QQuickRenderTarget_setDevicePixelRatio".}
proc fcQQuickRenderTarget_mirrorVertically(self: pointer): bool {.importc: "QQuickRenderTarget_mirrorVertically".}
proc fcQQuickRenderTarget_setMirrorVertically(self: pointer, enable: bool): void {.importc: "QQuickRenderTarget_setMirrorVertically".}
proc fcQQuickRenderTarget_fromOpenGLTexture(textureId: cuint, format: cuint, pixelSize: pointer): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture".}
proc fcQQuickRenderTarget_fromOpenGLTexture2(textureId: cuint, pixelSize: pointer): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture2".}
proc fcQQuickRenderTarget_fromOpenGLRenderBuffer(renderbufferId: cuint, pixelSize: pointer): pointer {.importc: "QQuickRenderTarget_fromOpenGLRenderBuffer".}
proc fcQQuickRenderTarget_fromRhiRenderTarget(renderTarget: ptr cQRhiRenderTarget): pointer {.importc: "QQuickRenderTarget_fromRhiRenderTarget".}
proc fcQQuickRenderTarget_fromPaintDevice(device: pointer): pointer {.importc: "QQuickRenderTarget_fromPaintDevice".}
proc fcQQuickRenderTarget_fromOpenGLTexture4(textureId: cuint, format: cuint, pixelSize: pointer, sampleCount: cint): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture4".}
proc fcQQuickRenderTarget_fromOpenGLTexture3(textureId: cuint, pixelSize: pointer, sampleCount: cint): pointer {.importc: "QQuickRenderTarget_fromOpenGLTexture3".}
proc fcQQuickRenderTarget_fromOpenGLRenderBuffer3(renderbufferId: cuint, pixelSize: pointer, sampleCount: cint): pointer {.importc: "QQuickRenderTarget_fromOpenGLRenderBuffer3".}
proc fcQQuickRenderTarget_new(): ptr cQQuickRenderTarget {.importc: "QQuickRenderTarget_new".}
proc fcQQuickRenderTarget_new2(other: pointer): ptr cQQuickRenderTarget {.importc: "QQuickRenderTarget_new2".}

proc operatorAssign*(self: gen_qquickrendertarget_types.QQuickRenderTarget, other: gen_qquickrendertarget_types.QQuickRenderTarget): void =
  fcQQuickRenderTarget_operatorAssign(self.h, other.h)

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

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, format: cuint, pixelSize: gen_qsize_types.QSize): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTexture(textureId, format, pixelSize.h), owned: true)

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, pixelSize: gen_qsize_types.QSize): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTexture2(textureId, pixelSize.h), owned: true)

proc fromOpenGLRenderBuffer*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, renderbufferId: cuint, pixelSize: gen_qsize_types.QSize): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLRenderBuffer(renderbufferId, pixelSize.h), owned: true)

proc fromRhiRenderTarget*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, renderTarget: ptr QRhiRenderTarget): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromRhiRenderTarget(renderTarget), owned: true)

proc fromPaintDevice*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, device: gen_qpaintdevice_types.QPaintDevice): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromPaintDevice(device.h), owned: true)

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, format: cuint, pixelSize: gen_qsize_types.QSize, sampleCount: cint): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTexture4(textureId, format, pixelSize.h, sampleCount), owned: true)

proc fromOpenGLTexture*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, textureId: cuint, pixelSize: gen_qsize_types.QSize, sampleCount: cint): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLTexture3(textureId, pixelSize.h, sampleCount), owned: true)

proc fromOpenGLRenderBuffer*(_: type gen_qquickrendertarget_types.QQuickRenderTarget, renderbufferId: cuint, pixelSize: gen_qsize_types.QSize, sampleCount: cint): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_fromOpenGLRenderBuffer3(renderbufferId, pixelSize.h, sampleCount), owned: true)

proc create*(T: type gen_qquickrendertarget_types.QQuickRenderTarget): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_new(), owned: true)

proc create*(T: type gen_qquickrendertarget_types.QQuickRenderTarget,
    other: gen_qquickrendertarget_types.QQuickRenderTarget): gen_qquickrendertarget_types.QQuickRenderTarget =
  gen_qquickrendertarget_types.QQuickRenderTarget(h: fcQQuickRenderTarget_new2(other.h), owned: true)

