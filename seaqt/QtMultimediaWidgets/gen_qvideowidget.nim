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
{.compile("gen_qvideowidget.cpp", cflags).}


import ./gen_qvideowidget_types
export gen_qvideowidget_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtMultimedia/gen_qabstractvideosurface_types,
  ../QtMultimedia/gen_qmediaobject_types,
  ../QtWidgets/gen_qwidget
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractvideosurface_types,
  gen_qmediaobject_types,
  gen_qwidget

type cQVideoWidget*{.exportc: "QVideoWidget", incompleteStruct.} = object

proc fcQVideoWidget_new(parent: pointer): ptr cQVideoWidget {.importc: "QVideoWidget_new".}
proc fcQVideoWidget_new2(): ptr cQVideoWidget {.importc: "QVideoWidget_new2".}
proc fcQVideoWidget_metaObject(self: pointer, ): pointer {.importc: "QVideoWidget_metaObject".}
proc fcQVideoWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QVideoWidget_metacast".}
proc fcQVideoWidget_tr(s: cstring): struct_miqt_string {.importc: "QVideoWidget_tr".}
proc fcQVideoWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QVideoWidget_trUtf8".}
proc fcQVideoWidget_mediaObject(self: pointer, ): pointer {.importc: "QVideoWidget_mediaObject".}
proc fcQVideoWidget_videoSurface(self: pointer, ): pointer {.importc: "QVideoWidget_videoSurface".}
proc fcQVideoWidget_aspectRatioMode(self: pointer, ): cint {.importc: "QVideoWidget_aspectRatioMode".}
proc fcQVideoWidget_brightness(self: pointer, ): cint {.importc: "QVideoWidget_brightness".}
proc fcQVideoWidget_contrast(self: pointer, ): cint {.importc: "QVideoWidget_contrast".}
proc fcQVideoWidget_hue(self: pointer, ): cint {.importc: "QVideoWidget_hue".}
proc fcQVideoWidget_saturation(self: pointer, ): cint {.importc: "QVideoWidget_saturation".}
proc fcQVideoWidget_sizeHint(self: pointer, ): pointer {.importc: "QVideoWidget_sizeHint".}
proc fcQVideoWidget_setFullScreen(self: pointer, fullScreen: bool): void {.importc: "QVideoWidget_setFullScreen".}
proc fcQVideoWidget_setAspectRatioMode(self: pointer, mode: cint): void {.importc: "QVideoWidget_setAspectRatioMode".}
proc fcQVideoWidget_setBrightness(self: pointer, brightness: cint): void {.importc: "QVideoWidget_setBrightness".}
proc fcQVideoWidget_setContrast(self: pointer, contrast: cint): void {.importc: "QVideoWidget_setContrast".}
proc fcQVideoWidget_setHue(self: pointer, hue: cint): void {.importc: "QVideoWidget_setHue".}
proc fcQVideoWidget_setSaturation(self: pointer, saturation: cint): void {.importc: "QVideoWidget_setSaturation".}
proc fcQVideoWidget_fullScreenChanged(self: pointer, fullScreen: bool): void {.importc: "QVideoWidget_fullScreenChanged".}
proc fcQVideoWidget_connect_fullScreenChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_fullScreenChanged".}
proc fcQVideoWidget_brightnessChanged(self: pointer, brightness: cint): void {.importc: "QVideoWidget_brightnessChanged".}
proc fcQVideoWidget_connect_brightnessChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_brightnessChanged".}
proc fcQVideoWidget_contrastChanged(self: pointer, contrast: cint): void {.importc: "QVideoWidget_contrastChanged".}
proc fcQVideoWidget_connect_contrastChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_contrastChanged".}
proc fcQVideoWidget_hueChanged(self: pointer, hue: cint): void {.importc: "QVideoWidget_hueChanged".}
proc fcQVideoWidget_connect_hueChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_hueChanged".}
proc fcQVideoWidget_saturationChanged(self: pointer, saturation: cint): void {.importc: "QVideoWidget_saturationChanged".}
proc fcQVideoWidget_connect_saturationChanged(self: pointer, slot: int) {.importc: "QVideoWidget_connect_saturationChanged".}
proc fcQVideoWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidget_tr2".}
proc fcQVideoWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidget_tr3".}
proc fcQVideoWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QVideoWidget_trUtf82".}
proc fcQVideoWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVideoWidget_trUtf83".}
proc fQVideoWidget_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_mediaObject".}
proc fcQVideoWidget_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mediaObject".}
proc fQVideoWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_sizeHint".}
proc fcQVideoWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_sizeHint".}
proc fQVideoWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVideoWidget_virtualbase_event".}
proc fcQVideoWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_event".}
proc fQVideoWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_showEvent".}
proc fcQVideoWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_showEvent".}
proc fQVideoWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_hideEvent".}
proc fcQVideoWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_hideEvent".}
proc fQVideoWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_resizeEvent".}
proc fcQVideoWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_resizeEvent".}
proc fQVideoWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_moveEvent".}
proc fcQVideoWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_moveEvent".}
proc fQVideoWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_paintEvent".}
proc fcQVideoWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_paintEvent".}
proc fQVideoWidget_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QVideoWidget_virtualbase_setMediaObject".}
proc fcQVideoWidget_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_setMediaObject".}
proc fQVideoWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QVideoWidget_virtualbase_devType".}
proc fcQVideoWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_devType".}
proc fQVideoWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QVideoWidget_virtualbase_setVisible".}
proc fcQVideoWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_setVisible".}
proc fQVideoWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_minimumSizeHint".}
proc fcQVideoWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_minimumSizeHint".}
proc fQVideoWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QVideoWidget_virtualbase_heightForWidth".}
proc fcQVideoWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_heightForWidth".}
proc fQVideoWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QVideoWidget_virtualbase_hasHeightForWidth".}
proc fcQVideoWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_hasHeightForWidth".}
proc fQVideoWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_paintEngine".}
proc fcQVideoWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_paintEngine".}
proc fQVideoWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_mousePressEvent".}
proc fcQVideoWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mousePressEvent".}
proc fQVideoWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_mouseReleaseEvent".}
proc fcQVideoWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mouseReleaseEvent".}
proc fQVideoWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQVideoWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mouseDoubleClickEvent".}
proc fQVideoWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_mouseMoveEvent".}
proc fcQVideoWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_mouseMoveEvent".}
proc fQVideoWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_wheelEvent".}
proc fcQVideoWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_wheelEvent".}
proc fQVideoWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_keyPressEvent".}
proc fcQVideoWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_keyPressEvent".}
proc fQVideoWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_keyReleaseEvent".}
proc fcQVideoWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_keyReleaseEvent".}
proc fQVideoWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_focusInEvent".}
proc fcQVideoWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_focusInEvent".}
proc fQVideoWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_focusOutEvent".}
proc fcQVideoWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_focusOutEvent".}
proc fQVideoWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_enterEvent".}
proc fcQVideoWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_enterEvent".}
proc fQVideoWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_leaveEvent".}
proc fcQVideoWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_leaveEvent".}
proc fQVideoWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_closeEvent".}
proc fcQVideoWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_closeEvent".}
proc fQVideoWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_contextMenuEvent".}
proc fcQVideoWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_contextMenuEvent".}
proc fQVideoWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_tabletEvent".}
proc fcQVideoWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_tabletEvent".}
proc fQVideoWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_actionEvent".}
proc fcQVideoWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_actionEvent".}
proc fQVideoWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_dragEnterEvent".}
proc fcQVideoWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_dragEnterEvent".}
proc fQVideoWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_dragMoveEvent".}
proc fcQVideoWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_dragMoveEvent".}
proc fQVideoWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_dragLeaveEvent".}
proc fcQVideoWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_dragLeaveEvent".}
proc fQVideoWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_dropEvent".}
proc fcQVideoWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_dropEvent".}
proc fQVideoWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QVideoWidget_virtualbase_nativeEvent".}
proc fcQVideoWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_nativeEvent".}
proc fQVideoWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QVideoWidget_virtualbase_changeEvent".}
proc fcQVideoWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_changeEvent".}
proc fQVideoWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QVideoWidget_virtualbase_metric".}
proc fcQVideoWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_metric".}
proc fQVideoWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QVideoWidget_virtualbase_initPainter".}
proc fcQVideoWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_initPainter".}
proc fQVideoWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QVideoWidget_virtualbase_redirected".}
proc fcQVideoWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_redirected".}
proc fQVideoWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QVideoWidget_virtualbase_sharedPainter".}
proc fcQVideoWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_sharedPainter".}
proc fQVideoWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QVideoWidget_virtualbase_inputMethodEvent".}
proc fcQVideoWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_inputMethodEvent".}
proc fQVideoWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QVideoWidget_virtualbase_inputMethodQuery".}
proc fcQVideoWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_inputMethodQuery".}
proc fQVideoWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QVideoWidget_virtualbase_focusNextPrevChild".}
proc fcQVideoWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_focusNextPrevChild".}
proc fQVideoWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVideoWidget_virtualbase_eventFilter".}
proc fcQVideoWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_eventFilter".}
proc fQVideoWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_timerEvent".}
proc fcQVideoWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_timerEvent".}
proc fQVideoWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_childEvent".}
proc fcQVideoWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_childEvent".}
proc fQVideoWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVideoWidget_virtualbase_customEvent".}
proc fcQVideoWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_customEvent".}
proc fQVideoWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVideoWidget_virtualbase_connectNotify".}
proc fcQVideoWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_connectNotify".}
proc fQVideoWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVideoWidget_virtualbase_disconnectNotify".}
proc fcQVideoWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVideoWidget_override_virtual_disconnectNotify".}
proc fcQVideoWidget_delete(self: pointer) {.importc: "QVideoWidget_delete".}


