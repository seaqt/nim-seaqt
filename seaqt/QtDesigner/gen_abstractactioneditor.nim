import ./qtdesigner_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_abstractactioneditor.cpp", QtDesignerCFlags).}


import ./gen_abstractactioneditor_types
export gen_abstractactioneditor_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qaction_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtWidgets/gen_qwidget,
  ./gen_abstractformwindow_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qaction_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qwidget,
  gen_abstractformwindow_types

type cQDesignerActionEditorInterface*{.exportc: "QDesignerActionEditorInterface", incompleteStruct.} = object

proc fcQDesignerActionEditorInterface_metaObject(self: pointer): pointer {.importc: "QDesignerActionEditorInterface_metaObject".}
proc fcQDesignerActionEditorInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerActionEditorInterface_metacast".}
proc fcQDesignerActionEditorInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerActionEditorInterface_metacall".}
proc fcQDesignerActionEditorInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerActionEditorInterface_tr".}
proc fcQDesignerActionEditorInterface_manageAction(self: pointer, action: pointer): void {.importc: "QDesignerActionEditorInterface_manageAction".}
proc fcQDesignerActionEditorInterface_unmanageAction(self: pointer, action: pointer): void {.importc: "QDesignerActionEditorInterface_unmanageAction".}
proc fcQDesignerActionEditorInterface_setFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerActionEditorInterface_setFormWindow".}
proc fcQDesignerActionEditorInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerActionEditorInterface_tr2".}
proc fcQDesignerActionEditorInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerActionEditorInterface_tr3".}
proc fcQDesignerActionEditorInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerActionEditorInterface_vdata".}
proc fvdata_cQDesignerActionEditorInterface(self: pointer): pointer {.importc: "vdata_QDesignerActionEditorInterface".}

type cQDesignerActionEditorInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  manageAction*: proc(self: pointer, action: pointer): void {.cdecl, raises: [], gcsafe.}
  unmanageAction*: proc(self: pointer, action: pointer): void {.cdecl, raises: [], gcsafe.}
  setFormWindow*: proc(self: pointer, formWindow: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQDesignerActionEditorInterface_virtualbase_metaObject(self: pointer): pointer {.importc: "QDesignerActionEditorInterface_virtualbase_metaObject".}
proc fcQDesignerActionEditorInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerActionEditorInterface_virtualbase_metacast".}
proc fcQDesignerActionEditorInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerActionEditorInterface_virtualbase_metacall".}
proc fcQDesignerActionEditorInterface_virtualbase_devType(self: pointer): cint {.importc: "QDesignerActionEditorInterface_virtualbase_devType".}
proc fcQDesignerActionEditorInterface_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDesignerActionEditorInterface_virtualbase_setVisible".}
proc fcQDesignerActionEditorInterface_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDesignerActionEditorInterface_virtualbase_sizeHint".}
proc fcQDesignerActionEditorInterface_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDesignerActionEditorInterface_virtualbase_minimumSizeHint".}
proc fcQDesignerActionEditorInterface_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDesignerActionEditorInterface_virtualbase_heightForWidth".}
proc fcQDesignerActionEditorInterface_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDesignerActionEditorInterface_virtualbase_hasHeightForWidth".}
proc fcQDesignerActionEditorInterface_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDesignerActionEditorInterface_virtualbase_paintEngine".}
proc fcQDesignerActionEditorInterface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDesignerActionEditorInterface_virtualbase_event".}
proc fcQDesignerActionEditorInterface_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_mousePressEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_mouseReleaseEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_mouseDoubleClickEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_mouseMoveEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_wheelEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_keyPressEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_keyReleaseEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_focusInEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_focusOutEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_enterEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_leaveEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_paintEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_moveEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_resizeEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_closeEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_contextMenuEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_tabletEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_actionEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_dragEnterEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_dragMoveEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_dragLeaveEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_dropEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_showEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_hideEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDesignerActionEditorInterface_virtualbase_nativeEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_changeEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDesignerActionEditorInterface_virtualbase_metric".}
proc fcQDesignerActionEditorInterface_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_initPainter".}
proc fcQDesignerActionEditorInterface_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDesignerActionEditorInterface_virtualbase_redirected".}
proc fcQDesignerActionEditorInterface_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDesignerActionEditorInterface_virtualbase_sharedPainter".}
proc fcQDesignerActionEditorInterface_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_inputMethodEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDesignerActionEditorInterface_virtualbase_inputMethodQuery".}
proc fcQDesignerActionEditorInterface_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDesignerActionEditorInterface_virtualbase_focusNextPrevChild".}
proc fcQDesignerActionEditorInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDesignerActionEditorInterface_virtualbase_eventFilter".}
proc fcQDesignerActionEditorInterface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_timerEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_childEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_customEvent".}
proc fcQDesignerActionEditorInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_connectNotify".}
proc fcQDesignerActionEditorInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerActionEditorInterface_virtualbase_disconnectNotify".}
proc fcQDesignerActionEditorInterface_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDesignerActionEditorInterface_protectedbase_updateMicroFocus".}
proc fcQDesignerActionEditorInterface_protectedbase_create(self: pointer): void {.importc: "QDesignerActionEditorInterface_protectedbase_create".}
proc fcQDesignerActionEditorInterface_protectedbase_destroy(self: pointer): void {.importc: "QDesignerActionEditorInterface_protectedbase_destroy".}
proc fcQDesignerActionEditorInterface_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDesignerActionEditorInterface_protectedbase_focusNextChild".}
proc fcQDesignerActionEditorInterface_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDesignerActionEditorInterface_protectedbase_focusPreviousChild".}
proc fcQDesignerActionEditorInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerActionEditorInterface_protectedbase_sender".}
proc fcQDesignerActionEditorInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerActionEditorInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerActionEditorInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerActionEditorInterface_protectedbase_receivers".}
proc fcQDesignerActionEditorInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerActionEditorInterface_protectedbase_isSignalConnected".}
proc fcQDesignerActionEditorInterface_new(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQDesignerActionEditorInterface {.importc: "QDesignerActionEditorInterface_new".}
proc fcQDesignerActionEditorInterface_new2(vtbl: pointer, vdata: csize_t, parent: pointer, flags: cint): ptr cQDesignerActionEditorInterface {.importc: "QDesignerActionEditorInterface_new2".}
proc fcQDesignerActionEditorInterface_staticMetaObject(): pointer {.importc: "QDesignerActionEditorInterface_staticMetaObject".}

proc metaObject*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerActionEditorInterface_metaObject(self.h), owned: false)

proc metacast*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: cstring): pointer =
  fcQDesignerActionEditorInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerActionEditorInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractactioneditor_types.QDesignerActionEditorInterface, s: cstring): string =
  let v_ms = fcQDesignerActionEditorInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc manageAction*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, action: gen_qaction_types.QAction): void =
  fcQDesignerActionEditorInterface_manageAction(self.h, action.h)

