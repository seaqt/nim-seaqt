import ./Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKitWidgets") & " -fPIC"
{.compile("gen_qwebinspector.cpp", cflags).}


import ./gen_qwebinspector_types
export gen_qwebinspector_types

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
  ./gen_qwebpage_types
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
  gen_qwebpage_types

type cQWebInspector*{.exportc: "QWebInspector", incompleteStruct.} = object

proc fcQWebInspector_metaObject(self: pointer, ): pointer {.importc: "QWebInspector_metaObject".}
proc fcQWebInspector_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebInspector_metacast".}
proc fcQWebInspector_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebInspector_metacall".}
proc fcQWebInspector_tr(s: cstring): struct_miqt_string {.importc: "QWebInspector_tr".}
proc fcQWebInspector_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebInspector_trUtf8".}
proc fcQWebInspector_setPage(self: pointer, page: pointer): void {.importc: "QWebInspector_setPage".}
proc fcQWebInspector_page(self: pointer, ): pointer {.importc: "QWebInspector_page".}
proc fcQWebInspector_sizeHint(self: pointer, ): pointer {.importc: "QWebInspector_sizeHint".}
proc fcQWebInspector_event(self: pointer, param1: pointer): bool {.importc: "QWebInspector_event".}
proc fcQWebInspector_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebInspector_tr2".}
proc fcQWebInspector_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebInspector_tr3".}
proc fcQWebInspector_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebInspector_trUtf82".}
proc fcQWebInspector_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebInspector_trUtf83".}
type cQWebInspectorVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQWebInspectorVTable, self: ptr cQWebInspector) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQWebInspector_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWebInspector_virtualbase_metaObject".}
proc fcQWebInspector_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebInspector_virtualbase_metacast".}
proc fcQWebInspector_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebInspector_virtualbase_metacall".}
proc fcQWebInspector_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QWebInspector_virtualbase_sizeHint".}
proc fcQWebInspector_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QWebInspector_virtualbase_event".}
proc fcQWebInspector_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_resizeEvent".}
proc fcQWebInspector_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_showEvent".}
proc fcQWebInspector_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_hideEvent".}
proc fcQWebInspector_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_closeEvent".}
proc fcQWebInspector_virtualbase_devType(self: pointer, ): cint {.importc: "QWebInspector_virtualbase_devType".}
proc fcQWebInspector_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QWebInspector_virtualbase_setVisible".}
proc fcQWebInspector_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QWebInspector_virtualbase_minimumSizeHint".}
proc fcQWebInspector_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWebInspector_virtualbase_heightForWidth".}
proc fcQWebInspector_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QWebInspector_virtualbase_hasHeightForWidth".}
proc fcQWebInspector_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QWebInspector_virtualbase_paintEngine".}
proc fcQWebInspector_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_mousePressEvent".}
proc fcQWebInspector_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_mouseReleaseEvent".}
proc fcQWebInspector_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_mouseDoubleClickEvent".}
proc fcQWebInspector_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_mouseMoveEvent".}
proc fcQWebInspector_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_wheelEvent".}
proc fcQWebInspector_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_keyPressEvent".}
proc fcQWebInspector_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_keyReleaseEvent".}
proc fcQWebInspector_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_focusInEvent".}
proc fcQWebInspector_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_focusOutEvent".}
proc fcQWebInspector_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_enterEvent".}
proc fcQWebInspector_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_leaveEvent".}
proc fcQWebInspector_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_paintEvent".}
proc fcQWebInspector_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_moveEvent".}
proc fcQWebInspector_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_contextMenuEvent".}
proc fcQWebInspector_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_tabletEvent".}
proc fcQWebInspector_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_actionEvent".}
proc fcQWebInspector_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_dragEnterEvent".}
proc fcQWebInspector_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_dragMoveEvent".}
proc fcQWebInspector_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_dragLeaveEvent".}
proc fcQWebInspector_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_dropEvent".}
proc fcQWebInspector_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QWebInspector_virtualbase_nativeEvent".}
proc fcQWebInspector_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QWebInspector_virtualbase_changeEvent".}
proc fcQWebInspector_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QWebInspector_virtualbase_metric".}
proc fcQWebInspector_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QWebInspector_virtualbase_initPainter".}
proc fcQWebInspector_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QWebInspector_virtualbase_redirected".}
proc fcQWebInspector_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QWebInspector_virtualbase_sharedPainter".}
proc fcQWebInspector_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QWebInspector_virtualbase_inputMethodEvent".}
proc fcQWebInspector_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QWebInspector_virtualbase_inputMethodQuery".}
proc fcQWebInspector_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QWebInspector_virtualbase_focusNextPrevChild".}
proc fcQWebInspector_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWebInspector_virtualbase_eventFilter".}
proc fcQWebInspector_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_timerEvent".}
proc fcQWebInspector_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_childEvent".}
proc fcQWebInspector_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWebInspector_virtualbase_customEvent".}
proc fcQWebInspector_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWebInspector_virtualbase_connectNotify".}
proc fcQWebInspector_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWebInspector_virtualbase_disconnectNotify".}
proc fcQWebInspector_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QWebInspector_protectedbase_updateMicroFocus".}
proc fcQWebInspector_protectedbase_create(self: pointer, ): void {.importc: "QWebInspector_protectedbase_create".}
proc fcQWebInspector_protectedbase_destroy(self: pointer, ): void {.importc: "QWebInspector_protectedbase_destroy".}
proc fcQWebInspector_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QWebInspector_protectedbase_focusNextChild".}
proc fcQWebInspector_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QWebInspector_protectedbase_focusPreviousChild".}
proc fcQWebInspector_protectedbase_sender(self: pointer, ): pointer {.importc: "QWebInspector_protectedbase_sender".}
proc fcQWebInspector_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QWebInspector_protectedbase_senderSignalIndex".}
proc fcQWebInspector_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebInspector_protectedbase_receivers".}
proc fcQWebInspector_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebInspector_protectedbase_isSignalConnected".}
proc fcQWebInspector_new(vtbl: pointer, parent: pointer): ptr cQWebInspector {.importc: "QWebInspector_new".}
proc fcQWebInspector_new2(vtbl: pointer, ): ptr cQWebInspector {.importc: "QWebInspector_new2".}
proc fcQWebInspector_staticMetaObject(): pointer {.importc: "QWebInspector_staticMetaObject".}

