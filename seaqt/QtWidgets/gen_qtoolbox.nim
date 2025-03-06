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
proc fcQToolBox_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBox_connect_currentChanged".}
proc fcQToolBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBox_tr2".}
proc fcQToolBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBox_tr3".}
type cQToolBoxVTable = object
  destructor*: proc(vtbl: ptr cQToolBoxVTable, self: ptr cQToolBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  itemInserted*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  itemRemoved*: proc(vtbl, self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQToolBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QToolBox_virtualbase_metaObject".}
proc fcQToolBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBox_virtualbase_metacast".}
proc fcQToolBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBox_virtualbase_metacall".}
proc fcQToolBox_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QToolBox_virtualbase_event".}
proc fcQToolBox_virtualbase_itemInserted(self: pointer, index: cint): void {.importc: "QToolBox_virtualbase_itemInserted".}
proc fcQToolBox_virtualbase_itemRemoved(self: pointer, index: cint): void {.importc: "QToolBox_virtualbase_itemRemoved".}
proc fcQToolBox_virtualbase_showEvent(self: pointer, e: pointer): void {.importc: "QToolBox_virtualbase_showEvent".}
proc fcQToolBox_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QToolBox_virtualbase_changeEvent".}
proc fcQToolBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QToolBox_virtualbase_sizeHint".}
proc fcQToolBox_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QToolBox_virtualbase_paintEvent".}
proc fcQToolBox_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QToolBox_virtualbase_initStyleOption".}
proc fcQToolBox_virtualbase_devType(self: pointer, ): cint {.importc: "QToolBox_virtualbase_devType".}
proc fcQToolBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QToolBox_virtualbase_setVisible".}
proc fcQToolBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QToolBox_virtualbase_minimumSizeHint".}
proc fcQToolBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QToolBox_virtualbase_heightForWidth".}
proc fcQToolBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QToolBox_virtualbase_hasHeightForWidth".}
proc fcQToolBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QToolBox_virtualbase_paintEngine".}
proc fcQToolBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_mousePressEvent".}
proc fcQToolBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_mouseReleaseEvent".}
proc fcQToolBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_mouseDoubleClickEvent".}
proc fcQToolBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_mouseMoveEvent".}
proc fcQToolBox_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_wheelEvent".}
proc fcQToolBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_keyPressEvent".}
proc fcQToolBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_keyReleaseEvent".}
proc fcQToolBox_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_focusInEvent".}
proc fcQToolBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_focusOutEvent".}
proc fcQToolBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_enterEvent".}
proc fcQToolBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_leaveEvent".}
proc fcQToolBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_moveEvent".}
proc fcQToolBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_resizeEvent".}
proc fcQToolBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_closeEvent".}
proc fcQToolBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_contextMenuEvent".}
proc fcQToolBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_tabletEvent".}
proc fcQToolBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_actionEvent".}
proc fcQToolBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_dragEnterEvent".}
proc fcQToolBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_dragMoveEvent".}
proc fcQToolBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_dragLeaveEvent".}
proc fcQToolBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_dropEvent".}
proc fcQToolBox_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_hideEvent".}
proc fcQToolBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QToolBox_virtualbase_nativeEvent".}
proc fcQToolBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QToolBox_virtualbase_metric".}
proc fcQToolBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QToolBox_virtualbase_initPainter".}
proc fcQToolBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QToolBox_virtualbase_redirected".}
proc fcQToolBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QToolBox_virtualbase_sharedPainter".}
proc fcQToolBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QToolBox_virtualbase_inputMethodEvent".}
proc fcQToolBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QToolBox_virtualbase_inputMethodQuery".}
proc fcQToolBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QToolBox_virtualbase_focusNextPrevChild".}
proc fcQToolBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QToolBox_virtualbase_eventFilter".}
proc fcQToolBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_timerEvent".}
proc fcQToolBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_childEvent".}
proc fcQToolBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_customEvent".}
proc fcQToolBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QToolBox_virtualbase_connectNotify".}
proc fcQToolBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QToolBox_virtualbase_disconnectNotify".}
proc fcQToolBox_new(vtbl: pointer, parent: pointer): ptr cQToolBox {.importc: "QToolBox_new".}
proc fcQToolBox_new2(vtbl: pointer, ): ptr cQToolBox {.importc: "QToolBox_new2".}
proc fcQToolBox_new3(vtbl: pointer, parent: pointer, f: cint): ptr cQToolBox {.importc: "QToolBox_new3".}
proc fcQToolBox_staticMetaObject(): pointer {.importc: "QToolBox_staticMetaObject".}
proc fcQToolBox_delete(self: pointer) {.importc: "QToolBox_delete".}

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
proc miqt_exec_callback_cQToolBox_currentChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QToolBoxcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc miqt_exec_callback_cQToolBox_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBoxcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentChanged*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxcurrentChangedSlot) =
  var tmp = new QToolBoxcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_connect_currentChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQToolBox_currentChanged, miqt_exec_callback_cQToolBox_currentChanged_release)

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

