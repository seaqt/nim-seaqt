import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qdockwidget.cpp", cflags).}


type QDockWidgetDockWidgetFeatureEnum* = distinct cint
template DockWidgetClosable*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 1
template DockWidgetMovable*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 2
template DockWidgetFloatable*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 4
template DockWidgetVerticalTitleBar*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 8
template DockWidgetFeatureMask*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 15
template AllDockWidgetFeatures*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 7
template NoDockWidgetFeatures*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 0
template Reserved*(_: type QDockWidgetDockWidgetFeatureEnum): untyped = 255


import ./gen_qdockwidget_types
export gen_qdockwidget_types

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
  ./gen_qaction_types,
  ./gen_qwidget
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
  gen_qaction_types,
  gen_qwidget

type cQDockWidget*{.exportc: "QDockWidget", incompleteStruct.} = object

proc fcQDockWidget_new(parent: pointer): ptr cQDockWidget {.importc: "QDockWidget_new".}
proc fcQDockWidget_new2(title: struct_miqt_string): ptr cQDockWidget {.importc: "QDockWidget_new2".}
proc fcQDockWidget_new3(): ptr cQDockWidget {.importc: "QDockWidget_new3".}
proc fcQDockWidget_new4(title: struct_miqt_string, parent: pointer): ptr cQDockWidget {.importc: "QDockWidget_new4".}
proc fcQDockWidget_new5(title: struct_miqt_string, parent: pointer, flags: cint): ptr cQDockWidget {.importc: "QDockWidget_new5".}
proc fcQDockWidget_new6(parent: pointer, flags: cint): ptr cQDockWidget {.importc: "QDockWidget_new6".}
proc fcQDockWidget_metaObject(self: pointer, ): pointer {.importc: "QDockWidget_metaObject".}
proc fcQDockWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QDockWidget_metacast".}
proc fcQDockWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDockWidget_metacall".}
proc fcQDockWidget_tr(s: cstring): struct_miqt_string {.importc: "QDockWidget_tr".}
proc fcQDockWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QDockWidget_trUtf8".}
proc fcQDockWidget_widget(self: pointer, ): pointer {.importc: "QDockWidget_widget".}
proc fcQDockWidget_setWidget(self: pointer, widget: pointer): void {.importc: "QDockWidget_setWidget".}
proc fcQDockWidget_setFeatures(self: pointer, features: cint): void {.importc: "QDockWidget_setFeatures".}
proc fcQDockWidget_features(self: pointer, ): cint {.importc: "QDockWidget_features".}
proc fcQDockWidget_setFloating(self: pointer, floating: bool): void {.importc: "QDockWidget_setFloating".}
proc fcQDockWidget_isFloating(self: pointer, ): bool {.importc: "QDockWidget_isFloating".}
proc fcQDockWidget_setAllowedAreas(self: pointer, areas: cint): void {.importc: "QDockWidget_setAllowedAreas".}
proc fcQDockWidget_allowedAreas(self: pointer, ): cint {.importc: "QDockWidget_allowedAreas".}
proc fcQDockWidget_setTitleBarWidget(self: pointer, widget: pointer): void {.importc: "QDockWidget_setTitleBarWidget".}
proc fcQDockWidget_titleBarWidget(self: pointer, ): pointer {.importc: "QDockWidget_titleBarWidget".}
proc fcQDockWidget_isAreaAllowed(self: pointer, area: cint): bool {.importc: "QDockWidget_isAreaAllowed".}
proc fcQDockWidget_toggleViewAction(self: pointer, ): pointer {.importc: "QDockWidget_toggleViewAction".}
proc fcQDockWidget_featuresChanged(self: pointer, features: cint): void {.importc: "QDockWidget_featuresChanged".}
proc fcQDockWidget_connect_featuresChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_featuresChanged".}
proc fcQDockWidget_topLevelChanged(self: pointer, topLevel: bool): void {.importc: "QDockWidget_topLevelChanged".}
proc fcQDockWidget_connect_topLevelChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_topLevelChanged".}
proc fcQDockWidget_allowedAreasChanged(self: pointer, allowedAreas: cint): void {.importc: "QDockWidget_allowedAreasChanged".}
proc fcQDockWidget_connect_allowedAreasChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_allowedAreasChanged".}
proc fcQDockWidget_visibilityChanged(self: pointer, visible: bool): void {.importc: "QDockWidget_visibilityChanged".}
proc fcQDockWidget_connect_visibilityChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_visibilityChanged".}
proc fcQDockWidget_dockLocationChanged(self: pointer, area: cint): void {.importc: "QDockWidget_dockLocationChanged".}
proc fcQDockWidget_connect_dockLocationChanged(self: pointer, slot: int) {.importc: "QDockWidget_connect_dockLocationChanged".}
proc fcQDockWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDockWidget_tr2".}
proc fcQDockWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDockWidget_tr3".}
proc fcQDockWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDockWidget_trUtf82".}
proc fcQDockWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDockWidget_trUtf83".}
proc fQDockWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_metaObject".}
proc fcQDockWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_metaObject".}
proc fQDockWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QDockWidget_virtualbase_metacast".}
proc fcQDockWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_metacast".}
proc fQDockWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDockWidget_virtualbase_metacall".}
proc fcQDockWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_metacall".}
proc fQDockWidget_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_changeEvent".}
proc fcQDockWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_changeEvent".}
proc fQDockWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_closeEvent".}
proc fcQDockWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_closeEvent".}
proc fQDockWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_paintEvent".}
proc fcQDockWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_paintEvent".}
proc fQDockWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDockWidget_virtualbase_event".}
proc fcQDockWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_event".}
proc fQDockWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QDockWidget_virtualbase_devType".}
proc fcQDockWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_devType".}
proc fQDockWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QDockWidget_virtualbase_setVisible".}
proc fcQDockWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_setVisible".}
proc fQDockWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_sizeHint".}
proc fcQDockWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_sizeHint".}
proc fQDockWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_minimumSizeHint".}
proc fcQDockWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_minimumSizeHint".}
proc fQDockWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QDockWidget_virtualbase_heightForWidth".}
proc fcQDockWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_heightForWidth".}
proc fQDockWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QDockWidget_virtualbase_hasHeightForWidth".}
proc fcQDockWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_hasHeightForWidth".}
proc fQDockWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_paintEngine".}
proc fcQDockWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_paintEngine".}
proc fQDockWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_mousePressEvent".}
proc fcQDockWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_mousePressEvent".}
proc fQDockWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_mouseReleaseEvent".}
proc fcQDockWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_mouseReleaseEvent".}
proc fQDockWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQDockWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_mouseDoubleClickEvent".}
proc fQDockWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_mouseMoveEvent".}
proc fcQDockWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_mouseMoveEvent".}
proc fQDockWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_wheelEvent".}
proc fcQDockWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_wheelEvent".}
proc fQDockWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_keyPressEvent".}
proc fcQDockWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_keyPressEvent".}
proc fQDockWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_keyReleaseEvent".}
proc fcQDockWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_keyReleaseEvent".}
proc fQDockWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_focusInEvent".}
proc fcQDockWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_focusInEvent".}
proc fQDockWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_focusOutEvent".}
proc fcQDockWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_focusOutEvent".}
proc fQDockWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_enterEvent".}
proc fcQDockWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_enterEvent".}
proc fQDockWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_leaveEvent".}
proc fcQDockWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_leaveEvent".}
proc fQDockWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_moveEvent".}
proc fcQDockWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_moveEvent".}
proc fQDockWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_resizeEvent".}
proc fcQDockWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_resizeEvent".}
proc fQDockWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_contextMenuEvent".}
proc fcQDockWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_contextMenuEvent".}
proc fQDockWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_tabletEvent".}
proc fcQDockWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_tabletEvent".}
proc fQDockWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_actionEvent".}
proc fcQDockWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_actionEvent".}
proc fQDockWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_dragEnterEvent".}
proc fcQDockWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_dragEnterEvent".}
proc fQDockWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_dragMoveEvent".}
proc fcQDockWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_dragMoveEvent".}
proc fQDockWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_dragLeaveEvent".}
proc fcQDockWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_dragLeaveEvent".}
proc fQDockWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_dropEvent".}
proc fcQDockWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_dropEvent".}
proc fQDockWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_showEvent".}
proc fcQDockWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_showEvent".}
proc fQDockWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_hideEvent".}
proc fcQDockWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_hideEvent".}
proc fQDockWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QDockWidget_virtualbase_nativeEvent".}
proc fcQDockWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_nativeEvent".}
proc fQDockWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QDockWidget_virtualbase_metric".}
proc fcQDockWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_metric".}
proc fQDockWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QDockWidget_virtualbase_initPainter".}
proc fcQDockWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_initPainter".}
proc fQDockWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QDockWidget_virtualbase_redirected".}
proc fcQDockWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_redirected".}
proc fQDockWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QDockWidget_virtualbase_sharedPainter".}
proc fcQDockWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_sharedPainter".}
proc fQDockWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QDockWidget_virtualbase_inputMethodEvent".}
proc fcQDockWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_inputMethodEvent".}
proc fQDockWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QDockWidget_virtualbase_inputMethodQuery".}
proc fcQDockWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_inputMethodQuery".}
proc fQDockWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QDockWidget_virtualbase_focusNextPrevChild".}
proc fcQDockWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_focusNextPrevChild".}
proc fQDockWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDockWidget_virtualbase_eventFilter".}
proc fcQDockWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_eventFilter".}
proc fQDockWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_timerEvent".}
proc fcQDockWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_timerEvent".}
proc fQDockWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_childEvent".}
proc fcQDockWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_childEvent".}
proc fQDockWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDockWidget_virtualbase_customEvent".}
proc fcQDockWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_customEvent".}
proc fQDockWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDockWidget_virtualbase_connectNotify".}
proc fcQDockWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_connectNotify".}
proc fQDockWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDockWidget_virtualbase_disconnectNotify".}
proc fcQDockWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDockWidget_override_virtual_disconnectNotify".}
proc fcQDockWidget_staticMetaObject(): pointer {.importc: "QDockWidget_staticMetaObject".}
proc fcQDockWidget_delete(self: pointer) {.importc: "QDockWidget_delete".}


