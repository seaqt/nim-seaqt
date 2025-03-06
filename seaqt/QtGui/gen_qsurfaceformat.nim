import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qsurfaceformat.cpp", cflags).}


type QSurfaceFormatFormatOptionEnum* = distinct cint
template StereoBuffers*(_: type QSurfaceFormatFormatOptionEnum): untyped = 1
template DebugContext*(_: type QSurfaceFormatFormatOptionEnum): untyped = 2
template DeprecatedFunctions*(_: type QSurfaceFormatFormatOptionEnum): untyped = 4
template ResetNotification*(_: type QSurfaceFormatFormatOptionEnum): untyped = 8


type QSurfaceFormatSwapBehaviorEnum* = distinct cint
template DefaultSwapBehavior*(_: type QSurfaceFormatSwapBehaviorEnum): untyped = 0
template SingleBuffer*(_: type QSurfaceFormatSwapBehaviorEnum): untyped = 1
template DoubleBuffer*(_: type QSurfaceFormatSwapBehaviorEnum): untyped = 2
template TripleBuffer*(_: type QSurfaceFormatSwapBehaviorEnum): untyped = 3


type QSurfaceFormatRenderableTypeEnum* = distinct cint
template DefaultRenderableType*(_: type QSurfaceFormatRenderableTypeEnum): untyped = 0
template OpenGL*(_: type QSurfaceFormatRenderableTypeEnum): untyped = 1
template OpenGLES*(_: type QSurfaceFormatRenderableTypeEnum): untyped = 2
template OpenVG*(_: type QSurfaceFormatRenderableTypeEnum): untyped = 4


type QSurfaceFormatOpenGLContextProfileEnum* = distinct cint
template NoProfile*(_: type QSurfaceFormatOpenGLContextProfileEnum): untyped = 0
template CoreProfile*(_: type QSurfaceFormatOpenGLContextProfileEnum): untyped = 1
template CompatibilityProfile*(_: type QSurfaceFormatOpenGLContextProfileEnum): untyped = 2


type QSurfaceFormatColorSpaceEnum* = distinct cint
template DefaultColorSpace*(_: type QSurfaceFormatColorSpaceEnum): untyped = 0
template sRGBColorSpace*(_: type QSurfaceFormatColorSpaceEnum): untyped = 1


import ./gen_qsurfaceformat_types
export gen_qsurfaceformat_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQSurfaceFormat*{.exportc: "QSurfaceFormat", incompleteStruct.} = object