func init*(T: type gen_qvideowidget_types.QVideoWidget, h: ptr cQVideoWidget): gen_qvideowidget_types.QVideoWidget =
  T(h: h)
proc create*(T: type gen_qvideowidget_types.QVideoWidget, parent: gen_qwidget_types.QWidget): gen_qvideowidget_types.QVideoWidget =
  gen_qvideowidget_types.QVideoWidget.init(fcQVideoWidget_new(parent.h))

proc create*(T: type gen_qvideowidget_types.QVideoWidget, ): gen_qvideowidget_types.QVideoWidget =
  gen_qvideowidget_types.QVideoWidget.init(fcQVideoWidget_new2())

proc metaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQVideoWidget_metaObject(self.h))

proc metacast*(self: gen_qvideowidget_types.QVideoWidget, param1: cstring): pointer =
  fcQVideoWidget_metacast(self.h, param1)

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring): string =
  let v_ms = fcQVideoWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring): string =
  let v_ms = fcQVideoWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQVideoWidget_mediaObject(self.h))

proc videoSurface*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  gen_qabstractvideosurface_types.QAbstractVideoSurface(h: fcQVideoWidget_videoSurface(self.h))

proc aspectRatioMode*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  cint(fcQVideoWidget_aspectRatioMode(self.h))

