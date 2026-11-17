import ./qtdesigner_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


{.compile("gen_abstractobjectinspector.cpp", QtDesignerCFlags).}


import ./gen_abstractobjectinspector_types
export gen_abstractobjectinspector_types

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
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qwidget,
  gen_abstractformwindow_types

type cQDesignerObjectInspectorInterface*{.exportc: "QDesignerObjectInspectorInterface", incompleteStruct.} = object

proc fcQDesignerObjectInspectorInterface_metaObject(self: pointer): pointer {.importc: "QDesignerObjectInspectorInterface_metaObject".}
proc fcQDesignerObjectInspectorInterface_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerObjectInspectorInterface_metacast".}
proc fcQDesignerObjectInspectorInterface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerObjectInspectorInterface_metacall".}
proc fcQDesignerObjectInspectorInterface_tr(s: cstring): struct_seaqt_string {.importc: "QDesignerObjectInspectorInterface_tr".}
proc fcQDesignerObjectInspectorInterface_setFormWindow(self: pointer, formWindow: pointer): void {.importc: "QDesignerObjectInspectorInterface_setFormWindow".}
proc fcQDesignerObjectInspectorInterface_tr2(s: cstring, c: cstring): struct_seaqt_string {.importc: "QDesignerObjectInspectorInterface_tr2".}
proc fcQDesignerObjectInspectorInterface_tr3(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QDesignerObjectInspectorInterface_tr3".}
proc fcQDesignerObjectInspectorInterface_vdata(self: pointer): ptr pointer {.importc: "QDesignerObjectInspectorInterface_vdata".}
proc fvdata_cQDesignerObjectInspectorInterface(self: pointer): pointer {.importc: "vdata_QDesignerObjectInspectorInterface".}

type cQDesignerObjectInspectorInterfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
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
proc fcQDesignerObjectInspectorInterface_virtualbase_metaObject(self: pointer): pointer {.importc: "QDesignerObjectInspectorInterface_virtualbase_metaObject".}
proc fcQDesignerObjectInspectorInterface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QDesignerObjectInspectorInterface_virtualbase_metacast".}
proc fcQDesignerObjectInspectorInterface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDesignerObjectInspectorInterface_virtualbase_metacall".}
proc fcQDesignerObjectInspectorInterface_virtualbase_devType(self: pointer): cint {.importc: "QDesignerObjectInspectorInterface_virtualbase_devType".}
proc fcQDesignerObjectInspectorInterface_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_setVisible".}
proc fcQDesignerObjectInspectorInterface_virtualbase_sizeHint(self: pointer): pointer {.importc: "QDesignerObjectInspectorInterface_virtualbase_sizeHint".}
proc fcQDesignerObjectInspectorInterface_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QDesignerObjectInspectorInterface_virtualbase_minimumSizeHint".}
proc fcQDesignerObjectInspectorInterface_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QDesignerObjectInspectorInterface_virtualbase_heightForWidth".}
proc fcQDesignerObjectInspectorInterface_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QDesignerObjectInspectorInterface_virtualbase_hasHeightForWidth".}
proc fcQDesignerObjectInspectorInterface_virtualbase_paintEngine(self: pointer): pointer {.importc: "QDesignerObjectInspectorInterface_virtualbase_paintEngine".}
proc fcQDesignerObjectInspectorInterface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QDesignerObjectInspectorInterface_virtualbase_event".}
proc fcQDesignerObjectInspectorInterface_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_mousePressEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_mouseReleaseEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_mouseDoubleClickEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_mouseMoveEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_wheelEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_keyPressEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_keyReleaseEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_focusInEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_focusOutEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_enterEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_leaveEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_paintEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_moveEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_resizeEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_closeEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_contextMenuEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_tabletEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_actionEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_dragEnterEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_dragMoveEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_dragLeaveEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_dropEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_showEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_hideEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QDesignerObjectInspectorInterface_virtualbase_nativeEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_changeEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QDesignerObjectInspectorInterface_virtualbase_metric".}
proc fcQDesignerObjectInspectorInterface_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_initPainter".}
proc fcQDesignerObjectInspectorInterface_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QDesignerObjectInspectorInterface_virtualbase_redirected".}
proc fcQDesignerObjectInspectorInterface_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QDesignerObjectInspectorInterface_virtualbase_sharedPainter".}
proc fcQDesignerObjectInspectorInterface_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_inputMethodEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QDesignerObjectInspectorInterface_virtualbase_inputMethodQuery".}
proc fcQDesignerObjectInspectorInterface_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QDesignerObjectInspectorInterface_virtualbase_focusNextPrevChild".}
proc fcQDesignerObjectInspectorInterface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QDesignerObjectInspectorInterface_virtualbase_eventFilter".}
proc fcQDesignerObjectInspectorInterface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_timerEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_childEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_customEvent".}
proc fcQDesignerObjectInspectorInterface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_connectNotify".}
proc fcQDesignerObjectInspectorInterface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QDesignerObjectInspectorInterface_virtualbase_disconnectNotify".}
proc fcQDesignerObjectInspectorInterface_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QDesignerObjectInspectorInterface_protectedbase_updateMicroFocus".}
proc fcQDesignerObjectInspectorInterface_protectedbase_create(self: pointer): void {.importc: "QDesignerObjectInspectorInterface_protectedbase_create".}
proc fcQDesignerObjectInspectorInterface_protectedbase_destroy(self: pointer): void {.importc: "QDesignerObjectInspectorInterface_protectedbase_destroy".}
proc fcQDesignerObjectInspectorInterface_protectedbase_focusNextChild(self: pointer): bool {.importc: "QDesignerObjectInspectorInterface_protectedbase_focusNextChild".}
proc fcQDesignerObjectInspectorInterface_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QDesignerObjectInspectorInterface_protectedbase_focusPreviousChild".}
proc fcQDesignerObjectInspectorInterface_protectedbase_sender(self: pointer): pointer {.importc: "QDesignerObjectInspectorInterface_protectedbase_sender".}
proc fcQDesignerObjectInspectorInterface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QDesignerObjectInspectorInterface_protectedbase_senderSignalIndex".}
proc fcQDesignerObjectInspectorInterface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QDesignerObjectInspectorInterface_protectedbase_receivers".}
proc fcQDesignerObjectInspectorInterface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QDesignerObjectInspectorInterface_protectedbase_isSignalConnected".}
proc fcQDesignerObjectInspectorInterface_new(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQDesignerObjectInspectorInterface {.importc: "QDesignerObjectInspectorInterface_new".}
proc fcQDesignerObjectInspectorInterface_new2(vtbl: pointer, vdata: csize_t, parent: pointer, flags: cint): ptr cQDesignerObjectInspectorInterface {.importc: "QDesignerObjectInspectorInterface_new2".}
proc fcQDesignerObjectInspectorInterface_staticMetaObject(): pointer {.importc: "QDesignerObjectInspectorInterface_staticMetaObject".}
proc fcQDesignerObjectInspectorInterface_delete(self: pointer) {.importc: "QDesignerObjectInspectorInterface_delete".}

proc metaObject*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerObjectInspectorInterface_metaObject(self.h))

proc metacast*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: cstring): pointer =
  fcQDesignerObjectInspectorInterface_metacast(self.h, param1)

