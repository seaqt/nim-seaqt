import ./qtsvg_pkg

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


{.compile("gen_qsvgwidget.cpp", QtSvgCFlags).}


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
  ../QtWidgets/gen_qwidget,
  ./gen_qsvgrenderer_types
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
  gen_qsvgrenderer_types

type cQSvgWidget*{.exportc: "QSvgWidget", incompleteStruct.} = object

proc fcQSvgWidget_metaObject(self: pointer): pointer {.importc: "QSvgWidget_metaObject".}
proc fcQSvgWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgWidget_metacast".}
proc fcQSvgWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgWidget_metacall".}
proc fcQSvgWidget_tr(s: cstring): struct_miqt_string {.importc: "QSvgWidget_tr".}
proc fcQSvgWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QSvgWidget_trUtf8".}
proc fcQSvgWidget_renderer(self: pointer): pointer {.importc: "QSvgWidget_renderer".}
proc fcQSvgWidget_sizeHint(self: pointer): pointer {.importc: "QSvgWidget_sizeHint".}
proc fcQSvgWidget_load(self: pointer, file: struct_miqt_string): void {.importc: "QSvgWidget_load".}
proc fcQSvgWidget_loadWithContents(self: pointer, contents: struct_miqt_string): void {.importc: "QSvgWidget_loadWithContents".}
proc fcQSvgWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgWidget_tr2".}
proc fcQSvgWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgWidget_tr3".}
proc fcQSvgWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgWidget_trUtf82".}
proc fcQSvgWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgWidget_trUtf83".}
proc fcQSvgWidget_vtbl(self: pointer): pointer {.importc: "QSvgWidget_vtbl".}
proc fcQSvgWidget_vdata(self: pointer): pointer {.importc: "QSvgWidget_vdata".}

type cQSvgWidgetVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQSvgWidget_virtualbase_metaObject(self: pointer): pointer {.importc: "QSvgWidget_virtualbase_metaObject".}
proc fcQSvgWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgWidget_virtualbase_metacast".}
proc fcQSvgWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgWidget_virtualbase_metacall".}
proc fcQSvgWidget_virtualbase_sizeHint(self: pointer): pointer {.importc: "QSvgWidget_virtualbase_sizeHint".}
proc fcQSvgWidget_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_paintEvent".}
proc fcQSvgWidget_virtualbase_devType(self: pointer): cint {.importc: "QSvgWidget_virtualbase_devType".}
proc fcQSvgWidget_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QSvgWidget_virtualbase_setVisible".}
proc fcQSvgWidget_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QSvgWidget_virtualbase_minimumSizeHint".}
proc fcQSvgWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSvgWidget_virtualbase_heightForWidth".}
proc fcQSvgWidget_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QSvgWidget_virtualbase_hasHeightForWidth".}
proc fcQSvgWidget_virtualbase_paintEngine(self: pointer): pointer {.importc: "QSvgWidget_virtualbase_paintEngine".}
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
proc fcQSvgWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QSvgWidget_virtualbase_nativeEvent".}
proc fcQSvgWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QSvgWidget_virtualbase_changeEvent".}
proc fcQSvgWidget_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QSvgWidget_virtualbase_metric".}
proc fcQSvgWidget_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSvgWidget_virtualbase_initPainter".}
proc fcQSvgWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSvgWidget_virtualbase_redirected".}
proc fcQSvgWidget_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QSvgWidget_virtualbase_sharedPainter".}
proc fcQSvgWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QSvgWidget_virtualbase_inputMethodEvent".}
proc fcQSvgWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QSvgWidget_virtualbase_inputMethodQuery".}
proc fcQSvgWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QSvgWidget_virtualbase_focusNextPrevChild".}
proc fcQSvgWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSvgWidget_virtualbase_eventFilter".}
proc fcQSvgWidget_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_timerEvent".}
proc fcQSvgWidget_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_childEvent".}
proc fcQSvgWidget_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSvgWidget_virtualbase_customEvent".}
proc fcQSvgWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSvgWidget_virtualbase_connectNotify".}
proc fcQSvgWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSvgWidget_virtualbase_disconnectNotify".}
proc fcQSvgWidget_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QSvgWidget_protectedbase_updateMicroFocus".}
proc fcQSvgWidget_protectedbase_create(self: pointer): void {.importc: "QSvgWidget_protectedbase_create".}
proc fcQSvgWidget_protectedbase_destroy(self: pointer): void {.importc: "QSvgWidget_protectedbase_destroy".}
proc fcQSvgWidget_protectedbase_focusNextChild(self: pointer): bool {.importc: "QSvgWidget_protectedbase_focusNextChild".}
proc fcQSvgWidget_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QSvgWidget_protectedbase_focusPreviousChild".}
proc fcQSvgWidget_protectedbase_sender(self: pointer): pointer {.importc: "QSvgWidget_protectedbase_sender".}
proc fcQSvgWidget_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSvgWidget_protectedbase_senderSignalIndex".}
proc fcQSvgWidget_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSvgWidget_protectedbase_receivers".}
proc fcQSvgWidget_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSvgWidget_protectedbase_isSignalConnected".}
proc fcQSvgWidget_new(vtbl, vdata: pointer, parent: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new".}
proc fcQSvgWidget_new2(vtbl, vdata: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new2".}
proc fcQSvgWidget_new3(vtbl, vdata: pointer, file: struct_miqt_string): ptr cQSvgWidget {.importc: "QSvgWidget_new3".}
proc fcQSvgWidget_new4(vtbl, vdata: pointer, file: struct_miqt_string, parent: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new4".}
proc fcQSvgWidget_staticMetaObject(): pointer {.importc: "QSvgWidget_staticMetaObject".}

proc metaObject*(self: gen_qsvgwidget_types.QSvgWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgWidget_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsvgwidget_types.QSvgWidget, param1: cstring): pointer =
  fcQSvgWidget_metacast(self.h, param1)

proc metacall*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring): string =
  let v_ms = fcQSvgWidget_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring): string =
  let v_ms = fcQSvgWidget_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc renderer*(self: gen_qsvgwidget_types.QSvgWidget): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgWidget_renderer(self.h), owned: false)