proc brightness*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_brightness(self.h)

proc contrast*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_contrast(self.h)

proc hue*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_hue(self.h)

proc saturation*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fcQVideoWidget_saturation(self.h)

proc sizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQVideoWidget_sizeHint(self.h))

proc setFullScreen*(self: gen_qvideowidget_types.QVideoWidget, fullScreen: bool): void =
  fcQVideoWidget_setFullScreen(self.h, fullScreen)

proc setAspectRatioMode*(self: gen_qvideowidget_types.QVideoWidget, mode: cint): void =
  fcQVideoWidget_setAspectRatioMode(self.h, cint(mode))

proc setBrightness*(self: gen_qvideowidget_types.QVideoWidget, brightness: cint): void =
  fcQVideoWidget_setBrightness(self.h, brightness)

proc setContrast*(self: gen_qvideowidget_types.QVideoWidget, contrast: cint): void =
  fcQVideoWidget_setContrast(self.h, contrast)

proc setHue*(self: gen_qvideowidget_types.QVideoWidget, hue: cint): void =
  fcQVideoWidget_setHue(self.h, hue)

proc setSaturation*(self: gen_qvideowidget_types.QVideoWidget, saturation: cint): void =
  fcQVideoWidget_setSaturation(self.h, saturation)

proc fullScreenChanged*(self: gen_qvideowidget_types.QVideoWidget, fullScreen: bool): void =
  fcQVideoWidget_fullScreenChanged(self.h, fullScreen)

type QVideoWidgetfullScreenChangedSlot* = proc(fullScreen: bool)
proc miqt_exec_callback_QVideoWidget_fullScreenChanged(slot: int, fullScreen: bool) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetfullScreenChangedSlot](cast[pointer](slot))
  let slotval1 = fullScreen

  nimfunc[](slotval1)

