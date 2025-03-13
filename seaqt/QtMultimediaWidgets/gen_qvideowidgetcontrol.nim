import ./Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5MultimediaWidgets") & " -fPIC"
{.compile("gen_qvideowidgetcontrol.cpp", cflags).}


import ./gen_qvideowidgetcontrol_types
export gen_qvideowidgetcontrol_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtMultimedia/gen_qmediacontrol,
  ../QtWidgets/gen_qwidget_types
export
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediacontrol,
  gen_qwidget_types

type cQVideoWidgetControl*{.exportc: "QVideoWidgetControl", incompleteStruct.} = object

proc fcQVideoWidgetControl_metaObject(self: pointer): pointer {.importc: "QVideoWidgetControl_metaObject".}
proc fcQVideoWidgetControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidgetControl_metacast".}
proc fcQVideoWidgetControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVideoWidgetControl_metacall".}
proc fcQVideoWidgetControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoWidgetControl_tr".}
proc fcQVideoWidgetControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoWidgetControl_trUtf8".}
proc fcQVideoWidgetControl_videoWidget(self: pointer): pointer {.importc: "QVideoWidgetControl_videoWidget".}
proc fcQVideoWidgetControl_aspectRatioMode(self: pointer): cint {.importc: "QVideoWidgetControl_aspectRatioMode".}
proc fcQVideoWidgetControl_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QVideoWidgetControl_setAspectRatioMode".}
proc fcQVideoWidgetControl_isFullScreen(self: pointer): bool {.importc: "QVideoWidgetControl_isFullScreen".}
proc fcQVideoWidgetControl_setFullScreen(self: pointer, fullScreen: bool): void {.importc: "QVideoWidgetControl_setFullScreen".}
proc fcQVideoWidgetControl_brightness(self: pointer): cint {.importc: "QVideoWidgetControl_brightness".}
proc fcQVideoWidgetControl_setBrightness(self: pointer, brightness: cint): void {.importc: "QVideoWidgetControl_setBrightness".}
proc fcQVideoWidgetControl_contrast(self: pointer): cint {.importc: "QVideoWidgetControl_contrast".}
proc fcQVideoWidgetControl_setContrast(self: pointer, contrast: cint): void {.importc: "QVideoWidgetControl_setContrast".}
proc fcQVideoWidgetControl_hue(self: pointer): cint {.importc: "QVideoWidgetControl_hue".}
proc fcQVideoWidgetControl_setHue(self: pointer, hue: cint): void {.importc: "QVideoWidgetControl_setHue".}
proc fcQVideoWidgetControl_saturation(self: pointer): cint {.importc: "QVideoWidgetControl_saturation".}
proc fcQVideoWidgetControl_setSaturation(self: pointer, saturation: cint): void {.importc: "QVideoWidgetControl_setSaturation".}
proc fcQVideoWidgetControl_fullScreenChanged(self: pointer, fullScreen: bool): void {.importc: "QVideoWidgetControl_fullScreenChanged".}
proc fcQVideoWidgetControl_connect_fullScreenChanged(self: pointer, slot: int, callback: proc (slot: int, fullScreen: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidgetControl_connect_fullScreenChanged".}
proc fcQVideoWidgetControl_brightnessChanged(self: pointer, brightness: cint): void {.importc: "QVideoWidgetControl_brightnessChanged".}
proc fcQVideoWidgetControl_connect_brightnessChanged(self: pointer, slot: int, callback: proc (slot: int, brightness: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidgetControl_connect_brightnessChanged".}
proc fcQVideoWidgetControl_contrastChanged(self: pointer, contrast: cint): void {.importc: "QVideoWidgetControl_contrastChanged".}
proc fcQVideoWidgetControl_connect_contrastChanged(self: pointer, slot: int, callback: proc (slot: int, contrast: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidgetControl_connect_contrastChanged".}
proc fcQVideoWidgetControl_hueChanged(self: pointer, hue: cint): void {.importc: "QVideoWidgetControl_hueChanged".}
proc fcQVideoWidgetControl_connect_hueChanged(self: pointer, slot: int, callback: proc (slot: int, hue: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidgetControl_connect_hueChanged".}
proc fcQVideoWidgetControl_saturationChanged(self: pointer, saturation: cint): void {.importc: "QVideoWidgetControl_saturationChanged".}
proc fcQVideoWidgetControl_connect_saturationChanged(self: pointer, slot: int, callback: proc (slot: int, saturation: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QVideoWidgetControl_connect_saturationChanged".}
proc fcQVideoWidgetControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidgetControl_tr2".}
proc fcQVideoWidgetControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidgetControl_tr3".}
proc fcQVideoWidgetControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidgetControl_trUtf82".}
proc fcQVideoWidgetControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidgetControl_trUtf83".}
proc fcQVideoWidgetControl_protectedbase_sender(self: pointer): pointer {.importc: "QVideoWidgetControl_protectedbase_sender".}
proc fcQVideoWidgetControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QVideoWidgetControl_protectedbase_senderSignalIndex".}
proc fcQVideoWidgetControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QVideoWidgetControl_protectedbase_receivers".}
proc fcQVideoWidgetControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QVideoWidgetControl_protectedbase_isSignalConnected".}
proc fcQVideoWidgetControl_staticMetaObject(): pointer {.importc: "QVideoWidgetControl_staticMetaObject".}

proc metaObject*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidgetControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, param1: cstring): pointer =
  fcQVideoWidgetControl_metacast(self.h, param1)

proc metacall*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQVideoWidgetControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring): string =
  let v_ms = fcQVideoWidgetControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring): string =
  let v_ms = fcQVideoWidgetControl_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc videoWidget*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQVideoWidgetControl_videoWidget(self.h), owned: false)

proc aspectRatioMode*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): cint =
  cint(fcQVideoWidgetControl_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, mode: cint): void =
  fcQVideoWidgetControl_setAspectRatioMode(self.h, cint(mode))

proc isFullScreen*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): bool =
  fcQVideoWidgetControl_isFullScreen(self.h)

proc setFullScreen*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, fullScreen: bool): void =
  fcQVideoWidgetControl_setFullScreen(self.h, fullScreen)

proc brightness*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): cint =
  fcQVideoWidgetControl_brightness(self.h)

proc setBrightness*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, brightness: cint): void =
  fcQVideoWidgetControl_setBrightness(self.h, brightness)

proc contrast*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): cint =
  fcQVideoWidgetControl_contrast(self.h)