proc sizeHint*(self: gen_qsvgwidget_types.QSvgWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgWidget_sizeHint(self.h), owned: true)

proc load*(self: gen_qsvgwidget_types.QSvgWidget, file: openArray[char]): void =
  fcQSvgWidget_load(self.h, struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))))

proc load*(self: gen_qsvgwidget_types.QSvgWidget, contents: openArray[byte]): void =
  fcQSvgWidget_loadWithContents(self.h, struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))))

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring): string =
  let v_ms = fcQSvgWidget_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSvgWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring): string =
  let v_ms = fcQSvgWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSvgWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QSvgWidgetenterEventProc* = proc(self: QSvgWidget, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
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
type QSvgWidgetnativeEventProc* = proc(self: QSvgWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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

type QSvgWidgetVTable* {.inheritable, pure.} = object
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

proc QSvgWidgetmetaObject*(self: gen_qsvgwidget_types.QSvgWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgWidget_virtualbase_metaObject(self.h), owned: false)

proc QSvgWidgetmetacast*(self: gen_qsvgwidget_types.QSvgWidget, param1: cstring): pointer =
  fcQSvgWidget_virtualbase_metacast(self.h, param1)

proc QSvgWidgetmetacall*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSvgWidgetsizeHint*(self: gen_qsvgwidget_types.QSvgWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgWidget_virtualbase_sizeHint(self.h), owned: true)

proc QSvgWidgetpaintEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QPaintEvent): void =
  fcQSvgWidget_virtualbase_paintEvent(self.h, event.h)

proc QSvgWidgetdevType*(self: gen_qsvgwidget_types.QSvgWidget): cint =
  fcQSvgWidget_virtualbase_devType(self.h)

proc QSvgWidgetsetVisible*(self: gen_qsvgwidget_types.QSvgWidget, visible: bool): void =
  fcQSvgWidget_virtualbase_setVisible(self.h, visible)

proc QSvgWidgetminimumSizeHint*(self: gen_qsvgwidget_types.QSvgWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgWidget_virtualbase_minimumSizeHint(self.h), owned: true)

proc QSvgWidgetheightForWidth*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): cint =
  fcQSvgWidget_virtualbase_heightForWidth(self.h, param1)

