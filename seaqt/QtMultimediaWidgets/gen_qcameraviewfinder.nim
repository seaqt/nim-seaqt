import ./qtmultimediawidgets_pkg

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


{.compile("gen_qcameraviewfinder.cpp", QtMultimediaWidgetsCFlags).}


import ./gen_qcameraviewfinder_types
export gen_qcameraviewfinder_types

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
  ../QtMultimedia/gen_qmediaobject_types,
  ../QtWidgets/gen_qwidget_types,
  ./gen_qvideowidget
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
  gen_qmediaobject_types,
  gen_qwidget_types,
  gen_qvideowidget

type cQCameraViewfinder*{.exportc: "QCameraViewfinder", incompleteStruct.} = object

proc fcQCameraViewfinder_metaObject(self: pointer): pointer {.importc: "QCameraViewfinder_metaObject".}
proc fcQCameraViewfinder_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraViewfinder_metacast".}
proc fcQCameraViewfinder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraViewfinder_metacall".}
proc fcQCameraViewfinder_tr(s: cstring): struct_miqt_string {.importc: "QCameraViewfinder_tr".}
proc fcQCameraViewfinder_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraViewfinder_trUtf8".}
proc fcQCameraViewfinder_mediaObject(self: pointer): pointer {.importc: "QCameraViewfinder_mediaObject".}
proc fcQCameraViewfinder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinder_tr2".}
proc fcQCameraViewfinder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinder_tr3".}
proc fcQCameraViewfinder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinder_trUtf82".}
proc fcQCameraViewfinder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinder_trUtf83".}
proc fcQCameraViewfinder_vtbl(self: pointer): pointer {.importc: "QCameraViewfinder_vtbl".}
proc fcQCameraViewfinder_vdata(self: pointer): pointer {.importc: "QCameraViewfinder_vdata".}

type cQCameraViewfinderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(self: pointer, objectVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQCameraViewfinder_virtualbase_metaObject(self: pointer): pointer {.importc: "QCameraViewfinder_virtualbase_metaObject".}
proc fcQCameraViewfinder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraViewfinder_virtualbase_metacast".}
proc fcQCameraViewfinder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraViewfinder_virtualbase_metacall".}
proc fcQCameraViewfinder_virtualbase_mediaObject(self: pointer): pointer {.importc: "QCameraViewfinder_virtualbase_mediaObject".}
proc fcQCameraViewfinder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool {.importc: "QCameraViewfinder_virtualbase_setMediaObject".}
proc fcQCameraViewfinder_virtualbase_sizeHint(self: pointer): pointer {.importc: "QCameraViewfinder_virtualbase_sizeHint".}
proc fcQCameraViewfinder_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCameraViewfinder_virtualbase_event".}
proc fcQCameraViewfinder_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_showEvent".}
proc fcQCameraViewfinder_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_hideEvent".}
proc fcQCameraViewfinder_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_resizeEvent".}
proc fcQCameraViewfinder_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_moveEvent".}
proc fcQCameraViewfinder_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_paintEvent".}
proc fcQCameraViewfinder_virtualbase_devType(self: pointer): cint {.importc: "QCameraViewfinder_virtualbase_devType".}
proc fcQCameraViewfinder_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QCameraViewfinder_virtualbase_setVisible".}
proc fcQCameraViewfinder_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QCameraViewfinder_virtualbase_minimumSizeHint".}
proc fcQCameraViewfinder_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCameraViewfinder_virtualbase_heightForWidth".}
proc fcQCameraViewfinder_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QCameraViewfinder_virtualbase_hasHeightForWidth".}
proc fcQCameraViewfinder_virtualbase_paintEngine(self: pointer): pointer {.importc: "QCameraViewfinder_virtualbase_paintEngine".}
proc fcQCameraViewfinder_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_mousePressEvent".}
proc fcQCameraViewfinder_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_mouseReleaseEvent".}
proc fcQCameraViewfinder_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_mouseDoubleClickEvent".}
proc fcQCameraViewfinder_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_mouseMoveEvent".}
proc fcQCameraViewfinder_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_wheelEvent".}
proc fcQCameraViewfinder_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_keyPressEvent".}
proc fcQCameraViewfinder_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_keyReleaseEvent".}
proc fcQCameraViewfinder_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_focusInEvent".}
proc fcQCameraViewfinder_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_focusOutEvent".}
proc fcQCameraViewfinder_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_enterEvent".}
proc fcQCameraViewfinder_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_leaveEvent".}
proc fcQCameraViewfinder_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_closeEvent".}
proc fcQCameraViewfinder_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_contextMenuEvent".}
proc fcQCameraViewfinder_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_tabletEvent".}
proc fcQCameraViewfinder_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_actionEvent".}
proc fcQCameraViewfinder_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_dragEnterEvent".}
proc fcQCameraViewfinder_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_dragMoveEvent".}
proc fcQCameraViewfinder_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_dragLeaveEvent".}
proc fcQCameraViewfinder_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_dropEvent".}
proc fcQCameraViewfinder_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QCameraViewfinder_virtualbase_nativeEvent".}
proc fcQCameraViewfinder_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QCameraViewfinder_virtualbase_changeEvent".}
proc fcQCameraViewfinder_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QCameraViewfinder_virtualbase_metric".}
proc fcQCameraViewfinder_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QCameraViewfinder_virtualbase_initPainter".}
proc fcQCameraViewfinder_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QCameraViewfinder_virtualbase_redirected".}
proc fcQCameraViewfinder_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QCameraViewfinder_virtualbase_sharedPainter".}
proc fcQCameraViewfinder_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QCameraViewfinder_virtualbase_inputMethodEvent".}
proc fcQCameraViewfinder_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QCameraViewfinder_virtualbase_inputMethodQuery".}
proc fcQCameraViewfinder_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QCameraViewfinder_virtualbase_focusNextPrevChild".}
proc fcQCameraViewfinder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCameraViewfinder_virtualbase_eventFilter".}
proc fcQCameraViewfinder_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_timerEvent".}
proc fcQCameraViewfinder_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_childEvent".}
proc fcQCameraViewfinder_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_customEvent".}
proc fcQCameraViewfinder_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCameraViewfinder_virtualbase_connectNotify".}
proc fcQCameraViewfinder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCameraViewfinder_virtualbase_disconnectNotify".}
proc fcQCameraViewfinder_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QCameraViewfinder_protectedbase_updateMicroFocus".}
proc fcQCameraViewfinder_protectedbase_create(self: pointer): void {.importc: "QCameraViewfinder_protectedbase_create".}
proc fcQCameraViewfinder_protectedbase_destroy(self: pointer): void {.importc: "QCameraViewfinder_protectedbase_destroy".}
proc fcQCameraViewfinder_protectedbase_focusNextChild(self: pointer): bool {.importc: "QCameraViewfinder_protectedbase_focusNextChild".}
proc fcQCameraViewfinder_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QCameraViewfinder_protectedbase_focusPreviousChild".}
proc fcQCameraViewfinder_protectedbase_sender(self: pointer): pointer {.importc: "QCameraViewfinder_protectedbase_sender".}
proc fcQCameraViewfinder_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QCameraViewfinder_protectedbase_senderSignalIndex".}
proc fcQCameraViewfinder_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraViewfinder_protectedbase_receivers".}
proc fcQCameraViewfinder_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraViewfinder_protectedbase_isSignalConnected".}
proc fcQCameraViewfinder_new(vtbl, vdata: pointer, parent: pointer): ptr cQCameraViewfinder {.importc: "QCameraViewfinder_new".}
proc fcQCameraViewfinder_new2(vtbl, vdata: pointer): ptr cQCameraViewfinder {.importc: "QCameraViewfinder_new2".}
proc fcQCameraViewfinder_staticMetaObject(): pointer {.importc: "QCameraViewfinder_staticMetaObject".}

proc metaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraViewfinder_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cstring): pointer =
  fcQCameraViewfinder_metacast(self.h, param1)