proc setContrast*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, contrast: cint): void =
  fcQVideoWidgetControl_setContrast(self.h, contrast)

proc hue*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): cint =
  fcQVideoWidgetControl_hue(self.h)

proc setHue*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, hue: cint): void =
  fcQVideoWidgetControl_setHue(self.h, hue)

proc saturation*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): cint =
  fcQVideoWidgetControl_saturation(self.h)

proc setSaturation*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, saturation: cint): void =
  fcQVideoWidgetControl_setSaturation(self.h, saturation)

proc fullScreenChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, fullScreen: bool): void =
  fcQVideoWidgetControl_fullScreenChanged(self.h, fullScreen)

type QVideoWidgetControlfullScreenChangedSlot* = proc(fullScreen: bool)
proc cQVideoWidgetControl_slot_callback_fullScreenChanged(slot: int, fullScreen: bool) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetControlfullScreenChangedSlot](cast[pointer](slot))
  let slotval1 = fullScreen

  nimfunc[](slotval1)

proc cQVideoWidgetControl_slot_callback_fullScreenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetControlfullScreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfullScreenChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlfullScreenChangedSlot) =
  var tmp = new QVideoWidgetControlfullScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_fullScreenChanged(self.h, cast[int](addr tmp[]), cQVideoWidgetControl_slot_callback_fullScreenChanged, cQVideoWidgetControl_slot_callback_fullScreenChanged_release)

proc brightnessChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, brightness: cint): void =
  fcQVideoWidgetControl_brightnessChanged(self.h, brightness)

type QVideoWidgetControlbrightnessChangedSlot* = proc(brightness: cint)
proc cQVideoWidgetControl_slot_callback_brightnessChanged(slot: int, brightness: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetControlbrightnessChangedSlot](cast[pointer](slot))
  let slotval1 = brightness

  nimfunc[](slotval1)

proc cQVideoWidgetControl_slot_callback_brightnessChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetControlbrightnessChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbrightnessChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlbrightnessChangedSlot) =
  var tmp = new QVideoWidgetControlbrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_brightnessChanged(self.h, cast[int](addr tmp[]), cQVideoWidgetControl_slot_callback_brightnessChanged, cQVideoWidgetControl_slot_callback_brightnessChanged_release)

proc contrastChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, contrast: cint): void =
  fcQVideoWidgetControl_contrastChanged(self.h, contrast)

type QVideoWidgetControlcontrastChangedSlot* = proc(contrast: cint)
proc cQVideoWidgetControl_slot_callback_contrastChanged(slot: int, contrast: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetControlcontrastChangedSlot](cast[pointer](slot))
  let slotval1 = contrast

  nimfunc[](slotval1)

proc cQVideoWidgetControl_slot_callback_contrastChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetControlcontrastChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncontrastChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlcontrastChangedSlot) =
  var tmp = new QVideoWidgetControlcontrastChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_contrastChanged(self.h, cast[int](addr tmp[]), cQVideoWidgetControl_slot_callback_contrastChanged, cQVideoWidgetControl_slot_callback_contrastChanged_release)

proc hueChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, hue: cint): void =
  fcQVideoWidgetControl_hueChanged(self.h, hue)

type QVideoWidgetControlhueChangedSlot* = proc(hue: cint)
proc cQVideoWidgetControl_slot_callback_hueChanged(slot: int, hue: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetControlhueChangedSlot](cast[pointer](slot))
  let slotval1 = hue

  nimfunc[](slotval1)

proc cQVideoWidgetControl_slot_callback_hueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetControlhueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onhueChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlhueChangedSlot) =
  var tmp = new QVideoWidgetControlhueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_hueChanged(self.h, cast[int](addr tmp[]), cQVideoWidgetControl_slot_callback_hueChanged, cQVideoWidgetControl_slot_callback_hueChanged_release)

proc saturationChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, saturation: cint): void =
  fcQVideoWidgetControl_saturationChanged(self.h, saturation)

type QVideoWidgetControlsaturationChangedSlot* = proc(saturation: cint)
proc cQVideoWidgetControl_slot_callback_saturationChanged(slot: int, saturation: cint) {.cdecl.} =
  let nimfunc = cast[ptr QVideoWidgetControlsaturationChangedSlot](cast[pointer](slot))
  let slotval1 = saturation

  nimfunc[](slotval1)

proc cQVideoWidgetControl_slot_callback_saturationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QVideoWidgetControlsaturationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsaturationChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlsaturationChangedSlot) =
  var tmp = new QVideoWidgetControlsaturationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_saturationChanged(self.h, cast[int](addr tmp[]), cQVideoWidgetControl_slot_callback_saturationChanged, cQVideoWidgetControl_slot_callback_saturationChanged_release)

proc tr*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidgetControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidgetControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidgetControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidgetControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQVideoWidgetControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl): cint =
  fcQVideoWidgetControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, signal: cstring): cint =
  fcQVideoWidgetControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQVideoWidgetControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidgetControl_staticMetaObject())