func init*(T: type gen_qdockwidget_types.QDockWidget, h: ptr cQDockWidget): gen_qdockwidget_types.QDockWidget =
  T(h: h)
proc create*(T: type gen_qdockwidget_types.QDockWidget, parent: gen_qwidget_types.QWidget): gen_qdockwidget_types.QDockWidget =
  gen_qdockwidget_types.QDockWidget.init(fcQDockWidget_new(parent.h))

proc create*(T: type gen_qdockwidget_types.QDockWidget, title: string): gen_qdockwidget_types.QDockWidget =
  gen_qdockwidget_types.QDockWidget.init(fcQDockWidget_new2(struct_miqt_string(data: title, len: csize_t(len(title)))))

proc create*(T: type gen_qdockwidget_types.QDockWidget, ): gen_qdockwidget_types.QDockWidget =
  gen_qdockwidget_types.QDockWidget.init(fcQDockWidget_new3())

proc create*(T: type gen_qdockwidget_types.QDockWidget, title: string, parent: gen_qwidget_types.QWidget): gen_qdockwidget_types.QDockWidget =
  gen_qdockwidget_types.QDockWidget.init(fcQDockWidget_new4(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))

proc create*(T: type gen_qdockwidget_types.QDockWidget, title: string, parent: gen_qwidget_types.QWidget, flags: cint): gen_qdockwidget_types.QDockWidget =
  gen_qdockwidget_types.QDockWidget.init(fcQDockWidget_new5(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h, cint(flags)))