proc metacall*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraViewfinder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring): string =
  let v_ms = fcQCameraViewfinder_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring): string =
  let v_ms = fcQCameraViewfinder_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQCameraViewfinder_mediaObject(self.h), owned: false)

proc tr*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring, c: cstring): string =
  let v_ms = fcQCameraViewfinder_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraViewfinder_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring, c: cstring): string =
  let v_ms = fcQCameraViewfinder_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraViewfinder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QCameraViewfindermetaObjectProc* = proc(self: QCameraViewfinder): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QCameraViewfindermetacastProc* = proc(self: QCameraViewfinder, param1: cstring): pointer {.raises: [], gcsafe.}
type QCameraViewfindermetacallProc* = proc(self: QCameraViewfinder, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QCameraViewfindermediaObjectProc* = proc(self: QCameraViewfinder): gen_qmediaobject_types.QMediaObject {.raises: [], gcsafe.}
type QCameraViewfindersetMediaObjectProc* = proc(self: QCameraViewfinder, objectVal: gen_qmediaobject_types.QMediaObject): bool {.raises: [], gcsafe.}
type QCameraViewfindersizeHintProc* = proc(self: QCameraViewfinder): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCameraViewfindereventProc* = proc(self: QCameraViewfinder, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCameraViewfindershowEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderhideEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderresizeEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QCameraViewfindermoveEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderpaintEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderdevTypeProc* = proc(self: QCameraViewfinder): cint {.raises: [], gcsafe.}
type QCameraViewfindersetVisibleProc* = proc(self: QCameraViewfinder, visible: bool): void {.raises: [], gcsafe.}
type QCameraViewfinderminimumSizeHintProc* = proc(self: QCameraViewfinder): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QCameraViewfinderheightForWidthProc* = proc(self: QCameraViewfinder, param1: cint): cint {.raises: [], gcsafe.}
type QCameraViewfinderhasHeightForWidthProc* = proc(self: QCameraViewfinder): bool {.raises: [], gcsafe.}
type QCameraViewfinderpaintEngineProc* = proc(self: QCameraViewfinder): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QCameraViewfindermousePressEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCameraViewfindermouseReleaseEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCameraViewfindermouseDoubleClickEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCameraViewfindermouseMoveEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderwheelEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderkeyPressEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderkeyReleaseEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderfocusInEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderfocusOutEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderenterEventProc* = proc(self: QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderleaveEventProc* = proc(self: QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCameraViewfindercloseEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QCameraViewfindercontextMenuEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QCameraViewfindertabletEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderactionEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderdragEnterEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderdragMoveEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderdragLeaveEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderdropEventProc* = proc(self: QCameraViewfinder, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QCameraViewfindernativeEventProc* = proc(self: QCameraViewfinder, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QCameraViewfinderchangeEventProc* = proc(self: QCameraViewfinder, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCameraViewfindermetricProc* = proc(self: QCameraViewfinder, param1: cint): cint {.raises: [], gcsafe.}
type QCameraViewfinderinitPainterProc* = proc(self: QCameraViewfinder, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QCameraViewfinderredirectedProc* = proc(self: QCameraViewfinder, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QCameraViewfindersharedPainterProc* = proc(self: QCameraViewfinder): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QCameraViewfinderinputMethodEventProc* = proc(self: QCameraViewfinder, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderinputMethodQueryProc* = proc(self: QCameraViewfinder, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QCameraViewfinderfocusNextPrevChildProc* = proc(self: QCameraViewfinder, next: bool): bool {.raises: [], gcsafe.}
type QCameraViewfindereventFilterProc* = proc(self: QCameraViewfinder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QCameraViewfindertimerEventProc* = proc(self: QCameraViewfinder, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderchildEventProc* = proc(self: QCameraViewfinder, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QCameraViewfindercustomEventProc* = proc(self: QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QCameraViewfinderconnectNotifyProc* = proc(self: QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QCameraViewfinderdisconnectNotifyProc* = proc(self: QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QCameraViewfinderVTable* {.inheritable, pure.} = object
  vtbl: cQCameraViewfinderVTable
  metaObject*: QCameraViewfindermetaObjectProc
  metacast*: QCameraViewfindermetacastProc
  metacall*: QCameraViewfindermetacallProc
  mediaObject*: QCameraViewfindermediaObjectProc
  setMediaObject*: QCameraViewfindersetMediaObjectProc
  sizeHint*: QCameraViewfindersizeHintProc
  event*: QCameraViewfindereventProc
  showEvent*: QCameraViewfindershowEventProc
  hideEvent*: QCameraViewfinderhideEventProc
  resizeEvent*: QCameraViewfinderresizeEventProc
  moveEvent*: QCameraViewfindermoveEventProc
  paintEvent*: QCameraViewfinderpaintEventProc
  devType*: QCameraViewfinderdevTypeProc
  setVisible*: QCameraViewfindersetVisibleProc
  minimumSizeHint*: QCameraViewfinderminimumSizeHintProc
  heightForWidth*: QCameraViewfinderheightForWidthProc
  hasHeightForWidth*: QCameraViewfinderhasHeightForWidthProc
  paintEngine*: QCameraViewfinderpaintEngineProc
  mousePressEvent*: QCameraViewfindermousePressEventProc
  mouseReleaseEvent*: QCameraViewfindermouseReleaseEventProc
  mouseDoubleClickEvent*: QCameraViewfindermouseDoubleClickEventProc
  mouseMoveEvent*: QCameraViewfindermouseMoveEventProc
  wheelEvent*: QCameraViewfinderwheelEventProc
  keyPressEvent*: QCameraViewfinderkeyPressEventProc
  keyReleaseEvent*: QCameraViewfinderkeyReleaseEventProc
  focusInEvent*: QCameraViewfinderfocusInEventProc
  focusOutEvent*: QCameraViewfinderfocusOutEventProc
  enterEvent*: QCameraViewfinderenterEventProc
  leaveEvent*: QCameraViewfinderleaveEventProc
  closeEvent*: QCameraViewfindercloseEventProc
  contextMenuEvent*: QCameraViewfindercontextMenuEventProc
  tabletEvent*: QCameraViewfindertabletEventProc
  actionEvent*: QCameraViewfinderactionEventProc
  dragEnterEvent*: QCameraViewfinderdragEnterEventProc
  dragMoveEvent*: QCameraViewfinderdragMoveEventProc
  dragLeaveEvent*: QCameraViewfinderdragLeaveEventProc
  dropEvent*: QCameraViewfinderdropEventProc
  nativeEvent*: QCameraViewfindernativeEventProc
  changeEvent*: QCameraViewfinderchangeEventProc
  metric*: QCameraViewfindermetricProc
  initPainter*: QCameraViewfinderinitPainterProc
  redirected*: QCameraViewfinderredirectedProc
  sharedPainter*: QCameraViewfindersharedPainterProc
  inputMethodEvent*: QCameraViewfinderinputMethodEventProc
  inputMethodQuery*: QCameraViewfinderinputMethodQueryProc
  focusNextPrevChild*: QCameraViewfinderfocusNextPrevChildProc
  eventFilter*: QCameraViewfindereventFilterProc
  timerEvent*: QCameraViewfindertimerEventProc
  childEvent*: QCameraViewfinderchildEventProc
  customEvent*: QCameraViewfindercustomEventProc
  connectNotify*: QCameraViewfinderconnectNotifyProc
  disconnectNotify*: QCameraViewfinderdisconnectNotifyProc

proc QCameraViewfindermetaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraViewfinder_virtualbase_metaObject(self.h), owned: false)

proc QCameraViewfindermetacast*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cstring): pointer =
  fcQCameraViewfinder_virtualbase_metacast(self.h, param1)

proc QCameraViewfindermetacall*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraViewfinder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QCameraViewfindermediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQCameraViewfinder_virtualbase_mediaObject(self.h), owned: false)

proc QCameraViewfindersetMediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fcQCameraViewfinder_virtualbase_setMediaObject(self.h, objectVal.h)

proc QCameraViewfindersizeHint*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraViewfinder_virtualbase_sizeHint(self.h), owned: true)

proc QCameraViewfinderevent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): bool =
  fcQCameraViewfinder_virtualbase_event(self.h, event.h)

proc QCameraViewfindershowEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QShowEvent): void =
  fcQCameraViewfinder_virtualbase_showEvent(self.h, event.h)

proc QCameraViewfinderhideEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QHideEvent): void =
  fcQCameraViewfinder_virtualbase_hideEvent(self.h, event.h)

proc QCameraViewfinderresizeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QResizeEvent): void =
  fcQCameraViewfinder_virtualbase_resizeEvent(self.h, event.h)

proc QCameraViewfindermoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMoveEvent): void =
  fcQCameraViewfinder_virtualbase_moveEvent(self.h, event.h)

proc QCameraViewfinderpaintEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QPaintEvent): void =
  fcQCameraViewfinder_virtualbase_paintEvent(self.h, event.h)

proc QCameraViewfinderdevType*(self: gen_qcameraviewfinder_types.QCameraViewfinder): cint =
  fcQCameraViewfinder_virtualbase_devType(self.h)

proc QCameraViewfindersetVisible*(self: gen_qcameraviewfinder_types.QCameraViewfinder, visible: bool): void =
  fcQCameraViewfinder_virtualbase_setVisible(self.h, visible)

proc QCameraViewfinderminimumSizeHint*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraViewfinder_virtualbase_minimumSizeHint(self.h), owned: true)

proc QCameraViewfinderheightForWidth*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): cint =
  fcQCameraViewfinder_virtualbase_heightForWidth(self.h, param1)

proc QCameraViewfinderhasHeightForWidth*(self: gen_qcameraviewfinder_types.QCameraViewfinder): bool =
  fcQCameraViewfinder_virtualbase_hasHeightForWidth(self.h)

proc QCameraViewfinderpaintEngine*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQCameraViewfinder_virtualbase_paintEngine(self.h), owned: false)

proc QCameraViewfindermousePressEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fcQCameraViewfinder_virtualbase_mousePressEvent(self.h, event.h)

proc QCameraViewfindermouseReleaseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fcQCameraViewfinder_virtualbase_mouseReleaseEvent(self.h, event.h)

proc QCameraViewfindermouseDoubleClickEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fcQCameraViewfinder_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc QCameraViewfindermouseMoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fcQCameraViewfinder_virtualbase_mouseMoveEvent(self.h, event.h)

proc QCameraViewfinderwheelEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QWheelEvent): void =
  fcQCameraViewfinder_virtualbase_wheelEvent(self.h, event.h)

proc QCameraViewfinderkeyPressEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QKeyEvent): void =
  fcQCameraViewfinder_virtualbase_keyPressEvent(self.h, event.h)

proc QCameraViewfinderkeyReleaseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QKeyEvent): void =
  fcQCameraViewfinder_virtualbase_keyReleaseEvent(self.h, event.h)

proc QCameraViewfinderfocusInEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QFocusEvent): void =
  fcQCameraViewfinder_virtualbase_focusInEvent(self.h, event.h)

proc QCameraViewfinderfocusOutEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QFocusEvent): void =
  fcQCameraViewfinder_virtualbase_focusOutEvent(self.h, event.h)

proc QCameraViewfinderenterEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fcQCameraViewfinder_virtualbase_enterEvent(self.h, event.h)

proc QCameraViewfinderleaveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fcQCameraViewfinder_virtualbase_leaveEvent(self.h, event.h)

proc QCameraViewfindercloseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QCloseEvent): void =
  fcQCameraViewfinder_virtualbase_closeEvent(self.h, event.h)

proc QCameraViewfindercontextMenuEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QContextMenuEvent): void =
  fcQCameraViewfinder_virtualbase_contextMenuEvent(self.h, event.h)

proc QCameraViewfindertabletEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QTabletEvent): void =
  fcQCameraViewfinder_virtualbase_tabletEvent(self.h, event.h)

proc QCameraViewfinderactionEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QActionEvent): void =
  fcQCameraViewfinder_virtualbase_actionEvent(self.h, event.h)

proc QCameraViewfinderdragEnterEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragEnterEvent): void =
  fcQCameraViewfinder_virtualbase_dragEnterEvent(self.h, event.h)

proc QCameraViewfinderdragMoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragMoveEvent): void =
  fcQCameraViewfinder_virtualbase_dragMoveEvent(self.h, event.h)

proc QCameraViewfinderdragLeaveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQCameraViewfinder_virtualbase_dragLeaveEvent(self.h, event.h)

proc QCameraViewfinderdropEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDropEvent): void =
  fcQCameraViewfinder_virtualbase_dropEvent(self.h, event.h)

proc QCameraViewfindernativeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQCameraViewfinder_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc QCameraViewfinderchangeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: gen_qcoreevent_types.QEvent): void =
  fcQCameraViewfinder_virtualbase_changeEvent(self.h, param1.h)

proc QCameraViewfindermetric*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): cint =
  fcQCameraViewfinder_virtualbase_metric(self.h, cint(param1))

proc QCameraViewfinderinitPainter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, painter: gen_qpainter_types.QPainter): void =
  fcQCameraViewfinder_virtualbase_initPainter(self.h, painter.h)

proc QCameraViewfinderredirected*(self: gen_qcameraviewfinder_types.QCameraViewfinder, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQCameraViewfinder_virtualbase_redirected(self.h, offset.h), owned: false)

proc QCameraViewfindersharedPainter*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQCameraViewfinder_virtualbase_sharedPainter(self.h), owned: false)

proc QCameraViewfinderinputMethodEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQCameraViewfinder_virtualbase_inputMethodEvent(self.h, param1.h)

