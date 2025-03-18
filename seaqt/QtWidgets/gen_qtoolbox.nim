import ./qtwidgets_pkg

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


{.compile("gen_qtoolbox.cpp", QtWidgetsCFlags).}


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

proc fcQToolBox_metaObject(self: pointer): pointer {.importc: "QToolBox_metaObject".}
proc fcQToolBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBox_metacast".}
proc fcQToolBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBox_metacall".}
proc fcQToolBox_tr(s: cstring): struct_miqt_string {.importc: "QToolBox_tr".}
proc fcQToolBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QToolBox_trUtf8".}
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
proc fcQToolBox_currentIndex(self: pointer): cint {.importc: "QToolBox_currentIndex".}
proc fcQToolBox_currentWidget(self: pointer): pointer {.importc: "QToolBox_currentWidget".}
proc fcQToolBox_widget(self: pointer, index: cint): pointer {.importc: "QToolBox_widget".}
proc fcQToolBox_indexOf(self: pointer, widget: pointer): cint {.importc: "QToolBox_indexOf".}
proc fcQToolBox_count(self: pointer): cint {.importc: "QToolBox_count".}
proc fcQToolBox_setCurrentIndex(self: pointer, index: cint): void {.importc: "QToolBox_setCurrentIndex".}
proc fcQToolBox_setCurrentWidget(self: pointer, widget: pointer): void {.importc: "QToolBox_setCurrentWidget".}
proc fcQToolBox_currentChanged(self: pointer, index: cint): void {.importc: "QToolBox_currentChanged".}
proc fcQToolBox_connect_currentChanged(self: pointer, slot: int, callback: proc (slot: int, index: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QToolBox_connect_currentChanged".}
proc fcQToolBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBox_tr2".}
proc fcQToolBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBox_tr3".}
proc fcQToolBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QToolBox_trUtf82".}
proc fcQToolBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QToolBox_trUtf83".}
proc fcQToolBox_vtbl(self: pointer): pointer {.importc: "QToolBox_vtbl".}
proc fcQToolBox_vdata(self: pointer): pointer {.importc: "QToolBox_vdata".}

type cQToolBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  itemInserted*: proc(self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  itemRemoved*: proc(self: pointer, index: cint): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQToolBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QToolBox_virtualbase_metaObject".}
proc fcQToolBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QToolBox_virtualbase_metacast".}
proc fcQToolBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QToolBox_virtualbase_metacall".}
proc fcQToolBox_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QToolBox_virtualbase_event".}
proc fcQToolBox_virtualbase_itemInserted(self: pointer, index: cint): void {.importc: "QToolBox_virtualbase_itemInserted".}
proc fcQToolBox_virtualbase_itemRemoved(self: pointer, index: cint): void {.importc: "QToolBox_virtualbase_itemRemoved".}
proc fcQToolBox_virtualbase_showEvent(self: pointer, e: pointer): void {.importc: "QToolBox_virtualbase_showEvent".}
proc fcQToolBox_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QToolBox_virtualbase_changeEvent".}
proc fcQToolBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QToolBox_virtualbase_sizeHint".}
proc fcQToolBox_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QToolBox_virtualbase_paintEvent".}
proc fcQToolBox_virtualbase_devType(self: pointer): cint {.importc: "QToolBox_virtualbase_devType".}
proc fcQToolBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QToolBox_virtualbase_setVisible".}
proc fcQToolBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QToolBox_virtualbase_minimumSizeHint".}
proc fcQToolBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QToolBox_virtualbase_heightForWidth".}
proc fcQToolBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QToolBox_virtualbase_hasHeightForWidth".}
proc fcQToolBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QToolBox_virtualbase_paintEngine".}
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
proc fcQToolBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QToolBox_virtualbase_nativeEvent".}
proc fcQToolBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QToolBox_virtualbase_metric".}
proc fcQToolBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QToolBox_virtualbase_initPainter".}
proc fcQToolBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QToolBox_virtualbase_redirected".}
proc fcQToolBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QToolBox_virtualbase_sharedPainter".}
proc fcQToolBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QToolBox_virtualbase_inputMethodEvent".}
proc fcQToolBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QToolBox_virtualbase_inputMethodQuery".}
proc fcQToolBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QToolBox_virtualbase_focusNextPrevChild".}
proc fcQToolBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QToolBox_virtualbase_eventFilter".}
proc fcQToolBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_timerEvent".}
proc fcQToolBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_childEvent".}
proc fcQToolBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QToolBox_virtualbase_customEvent".}
proc fcQToolBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QToolBox_virtualbase_connectNotify".}
proc fcQToolBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QToolBox_virtualbase_disconnectNotify".}
proc fcQToolBox_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QToolBox_protectedbase_drawFrame".}
proc fcQToolBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QToolBox_protectedbase_initStyleOption".}
proc fcQToolBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QToolBox_protectedbase_updateMicroFocus".}
proc fcQToolBox_protectedbase_create(self: pointer): void {.importc: "QToolBox_protectedbase_create".}
proc fcQToolBox_protectedbase_destroy(self: pointer): void {.importc: "QToolBox_protectedbase_destroy".}
proc fcQToolBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QToolBox_protectedbase_focusNextChild".}
proc fcQToolBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QToolBox_protectedbase_focusPreviousChild".}
proc fcQToolBox_protectedbase_sender(self: pointer): pointer {.importc: "QToolBox_protectedbase_sender".}
proc fcQToolBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QToolBox_protectedbase_senderSignalIndex".}
proc fcQToolBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QToolBox_protectedbase_receivers".}
proc fcQToolBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QToolBox_protectedbase_isSignalConnected".}
proc fcQToolBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQToolBox {.importc: "QToolBox_new".}
proc fcQToolBox_new2(vtbl, vdata: pointer): ptr cQToolBox {.importc: "QToolBox_new2".}
proc fcQToolBox_new3(vtbl, vdata: pointer, parent: pointer, f: cint): ptr cQToolBox {.importc: "QToolBox_new3".}
proc fcQToolBox_staticMetaObject(): pointer {.importc: "QToolBox_staticMetaObject".}

proc metaObject*(self: gen_qtoolbox_types.QToolBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtoolbox_types.QToolBox, param1: cstring): pointer =
  fcQToolBox_metacast(self.h, param1)

proc metacall*(self: gen_qtoolbox_types.QToolBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtoolbox_types.QToolBox, s: cstring): string =
  let v_ms = fcQToolBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbox_types.QToolBox, s: cstring): string =
  let v_ms = fcQToolBox_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addItem*(self: gen_qtoolbox_types.QToolBox, widget: gen_qwidget_types.QWidget, text: openArray[char]): cint =
  fcQToolBox_addItem(self.h, widget.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc addItem*(self: gen_qtoolbox_types.QToolBox, widget: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon, text: openArray[char]): cint =
  fcQToolBox_addItem2(self.h, widget.h, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc insertItem*(self: gen_qtoolbox_types.QToolBox, index: cint, widget: gen_qwidget_types.QWidget, text: openArray[char]): cint =
  fcQToolBox_insertItem(self.h, index, widget.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc insertItem*(self: gen_qtoolbox_types.QToolBox, index: cint, widget: gen_qwidget_types.QWidget, icon: gen_qicon_types.QIcon, text: openArray[char]): cint =
  fcQToolBox_insertItem2(self.h, index, widget.h, icon.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc removeItem*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_removeItem(self.h, index)

proc setItemEnabled*(self: gen_qtoolbox_types.QToolBox, index: cint, enabled: bool): void =
  fcQToolBox_setItemEnabled(self.h, index, enabled)

proc isItemEnabled*(self: gen_qtoolbox_types.QToolBox, index: cint): bool =
  fcQToolBox_isItemEnabled(self.h, index)

proc setItemText*(self: gen_qtoolbox_types.QToolBox, index: cint, text: openArray[char]): void =
  fcQToolBox_setItemText(self.h, index, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc itemText*(self: gen_qtoolbox_types.QToolBox, index: cint): string =
  let v_ms = fcQToolBox_itemText(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setItemIcon*(self: gen_qtoolbox_types.QToolBox, index: cint, icon: gen_qicon_types.QIcon): void =
  fcQToolBox_setItemIcon(self.h, index, icon.h)

proc itemIcon*(self: gen_qtoolbox_types.QToolBox, index: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQToolBox_itemIcon(self.h, index), owned: true)

proc setItemToolTip*(self: gen_qtoolbox_types.QToolBox, index: cint, toolTip: openArray[char]): void =
  fcQToolBox_setItemToolTip(self.h, index, struct_miqt_string(data: if len(toolTip) > 0: addr toolTip[0] else: nil, len: csize_t(len(toolTip))))

proc itemToolTip*(self: gen_qtoolbox_types.QToolBox, index: cint): string =
  let v_ms = fcQToolBox_itemToolTip(self.h, index)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc currentIndex*(self: gen_qtoolbox_types.QToolBox): cint =
  fcQToolBox_currentIndex(self.h)

proc currentWidget*(self: gen_qtoolbox_types.QToolBox): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQToolBox_currentWidget(self.h), owned: false)

proc widget*(self: gen_qtoolbox_types.QToolBox, index: cint): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQToolBox_widget(self.h, index), owned: false)

proc indexOf*(self: gen_qtoolbox_types.QToolBox, widget: gen_qwidget_types.QWidget): cint =
  fcQToolBox_indexOf(self.h, widget.h)

proc count*(self: gen_qtoolbox_types.QToolBox): cint =
  fcQToolBox_count(self.h)

proc setCurrentIndex*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_setCurrentIndex(self.h, index)

proc setCurrentWidget*(self: gen_qtoolbox_types.QToolBox, widget: gen_qwidget_types.QWidget): void =
  fcQToolBox_setCurrentWidget(self.h, widget.h)

proc currentChanged*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_currentChanged(self.h, index)

type QToolBoxcurrentChangedSlot* = proc(index: cint)
proc fcQToolBox_slot_callback_currentChanged(slot: int, index: cint) {.cdecl.} =
  let nimfunc = cast[ptr QToolBoxcurrentChangedSlot](cast[pointer](slot))
  let slotval1 = index

  nimfunc[](slotval1)

proc fcQToolBox_slot_callback_currentChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QToolBoxcurrentChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onCurrentChanged*(self: gen_qtoolbox_types.QToolBox, slot: QToolBoxcurrentChangedSlot) =
  var tmp = new QToolBoxcurrentChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQToolBox_connect_currentChanged(self.h, cast[int](addr tmp[]), fcQToolBox_slot_callback_currentChanged, fcQToolBox_slot_callback_currentChanged_release)

proc tr*(_: type gen_qtoolbox_types.QToolBox, s: cstring, c: cstring): string =
  let v_ms = fcQToolBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtoolbox_types.QToolBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbox_types.QToolBox, s: cstring, c: cstring): string =
  let v_ms = fcQToolBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtoolbox_types.QToolBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQToolBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QToolBoxenterEventProc* = proc(self: QToolBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QToolBoxnativeEventProc* = proc(self: QToolBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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

type QToolBoxVTable* {.inheritable, pure.} = object
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

proc QToolBoxmetaObject*(self: gen_qtoolbox_types.QToolBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBox_virtualbase_metaObject(self.h), owned: false)

proc QToolBoxmetacast*(self: gen_qtoolbox_types.QToolBox, param1: cstring): pointer =
  fcQToolBox_virtualbase_metacast(self.h, param1)

proc QToolBoxmetacall*(self: gen_qtoolbox_types.QToolBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQToolBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QToolBoxevent*(self: gen_qtoolbox_types.QToolBox, e: gen_qcoreevent_types.QEvent): bool =
  fcQToolBox_virtualbase_event(self.h, e.h)

proc QToolBoxitemInserted*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_virtualbase_itemInserted(self.h, index)

proc QToolBoxitemRemoved*(self: gen_qtoolbox_types.QToolBox, index: cint): void =
  fcQToolBox_virtualbase_itemRemoved(self.h, index)

proc QToolBoxshowEvent*(self: gen_qtoolbox_types.QToolBox, e: gen_qevent_types.QShowEvent): void =
  fcQToolBox_virtualbase_showEvent(self.h, e.h)

proc QToolBoxchangeEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qcoreevent_types.QEvent): void =
  fcQToolBox_virtualbase_changeEvent(self.h, param1.h)

proc QToolBoxsizeHint*(self: gen_qtoolbox_types.QToolBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBox_virtualbase_sizeHint(self.h), owned: true)

proc QToolBoxpaintEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qevent_types.QPaintEvent): void =
  fcQToolBox_virtualbase_paintEvent(self.h, param1.h)

proc QToolBoxdevType*(self: gen_qtoolbox_types.QToolBox): cint =
  fcQToolBox_virtualbase_devType(self.h)

proc QToolBoxsetVisible*(self: gen_qtoolbox_types.QToolBox, visible: bool): void =
  fcQToolBox_virtualbase_setVisible(self.h, visible)

proc QToolBoxminimumSizeHint*(self: gen_qtoolbox_types.QToolBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQToolBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc QToolBoxheightForWidth*(self: gen_qtoolbox_types.QToolBox, param1: cint): cint =
  fcQToolBox_virtualbase_heightForWidth(self.h, param1)

proc QToolBoxhasHeightForWidth*(self: gen_qtoolbox_types.QToolBox): bool =
  fcQToolBox_virtualbase_hasHeightForWidth(self.h)

proc QToolBoxpaintEngine*(self: gen_qtoolbox_types.QToolBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQToolBox_virtualbase_paintEngine(self.h), owned: false)

proc QToolBoxmousePressEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBox_virtualbase_mousePressEvent(self.h, event.h)

proc QToolBoxmouseReleaseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QToolBoxmouseDoubleClickEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QToolBoxmouseMoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMouseEvent): void =
  fcQToolBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc QToolBoxwheelEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QWheelEvent): void =
  fcQToolBox_virtualbase_wheelEvent(self.h, event.h)

proc QToolBoxkeyPressEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QKeyEvent): void =
  fcQToolBox_virtualbase_keyPressEvent(self.h, event.h)

proc QToolBoxkeyReleaseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QKeyEvent): void =
  fcQToolBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc QToolBoxfocusInEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QFocusEvent): void =
  fcQToolBox_virtualbase_focusInEvent(self.h, event.h)

proc QToolBoxfocusOutEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QFocusEvent): void =
  fcQToolBox_virtualbase_focusOutEvent(self.h, event.h)

proc QToolBoxenterEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBox_virtualbase_enterEvent(self.h, event.h)

proc QToolBoxleaveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBox_virtualbase_leaveEvent(self.h, event.h)

proc QToolBoxmoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QMoveEvent): void =
  fcQToolBox_virtualbase_moveEvent(self.h, event.h)