type QToolBoxmetaObjectProc* = proc(self: QToolBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QToolBoxmetacastProc* = proc(self: QToolBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QToolBoxmetacallProc* = proc(self: QToolBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QToolBoxeventProc* = proc(self: QToolBox, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QToolBoxitemInsertedProc* = proc(self: QToolBox, index: cint): void {.raises: [], gcsafe.}
type QToolBoxitemRemovedProc* = proc(self: QToolBox, index: cint): void {.raises: [], gcsafe.}
type QToolBoxshowEventProc* = proc(self: QToolBox, e: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QToolBoxchangeEventProc* = proc(self: QToolBox, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolBoxsizeHintProc* = proc(self: QToolBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QToolBoxpaintEventProc* = proc(self: QToolBox, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QToolBoxinitStyleOptionProc* = proc(self: QToolBox, option: gen_qstyleoption_types.QStyleOptionFrame): void {.raises: [], gcsafe.}
type QToolBoxdevTypeProc* = proc(self: QToolBox): cint {.raises: [], gcsafe.}
type QToolBoxsetVisibleProc* = proc(self: QToolBox, visible: bool): void {.raises: [], gcsafe.}
type QToolBoxminimumSizeHintProc* = proc(self: QToolBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QToolBoxheightForWidthProc* = proc(self: QToolBox, param1: cint): cint {.raises: [], gcsafe.}
type QToolBoxhasHeightForWidthProc* = proc(self: QToolBox): bool {.raises: [], gcsafe.}
type QToolBoxpaintEngineProc* = proc(self: QToolBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QToolBoxmousePressEventProc* = proc(self: QToolBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolBoxmouseReleaseEventProc* = proc(self: QToolBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolBoxmouseDoubleClickEventProc* = proc(self: QToolBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolBoxmouseMoveEventProc* = proc(self: QToolBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QToolBoxwheelEventProc* = proc(self: QToolBox, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QToolBoxkeyPressEventProc* = proc(self: QToolBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QToolBoxkeyReleaseEventProc* = proc(self: QToolBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QToolBoxfocusInEventProc* = proc(self: QToolBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QToolBoxfocusOutEventProc* = proc(self: QToolBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QToolBoxenterEventProc* = proc(self: QToolBox, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QToolBoxleaveEventProc* = proc(self: QToolBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolBoxmoveEventProc* = proc(self: QToolBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QToolBoxresizeEventProc* = proc(self: QToolBox, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QToolBoxcloseEventProc* = proc(self: QToolBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QToolBoxcontextMenuEventProc* = proc(self: QToolBox, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QToolBoxtabletEventProc* = proc(self: QToolBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QToolBoxactionEventProc* = proc(self: QToolBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QToolBoxdragEnterEventProc* = proc(self: QToolBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QToolBoxdragMoveEventProc* = proc(self: QToolBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QToolBoxdragLeaveEventProc* = proc(self: QToolBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QToolBoxdropEventProc* = proc(self: QToolBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QToolBoxhideEventProc* = proc(self: QToolBox, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QToolBoxnativeEventProc* = proc(self: QToolBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QToolBoxmetricProc* = proc(self: QToolBox, param1: cint): cint {.raises: [], gcsafe.}
type QToolBoxinitPainterProc* = proc(self: QToolBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QToolBoxredirectedProc* = proc(self: QToolBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QToolBoxsharedPainterProc* = proc(self: QToolBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QToolBoxinputMethodEventProc* = proc(self: QToolBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QToolBoxinputMethodQueryProc* = proc(self: QToolBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QToolBoxfocusNextPrevChildProc* = proc(self: QToolBox, next: bool): bool {.raises: [], gcsafe.}
type QToolBoxeventFilterProc* = proc(self: QToolBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QToolBoxtimerEventProc* = proc(self: QToolBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QToolBoxchildEventProc* = proc(self: QToolBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QToolBoxcustomEventProc* = proc(self: QToolBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QToolBoxconnectNotifyProc* = proc(self: QToolBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QToolBoxdisconnectNotifyProc* = proc(self: QToolBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QToolBoxVTable* = object
  vtbl: cQToolBoxVTable
  metaObject*: QToolBoxmetaObjectProc
  metacast*: QToolBoxmetacastProc
  metacall*: QToolBoxmetacallProc
  event*: QToolBoxeventProc
  itemInserted*: QToolBoxitemInsertedProc
  itemRemoved*: QToolBoxitemRemovedProc
  showEvent*: QToolBoxshowEventProc
  changeEvent*: QToolBoxchangeEventProc
  sizeHint*: QToolBoxsizeHintProc
  paintEvent*: QToolBoxpaintEventProc
  initStyleOption*: QToolBoxinitStyleOptionProc
  devType*: QToolBoxdevTypeProc
  setVisible*: QToolBoxsetVisibleProc
  minimumSizeHint*: QToolBoxminimumSizeHintProc
  heightForWidth*: QToolBoxheightForWidthProc
  hasHeightForWidth*: QToolBoxhasHeightForWidthProc
  paintEngine*: QToolBoxpaintEngineProc
  mousePressEvent*: QToolBoxmousePressEventProc
  mouseReleaseEvent*: QToolBoxmouseReleaseEventProc
  mouseDoubleClickEvent*: QToolBoxmouseDoubleClickEventProc
  mouseMoveEvent*: QToolBoxmouseMoveEventProc
  wheelEvent*: QToolBoxwheelEventProc
  keyPressEvent*: QToolBoxkeyPressEventProc
  keyReleaseEvent*: QToolBoxkeyReleaseEventProc
  focusInEvent*: QToolBoxfocusInEventProc
  focusOutEvent*: QToolBoxfocusOutEventProc
  enterEvent*: QToolBoxenterEventProc
  leaveEvent*: QToolBoxleaveEventProc
  moveEvent*: QToolBoxmoveEventProc
  resizeEvent*: QToolBoxresizeEventProc
  closeEvent*: QToolBoxcloseEventProc
  contextMenuEvent*: QToolBoxcontextMenuEventProc
  tabletEvent*: QToolBoxtabletEventProc
  actionEvent*: QToolBoxactionEventProc
  dragEnterEvent*: QToolBoxdragEnterEventProc
  dragMoveEvent*: QToolBoxdragMoveEventProc
  dragLeaveEvent*: QToolBoxdragLeaveEventProc
  dropEvent*: QToolBoxdropEventProc
  hideEvent*: QToolBoxhideEventProc
  nativeEvent*: QToolBoxnativeEventProc
  metric*: QToolBoxmetricProc
  initPainter*: QToolBoxinitPainterProc
  redirected*: QToolBoxredirectedProc
  sharedPainter*: QToolBoxsharedPainterProc
  inputMethodEvent*: QToolBoxinputMethodEventProc
  inputMethodQuery*: QToolBoxinputMethodQueryProc
  focusNextPrevChild*: QToolBoxfocusNextPrevChildProc
  eventFilter*: QToolBoxeventFilterProc
  timerEvent*: QToolBoxtimerEventProc
  childEvent*: QToolBoxchildEventProc
  customEvent*: QToolBoxcustomEventProc
  connectNotify*: QToolBoxconnectNotifyProc
  disconnectNotify*: QToolBoxdisconnectNotifyProc
proc QToolBoxmetaObject*(self: gen_qtoolbox_types.QToolBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBox_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQToolBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QToolBoxmetacast*(self: gen_qtoolbox_types.QToolBox, param1: cstring): pointer =
  fcQToolBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQToolBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QToolBoxmetacall*(self: gen_qtoolbox_types.QToolBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQToolBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolBoxevent*(self: gen_qtoolbox_types.QToolBox, e: gen_qcoreevent_types.QEvent): bool =
  fcQToolBox_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQToolBox_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QToolBoxitemInserted*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_virtualbase_itemInserted(self.h, index)

proc miqt_exec_callback_cQToolBox_itemInserted(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = index
  vtbl[].itemInserted(self, slotval1)

proc QToolBoxitemRemoved*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_virtualbase_itemRemoved(self.h, index)

proc miqt_exec_callback_cQToolBox_itemRemoved(vtbl: pointer, self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = index
  vtbl[].itemRemoved(self, slotval1)

proc QToolBoxshowEvent*(self: gen_qtoolbox_types.QToolBox, e: gen_qevent_types.QShowEvent): void =
  fcQToolBox_virtualbase_showEvent(self.h, e.h)

proc miqt_exec_callback_cQToolBox_showEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: e)
  vtbl[].showEvent(self, slotval1)

proc QToolBoxchangeEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolBox_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolBox_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QToolBoxsizeHint*(self: gen_qtoolbox_types.QToolBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBox_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQToolBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QToolBoxpaintEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qevent_types.QPaintEvent): void =
  fcQToolBox_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolBox_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QToolBoxinitStyleOption*(self: gen_qtoolbox_types.QToolBox, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQToolBox_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQToolBox_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QToolBoxdevType*(self: gen_qtoolbox_types.QToolBox, ): cint =
  fcQToolBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQToolBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QToolBoxsetVisible*(self: gen_qtoolbox_types.QToolBox, visible: bool): void =
  fcQToolBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQToolBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QToolBoxminimumSizeHint*(self: gen_qtoolbox_types.QToolBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBox_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQToolBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QToolBoxheightForWidth*(self: gen_qtoolbox_types.QToolBox, param1: cint): cint =
  fcQToolBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQToolBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QToolBoxhasHeightForWidth*(self: gen_qtoolbox_types.QToolBox, ): bool =
  fcQToolBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQToolBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QToolBoxpaintEngine*(self: gen_qtoolbox_types.QToolBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQToolBox_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQToolBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QToolBoxmousePressEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBox_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QToolBoxmouseReleaseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QToolBoxmouseDoubleClickEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QToolBoxmouseMoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QToolBoxwheelEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QWheelEvent): void =
  fcQToolBox_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QToolBoxkeyPressEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QKeyEvent): void =
  fcQToolBox_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QToolBoxkeyReleaseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QKeyEvent): void =
  fcQToolBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QToolBoxfocusInEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QFocusEvent): void =
  fcQToolBox_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QToolBoxfocusOutEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QFocusEvent): void =
  fcQToolBox_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QToolBoxenterEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QEnterEvent): void =
  fcQToolBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QToolBoxleaveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QToolBoxmoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMoveEvent): void =
  fcQToolBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QToolBoxresizeEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QResizeEvent): void =
  fcQToolBox_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QToolBoxcloseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QCloseEvent): void =
  fcQToolBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QToolBoxcontextMenuEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQToolBox_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QToolBoxtabletEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QTabletEvent): void =
  fcQToolBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QToolBoxactionEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QActionEvent): void =
  fcQToolBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QToolBoxdragEnterEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQToolBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QToolBoxdragMoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQToolBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QToolBoxdragLeaveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQToolBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QToolBoxdropEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDropEvent): void =
  fcQToolBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QToolBoxhideEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QHideEvent): void =
  fcQToolBox_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QToolBoxnativeEvent*(self: gen_qtoolbox_types.QToolBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQToolBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQToolBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QToolBoxmetric*(self: gen_qtoolbox_types.QToolBox, param1: cint): cint =
  fcQToolBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQToolBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QToolBoxinitPainter*(self: gen_qtoolbox_types.QToolBox, painter: gen_qpainter_types.QPainter): void =
  fcQToolBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQToolBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QToolBoxredirected*(self: gen_qtoolbox_types.QToolBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQToolBox_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQToolBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QToolBoxsharedPainter*(self: gen_qtoolbox_types.QToolBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQToolBox_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQToolBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QToolBoxinputMethodEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQToolBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQToolBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QToolBoxinputMethodQuery*(self: gen_qtoolbox_types.QToolBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQToolBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQToolBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QToolBoxfocusNextPrevChild*(self: gen_qtoolbox_types.QToolBox, next: bool): bool =
  fcQToolBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQToolBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QToolBoxeventFilter*(self: gen_qtoolbox_types.QToolBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQToolBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QToolBoxtimerEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQToolBox_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QToolBoxchildEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQToolBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QToolBoxcustomEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQToolBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QToolBoxconnectNotify*(self: gen_qtoolbox_types.QToolBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQToolBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QToolBoxdisconnectNotify*(self: gen_qtoolbox_types.QToolBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQToolBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](vtbl)
  let self = QToolBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qtoolbox_types.QToolBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QToolBoxVTable = nil): gen_qtoolbox_types.QToolBox =
  let vtbl = if vtbl == nil: new QToolBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQToolBoxVTable, _: ptr cQToolBox) {.cdecl.} =
    let vtbl = cast[ref QToolBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolBox_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolBox_event
  if not isNil(vtbl.itemInserted):
    vtbl[].vtbl.itemInserted = miqt_exec_callback_cQToolBox_itemInserted
  if not isNil(vtbl.itemRemoved):
    vtbl[].vtbl.itemRemoved = miqt_exec_callback_cQToolBox_itemRemoved
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolBox_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolBox_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolBox_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolBox_paintEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQToolBox_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolBox_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolBox_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolBox_disconnectNotify
  gen_qtoolbox_types.QToolBox(h: fcQToolBox_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtoolbox_types.QToolBox,
    vtbl: ref QToolBoxVTable = nil): gen_qtoolbox_types.QToolBox =
  let vtbl = if vtbl == nil: new QToolBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQToolBoxVTable, _: ptr cQToolBox) {.cdecl.} =
    let vtbl = cast[ref QToolBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolBox_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolBox_event
  if not isNil(vtbl.itemInserted):
    vtbl[].vtbl.itemInserted = miqt_exec_callback_cQToolBox_itemInserted
  if not isNil(vtbl.itemRemoved):
    vtbl[].vtbl.itemRemoved = miqt_exec_callback_cQToolBox_itemRemoved
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolBox_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolBox_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolBox_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolBox_paintEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQToolBox_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolBox_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolBox_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolBox_disconnectNotify
  gen_qtoolbox_types.QToolBox(h: fcQToolBox_new2(addr(vtbl[]), ))

proc create*(T: type gen_qtoolbox_types.QToolBox,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QToolBoxVTable = nil): gen_qtoolbox_types.QToolBox =
  let vtbl = if vtbl == nil: new QToolBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQToolBoxVTable, _: ptr cQToolBox) {.cdecl.} =
    let vtbl = cast[ref QToolBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQToolBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQToolBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQToolBox_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQToolBox_event
  if not isNil(vtbl.itemInserted):
    vtbl[].vtbl.itemInserted = miqt_exec_callback_cQToolBox_itemInserted
  if not isNil(vtbl.itemRemoved):
    vtbl[].vtbl.itemRemoved = miqt_exec_callback_cQToolBox_itemRemoved
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQToolBox_showEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQToolBox_changeEvent
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQToolBox_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQToolBox_paintEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQToolBox_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQToolBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQToolBox_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQToolBox_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQToolBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQToolBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQToolBox_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQToolBox_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQToolBox_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQToolBox_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQToolBox_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQToolBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQToolBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQToolBox_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQToolBox_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQToolBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQToolBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQToolBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQToolBox_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQToolBox_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQToolBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQToolBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQToolBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQToolBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQToolBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQToolBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQToolBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQToolBox_dropEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQToolBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQToolBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQToolBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQToolBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQToolBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQToolBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQToolBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQToolBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQToolBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQToolBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQToolBox_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQToolBox_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQToolBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQToolBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQToolBox_disconnectNotify
  gen_qtoolbox_types.QToolBox(h: fcQToolBox_new3(addr(vtbl[]), parent.h, cint(f)))

proc staticMetaObject*(_: type gen_qtoolbox_types.QToolBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBox_staticMetaObject())
proc delete*(self: gen_qtoolbox_types.QToolBox) =
  fcQToolBox_delete(self.h)
