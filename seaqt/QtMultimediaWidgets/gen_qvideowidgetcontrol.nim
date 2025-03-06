import ./Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5MultimediaWidgets")  & " -fPIC"
{.compile("gen_qvideowidgetcontrol.cpp", cflags).}


import ./gen_qvideowidgetcontrol_types
export gen_qvideowidgetcontrol_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtMultimedia/gen_qmediacontrol,
  ../QtWidgets/gen_qwidget_types
export
  gen_qobjectdefs_types,
  gen_qmediacontrol,
  gen_qwidget_types

type cQVideoWidgetControl*{.exportc: "QVideoWidgetControl", incompleteStruct.} = object

proc fcQVideoWidgetControl_metaObject(self: pointer, ): pointer {.importc: "QVideoWidgetControl_metaObject".}
proc fcQVideoWidgetControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidgetControl_metacast".}
proc fcQVideoWidgetControl_tr(s: cstring): struct_miqt_string {.importc: "QVideoWidgetControl_tr".}
proc fcQVideoWidgetControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoWidgetControl_trUtf8".}
proc fcQVideoWidgetControl_videoWidget(self: pointer, ): pointer {.importc: "QVideoWidgetControl_videoWidget".}
proc fcQVideoWidgetControl_aspectRatioMode(self: pointer, ): cint {.importc: "QVideoWidgetControl_aspectRatioMode".}
proc fcQVideoWidgetControl_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QVideoWidgetControl_setAspectRatioMode".}
proc fcQVideoWidgetControl_isFullScreen(self: pointer, ): bool {.importc: "QVideoWidgetControl_isFullScreen".}
proc fcQVideoWidgetControl_setFullScreen(self: pointer, fullScreen: bool): void {.importc: "QVideoWidgetControl_setFullScreen".}
proc fcQVideoWidgetControl_brightness(self: pointer, ): cint {.importc: "QVideoWidgetControl_brightness".}
proc fcQVideoWidgetControl_setBrightness(self: pointer, brightness: cint): void {.importc: "QVideoWidgetControl_setBrightness".}
proc fcQVideoWidgetControl_contrast(self: pointer, ): cint {.importc: "QVideoWidgetControl_contrast".}
proc fcQVideoWidgetControl_setContrast(self: pointer, contrast: cint): void {.importc: "QVideoWidgetControl_setContrast".}
proc fcQVideoWidgetControl_hue(self: pointer, ): cint {.importc: "QVideoWidgetControl_hue".}
proc fcQVideoWidgetControl_setHue(self: pointer, hue: cint): void {.importc: "QVideoWidgetControl_setHue".}
proc fcQVideoWidgetControl_saturation(self: pointer, ): cint {.importc: "QVideoWidgetControl_saturation".}
proc fcQVideoWidgetControl_setSaturation(self: pointer, saturation: cint): void {.importc: "QVideoWidgetControl_setSaturation".}
proc fcQVideoWidgetControl_fullScreenChanged(self: pointer, fullScreen: bool): void {.importc: "QVideoWidgetControl_fullScreenChanged".}
proc fcQVideoWidgetControl_connect_fullScreenChanged(self: pointer, slot: int) {.importc: "QVideoWidgetControl_connect_fullScreenChanged".}
proc fcQVideoWidgetControl_brightnessChanged(self: pointer, brightness: cint): void {.importc: "QVideoWidgetControl_brightnessChanged".}
proc fcQVideoWidgetControl_connect_brightnessChanged(self: pointer, slot: int) {.importc: "QVideoWidgetControl_connect_brightnessChanged".}
proc fcQVideoWidgetControl_contrastChanged(self: pointer, contrast: cint): void {.importc: "QVideoWidgetControl_contrastChanged".}
proc fcQVideoWidgetControl_connect_contrastChanged(self: pointer, slot: int) {.importc: "QVideoWidgetControl_connect_contrastChanged".}
proc fcQVideoWidgetControl_hueChanged(self: pointer, hue: cint): void {.importc: "QVideoWidgetControl_hueChanged".}
proc fcQVideoWidgetControl_connect_hueChanged(self: pointer, slot: int) {.importc: "QVideoWidgetControl_connect_hueChanged".}
proc fcQVideoWidgetControl_saturationChanged(self: pointer, saturation: cint): void {.importc: "QVideoWidgetControl_saturationChanged".}
proc fcQVideoWidgetControl_connect_saturationChanged(self: pointer, slot: int) {.importc: "QVideoWidgetControl_connect_saturationChanged".}
proc fcQVideoWidgetControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidgetControl_tr2".}
proc fcQVideoWidgetControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidgetControl_tr3".}
proc fcQVideoWidgetControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidgetControl_trUtf82".}
proc fcQVideoWidgetControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidgetControl_trUtf83".}
proc fcQVideoWidgetControl_delete(self: pointer) {.importc: "QVideoWidgetControl_delete".}


func init*(T: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, h: ptr cQVideoWidgetControl): gen_qvideowidgetcontrol_types.QVideoWidgetControl =
  T(h: h)
proc metaObject*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidgetControl_metaObject(self.h))