proc QSvgWidgethasHeightForWidth*(self: gen_qsvgwidget_types.QSvgWidget): bool =
  fcQSvgWidget_virtualbase_hasHeightForWidth(self.h)

proc QSvgWidgetpaintEngine*(self: gen_qsvgwidget_types.QSvgWidget): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSvgWidget_virtualbase_paintEngine(self.h), owned: false)

proc QSvgWidgetevent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): bool =
  fcQSvgWidget_virtualbase_event(self.h, event.h)

proc QSvgWidgetmousePressEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQSvgWidget_virtualbase_mousePressEvent(self.h, event.h)

proc QSvgWidgetmouseReleaseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQSvgWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QSvgWidgetmouseDoubleClickEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQSvgWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QSvgWidgetmouseMoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fcQSvgWidget_virtualbase_mouseMoveEvent(self.h, event.h)

proc QSvgWidgetwheelEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QWheelEvent): void =
  fcQSvgWidget_virtualbase_wheelEvent(self.h, event.h)

proc QSvgWidgetkeyPressEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQSvgWidget_virtualbase_keyPressEvent(self.h, event.h)

proc QSvgWidgetkeyReleaseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QKeyEvent): void =
  fcQSvgWidget_virtualbase_keyReleaseEvent(self.h, event.h)

proc QSvgWidgetfocusInEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQSvgWidget_virtualbase_focusInEvent(self.h, event.h)

proc QSvgWidgetfocusOutEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QFocusEvent): void =
  fcQSvgWidget_virtualbase_focusOutEvent(self.h, event.h)

proc QSvgWidgetenterEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQSvgWidget_virtualbase_enterEvent(self.h, event.h)

proc QSvgWidgetleaveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQSvgWidget_virtualbase_leaveEvent(self.h, event.h)

proc QSvgWidgetmoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMoveEvent): void =
  fcQSvgWidget_virtualbase_moveEvent(self.h, event.h)

proc QSvgWidgetresizeEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QResizeEvent): void =
  fcQSvgWidget_virtualbase_resizeEvent(self.h, event.h)

proc QSvgWidgetcloseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QCloseEvent): void =
  fcQSvgWidget_virtualbase_closeEvent(self.h, event.h)

proc QSvgWidgetcontextMenuEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fcQSvgWidget_virtualbase_contextMenuEvent(self.h, event.h)

proc QSvgWidgettabletEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QTabletEvent): void =
  fcQSvgWidget_virtualbase_tabletEvent(self.h, event.h)

proc QSvgWidgetactionEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QActionEvent): void =
  fcQSvgWidget_virtualbase_actionEvent(self.h, event.h)

proc QSvgWidgetdragEnterEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fcQSvgWidget_virtualbase_dragEnterEvent(self.h, event.h)

proc QSvgWidgetdragMoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fcQSvgWidget_virtualbase_dragMoveEvent(self.h, event.h)

proc QSvgWidgetdragLeaveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQSvgWidget_virtualbase_dragLeaveEvent(self.h, event.h)

proc QSvgWidgetdropEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDropEvent): void =
  fcQSvgWidget_virtualbase_dropEvent(self.h, event.h)

proc QSvgWidgetshowEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QShowEvent): void =
  fcQSvgWidget_virtualbase_showEvent(self.h, event.h)

proc QSvgWidgethideEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QHideEvent): void =
  fcQSvgWidget_virtualbase_hideEvent(self.h, event.h)

proc QSvgWidgetnativeEvent*(self: gen_qsvgwidget_types.QSvgWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQSvgWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QSvgWidgetchangeEvent*(self: gen_qsvgwidget_types.QSvgWidget, param1: gen_qcoreevent_types.QEvent): void =
  fcQSvgWidget_virtualbase_changeEvent(self.h, param1.h)

proc QSvgWidgetmetric*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): cint =
  fcQSvgWidget_virtualbase_metric(self.h, cint(param1))