proc fcQSurfaceFormat_operatorAssign(self: pointer, other: pointer): void {.importc: "QSurfaceFormat_operatorAssign".}
proc fcQSurfaceFormat_setDepthBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setDepthBufferSize".}
proc fcQSurfaceFormat_depthBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_depthBufferSize".}
proc fcQSurfaceFormat_setStencilBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setStencilBufferSize".}
proc fcQSurfaceFormat_stencilBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_stencilBufferSize".}
proc fcQSurfaceFormat_setRedBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setRedBufferSize".}
proc fcQSurfaceFormat_redBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_redBufferSize".}
proc fcQSurfaceFormat_setGreenBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setGreenBufferSize".}
proc fcQSurfaceFormat_greenBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_greenBufferSize".}
proc fcQSurfaceFormat_setBlueBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setBlueBufferSize".}
proc fcQSurfaceFormat_blueBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_blueBufferSize".}
proc fcQSurfaceFormat_setAlphaBufferSize(self: pointer, size: cint): void {.importc: "QSurfaceFormat_setAlphaBufferSize".}
proc fcQSurfaceFormat_alphaBufferSize(self: pointer, ): cint {.importc: "QSurfaceFormat_alphaBufferSize".}
proc fcQSurfaceFormat_setSamples(self: pointer, numSamples: cint): void {.importc: "QSurfaceFormat_setSamples".}
proc fcQSurfaceFormat_samples(self: pointer, ): cint {.importc: "QSurfaceFormat_samples".}
proc fcQSurfaceFormat_setSwapBehavior(self: pointer, behavior: cint): void {.importc: "QSurfaceFormat_setSwapBehavior".}
proc fcQSurfaceFormat_swapBehavior(self: pointer, ): cint {.importc: "QSurfaceFormat_swapBehavior".}
proc fcQSurfaceFormat_hasAlpha(self: pointer, ): bool {.importc: "QSurfaceFormat_hasAlpha".}
proc fcQSurfaceFormat_setProfile(self: pointer, profile: cint): void {.importc: "QSurfaceFormat_setProfile".}
proc fcQSurfaceFormat_profile(self: pointer, ): cint {.importc: "QSurfaceFormat_profile".}
proc fcQSurfaceFormat_setRenderableType(self: pointer, typeVal: cint): void {.importc: "QSurfaceFormat_setRenderableType".}
proc fcQSurfaceFormat_renderableType(self: pointer, ): cint {.importc: "QSurfaceFormat_renderableType".}
proc fcQSurfaceFormat_setMajorVersion(self: pointer, majorVersion: cint): void {.importc: "QSurfaceFormat_setMajorVersion".}
proc fcQSurfaceFormat_majorVersion(self: pointer, ): cint {.importc: "QSurfaceFormat_majorVersion".}
proc fcQSurfaceFormat_setMinorVersion(self: pointer, minorVersion: cint): void {.importc: "QSurfaceFormat_setMinorVersion".}
proc fcQSurfaceFormat_minorVersion(self: pointer, ): cint {.importc: "QSurfaceFormat_minorVersion".}
proc fcQSurfaceFormat_version(self: pointer, ): struct_miqt_map {.importc: "QSurfaceFormat_version".}
proc fcQSurfaceFormat_setVersion(self: pointer, major: cint, minor: cint): void {.importc: "QSurfaceFormat_setVersion".}
proc fcQSurfaceFormat_stereo(self: pointer, ): bool {.importc: "QSurfaceFormat_stereo".}
proc fcQSurfaceFormat_setStereo(self: pointer, enable: bool): void {.importc: "QSurfaceFormat_setStereo".}
proc fcQSurfaceFormat_setOption(self: pointer, opt: cint): void {.importc: "QSurfaceFormat_setOption".}
proc fcQSurfaceFormat_testOption(self: pointer, opt: cint): bool {.importc: "QSurfaceFormat_testOption".}
proc fcQSurfaceFormat_setOptions(self: pointer, options: cint): void {.importc: "QSurfaceFormat_setOptions".}
proc fcQSurfaceFormat_setOptionWithOption(self: pointer, option: cint): void {.importc: "QSurfaceFormat_setOptionWithOption".}
proc fcQSurfaceFormat_testOptionWithOption(self: pointer, option: cint): bool {.importc: "QSurfaceFormat_testOptionWithOption".}
proc fcQSurfaceFormat_options(self: pointer, ): cint {.importc: "QSurfaceFormat_options".}
proc fcQSurfaceFormat_swapInterval(self: pointer, ): cint {.importc: "QSurfaceFormat_swapInterval".}
proc fcQSurfaceFormat_setSwapInterval(self: pointer, interval: cint): void {.importc: "QSurfaceFormat_setSwapInterval".}
proc fcQSurfaceFormat_colorSpace(self: pointer, ): cint {.importc: "QSurfaceFormat_colorSpace".}
proc fcQSurfaceFormat_setColorSpace(self: pointer, colorSpace: cint): void {.importc: "QSurfaceFormat_setColorSpace".}
proc fcQSurfaceFormat_setDefaultFormat(format: pointer): void {.importc: "QSurfaceFormat_setDefaultFormat".}
proc fcQSurfaceFormat_defaultFormat(): pointer {.importc: "QSurfaceFormat_defaultFormat".}
proc fcQSurfaceFormat_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QSurfaceFormat_setOption2".}
proc fcQSurfaceFormat_new(): ptr cQSurfaceFormat {.importc: "QSurfaceFormat_new".}
proc fcQSurfaceFormat_new2(options: cint): ptr cQSurfaceFormat {.importc: "QSurfaceFormat_new2".}
proc fcQSurfaceFormat_new3(other: pointer): ptr cQSurfaceFormat {.importc: "QSurfaceFormat_new3".}
proc fcQSurfaceFormat_staticMetaObject(): pointer {.importc: "QSurfaceFormat_staticMetaObject".}
proc fcQSurfaceFormat_delete(self: pointer) {.importc: "QSurfaceFormat_delete".}

proc operatorAssign*(self: gen_qsurfaceformat_types.QSurfaceFormat, other: gen_qsurfaceformat_types.QSurfaceFormat): void =
  fcQSurfaceFormat_operatorAssign(self.h, other.h)

proc setDepthBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, size: cint): void =
  fcQSurfaceFormat_setDepthBufferSize(self.h, size)

proc depthBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_depthBufferSize(self.h)

proc setStencilBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, size: cint): void =
  fcQSurfaceFormat_setStencilBufferSize(self.h, size)

proc stencilBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_stencilBufferSize(self.h)

proc setRedBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, size: cint): void =
  fcQSurfaceFormat_setRedBufferSize(self.h, size)

proc redBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_redBufferSize(self.h)

proc setGreenBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, size: cint): void =
  fcQSurfaceFormat_setGreenBufferSize(self.h, size)

proc greenBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_greenBufferSize(self.h)

proc setBlueBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, size: cint): void =
  fcQSurfaceFormat_setBlueBufferSize(self.h, size)

proc blueBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_blueBufferSize(self.h)

proc setAlphaBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, size: cint): void =
  fcQSurfaceFormat_setAlphaBufferSize(self.h, size)

proc alphaBufferSize*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_alphaBufferSize(self.h)

proc setSamples*(self: gen_qsurfaceformat_types.QSurfaceFormat, numSamples: cint): void =
  fcQSurfaceFormat_setSamples(self.h, numSamples)

proc samples*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_samples(self.h)

proc setSwapBehavior*(self: gen_qsurfaceformat_types.QSurfaceFormat, behavior: cint): void =
  fcQSurfaceFormat_setSwapBehavior(self.h, cint(behavior))