proc onfullScreenChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetfullScreenChangedSlot) =
  var tmp = new QVideoWidgetfullScreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_fullScreenChanged(self.h, cast[int](addr tmp[]))

proc brightnessChanged*(self: gen_qvideowidget_types.QVideoWidget, brightness: cint): void =
  fcQVideoWidget_brightnessChanged(self.h, brightness)

type QVideoWidgetbrightnessChangedSlot* = proc(brightness: cint)
proc miqt_exec_callback_QVideoWidget_brightnessChanged(slot: int, brightness: cint) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetbrightnessChangedSlot](cast[pointer](slot))
  let slotval1 = brightness

  nimfunc[](slotval1)

proc onbrightnessChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetbrightnessChangedSlot) =
  var tmp = new QVideoWidgetbrightnessChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_brightnessChanged(self.h, cast[int](addr tmp[]))

proc contrastChanged*(self: gen_qvideowidget_types.QVideoWidget, contrast: cint): void =
  fcQVideoWidget_contrastChanged(self.h, contrast)

type QVideoWidgetcontrastChangedSlot* = proc(contrast: cint)
proc miqt_exec_callback_QVideoWidget_contrastChanged(slot: int, contrast: cint) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetcontrastChangedSlot](cast[pointer](slot))
  let slotval1 = contrast

  nimfunc[](slotval1)

proc oncontrastChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetcontrastChangedSlot) =
  var tmp = new QVideoWidgetcontrastChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_contrastChanged(self.h, cast[int](addr tmp[]))

proc hueChanged*(self: gen_qvideowidget_types.QVideoWidget, hue: cint): void =
  fcQVideoWidget_hueChanged(self.h, hue)

type QVideoWidgethueChangedSlot* = proc(hue: cint)
proc miqt_exec_callback_QVideoWidget_hueChanged(slot: int, hue: cint) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgethueChangedSlot](cast[pointer](slot))
  let slotval1 = hue

  nimfunc[](slotval1)

proc onhueChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgethueChangedSlot) =
  var tmp = new QVideoWidgethueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_hueChanged(self.h, cast[int](addr tmp[]))

proc saturationChanged*(self: gen_qvideowidget_types.QVideoWidget, saturation: cint): void =
  fcQVideoWidget_saturationChanged(self.h, saturation)

type QVideoWidgetsaturationChangedSlot* = proc(saturation: cint)
proc miqt_exec_callback_QVideoWidget_saturationChanged(slot: int, saturation: cint) {.exportc.} =
  let nimfunc = cast[ptr QVideoWidgetsaturationChangedSlot](cast[pointer](slot))
  let slotval1 = saturation

  nimfunc[](slotval1)

proc onsaturationChanged*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetsaturationChangedSlot) =
  var tmp = new QVideoWidgetsaturationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_connect_saturationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring): string =
  let v_ms = fcQVideoWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qvideowidget_types.QVideoWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQVideoWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QVideoWidgetmediaObject*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fQVideoWidget_virtualbase_mediaObject(self.h))