proc QSvgWidgetinitPainter*(self: gen_qsvgwidget_types.QSvgWidget, painter: gen_qpainter_types.QPainter): void =
  fcQSvgWidget_virtualbase_initPainter(self.h, painter.h)

proc QSvgWidgetredirected*(self: gen_qsvgwidget_types.QSvgWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSvgWidget_virtualbase_redirected(self.h, offset.h), owned: false)

proc QSvgWidgetsharedPainter*(self: gen_qsvgwidget_types.QSvgWidget): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSvgWidget_virtualbase_sharedPainter(self.h), owned: false)

proc QSvgWidgetinputMethodEvent*(self: gen_qsvgwidget_types.QSvgWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQSvgWidget_virtualbase_inputMethodEvent(self.h, param1.h)

proc QSvgWidgetinputMethodQuery*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSvgWidget_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QSvgWidgetfocusNextPrevChild*(self: gen_qsvgwidget_types.QSvgWidget, next: bool): bool =
  fcQSvgWidget_virtualbase_focusNextPrevChild(self.h, next)

proc QSvgWidgeteventFilter*(self: gen_qsvgwidget_types.QSvgWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSvgWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSvgWidgettimerEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSvgWidget_virtualbase_timerEvent(self.h, event.h)

proc QSvgWidgetchildEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSvgWidget_virtualbase_childEvent(self.h, event.h)

proc QSvgWidgetcustomEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): void =
  fcQSvgWidget_virtualbase_customEvent(self.h, event.h)

proc QSvgWidgetconnectNotify*(self: gen_qsvgwidget_types.QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSvgWidget_virtualbase_connectNotify(self.h, signal.h)

proc QSvgWidgetdisconnectNotify*(self: gen_qsvgwidget_types.QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSvgWidget_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSvgWidget_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSvgWidget_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSvgWidget_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQSvgWidget_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQSvgWidget_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQSvgWidget_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQSvgWidget_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSvgWidget_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSvgWidget_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQSvgWidget_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQSvgWidget_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQSvgWidget_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSvgWidget_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSvgWidget_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSvgWidget_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgWidgetVTable](fcQSvgWidget_vdata(self))
  let self = QSvgWidget(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSvgWidget* {.inheritable.} = ref object of QSvgWidget
  vtbl*: cQSvgWidgetVTable

method metaObject*(self: VirtualQSvgWidget): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSvgWidgetmetaObject(self[])
method metacast*(self: VirtualQSvgWidget, param1: cstring): pointer {.base.} =
  QSvgWidgetmetacast(self[], param1)
method metacall*(self: VirtualQSvgWidget, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSvgWidgetmetacall(self[], param1, param2, param3)
method sizeHint*(self: VirtualQSvgWidget): gen_qsize_types.QSize {.base.} =
  QSvgWidgetsizeHint(self[])
method paintEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QSvgWidgetpaintEvent(self[], event)
method devType*(self: VirtualQSvgWidget): cint {.base.} =
  QSvgWidgetdevType(self[])
method setVisible*(self: VirtualQSvgWidget, visible: bool): void {.base.} =
  QSvgWidgetsetVisible(self[], visible)
method minimumSizeHint*(self: VirtualQSvgWidget): gen_qsize_types.QSize {.base.} =
  QSvgWidgetminimumSizeHint(self[])
method heightForWidth*(self: VirtualQSvgWidget, param1: cint): cint {.base.} =
  QSvgWidgetheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQSvgWidget): bool {.base.} =
  QSvgWidgethasHeightForWidth(self[])
method paintEngine*(self: VirtualQSvgWidget): gen_qpaintengine_types.QPaintEngine {.base.} =
  QSvgWidgetpaintEngine(self[])
method event*(self: VirtualQSvgWidget, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSvgWidgetevent(self[], event)
method mousePressEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSvgWidgetmousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSvgWidgetmouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSvgWidgetmouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QSvgWidgetmouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QSvgWidgetwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSvgWidgetkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QSvgWidgetkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSvgWidgetfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QSvgWidgetfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQSvgWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSvgWidgetenterEvent(self[], event)
method leaveEvent*(self: VirtualQSvgWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSvgWidgetleaveEvent(self[], event)
method moveEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QSvgWidgetmoveEvent(self[], event)
method resizeEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QSvgWidgetresizeEvent(self[], event)
method closeEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QSvgWidgetcloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QSvgWidgetcontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QSvgWidgettabletEvent(self[], event)
method actionEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QActionEvent): void {.base.} =
  QSvgWidgetactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QSvgWidgetdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QSvgWidgetdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QSvgWidgetdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QDropEvent): void {.base.} =
  QSvgWidgetdropEvent(self[], event)
method showEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QShowEvent): void {.base.} =
  QSvgWidgetshowEvent(self[], event)
method hideEvent*(self: VirtualQSvgWidget, event: gen_qevent_types.QHideEvent): void {.base.} =
  QSvgWidgethideEvent(self[], event)
method nativeEvent*(self: VirtualQSvgWidget, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QSvgWidgetnativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQSvgWidget, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QSvgWidgetchangeEvent(self[], param1)
method metric*(self: VirtualQSvgWidget, param1: cint): cint {.base.} =
  QSvgWidgetmetric(self[], param1)
method initPainter*(self: VirtualQSvgWidget, painter: gen_qpainter_types.QPainter): void {.base.} =
  QSvgWidgetinitPainter(self[], painter)
method redirected*(self: VirtualQSvgWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QSvgWidgetredirected(self[], offset)
method sharedPainter*(self: VirtualQSvgWidget): gen_qpainter_types.QPainter {.base.} =
  QSvgWidgetsharedPainter(self[])
method inputMethodEvent*(self: VirtualQSvgWidget, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QSvgWidgetinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQSvgWidget, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QSvgWidgetinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQSvgWidget, next: bool): bool {.base.} =
  QSvgWidgetfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQSvgWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSvgWidgeteventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSvgWidget, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSvgWidgettimerEvent(self[], event)
method childEvent*(self: VirtualQSvgWidget, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSvgWidgetchildEvent(self[], event)
method customEvent*(self: VirtualQSvgWidget, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSvgWidgetcustomEvent(self[], event)
method connectNotify*(self: VirtualQSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSvgWidgetconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSvgWidgetdisconnectNotify(self[], signal)

proc fcQSvgWidget_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSvgWidget_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSvgWidget_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQSvgWidget_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQSvgWidget_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQSvgWidget_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQSvgWidget_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQSvgWidget_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSvgWidget_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQSvgWidget_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQSvgWidget_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQSvgWidget_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQSvgWidget_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQSvgWidget_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQSvgWidget_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQSvgWidget_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQSvgWidget_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQSvgWidget_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQSvgWidget_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQSvgWidget_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQSvgWidget_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQSvgWidget_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQSvgWidget_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQSvgWidget_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQSvgWidget_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQSvgWidget_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQSvgWidget_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQSvgWidget_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQSvgWidget_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQSvgWidget_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQSvgWidget_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQSvgWidget_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSvgWidget_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQSvgWidget_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQSvgWidget_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQSvgWidget_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQSvgWidget_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSvgWidget_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQSvgWidget_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSvgWidget_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSvgWidget_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSvgWidget_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSvgWidget_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSvgWidget_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSvgWidget](fcQSvgWidget_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qsvgwidget_types.QSvgWidget): void =
  fcQSvgWidget_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qsvgwidget_types.QSvgWidget): void =
  fcQSvgWidget_protectedbase_create(self.h)

proc destroy*(self: gen_qsvgwidget_types.QSvgWidget): void =
  fcQSvgWidget_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qsvgwidget_types.QSvgWidget): bool =
  fcQSvgWidget_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qsvgwidget_types.QSvgWidget): bool =
  fcQSvgWidget_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qsvgwidget_types.QSvgWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSvgWidget_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsvgwidget_types.QSvgWidget): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgWidgetVTable](fcQSvgWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgWidget_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSvgWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSvgWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSvgWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSvgWidget_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSvgWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSvgWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSvgWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSvgWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSvgWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSvgWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSvgWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSvgWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSvgWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSvgWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSvgWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSvgWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSvgWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSvgWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSvgWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSvgWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSvgWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSvgWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSvgWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSvgWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSvgWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSvgWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSvgWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSvgWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSvgWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSvgWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSvgWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSvgWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSvgWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSvgWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSvgWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSvgWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSvgWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSvgWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSvgWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSvgWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgWidget_vtable_callback_disconnectNotify
  gen_qsvgwidget_types.QSvgWidget(h: fcQSvgWidget_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    vtbl: ref QSvgWidgetVTable = nil): gen_qsvgwidget_types.QSvgWidget =
  let vtbl = if vtbl == nil: new QSvgWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgWidgetVTable](fcQSvgWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgWidget_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSvgWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSvgWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSvgWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSvgWidget_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSvgWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSvgWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSvgWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSvgWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSvgWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSvgWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSvgWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSvgWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSvgWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSvgWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSvgWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSvgWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSvgWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSvgWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSvgWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSvgWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSvgWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSvgWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSvgWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSvgWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSvgWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSvgWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSvgWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSvgWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSvgWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSvgWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSvgWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSvgWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSvgWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSvgWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSvgWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSvgWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSvgWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSvgWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSvgWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSvgWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgWidget_vtable_callback_disconnectNotify
  gen_qsvgwidget_types.QSvgWidget(h: fcQSvgWidget_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    file: openArray[char],
    vtbl: ref QSvgWidgetVTable = nil): gen_qsvgwidget_types.QSvgWidget =
  let vtbl = if vtbl == nil: new QSvgWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgWidgetVTable](fcQSvgWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgWidget_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSvgWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSvgWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSvgWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSvgWidget_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSvgWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSvgWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSvgWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSvgWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSvgWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSvgWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSvgWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSvgWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSvgWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSvgWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSvgWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSvgWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSvgWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSvgWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSvgWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSvgWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSvgWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSvgWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSvgWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSvgWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSvgWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSvgWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSvgWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSvgWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSvgWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSvgWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSvgWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSvgWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSvgWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSvgWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSvgWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSvgWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSvgWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSvgWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSvgWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSvgWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgWidget_vtable_callback_disconnectNotify
  gen_qsvgwidget_types.QSvgWidget(h: fcQSvgWidget_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file)))), owned: true)

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    file: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QSvgWidgetVTable = nil): gen_qsvgwidget_types.QSvgWidget =
  let vtbl = if vtbl == nil: new QSvgWidgetVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSvgWidgetVTable](fcQSvgWidget_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSvgWidget_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSvgWidget_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSvgWidget_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSvgWidget_vtable_callback_sizeHint
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQSvgWidget_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQSvgWidget_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQSvgWidget_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQSvgWidget_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSvgWidget_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSvgWidget_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQSvgWidget_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSvgWidget_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQSvgWidget_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQSvgWidget_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQSvgWidget_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQSvgWidget_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQSvgWidget_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQSvgWidget_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQSvgWidget_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQSvgWidget_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQSvgWidget_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQSvgWidget_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQSvgWidget_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQSvgWidget_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQSvgWidget_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQSvgWidget_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQSvgWidget_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQSvgWidget_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQSvgWidget_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQSvgWidget_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQSvgWidget_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQSvgWidget_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQSvgWidget_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQSvgWidget_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQSvgWidget_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQSvgWidget_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQSvgWidget_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQSvgWidget_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQSvgWidget_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQSvgWidget_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQSvgWidget_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQSvgWidget_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQSvgWidget_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQSvgWidget_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSvgWidget_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSvgWidget_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSvgWidget_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSvgWidget_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSvgWidget_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSvgWidget_vtable_callback_disconnectNotify
  gen_qsvgwidget_types.QSvgWidget(h: fcQSvgWidget_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))), parent.h), owned: true)