proc QCameraViewfinderinputMethodQuery*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCameraViewfinder_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc QCameraViewfinderfocusNextPrevChild*(self: gen_qcameraviewfinder_types.QCameraViewfinder, next: bool): bool =
  fcQCameraViewfinder_virtualbase_focusNextPrevChild(self.h, next)

proc QCameraViewfindereventFilter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCameraViewfinder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QCameraViewfindertimerEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCameraViewfinder_virtualbase_timerEvent(self.h, event.h)

proc QCameraViewfinderchildEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCameraViewfinder_virtualbase_childEvent(self.h, event.h)

proc QCameraViewfindercustomEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fcQCameraViewfinder_virtualbase_customEvent(self.h, event.h)

proc QCameraViewfinderconnectNotify*(self: gen_qcameraviewfinder_types.QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCameraViewfinder_virtualbase_connectNotify(self.h, signal.h)

proc QCameraViewfinderdisconnectNotify*(self: gen_qcameraviewfinder_types.QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCameraViewfinder_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQCameraViewfinder_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_vtable_callback_setMediaObject(self: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQCameraViewfinder_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQCameraViewfinder_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQCameraViewfinder* {.inheritable.} = ref object of QCameraViewfinder
  vtbl*: cQCameraViewfinderVTable

method metaObject*(self: VirtualQCameraViewfinder): gen_qobjectdefs_types.QMetaObject {.base.} =
  QCameraViewfindermetaObject(self[])
method metacast*(self: VirtualQCameraViewfinder, param1: cstring): pointer {.base.} =
  QCameraViewfindermetacast(self[], param1)
method metacall*(self: VirtualQCameraViewfinder, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QCameraViewfindermetacall(self[], param1, param2, param3)
method mediaObject*(self: VirtualQCameraViewfinder): gen_qmediaobject_types.QMediaObject {.base.} =
  QCameraViewfindermediaObject(self[])
method setMediaObject*(self: VirtualQCameraViewfinder, objectVal: gen_qmediaobject_types.QMediaObject): bool {.base.} =
  QCameraViewfindersetMediaObject(self[], objectVal)
method sizeHint*(self: VirtualQCameraViewfinder): gen_qsize_types.QSize {.base.} =
  QCameraViewfindersizeHint(self[])
method event*(self: VirtualQCameraViewfinder, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCameraViewfinderevent(self[], event)
method showEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QShowEvent): void {.base.} =
  QCameraViewfindershowEvent(self[], event)
method hideEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QHideEvent): void {.base.} =
  QCameraViewfinderhideEvent(self[], event)
method resizeEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QCameraViewfinderresizeEvent(self[], event)
method moveEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QCameraViewfindermoveEvent(self[], event)
method paintEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QCameraViewfinderpaintEvent(self[], event)
method devType*(self: VirtualQCameraViewfinder): cint {.base.} =
  QCameraViewfinderdevType(self[])
method setVisible*(self: VirtualQCameraViewfinder, visible: bool): void {.base.} =
  QCameraViewfindersetVisible(self[], visible)
method minimumSizeHint*(self: VirtualQCameraViewfinder): gen_qsize_types.QSize {.base.} =
  QCameraViewfinderminimumSizeHint(self[])
method heightForWidth*(self: VirtualQCameraViewfinder, param1: cint): cint {.base.} =
  QCameraViewfinderheightForWidth(self[], param1)
method hasHeightForWidth*(self: VirtualQCameraViewfinder): bool {.base.} =
  QCameraViewfinderhasHeightForWidth(self[])
method paintEngine*(self: VirtualQCameraViewfinder): gen_qpaintengine_types.QPaintEngine {.base.} =
  QCameraViewfinderpaintEngine(self[])
method mousePressEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCameraViewfindermousePressEvent(self[], event)
method mouseReleaseEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCameraViewfindermouseReleaseEvent(self[], event)
method mouseDoubleClickEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCameraViewfindermouseDoubleClickEvent(self[], event)
method mouseMoveEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QCameraViewfindermouseMoveEvent(self[], event)
method wheelEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QCameraViewfinderwheelEvent(self[], event)
method keyPressEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QCameraViewfinderkeyPressEvent(self[], event)
method keyReleaseEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QCameraViewfinderkeyReleaseEvent(self[], event)
method focusInEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QCameraViewfinderfocusInEvent(self[], event)
method focusOutEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QCameraViewfinderfocusOutEvent(self[], event)
method enterEvent*(self: VirtualQCameraViewfinder, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCameraViewfinderenterEvent(self[], event)
method leaveEvent*(self: VirtualQCameraViewfinder, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCameraViewfinderleaveEvent(self[], event)
method closeEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QCameraViewfindercloseEvent(self[], event)
method contextMenuEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QCameraViewfindercontextMenuEvent(self[], event)
method tabletEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QCameraViewfindertabletEvent(self[], event)
method actionEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QActionEvent): void {.base.} =
  QCameraViewfinderactionEvent(self[], event)
method dragEnterEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QCameraViewfinderdragEnterEvent(self[], event)
method dragMoveEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QCameraViewfinderdragMoveEvent(self[], event)
method dragLeaveEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QCameraViewfinderdragLeaveEvent(self[], event)
method dropEvent*(self: VirtualQCameraViewfinder, event: gen_qevent_types.QDropEvent): void {.base.} =
  QCameraViewfinderdropEvent(self[], event)
method nativeEvent*(self: VirtualQCameraViewfinder, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QCameraViewfindernativeEvent(self[], eventType, message, resultVal)
method changeEvent*(self: VirtualQCameraViewfinder, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QCameraViewfinderchangeEvent(self[], param1)
method metric*(self: VirtualQCameraViewfinder, param1: cint): cint {.base.} =
  QCameraViewfindermetric(self[], param1)
method initPainter*(self: VirtualQCameraViewfinder, painter: gen_qpainter_types.QPainter): void {.base.} =
  QCameraViewfinderinitPainter(self[], painter)
method redirected*(self: VirtualQCameraViewfinder, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QCameraViewfinderredirected(self[], offset)
method sharedPainter*(self: VirtualQCameraViewfinder): gen_qpainter_types.QPainter {.base.} =
  QCameraViewfindersharedPainter(self[])
method inputMethodEvent*(self: VirtualQCameraViewfinder, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QCameraViewfinderinputMethodEvent(self[], param1)
method inputMethodQuery*(self: VirtualQCameraViewfinder, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QCameraViewfinderinputMethodQuery(self[], param1)
method focusNextPrevChild*(self: VirtualQCameraViewfinder, next: bool): bool {.base.} =
  QCameraViewfinderfocusNextPrevChild(self[], next)
method eventFilter*(self: VirtualQCameraViewfinder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QCameraViewfindereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQCameraViewfinder, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QCameraViewfindertimerEvent(self[], event)
method childEvent*(self: VirtualQCameraViewfinder, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QCameraViewfinderchildEvent(self[], event)
method customEvent*(self: VirtualQCameraViewfinder, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QCameraViewfindercustomEvent(self[], event)
method connectNotify*(self: VirtualQCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCameraViewfinderconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QCameraViewfinderdisconnectNotify(self[], signal)

proc fcQCameraViewfinder_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQCameraViewfinder_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCameraViewfinder_method_callback_mediaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var virtualReturn = inst.mediaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_method_callback_setMediaObject(self: pointer, objectVal: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal, owned: false)
  var virtualReturn = inst.setMediaObject(slotval1)
  virtualReturn

proc fcQCameraViewfinder_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQCameraViewfinder_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

proc fcQCameraViewfinder_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

proc fcQCameraViewfinder_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

proc fcQCameraViewfinder_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

proc fcQCameraViewfinder_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

proc fcQCameraViewfinder_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

proc fcQCameraViewfinder_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

proc fcQCameraViewfinder_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQCameraViewfinder_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQCameraViewfinder_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

proc fcQCameraViewfinder_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

proc fcQCameraViewfinder_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

proc fcQCameraViewfinder_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

proc fcQCameraViewfinder_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

proc fcQCameraViewfinder_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

proc fcQCameraViewfinder_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

proc fcQCameraViewfinder_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

proc fcQCameraViewfinder_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

proc fcQCameraViewfinder_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

proc fcQCameraViewfinder_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

proc fcQCameraViewfinder_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

proc fcQCameraViewfinder_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

proc fcQCameraViewfinder_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

proc fcQCameraViewfinder_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

proc fcQCameraViewfinder_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

proc fcQCameraViewfinder_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

proc fcQCameraViewfinder_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

proc fcQCameraViewfinder_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

proc fcQCameraViewfinder_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQCameraViewfinder_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

proc fcQCameraViewfinder_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

proc fcQCameraViewfinder_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

proc fcQCameraViewfinder_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

proc fcQCameraViewfinder_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQCameraViewfinder_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

proc fcQCameraViewfinder_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQCameraViewfinder_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQCameraViewfinder_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQCameraViewfinder_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQCameraViewfinder_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQCameraViewfinder_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQCameraViewfinder](fcQCameraViewfinder_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc updateMicroFocus*(self: gen_qcameraviewfinder_types.QCameraViewfinder): void =
  fcQCameraViewfinder_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qcameraviewfinder_types.QCameraViewfinder): void =
  fcQCameraViewfinder_protectedbase_create(self.h)

proc destroy*(self: gen_qcameraviewfinder_types.QCameraViewfinder): void =
  fcQCameraViewfinder_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcameraviewfinder_types.QCameraViewfinder): bool =
  fcQCameraViewfinder_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcameraviewfinder_types.QCameraViewfinder): bool =
  fcQCameraViewfinder_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcameraviewfinder_types.QCameraViewfinder): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraViewfinder_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcameraviewfinder_types.QCameraViewfinder): cint =
  fcQCameraViewfinder_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcameraviewfinder_types.QCameraViewfinder, signal: cstring): cint =
  fcQCameraViewfinder_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcameraviewfinder_types.QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQCameraViewfinder_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcameraviewfinder_types.QCameraViewfinder,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QCameraViewfinderVTable = nil): gen_qcameraviewfinder_types.QCameraViewfinder =
  let vtbl = if vtbl == nil: new QCameraViewfinderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCameraViewfinder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCameraViewfinder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCameraViewfinder_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = fcQCameraViewfinder_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = fcQCameraViewfinder_vtable_callback_setMediaObject
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQCameraViewfinder_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCameraViewfinder_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQCameraViewfinder_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQCameraViewfinder_vtable_callback_hideEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQCameraViewfinder_vtable_callback_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQCameraViewfinder_vtable_callback_moveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQCameraViewfinder_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQCameraViewfinder_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQCameraViewfinder_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQCameraViewfinder_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQCameraViewfinder_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQCameraViewfinder_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQCameraViewfinder_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQCameraViewfinder_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQCameraViewfinder_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQCameraViewfinder_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQCameraViewfinder_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQCameraViewfinder_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQCameraViewfinder_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQCameraViewfinder_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQCameraViewfinder_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQCameraViewfinder_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQCameraViewfinder_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQCameraViewfinder_vtable_callback_leaveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQCameraViewfinder_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQCameraViewfinder_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQCameraViewfinder_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQCameraViewfinder_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQCameraViewfinder_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQCameraViewfinder_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQCameraViewfinder_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQCameraViewfinder_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQCameraViewfinder_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQCameraViewfinder_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQCameraViewfinder_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQCameraViewfinder_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQCameraViewfinder_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQCameraViewfinder_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQCameraViewfinder_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQCameraViewfinder_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQCameraViewfinder_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCameraViewfinder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCameraViewfinder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCameraViewfinder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCameraViewfinder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCameraViewfinder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCameraViewfinder_vtable_callback_disconnectNotify
  gen_qcameraviewfinder_types.QCameraViewfinder(h: fcQCameraViewfinder_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qcameraviewfinder_types.QCameraViewfinder,
    vtbl: ref QCameraViewfinderVTable = nil): gen_qcameraviewfinder_types.QCameraViewfinder =
  let vtbl = if vtbl == nil: new QCameraViewfinderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QCameraViewfinderVTable](fcQCameraViewfinder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQCameraViewfinder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQCameraViewfinder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQCameraViewfinder_vtable_callback_metacall
  if not isNil(vtbl[].mediaObject):
    vtbl[].vtbl.mediaObject = fcQCameraViewfinder_vtable_callback_mediaObject
  if not isNil(vtbl[].setMediaObject):
    vtbl[].vtbl.setMediaObject = fcQCameraViewfinder_vtable_callback_setMediaObject
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQCameraViewfinder_vtable_callback_sizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQCameraViewfinder_vtable_callback_event
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = fcQCameraViewfinder_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = fcQCameraViewfinder_vtable_callback_hideEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = fcQCameraViewfinder_vtable_callback_resizeEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = fcQCameraViewfinder_vtable_callback_moveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = fcQCameraViewfinder_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = fcQCameraViewfinder_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = fcQCameraViewfinder_vtable_callback_setVisible
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = fcQCameraViewfinder_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQCameraViewfinder_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQCameraViewfinder_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = fcQCameraViewfinder_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = fcQCameraViewfinder_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = fcQCameraViewfinder_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = fcQCameraViewfinder_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = fcQCameraViewfinder_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = fcQCameraViewfinder_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = fcQCameraViewfinder_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = fcQCameraViewfinder_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = fcQCameraViewfinder_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = fcQCameraViewfinder_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = fcQCameraViewfinder_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = fcQCameraViewfinder_vtable_callback_leaveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = fcQCameraViewfinder_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = fcQCameraViewfinder_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = fcQCameraViewfinder_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = fcQCameraViewfinder_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = fcQCameraViewfinder_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = fcQCameraViewfinder_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = fcQCameraViewfinder_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = fcQCameraViewfinder_vtable_callback_dropEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = fcQCameraViewfinder_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = fcQCameraViewfinder_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = fcQCameraViewfinder_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = fcQCameraViewfinder_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = fcQCameraViewfinder_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = fcQCameraViewfinder_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = fcQCameraViewfinder_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = fcQCameraViewfinder_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = fcQCameraViewfinder_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQCameraViewfinder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQCameraViewfinder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQCameraViewfinder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQCameraViewfinder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQCameraViewfinder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQCameraViewfinder_vtable_callback_disconnectNotify
  gen_qcameraviewfinder_types.QCameraViewfinder(h: fcQCameraViewfinder_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQCameraViewfinder_mvtbl = cQCameraViewfinderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQCameraViewfinder()[])](self.fcQCameraViewfinder_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQCameraViewfinder_method_callback_metaObject,
  metacast: fcQCameraViewfinder_method_callback_metacast,
  metacall: fcQCameraViewfinder_method_callback_metacall,
  mediaObject: fcQCameraViewfinder_method_callback_mediaObject,
  setMediaObject: fcQCameraViewfinder_method_callback_setMediaObject,
  sizeHint: fcQCameraViewfinder_method_callback_sizeHint,
  event: fcQCameraViewfinder_method_callback_event,
  showEvent: fcQCameraViewfinder_method_callback_showEvent,
  hideEvent: fcQCameraViewfinder_method_callback_hideEvent,
  resizeEvent: fcQCameraViewfinder_method_callback_resizeEvent,
  moveEvent: fcQCameraViewfinder_method_callback_moveEvent,
  paintEvent: fcQCameraViewfinder_method_callback_paintEvent,
  devType: fcQCameraViewfinder_method_callback_devType,
  setVisible: fcQCameraViewfinder_method_callback_setVisible,
  minimumSizeHint: fcQCameraViewfinder_method_callback_minimumSizeHint,
  heightForWidth: fcQCameraViewfinder_method_callback_heightForWidth,
  hasHeightForWidth: fcQCameraViewfinder_method_callback_hasHeightForWidth,
  paintEngine: fcQCameraViewfinder_method_callback_paintEngine,
  mousePressEvent: fcQCameraViewfinder_method_callback_mousePressEvent,
  mouseReleaseEvent: fcQCameraViewfinder_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: fcQCameraViewfinder_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: fcQCameraViewfinder_method_callback_mouseMoveEvent,
  wheelEvent: fcQCameraViewfinder_method_callback_wheelEvent,
  keyPressEvent: fcQCameraViewfinder_method_callback_keyPressEvent,
  keyReleaseEvent: fcQCameraViewfinder_method_callback_keyReleaseEvent,
  focusInEvent: fcQCameraViewfinder_method_callback_focusInEvent,
  focusOutEvent: fcQCameraViewfinder_method_callback_focusOutEvent,
  enterEvent: fcQCameraViewfinder_method_callback_enterEvent,
  leaveEvent: fcQCameraViewfinder_method_callback_leaveEvent,
  closeEvent: fcQCameraViewfinder_method_callback_closeEvent,
  contextMenuEvent: fcQCameraViewfinder_method_callback_contextMenuEvent,
  tabletEvent: fcQCameraViewfinder_method_callback_tabletEvent,
  actionEvent: fcQCameraViewfinder_method_callback_actionEvent,
  dragEnterEvent: fcQCameraViewfinder_method_callback_dragEnterEvent,
  dragMoveEvent: fcQCameraViewfinder_method_callback_dragMoveEvent,
  dragLeaveEvent: fcQCameraViewfinder_method_callback_dragLeaveEvent,
  dropEvent: fcQCameraViewfinder_method_callback_dropEvent,
  nativeEvent: fcQCameraViewfinder_method_callback_nativeEvent,
  changeEvent: fcQCameraViewfinder_method_callback_changeEvent,
  metric: fcQCameraViewfinder_method_callback_metric,
  initPainter: fcQCameraViewfinder_method_callback_initPainter,
  redirected: fcQCameraViewfinder_method_callback_redirected,
  sharedPainter: fcQCameraViewfinder_method_callback_sharedPainter,
  inputMethodEvent: fcQCameraViewfinder_method_callback_inputMethodEvent,
  inputMethodQuery: fcQCameraViewfinder_method_callback_inputMethodQuery,
  focusNextPrevChild: fcQCameraViewfinder_method_callback_focusNextPrevChild,
  eventFilter: fcQCameraViewfinder_method_callback_eventFilter,
  timerEvent: fcQCameraViewfinder_method_callback_timerEvent,
  childEvent: fcQCameraViewfinder_method_callback_childEvent,
  customEvent: fcQCameraViewfinder_method_callback_customEvent,
  connectNotify: fcQCameraViewfinder_method_callback_connectNotify,
  disconnectNotify: fcQCameraViewfinder_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcameraviewfinder_types.QCameraViewfinder,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQCameraViewfinder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCameraViewfinder_new(addr(cQCameraViewfinder_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qcameraviewfinder_types.QCameraViewfinder,
    inst: VirtualQCameraViewfinder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQCameraViewfinder_new2(addr(cQCameraViewfinder_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcameraviewfinder_types.QCameraViewfinder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraViewfinder_staticMetaObject())