proc swapBehavior*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  cint(fcQSurfaceFormat_swapBehavior(self.h))

proc hasAlpha*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): bool =
  fcQSurfaceFormat_hasAlpha(self.h)

proc setProfile*(self: gen_qsurfaceformat_types.QSurfaceFormat, profile: cint): void =
  fcQSurfaceFormat_setProfile(self.h, cint(profile))

proc profile*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  cint(fcQSurfaceFormat_profile(self.h))

proc setRenderableType*(self: gen_qsurfaceformat_types.QSurfaceFormat, typeVal: cint): void =
  fcQSurfaceFormat_setRenderableType(self.h, cint(typeVal))

proc renderableType*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  cint(fcQSurfaceFormat_renderableType(self.h))

proc setMajorVersion*(self: gen_qsurfaceformat_types.QSurfaceFormat, majorVersion: cint): void =
  fcQSurfaceFormat_setMajorVersion(self.h, majorVersion)

proc majorVersion*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_majorVersion(self.h)

proc setMinorVersion*(self: gen_qsurfaceformat_types.QSurfaceFormat, minorVersion: cint): void =
  fcQSurfaceFormat_setMinorVersion(self.h, minorVersion)

proc minorVersion*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_minorVersion(self.h)

proc version*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): tuple[first: cint, second: cint] =
  var v_mm = fcQSurfaceFormat_version(self.h)
  var v_First_CArray = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Second_CArray = cast[ptr UncheckedArray[cint]](v_mm.values)
  var v_entry_First = v_First_CArray[0]

  var v_entry_Second = v_Second_CArray[0]

  (first: v_entry_First , second: v_entry_Second )

proc setVersion*(self: gen_qsurfaceformat_types.QSurfaceFormat, major: cint, minor: cint): void =
  fcQSurfaceFormat_setVersion(self.h, major, minor)

proc stereo*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): bool =
  fcQSurfaceFormat_stereo(self.h)

proc setStereo*(self: gen_qsurfaceformat_types.QSurfaceFormat, enable: bool): void =
  fcQSurfaceFormat_setStereo(self.h, enable)

proc setOption*(self: gen_qsurfaceformat_types.QSurfaceFormat, opt: cint): void =
  fcQSurfaceFormat_setOption(self.h, cint(opt))

proc testOption*(self: gen_qsurfaceformat_types.QSurfaceFormat, opt: cint): bool =
  fcQSurfaceFormat_testOption(self.h, cint(opt))

proc setOptions*(self: gen_qsurfaceformat_types.QSurfaceFormat, options: cint): void =
  fcQSurfaceFormat_setOptions(self.h, cint(options))

proc setOption2*(self: gen_qsurfaceformat_types.QSurfaceFormat, option: cint): void =
  fcQSurfaceFormat_setOptionWithOption(self.h, cint(option))

proc testOption2*(self: gen_qsurfaceformat_types.QSurfaceFormat, option: cint): bool =
  fcQSurfaceFormat_testOptionWithOption(self.h, cint(option))

proc options*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  cint(fcQSurfaceFormat_options(self.h))

proc swapInterval*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  fcQSurfaceFormat_swapInterval(self.h)

proc setSwapInterval*(self: gen_qsurfaceformat_types.QSurfaceFormat, interval: cint): void =
  fcQSurfaceFormat_setSwapInterval(self.h, interval)

proc colorSpace*(self: gen_qsurfaceformat_types.QSurfaceFormat, ): cint =
  cint(fcQSurfaceFormat_colorSpace(self.h))

proc setColorSpace*(self: gen_qsurfaceformat_types.QSurfaceFormat, colorSpace: cint): void =
  fcQSurfaceFormat_setColorSpace(self.h, cint(colorSpace))

proc setDefaultFormat*(_: type gen_qsurfaceformat_types.QSurfaceFormat, format: gen_qsurfaceformat_types.QSurfaceFormat): void =
  fcQSurfaceFormat_setDefaultFormat(format.h)

proc defaultFormat*(_: type gen_qsurfaceformat_types.QSurfaceFormat, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQSurfaceFormat_defaultFormat())

proc setOption*(self: gen_qsurfaceformat_types.QSurfaceFormat, option: cint, on: bool): void =
  fcQSurfaceFormat_setOption2(self.h, cint(option), on)

proc create*(T: type gen_qsurfaceformat_types.QSurfaceFormat): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQSurfaceFormat_new())

proc create*(T: type gen_qsurfaceformat_types.QSurfaceFormat,
    options: cint): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQSurfaceFormat_new2(cint(options)))

proc create*(T: type gen_qsurfaceformat_types.QSurfaceFormat,
    other: gen_qsurfaceformat_types.QSurfaceFormat): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQSurfaceFormat_new3(other.h))

proc staticMetaObject*(_: type gen_qsurfaceformat_types.QSurfaceFormat): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSurfaceFormat_staticMetaObject())
proc delete*(self: gen_qsurfaceformat_types.QSurfaceFormat) =
  fcQSurfaceFormat_delete(self.h)