const cQSvgWidget_mvtbl = cQSvgWidgetVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSvgWidget()[])](self.fcQSvgWidget_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSvgWidget_method_callback_metaObject,
  metacast: fcQSvgWidget_method_callback_metacast,
  metacall: fcQSvgWidget_method_callback_metacall,
  sizeHint: fcQSvgWidget_method_callback_sizeHint,
  paintEvent: fcQSvgWidget_method_callback_paintEvent,
  devType: fcQSvgWidget_method_callback_devType,
  setVisible: fcQSvgWidget_method_callback_setVisible,
  minimumSizeHint: fcQSvgWidget_method_callback_minimumSizeHint,
  heightForWidth: fcQSvgWidget_method_callback_heightForWidth,
  hasHeightForWidth: fcQSvgWidget_method_callback_hasHeightForWidth,
  paintEngine: fcQSvgWidget_method_callback_paintEngine,
  event: fcQSvgWidget_method_callback_event,
  mousePressEvent: fcQSvgWidget_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQSvgWidget_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQSvgWidget_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQSvgWidget_method_callback_mouseMoveEvent,
  wheelEvent: fcQSvgWidget_method_callback_wheelEvent,
  keyPressEvent: fcQSvgWidget_method_callback_keyPressEvent,
  keyReleaseEvent: fcQSvgWidget_method_callback_keyReleaseEvent,
  focusInEvent: fcQSvgWidget_method_callback_focusInEvent,
  focusOutEvent: fcQSvgWidget_method_callback_focusOutEvent,
  enterEvent: fcQSvgWidget_method_callback_enterEvent,
  leaveEvent: fcQSvgWidget_method_callback_leaveEvent,
  moveEvent: fcQSvgWidget_method_callback_moveEvent,
  resizeEvent: fcQSvgWidget_method_callback_resizeEvent,
  closeEvent: fcQSvgWidget_method_callback_closeEvent,
  contextMenuEvent: fcQSvgWidget_method_callback_contextMenuEvent,
  tabletEvent: fcQSvgWidget_method_callback_tabletEvent,
  actionEvent: fcQSvgWidget_method_callback_actionEvent,
  dragEnterEvent: fcQSvgWidget_method_callback_dragEnterEvent,
  dragMoveEvent: fcQSvgWidget_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQSvgWidget_method_callback_dragLeaveEvent,
  dropEvent: fcQSvgWidget_method_callback_dropEvent,
  showEvent: fcQSvgWidget_method_callback_showEvent,
  hideEvent: fcQSvgWidget_method_callback_hideEvent,
  nativeEvent: fcQSvgWidget_method_callback_nativeEvent,
  changeEvent: fcQSvgWidget_method_callback_changeEvent,
  metric: fcQSvgWidget_method_callback_metric,
  initPainter: fcQSvgWidget_method_callback_initPainter,
  redirected: fcQSvgWidget_method_callback_redirected,
  sharedPainter: fcQSvgWidget_method_callback_sharedPainter,
  inputMethodEvent: fcQSvgWidget_method_callback_inputMethodEvent,
  inputMethodQuery: fcQSvgWidget_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQSvgWidget_method_callback_focusNextPrevChild,
  eventFilter: fcQSvgWidget_method_callback_eventFilter,
  timerEvent: fcQSvgWidget_method_callback_timerEvent,
  childEvent: fcQSvgWidget_method_callback_childEvent,
  customEvent: fcQSvgWidget_method_callback_customEvent,
  connectNotify: fcQSvgWidget_method_callback_connectNotify,
  disconnectNotify: fcQSvgWidget_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQSvgWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgWidget_new(addr(cQSvgWidget_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    inst: VirtualQSvgWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgWidget_new2(addr(cQSvgWidget_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    file: openArray[char],
    inst: VirtualQSvgWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgWidget_new3(addr(cQSvgWidget_mvtbl), addr(inst[]), struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))))
  inst[].owned = true

proc create*(T: type gen_qsvgwidget_types.QSvgWidget,
    file: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQSvgWidget) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSvgWidget_new4(addr(cQSvgWidget_mvtbl), addr(inst[]), struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsvgwidget_types.QSvgWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgWidget_staticMetaObject())