proc metacast*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, param1: cstring): pointer =
  fcQVideoWidgetControl_metacast(self.h, param1)

proc tr*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring): string =
  let v_ms = fcQVideoWidgetControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring): string =
  let v_ms = fcQVideoWidgetControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc videoWidget*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQVideoWidgetControl_videoWidget(self.h))

proc aspectRatioMode*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, ): cint =
  cint(fcQVideoWidgetControl_aspectRatioMode(self.h))

proc setAspectRatioMode*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, mode: cint): void =
  fcQVideoWidgetControl_setAspectRatioMode(self.h, cint(mode))

proc isFullScreen*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, ): bool =
  fcQVideoWidgetControl_isFullScreen(self.h)

proc setFullScreen*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, fullScreen: bool): void =
  fcQVideoWidgetControl_setFullScreen(self.h, fullScreen)

proc brightness*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, ): cint =
  fcQVideoWidgetControl_brightness(self.h)

proc setBrightness*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, brightness: cint): void =
  fcQVideoWidgetControl_setBrightness(self.h, brightness)

proc contrast*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, ): cint =
  fcQVideoWidgetControl_contrast(self.h)

proc setContrast*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, contrast: cint): void =
  fcQVideoWidgetControl_setContrast(self.h, contrast)

proc hue*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, ): cint =
  fcQVideoWidgetControl_hue(self.h)

proc setHue*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, hue: cint): void =
  fcQVideoWidgetControl_setHue(self.h, hue)

proc saturation*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, ): cint =
  fcQVideoWidgetControl_saturation(self.h)

proc setSaturation*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, saturation: cint): void =
  fcQVideoWidgetControl_setSaturation(self.h, saturation)

proc fullScreenChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, fullScreen: bool): void =
  fcQVideoWidgetControl_fullScreenChanged(self.h, fullScreen)

type QVideoWidgetControlfullScreenChangedSlot* = proc(fullScreen: bool)
proc miqt_exec_callback_QVideoWidgetControl_fullScreenChanged(slot: int, fullScreen: bool) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetControlfullScreenChangedSlot](cast[pointer](slot))
  let slotval1 = fullScreen

  nimfunc[](slotval1)

proc onfullScreenChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlfullScreenChangedSlot) =
  var tmp = new QVideoWidgetControlfullScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_fullScreenChanged(self.h, cast[int](addr tmp[]))

proc brightnessChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, brightness: cint): void =
  fcQVideoWidgetControl_brightnessChanged(self.h, brightness)

type QVideoWidgetControlbrightnessChangedSlot* = proc(brightness: cint)
proc miqt_exec_callback_QVideoWidgetControl_brightnessChanged(slot: int, brightness: cint) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetControlbrightnessChangedSlot](cast[pointer](slot))
  let slotval1 = brightness

  nimfunc[](slotval1)

proc onbrightnessChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlbrightnessChangedSlot) =
  var tmp = new QVideoWidgetControlbrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_brightnessChanged(self.h, cast[int](addr tmp[]))

proc contrastChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, contrast: cint): void =
  fcQVideoWidgetControl_contrastChanged(self.h, contrast)

type QVideoWidgetControlcontrastChangedSlot* = proc(contrast: cint)
proc miqt_exec_callback_QVideoWidgetControl_contrastChanged(slot: int, contrast: cint) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetControlcontrastChangedSlot](cast[pointer](slot))
  let slotval1 = contrast

  nimfunc[](slotval1)

proc oncontrastChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlcontrastChangedSlot) =
  var tmp = new QVideoWidgetControlcontrastChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_contrastChanged(self.h, cast[int](addr tmp[]))

proc hueChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, hue: cint): void =
  fcQVideoWidgetControl_hueChanged(self.h, hue)

type QVideoWidgetControlhueChangedSlot* = proc(hue: cint)
proc miqt_exec_callback_QVideoWidgetControl_hueChanged(slot: int, hue: cint) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetControlhueChangedSlot](cast[pointer](slot))
  let slotval1 = hue

  nimfunc[](slotval1)

proc onhueChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlhueChangedSlot) =
  var tmp = new QVideoWidgetControlhueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_hueChanged(self.h, cast[int](addr tmp[]))

proc saturationChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, saturation: cint): void =
  fcQVideoWidgetControl_saturationChanged(self.h, saturation)

type QVideoWidgetControlsaturationChangedSlot* = proc(saturation: cint)
proc miqt_exec_callback_QVideoWidgetControl_saturationChanged(slot: int, saturation: cint) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetControlsaturationChangedSlot](cast[pointer](slot))
  let slotval1 = saturation

  nimfunc[](slotval1)

proc onsaturationChanged*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl, slot: QVideoWidgetControlsaturationChangedSlot) =
  var tmp = new QVideoWidgetControlsaturationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidgetControl_connect_saturationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidgetControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidgetControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidgetControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidgetcontrol_types.QVideoWidgetControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidgetControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qvideowidgetcontrol_types.QVideoWidgetControl) =
  fcQVideoWidgetControl_delete(self.h)