proc create*(T: type gen_qdockwidget_types.QDockWidget, parent: gen_qwidget_types.QWidget, flags: cint): gen_qdockwidget_types.QDockWidget =
  gen_qdockwidget_types.QDockWidget.init(fcQDockWidget_new6(parent.h, cint(flags)))

proc metaObject*(self: gen_qdockwidget_types.QDockWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDockWidget_metaObject(self.h))

proc metacast*(self: gen_qdockwidget_types.QDockWidget, param1: cstring): pointer =
  fcQDockWidget_metacast(self.h, param1)

proc metacall*(self: gen_qdockwidget_types.QDockWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQDockWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qdockwidget_types.QDockWidget, s: cstring): string =
  let v_ms = fcQDockWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdockwidget_types.QDockWidget, s: cstring): string =
  let v_ms = fcQDockWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc widget*(self: gen_qdockwidget_types.QDockWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDockWidget_widget(self.h))

proc setWidget*(self: gen_qdockwidget_types.QDockWidget, widget: gen_qwidget_types.QWidget): void =
  fcQDockWidget_setWidget(self.h, widget.h)

proc setFeatures*(self: gen_qdockwidget_types.QDockWidget, features: cint): void =
  fcQDockWidget_setFeatures(self.h, cint(features))

proc features*(self: gen_qdockwidget_types.QDockWidget, ): cint =
  cint(fcQDockWidget_features(self.h))

