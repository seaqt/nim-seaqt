import ./Qt6SvgWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6SvgWidgets")  & " -fPIC"
{.compile("gen_qsvgwidget.cpp", cflags).}


import ./gen_qsvgwidget_types
export gen_qsvgwidget_types

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
  ../QtSvg/gen_qsvgrenderer_types,
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
  gen_qsvgrenderer_types,
  gen_qwidget

type cQSvgWidget*{.exportc: "QSvgWidget", incompleteStruct.} = object

proc fcQSvgWidget_metaObject(self: pointer, ): pointer {.importc: "QSvgWidget_metaObject".}
proc fcQSvgWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgWidget_metacast".}
proc fcQSvgWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgWidget_metacall".}
proc fcQSvgWidget_tr(s: cstring): struct_miqt_string {.importc: "QSvgWidget_tr".}
proc fcQSvgWidget_renderer(self: pointer, ): pointer {.importc: "QSvgWidget_renderer".}
proc fcQSvgWidget_sizeHint(self: pointer, ): pointer {.importc: "QSvgWidget_sizeHint".}
proc fcQSvgWidget_load(self: pointer, file: struct_miqt_string): void {.importc: "QSvgWidget_load".}
proc fcQSvgWidget_loadWithContents(self: pointer, contents: struct_miqt_string): void {.importc: "QSvgWidget_loadWithContents".}
proc fcQSvgWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgWidget_tr2".}
proc fcQSvgWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgWidget_tr3".}
type cQSvgWidgetVTable = object
  destructor*: proc(vtbl: ptr cQSvgWidgetVTable, self: ptr cQSvgWidget) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
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
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQSvgWidget_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSvgWidget_virtualbase_metaObject".}
proc fcQSvgWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgWidget_virtualbase_metacast".}
proc fcQSvgWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgWidget_virtualbase_metacall".}
proc fcQSvgWidget_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QSvgWidget_virtualbase_sizeHint".}
proc fcQSvgWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_paintEvent".}
proc fcQSvgWidget_virtualbase_devType(self: pointer, ): cint {.importc: "QSvgWidget_virtualbase_devType".}
proc fcQSvgWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSvgWidget_virtualbase_setVisible".}
proc fcQSvgWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QSvgWidget_virtualbase_minimumSizeHint".}
proc fcQSvgWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSvgWidget_virtualbase_heightForWidth".}
proc fcQSvgWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QSvgWidget_virtualbase_hasHeightForWidth".}
proc fcQSvgWidget_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QSvgWidget_virtualbase_paintEngine".}
proc fcQSvgWidget_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSvgWidget_virtualbase_event".}
proc fcQSvgWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_mousePressEvent".}
proc fcQSvgWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_mouseReleaseEvent".}
proc fcQSvgWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQSvgWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_mouseMoveEvent".}
proc fcQSvgWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_wheelEvent".}
proc fcQSvgWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_keyPressEvent".}
proc fcQSvgWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_keyReleaseEvent".}
proc fcQSvgWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_focusInEvent".}
proc fcQSvgWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_focusOutEvent".}
proc fcQSvgWidget_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_enterEvent".}
proc fcQSvgWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_leaveEvent".}
proc fcQSvgWidget_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_moveEvent".}
proc fcQSvgWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_resizeEvent".}
proc fcQSvgWidget_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_closeEvent".}
proc fcQSvgWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_contextMenuEvent".}
proc fcQSvgWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_tabletEvent".}
proc fcQSvgWidget_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_actionEvent".}
proc fcQSvgWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_dragEnterEvent".}
proc fcQSvgWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_dragMoveEvent".}
proc fcQSvgWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_dragLeaveEvent".}
proc fcQSvgWidget_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_dropEvent".}
proc fcQSvgWidget_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_showEvent".}
proc fcQSvgWidget_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_hideEvent".}
proc fcQSvgWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QSvgWidget_virtualbase_nativeEvent".}
proc fcQSvgWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSvgWidget_virtualbase_changeEvent".}
proc fcQSvgWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSvgWidget_virtualbase_metric".}
proc fcQSvgWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSvgWidget_virtualbase_initPainter".}
proc fcQSvgWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSvgWidget_virtualbase_redirected".}
proc fcQSvgWidget_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QSvgWidget_virtualbase_sharedPainter".}
proc fcQSvgWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSvgWidget_virtualbase_inputMethodEvent".}
proc fcQSvgWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSvgWidget_virtualbase_inputMethodQuery".}
proc fcQSvgWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSvgWidget_virtualbase_focusNextPrevChild".}
proc fcQSvgWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSvgWidget_virtualbase_eventFilter".}
proc fcQSvgWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_timerEvent".}
proc fcQSvgWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_childEvent".}
proc fcQSvgWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_customEvent".}
proc fcQSvgWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSvgWidget_virtualbase_connectNotify".}
proc fcQSvgWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSvgWidget_virtualbase_disconnectNotify".}
proc fcQSvgWidget_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QSvgWidget_protectedbase_updateMicroFocus".}
proc fcQSvgWidget_protectedbase_create(self: pointer, ): void {.importc: "QSvgWidget_protectedbase_create".}
proc fcQSvgWidget_protectedbase_destroy(self: pointer, ): void {.importc: "QSvgWidget_protectedbase_destroy".}
proc fcQSvgWidget_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QSvgWidget_protectedbase_focusNextChild".}
proc fcQSvgWidget_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QSvgWidget_protectedbase_focusPreviousChild".}
proc fcQSvgWidget_protectedbase_sender(self: pointer, ): pointer {.importc: "QSvgWidget_protectedbase_sender".}
proc fcQSvgWidget_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSvgWidget_protectedbase_senderSignalIndex".}
proc fcQSvgWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSvgWidget_protectedbase_receivers".}
proc fcQSvgWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSvgWidget_protectedbase_isSignalConnected".}
proc fcQSvgWidget_new(vtbl: pointer, parent: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new".}
proc fcQSvgWidget_new2(vtbl: pointer, ): ptr cQSvgWidget {.importc: "QSvgWidget_new2".}
proc fcQSvgWidget_new3(vtbl: pointer, file: struct_miqt_string): ptr cQSvgWidget {.importc: "QSvgWidget_new3".}
proc fcQSvgWidget_new4(vtbl: pointer, file: struct_miqt_string, parent: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new4".}
proc fcQSvgWidget_staticMetaObject(): pointer {.importc: "QSvgWidget_staticMetaObject".}
proc fcQSvgWidget_delete(self: pointer) {.importc: "QSvgWidget_delete".}

proc metaObject*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgWidget_metaObject(self.h))

proc metacast*(self: gen_qsvgwidget_types.QSvgWidget, param1: cstring): pointer =
  fcQSvgWidget_metacast(self.h, param1)

proc metacall*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring): string =
  let v_ms = fcQSvgWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc renderer*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgWidget_renderer(self.h))