proc metacall*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerObjectInspectorInterface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, s: cstring): string =
  let v_ms = fcQDesignerObjectInspectorInterface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFormWindow*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void =
  fcQDesignerObjectInspectorInterface_setFormWindow(self.h, formWindow.h)

proc tr*(_: type gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, s: cstring, c: cstring): string =
  let v_ms = fcQDesignerObjectInspectorInterface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQDesignerObjectInspectorInterface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QDesignerObjectInspectorInterfacemetaObjectProc* = proc(self: QDesignerObjectInspectorInterface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacemetacastProc* = proc(self: QDesignerObjectInspectorInterface, param1: cstring): pointer {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacemetacallProc* = proc(self: QDesignerObjectInspectorInterface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacesetFormWindowProc* = proc(self: QDesignerObjectInspectorInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacedevTypeProc* = proc(self: QDesignerObjectInspectorInterface): cint {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacesetVisibleProc* = proc(self: QDesignerObjectInspectorInterface, visible: bool): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacesizeHintProc* = proc(self: QDesignerObjectInspectorInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceminimumSizeHintProc* = proc(self: QDesignerObjectInspectorInterface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceheightForWidthProc* = proc(self: QDesignerObjectInspectorInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacehasHeightForWidthProc* = proc(self: QDesignerObjectInspectorInterface): bool {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacepaintEngineProc* = proc(self: QDesignerObjectInspectorInterface): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceeventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacemousePressEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacemouseReleaseEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacemouseDoubleClickEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacemouseMoveEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacewheelEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacekeyPressEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacekeyReleaseEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacefocusInEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacefocusOutEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceenterEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceleaveEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacepaintEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacemoveEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceresizeEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacecloseEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacecontextMenuEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacetabletEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceactionEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacedragEnterEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacedragMoveEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacedragLeaveEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacedropEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceshowEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacehideEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacenativeEventProc* = proc(self: QDesignerObjectInspectorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacechangeEventProc* = proc(self: QDesignerObjectInspectorInterface, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacemetricProc* = proc(self: QDesignerObjectInspectorInterface, param1: cint): cint {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceinitPainterProc* = proc(self: QDesignerObjectInspectorInterface, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceredirectedProc* = proc(self: QDesignerObjectInspectorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacesharedPainterProc* = proc(self: QDesignerObjectInspectorInterface): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceinputMethodEventProc* = proc(self: QDesignerObjectInspectorInterface, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceinputMethodQueryProc* = proc(self: QDesignerObjectInspectorInterface, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacefocusNextPrevChildProc* = proc(self: QDesignerObjectInspectorInterface, next: bool): bool {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceeventFilterProc* = proc(self: QDesignerObjectInspectorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacetimerEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacechildEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacecustomEventProc* = proc(self: QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceconnectNotifyProc* = proc(self: QDesignerObjectInspectorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfacedisconnectNotifyProc* = proc(self: QDesignerObjectInspectorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QDesignerObjectInspectorInterfaceVTable* = object
  vtbl: cQDesignerObjectInspectorInterfaceVTable
  metaObject*: QDesignerObjectInspectorInterfacemetaObjectProc
  metacast*: QDesignerObjectInspectorInterfacemetacastProc
  metacall*: QDesignerObjectInspectorInterfacemetacallProc
  setFormWindow*: QDesignerObjectInspectorInterfacesetFormWindowProc
  devType*: QDesignerObjectInspectorInterfacedevTypeProc
  setVisible*: QDesignerObjectInspectorInterfacesetVisibleProc
  sizeHint*: QDesignerObjectInspectorInterfacesizeHintProc
  minimumSizeHint*: QDesignerObjectInspectorInterfaceminimumSizeHintProc
  heightForWidth*: QDesignerObjectInspectorInterfaceheightForWidthProc
  hasHeightForWidth*: QDesignerObjectInspectorInterfacehasHeightForWidthProc
  paintEngine*: QDesignerObjectInspectorInterfacepaintEngineProc
  event*: QDesignerObjectInspectorInterfaceeventProc
  mousePressEvent*: QDesignerObjectInspectorInterfacemousePressEventProc
  mouseReleaseEvent*: QDesignerObjectInspectorInterfacemouseReleaseEventProc
  mouseDoubleClickEvent*: QDesignerObjectInspectorInterfacemouseDoubleClickEventProc
  mouseMoveEvent*: QDesignerObjectInspectorInterfacemouseMoveEventProc
  wheelEvent*: QDesignerObjectInspectorInterfacewheelEventProc
  keyPressEvent*: QDesignerObjectInspectorInterfacekeyPressEventProc
  keyReleaseEvent*: QDesignerObjectInspectorInterfacekeyReleaseEventProc
  focusInEvent*: QDesignerObjectInspectorInterfacefocusInEventProc
  focusOutEvent*: QDesignerObjectInspectorInterfacefocusOutEventProc
  enterEvent*: QDesignerObjectInspectorInterfaceenterEventProc
  leaveEvent*: QDesignerObjectInspectorInterfaceleaveEventProc
  paintEvent*: QDesignerObjectInspectorInterfacepaintEventProc
  moveEvent*: QDesignerObjectInspectorInterfacemoveEventProc
  resizeEvent*: QDesignerObjectInspectorInterfaceresizeEventProc
  closeEvent*: QDesignerObjectInspectorInterfacecloseEventProc
  contextMenuEvent*: QDesignerObjectInspectorInterfacecontextMenuEventProc
  tabletEvent*: QDesignerObjectInspectorInterfacetabletEventProc
  actionEvent*: QDesignerObjectInspectorInterfaceactionEventProc
  dragEnterEvent*: QDesignerObjectInspectorInterfacedragEnterEventProc
  dragMoveEvent*: QDesignerObjectInspectorInterfacedragMoveEventProc
  dragLeaveEvent*: QDesignerObjectInspectorInterfacedragLeaveEventProc
  dropEvent*: QDesignerObjectInspectorInterfacedropEventProc
  showEvent*: QDesignerObjectInspectorInterfaceshowEventProc
  hideEvent*: QDesignerObjectInspectorInterfacehideEventProc
  nativeEvent*: QDesignerObjectInspectorInterfacenativeEventProc
  changeEvent*: QDesignerObjectInspectorInterfacechangeEventProc
  metric*: QDesignerObjectInspectorInterfacemetricProc
  initPainter*: QDesignerObjectInspectorInterfaceinitPainterProc
  redirected*: QDesignerObjectInspectorInterfaceredirectedProc
  sharedPainter*: QDesignerObjectInspectorInterfacesharedPainterProc
  inputMethodEvent*: QDesignerObjectInspectorInterfaceinputMethodEventProc
  inputMethodQuery*: QDesignerObjectInspectorInterfaceinputMethodQueryProc
  focusNextPrevChild*: QDesignerObjectInspectorInterfacefocusNextPrevChildProc
  eventFilter*: QDesignerObjectInspectorInterfaceeventFilterProc
  timerEvent*: QDesignerObjectInspectorInterfacetimerEventProc
  childEvent*: QDesignerObjectInspectorInterfacechildEventProc
  customEvent*: QDesignerObjectInspectorInterfacecustomEventProc
  connectNotify*: QDesignerObjectInspectorInterfaceconnectNotifyProc
  disconnectNotify*: QDesignerObjectInspectorInterfacedisconnectNotifyProc

proc QDesignerObjectInspectorInterfacemetaObject*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerObjectInspectorInterface_virtualbase_metaObject(self.h))

proc QDesignerObjectInspectorInterfacemetacast*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: cstring): pointer =
  fcQDesignerObjectInspectorInterface_virtualbase_metacast(self.h, param1)

proc QDesignerObjectInspectorInterfacemetacall*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: cint, param2: cint, param3: pointer): cint =
  fcQDesignerObjectInspectorInterface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QDesignerObjectInspectorInterfacedevType*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): cint =
  fcQDesignerObjectInspectorInterface_virtualbase_devType(self.h)

proc QDesignerObjectInspectorInterfacesetVisible*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, visible: bool): void =
  fcQDesignerObjectInspectorInterface_virtualbase_setVisible(self.h, visible)

proc QDesignerObjectInspectorInterfacesizeHint*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerObjectInspectorInterface_virtualbase_sizeHint(self.h))

proc QDesignerObjectInspectorInterfaceminimumSizeHint*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQDesignerObjectInspectorInterface_virtualbase_minimumSizeHint(self.h))

proc QDesignerObjectInspectorInterfaceheightForWidth*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: cint): cint =
  fcQDesignerObjectInspectorInterface_virtualbase_heightForWidth(self.h, param1)

proc QDesignerObjectInspectorInterfacehasHeightForWidth*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): bool =
  fcQDesignerObjectInspectorInterface_virtualbase_hasHeightForWidth(self.h)

proc QDesignerObjectInspectorInterfacepaintEngine*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQDesignerObjectInspectorInterface_virtualbase_paintEngine(self.h))

proc QDesignerObjectInspectorInterfaceevent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerObjectInspectorInterface_virtualbase_event(self.h, event.h)

proc QDesignerObjectInspectorInterfacemousePressEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_mousePressEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacemouseReleaseEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacemouseDoubleClickEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacemouseMoveEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_mouseMoveEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacewheelEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QWheelEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_wheelEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacekeyPressEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_keyPressEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacekeyReleaseEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QKeyEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_keyReleaseEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacefocusInEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_focusInEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacefocusOutEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QFocusEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_focusOutEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfaceenterEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QEnterEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_enterEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfaceleaveEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_leaveEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacepaintEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QPaintEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_paintEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacemoveEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QMoveEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_moveEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfaceresizeEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QResizeEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_resizeEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacecloseEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QCloseEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_closeEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacecontextMenuEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QContextMenuEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_contextMenuEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacetabletEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QTabletEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_tabletEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfaceactionEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QActionEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_actionEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacedragEnterEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QDragEnterEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_dragEnterEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacedragMoveEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QDragMoveEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_dragMoveEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacedragLeaveEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_dragLeaveEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacedropEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QDropEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_dropEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfaceshowEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QShowEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_showEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacehideEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qevent_types.QHideEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_hideEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacenativeEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQDesignerObjectInspectorInterface_virtualbase_nativeEvent(self.h, struct_seaqt_string(data: if len(eventType) > 0: addr eventType[0] else: nil, len: csize_t(len(eventType))), message, resultVal)

proc QDesignerObjectInspectorInterfacechangeEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: gen_qcoreevent_types.QEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_changeEvent(self.h, param1.h)

proc QDesignerObjectInspectorInterfacemetric*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: cint): cint =
  fcQDesignerObjectInspectorInterface_virtualbase_metric(self.h, cint(param1))

proc QDesignerObjectInspectorInterfaceinitPainter*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, painter: gen_qpainter_types.QPainter): void =
  fcQDesignerObjectInspectorInterface_virtualbase_initPainter(self.h, painter.h)

proc QDesignerObjectInspectorInterfaceredirected*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQDesignerObjectInspectorInterface_virtualbase_redirected(self.h, offset.h))

proc QDesignerObjectInspectorInterfacesharedPainter*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQDesignerObjectInspectorInterface_virtualbase_sharedPainter(self.h))

proc QDesignerObjectInspectorInterfaceinputMethodEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_inputMethodEvent(self.h, param1.h)

proc QDesignerObjectInspectorInterfaceinputMethodQuery*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQDesignerObjectInspectorInterface_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc QDesignerObjectInspectorInterfacefocusNextPrevChild*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, next: bool): bool =
  fcQDesignerObjectInspectorInterface_virtualbase_focusNextPrevChild(self.h, next)

proc QDesignerObjectInspectorInterfaceeventFilter*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQDesignerObjectInspectorInterface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QDesignerObjectInspectorInterfacetimerEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_timerEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacechildEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_childEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfacecustomEvent*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): void =
  fcQDesignerObjectInspectorInterface_virtualbase_customEvent(self.h, event.h)

proc QDesignerObjectInspectorInterfaceconnectNotify*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerObjectInspectorInterface_virtualbase_connectNotify(self.h, signal.h)

proc QDesignerObjectInspectorInterfacedisconnectNotify*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQDesignerObjectInspectorInterface_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQDesignerObjectInspectorInterface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_setFormWindow(self: pointer, formWindow: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow)
  vtbl[].setFormWindow(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc fcQDesignerObjectInspectorInterface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let self = QDesignerObjectInspectorInterface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQDesignerObjectInspectorInterface* {.inheritable.} = ref object of QDesignerObjectInspectorInterface
  vtbl*: cQDesignerObjectInspectorInterfaceVTable

method metaObject*(self: VirtualQDesignerObjectInspectorInterface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QDesignerObjectInspectorInterfacemetaObject(self[])
method metacast*(self: VirtualQDesignerObjectInspectorInterface, param1: cstring): pointer {.base.} =
  QDesignerObjectInspectorInterfacemetacast(self[], param1)
method metacall*(self: VirtualQDesignerObjectInspectorInterface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QDesignerObjectInspectorInterfacemetacall(self[], param1, param2, param3)
method setFormWindow*(self: VirtualQDesignerObjectInspectorInterface, formWindow: gen_abstractformwindow_types.QDesignerFormWindowInterface): void {.base.} =
  raiseAssert("missing implementation of QDesignerObjectInspectorInterface.setFormWindow")
method devType*(self: VirtualQDesignerObjectInspectorInterface): cint {.base.} =
  QDesignerObjectInspectorInterfacedevType(self[])
method setVisible*(self: VirtualQDesignerObjectInspectorInterface, visible: bool): void {.base.} =
  QDesignerObjectInspectorInterfacesetVisible(self[], visible)
method sizeHint*(self: VirtualQDesignerObjectInspectorInterface): gen_qsize_types.QSize {.base.} =
  QDesignerObjectInspectorInterfacesizeHint(self[])
method minimumSizeHint*(self: VirtualQDesignerObjectInspectorInterface): gen_qsize_types.QSize {.base.} =
  QDesignerObjectInspectorInterfaceminimumSizeHint(self[])
method heightForWidth*(self: VirtualQDesignerObjectInspectorInterface, param1: cint): cint {.base.} =
  QDesignerObjectInspectorInterfaceheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQDesignerObjectInspectorInterface): bool {.base.} =
  QDesignerObjectInspectorInterfacehasHeightForWidth(self[])
method paintEngine*(self: VirtualQDesignerObjectInspectorInterface): gen_qpaintengine_types.QPaintEngine {.base.} =
  QDesignerObjectInspectorInterfacepaintEngine(self[])
method event*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerObjectInspectorInterfaceevent(self[], event)
method mousePressEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerObjectInspectorInterfacemousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerObjectInspectorInterfacemouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerObjectInspectorInterfacemouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QDesignerObjectInspectorInterfacemouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QDesignerObjectInspectorInterfacewheelEvent(self[], event)
method keyPressEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerObjectInspectorInterfacekeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QDesignerObjectInspectorInterfacekeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerObjectInspectorInterfacefocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QDesignerObjectInspectorInterfacefocusOutEvent(self[], event)
method enterEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QDesignerObjectInspectorInterfaceenterEvent(self[], event)
method leaveEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerObjectInspectorInterfaceleaveEvent(self[], event)
method paintEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QDesignerObjectInspectorInterfacepaintEvent(self[], event)
method moveEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QDesignerObjectInspectorInterfacemoveEvent(self[], event)
method resizeEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QDesignerObjectInspectorInterfaceresizeEvent(self[], event)
method closeEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QDesignerObjectInspectorInterfacecloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QDesignerObjectInspectorInterfacecontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QDesignerObjectInspectorInterfacetabletEvent(self[], event)
method actionEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QActionEvent): void {.base.} =
  QDesignerObjectInspectorInterfaceactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QDesignerObjectInspectorInterfacedragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QDesignerObjectInspectorInterfacedragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QDesignerObjectInspectorInterfacedragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QDropEvent): void {.base.} =
  QDesignerObjectInspectorInterfacedropEvent(self[], event)
method showEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QShowEvent): void {.base.} =
  QDesignerObjectInspectorInterfaceshowEvent(self[], event)
method hideEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qevent_types.QHideEvent): void {.base.} =
  QDesignerObjectInspectorInterfacehideEvent(self[], event)
method nativeEvent*(self: VirtualQDesignerObjectInspectorInterface, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QDesignerObjectInspectorInterfacenativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQDesignerObjectInspectorInterface, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerObjectInspectorInterfacechangeEvent(self[], param1)
method metric*(self: VirtualQDesignerObjectInspectorInterface, param1: cint): cint {.base.} =
  QDesignerObjectInspectorInterfacemetric(self[], param1)
method initPainter*(self: VirtualQDesignerObjectInspectorInterface, painter: gen_qpainter_types.QPainter): void {.base.} =
  QDesignerObjectInspectorInterfaceinitPainter(self[], painter)
method redirected*(self: VirtualQDesignerObjectInspectorInterface, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QDesignerObjectInspectorInterfaceredirected(self[], offset)
method sharedPainter*(self: VirtualQDesignerObjectInspectorInterface): gen_qpainter_types.QPainter {.base.} =
  QDesignerObjectInspectorInterfacesharedPainter(self[])
method inputMethodEvent*(self: VirtualQDesignerObjectInspectorInterface, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QDesignerObjectInspectorInterfaceinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQDesignerObjectInspectorInterface, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QDesignerObjectInspectorInterfaceinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQDesignerObjectInspectorInterface, next: bool): bool {.base.} =
  QDesignerObjectInspectorInterfacefocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQDesignerObjectInspectorInterface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QDesignerObjectInspectorInterfaceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QDesignerObjectInspectorInterfacetimerEvent(self[], event)
method childEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QDesignerObjectInspectorInterfacechildEvent(self[], event)
method customEvent*(self: VirtualQDesignerObjectInspectorInterface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QDesignerObjectInspectorInterfacecustomEvent(self[], event)
method connectNotify*(self: VirtualQDesignerObjectInspectorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerObjectInspectorInterfaceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQDesignerObjectInspectorInterface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QDesignerObjectInspectorInterfacedisconnectNotify(self[], signal)

proc fcQDesignerObjectInspectorInterface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_setFormWindow(self: pointer, formWindow: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_abstractformwindow_types.QDesignerFormWindowInterface(h: formWindow)
  inst.setFormWindow(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  var virtualReturn = inst.sizeHint()
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  var virtualReturn = inst.paintEngine()
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  inst.mousePressEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  inst.mouseReleaseEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  inst.mouseMoveEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  inst.wheelEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  inst.keyPressEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  inst.keyReleaseEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  inst.focusInEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  inst.focusOutEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  inst.enterEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.leaveEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  inst.paintEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  inst.moveEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  inst.resizeEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  inst.closeEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  inst.contextMenuEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  inst.tabletEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  inst.actionEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  inst.dragEnterEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  inst.dragMoveEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  inst.dragLeaveEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  inst.dropEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  inst.showEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  inst.hideEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_nativeEvent(self: pointer, eventType: struct_seaqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  inst.changeEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  inst.initPainter(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  var virtualReturn = inst.sharedPainter()
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  inst.inputMethodEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.h

proc fcQDesignerObjectInspectorInterface_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQDesignerObjectInspectorInterface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  inst.timerEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  inst.childEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  inst.customEvent(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.connectNotify(slotval1)

proc fcQDesignerObjectInspectorInterface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQDesignerObjectInspectorInterface](fcQDesignerObjectInspectorInterface_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): void =
  fcQDesignerObjectInspectorInterface_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): void =
  fcQDesignerObjectInspectorInterface_protectedbase_create(self.h)

proc destroy*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): void =
  fcQDesignerObjectInspectorInterface_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): bool =
  fcQDesignerObjectInspectorInterface_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): bool =
  fcQDesignerObjectInspectorInterface_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQDesignerObjectInspectorInterface_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): cint =
  fcQDesignerObjectInspectorInterface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, signal: cstring): cint =
  fcQDesignerObjectInspectorInterface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQDesignerObjectInspectorInterface_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QDesignerObjectInspectorInterfaceVTable = nil): gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface =
  let vtbl = if vtbl == nil: new QDesignerObjectInspectorInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerObjectInspectorInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerObjectInspectorInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerObjectInspectorInterface_vtable_callback_metacall
  if not isNil(vtbl[].setFormWindow):
    vtbl[].vtbl.setFormWindow = fcQDesignerObjectInspectorInterface_vtable_callback_setFormWindow
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerObjectInspectorInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerObjectInspectorInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerObjectInspectorInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerObjectInspectorInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerObjectInspectorInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerObjectInspectorInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerObjectInspectorInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerObjectInspectorInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerObjectInspectorInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerObjectInspectorInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerObjectInspectorInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerObjectInspectorInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerObjectInspectorInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerObjectInspectorInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerObjectInspectorInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerObjectInspectorInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerObjectInspectorInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerObjectInspectorInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerObjectInspectorInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerObjectInspectorInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerObjectInspectorInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerObjectInspectorInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerObjectInspectorInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerObjectInspectorInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerObjectInspectorInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerObjectInspectorInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerObjectInspectorInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerObjectInspectorInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerObjectInspectorInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerObjectInspectorInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerObjectInspectorInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerObjectInspectorInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerObjectInspectorInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerObjectInspectorInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerObjectInspectorInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerObjectInspectorInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerObjectInspectorInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerObjectInspectorInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerObjectInspectorInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerObjectInspectorInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerObjectInspectorInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerObjectInspectorInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface(h: fcQDesignerObjectInspectorInterface_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h))
  fcQDesignerObjectInspectorInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface,
    parent: gen_qwidget_types.QWidget, flags: cint,
    vtbl: ref QDesignerObjectInspectorInterfaceVTable = nil): gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface =
  let vtbl = if vtbl == nil: new QDesignerObjectInspectorInterfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QDesignerObjectInspectorInterfaceVTable](fcQDesignerObjectInspectorInterface_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQDesignerObjectInspectorInterface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQDesignerObjectInspectorInterface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQDesignerObjectInspectorInterface_vtable_callback_metacall
  if not isNil(vtbl[].setFormWindow):
    vtbl[].vtbl.setFormWindow = fcQDesignerObjectInspectorInterface_vtable_callback_setFormWindow
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQDesignerObjectInspectorInterface_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQDesignerObjectInspectorInterface_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQDesignerObjectInspectorInterface_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQDesignerObjectInspectorInterface_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQDesignerObjectInspectorInterface_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQDesignerObjectInspectorInterface_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQDesignerObjectInspectorInterface_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQDesignerObjectInspectorInterface_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQDesignerObjectInspectorInterface_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQDesignerObjectInspectorInterface_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQDesignerObjectInspectorInterface_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQDesignerObjectInspectorInterface_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQDesignerObjectInspectorInterface_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQDesignerObjectInspectorInterface_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQDesignerObjectInspectorInterface_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQDesignerObjectInspectorInterface_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQDesignerObjectInspectorInterface_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQDesignerObjectInspectorInterface_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQDesignerObjectInspectorInterface_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQDesignerObjectInspectorInterface_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQDesignerObjectInspectorInterface_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQDesignerObjectInspectorInterface_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQDesignerObjectInspectorInterface_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQDesignerObjectInspectorInterface_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQDesignerObjectInspectorInterface_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQDesignerObjectInspectorInterface_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQDesignerObjectInspectorInterface_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQDesignerObjectInspectorInterface_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQDesignerObjectInspectorInterface_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQDesignerObjectInspectorInterface_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQDesignerObjectInspectorInterface_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQDesignerObjectInspectorInterface_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQDesignerObjectInspectorInterface_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQDesignerObjectInspectorInterface_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQDesignerObjectInspectorInterface_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQDesignerObjectInspectorInterface_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQDesignerObjectInspectorInterface_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQDesignerObjectInspectorInterface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQDesignerObjectInspectorInterface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQDesignerObjectInspectorInterface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQDesignerObjectInspectorInterface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQDesignerObjectInspectorInterface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQDesignerObjectInspectorInterface_vtable_callback_disconnectNotify
  let tmp = gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface(h: fcQDesignerObjectInspectorInterface_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h, cint(flags)))
  fcQDesignerObjectInspectorInterface_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQDesignerObjectInspectorInterface_mvtbl = cQDesignerObjectInspectorInterfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQDesignerObjectInspectorInterface()[])](self.fcQDesignerObjectInspectorInterface_vdata()[])
    inst[].h = nil,

  metaObject: fcQDesignerObjectInspectorInterface_method_callback_metaObject,
  metacast: fcQDesignerObjectInspectorInterface_method_callback_metacast,
  metacall: fcQDesignerObjectInspectorInterface_method_callback_metacall,
  setFormWindow: fcQDesignerObjectInspectorInterface_method_callback_setFormWindow,
  devType: fcQDesignerObjectInspectorInterface_method_callback_devType,
  setVisible: fcQDesignerObjectInspectorInterface_method_callback_setVisible,
  sizeHint: fcQDesignerObjectInspectorInterface_method_callback_sizeHint,
  minimumSizeHint: fcQDesignerObjectInspectorInterface_method_callback_minimumSizeHint,
  heightForWidth: fcQDesignerObjectInspectorInterface_method_callback_heightForWidth,
  hasHeightForWidth: fcQDesignerObjectInspectorInterface_method_callback_hasHeightForWidth,
  paintEngine: fcQDesignerObjectInspectorInterface_method_callback_paintEngine,
  event: fcQDesignerObjectInspectorInterface_method_callback_event,
  mousePressEvent: fcQDesignerObjectInspectorInterface_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQDesignerObjectInspectorInterface_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQDesignerObjectInspectorInterface_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQDesignerObjectInspectorInterface_method_callback_mouseMoveEvent,
  wheelEvent: fcQDesignerObjectInspectorInterface_method_callback_wheelEvent,
  keyPressEvent: fcQDesignerObjectInspectorInterface_method_callback_keyPressEvent,
  keyReleaseEvent: fcQDesignerObjectInspectorInterface_method_callback_keyReleaseEvent,
  focusInEvent: fcQDesignerObjectInspectorInterface_method_callback_focusInEvent,
  focusOutEvent: fcQDesignerObjectInspectorInterface_method_callback_focusOutEvent,
  enterEvent: fcQDesignerObjectInspectorInterface_method_callback_enterEvent,
  leaveEvent: fcQDesignerObjectInspectorInterface_method_callback_leaveEvent,
  paintEvent: fcQDesignerObjectInspectorInterface_method_callback_paintEvent,
  moveEvent: fcQDesignerObjectInspectorInterface_method_callback_moveEvent,
  resizeEvent: fcQDesignerObjectInspectorInterface_method_callback_resizeEvent,
  closeEvent: fcQDesignerObjectInspectorInterface_method_callback_closeEvent,
  contextMenuEvent: fcQDesignerObjectInspectorInterface_method_callback_contextMenuEvent,
  tabletEvent: fcQDesignerObjectInspectorInterface_method_callback_tabletEvent,
  actionEvent: fcQDesignerObjectInspectorInterface_method_callback_actionEvent,
  dragEnterEvent: fcQDesignerObjectInspectorInterface_method_callback_dragEnterEvent,
  dragMoveEvent: fcQDesignerObjectInspectorInterface_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQDesignerObjectInspectorInterface_method_callback_dragLeaveEvent,
  dropEvent: fcQDesignerObjectInspectorInterface_method_callback_dropEvent,
  showEvent: fcQDesignerObjectInspectorInterface_method_callback_showEvent,
  hideEvent: fcQDesignerObjectInspectorInterface_method_callback_hideEvent,
  nativeEvent: fcQDesignerObjectInspectorInterface_method_callback_nativeEvent,
  changeEvent: fcQDesignerObjectInspectorInterface_method_callback_changeEvent,
  metric: fcQDesignerObjectInspectorInterface_method_callback_metric,
  initPainter: fcQDesignerObjectInspectorInterface_method_callback_initPainter,
  redirected: fcQDesignerObjectInspectorInterface_method_callback_redirected,
  sharedPainter: fcQDesignerObjectInspectorInterface_method_callback_sharedPainter,
  inputMethodEvent: fcQDesignerObjectInspectorInterface_method_callback_inputMethodEvent,
  inputMethodQuery: fcQDesignerObjectInspectorInterface_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQDesignerObjectInspectorInterface_method_callback_focusNextPrevChild,
  eventFilter: fcQDesignerObjectInspectorInterface_method_callback_eventFilter,
  timerEvent: fcQDesignerObjectInspectorInterface_method_callback_timerEvent,
  childEvent: fcQDesignerObjectInspectorInterface_method_callback_childEvent,
  customEvent: fcQDesignerObjectInspectorInterface_method_callback_customEvent,
  connectNotify: fcQDesignerObjectInspectorInterface_method_callback_connectNotify,
  disconnectNotify: fcQDesignerObjectInspectorInterface_method_callback_disconnectNotify,
)
proc create*(T: type gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQDesignerObjectInspectorInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerObjectInspectorInterface_new(addr(cQDesignerObjectInspectorInterface_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQDesignerObjectInspectorInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface,
    parent: gen_qwidget_types.QWidget, flags: cint,
    inst: VirtualQDesignerObjectInspectorInterface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQDesignerObjectInspectorInterface_new2(addr(cQDesignerObjectInspectorInterface_mvtbl), csize_t(sizeof(pointer)), parent.h, cint(flags))
  fcQDesignerObjectInspectorInterface_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQDesignerObjectInspectorInterface_staticMetaObject())
proc delete*(self: gen_abstractobjectinspector_types.QDesignerObjectInspectorInterface) =
  fcQDesignerObjectInspectorInterface_delete(self.h)