proc QToolBoxresizeEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QResizeEvent): void =
  fcQToolBox_virtualbase_resizeEvent(self.h, event.h)

proc QToolBoxcloseEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QCloseEvent): void =
  fcQToolBox_virtualbase_closeEvent(self.h, event.h)

proc QToolBoxcontextMenuEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQToolBox_virtualbase_contextMenuEvent(self.h, event.h)

proc QToolBoxtabletEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QTabletEvent): void =
  fcQToolBox_virtualbase_tabletEvent(self.h, event.h)

proc QToolBoxactionEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QActionEvent): void =
  fcQToolBox_virtualbase_actionEvent(self.h, event.h)

proc QToolBoxdragEnterEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQToolBox_virtualbase_dragEnterEvent(self.h, event.h)

proc QToolBoxdragMoveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQToolBox_virtualbase_dragMoveEvent(self.h, event.h)

proc QToolBoxdragLeaveEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQToolBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc QToolBoxdropEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QDropEvent): void =
  fcQToolBox_virtualbase_dropEvent(self.h, event.h)

proc QToolBoxhideEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qevent_types.QHideEvent): void =
  fcQToolBox_virtualbase_hideEvent(self.h, event.h)

proc QToolBoxnativeEvent*(self: gen_qtoolbox_types.QToolBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQToolBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QToolBoxmetric*(self: gen_qtoolbox_types.QToolBox, param1: cint): cint =
  fcQToolBox_virtualbase_metric(self.h, cint(param1))

proc QToolBoxinitPainter*(self: gen_qtoolbox_types.QToolBox, painter: gen_qpainter_types.QPainter): void =
  fcQToolBox_virtualbase_initPainter(self.h, painter.h)

proc QToolBoxredirected*(self: gen_qtoolbox_types.QToolBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQToolBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc QToolBoxsharedPainter*(self: gen_qtoolbox_types.QToolBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQToolBox_virtualbase_sharedPainter(self.h), owned: false)

proc QToolBoxinputMethodEvent*(self: gen_qtoolbox_types.QToolBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQToolBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc QToolBoxinputMethodQuery*(self: gen_qtoolbox_types.QToolBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQToolBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QToolBoxfocusNextPrevChild*(self: gen_qtoolbox_types.QToolBox, next: bool): bool =
  fcQToolBox_virtualbase_focusNextPrevChild(self.h, next)

proc QToolBoxeventFilter*(self: gen_qtoolbox_types.QToolBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQToolBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QToolBoxtimerEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQToolBox_virtualbase_timerEvent(self.h, event.h)

proc QToolBoxchildEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQToolBox_virtualbase_childEvent(self.h, event.h)

proc QToolBoxcustomEvent*(self: gen_qtoolbox_types.QToolBox, event: gen_qcoreevent_types.QEvent): void =
  fcQToolBox_virtualbase_customEvent(self.h, event.h)

proc QToolBoxconnectNotify*(self: gen_qtoolbox_types.QToolBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolBox_virtualbase_connectNotify(self.h, signal.h)

proc QToolBoxdisconnectNotify*(self: gen_qtoolbox_types.QToolBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQToolBox_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQToolBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQToolBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQToolBox_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQToolBox_vtable_callback_itemInserted(self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = index
  vtbl[].itemInserted(self, slotval1)

proc fcQToolBox_vtable_callback_itemRemoved(self: pointer, index: cint): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = index
  vtbl[].itemRemoved(self, slotval1)

proc fcQToolBox_vtable_callback_showEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: e, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQToolBox_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQToolBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQToolBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQToolBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQToolBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQToolBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQToolBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQToolBox_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQToolBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQToolBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQToolBox_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQToolBox_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQToolBox_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQToolBox_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQToolBox_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQToolBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQToolBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQToolBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQToolBox_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQToolBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQToolBox_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQToolBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQToolBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQToolBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQToolBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQToolBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQToolBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQToolBox_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQToolBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQToolBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQToolBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQToolBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQToolBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQToolBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQToolBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQToolBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQToolBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQToolBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQToolBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QToolBoxVTable](fcQToolBox_vdata(self))
  let self = QToolBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQToolBox* {.inheritable.} = ref object of QToolBox
  vtbl*: cQToolBoxVTable

method metaObject*(self: VirtualQToolBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QToolBoxmetaObject(self[])
method metacast*(self: VirtualQToolBox, param1: cstring): pointer {.base.} =
  QToolBoxmetacast(self[], param1)
method metacall*(self: VirtualQToolBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QToolBoxmetacall(self[], param1, param2, param3)
method event*(self: VirtualQToolBox, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolBoxevent(self[], e)
method itemInserted*(self: VirtualQToolBox, index: cint): void {.base.} =
  QToolBoxitemInserted(self[], index)
method itemRemoved*(self: VirtualQToolBox, index: cint): void {.base.} =
  QToolBoxitemRemoved(self[], index)
method showEvent*(self: VirtualQToolBox, e: gen_qevent_types.QShowEvent): void {.base.} =
  QToolBoxshowEvent(self[], e)
method changeEvent*(self: VirtualQToolBox, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolBoxchangeEvent(self[], param1)
method sizeHint*(self: VirtualQToolBox): gen_qsize_types.QSize {.base.} =
  QToolBoxsizeHint(self[])
method paintEvent*(self: VirtualQToolBox, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QToolBoxpaintEvent(self[], param1)
method devType*(self: VirtualQToolBox): cint {.base.} =
  QToolBoxdevType(self[])
method setVisible*(self: VirtualQToolBox, visible: bool): void {.base.} =
  QToolBoxsetVisible(self[], visible)
method minimumSizeHint*(self: VirtualQToolBox): gen_qsize_types.QSize {.base.} =
  QToolBoxminimumSizeHint(self[])
method heightForWidth*(self: VirtualQToolBox, param1: cint): cint {.base.} =
  QToolBoxheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQToolBox): bool {.base.} =
  QToolBoxhasHeightForWidth(self[])
method paintEngine*(self: VirtualQToolBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QToolBoxpaintEngine(self[])
method mousePressEvent*(self: VirtualQToolBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolBoxmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQToolBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolBoxmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQToolBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolBoxmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQToolBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QToolBoxmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQToolBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QToolBoxwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQToolBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolBoxkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQToolBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QToolBoxkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQToolBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolBoxfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQToolBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QToolBoxfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQToolBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolBoxenterEvent(self[], event)
method leaveEvent*(self: VirtualQToolBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolBoxleaveEvent(self[], event)
method moveEvent*(self: VirtualQToolBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QToolBoxmoveEvent(self[], event)
method resizeEvent*(self: VirtualQToolBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QToolBoxresizeEvent(self[], event)
method closeEvent*(self: VirtualQToolBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QToolBoxcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQToolBox, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QToolBoxcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQToolBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QToolBoxtabletEvent(self[], event)
method actionEvent*(self: VirtualQToolBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QToolBoxactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQToolBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QToolBoxdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQToolBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QToolBoxdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQToolBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QToolBoxdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQToolBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QToolBoxdropEvent(self[], event)
method hideEvent*(self: VirtualQToolBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QToolBoxhideEvent(self[], event)
method nativeEvent*(self: VirtualQToolBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QToolBoxnativeEvent(self[], eventType, message, resultVal)
method metric*(self: VirtualQToolBox, param1: cint): cint {.base.} =
  QToolBoxmetric(self[], param1)
method initPainter*(self: VirtualQToolBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QToolBoxinitPainter(self[], painter)
method redirected*(self: VirtualQToolBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QToolBoxredirected(self[], offset)
method sharedPainter*(self: VirtualQToolBox): gen_qpainter_types.QPainter {.base.} =
  QToolBoxsharedPainter(self[])
method inputMethodEvent*(self: VirtualQToolBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QToolBoxinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQToolBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QToolBoxinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQToolBox, next: bool): bool {.base.} =
  QToolBoxfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQToolBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QToolBoxeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQToolBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QToolBoxtimerEvent(self[], event)
method childEvent*(self: VirtualQToolBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QToolBoxchildEvent(self[], event)
method customEvent*(self: VirtualQToolBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QToolBoxcustomEvent(self[], event)
method connectNotify*(self: VirtualQToolBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolBoxconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQToolBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QToolBoxdisconnectNotify(self[], signal)

proc fcQToolBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQToolBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQToolBox_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQToolBox_method_callback_itemInserted(self: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = index
  inst.itemInserted(slotval1)

proc fcQToolBox_method_callback_itemRemoved(self: pointer, index: cint): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = index
  inst.itemRemoved(slotval1)

proc fcQToolBox_method_callback_showEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: e, owned: false)
  inst.showEvent(slotval1)

proc fcQToolBox_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQToolBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

proc fcQToolBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQToolBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQToolBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQToolBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQToolBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQToolBox_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQToolBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQToolBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQToolBox_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQToolBox_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQToolBox_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQToolBox_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQToolBox_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQToolBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQToolBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQToolBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQToolBox_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQToolBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQToolBox_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQToolBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQToolBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQToolBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQToolBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQToolBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQToolBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQToolBox_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQToolBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQToolBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQToolBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQToolBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQToolBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQToolBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQToolBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQToolBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQToolBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQToolBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQToolBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQToolBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQToolBox](fcQToolBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc drawFrame*(self: gen_qtoolbox_types.QToolBox, param1: gen_qpainter_types.QPainter): void =
  fcQToolBox_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qtoolbox_types.QToolBox, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQToolBox_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qtoolbox_types.QToolBox): void =
  fcQToolBox_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qtoolbox_types.QToolBox): void =
  fcQToolBox_protectedbase_create(self.h)

proc destroy*(self: gen_qtoolbox_types.QToolBox): void =
  fcQToolBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qtoolbox_types.QToolBox): bool =
  fcQToolBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qtoolbox_types.QToolBox): bool =
  fcQToolBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qtoolbox_types.QToolBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQToolBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtoolbox_types.QToolBox): cint =
  fcQToolBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtoolbox_types.QToolBox, signal: cstring): cint =
  fcQToolBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtoolbox_types.QToolBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQToolBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtoolbox_types.QToolBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QToolBoxVTable = nil): gen_qtoolbox_types.QToolBox =
  let vtbl = if vtbl == nil: new QToolBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolBoxVTable](fcQToolBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQToolBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQToolBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQToolBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQToolBox_vtable_callback_event
  if not isNil(vtbl[].itemInserted):
    vtbl[].vtbl.itemInserted = fcQToolBox_vtable_callback_itemInserted
  if not isNil(vtbl[].itemRemoved):
    vtbl[].vtbl.itemRemoved = fcQToolBox_vtable_callback_itemRemoved
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQToolBox_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQToolBox_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQToolBox_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQToolBox_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQToolBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQToolBox_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQToolBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQToolBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQToolBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQToolBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQToolBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQToolBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQToolBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQToolBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQToolBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQToolBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQToolBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQToolBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQToolBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQToolBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQToolBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQToolBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQToolBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQToolBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQToolBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQToolBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQToolBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQToolBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQToolBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQToolBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQToolBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQToolBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQToolBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQToolBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQToolBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQToolBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQToolBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQToolBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQToolBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQToolBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQToolBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQToolBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQToolBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQToolBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQToolBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQToolBox_vtable_callback_disconnectNotify
  gen_qtoolbox_types.QToolBox(h: fcQToolBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtoolbox_types.QToolBox,
    vtbl: ref QToolBoxVTable = nil): gen_qtoolbox_types.QToolBox =
  let vtbl = if vtbl == nil: new QToolBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolBoxVTable](fcQToolBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQToolBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQToolBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQToolBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQToolBox_vtable_callback_event
  if not isNil(vtbl[].itemInserted):
    vtbl[].vtbl.itemInserted = fcQToolBox_vtable_callback_itemInserted
  if not isNil(vtbl[].itemRemoved):
    vtbl[].vtbl.itemRemoved = fcQToolBox_vtable_callback_itemRemoved
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQToolBox_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQToolBox_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQToolBox_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQToolBox_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQToolBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQToolBox_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQToolBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQToolBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQToolBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQToolBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQToolBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQToolBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQToolBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQToolBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQToolBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQToolBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQToolBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQToolBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQToolBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQToolBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQToolBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQToolBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQToolBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQToolBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQToolBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQToolBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQToolBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQToolBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQToolBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQToolBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQToolBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQToolBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQToolBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQToolBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQToolBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQToolBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQToolBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQToolBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQToolBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQToolBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQToolBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQToolBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQToolBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQToolBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQToolBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQToolBox_vtable_callback_disconnectNotify
  gen_qtoolbox_types.QToolBox(h: fcQToolBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtoolbox_types.QToolBox,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QToolBoxVTable = nil): gen_qtoolbox_types.QToolBox =
  let vtbl = if vtbl == nil: new QToolBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QToolBoxVTable](fcQToolBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQToolBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQToolBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQToolBox_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQToolBox_vtable_callback_event
  if not isNil(vtbl[].itemInserted):
    vtbl[].vtbl.itemInserted = fcQToolBox_vtable_callback_itemInserted
  if not isNil(vtbl[].itemRemoved):
    vtbl[].vtbl.itemRemoved = fcQToolBox_vtable_callback_itemRemoved
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQToolBox_vtable_callback_showEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQToolBox_vtable_callback_changeEvent
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQToolBox_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQToolBox_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQToolBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQToolBox_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQToolBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQToolBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQToolBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQToolBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQToolBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQToolBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQToolBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQToolBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQToolBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQToolBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQToolBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQToolBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQToolBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQToolBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQToolBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQToolBox_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQToolBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQToolBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQToolBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQToolBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQToolBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQToolBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQToolBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQToolBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQToolBox_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQToolBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQToolBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQToolBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQToolBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQToolBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQToolBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQToolBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQToolBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQToolBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQToolBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQToolBox_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQToolBox_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQToolBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQToolBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQToolBox_vtable_callback_disconnectNotify
  gen_qtoolbox_types.QToolBox(h: fcQToolBox_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(f)), owned: true)

const cQToolBox_mvtbl = cQToolBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQToolBox()[])](self.fcQToolBox_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQToolBox_method_callback_metaObject,
  metacast: fcQToolBox_method_callback_metacast,
  metacall: fcQToolBox_method_callback_metacall,
  event: fcQToolBox_method_callback_event,
  itemInserted: fcQToolBox_method_callback_itemInserted,
  itemRemoved: fcQToolBox_method_callback_itemRemoved,
  showEvent: fcQToolBox_method_callback_showEvent,
  changeEvent: fcQToolBox_method_callback_changeEvent,
  sizeHint: fcQToolBox_method_callback_sizeHint,
  paintEvent: fcQToolBox_method_callback_paintEvent,
  devType: fcQToolBox_method_callback_devType,
  setVisible: fcQToolBox_method_callback_setVisible,
  minimumSizeHint: fcQToolBox_method_callback_minimumSizeHint,
  heightForWidth: fcQToolBox_method_callback_heightForWidth,
  hasHeightForWidth: fcQToolBox_method_callback_hasHeightForWidth,
  paintEngine: fcQToolBox_method_callback_paintEngine,
  mousePressEvent: fcQToolBox_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQToolBox_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQToolBox_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQToolBox_method_callback_mouseMoveEvent,
  wheelEvent: fcQToolBox_method_callback_wheelEvent,
  keyPressEvent: fcQToolBox_method_callback_keyPressEvent,
  keyReleaseEvent: fcQToolBox_method_callback_keyReleaseEvent,
  focusInEvent: fcQToolBox_method_callback_focusInEvent,
  focusOutEvent: fcQToolBox_method_callback_focusOutEvent,
  enterEvent: fcQToolBox_method_callback_enterEvent,
  leaveEvent: fcQToolBox_method_callback_leaveEvent,
  moveEvent: fcQToolBox_method_callback_moveEvent,
  resizeEvent: fcQToolBox_method_callback_resizeEvent,
  closeEvent: fcQToolBox_method_callback_closeEvent,
  contextMenuEvent: fcQToolBox_method_callback_contextMenuEvent,
  tabletEvent: fcQToolBox_method_callback_tabletEvent,
  actionEvent: fcQToolBox_method_callback_actionEvent,
  dragEnterEvent: fcQToolBox_method_callback_dragEnterEvent,
  dragMoveEvent: fcQToolBox_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQToolBox_method_callback_dragLeaveEvent,
  dropEvent: fcQToolBox_method_callback_dropEvent,
  hideEvent: fcQToolBox_method_callback_hideEvent,
  nativeEvent: fcQToolBox_method_callback_nativeEvent,
  metric: fcQToolBox_method_callback_metric,
  initPainter: fcQToolBox_method_callback_initPainter,
  redirected: fcQToolBox_method_callback_redirected,
  sharedPainter: fcQToolBox_method_callback_sharedPainter,
  inputMethodEvent: fcQToolBox_method_callback_inputMethodEvent,
  inputMethodQuery: fcQToolBox_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQToolBox_method_callback_focusNextPrevChild,
  eventFilter: fcQToolBox_method_callback_eventFilter,
  timerEvent: fcQToolBox_method_callback_timerEvent,
  childEvent: fcQToolBox_method_callback_childEvent,
  customEvent: fcQToolBox_method_callback_customEvent,
  connectNotify: fcQToolBox_method_callback_connectNotify,
  disconnectNotify: fcQToolBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtoolbox_types.QToolBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQToolBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolBox_new(addr(cQToolBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtoolbox_types.QToolBox,
    inst: VirtualQToolBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolBox_new2(addr(cQToolBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtoolbox_types.QToolBox,
    parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQToolBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQToolBox_new3(addr(cQToolBox_mvtbl), addr(inst[]), parent.h, cint(f))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtoolbox_types.QToolBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQToolBox_staticMetaObject())
