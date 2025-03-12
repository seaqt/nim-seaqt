import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qvideowindowcontrol.cpp", cflags).}


import ./gen_qvideowindowcontrol_types
export gen_qvideowindowcontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qmediacontrol
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qmediacontrol

type cQVideoWindowControl*{.exportc: "QVideoWindowControl", incompleteStruct.} = object

proc fcQVideoWindowControl_metaObject(self: pointer): pointer {.importc: "QVideoWindowControl_metaObject".}
proc fcQVideoWindowControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWindowControl_metacast".}
proc fcQVideoWindowControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWindowControl_metacall".}
proc fcQVideoWindowControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoWindowControl_tr".}
proc fcQVideoWindowControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoWindowControl_trUtf8".}
proc fcQVideoWindowControl_winId(self: pointer): uint {.importc: "QVideoWindowControl_winId".}
proc fcQVideoWindowControl_setWinId(self: pointer, id: uint): void {.importc: "QVideoWindowControl_setWinId".}
proc fcQVideoWindowControl_displayRect(self: pointer): pointer {.importc: "QVideoWindowControl_displayRect".}
proc fcQVideoWindowControl_setDisplayRect(self: pointer, rect: pointer): void {.importc: "QVideoWindowControl_setDisplayRect".}
proc fcQVideoWindowControl_isFullScreen(self: pointer): bool {.importc: "QVideoWindowControl_isFullScreen".}
proc fcQVideoWindowControl_setFullScreen(self: pointer, fullScreen: bool): void {.importc: "QVideoWindowControl_setFullScreen".}
proc fcQVideoWindowControl_repaint(self: pointer): void {.importc: "QVideoWindowControl_repaint".}
proc fcQVideoWindowControl_nativeSize(self: pointer): pointer {.importc: "QVideoWindowControl_nativeSize".}
proc fcQVideoWindowControl_aspectRatioMode(self: pointer): cint {.importc: "QVideoWindowControl_aspectRatioMode".}
proc fcQVideoWindowControl_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QVideoWindowControl_setAspectRatioMode".}
proc fcQVideoWindowControl_brightness(self: pointer): cint {.importc: "QVideoWindowControl_brightness".}
proc fcQVideoWindowControl_setBrightness(self: pointer, brightness: cint): void {.importc: "QVideoWindowControl_setBrightness".}
proc fcQVideoWindowControl_contrast(self: pointer): cint {.importc: "QVideoWindowControl_contrast".}
proc fcQVideoWindowControl_setContrast(self: pointer, contrast: cint): void {.importc: "QVideoWindowControl_setContrast".}
proc fcQVideoWindowControl_hue(self: pointer): cint {.importc: "QVideoWindowControl_hue".}
proc fcQVideoWindowControl_setHue(self: pointer, hue: cint): void {.importc: "QVideoWindowControl_setHue".}
proc fcQVideoWindowControl_saturation(self: pointer): cint {.importc: "QVideoWindowControl_saturation".}
proc fcQVideoWindowControl_setSaturation(self: pointer, saturation: cint): void {.importc: "QVideoWindowControl_setSaturation".}
proc fcQVideoWindowControl_fullScreenChanged(self: pointer, fullScreen: bool): void {.importc: "QVideoWindowControl_fullScreenChanged".}
proc fcQVideoWindowControl_connect_fullScreenChanged(self: pointer, slot: int, callback: proc (slot: int, fullScreen: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWindowControl_connect_fullScreenChanged".}
proc fcQVideoWindowControl_brightnessChanged(self: pointer, brightness: cint): void {.importc: "QVideoWindowControl_brightnessChanged".}
proc fcQVideoWindowControl_connect_brightnessChanged(self: pointer, slot: int, callback: proc (slot: int, brightness: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWindowControl_connect_brightnessChanged".}
proc fcQVideoWindowControl_contrastChanged(self: pointer, contrast: cint): void {.importc: "QVideoWindowControl_contrastChanged".}
proc fcQVideoWindowControl_connect_contrastChanged(self: pointer, slot: int, callback: proc (slot: int, contrast: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWindowControl_connect_contrastChanged".}
proc fcQVideoWindowControl_hueChanged(self: pointer, hue: cint): void {.importc: "QVideoWindowControl_hueChanged".}
proc fcQVideoWindowControl_connect_hueChanged(self: pointer, slot: int, callback: proc (slot: int, hue: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWindowControl_connect_hueChanged".}
proc fcQVideoWindowControl_saturationChanged(self: pointer, saturation: cint): void {.importc: "QVideoWindowControl_saturationChanged".}
proc fcQVideoWindowControl_connect_saturationChanged(self: pointer, slot: int, callback: proc (slot: int, saturation: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWindowControl_connect_saturationChanged".}
proc fcQVideoWindowControl_nativeSizeChanged(self: pointer): void {.importc: "QVideoWindowControl_nativeSizeChanged".}
proc fcQVideoWindowControl_connect_nativeSizeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWindowControl_connect_nativeSizeChanged".}
proc fcQVideoWindowControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWindowControl_tr2".}
proc fcQVideoWindowControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWindowControl_tr3".}
proc fcQVideoWindowControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWindowControl_trUtf82".}
proc fcQVideoWindowControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWindowControl_trUtf83".}
proc fcQVideoWindowControl_protectedbase_sender(self: pointer): pointer {.importc: "QVideoWindowControl_protectedbase_sender".}
proc fcQVideoWindowControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QVideoWindowControl_protectedbase_senderSignalIndex".}
proc fcQVideoWindowControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoWindowControl_protectedbase_receivers".}
proc fcQVideoWindowControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoWindowControl_protectedbase_isSignalConnected".}
proc fcQVideoWindowControl_staticMetaObject(): pointer {.importc: "QVideoWindowControl_staticMetaObject".}

proc metaObject*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWindowControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, param1: cstring): pointer =
  fcQVideoWindowControl_metacast(self.h, param1)

proc metacall*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoWindowControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideowindowcontrol_types.QVideoWindowControl, s: cstring): string =
  let v_ms = fcQVideoWindowControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowindowcontrol_types.QVideoWindowControl, s: cstring): string =
  let v_ms = fcQVideoWindowControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc winId*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): uint =
  fcQVideoWindowControl_winId(self.h)

proc setWinId*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, id: uint): void =
  fcQVideoWindowControl_setWinId(self.h, id)

proc displayRect*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQVideoWindowControl_displayRect(self.h), owned: true)

proc setDisplayRect*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, rect: gen_qrect_types.QRect): void =
  fcQVideoWindowControl_setDisplayRect(self.h, rect.h)

proc isFullScreen*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): bool =
  fcQVideoWindowControl_isFullScreen(self.h)

proc setFullScreen*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, fullScreen: bool): void =
  fcQVideoWindowControl_setFullScreen(self.h, fullScreen)

proc repaint*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): void =
  fcQVideoWindowControl_repaint(self.h)