proc metaObject*(self: gen_qwebinspector_types.QWebInspector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebInspector_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebinspector_types.QWebInspector, param1: cstring): pointer =
  fcQWebInspector_metacast(self.h, param1)

proc metacall*(self: gen_qwebinspector_types.QWebInspector, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebInspector_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebinspector_types.QWebInspector, s: cstring): string =
  let v_ms = fcQWebInspector_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebinspector_types.QWebInspector, s: cstring): string =
  let v_ms = fcQWebInspector_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPage*(self: gen_qwebinspector_types.QWebInspector, page: gen_qwebpage_types.QWebPage): void =
  fcQWebInspector_setPage(self.h, page.h)

proc page*(self: gen_qwebinspector_types.QWebInspector, ): gen_qwebpage_types.QWebPage =
  gen_qwebpage_types.QWebPage(h: fcQWebInspector_page(self.h), owned: false)

proc sizeHint*(self: gen_qwebinspector_types.QWebInspector, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebInspector_sizeHint(self.h), owned: true)

proc event*(self: gen_qwebinspector_types.QWebInspector, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebInspector_event(self.h, param1.h)

proc tr*(_: type gen_qwebinspector_types.QWebInspector, s: cstring, c: cstring): string =
  let v_ms = fcQWebInspector_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebinspector_types.QWebInspector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebInspector_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebinspector_types.QWebInspector, s: cstring, c: cstring): string =
  let v_ms = fcQWebInspector_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qwebinspector_types.QWebInspector, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebInspector_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QWebInspectormetaObjectProc* = proc(self: QWebInspector): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWebInspectormetacastProc* = proc(self: QWebInspector, param1: cstring): pointer {.raises: [], gcsafe.}