proc setFloating*(self: gen_qdockwidget_types.QDockWidget, floating: bool): void =
  fcQDockWidget_setFloating(self.h, floating)

proc isFloating*(self: gen_qdockwidget_types.QDockWidget, ): bool =
  fcQDockWidget_isFloating(self.h)

proc setAllowedAreas*(self: gen_qdockwidget_types.QDockWidget, areas: cint): void =
  fcQDockWidget_setAllowedAreas(self.h, cint(areas))

proc allowedAreas*(self: gen_qdockwidget_types.QDockWidget, ): cint =
  cint(fcQDockWidget_allowedAreas(self.h))

proc setTitleBarWidget*(self: gen_qdockwidget_types.QDockWidget, widget: gen_qwidget_types.QWidget): void =
  fcQDockWidget_setTitleBarWidget(self.h, widget.h)

proc titleBarWidget*(self: gen_qdockwidget_types.QDockWidget, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQDockWidget_titleBarWidget(self.h))

proc isAreaAllowed*(self: gen_qdockwidget_types.QDockWidget, area: cint): bool =
  fcQDockWidget_isAreaAllowed(self.h, cint(area))

proc toggleViewAction*(self: gen_qdockwidget_types.QDockWidget, ): gen_qaction_types.QAction =
  gen_qaction_types.QAction(h: fcQDockWidget_toggleViewAction(self.h))

proc featuresChanged*(self: gen_qdockwidget_types.QDockWidget, features: cint): void =
  fcQDockWidget_featuresChanged(self.h, cint(features))

type QDockWidgetfeaturesChangedSlot* = proc(features: cint)
proc miqt_exec_callback_QDockWidget_featuresChanged(slot: int, features: cint) {.exportc.} =
  let nimfunc = cast[ptr QDockWidgetfeaturesChangedSlot](cast[pointer](slot))
  let slotval1 = cint(features)

  nimfunc[](slotval1)

proc onfeaturesChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetfeaturesChangedSlot) =
  var tmp = new QDockWidgetfeaturesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_featuresChanged(self.h, cast[int](addr tmp[]))

proc topLevelChanged*(self: gen_qdockwidget_types.QDockWidget, topLevel: bool): void =
  fcQDockWidget_topLevelChanged(self.h, topLevel)

type QDockWidgettopLevelChangedSlot* = proc(topLevel: bool)
proc miqt_exec_callback_QDockWidget_topLevelChanged(slot: int, topLevel: bool) {.exportc.} =
  let nimfunc = cast[ptr QDockWidgettopLevelChangedSlot](cast[pointer](slot))
  let slotval1 = topLevel

  nimfunc[](slotval1)

proc ontopLevelChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgettopLevelChangedSlot) =
  var tmp = new QDockWidgettopLevelChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_topLevelChanged(self.h, cast[int](addr tmp[]))

proc allowedAreasChanged*(self: gen_qdockwidget_types.QDockWidget, allowedAreas: cint): void =
  fcQDockWidget_allowedAreasChanged(self.h, cint(allowedAreas))

type QDockWidgetallowedAreasChangedSlot* = proc(allowedAreas: cint)
proc miqt_exec_callback_QDockWidget_allowedAreasChanged(slot: int, allowedAreas: cint) {.exportc.} =
  let nimfunc = cast[ptr QDockWidgetallowedAreasChangedSlot](cast[pointer](slot))
  let slotval1 = cint(allowedAreas)

  nimfunc[](slotval1)

proc onallowedAreasChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetallowedAreasChangedSlot) =
  var tmp = new QDockWidgetallowedAreasChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_allowedAreasChanged(self.h, cast[int](addr tmp[]))