proc sizeHint*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgWidget_sizeHint(self.h))

proc load*(self: gen_qsvgwidget_types.QSvgWidget, file: string): void =
  fcQSvgWidget_load(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc load*(self: gen_qsvgwidget_types.QSvgWidget, contents: seq[byte]): void =
  fcQSvgWidget_loadWithContents(self.h, struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))))

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring): string =
  let v_ms = fcQSvgWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSvgWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSvgWidgetmetaObjectProc* = proc(self: QSvgWidget): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSvgWidgetmetacastProc* = proc(self: QSvgWidget, param1: cstring): pointer {.raises: [], gcsafe.}
type QSvgWidgetmetacallProc* = proc(self: QSvgWidget, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSvgWidgetsizeHintProc* = proc(self: QSvgWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSvgWidgetpaintEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QSvgWidgetdevTypeProc* = proc(self: QSvgWidget): cint {.raises: [], gcsafe.}
type QSvgWidgetsetVisibleProc* = proc(self: QSvgWidget, visible: bool): void {.raises: [], gcsafe.}
type QSvgWidgetminimumSizeHintProc* = proc(self: QSvgWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSvgWidgetheightForWidthProc* = proc(self: QSvgWidget, param1: cint): cint {.raises: [], gcsafe.}
type QSvgWidgethasHeightForWidthProc* = proc(self: QSvgWidget): bool {.raises: [], gcsafe.}
type QSvgWidgetpaintEngineProc* = proc(self: QSvgWidget): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QSvgWidgeteventProc* = proc(self: QSvgWidget, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSvgWidgetmousePressEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSvgWidgetmouseReleaseEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSvgWidgetmouseDoubleClickEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSvgWidgetmouseMoveEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QSvgWidgetwheelEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QSvgWidgetkeyPressEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSvgWidgetkeyReleaseEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QSvgWidgetfocusInEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSvgWidgetfocusOutEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QSvgWidgetenterEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QSvgWidgetleaveEventProc* = proc(self: QSvgWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSvgWidgetmoveEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QSvgWidgetresizeEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QSvgWidgetcloseEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QSvgWidgetcontextMenuEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QSvgWidgettabletEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QSvgWidgetactionEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QSvgWidgetdragEnterEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QSvgWidgetdragMoveEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QSvgWidgetdragLeaveEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QSvgWidgetdropEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QSvgWidgetshowEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QSvgWidgethideEventProc* = proc(self: QSvgWidget, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QSvgWidgetnativeEventProc* = proc(self: QSvgWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QSvgWidgetchangeEventProc* = proc(self: QSvgWidget, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSvgWidgetmetricProc* = proc(self: QSvgWidget, param1: cint): cint {.raises: [], gcsafe.}
type QSvgWidgetinitPainterProc* = proc(self: QSvgWidget, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSvgWidgetredirectedProc* = proc(self: QSvgWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QSvgWidgetsharedPainterProc* = proc(self: QSvgWidget): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QSvgWidgetinputMethodEventProc* = proc(self: QSvgWidget, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QSvgWidgetinputMethodQueryProc* = proc(self: QSvgWidget, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSvgWidgetfocusNextPrevChildProc* = proc(self: QSvgWidget, next: bool): bool {.raises: [], gcsafe.}
type QSvgWidgeteventFilterProc* = proc(self: QSvgWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSvgWidgettimerEventProc* = proc(self: QSvgWidget, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSvgWidgetchildEventProc* = proc(self: QSvgWidget, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSvgWidgetcustomEventProc* = proc(self: QSvgWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSvgWidgetconnectNotifyProc* = proc(self: QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSvgWidgetdisconnectNotifyProc* = proc(self: QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSvgWidgetVTable* = object
  vtbl: cQSvgWidgetVTable
  metaObject*: QSvgWidgetmetaObjectProc
  metacast*: QSvgWidgetmetacastProc
  metacall*: QSvgWidgetmetacallProc
  sizeHint*: QSvgWidgetsizeHintProc
  paintEvent*: QSvgWidgetpaintEventProc
  devType*: QSvgWidgetdevTypeProc
  setVisible*: QSvgWidgetsetVisibleProc
  minimumSizeHint*: QSvgWidgetminimumSizeHintProc
  heightForWidth*: QSvgWidgetheightForWidthProc
  hasHeightForWidth*: QSvgWidgethasHeightForWidthProc
  paintEngine*: QSvgWidgetpaintEngineProc
  event*: QSvgWidgeteventProc
  mousePressEvent*: QSvgWidgetmousePressEventProc
  mouseReleaseEvent*: QSvgWidgetmouseReleaseEventProc
  mouseDoubleClickEvent*: QSvgWidgetmouseDoubleClickEventProc
  mouseMoveEvent*: QSvgWidgetmouseMoveEventProc
  wheelEvent*: QSvgWidgetwheelEventProc
  keyPressEvent*: QSvgWidgetkeyPressEventProc
  keyReleaseEvent*: QSvgWidgetkeyReleaseEventProc
  focusInEvent*: QSvgWidgetfocusInEventProc
  focusOutEvent*: QSvgWidgetfocusOutEventProc
  enterEvent*: QSvgWidgetenterEventProc
  leaveEvent*: QSvgWidgetleaveEventProc
  moveEvent*: QSvgWidgetmoveEventProc
  resizeEvent*: QSvgWidgetresizeEventProc
  closeEvent*: QSvgWidgetcloseEventProc
  contextMenuEvent*: QSvgWidgetcontextMenuEventProc
  tabletEvent*: QSvgWidgettabletEventProc
  actionEvent*: QSvgWidgetactionEventProc
  dragEnterEvent*: QSvgWidgetdragEnterEventProc
  dragMoveEvent*: QSvgWidgetdragMoveEventProc
  dragLeaveEvent*: QSvgWidgetdragLeaveEventProc
  dropEvent*: QSvgWidgetdropEventProc
  showEvent*: QSvgWidgetshowEventProc
  hideEvent*: QSvgWidgethideEventProc
  nativeEvent*: QSvgWidgetnativeEventProc
  changeEvent*: QSvgWidgetchangeEventProc
  metric*: QSvgWidgetmetricProc
  initPainter*: QSvgWidgetinitPainterProc
  redirected*: QSvgWidgetredirectedProc
  sharedPainter*: QSvgWidgetsharedPainterProc
  inputMethodEvent*: QSvgWidgetinputMethodEventProc
  inputMethodQuery*: QSvgWidgetinputMethodQueryProc
  focusNextPrevChild*: QSvgWidgetfocusNextPrevChildProc
  eventFilter*: QSvgWidgeteventFilterProc
  timerEvent*: QSvgWidgettimerEventProc
  childEvent*: QSvgWidgetchildEventProc
  customEvent*: QSvgWidgetcustomEventProc
  connectNotify*: QSvgWidgetconnectNotifyProc
  disconnectNotify*: QSvgWidgetdisconnectNotifyProc
proc QSvgWidgetmetaObject*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgWidget_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSvgWidget_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSvgWidgetmetacast*(self: gen_qsvgwidget_types.QSvgWidget, param1: cstring): pointer =
  fcQSvgWidget_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSvgWidget_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSvgWidgetmetacall*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSvgWidget_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSvgWidgetsizeHint*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgWidget_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQSvgWidget_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QSvgWidgetpaintEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQSvgWidget_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QSvgWidgetdevType*(self: gen_qsvgwidget_types.QSvgWidget, ): cint =
  fcQSvgWidget_virtualbase_devType(self.h)

proc miqt_exec_callback_cQSvgWidget_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSvgWidgetsetVisible*(self: gen_qsvgwidget_types.QSvgWidget, visible: bool): void =
  fcQSvgWidget_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQSvgWidget_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QSvgWidgetminimumSizeHint*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgWidget_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQSvgWidget_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QSvgWidgetheightForWidth*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): cint =
  fcQSvgWidget_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQSvgWidget_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSvgWidgethasHeightForWidth*(self: gen_qsvgwidget_types.QSvgWidget, ): bool =
  fcQSvgWidget_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQSvgWidget_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSvgWidgetpaintEngine*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSvgWidget_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQSvgWidget_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QSvgWidgetevent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQSvgWidget_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSvgWidgetmousePressEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQSvgWidget_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QSvgWidgetmouseReleaseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQSvgWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QSvgWidgetmouseDoubleClickEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQSvgWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QSvgWidgetmouseMoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQSvgWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QSvgWidgetwheelEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQSvgWidget_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QSvgWidgetkeyPressEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQSvgWidget_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QSvgWidgetkeyReleaseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQSvgWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QSvgWidgetfocusInEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQSvgWidget_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QSvgWidgetfocusOutEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQSvgWidget_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QSvgWidgetenterEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QEnterEvent): void =
  fcQSvgWidget_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QSvgWidgetleaveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQSvgWidget_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QSvgWidgetmoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQSvgWidget_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QSvgWidgetresizeEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQSvgWidget_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QSvgWidgetcloseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQSvgWidget_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QSvgWidgetcontextMenuEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSvgWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QSvgWidgettabletEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQSvgWidget_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QSvgWidgetactionEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QActionEvent): void =
  fcQSvgWidget_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QSvgWidgetdragEnterEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSvgWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QSvgWidgetdragMoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSvgWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QSvgWidgetdragLeaveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSvgWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QSvgWidgetdropEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDropEvent): void =
  fcQSvgWidget_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QSvgWidgetshowEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QShowEvent): void =
  fcQSvgWidget_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QSvgWidgethideEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QHideEvent): void =
  fcQSvgWidget_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QSvgWidgetnativeEvent*(self: gen_qsvgwidget_types.QSvgWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQSvgWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQSvgWidget_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSvgWidgetchangeEvent*(self: gen_qsvgwidget_types.QSvgWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQSvgWidget_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQSvgWidget_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QSvgWidgetmetric*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): cint =
  fcQSvgWidget_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQSvgWidget_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSvgWidgetinitPainter*(self: gen_qsvgwidget_types.QSvgWidget, painter: gen_qpainter_types.QPainter): void =
  fcQSvgWidget_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQSvgWidget_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QSvgWidgetredirected*(self: gen_qsvgwidget_types.QSvgWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSvgWidget_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQSvgWidget_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QSvgWidgetsharedPainter*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSvgWidget_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQSvgWidget_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QSvgWidgetinputMethodEvent*(self: gen_qsvgwidget_types.QSvgWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSvgWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQSvgWidget_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QSvgWidgetinputMethodQuery*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSvgWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQSvgWidget_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QSvgWidgetfocusNextPrevChild*(self: gen_qsvgwidget_types.QSvgWidget, next: bool): bool =
  fcQSvgWidget_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQSvgWidget_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QSvgWidgeteventFilter*(self: gen_qsvgwidget_types.QSvgWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSvgWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSvgWidget_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSvgWidgettimerEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSvgWidget_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSvgWidgetchildEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSvgWidget_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSvgWidgetcustomEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQSvgWidget_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSvgWidget_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSvgWidgetconnectNotify*(self: gen_qsvgwidget_types.QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSvgWidget_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSvgWidget_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSvgWidgetdisconnectNotify*(self: gen_qsvgwidget_types.QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSvgWidget_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSvgWidget_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](vtbl)
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qsvgwidget_types.QSvgWidget, ): void =
  fcQSvgWidget_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qsvgwidget_types.QSvgWidget, ): void =
  fcQSvgWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qsvgwidget_types.QSvgWidget, ): void =
  fcQSvgWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsvgwidget_types.QSvgWidget, ): bool =
  fcQSvgWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsvgwidget_types.QSvgWidget, ): bool =
  fcQSvgWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSvgWidget_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsvgwidget_types.QSvgWidget, ): cint =
  fcQSvgWidget_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsvgwidget_types.QSvgWidget, signal: cstring): cint =
  fcQSvgWidget_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsvgwidget_types.QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSvgWidget_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QSvgWidgetVTable = nil): gen_qsvgwidget_types.QSvgWidget =
  let vtbl = if vtbl == nil: new QSvgWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgWidgetVTable, _: ptr cQSvgWidget) {.cdecl.} =
    let vtbl = cast[ref QSvgWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgWidget_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSvgWidget_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSvgWidget_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSvgWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSvgWidget_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSvgWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSvgWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSvgWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSvgWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSvgWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSvgWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSvgWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSvgWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSvgWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSvgWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSvgWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSvgWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSvgWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSvgWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSvgWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSvgWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSvgWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSvgWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSvgWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSvgWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSvgWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSvgWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSvgWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSvgWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSvgWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSvgWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSvgWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSvgWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSvgWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSvgWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSvgWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSvgWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSvgWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSvgWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSvgWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSvgWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgWidget_disconnectNotify
  gen_qsvgwidget_types.QSvgWidget(h: fcQSvgWidget_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    vtbl: ref QSvgWidgetVTable = nil): gen_qsvgwidget_types.QSvgWidget =
  let vtbl = if vtbl == nil: new QSvgWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgWidgetVTable, _: ptr cQSvgWidget) {.cdecl.} =
    let vtbl = cast[ref QSvgWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgWidget_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSvgWidget_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSvgWidget_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSvgWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSvgWidget_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSvgWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSvgWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSvgWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSvgWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSvgWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSvgWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSvgWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSvgWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSvgWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSvgWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSvgWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSvgWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSvgWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSvgWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSvgWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSvgWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSvgWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSvgWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSvgWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSvgWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSvgWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSvgWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSvgWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSvgWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSvgWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSvgWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSvgWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSvgWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSvgWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSvgWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSvgWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSvgWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSvgWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSvgWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSvgWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSvgWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgWidget_disconnectNotify
  gen_qsvgwidget_types.QSvgWidget(h: fcQSvgWidget_new2(addr(vtbl[]), ))

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    file: string,
    vtbl: ref QSvgWidgetVTable = nil): gen_qsvgwidget_types.QSvgWidget =
  let vtbl = if vtbl == nil: new QSvgWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgWidgetVTable, _: ptr cQSvgWidget) {.cdecl.} =
    let vtbl = cast[ref QSvgWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgWidget_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSvgWidget_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSvgWidget_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSvgWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSvgWidget_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSvgWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSvgWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSvgWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSvgWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSvgWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSvgWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSvgWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSvgWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSvgWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSvgWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSvgWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSvgWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSvgWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSvgWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSvgWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSvgWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSvgWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSvgWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSvgWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSvgWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSvgWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSvgWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSvgWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSvgWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSvgWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSvgWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSvgWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSvgWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSvgWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSvgWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSvgWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSvgWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSvgWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSvgWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSvgWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSvgWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgWidget_disconnectNotify
  gen_qsvgwidget_types.QSvgWidget(h: fcQSvgWidget_new3(addr(vtbl[]), struct_miqt_string(data: file, len: csize_t(len(file)))))

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    file: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QSvgWidgetVTable = nil): gen_qsvgwidget_types.QSvgWidget =
  let vtbl = if vtbl == nil: new QSvgWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgWidgetVTable, _: ptr cQSvgWidget) {.cdecl.} =
    let vtbl = cast[ref QSvgWidgetVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSvgWidget_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSvgWidget_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSvgWidget_metacall
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSvgWidget_sizeHint
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQSvgWidget_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSvgWidget_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQSvgWidget_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQSvgWidget_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSvgWidget_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSvgWidget_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSvgWidget_paintEngine
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSvgWidget_event
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQSvgWidget_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQSvgWidget_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQSvgWidget_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQSvgWidget_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQSvgWidget_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQSvgWidget_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQSvgWidget_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQSvgWidget_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQSvgWidget_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQSvgWidget_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQSvgWidget_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQSvgWidget_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQSvgWidget_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQSvgWidget_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQSvgWidget_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQSvgWidget_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQSvgWidget_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQSvgWidget_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQSvgWidget_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQSvgWidget_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQSvgWidget_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQSvgWidget_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQSvgWidget_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQSvgWidget_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQSvgWidget_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSvgWidget_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSvgWidget_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSvgWidget_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSvgWidget_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQSvgWidget_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQSvgWidget_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQSvgWidget_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSvgWidget_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSvgWidget_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSvgWidget_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSvgWidget_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSvgWidget_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSvgWidget_disconnectNotify
  gen_qsvgwidget_types.QSvgWidget(h: fcQSvgWidget_new4(addr(vtbl[]), struct_miqt_string(data: file, len: csize_t(len(file))), parent.h))

proc staticMetaObject*(_: type gen_qsvgwidget_types.QSvgWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgWidget_staticMetaObject())
proc delete*(self: gen_qsvgwidget_types.QSvgWidget) =
  fcQSvgWidget_delete(self.h)