type QVideoWidgetmediaObjectProc* = proc(): gen_qmediaobject_types.QMediaObject
proc onmediaObject*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetmediaObjectProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetmediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mediaObject(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_mediaObject ".} =
  var nimfunc = cast[ptr QVideoWidgetmediaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVideoWidgetsizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQVideoWidget_virtualbase_sizeHint(self.h))

type QVideoWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_sizeHint(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_sizeHint ".} =
  var nimfunc = cast[ptr QVideoWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVideoWidgetevent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQVideoWidget_virtualbase_event(self.h, event.h)

type QVideoWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgeteventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_event(self: ptr cQVideoWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoWidget_event ".} =
  var nimfunc = cast[ptr QVideoWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoWidgetshowEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QShowEvent): void =
  fQVideoWidget_virtualbase_showEvent(self.h, event.h)

type QVideoWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_showEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_showEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgethideEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QHideEvent): void =
  fQVideoWidget_virtualbase_hideEvent(self.h, event.h)

type QVideoWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_hideEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_hideEvent ".} =
  var nimfunc = cast[ptr QVideoWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetresizeEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QResizeEvent): void =
  fQVideoWidget_virtualbase_resizeEvent(self.h, event.h)

type QVideoWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_resizeEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetmoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMoveEvent): void =
  fQVideoWidget_virtualbase_moveEvent(self.h, event.h)

type QVideoWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_moveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_moveEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetpaintEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QPaintEvent): void =
  fQVideoWidget_virtualbase_paintEvent(self.h, event.h)

type QVideoWidgetpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_paintEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_paintEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetsetMediaObject*(self: gen_qvideowidget_types.QVideoWidget, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fQVideoWidget_virtualbase_setMediaObject(self.h, objectVal.h)

type QVideoWidgetsetMediaObjectProc* = proc(objectVal: gen_qmediaobject_types.QMediaObject): bool
proc onsetMediaObject*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetsetMediaObjectProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetsetMediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_setMediaObject(self: ptr cQVideoWidget, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QVideoWidget_setMediaObject ".} =
  var nimfunc = cast[ptr QVideoWidgetsetMediaObjectProc](cast[pointer](slot))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoWidgetdevType*(self: gen_qvideowidget_types.QVideoWidget, ): cint =
  fQVideoWidget_virtualbase_devType(self.h)

type QVideoWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_devType(self: ptr cQVideoWidget, slot: int): cint {.exportc: "miqt_exec_callback_QVideoWidget_devType ".} =
  var nimfunc = cast[ptr QVideoWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QVideoWidgetsetVisible*(self: gen_qvideowidget_types.QVideoWidget, visible: bool): void =
  fQVideoWidget_virtualbase_setVisible(self.h, visible)

type QVideoWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_setVisible(self: ptr cQVideoWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QVideoWidget_setVisible ".} =
  var nimfunc = cast[ptr QVideoWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QVideoWidgetminimumSizeHint*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQVideoWidget_virtualbase_minimumSizeHint(self.h))

type QVideoWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_minimumSizeHint(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QVideoWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVideoWidgetheightForWidth*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): cint =
  fQVideoWidget_virtualbase_heightForWidth(self.h, param1)

type QVideoWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_heightForWidth(self: ptr cQVideoWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QVideoWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QVideoWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoWidgethasHeightForWidth*(self: gen_qvideowidget_types.QVideoWidget, ): bool =
  fQVideoWidget_virtualbase_hasHeightForWidth(self.h)

type QVideoWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QVideoWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_hasHeightForWidth(self: ptr cQVideoWidget, slot: int): bool {.exportc: "miqt_exec_callback_QVideoWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QVideoWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QVideoWidgetpaintEngine*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQVideoWidget_virtualbase_paintEngine(self.h))

type QVideoWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_paintEngine(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_paintEngine ".} =
  var nimfunc = cast[ptr QVideoWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVideoWidgetmousePressEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fQVideoWidget_virtualbase_mousePressEvent(self.h, event.h)

type QVideoWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mousePressEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetmouseReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fQVideoWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QVideoWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mouseReleaseEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetmouseDoubleClickEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fQVideoWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QVideoWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mouseDoubleClickEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetmouseMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QMouseEvent): void =
  fQVideoWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QVideoWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_mouseMoveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetwheelEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QWheelEvent): void =
  fQVideoWidget_virtualbase_wheelEvent(self.h, event.h)

type QVideoWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_wheelEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetkeyPressEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QKeyEvent): void =
  fQVideoWidget_virtualbase_keyPressEvent(self.h, event.h)

type QVideoWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_keyPressEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetkeyReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QKeyEvent): void =
  fQVideoWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QVideoWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_keyReleaseEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetfocusInEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QFocusEvent): void =
  fQVideoWidget_virtualbase_focusInEvent(self.h, event.h)

type QVideoWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_focusInEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetfocusOutEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QFocusEvent): void =
  fQVideoWidget_virtualbase_focusOutEvent(self.h, event.h)

type QVideoWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_focusOutEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetenterEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fQVideoWidget_virtualbase_enterEvent(self.h, event.h)

type QVideoWidgetenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_enterEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_enterEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetleaveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fQVideoWidget_virtualbase_leaveEvent(self.h, event.h)

type QVideoWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_leaveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetcloseEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QCloseEvent): void =
  fQVideoWidget_virtualbase_closeEvent(self.h, event.h)

type QVideoWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_closeEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_closeEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetcontextMenuEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQVideoWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QVideoWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_contextMenuEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgettabletEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QTabletEvent): void =
  fQVideoWidget_virtualbase_tabletEvent(self.h, event.h)

type QVideoWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_tabletEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QVideoWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetactionEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QActionEvent): void =
  fQVideoWidget_virtualbase_actionEvent(self.h, event.h)

type QVideoWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_actionEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_actionEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetdragEnterEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQVideoWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QVideoWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_dragEnterEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetdragMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQVideoWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QVideoWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_dragMoveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetdragLeaveEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQVideoWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QVideoWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_dragLeaveEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetdropEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qevent_types.QDropEvent): void =
  fQVideoWidget_virtualbase_dropEvent(self.h, event.h)

type QVideoWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_dropEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_dropEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetnativeEvent*(self: gen_qvideowidget_types.QVideoWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQVideoWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QVideoWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_nativeEvent(self: ptr cQVideoWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QVideoWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QVideoWidgetchangeEvent*(self: gen_qvideowidget_types.QVideoWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQVideoWidget_virtualbase_changeEvent(self.h, param1.h)

type QVideoWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_changeEvent(self: ptr cQVideoWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_changeEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QVideoWidgetmetric*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): cint =
  fQVideoWidget_virtualbase_metric(self.h, cint(param1))

type QVideoWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_metric(self: ptr cQVideoWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QVideoWidget_metric ".} =
  var nimfunc = cast[ptr QVideoWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoWidgetinitPainter*(self: gen_qvideowidget_types.QVideoWidget, painter: gen_qpainter_types.QPainter): void =
  fQVideoWidget_virtualbase_initPainter(self.h, painter.h)

type QVideoWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_initPainter(self: ptr cQVideoWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_initPainter ".} =
  var nimfunc = cast[ptr QVideoWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QVideoWidgetredirected*(self: gen_qvideowidget_types.QVideoWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQVideoWidget_virtualbase_redirected(self.h, offset.h))

type QVideoWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_redirected(self: ptr cQVideoWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QVideoWidget_redirected ".} =
  var nimfunc = cast[ptr QVideoWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QVideoWidgetsharedPainter*(self: gen_qvideowidget_types.QVideoWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQVideoWidget_virtualbase_sharedPainter(self.h))

type QVideoWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_sharedPainter(self: ptr cQVideoWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QVideoWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QVideoWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QVideoWidgetinputMethodEvent*(self: gen_qvideowidget_types.QVideoWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQVideoWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QVideoWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_inputMethodEvent(self: ptr cQVideoWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QVideoWidgetinputMethodQuery*(self: gen_qvideowidget_types.QVideoWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQVideoWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QVideoWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_inputMethodQuery(self: ptr cQVideoWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QVideoWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QVideoWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QVideoWidgetfocusNextPrevChild*(self: gen_qvideowidget_types.QVideoWidget, next: bool): bool =
  fQVideoWidget_virtualbase_focusNextPrevChild(self.h, next)

type QVideoWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_focusNextPrevChild(self: ptr cQVideoWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QVideoWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QVideoWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QVideoWidgeteventFilter*(self: gen_qvideowidget_types.QVideoWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQVideoWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVideoWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QVideoWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_eventFilter(self: ptr cQVideoWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVideoWidget_eventFilter ".} =
  var nimfunc = cast[ptr QVideoWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QVideoWidgettimerEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQVideoWidget_virtualbase_timerEvent(self.h, event.h)

type QVideoWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_timerEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_timerEvent ".} =
  var nimfunc = cast[ptr QVideoWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetchildEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQVideoWidget_virtualbase_childEvent(self.h, event.h)

type QVideoWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_childEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_childEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetcustomEvent*(self: gen_qvideowidget_types.QVideoWidget, event: gen_qcoreevent_types.QEvent): void =
  fQVideoWidget_virtualbase_customEvent(self.h, event.h)

type QVideoWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_customEvent(self: ptr cQVideoWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_customEvent ".} =
  var nimfunc = cast[ptr QVideoWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QVideoWidgetconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVideoWidget_virtualbase_connectNotify(self.h, signal.h)

type QVideoWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_connectNotify(self: ptr cQVideoWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_connectNotify ".} =
  var nimfunc = cast[ptr QVideoWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QVideoWidgetdisconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQVideoWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QVideoWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qvideowidget_types.QVideoWidget, slot: QVideoWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QVideoWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQVideoWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVideoWidget_disconnectNotify(self: ptr cQVideoWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVideoWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QVideoWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qvideowidget_types.QVideoWidget) =
  fcQVideoWidget_delete(self.h)
