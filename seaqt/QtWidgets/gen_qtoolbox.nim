import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qtoolbox.cpp", cflags).}


import ./gen_qtoolbox_types
export gen_qtoolbox_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qframe,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qevent_types,
  gen_qicon_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qframe,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQToolBox*{.exportc: "QToolBox", incompleteStruct.} = object

proc fcQToolBox_new(parent: pointer): ptr cQToolBox {.importc: "QToolBox_new".}
proc fcQToolBox_new2(): ptr cQToolBox {.importc: "QToolBox_new2".}
proc fcQToolBox_new3(parent: pointer, f: cint): ptr cQToolBox {.importc: "QToolBox_new3".}
proc fcQToolBox_metaObject(self: pointer, ): pointer {.importc: "QToolBox_metaObject".}
proc fcQToolBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBox_metacast".}
proc fcQToolBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBox_metacall".}
proc fcQToolBox_tr(s: cstring): struct_miqt_string {.importc: "QToolBox_tr".}
proc fcQToolBox_addItem(self: pointer, widget: pointer, text: struct_miqt_string): cint {.importc: "QToolBox_addItem".}
proc fcQToolBox_addItem2(self: pointer, widget: pointer, icon: pointer, text: struct_miqt_string): cint {.importc: "QToolBox_addItem2".}
proc fcQToolBox_insertItem(self: pointer, index: cint, widget: pointer, text: struct_miqt_string): cint {.importc: "QToolBox_insertItem".}
proc fcQToolBox_insertItem2(self: pointer, index: cint, widget: pointer, icon: pointer, text: struct_miqt_string): cint {.importc: "QToolBox_insertItem2".}
proc fcQToolBox_removeItem(self: pointer, index: cint): void {.importc: "QToolBox_removeItem".}
proc fcQToolBox_setItemEnabled(self: pointer, index: cint, enabled: bool): void {.importc: "QToolBox_setItemEnabled".}
proc fcQToolBox_isItemEnabled(self: pointer, index: cint): bool {.importc: "QToolBox_isItemEnabled".}
proc fcQToolBox_setItemText(self: pointer, index: cint, text: struct_miqt_string): void {.importc: "QToolBox_setItemText".}
proc fcQToolBox_itemText(self: pointer, index: cint): struct_miqt_string {.importc: "QToolBox_itemText".}
proc fcQToolBox_setItemIcon(self: pointer, index: cint, icon: pointer): void {.importc: "QToolBox_setItemIcon".}
proc fcQToolBox_itemIcon(self: pointer, index: cint): pointer {.importc: "QToolBox_itemIcon".}
proc fcQToolBox_setItemToolTip(self: pointer, index: cint, toolTip: struct_miqt_string): void {.importc: "QToolBox_setItemToolTip".}
proc fcQToolBox_itemToolTip(self: pointer, index: cint): struct_miqt_string {.importc: "QToolBox_itemToolTip".}
proc fcQToolBox_currentIndex(self: pointer, ): cint {.importc: "QToolBox_currentIndex".}
proc fcQToolBox_currentWidget(self: pointer, ): pointer {.importc: "QToolBox_currentWidget".}
proc fcQToolBox_widget(self: pointer, index: cint): pointer {.importc: "QToolBox_widget".}
proc fcQToolBox_indexOf(self: pointer, widget: pointer): cint {.importc: "QToolBox_indexOf".}
proc fcQToolBox_count(self: pointer, ): cint {.importc: "QToolBox_count".}
proc fcQToolBox_setCurrentIndex(self: pointer, index: cint): void {.importc: "QToolBox_setCurrentIndex".}
proc fcQToolBox_setCurrentWidget(self: pointer, widget: pointer): void {.importc: "QToolBox_setCurrentWidget".}
proc fcQToolBox_currentChanged(self: pointer, index: cint): void {.importc: "QToolBox_currentChanged".}
proc fcQToolBox_connect_currentChanged(self: pointer, slot: int) {.importc: "QToolBox_connect_currentChanged".}
proc fcQToolBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBox_tr2".}
proc fcQToolBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBox_tr3".}
proc fQToolBox_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_metaObject".}
proc fcQToolBox_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_metaObject".}
proc fQToolBox_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QToolBox_virtualbase_metacast".}
proc fcQToolBox_override_virtual_metacast(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_metacast".}
proc fQToolBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QToolBox_virtualbase_metacall".}
proc fcQToolBox_override_virtual_metacall(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_metacall".}
proc fQToolBox_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QToolBox_virtualbase_event".}
proc fcQToolBox_override_virtual_event(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_event".}
proc fQToolBox_virtualbase_itemInserted(self: pointer, index: cint): void{.importc: "QToolBox_virtualbase_itemInserted".}
proc fcQToolBox_override_virtual_itemInserted(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_itemInserted".}
proc fQToolBox_virtualbase_itemRemoved(self: pointer, index: cint): void{.importc: "QToolBox_virtualbase_itemRemoved".}
proc fcQToolBox_override_virtual_itemRemoved(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_itemRemoved".}
proc fQToolBox_virtualbase_showEvent(self: pointer, e: pointer): void{.importc: "QToolBox_virtualbase_showEvent".}
proc fcQToolBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_showEvent".}
proc fQToolBox_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QToolBox_virtualbase_changeEvent".}
proc fcQToolBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_changeEvent".}
proc fQToolBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_sizeHint".}
proc fcQToolBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_sizeHint".}
proc fQToolBox_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QToolBox_virtualbase_paintEvent".}
proc fcQToolBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_paintEvent".}
proc fQToolBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QToolBox_virtualbase_initStyleOption".}
proc fcQToolBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_initStyleOption".}
proc fQToolBox_virtualbase_devType(self: pointer, ): cint{.importc: "QToolBox_virtualbase_devType".}
proc fcQToolBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_devType".}
proc fQToolBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QToolBox_virtualbase_setVisible".}
proc fcQToolBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_setVisible".}
proc fQToolBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_minimumSizeHint".}
proc fcQToolBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_minimumSizeHint".}
proc fQToolBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QToolBox_virtualbase_heightForWidth".}
proc fcQToolBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_heightForWidth".}
proc fQToolBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QToolBox_virtualbase_hasHeightForWidth".}
proc fcQToolBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_hasHeightForWidth".}
proc fQToolBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_paintEngine".}
proc fcQToolBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_paintEngine".}
proc fQToolBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_mousePressEvent".}
proc fcQToolBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_mousePressEvent".}
proc fQToolBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_mouseReleaseEvent".}
proc fcQToolBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_mouseReleaseEvent".}
proc fQToolBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_mouseDoubleClickEvent".}
proc fcQToolBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_mouseDoubleClickEvent".}
proc fQToolBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_mouseMoveEvent".}
proc fcQToolBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_mouseMoveEvent".}
proc fQToolBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_wheelEvent".}
proc fcQToolBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_wheelEvent".}
proc fQToolBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_keyPressEvent".}
proc fcQToolBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_keyPressEvent".}
proc fQToolBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_keyReleaseEvent".}
proc fcQToolBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_keyReleaseEvent".}
proc fQToolBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_focusInEvent".}
proc fcQToolBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_focusInEvent".}
proc fQToolBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_focusOutEvent".}
proc fcQToolBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_focusOutEvent".}
proc fQToolBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_enterEvent".}
proc fcQToolBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_enterEvent".}
proc fQToolBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_leaveEvent".}
proc fcQToolBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_leaveEvent".}
proc fQToolBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_moveEvent".}
proc fcQToolBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_moveEvent".}
proc fQToolBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_resizeEvent".}
proc fcQToolBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_resizeEvent".}
proc fQToolBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_closeEvent".}
proc fcQToolBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_closeEvent".}
proc fQToolBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_contextMenuEvent".}
proc fcQToolBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_contextMenuEvent".}
proc fQToolBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_tabletEvent".}
proc fcQToolBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_tabletEvent".}
proc fQToolBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_actionEvent".}
proc fcQToolBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_actionEvent".}
proc fQToolBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_dragEnterEvent".}
proc fcQToolBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_dragEnterEvent".}
proc fQToolBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_dragMoveEvent".}
proc fcQToolBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_dragMoveEvent".}
proc fQToolBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_dragLeaveEvent".}
proc fcQToolBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_dragLeaveEvent".}
proc fQToolBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_dropEvent".}
proc fcQToolBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_dropEvent".}
proc fQToolBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_hideEvent".}
proc fcQToolBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_hideEvent".}
proc fQToolBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QToolBox_virtualbase_nativeEvent".}
proc fcQToolBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_nativeEvent".}
proc fQToolBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QToolBox_virtualbase_metric".}
proc fcQToolBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_metric".}
proc fQToolBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QToolBox_virtualbase_initPainter".}
proc fcQToolBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_initPainter".}
proc fQToolBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QToolBox_virtualbase_redirected".}
proc fcQToolBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_redirected".}
proc fQToolBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QToolBox_virtualbase_sharedPainter".}
proc fcQToolBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_sharedPainter".}
proc fQToolBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QToolBox_virtualbase_inputMethodEvent".}
proc fcQToolBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_inputMethodEvent".}
proc fQToolBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QToolBox_virtualbase_inputMethodQuery".}
proc fcQToolBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_inputMethodQuery".}
proc fQToolBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QToolBox_virtualbase_focusNextPrevChild".}
proc fcQToolBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_focusNextPrevChild".}
proc fQToolBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QToolBox_virtualbase_eventFilter".}
proc fcQToolBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_eventFilter".}
proc fQToolBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_timerEvent".}
proc fcQToolBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_timerEvent".}
proc fQToolBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_childEvent".}
proc fcQToolBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_childEvent".}
proc fQToolBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QToolBox_virtualbase_customEvent".}
proc fcQToolBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_customEvent".}
proc fQToolBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QToolBox_virtualbase_connectNotify".}
proc fcQToolBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_connectNotify".}
proc fQToolBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QToolBox_virtualbase_disconnectNotify".}
proc fcQToolBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QToolBox_override_virtual_disconnectNotify".}
proc fcQToolBox_staticMetaObject(): pointer {.importc: "QToolBox_staticMetaObject".}
proc fcQToolBox_delete(self: pointer) {.importc: "QToolBox_delete".}


func init*(T: type gen_qtoolbox_types.QToolBox, h: ptr cQToolBox): gen_qtoolbox_types.QToolBox =
  T(h: h)
proc create*(T: type gen_qtoolbox_types.QToolBox, parent: gen_qwidget_types.QWidget): gen_qtoolbox_types.QToolBox =
  gen_qtoolbox_types.QToolBox.init(fcQToolBox_new(parent.h))

proc create*(T: type gen_qtoolbox_types.QToolBox, ): gen_qtoolbox_types.QToolBox =
  gen_qtoolbox_types.QToolBox.init(fcQToolBox_new2())

proc create*(T: type gen_qtoolbox_types.QToolBox, parent: gen_qwidget_types.QWidget, f: cint): gen_qtoolbox_types.QToolBox =
  gen_qtoolbox_types.QToolBox.init(fcQToolBox_new3(parent.h, cint(f)))

proc metaObject*(self: gen_qtoolbox_types.QToolBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBox_metaObject(self.h))

proc metacast*(self: gen_qtoolbox_types.QToolBox, param1: cstring): pointer =
  fcQToolBox_metacast(self.h, param1)

proc metacall*(self: gen_qtoolbox_types.QToolBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtoolbox_types.QToolBox, s: cstring): string =
  let v_ms = fcQToolBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addItem*(self: gen_qtoolbox_types.QToolBox, widget: gen_qwidget_types.QWidget, text: string): cint =
  fcQToolBox_addItem(self.h, widget.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc addItem*(self: gen_qtoolbox_types.QToolBox, widget: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon, text: string): cint =
  fcQToolBox_addItem2(self.h, widget.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertItem*(self: gen_qtoolbox_types.QToolBox, index: cint, widget: gen_qwidget_types.QWidget, text: string): cint =
  fcQToolBox_insertItem(self.h, index, widget.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc insertItem*(self: gen_qtoolbox_types.QToolBox, index: cint, widget: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon, text: string): cint =
  fcQToolBox_insertItem2(self.h, index, widget.h, icon.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc removeItem*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_removeItem(self.h, index)

proc setItemEnabled*(self: gen_qtoolbox_types.QToolBox, index: cint, enabled: bool): void =
  fcQToolBox_setItemEnabled(self.h, index, enabled)

proc isItemEnabled*(self: gen_qtoolbox_types.QToolBox, index: cint): bool =
  fcQToolBox_isItemEnabled(self.h, index)

proc setItemText*(self: gen_qtoolbox_types.QToolBox, index: cint, text: string): void =
  fcQToolBox_setItemText(self.h, index, struct_miqt_string(data: text, len: csize_t(len(text))))

proc itemText*(self: gen_qtoolbox_types.QToolBox, index: cint): string =
  let v_ms = fcQToolBox_itemText(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setItemIcon*(self: gen_qtoolbox_types.QToolBox, index: cint, icon: gen_qicon_types.QIcon): void =
  fcQToolBox_setItemIcon(self.h, index, icon.h)

proc itemIcon*(self: gen_qtoolbox_types.QToolBox, index: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQToolBox_itemIcon(self.h, index))

proc setItemToolTip*(self: gen_qtoolbox_types.QToolBox, index: cint, toolTip: string): void =
  fcQToolBox_setItemToolTip(self.h, index, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc itemToolTip*(self: gen_qtoolbox_types.QToolBox, index: cint): string =
  let v_ms = fcQToolBox_itemToolTip(self.h, index)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentIndex*(self: gen_qtoolbox_types.QToolBox, ): cint =
  fcQToolBox_currentIndex(self.h)

proc currentWidget*(self: gen_qtoolbox_types.QToolBox, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQToolBox_currentWidget(self.h))

proc widget*(self: gen_qtoolbox_types.QToolBox, index: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQToolBox_widget(self.h, index))

proc indexOf*(self: gen_qtoolbox_types.QToolBox, widget: gen_qwidget_types.QWidget): cint =
  fcQToolBox_indexOf(self.h, widget.h)

proc count*(self: gen_qtoolbox_types.QToolBox, ): cint =
  fcQToolBox_count(self.h)

proc setCurrentIndex*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: gen_qtoolbox_types.QToolBox, widget: gen_qwidget_types.QWidget): void =
  fcQToolBox_setCurrentWidget(self.h, widget.h)

proc currentChanged*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_currentChanged(self.h, index)

type QToolBoxcurrentChangedSlot* = proc(index: cint)
proc miqt_exec_callback_QToolBox_currentChanged(slot: int, index: cint) {.exportc.} =
  let nimfunc = cast[ptr QToolBoxcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc oncurrentChanged*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxcurrentChangedSlot) =
  var tmp = new QToolBoxcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_connect_currentChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qtoolbox_types.QToolBox, s: cstring, c: cstring): string =
  let v_ms = fcQToolBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtoolbox_types.QToolBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QToolBoxmetaObject*(self: gen_qtoolbox_types.QToolBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQToolBox_virtualbase_metaObject(self.h))

type QToolBoxmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmetaObjectProc) =
  # TODO check subclass
  var tmp = new QToolBoxmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_metaObject(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_metaObject ".} =
  var nimfunc = cast[ptr QToolBoxmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBoxmetacast*(self: gen_qtoolbox_types.QToolBox, param1: cstring): pointer =
  fQToolBox_virtualbase_metacast(self.h, param1)

type QToolBoxmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmetacastProc) =
  # TODO check subclass
  var tmp = new QToolBoxmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_metacast(self: ptr cQToolBox, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QToolBox_metacast ".} =
  var nimfunc = cast[ptr QToolBoxmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBoxmetacall*(self: gen_qtoolbox_types.QToolBox, param1: cint, param2: cint, param3: pointer): cint =
  fQToolBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QToolBoxmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmetacallProc) =
  # TODO check subclass
  var tmp = new QToolBoxmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_metacall(self: ptr cQToolBox, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QToolBox_metacall ".} =
  var nimfunc = cast[ptr QToolBoxmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QToolBoxevent*(self: gen_qtoolbox_types.QToolBox, e: gen_qcoreevent_types.QEvent): bool =
  fQToolBox_virtualbase_event(self.h, e.h)

type QToolBoxeventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxeventProc) =
  # TODO check subclass
  var tmp = new QToolBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_event(self: ptr cQToolBox, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QToolBox_event ".} =
  var nimfunc = cast[ptr QToolBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBoxitemInserted*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fQToolBox_virtualbase_itemInserted(self.h, index)

type QToolBoxitemInsertedProc* = proc(index: cint): void
proc onitemInserted*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxitemInsertedProc) =
  # TODO check subclass
  var tmp = new QToolBoxitemInsertedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_itemInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_itemInserted(self: ptr cQToolBox, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QToolBox_itemInserted ".} =
  var nimfunc = cast[ptr QToolBoxitemInsertedProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QToolBoxitemRemoved*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fQToolBox_virtualbase_itemRemoved(self.h, index)

type QToolBoxitemRemovedProc* = proc(index: cint): void
proc onitemRemoved*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxitemRemovedProc) =
  # TODO check subclass
  var tmp = new QToolBoxitemRemovedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_itemRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_itemRemoved(self: ptr cQToolBox, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QToolBox_itemRemoved ".} =
  var nimfunc = cast[ptr QToolBoxitemRemovedProc](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)
proc QToolBoxshowEvent*(self: gen_qtoolbox_types.QToolBox, e: gen_qevent_types.QShowEvent): void =
  fQToolBox_virtualbase_showEvent(self.h, e.h)

type QToolBoxshowEventProc* = proc(e: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_showEvent(self: ptr cQToolBox, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QToolBox_showEvent ".} =
  var nimfunc = cast[ptr QToolBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: e)


  nimfunc[](slotval1)
proc QToolBoxchangeEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qcoreevent_types.QEvent): void =
  fQToolBox_virtualbase_changeEvent(self.h, param1.h)

type QToolBoxchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_changeEvent(self: ptr cQToolBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolBox_changeEvent ".} =
  var nimfunc = cast[ptr QToolBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QToolBoxsizeHint*(self: gen_qtoolbox_types.QToolBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQToolBox_virtualbase_sizeHint(self.h))

type QToolBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QToolBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_sizeHint(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_sizeHint ".} =
  var nimfunc = cast[ptr QToolBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBoxpaintEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qevent_types.QPaintEvent): void =
  fQToolBox_virtualbase_paintEvent(self.h, param1.h)

type QToolBoxpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_paintEvent(self: ptr cQToolBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolBox_paintEvent ".} =
  var nimfunc = cast[ptr QToolBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QToolBoxinitStyleOption*(self: gen_qtoolbox_types.QToolBox, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQToolBox_virtualbase_initStyleOption(self.h, option.h)

type QToolBoxinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QToolBoxinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_initStyleOption(self: ptr cQToolBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QToolBox_initStyleOption ".} =
  var nimfunc = cast[ptr QToolBoxinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QToolBoxdevType*(self: gen_qtoolbox_types.QToolBox, ): cint =
  fQToolBox_virtualbase_devType(self.h)

type QToolBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QToolBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_devType(self: ptr cQToolBox, slot: int): cint {.exportc: "miqt_exec_callback_QToolBox_devType ".} =
  var nimfunc = cast[ptr QToolBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QToolBoxsetVisible*(self: gen_qtoolbox_types.QToolBox, visible: bool): void =
  fQToolBox_virtualbase_setVisible(self.h, visible)

type QToolBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QToolBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_setVisible(self: ptr cQToolBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QToolBox_setVisible ".} =
  var nimfunc = cast[ptr QToolBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QToolBoxminimumSizeHint*(self: gen_qtoolbox_types.QToolBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQToolBox_virtualbase_minimumSizeHint(self.h))

type QToolBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QToolBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_minimumSizeHint(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QToolBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBoxheightForWidth*(self: gen_qtoolbox_types.QToolBox, param1: cint): cint =
  fQToolBox_virtualbase_heightForWidth(self.h, param1)

type QToolBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QToolBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_heightForWidth(self: ptr cQToolBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolBox_heightForWidth ".} =
  var nimfunc = cast[ptr QToolBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBoxhasHeightForWidth*(self: gen_qtoolbox_types.QToolBox, ): bool =
  fQToolBox_virtualbase_hasHeightForWidth(self.h)

type QToolBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QToolBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_hasHeightForWidth(self: ptr cQToolBox, slot: int): bool {.exportc: "miqt_exec_callback_QToolBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QToolBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QToolBoxpaintEngine*(self: gen_qtoolbox_types.QToolBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQToolBox_virtualbase_paintEngine(self.h))

type QToolBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QToolBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_paintEngine(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_paintEngine ".} =
  var nimfunc = cast[ptr QToolBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBoxmousePressEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fQToolBox_virtualbase_mousePressEvent(self.h, event.h)

type QToolBoxmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_mousePressEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QToolBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxmouseReleaseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fQToolBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QToolBoxmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_mouseReleaseEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QToolBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxmouseDoubleClickEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fQToolBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QToolBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_mouseDoubleClickEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QToolBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxmouseMoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fQToolBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QToolBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_mouseMoveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QToolBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxwheelEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QWheelEvent): void =
  fQToolBox_virtualbase_wheelEvent(self.h, event.h)

type QToolBoxwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_wheelEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_wheelEvent ".} =
  var nimfunc = cast[ptr QToolBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxkeyPressEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QKeyEvent): void =
  fQToolBox_virtualbase_keyPressEvent(self.h, event.h)

type QToolBoxkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_keyPressEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QToolBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxkeyReleaseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QKeyEvent): void =
  fQToolBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QToolBoxkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_keyReleaseEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QToolBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxfocusInEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QFocusEvent): void =
  fQToolBox_virtualbase_focusInEvent(self.h, event.h)

type QToolBoxfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_focusInEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_focusInEvent ".} =
  var nimfunc = cast[ptr QToolBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxfocusOutEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QFocusEvent): void =
  fQToolBox_virtualbase_focusOutEvent(self.h, event.h)

type QToolBoxfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_focusOutEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QToolBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxenterEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QEnterEvent): void =
  fQToolBox_virtualbase_enterEvent(self.h, event.h)

type QToolBoxenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_enterEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_enterEvent ".} =
  var nimfunc = cast[ptr QToolBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxleaveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QEvent): void =
  fQToolBox_virtualbase_leaveEvent(self.h, event.h)

type QToolBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_leaveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_leaveEvent ".} =
  var nimfunc = cast[ptr QToolBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxmoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMoveEvent): void =
  fQToolBox_virtualbase_moveEvent(self.h, event.h)

type QToolBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_moveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_moveEvent ".} =
  var nimfunc = cast[ptr QToolBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxresizeEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QResizeEvent): void =
  fQToolBox_virtualbase_resizeEvent(self.h, event.h)

type QToolBoxresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_resizeEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_resizeEvent ".} =
  var nimfunc = cast[ptr QToolBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxcloseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QCloseEvent): void =
  fQToolBox_virtualbase_closeEvent(self.h, event.h)

type QToolBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_closeEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_closeEvent ".} =
  var nimfunc = cast[ptr QToolBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxcontextMenuEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QContextMenuEvent): void =
  fQToolBox_virtualbase_contextMenuEvent(self.h, event.h)

type QToolBoxcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_contextMenuEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QToolBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxtabletEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QTabletEvent): void =
  fQToolBox_virtualbase_tabletEvent(self.h, event.h)

type QToolBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_tabletEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_tabletEvent ".} =
  var nimfunc = cast[ptr QToolBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxactionEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QActionEvent): void =
  fQToolBox_virtualbase_actionEvent(self.h, event.h)

type QToolBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_actionEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_actionEvent ".} =
  var nimfunc = cast[ptr QToolBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxdragEnterEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQToolBox_virtualbase_dragEnterEvent(self.h, event.h)

type QToolBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_dragEnterEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QToolBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxdragMoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQToolBox_virtualbase_dragMoveEvent(self.h, event.h)

type QToolBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_dragMoveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QToolBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxdragLeaveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQToolBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QToolBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_dragLeaveEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QToolBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxdropEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDropEvent): void =
  fQToolBox_virtualbase_dropEvent(self.h, event.h)

type QToolBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_dropEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_dropEvent ".} =
  var nimfunc = cast[ptr QToolBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxhideEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QHideEvent): void =
  fQToolBox_virtualbase_hideEvent(self.h, event.h)

type QToolBoxhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_hideEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_hideEvent ".} =
  var nimfunc = cast[ptr QToolBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxnativeEvent*(self: gen_qtoolbox_types.QToolBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQToolBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QToolBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_nativeEvent(self: ptr cQToolBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QToolBox_nativeEvent ".} =
  var nimfunc = cast[ptr QToolBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QToolBoxmetric*(self: gen_qtoolbox_types.QToolBox, param1: cint): cint =
  fQToolBox_virtualbase_metric(self.h, cint(param1))

type QToolBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxmetricProc) =
  # TODO check subclass
  var tmp = new QToolBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_metric(self: ptr cQToolBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QToolBox_metric ".} =
  var nimfunc = cast[ptr QToolBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBoxinitPainter*(self: gen_qtoolbox_types.QToolBox, painter: gen_qpainter_types.QPainter): void =
  fQToolBox_virtualbase_initPainter(self.h, painter.h)

type QToolBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QToolBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_initPainter(self: ptr cQToolBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QToolBox_initPainter ".} =
  var nimfunc = cast[ptr QToolBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QToolBoxredirected*(self: gen_qtoolbox_types.QToolBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQToolBox_virtualbase_redirected(self.h, offset.h))

type QToolBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QToolBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_redirected(self: ptr cQToolBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QToolBox_redirected ".} =
  var nimfunc = cast[ptr QToolBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QToolBoxsharedPainter*(self: gen_qtoolbox_types.QToolBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQToolBox_virtualbase_sharedPainter(self.h))

type QToolBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QToolBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_sharedPainter(self: ptr cQToolBox, slot: int): pointer {.exportc: "miqt_exec_callback_QToolBox_sharedPainter ".} =
  var nimfunc = cast[ptr QToolBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QToolBoxinputMethodEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQToolBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QToolBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_inputMethodEvent(self: ptr cQToolBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QToolBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QToolBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QToolBoxinputMethodQuery*(self: gen_qtoolbox_types.QToolBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQToolBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QToolBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QToolBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_inputMethodQuery(self: ptr cQToolBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QToolBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QToolBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QToolBoxfocusNextPrevChild*(self: gen_qtoolbox_types.QToolBox, next: bool): bool =
  fQToolBox_virtualbase_focusNextPrevChild(self.h, next)

type QToolBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QToolBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_focusNextPrevChild(self: ptr cQToolBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QToolBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QToolBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QToolBoxeventFilter*(self: gen_qtoolbox_types.QToolBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQToolBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QToolBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QToolBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_eventFilter(self: ptr cQToolBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QToolBox_eventFilter ".} =
  var nimfunc = cast[ptr QToolBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QToolBoxtimerEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQToolBox_virtualbase_timerEvent(self.h, event.h)

type QToolBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_timerEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_timerEvent ".} =
  var nimfunc = cast[ptr QToolBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxchildEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQToolBox_virtualbase_childEvent(self.h, event.h)

type QToolBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_childEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_childEvent ".} =
  var nimfunc = cast[ptr QToolBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxcustomEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QEvent): void =
  fQToolBox_virtualbase_customEvent(self.h, event.h)

type QToolBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QToolBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_customEvent(self: ptr cQToolBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QToolBox_customEvent ".} =
  var nimfunc = cast[ptr QToolBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QToolBoxconnectNotify*(self: gen_qtoolbox_types.QToolBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQToolBox_virtualbase_connectNotify(self.h, signal.h)

type QToolBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QToolBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_connectNotify(self: ptr cQToolBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolBox_connectNotify ".} =
  var nimfunc = cast[ptr QToolBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QToolBoxdisconnectNotify*(self: gen_qtoolbox_types.QToolBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQToolBox_virtualbase_disconnectNotify(self.h, signal.h)

type QToolBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QToolBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QToolBox_disconnectNotify(self: ptr cQToolBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QToolBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QToolBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qtoolbox_types.QToolBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBox_staticMetaObject())
proc delete*(self: gen_qtoolbox_types.QToolBox) =
  fcQToolBox_delete(self.h)