type QWebInspectormetacallProc* = proc(self: QWebInspector, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWebInspectorsizeHintProc* = proc(self: QWebInspector): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWebInspectoreventProc* = proc(self: QWebInspector, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebInspectorresizeEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QWebInspectorshowEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QWebInspectorhideEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QWebInspectorcloseEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QWebInspectordevTypeProc* = proc(self: QWebInspector): cint {.raises: [], gcsafe.}
type QWebInspectorsetVisibleProc* = proc(self: QWebInspector, visible: bool): void {.raises: [], gcsafe.}
type QWebInspectorminimumSizeHintProc* = proc(self: QWebInspector): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWebInspectorheightForWidthProc* = proc(self: QWebInspector, param1: cint): cint {.raises: [], gcsafe.}
type QWebInspectorhasHeightForWidthProc* = proc(self: QWebInspector): bool {.raises: [], gcsafe.}
type QWebInspectorpaintEngineProc* = proc(self: QWebInspector): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QWebInspectormousePressEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebInspectormouseReleaseEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebInspectormouseDoubleClickEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebInspectormouseMoveEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QWebInspectorwheelEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QWebInspectorkeyPressEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWebInspectorkeyReleaseEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QWebInspectorfocusInEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWebInspectorfocusOutEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QWebInspectorenterEventProc* = proc(self: QWebInspector, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebInspectorleaveEventProc* = proc(self: QWebInspector, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebInspectorpaintEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QWebInspectormoveEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QWebInspectorcontextMenuEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QWebInspectortabletEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QWebInspectoractionEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QWebInspectordragEnterEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QWebInspectordragMoveEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QWebInspectordragLeaveEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QWebInspectordropEventProc* = proc(self: QWebInspector, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QWebInspectornativeEventProc* = proc(self: QWebInspector, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QWebInspectorchangeEventProc* = proc(self: QWebInspector, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebInspectormetricProc* = proc(self: QWebInspector, param1: cint): cint {.raises: [], gcsafe.}
type QWebInspectorinitPainterProc* = proc(self: QWebInspector, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QWebInspectorredirectedProc* = proc(self: QWebInspector, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QWebInspectorsharedPainterProc* = proc(self: QWebInspector): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QWebInspectorinputMethodEventProc* = proc(self: QWebInspector, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QWebInspectorinputMethodQueryProc* = proc(self: QWebInspector, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QWebInspectorfocusNextPrevChildProc* = proc(self: QWebInspector, next: bool): bool {.raises: [], gcsafe.}
type QWebInspectoreventFilterProc* = proc(self: QWebInspector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWebInspectortimerEventProc* = proc(self: QWebInspector, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWebInspectorchildEventProc* = proc(self: QWebInspector, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWebInspectorcustomEventProc* = proc(self: QWebInspector, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWebInspectorconnectNotifyProc* = proc(self: QWebInspector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebInspectordisconnectNotifyProc* = proc(self: QWebInspector, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWebInspectorVTable* {.inheritable, pure.} = object
  vtbl: cQWebInspectorVTable
  metaObject*: QWebInspectormetaObjectProc
  metacast*: QWebInspectormetacastProc
  metacall*: QWebInspectormetacallProc
  sizeHint*: QWebInspectorsizeHintProc
  event*: QWebInspectoreventProc
  resizeEvent*: QWebInspectorresizeEventProc
  showEvent*: QWebInspectorshowEventProc
  hideEvent*: QWebInspectorhideEventProc
  closeEvent*: QWebInspectorcloseEventProc
  devType*: QWebInspectordevTypeProc
  setVisible*: QWebInspectorsetVisibleProc
  minimumSizeHint*: QWebInspectorminimumSizeHintProc
  heightForWidth*: QWebInspectorheightForWidthProc
  hasHeightForWidth*: QWebInspectorhasHeightForWidthProc
  paintEngine*: QWebInspectorpaintEngineProc
  mousePressEvent*: QWebInspectormousePressEventProc
  mouseReleaseEvent*: QWebInspectormouseReleaseEventProc
  mouseDoubleClickEvent*: QWebInspectormouseDoubleClickEventProc
  mouseMoveEvent*: QWebInspectormouseMoveEventProc
  wheelEvent*: QWebInspectorwheelEventProc
  keyPressEvent*: QWebInspectorkeyPressEventProc
  keyReleaseEvent*: QWebInspectorkeyReleaseEventProc
  focusInEvent*: QWebInspectorfocusInEventProc
  focusOutEvent*: QWebInspectorfocusOutEventProc
  enterEvent*: QWebInspectorenterEventProc
  leaveEvent*: QWebInspectorleaveEventProc
  paintEvent*: QWebInspectorpaintEventProc
  moveEvent*: QWebInspectormoveEventProc
  contextMenuEvent*: QWebInspectorcontextMenuEventProc
  tabletEvent*: QWebInspectortabletEventProc
  actionEvent*: QWebInspectoractionEventProc
  dragEnterEvent*: QWebInspectordragEnterEventProc
  dragMoveEvent*: QWebInspectordragMoveEventProc
  dragLeaveEvent*: QWebInspectordragLeaveEventProc
  dropEvent*: QWebInspectordropEventProc
  nativeEvent*: QWebInspectornativeEventProc
  changeEvent*: QWebInspectorchangeEventProc
  metric*: QWebInspectormetricProc
  initPainter*: QWebInspectorinitPainterProc
  redirected*: QWebInspectorredirectedProc
  sharedPainter*: QWebInspectorsharedPainterProc
  inputMethodEvent*: QWebInspectorinputMethodEventProc
  inputMethodQuery*: QWebInspectorinputMethodQueryProc
  focusNextPrevChild*: QWebInspectorfocusNextPrevChildProc
  eventFilter*: QWebInspectoreventFilterProc
  timerEvent*: QWebInspectortimerEventProc
  childEvent*: QWebInspectorchildEventProc
  customEvent*: QWebInspectorcustomEventProc
  connectNotify*: QWebInspectorconnectNotifyProc
  disconnectNotify*: QWebInspectordisconnectNotifyProc
proc QWebInspectormetaObject*(self: gen_qwebinspector_types.QWebInspector, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebInspector_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQWebInspector_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebInspectormetacast*(self: gen_qwebinspector_types.QWebInspector, param1: cstring): pointer =
  fcQWebInspector_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWebInspector_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWebInspectormetacall*(self: gen_qwebinspector_types.QWebInspector, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebInspector_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWebInspector_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebInspectorsizeHint*(self: gen_qwebinspector_types.QWebInspector, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebInspector_virtualbase_sizeHint(self.h), owned: true)

proc miqt_exec_callback_cQWebInspector_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebInspectorevent*(self: gen_qwebinspector_types.QWebInspector, param1: gen_qcoreevent_types.QEvent): bool =
  fcQWebInspector_virtualbase_event(self.h, param1.h)

proc miqt_exec_callback_cQWebInspector_event(vtbl: pointer, self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWebInspectorresizeEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QResizeEvent): void =
  fcQWebInspector_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QWebInspectorshowEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QShowEvent): void =
  fcQWebInspector_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QWebInspectorhideEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QHideEvent): void =
  fcQWebInspector_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QWebInspectorcloseEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QCloseEvent): void =
  fcQWebInspector_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QWebInspectordevType*(self: gen_qwebinspector_types.QWebInspector, ): cint =
  fcQWebInspector_virtualbase_devType(self.h)

proc miqt_exec_callback_cQWebInspector_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QWebInspectorsetVisible*(self: gen_qwebinspector_types.QWebInspector, visible: bool): void =
  fcQWebInspector_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQWebInspector_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QWebInspectorminimumSizeHint*(self: gen_qwebinspector_types.QWebInspector, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWebInspector_virtualbase_minimumSizeHint(self.h), owned: true)

proc miqt_exec_callback_cQWebInspector_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebInspectorheightForWidth*(self: gen_qwebinspector_types.QWebInspector, param1: cint): cint =
  fcQWebInspector_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQWebInspector_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWebInspectorhasHeightForWidth*(self: gen_qwebinspector_types.QWebInspector, ): bool =
  fcQWebInspector_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQWebInspector_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWebInspectorpaintEngine*(self: gen_qwebinspector_types.QWebInspector, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQWebInspector_virtualbase_paintEngine(self.h), owned: false)

proc miqt_exec_callback_cQWebInspector_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebInspectormousePressEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMouseEvent): void =
  fcQWebInspector_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QWebInspectormouseReleaseEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMouseEvent): void =
  fcQWebInspector_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QWebInspectormouseDoubleClickEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMouseEvent): void =
  fcQWebInspector_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QWebInspectormouseMoveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMouseEvent): void =
  fcQWebInspector_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QWebInspectorwheelEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QWheelEvent): void =
  fcQWebInspector_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QWebInspectorkeyPressEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QKeyEvent): void =
  fcQWebInspector_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QWebInspectorkeyReleaseEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QKeyEvent): void =
  fcQWebInspector_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QWebInspectorfocusInEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QFocusEvent): void =
  fcQWebInspector_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QWebInspectorfocusOutEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QFocusEvent): void =
  fcQWebInspector_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QWebInspectorenterEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QEvent): void =
  fcQWebInspector_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QWebInspectorleaveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QEvent): void =
  fcQWebInspector_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QWebInspectorpaintEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QPaintEvent): void =
  fcQWebInspector_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QWebInspectormoveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QMoveEvent): void =
  fcQWebInspector_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QWebInspectorcontextMenuEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QContextMenuEvent): void =
  fcQWebInspector_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QWebInspectortabletEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QTabletEvent): void =
  fcQWebInspector_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QWebInspectoractionEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QActionEvent): void =
  fcQWebInspector_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QWebInspectordragEnterEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QDragEnterEvent): void =
  fcQWebInspector_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QWebInspectordragMoveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QDragMoveEvent): void =
  fcQWebInspector_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QWebInspectordragLeaveEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQWebInspector_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QWebInspectordropEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qevent_types.QDropEvent): void =
  fcQWebInspector_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QWebInspectornativeEvent*(self: gen_qwebinspector_types.QWebInspector, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQWebInspector_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQWebInspector_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWebInspectorchangeEvent*(self: gen_qwebinspector_types.QWebInspector, param1: gen_qcoreevent_types.QEvent): void =
  fcQWebInspector_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebInspector_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QWebInspectormetric*(self: gen_qwebinspector_types.QWebInspector, param1: cint): cint =
  fcQWebInspector_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQWebInspector_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QWebInspectorinitPainter*(self: gen_qwebinspector_types.QWebInspector, painter: gen_qpainter_types.QPainter): void =
  fcQWebInspector_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQWebInspector_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QWebInspectorredirected*(self: gen_qwebinspector_types.QWebInspector, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQWebInspector_virtualbase_redirected(self.h, offset.h), owned: false)

proc miqt_exec_callback_cQWebInspector_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebInspectorsharedPainter*(self: gen_qwebinspector_types.QWebInspector, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQWebInspector_virtualbase_sharedPainter(self.h), owned: false)

proc miqt_exec_callback_cQWebInspector_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebInspectorinputMethodEvent*(self: gen_qwebinspector_types.QWebInspector, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQWebInspector_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQWebInspector_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QWebInspectorinputMethodQuery*(self: gen_qwebinspector_types.QWebInspector, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQWebInspector_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc miqt_exec_callback_cQWebInspector_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWebInspectorfocusNextPrevChild*(self: gen_qwebinspector_types.QWebInspector, next: bool): bool =
  fcQWebInspector_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQWebInspector_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QWebInspectoreventFilter*(self: gen_qwebinspector_types.QWebInspector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWebInspector_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWebInspector_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWebInspectortimerEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWebInspector_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWebInspectorchildEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWebInspector_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWebInspectorcustomEvent*(self: gen_qwebinspector_types.QWebInspector, event: gen_qcoreevent_types.QEvent): void =
  fcQWebInspector_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWebInspector_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWebInspectorconnectNotify*(self: gen_qwebinspector_types.QWebInspector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebInspector_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebInspector_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWebInspectordisconnectNotify*(self: gen_qwebinspector_types.QWebInspector, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWebInspector_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWebInspector_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWebInspectorVTable](vtbl)
  let self = QWebInspector(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWebInspector* {.inheritable.} = ref object of QWebInspector
  vtbl*: cQWebInspectorVTable
method metaObject*(self: VirtualQWebInspector, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWebInspectormetaObject(self[])
proc miqt_exec_method_cQWebInspector_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWebInspector, param1: cstring): pointer {.base.} =
  QWebInspectormetacast(self[], param1)
proc miqt_exec_method_cQWebInspector_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWebInspector, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWebInspectormetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQWebInspector_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQWebInspector, ): gen_qsize_types.QSize {.base.} =
  QWebInspectorsizeHint(self[])
proc miqt_exec_method_cQWebInspector_sizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  var virtualReturn = vtbl.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQWebInspector, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebInspectorevent(self[], param1)
proc miqt_exec_method_cQWebInspector_event(vtbl: pointer, inst: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QWebInspectorresizeEvent(self[], event)
proc miqt_exec_method_cQWebInspector_resizeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl.resizeEvent(slotval1)

method showEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QShowEvent): void {.base.} =
  QWebInspectorshowEvent(self[], event)
proc miqt_exec_method_cQWebInspector_showEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl.showEvent(slotval1)

method hideEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QHideEvent): void {.base.} =
  QWebInspectorhideEvent(self[], event)
proc miqt_exec_method_cQWebInspector_hideEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl.hideEvent(slotval1)

method closeEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QWebInspectorcloseEvent(self[], event)
proc miqt_exec_method_cQWebInspector_closeEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl.closeEvent(slotval1)

method devType*(self: VirtualQWebInspector, ): cint {.base.} =
  QWebInspectordevType(self[])
proc miqt_exec_method_cQWebInspector_devType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  var virtualReturn = vtbl.devType()
  virtualReturn

method setVisible*(self: VirtualQWebInspector, visible: bool): void {.base.} =
  QWebInspectorsetVisible(self[], visible)
proc miqt_exec_method_cQWebInspector_setVisible(vtbl: pointer, inst: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = visible
  vtbl.setVisible(slotval1)

method minimumSizeHint*(self: VirtualQWebInspector, ): gen_qsize_types.QSize {.base.} =
  QWebInspectorminimumSizeHint(self[])
proc miqt_exec_method_cQWebInspector_minimumSizeHint(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  var virtualReturn = vtbl.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQWebInspector, param1: cint): cint {.base.} =
  QWebInspectorheightForWidth(self[], param1)
proc miqt_exec_method_cQWebInspector_heightForWidth(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = param1
  var virtualReturn = vtbl.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQWebInspector, ): bool {.base.} =
  QWebInspectorhasHeightForWidth(self[])
proc miqt_exec_method_cQWebInspector_hasHeightForWidth(vtbl: pointer, inst: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  var virtualReturn = vtbl.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQWebInspector, ): gen_qpaintengine_types.QPaintEngine {.base.} =
  QWebInspectorpaintEngine(self[])
proc miqt_exec_method_cQWebInspector_paintEngine(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  var virtualReturn = vtbl.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebInspectormousePressEvent(self[], event)
proc miqt_exec_method_cQWebInspector_mousePressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebInspectormouseReleaseEvent(self[], event)
proc miqt_exec_method_cQWebInspector_mouseReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebInspectormouseDoubleClickEvent(self[], event)
proc miqt_exec_method_cQWebInspector_mouseDoubleClickEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QWebInspectormouseMoveEvent(self[], event)
proc miqt_exec_method_cQWebInspector_mouseMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QWebInspectorwheelEvent(self[], event)
proc miqt_exec_method_cQWebInspector_wheelEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWebInspectorkeyPressEvent(self[], event)
proc miqt_exec_method_cQWebInspector_keyPressEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QWebInspectorkeyReleaseEvent(self[], event)
proc miqt_exec_method_cQWebInspector_keyReleaseEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWebInspectorfocusInEvent(self[], event)
proc miqt_exec_method_cQWebInspector_focusInEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QWebInspectorfocusOutEvent(self[], event)
proc miqt_exec_method_cQWebInspector_focusOutEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQWebInspector, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebInspectorenterEvent(self[], event)
proc miqt_exec_method_cQWebInspector_enterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.enterEvent(slotval1)

method leaveEvent*(self: VirtualQWebInspector, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebInspectorleaveEvent(self[], event)
proc miqt_exec_method_cQWebInspector_leaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.leaveEvent(slotval1)

method paintEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QWebInspectorpaintEvent(self[], event)
proc miqt_exec_method_cQWebInspector_paintEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl.paintEvent(slotval1)

method moveEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QWebInspectormoveEvent(self[], event)
proc miqt_exec_method_cQWebInspector_moveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl.moveEvent(slotval1)

method contextMenuEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QWebInspectorcontextMenuEvent(self[], event)
proc miqt_exec_method_cQWebInspector_contextMenuEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QWebInspectortabletEvent(self[], event)
proc miqt_exec_method_cQWebInspector_tabletEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl.tabletEvent(slotval1)

method actionEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QActionEvent): void {.base.} =
  QWebInspectoractionEvent(self[], event)
proc miqt_exec_method_cQWebInspector_actionEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QWebInspectordragEnterEvent(self[], event)
proc miqt_exec_method_cQWebInspector_dragEnterEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QWebInspectordragMoveEvent(self[], event)
proc miqt_exec_method_cQWebInspector_dragMoveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QWebInspectordragLeaveEvent(self[], event)
proc miqt_exec_method_cQWebInspector_dragLeaveEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQWebInspector, event: gen_qevent_types.QDropEvent): void {.base.} =
  QWebInspectordropEvent(self[], event)
proc miqt_exec_method_cQWebInspector_dropEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl.dropEvent(slotval1)

method nativeEvent*(self: VirtualQWebInspector, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QWebInspectornativeEvent(self[], eventType, message, resultVal)
proc miqt_exec_method_cQWebInspector_nativeEvent(vtbl: pointer, inst: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQWebInspector, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebInspectorchangeEvent(self[], param1)
proc miqt_exec_method_cQWebInspector_changeEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl.changeEvent(slotval1)

method metric*(self: VirtualQWebInspector, param1: cint): cint {.base.} =
  QWebInspectormetric(self[], param1)
proc miqt_exec_method_cQWebInspector_metric(vtbl: pointer, inst: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQWebInspector, painter: gen_qpainter_types.QPainter): void {.base.} =
  QWebInspectorinitPainter(self[], painter)
proc miqt_exec_method_cQWebInspector_initPainter(vtbl: pointer, inst: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl.initPainter(slotval1)

method redirected*(self: VirtualQWebInspector, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QWebInspectorredirected(self[], offset)
proc miqt_exec_method_cQWebInspector_redirected(vtbl: pointer, inst: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQWebInspector, ): gen_qpainter_types.QPainter {.base.} =
  QWebInspectorsharedPainter(self[])
proc miqt_exec_method_cQWebInspector_sharedPainter(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  var virtualReturn = vtbl.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQWebInspector, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QWebInspectorinputMethodEvent(self[], param1)
proc miqt_exec_method_cQWebInspector_inputMethodEvent(vtbl: pointer, inst: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQWebInspector, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QWebInspectorinputMethodQuery(self[], param1)
proc miqt_exec_method_cQWebInspector_inputMethodQuery(vtbl: pointer, inst: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = cint(param1)
  var virtualReturn = vtbl.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQWebInspector, next: bool): bool {.base.} =
  QWebInspectorfocusNextPrevChild(self[], next)
proc miqt_exec_method_cQWebInspector_focusNextPrevChild(vtbl: pointer, inst: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = next
  var virtualReturn = vtbl.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWebInspector, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWebInspectoreventFilter(self[], watched, event)
proc miqt_exec_method_cQWebInspector_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWebInspector, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWebInspectortimerEvent(self[], event)
proc miqt_exec_method_cQWebInspector_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQWebInspector, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWebInspectorchildEvent(self[], event)
proc miqt_exec_method_cQWebInspector_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQWebInspector, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWebInspectorcustomEvent(self[], event)
proc miqt_exec_method_cQWebInspector_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQWebInspector, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebInspectorconnectNotify(self[], signal)
proc miqt_exec_method_cQWebInspector_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWebInspector, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWebInspectordisconnectNotify(self[], signal)
proc miqt_exec_method_cQWebInspector_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQWebInspector](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc updateMicroFocus*(self: gen_qwebinspector_types.QWebInspector, ): void =
  fcQWebInspector_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qwebinspector_types.QWebInspector, ): void =
  fcQWebInspector_protectedbase_create(self.h)

proc destroy*(self: gen_qwebinspector_types.QWebInspector, ): void =
  fcQWebInspector_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qwebinspector_types.QWebInspector, ): bool =
  fcQWebInspector_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qwebinspector_types.QWebInspector, ): bool =
  fcQWebInspector_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qwebinspector_types.QWebInspector, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebInspector_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebinspector_types.QWebInspector, ): cint =
  fcQWebInspector_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebinspector_types.QWebInspector, signal: cstring): cint =
  fcQWebInspector_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebinspector_types.QWebInspector, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebInspector_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwebinspector_types.QWebInspector,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QWebInspectorVTable = nil): gen_qwebinspector_types.QWebInspector =
  let vtbl = if vtbl == nil: new QWebInspectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebInspectorVTable, _: ptr cQWebInspector) {.cdecl.} =
    let vtbl = cast[ref QWebInspectorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebInspector_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebInspector_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebInspector_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebInspector_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebInspector_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebInspector_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebInspector_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebInspector_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebInspector_closeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebInspector_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebInspector_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebInspector_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebInspector_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebInspector_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebInspector_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebInspector_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebInspector_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebInspector_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebInspector_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebInspector_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebInspector_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebInspector_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebInspector_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebInspector_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebInspector_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebInspector_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebInspector_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebInspector_moveEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebInspector_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebInspector_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebInspector_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebInspector_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebInspector_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebInspector_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebInspector_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebInspector_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebInspector_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebInspector_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebInspector_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebInspector_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebInspector_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebInspector_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebInspector_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebInspector_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebInspector_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebInspector_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebInspector_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebInspector_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebInspector_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebInspector_disconnectNotify
  gen_qwebinspector_types.QWebInspector(h: fcQWebInspector_new(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qwebinspector_types.QWebInspector,
    vtbl: ref QWebInspectorVTable = nil): gen_qwebinspector_types.QWebInspector =
  let vtbl = if vtbl == nil: new QWebInspectorVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebInspectorVTable, _: ptr cQWebInspector) {.cdecl.} =
    let vtbl = cast[ref QWebInspectorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWebInspector_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWebInspector_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWebInspector_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWebInspector_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWebInspector_event
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQWebInspector_resizeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQWebInspector_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQWebInspector_hideEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQWebInspector_closeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQWebInspector_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQWebInspector_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQWebInspector_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWebInspector_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWebInspector_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQWebInspector_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQWebInspector_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQWebInspector_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQWebInspector_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQWebInspector_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQWebInspector_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQWebInspector_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQWebInspector_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQWebInspector_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQWebInspector_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQWebInspector_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQWebInspector_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQWebInspector_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQWebInspector_moveEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQWebInspector_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQWebInspector_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQWebInspector_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQWebInspector_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQWebInspector_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQWebInspector_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQWebInspector_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQWebInspector_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQWebInspector_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQWebInspector_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQWebInspector_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQWebInspector_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQWebInspector_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQWebInspector_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQWebInspector_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQWebInspector_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWebInspector_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWebInspector_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWebInspector_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWebInspector_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWebInspector_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWebInspector_disconnectNotify
  gen_qwebinspector_types.QWebInspector(h: fcQWebInspector_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qwebinspector_types.QWebInspector,
    parent: gen_qwidget_types.QWidget,
    vtbl: VirtualQWebInspector) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebInspectorVTable, _: ptr cQWebInspector) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWebInspector()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWebInspector_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWebInspector_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWebInspector_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQWebInspector_sizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQWebInspector_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWebInspector_resizeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWebInspector_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWebInspector_hideEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWebInspector_closeEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQWebInspector_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQWebInspector_setVisible
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQWebInspector_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQWebInspector_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQWebInspector_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQWebInspector_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWebInspector_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWebInspector_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWebInspector_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWebInspector_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWebInspector_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWebInspector_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWebInspector_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWebInspector_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWebInspector_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQWebInspector_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQWebInspector_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWebInspector_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWebInspector_moveEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQWebInspector_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWebInspector_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQWebInspector_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQWebInspector_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQWebInspector_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQWebInspector_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQWebInspector_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWebInspector_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQWebInspector_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQWebInspector_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQWebInspector_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQWebInspector_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQWebInspector_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQWebInspector_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQWebInspector_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQWebInspector_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWebInspector_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWebInspector_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWebInspector_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWebInspector_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWebInspector_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWebInspector_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWebInspector_new(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qwebinspector_types.QWebInspector,
    vtbl: VirtualQWebInspector) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQWebInspectorVTable, _: ptr cQWebInspector) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQWebInspector()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQWebInspector, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQWebInspector_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQWebInspector_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQWebInspector_metacall
  vtbl[].vtbl.sizeHint = miqt_exec_method_cQWebInspector_sizeHint
  vtbl[].vtbl.event = miqt_exec_method_cQWebInspector_event
  vtbl[].vtbl.resizeEvent = miqt_exec_method_cQWebInspector_resizeEvent
  vtbl[].vtbl.showEvent = miqt_exec_method_cQWebInspector_showEvent
  vtbl[].vtbl.hideEvent = miqt_exec_method_cQWebInspector_hideEvent
  vtbl[].vtbl.closeEvent = miqt_exec_method_cQWebInspector_closeEvent
  vtbl[].vtbl.devType = miqt_exec_method_cQWebInspector_devType
  vtbl[].vtbl.setVisible = miqt_exec_method_cQWebInspector_setVisible
  vtbl[].vtbl.minimumSizeHint = miqt_exec_method_cQWebInspector_minimumSizeHint
  vtbl[].vtbl.heightForWidth = miqt_exec_method_cQWebInspector_heightForWidth
  vtbl[].vtbl.hasHeightForWidth = miqt_exec_method_cQWebInspector_hasHeightForWidth
  vtbl[].vtbl.paintEngine = miqt_exec_method_cQWebInspector_paintEngine
  vtbl[].vtbl.mousePressEvent = miqt_exec_method_cQWebInspector_mousePressEvent
  vtbl[].vtbl.mouseReleaseEvent = miqt_exec_method_cQWebInspector_mouseReleaseEvent
  vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_method_cQWebInspector_mouseDoubleClickEvent
  vtbl[].vtbl.mouseMoveEvent = miqt_exec_method_cQWebInspector_mouseMoveEvent
  vtbl[].vtbl.wheelEvent = miqt_exec_method_cQWebInspector_wheelEvent
  vtbl[].vtbl.keyPressEvent = miqt_exec_method_cQWebInspector_keyPressEvent
  vtbl[].vtbl.keyReleaseEvent = miqt_exec_method_cQWebInspector_keyReleaseEvent
  vtbl[].vtbl.focusInEvent = miqt_exec_method_cQWebInspector_focusInEvent
  vtbl[].vtbl.focusOutEvent = miqt_exec_method_cQWebInspector_focusOutEvent
  vtbl[].vtbl.enterEvent = miqt_exec_method_cQWebInspector_enterEvent
  vtbl[].vtbl.leaveEvent = miqt_exec_method_cQWebInspector_leaveEvent
  vtbl[].vtbl.paintEvent = miqt_exec_method_cQWebInspector_paintEvent
  vtbl[].vtbl.moveEvent = miqt_exec_method_cQWebInspector_moveEvent
  vtbl[].vtbl.contextMenuEvent = miqt_exec_method_cQWebInspector_contextMenuEvent
  vtbl[].vtbl.tabletEvent = miqt_exec_method_cQWebInspector_tabletEvent
  vtbl[].vtbl.actionEvent = miqt_exec_method_cQWebInspector_actionEvent
  vtbl[].vtbl.dragEnterEvent = miqt_exec_method_cQWebInspector_dragEnterEvent
  vtbl[].vtbl.dragMoveEvent = miqt_exec_method_cQWebInspector_dragMoveEvent
  vtbl[].vtbl.dragLeaveEvent = miqt_exec_method_cQWebInspector_dragLeaveEvent
  vtbl[].vtbl.dropEvent = miqt_exec_method_cQWebInspector_dropEvent
  vtbl[].vtbl.nativeEvent = miqt_exec_method_cQWebInspector_nativeEvent
  vtbl[].vtbl.changeEvent = miqt_exec_method_cQWebInspector_changeEvent
  vtbl[].vtbl.metric = miqt_exec_method_cQWebInspector_metric
  vtbl[].vtbl.initPainter = miqt_exec_method_cQWebInspector_initPainter
  vtbl[].vtbl.redirected = miqt_exec_method_cQWebInspector_redirected
  vtbl[].vtbl.sharedPainter = miqt_exec_method_cQWebInspector_sharedPainter
  vtbl[].vtbl.inputMethodEvent = miqt_exec_method_cQWebInspector_inputMethodEvent
  vtbl[].vtbl.inputMethodQuery = miqt_exec_method_cQWebInspector_inputMethodQuery
  vtbl[].vtbl.focusNextPrevChild = miqt_exec_method_cQWebInspector_focusNextPrevChild
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQWebInspector_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQWebInspector_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQWebInspector_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQWebInspector_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQWebInspector_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQWebInspector_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQWebInspector_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qwebinspector_types.QWebInspector): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebInspector_staticMetaObject())