proc visibilityChanged*(self: gen_qdockwidget_types.QDockWidget, visible: bool): void =
  fcQDockWidget_visibilityChanged(self.h, visible)

type QDockWidgetvisibilityChangedSlot* = proc(visible: bool)
proc miqt_exec_callback_QDockWidget_visibilityChanged(slot: int, visible: bool) {.exportc.} =
  let nimfunc = cast[ptr QDockWidgetvisibilityChangedSlot](cast[pointer](slot))
  let slotval1 = visible

  nimfunc[](slotval1)

proc onvisibilityChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetvisibilityChangedSlot) =
  var tmp = new QDockWidgetvisibilityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_visibilityChanged(self.h, cast[int](addr tmp[]))

proc dockLocationChanged*(self: gen_qdockwidget_types.QDockWidget, area: cint): void =
  fcQDockWidget_dockLocationChanged(self.h, cint(area))

type QDockWidgetdockLocationChangedSlot* = proc(area: cint)
proc miqt_exec_callback_QDockWidget_dockLocationChanged(slot: int, area: cint) {.exportc.} =
  let nimfunc = cast[ptr QDockWidgetdockLocationChangedSlot](cast[pointer](slot))
  let slotval1 = cint(area)

  nimfunc[](slotval1)

proc ondockLocationChanged*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetdockLocationChangedSlot) =
  var tmp = new QDockWidgetdockLocationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_connect_dockLocationChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qdockwidget_types.QDockWidget, s: cstring, c: cstring): string =
  let v_ms = fcQDockWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qdockwidget_types.QDockWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDockWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdockwidget_types.QDockWidget, s: cstring, c: cstring): string =
  let v_ms = fcQDockWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qdockwidget_types.QDockWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDockWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QDockWidgetmetaObject*(self: gen_qdockwidget_types.QDockWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQDockWidget_virtualbase_metaObject(self.h))

type QDockWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_metaObject(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_metaObject ".} =
  var nimfunc = cast[ptr QDockWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDockWidgetmetacast*(self: gen_qdockwidget_types.QDockWidget, param1: cstring): pointer =
  fQDockWidget_virtualbase_metacast(self.h, param1)

type QDockWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_metacast(self: ptr cQDockWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QDockWidget_metacast ".} =
  var nimfunc = cast[ptr QDockWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDockWidgetmetacall*(self: gen_qdockwidget_types.QDockWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQDockWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDockWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_metacall(self: ptr cQDockWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDockWidget_metacall ".} =
  var nimfunc = cast[ptr QDockWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDockWidgetchangeEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): void =
  fQDockWidget_virtualbase_changeEvent(self.h, event.h)

type QDockWidgetchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_changeEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_changeEvent ".} =
  var nimfunc = cast[ptr QDockWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetcloseEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QCloseEvent): void =
  fQDockWidget_virtualbase_closeEvent(self.h, event.h)

type QDockWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_closeEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_closeEvent ".} =
  var nimfunc = cast[ptr QDockWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetpaintEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QPaintEvent): void =
  fQDockWidget_virtualbase_paintEvent(self.h, event.h)

type QDockWidgetpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_paintEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_paintEvent ".} =
  var nimfunc = cast[ptr QDockWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetevent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQDockWidget_virtualbase_event(self.h, event.h)

type QDockWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgeteventProc) =
  # TODO check subclass
  var tmp = new QDockWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_event(self: ptr cQDockWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDockWidget_event ".} =
  var nimfunc = cast[ptr QDockWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDockWidgetdevType*(self: gen_qdockwidget_types.QDockWidget, ): cint =
  fQDockWidget_virtualbase_devType(self.h)

type QDockWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QDockWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_devType(self: ptr cQDockWidget, slot: int): cint {.exportc: "miqt_exec_callback_QDockWidget_devType ".} =
  var nimfunc = cast[ptr QDockWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDockWidgetsetVisible*(self: gen_qdockwidget_types.QDockWidget, visible: bool): void =
  fQDockWidget_virtualbase_setVisible(self.h, visible)

type QDockWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QDockWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_setVisible(self: ptr cQDockWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QDockWidget_setVisible ".} =
  var nimfunc = cast[ptr QDockWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QDockWidgetsizeHint*(self: gen_qdockwidget_types.QDockWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDockWidget_virtualbase_sizeHint(self.h))

type QDockWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QDockWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_sizeHint(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_sizeHint ".} =
  var nimfunc = cast[ptr QDockWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDockWidgetminimumSizeHint*(self: gen_qdockwidget_types.QDockWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQDockWidget_virtualbase_minimumSizeHint(self.h))

type QDockWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QDockWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_minimumSizeHint(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QDockWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDockWidgetheightForWidth*(self: gen_qdockwidget_types.QDockWidget, param1: cint): cint =
  fQDockWidget_virtualbase_heightForWidth(self.h, param1)

type QDockWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QDockWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_heightForWidth(self: ptr cQDockWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDockWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QDockWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDockWidgethasHeightForWidth*(self: gen_qdockwidget_types.QDockWidget, ): bool =
  fQDockWidget_virtualbase_hasHeightForWidth(self.h)

type QDockWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QDockWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_hasHeightForWidth(self: ptr cQDockWidget, slot: int): bool {.exportc: "miqt_exec_callback_QDockWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QDockWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QDockWidgetpaintEngine*(self: gen_qdockwidget_types.QDockWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQDockWidget_virtualbase_paintEngine(self.h))

type QDockWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QDockWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_paintEngine(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_paintEngine ".} =
  var nimfunc = cast[ptr QDockWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDockWidgetmousePressEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMouseEvent): void =
  fQDockWidget_virtualbase_mousePressEvent(self.h, event.h)

type QDockWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_mousePressEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QDockWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetmouseReleaseEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMouseEvent): void =
  fQDockWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QDockWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_mouseReleaseEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QDockWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetmouseDoubleClickEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMouseEvent): void =
  fQDockWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QDockWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_mouseDoubleClickEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QDockWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetmouseMoveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMouseEvent): void =
  fQDockWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QDockWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_mouseMoveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QDockWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetwheelEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QWheelEvent): void =
  fQDockWidget_virtualbase_wheelEvent(self.h, event.h)

type QDockWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_wheelEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QDockWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetkeyPressEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QKeyEvent): void =
  fQDockWidget_virtualbase_keyPressEvent(self.h, event.h)

type QDockWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_keyPressEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QDockWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetkeyReleaseEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QKeyEvent): void =
  fQDockWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QDockWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_keyReleaseEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QDockWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetfocusInEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QFocusEvent): void =
  fQDockWidget_virtualbase_focusInEvent(self.h, event.h)

type QDockWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_focusInEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QDockWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetfocusOutEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QFocusEvent): void =
  fQDockWidget_virtualbase_focusOutEvent(self.h, event.h)

type QDockWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_focusOutEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QDockWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetenterEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): void =
  fQDockWidget_virtualbase_enterEvent(self.h, event.h)

type QDockWidgetenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_enterEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_enterEvent ".} =
  var nimfunc = cast[ptr QDockWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetleaveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): void =
  fQDockWidget_virtualbase_leaveEvent(self.h, event.h)

type QDockWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_leaveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QDockWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetmoveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QMoveEvent): void =
  fQDockWidget_virtualbase_moveEvent(self.h, event.h)

type QDockWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_moveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_moveEvent ".} =
  var nimfunc = cast[ptr QDockWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetresizeEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QResizeEvent): void =
  fQDockWidget_virtualbase_resizeEvent(self.h, event.h)

type QDockWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_resizeEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QDockWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetcontextMenuEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQDockWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QDockWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_contextMenuEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QDockWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgettabletEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QTabletEvent): void =
  fQDockWidget_virtualbase_tabletEvent(self.h, event.h)

type QDockWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_tabletEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QDockWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetactionEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QActionEvent): void =
  fQDockWidget_virtualbase_actionEvent(self.h, event.h)

type QDockWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_actionEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_actionEvent ".} =
  var nimfunc = cast[ptr QDockWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetdragEnterEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQDockWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QDockWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_dragEnterEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QDockWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetdragMoveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQDockWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QDockWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_dragMoveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QDockWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetdragLeaveEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQDockWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QDockWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_dragLeaveEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QDockWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetdropEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QDropEvent): void =
  fQDockWidget_virtualbase_dropEvent(self.h, event.h)

type QDockWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_dropEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_dropEvent ".} =
  var nimfunc = cast[ptr QDockWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetshowEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QShowEvent): void =
  fQDockWidget_virtualbase_showEvent(self.h, event.h)

type QDockWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_showEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_showEvent ".} =
  var nimfunc = cast[ptr QDockWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgethideEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qevent_types.QHideEvent): void =
  fQDockWidget_virtualbase_hideEvent(self.h, event.h)

type QDockWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_hideEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_hideEvent ".} =
  var nimfunc = cast[ptr QDockWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetnativeEvent*(self: gen_qdockwidget_types.QDockWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQDockWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QDockWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_nativeEvent(self: ptr cQDockWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QDockWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QDockWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QDockWidgetmetric*(self: gen_qdockwidget_types.QDockWidget, param1: cint): cint =
  fQDockWidget_virtualbase_metric(self.h, cint(param1))

type QDockWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QDockWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_metric(self: ptr cQDockWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QDockWidget_metric ".} =
  var nimfunc = cast[ptr QDockWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDockWidgetinitPainter*(self: gen_qdockwidget_types.QDockWidget, painter: gen_qpainter_types.QPainter): void =
  fQDockWidget_virtualbase_initPainter(self.h, painter.h)

type QDockWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QDockWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_initPainter(self: ptr cQDockWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_initPainter ".} =
  var nimfunc = cast[ptr QDockWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QDockWidgetredirected*(self: gen_qdockwidget_types.QDockWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQDockWidget_virtualbase_redirected(self.h, offset.h))

type QDockWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QDockWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_redirected(self: ptr cQDockWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QDockWidget_redirected ".} =
  var nimfunc = cast[ptr QDockWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDockWidgetsharedPainter*(self: gen_qdockwidget_types.QDockWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQDockWidget_virtualbase_sharedPainter(self.h))

type QDockWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QDockWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_sharedPainter(self: ptr cQDockWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QDockWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QDockWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QDockWidgetinputMethodEvent*(self: gen_qdockwidget_types.QDockWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQDockWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QDockWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_inputMethodEvent(self: ptr cQDockWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QDockWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QDockWidgetinputMethodQuery*(self: gen_qdockwidget_types.QDockWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQDockWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QDockWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QDockWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_inputMethodQuery(self: ptr cQDockWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QDockWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QDockWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QDockWidgetfocusNextPrevChild*(self: gen_qdockwidget_types.QDockWidget, next: bool): bool =
  fQDockWidget_virtualbase_focusNextPrevChild(self.h, next)

type QDockWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QDockWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_focusNextPrevChild(self: ptr cQDockWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QDockWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QDockWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QDockWidgeteventFilter*(self: gen_qdockwidget_types.QDockWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQDockWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDockWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QDockWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_eventFilter(self: ptr cQDockWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDockWidget_eventFilter ".} =
  var nimfunc = cast[ptr QDockWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QDockWidgettimerEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQDockWidget_virtualbase_timerEvent(self.h, event.h)

type QDockWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_timerEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_timerEvent ".} =
  var nimfunc = cast[ptr QDockWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetchildEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQDockWidget_virtualbase_childEvent(self.h, event.h)

type QDockWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_childEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_childEvent ".} =
  var nimfunc = cast[ptr QDockWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetcustomEvent*(self: gen_qdockwidget_types.QDockWidget, event: gen_qcoreevent_types.QEvent): void =
  fQDockWidget_virtualbase_customEvent(self.h, event.h)

type QDockWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QDockWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_customEvent(self: ptr cQDockWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_customEvent ".} =
  var nimfunc = cast[ptr QDockWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QDockWidgetconnectNotify*(self: gen_qdockwidget_types.QDockWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDockWidget_virtualbase_connectNotify(self.h, signal.h)

type QDockWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDockWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_connectNotify(self: ptr cQDockWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_connectNotify ".} =
  var nimfunc = cast[ptr QDockWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QDockWidgetdisconnectNotify*(self: gen_qdockwidget_types.QDockWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQDockWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QDockWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qdockwidget_types.QDockWidget, slot: QDockWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QDockWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQDockWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDockWidget_disconnectNotify(self: ptr cQDockWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDockWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QDockWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qdockwidget_types.QDockWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDockWidget_staticMetaObject())
proc delete*(self: gen_qdockwidget_types.QDockWidget) =
  fcQDockWidget_delete(self.h)