proc unmanageAction*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, action: gen_qaction_types.QAction): void =
  fcQDesignerActionEditorInterface_unmanageAction(self.h, action.h)

proc setFormWindow*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerActionEditorInterface_setFormWindow(self.h, formWindow.h)

proc tr*(_: type gen_abstractactioneditor_types.QDesignerActionEditorInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerActionEditorInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractactioneditor_types.QDesignerActionEditorInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerActionEditorInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDesignerActionEditorInterfacemetaObjectProc* = proc(self: QDesignerActionEditorInterface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemetacastProc* = proc(self: QDesignerActionEditorInterface, param1: cstring): pointer {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemetacallProc* = proc(self: QDesignerActionEditorInterface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemanageActionProc* = proc(self: QDesignerActionEditorInterface, action: gen_qaction_types.QAction): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceunmanageActionProc* = proc(self: QDesignerActionEditorInterface, action: gen_qaction_types.QAction): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacesetFormWindowProc* = proc(self: QDesignerActionEditorInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacedevTypeProc* = proc(self: QDesignerActionEditorInterface): cint {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacesetVisibleProc* = proc(self: QDesignerActionEditorInterface, visible: bool): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacesizeHintProc* = proc(self: QDesignerActionEditorInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceminimumSizeHintProc* = proc(self: QDesignerActionEditorInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceheightForWidthProc* = proc(self: QDesignerActionEditorInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacehasHeightForWidthProc* = proc(self: QDesignerActionEditorInterface): bool {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacepaintEngineProc* = proc(self: QDesignerActionEditorInterface): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceeventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemousePressEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemouseReleaseEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemouseDoubleClickEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemouseMoveEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacewheelEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacekeyPressEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacekeyReleaseEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacefocusInEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacefocusOutEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceenterEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceleaveEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacepaintEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemoveEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceresizeEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacecloseEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacecontextMenuEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacetabletEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceactionEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacedragEnterEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacedragMoveEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacedragLeaveEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacedropEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceshowEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacehideEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacenativeEventProc* = proc(self: QDesignerActionEditorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacechangeEventProc* = proc(self: QDesignerActionEditorInterface, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacemetricProc* = proc(self: QDesignerActionEditorInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceinitPainterProc* = proc(self: QDesignerActionEditorInterface, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceredirectedProc* = proc(self: QDesignerActionEditorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacesharedPainterProc* = proc(self: QDesignerActionEditorInterface): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceinputMethodEventProc* = proc(self: QDesignerActionEditorInterface, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceinputMethodQueryProc* = proc(self: QDesignerActionEditorInterface, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacefocusNextPrevChildProc* = proc(self: QDesignerActionEditorInterface, next: bool): bool {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceeventFilterProc* = proc(self: QDesignerActionEditorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacetimerEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacechildEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacecustomEventProc* = proc(self: QDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfaceconnectNotifyProc* = proc(self: QDesignerActionEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesignerActionEditorInterfacedisconnectNotifyProc* = proc(self: QDesignerActionEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QDesignerActionEditorInterfaceVTable* {.inheritable, pure.} = object
  vtbl: cQDesignerActionEditorInterfaceVTable
  metaObject*: QDesignerActionEditorInterfacemetaObjectProc
  metacast*: QDesignerActionEditorInterfacemetacastProc
  metacall*: QDesignerActionEditorInterfacemetacallProc
  manageAction*: QDesignerActionEditorInterfacemanageActionProc
  unmanageAction*: QDesignerActionEditorInterfaceunmanageActionProc
  setFormWindow*: QDesignerActionEditorInterfacesetFormWindowProc
  devType*: QDesignerActionEditorInterfacedevTypeProc
  setVisible*: QDesignerActionEditorInterfacesetVisibleProc
  sizeHint*: QDesignerActionEditorInterfacesizeHintProc
  minimumSizeHint*: QDesignerActionEditorInterfaceminimumSizeHintProc
  heightForWidth*: QDesignerActionEditorInterfaceheightForWidthProc
  hasHeightForWidth*: QDesignerActionEditorInterfacehasHeightForWidthProc
  paintEngine*: QDesignerActionEditorInterfacepaintEngineProc
  event*: QDesignerActionEditorInterfaceeventProc
  mousePressEvent*: QDesignerActionEditorInterfacemousePressEventProc
  mouseReleaseEvent*: QDesignerActionEditorInterfacemouseReleaseEventProc
  mouseDoubleClickEvent*: QDesignerActionEditorInterfacemouseDoubleClickEventProc
  mouseMoveEvent*: QDesignerActionEditorInterfacemouseMoveEventProc
  wheelEvent*: QDesignerActionEditorInterfacewheelEventProc
  keyPressEvent*: QDesignerActionEditorInterfacekeyPressEventProc
  keyReleaseEvent*: QDesignerActionEditorInterfacekeyReleaseEventProc
  focusInEvent*: QDesignerActionEditorInterfacefocusInEventProc
  focusOutEvent*: QDesignerActionEditorInterfacefocusOutEventProc
  enterEvent*: QDesignerActionEditorInterfaceenterEventProc
  leaveEvent*: QDesignerActionEditorInterfaceleaveEventProc
  paintEvent*: QDesignerActionEditorInterfacepaintEventProc
  moveEvent*: QDesignerActionEditorInterfacemoveEventProc
  resizeEvent*: QDesignerActionEditorInterfaceresizeEventProc
  closeEvent*: QDesignerActionEditorInterfacecloseEventProc
  contextMenuEvent*: QDesignerActionEditorInterfacecontextMenuEventProc
  tabletEvent*: QDesignerActionEditorInterfacetabletEventProc
  actionEvent*: QDesignerActionEditorInterfaceactionEventProc
  dragEnterEvent*: QDesignerActionEditorInterfacedragEnterEventProc
  dragMoveEvent*: QDesignerActionEditorInterfacedragMoveEventProc
  dragLeaveEvent*: QDesignerActionEditorInterfacedragLeaveEventProc
  dropEvent*: QDesignerActionEditorInterfacedropEventProc
  showEvent*: QDesignerActionEditorInterfaceshowEventProc
  hideEvent*: QDesignerActionEditorInterfacehideEventProc
  nativeEvent*: QDesignerActionEditorInterfacenativeEventProc
  changeEvent*: QDesignerActionEditorInterfacechangeEventProc
  metric*: QDesignerActionEditorInterfacemetricProc
  initPainter*: QDesignerActionEditorInterfaceinitPainterProc
  redirected*: QDesignerActionEditorInterfaceredirectedProc
  sharedPainter*: QDesignerActionEditorInterfacesharedPainterProc
  inputMethodEvent*: QDesignerActionEditorInterfaceinputMethodEventProc
  inputMethodQuery*: QDesignerActionEditorInterfaceinputMethodQueryProc
  focusNextPrevChild*: QDesignerActionEditorInterfacefocusNextPrevChildProc
  eventFilter*: QDesignerActionEditorInterfaceeventFilterProc
  timerEvent*: QDesignerActionEditorInterfacetimerEventProc
  childEvent*: QDesignerActionEditorInterfacechildEventProc
  customEvent*: QDesignerActionEditorInterfacecustomEventProc
  connectNotify*: QDesignerActionEditorInterfaceconnectNotifyProc
  disconnectNotify*: QDesignerActionEditorInterfacedisconnectNotifyProc

proc QDesignerActionEditorInterfacemetaObject*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerActionEditorInterface_virtualbase_metaObject(self.h), owned: false)

proc QDesignerActionEditorInterfacemetacast*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: cstring): pointer =
  fcQDesignerActionEditorInterface_virtualbase_metacast(self.h, param1)

proc QDesignerActionEditorInterfacemetacall*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerActionEditorInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDesignerActionEditorInterfacedevType*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): cint =
  fcQDesignerActionEditorInterface_virtualbase_devType(self.h)

proc QDesignerActionEditorInterfacesetVisible*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, visible: bool): void =
  fcQDesignerActionEditorInterface_virtualbase_setVisible(self.h, visible)

proc QDesignerActionEditorInterfacesizeHint*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerActionEditorInterface_virtualbase_sizeHint(self.h), owned: true)

proc QDesignerActionEditorInterfaceminimumSizeHint*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerActionEditorInterface_virtualbase_minimumSizeHint(self.h), owned: true)

proc QDesignerActionEditorInterfaceheightForWidth*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: cint): cint =
  fcQDesignerActionEditorInterface_virtualbase_heightForWidth(self.h, param1)

proc QDesignerActionEditorInterfacehasHeightForWidth*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): bool =
  fcQDesignerActionEditorInterface_virtualbase_hasHeightForWidth(self.h)

proc QDesignerActionEditorInterfacepaintEngine*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDesignerActionEditorInterface_virtualbase_paintEngine(self.h), owned: false)

proc QDesignerActionEditorInterfaceevent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerActionEditorInterface_virtualbase_event(self.h, event.h)

proc QDesignerActionEditorInterfacemousePressEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_mousePressEvent(self.h, event.h)

proc QDesignerActionEditorInterfacemouseReleaseEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QDesignerActionEditorInterfacemouseDoubleClickEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QDesignerActionEditorInterfacemouseMoveEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_mouseMoveEvent(self.h, event.h)

proc QDesignerActionEditorInterfacewheelEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QWheelEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_wheelEvent(self.h, event.h)

proc QDesignerActionEditorInterfacekeyPressEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_keyPressEvent(self.h, event.h)

proc QDesignerActionEditorInterfacekeyReleaseEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_keyReleaseEvent(self.h, event.h)

proc QDesignerActionEditorInterfacefocusInEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_focusInEvent(self.h, event.h)

proc QDesignerActionEditorInterfacefocusOutEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_focusOutEvent(self.h, event.h)

proc QDesignerActionEditorInterfaceenterEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QEnterEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_enterEvent(self.h, event.h)

proc QDesignerActionEditorInterfaceleaveEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_leaveEvent(self.h, event.h)

proc QDesignerActionEditorInterfacepaintEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QPaintEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_paintEvent(self.h, event.h)

proc QDesignerActionEditorInterfacemoveEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QMoveEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_moveEvent(self.h, event.h)

proc QDesignerActionEditorInterfaceresizeEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QResizeEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_resizeEvent(self.h, event.h)

proc QDesignerActionEditorInterfacecloseEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QCloseEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_closeEvent(self.h, event.h)

proc QDesignerActionEditorInterfacecontextMenuEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_contextMenuEvent(self.h, event.h)

proc QDesignerActionEditorInterfacetabletEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QTabletEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_tabletEvent(self.h, event.h)

proc QDesignerActionEditorInterfaceactionEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QActionEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_actionEvent(self.h, event.h)

proc QDesignerActionEditorInterfacedragEnterEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_dragEnterEvent(self.h, event.h)

proc QDesignerActionEditorInterfacedragMoveEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_dragMoveEvent(self.h, event.h)

proc QDesignerActionEditorInterfacedragLeaveEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_dragLeaveEvent(self.h, event.h)

proc QDesignerActionEditorInterfacedropEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QDropEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_dropEvent(self.h, event.h)

proc QDesignerActionEditorInterfaceshowEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QShowEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_showEvent(self.h, event.h)

proc QDesignerActionEditorInterfacehideEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qevent_types.QHideEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_hideEvent(self.h, event.h)

proc QDesignerActionEditorInterfacenativeEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDesignerActionEditorInterface_virtualbase_nativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc QDesignerActionEditorInterfacechangeEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: gen_qcoreevent_types.QEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_changeEvent(self.h, param1.h)

proc QDesignerActionEditorInterfacemetric*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: cint): cint =
  fcQDesignerActionEditorInterface_virtualbase_metric(self.h, cint(param1))

proc QDesignerActionEditorInterfaceinitPainter*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, painter: gen_qpainter_types.QPainter): void =
  fcQDesignerActionEditorInterface_virtualbase_initPainter(self.h, painter.h)

proc QDesignerActionEditorInterfaceredirected*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDesignerActionEditorInterface_virtualbase_redirected(self.h, offset.h), owned: false)

proc QDesignerActionEditorInterfacesharedPainter*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDesignerActionEditorInterface_virtualbase_sharedPainter(self.h), owned: false)

proc QDesignerActionEditorInterfaceinputMethodEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_inputMethodEvent(self.h, param1.h)

proc QDesignerActionEditorInterfaceinputMethodQuery*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesignerActionEditorInterface_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QDesignerActionEditorInterfacefocusNextPrevChild*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, next: bool): bool =
  fcQDesignerActionEditorInterface_virtualbase_focusNextPrevChild(self.h, next)

proc QDesignerActionEditorInterfaceeventFilter*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerActionEditorInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDesignerActionEditorInterfacetimerEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_timerEvent(self.h, event.h)

proc QDesignerActionEditorInterfacechildEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_childEvent(self.h, event.h)

proc QDesignerActionEditorInterfacecustomEvent*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerActionEditorInterface_virtualbase_customEvent(self.h, event.h)

proc QDesignerActionEditorInterfaceconnectNotify*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerActionEditorInterface_virtualbase_connectNotify(self.h, signal.h)

proc QDesignerActionEditorInterfacedisconnectNotify*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerActionEditorInterface_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDesignerActionEditorInterface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_manageAction(self: pointer, action: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)
  vtbl[].manageAction(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_unmanageAction(self: pointer, action: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)
  vtbl[].unmanageAction(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_setFormWindow(self: pointer, formWindow: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow, owned: false)
  vtbl[].setFormWindow(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerActionEditorInterface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQDesignerActionEditorInterface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
  let self = QDesignerActionEditorInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDesignerActionEditorInterface* {.inheritable.} = ref object of QDesignerActionEditorInterface
  vtbl*: cQDesignerActionEditorInterfaceVTable

method metaObject*(self: VirtualQDesignerActionEditorInterface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDesignerActionEditorInterfacemetaObject(self[])
method metacast*(self: VirtualQDesignerActionEditorInterface, param1: cstring): pointer {.base.} =
  QDesignerActionEditorInterfacemetacast(self[], param1)
method metacall*(self: VirtualQDesignerActionEditorInterface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDesignerActionEditorInterfacemetacall(self[], param1, param2, param3)
method manageAction*(self: VirtualQDesignerActionEditorInterface, action: gen_qaction_types.QAction): void {.base.} =
  raiseAssert("missing implementation of QDesignerActionEditorInterface.manageAction")
method unmanageAction*(self: VirtualQDesignerActionEditorInterface, action: gen_qaction_types.QAction): void {.base.} =
  raiseAssert("missing implementation of QDesignerActionEditorInterface.unmanageAction")
method setFormWindow*(self: VirtualQDesignerActionEditorInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void {.base.} =
  raiseAssert("missing implementation of QDesignerActionEditorInterface.setFormWindow")
method devType*(self: VirtualQDesignerActionEditorInterface): cint {.base.} =
  QDesignerActionEditorInterfacedevType(self[])
method setVisible*(self: VirtualQDesignerActionEditorInterface, visible: bool): void {.base.} =
  QDesignerActionEditorInterfacesetVisible(self[], visible)
method sizeHint*(self: VirtualQDesignerActionEditorInterface): gen_qsize_types.QSize {.base.} =
  QDesignerActionEditorInterfacesizeHint(self[])
method minimumSizeHint*(self: VirtualQDesignerActionEditorInterface): gen_qsize_types.QSize {.base.} =
  QDesignerActionEditorInterfaceminimumSizeHint(self[])
method heightForWidth*(self: VirtualQDesignerActionEditorInterface, param1: cint): cint {.base.} =
  QDesignerActionEditorInterfaceheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQDesignerActionEditorInterface): bool {.base.} =
  QDesignerActionEditorInterfacehasHeightForWidth(self[])
method paintEngine*(self: VirtualQDesignerActionEditorInterface): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDesignerActionEditorInterfacepaintEngine(self[])
method event*(self: VirtualQDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerActionEditorInterfaceevent(self[], event)
method mousePressEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerActionEditorInterfacemousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerActionEditorInterfacemouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerActionEditorInterfacemouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerActionEditorInterfacemouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDesignerActionEditorInterfacewheelEvent(self[], event)
method keyPressEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerActionEditorInterfacekeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerActionEditorInterfacekeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerActionEditorInterfacefocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerActionEditorInterfacefocusOutEvent(self[], event)
method enterEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDesignerActionEditorInterfaceenterEvent(self[], event)
method leaveEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerActionEditorInterfaceleaveEvent(self[], event)
method paintEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDesignerActionEditorInterfacepaintEvent(self[], event)
method moveEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDesignerActionEditorInterfacemoveEvent(self[], event)
method resizeEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDesignerActionEditorInterfaceresizeEvent(self[], event)
method closeEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDesignerActionEditorInterfacecloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDesignerActionEditorInterfacecontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDesignerActionEditorInterfacetabletEvent(self[], event)
method actionEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDesignerActionEditorInterfaceactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDesignerActionEditorInterfacedragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDesignerActionEditorInterfacedragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDesignerActionEditorInterfacedragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDesignerActionEditorInterfacedropEvent(self[], event)
method showEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDesignerActionEditorInterfaceshowEvent(self[], event)
method hideEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDesignerActionEditorInterfacehideEvent(self[], event)
method nativeEvent*(self: VirtualQDesignerActionEditorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDesignerActionEditorInterfacenativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQDesignerActionEditorInterface, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerActionEditorInterfacechangeEvent(self[], param1)
method metric*(self: VirtualQDesignerActionEditorInterface, param1: cint): cint {.base.} =
  QDesignerActionEditorInterfacemetric(self[], param1)
method initPainter*(self: VirtualQDesignerActionEditorInterface, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDesignerActionEditorInterfaceinitPainter(self[], painter)
method redirected*(self: VirtualQDesignerActionEditorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDesignerActionEditorInterfaceredirected(self[], offset)
method sharedPainter*(self: VirtualQDesignerActionEditorInterface): gen_qpainter_types.QPainter {.base.} =
  QDesignerActionEditorInterfacesharedPainter(self[])
method inputMethodEvent*(self: VirtualQDesignerActionEditorInterface, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDesignerActionEditorInterfaceinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQDesignerActionEditorInterface, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDesignerActionEditorInterfaceinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQDesignerActionEditorInterface, next: bool): bool {.base.} =
  QDesignerActionEditorInterfacefocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQDesignerActionEditorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerActionEditorInterfaceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDesignerActionEditorInterfacetimerEvent(self[], event)
method childEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDesignerActionEditorInterfacechildEvent(self[], event)
method customEvent*(self: VirtualQDesignerActionEditorInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerActionEditorInterfacecustomEvent(self[], event)
method connectNotify*(self: VirtualQDesignerActionEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerActionEditorInterfaceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDesignerActionEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerActionEditorInterfacedisconnectNotify(self[], signal)

proc fcQDesignerActionEditorInterface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_manageAction(self: pointer, action: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)
  inst.manageAction(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_unmanageAction(self: pointer, action: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qaction_types.QAction(h: action, owned: false)
  inst.unmanageAction(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_setFormWindow(self: pointer, formWindow: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow, owned: false)
  inst.setFormWindow(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQDesignerActionEditorInterface_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDesignerActionEditorInterface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQDesignerActionEditorInterface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerActionEditorInterface](fcQDesignerActionEditorInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): void =
  fcQDesignerActionEditorInterface_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): void =
  fcQDesignerActionEditorInterface_protectedbase_create(self.h)

proc destroy*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): void =
  fcQDesignerActionEditorInterface_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): bool =
  fcQDesignerActionEditorInterface_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): bool =
  fcQDesignerActionEditorInterface_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerActionEditorInterface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface): cint =
  fcQDesignerActionEditorInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, signal: cstring): cint =
  fcQDesignerActionEditorInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractactioneditor_types.QDesignerActionEditorInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerActionEditorInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_abstractactioneditor_types.QDesignerActionEditorInterface,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDesignerActionEditorInterfaceVTable = nil): gen_abstractactioneditor_types.QDesignerActionEditorInterface =
  let vtbl = if vtbl == nil: new QDesignerActionEditorInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerActionEditorInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerActionEditorInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerActionEditorInterface_vtable_callback_metacall
  if not isNil(vtbl[].manageAction):
    vtbl[].vtbl.manageAction = fcQDesignerActionEditorInterface_vtable_callback_manageAction
  if not isNil(vtbl[].unmanageAction):
    vtbl[].vtbl.unmanageAction = fcQDesignerActionEditorInterface_vtable_callback_unmanageAction
  if not isNil(vtbl[].setFormWindow):
    vtbl[].vtbl.setFormWindow = fcQDesignerActionEditorInterface_vtable_callback_setFormWindow
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerActionEditorInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerActionEditorInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerActionEditorInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerActionEditorInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerActionEditorInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerActionEditorInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerActionEditorInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerActionEditorInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerActionEditorInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerActionEditorInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerActionEditorInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerActionEditorInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerActionEditorInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerActionEditorInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerActionEditorInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerActionEditorInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerActionEditorInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerActionEditorInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerActionEditorInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerActionEditorInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerActionEditorInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerActionEditorInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerActionEditorInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerActionEditorInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerActionEditorInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerActionEditorInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerActionEditorInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerActionEditorInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerActionEditorInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerActionEditorInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerActionEditorInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerActionEditorInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerActionEditorInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerActionEditorInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerActionEditorInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerActionEditorInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerActionEditorInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerActionEditorInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerActionEditorInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerActionEditorInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerActionEditorInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerActionEditorInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerActionEditorInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerActionEditorInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerActionEditorInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerActionEditorInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerActionEditorInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractactioneditor_types.QDesignerActionEditorInterface(h: fcQDesignerActionEditorInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQDesignerActionEditorInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_abstractactioneditor_types.QDesignerActionEditorInterface,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QDesignerActionEditorInterfaceVTable = nil): gen_abstractactioneditor_types.QDesignerActionEditorInterface =
  let vtbl = if vtbl == nil: new QDesignerActionEditorInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerActionEditorInterfaceVTable](fcQDesignerActionEditorInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerActionEditorInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerActionEditorInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerActionEditorInterface_vtable_callback_metacall
  if not isNil(vtbl[].manageAction):
    vtbl[].vtbl.manageAction = fcQDesignerActionEditorInterface_vtable_callback_manageAction
  if not isNil(vtbl[].unmanageAction):
    vtbl[].vtbl.unmanageAction = fcQDesignerActionEditorInterface_vtable_callback_unmanageAction
  if not isNil(vtbl[].setFormWindow):
    vtbl[].vtbl.setFormWindow = fcQDesignerActionEditorInterface_vtable_callback_setFormWindow
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerActionEditorInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerActionEditorInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerActionEditorInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerActionEditorInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerActionEditorInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerActionEditorInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerActionEditorInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerActionEditorInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerActionEditorInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerActionEditorInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerActionEditorInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerActionEditorInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerActionEditorInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerActionEditorInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerActionEditorInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerActionEditorInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerActionEditorInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerActionEditorInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerActionEditorInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerActionEditorInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerActionEditorInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerActionEditorInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerActionEditorInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerActionEditorInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerActionEditorInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerActionEditorInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerActionEditorInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerActionEditorInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerActionEditorInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerActionEditorInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerActionEditorInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerActionEditorInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerActionEditorInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerActionEditorInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerActionEditorInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerActionEditorInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerActionEditorInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerActionEditorInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerActionEditorInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerActionEditorInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerActionEditorInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerActionEditorInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerActionEditorInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerActionEditorInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerActionEditorInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerActionEditorInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerActionEditorInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractactioneditor_types.QDesignerActionEditorInterface(h: fcQDesignerActionEditorInterface_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h, cint(flags)), owned: true)
  fcQDesignerActionEditorInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerActionEditorInterface_mvtbl = cQDesignerActionEditorInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerActionEditorInterface()[])](self.fcQDesignerActionEditorInterface_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQDesignerActionEditorInterface_method_callback_metaObject,
  metacast: fcQDesignerActionEditorInterface_method_callback_metacast,
  metacall: fcQDesignerActionEditorInterface_method_callback_metacall,
  manageAction: fcQDesignerActionEditorInterface_method_callback_manageAction,
  unmanageAction: fcQDesignerActionEditorInterface_method_callback_unmanageAction,
  setFormWindow: fcQDesignerActionEditorInterface_method_callback_setFormWindow,
  devType: fcQDesignerActionEditorInterface_method_callback_devType,
  setVisible: fcQDesignerActionEditorInterface_method_callback_setVisible,
  sizeHint: fcQDesignerActionEditorInterface_method_callback_sizeHint,
  minimumSizeHint: fcQDesignerActionEditorInterface_method_callback_minimumSizeHint,
  heightForWidth: fcQDesignerActionEditorInterface_method_callback_heightForWidth,
  hasHeightForWidth: fcQDesignerActionEditorInterface_method_callback_hasHeightForWidth,
  paintEngine: fcQDesignerActionEditorInterface_method_callback_paintEngine,
  event: fcQDesignerActionEditorInterface_method_callback_event,
  mousePressEvent: fcQDesignerActionEditorInterface_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQDesignerActionEditorInterface_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQDesignerActionEditorInterface_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQDesignerActionEditorInterface_method_callback_mouseMoveEvent,
  wheelEvent: fcQDesignerActionEditorInterface_method_callback_wheelEvent,
  keyPressEvent: fcQDesignerActionEditorInterface_method_callback_keyPressEvent,
  keyReleaseEvent: fcQDesignerActionEditorInterface_method_callback_keyReleaseEvent,
  focusInEvent: fcQDesignerActionEditorInterface_method_callback_focusInEvent,
  focusOutEvent: fcQDesignerActionEditorInterface_method_callback_focusOutEvent,
  enterEvent: fcQDesignerActionEditorInterface_method_callback_enterEvent,
  leaveEvent: fcQDesignerActionEditorInterface_method_callback_leaveEvent,
  paintEvent: fcQDesignerActionEditorInterface_method_callback_paintEvent,
  moveEvent: fcQDesignerActionEditorInterface_method_callback_moveEvent,
  resizeEvent: fcQDesignerActionEditorInterface_method_callback_resizeEvent,
  closeEvent: fcQDesignerActionEditorInterface_method_callback_closeEvent,
  contextMenuEvent: fcQDesignerActionEditorInterface_method_callback_contextMenuEvent,
  tabletEvent: fcQDesignerActionEditorInterface_method_callback_tabletEvent,
  actionEvent: fcQDesignerActionEditorInterface_method_callback_actionEvent,
  dragEnterEvent: fcQDesignerActionEditorInterface_method_callback_dragEnterEvent,
  dragMoveEvent: fcQDesignerActionEditorInterface_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQDesignerActionEditorInterface_method_callback_dragLeaveEvent,
  dropEvent: fcQDesignerActionEditorInterface_method_callback_dropEvent,
  showEvent: fcQDesignerActionEditorInterface_method_callback_showEvent,
  hideEvent: fcQDesignerActionEditorInterface_method_callback_hideEvent,
  nativeEvent: fcQDesignerActionEditorInterface_method_callback_nativeEvent,
  changeEvent: fcQDesignerActionEditorInterface_method_callback_changeEvent,
  metric: fcQDesignerActionEditorInterface_method_callback_metric,
  initPainter: fcQDesignerActionEditorInterface_method_callback_initPainter,
  redirected: fcQDesignerActionEditorInterface_method_callback_redirected,
  sharedPainter: fcQDesignerActionEditorInterface_method_callback_sharedPainter,
  inputMethodEvent: fcQDesignerActionEditorInterface_method_callback_inputMethodEvent,
  inputMethodQuery: fcQDesignerActionEditorInterface_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQDesignerActionEditorInterface_method_callback_focusNextPrevChild,
  eventFilter: fcQDesignerActionEditorInterface_method_callback_eventFilter,
  timerEvent: fcQDesignerActionEditorInterface_method_callback_timerEvent,
  childEvent: fcQDesignerActionEditorInterface_method_callback_childEvent,
  customEvent: fcQDesignerActionEditorInterface_method_callback_customEvent,
  connectNotify: fcQDesignerActionEditorInterface_method_callback_connectNotify,
  disconnectNotify: fcQDesignerActionEditorInterface_method_callback_disconnectNotify,
)
proc create*(T: type gen_abstractactioneditor_types.QDesignerActionEditorInterface,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDesignerActionEditorInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerActionEditorInterface_new(addr(cQDesignerActionEditorInterface_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQDesignerActionEditorInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_abstractactioneditor_types.QDesignerActionEditorInterface,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQDesignerActionEditorInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerActionEditorInterface_new2(addr(cQDesignerActionEditorInterface_mvtbl), csize_t(sizeof(pointer)), parent.h, cint(flags))
  fcQDesignerActionEditorInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_abstractactioneditor_types.QDesignerActionEditorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerActionEditorInterface_staticMetaObject())