proc nativeSize*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWindowControl_nativeSize(self.h), owned: true)

proc aspectRatioMode*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): cint =
  cint(fcQVideoWindowControl_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, mode: cint): void =
  fcQVideoWindowControl_setAspectRatioMode(self.h, cint(mode))

proc brightness*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): cint =
  fcQVideoWindowControl_brightness(self.h)

proc setBrightness*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, brightness: cint): void =
  fcQVideoWindowControl_setBrightness(self.h, brightness)

proc contrast*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): cint =
  fcQVideoWindowControl_contrast(self.h)

proc setContrast*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, contrast: cint): void =
  fcQVideoWindowControl_setContrast(self.h, contrast)

proc hue*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): cint =
  fcQVideoWindowControl_hue(self.h)

proc setHue*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, hue: cint): void =
  fcQVideoWindowControl_setHue(self.h, hue)

proc saturation*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): cint =
  fcQVideoWindowControl_saturation(self.h)

proc setSaturation*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, saturation: cint): void =
  fcQVideoWindowControl_setSaturation(self.h, saturation)

proc fullScreenChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, fullScreen: bool): void =
  fcQVideoWindowControl_fullScreenChanged(self.h, fullScreen)

type QVideoWindowControlfullScreenChangedSlot* = proc(fullScreen: bool)
proc cQVideoWindowControl_slot_callback_fullScreenChanged(slot: int, fullScreen: bool) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWindowControlfullScreenChangedSlot](cast[pointer](slot))
  let slotval1 = fullScreen

  nimfunc[](slotval1)

proc cQVideoWindowControl_slot_callback_fullScreenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWindowControlfullScreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfullScreenChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, slot: QVideoWindowControlfullScreenChangedSlot) =
  var tmp = new QVideoWindowControlfullScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWindowControl_connect_fullScreenChanged(self.h, cast[int](addr tmp[]), cQVideoWindowControl_slot_callback_fullScreenChanged, cQVideoWindowControl_slot_callback_fullScreenChanged_release)

proc brightnessChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, brightness: cint): void =
  fcQVideoWindowControl_brightnessChanged(self.h, brightness)

type QVideoWindowControlbrightnessChangedSlot* = proc(brightness: cint)
proc cQVideoWindowControl_slot_callback_brightnessChanged(slot: int, brightness: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWindowControlbrightnessChangedSlot](cast[pointer](slot))
  let slotval1 = brightness

  nimfunc[](slotval1)

proc cQVideoWindowControl_slot_callback_brightnessChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWindowControlbrightnessChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbrightnessChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, slot: QVideoWindowControlbrightnessChangedSlot) =
  var tmp = new QVideoWindowControlbrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWindowControl_connect_brightnessChanged(self.h, cast[int](addr tmp[]), cQVideoWindowControl_slot_callback_brightnessChanged, cQVideoWindowControl_slot_callback_brightnessChanged_release)

proc contrastChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, contrast: cint): void =
  fcQVideoWindowControl_contrastChanged(self.h, contrast)

type QVideoWindowControlcontrastChangedSlot* = proc(contrast: cint)
proc cQVideoWindowControl_slot_callback_contrastChanged(slot: int, contrast: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWindowControlcontrastChangedSlot](cast[pointer](slot))
  let slotval1 = contrast

  nimfunc[](slotval1)

proc cQVideoWindowControl_slot_callback_contrastChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWindowControlcontrastChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontrastChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, slot: QVideoWindowControlcontrastChangedSlot) =
  var tmp = new QVideoWindowControlcontrastChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWindowControl_connect_contrastChanged(self.h, cast[int](addr tmp[]), cQVideoWindowControl_slot_callback_contrastChanged, cQVideoWindowControl_slot_callback_contrastChanged_release)

proc hueChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, hue: cint): void =
  fcQVideoWindowControl_hueChanged(self.h, hue)

type QVideoWindowControlhueChangedSlot* = proc(hue: cint)
proc cQVideoWindowControl_slot_callback_hueChanged(slot: int, hue: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWindowControlhueChangedSlot](cast[pointer](slot))
  let slotval1 = hue

  nimfunc[](slotval1)

proc cQVideoWindowControl_slot_callback_hueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWindowControlhueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhueChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, slot: QVideoWindowControlhueChangedSlot) =
  var tmp = new QVideoWindowControlhueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWindowControl_connect_hueChanged(self.h, cast[int](addr tmp[]), cQVideoWindowControl_slot_callback_hueChanged, cQVideoWindowControl_slot_callback_hueChanged_release)

proc saturationChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, saturation: cint): void =
  fcQVideoWindowControl_saturationChanged(self.h, saturation)

type QVideoWindowControlsaturationChangedSlot* = proc(saturation: cint)
proc cQVideoWindowControl_slot_callback_saturationChanged(slot: int, saturation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWindowControlsaturationChangedSlot](cast[pointer](slot))
  let slotval1 = saturation

  nimfunc[](slotval1)

proc cQVideoWindowControl_slot_callback_saturationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWindowControlsaturationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsaturationChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, slot: QVideoWindowControlsaturationChangedSlot) =
  var tmp = new QVideoWindowControlsaturationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWindowControl_connect_saturationChanged(self.h, cast[int](addr tmp[]), cQVideoWindowControl_slot_callback_saturationChanged, cQVideoWindowControl_slot_callback_saturationChanged_release)

proc nativeSizeChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): void =
  fcQVideoWindowControl_nativeSizeChanged(self.h)

type QVideoWindowControlnativeSizeChangedSlot* = proc()
proc cQVideoWindowControl_slot_callback_nativeSizeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWindowControlnativeSizeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQVideoWindowControl_slot_callback_nativeSizeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWindowControlnativeSizeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnativeSizeChanged*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, slot: QVideoWindowControlnativeSizeChangedSlot) =
  var tmp = new QVideoWindowControlnativeSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWindowControl_connect_nativeSizeChanged(self.h, cast[int](addr tmp[]), cQVideoWindowControl_slot_callback_nativeSizeChanged, cQVideoWindowControl_slot_callback_nativeSizeChanged_release)

proc tr*(_: type gen_qvideowindowcontrol_types.QVideoWindowControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWindowControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideowindowcontrol_types.QVideoWindowControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWindowControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowindowcontrol_types.QVideoWindowControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWindowControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowindowcontrol_types.QVideoWindowControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWindowControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoWindowControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvideowindowcontrol_types.QVideoWindowControl): cint =
  fcQVideoWindowControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, signal: cstring): cint =
  fcQVideoWindowControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideowindowcontrol_types.QVideoWindowControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoWindowControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qvideowindowcontrol_types.QVideoWindowControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWindowControl_staticMetaObject())
