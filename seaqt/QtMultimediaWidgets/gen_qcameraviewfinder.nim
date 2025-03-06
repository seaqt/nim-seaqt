import ./Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5MultimediaWidgets")  & " -fPIC"
{.compile("gen_qcameraviewfinder.cpp", cflags).}


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

proc fcQCameraViewfinder_metaObject(self: pointer, ): pointer {.importc: "QCameraViewfinder_metaObject".}
proc fcQCameraViewfinder_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraViewfinder_metacast".}
proc fcQCameraViewfinder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraViewfinder_metacall".}
proc fcQCameraViewfinder_tr(s: cstring): struct_miqt_string {.importc: "QCameraViewfinder_tr".}
proc fcQCameraViewfinder_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraViewfinder_trUtf8".}
proc fcQCameraViewfinder_mediaObject(self: pointer, ): pointer {.importc: "QCameraViewfinder_mediaObject".}
proc fcQCameraViewfinder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinder_tr2".}
proc fcQCameraViewfinder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinder_tr3".}
proc fcQCameraViewfinder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraViewfinder_trUtf82".}
proc fcQCameraViewfinder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraViewfinder_trUtf83".}
type cQCameraViewfinderVTable = object
  destructor*: proc(vtbl: ptr cQCameraViewfinderVTable, self: ptr cQCameraViewfinder) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  mediaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setMediaObject*: proc(vtbl, self: pointer, objectVal: pointer): bool {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQCameraViewfinder_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QCameraViewfinder_virtualbase_metaObject".}
proc fcQCameraViewfinder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraViewfinder_virtualbase_metacast".}
proc fcQCameraViewfinder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraViewfinder_virtualbase_metacall".}
proc fcQCameraViewfinder_virtualbase_mediaObject(self: pointer, ): pointer {.importc: "QCameraViewfinder_virtualbase_mediaObject".}
proc fcQCameraViewfinder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool {.importc: "QCameraViewfinder_virtualbase_setMediaObject".}
proc fcQCameraViewfinder_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QCameraViewfinder_virtualbase_sizeHint".}
proc fcQCameraViewfinder_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QCameraViewfinder_virtualbase_event".}
proc fcQCameraViewfinder_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_showEvent".}
proc fcQCameraViewfinder_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_hideEvent".}
proc fcQCameraViewfinder_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_resizeEvent".}
proc fcQCameraViewfinder_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_moveEvent".}
proc fcQCameraViewfinder_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_paintEvent".}
proc fcQCameraViewfinder_virtualbase_devType(self: pointer, ): cint {.importc: "QCameraViewfinder_virtualbase_devType".}
proc fcQCameraViewfinder_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QCameraViewfinder_virtualbase_setVisible".}
proc fcQCameraViewfinder_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QCameraViewfinder_virtualbase_minimumSizeHint".}
proc fcQCameraViewfinder_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QCameraViewfinder_virtualbase_heightForWidth".}
proc fcQCameraViewfinder_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QCameraViewfinder_virtualbase_hasHeightForWidth".}
proc fcQCameraViewfinder_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QCameraViewfinder_virtualbase_paintEngine".}
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
proc fcQCameraViewfinder_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QCameraViewfinder_virtualbase_sharedPainter".}
proc fcQCameraViewfinder_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QCameraViewfinder_virtualbase_inputMethodEvent".}
proc fcQCameraViewfinder_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QCameraViewfinder_virtualbase_inputMethodQuery".}
proc fcQCameraViewfinder_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QCameraViewfinder_virtualbase_focusNextPrevChild".}
proc fcQCameraViewfinder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QCameraViewfinder_virtualbase_eventFilter".}
proc fcQCameraViewfinder_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_timerEvent".}
proc fcQCameraViewfinder_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_childEvent".}
proc fcQCameraViewfinder_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QCameraViewfinder_virtualbase_customEvent".}
proc fcQCameraViewfinder_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QCameraViewfinder_virtualbase_connectNotify".}
proc fcQCameraViewfinder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QCameraViewfinder_virtualbase_disconnectNotify".}
proc fcQCameraViewfinder_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QCameraViewfinder_protectedbase_updateMicroFocus".}
proc fcQCameraViewfinder_protectedbase_create(self: pointer, ): void {.importc: "QCameraViewfinder_protectedbase_create".}
proc fcQCameraViewfinder_protectedbase_destroy(self: pointer, ): void {.importc: "QCameraViewfinder_protectedbase_destroy".}
proc fcQCameraViewfinder_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QCameraViewfinder_protectedbase_focusNextChild".}
proc fcQCameraViewfinder_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QCameraViewfinder_protectedbase_focusPreviousChild".}
proc fcQCameraViewfinder_protectedbase_sender(self: pointer, ): pointer {.importc: "QCameraViewfinder_protectedbase_sender".}
proc fcQCameraViewfinder_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QCameraViewfinder_protectedbase_senderSignalIndex".}
proc fcQCameraViewfinder_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QCameraViewfinder_protectedbase_receivers".}
proc fcQCameraViewfinder_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QCameraViewfinder_protectedbase_isSignalConnected".}
proc fcQCameraViewfinder_new(vtbl: pointer, parent: pointer): ptr cQCameraViewfinder {.importc: "QCameraViewfinder_new".}
proc fcQCameraViewfinder_new2(vtbl: pointer, ): ptr cQCameraViewfinder {.importc: "QCameraViewfinder_new2".}
proc fcQCameraViewfinder_staticMetaObject(): pointer {.importc: "QCameraViewfinder_staticMetaObject".}
proc fcQCameraViewfinder_delete(self: pointer) {.importc: "QCameraViewfinder_delete".}

proc metaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraViewfinder_metaObject(self.h))

proc metacast*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cstring): pointer =
  fcQCameraViewfinder_metacast(self.h, param1)

proc metacall*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraViewfinder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring): string =
  let v_ms = fcQCameraViewfinder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring): string =
  let v_ms = fcQCameraViewfinder_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQCameraViewfinder_mediaObject(self.h))

proc tr*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring, c: cstring): string =
  let v_ms = fcQCameraViewfinder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraViewfinder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring, c: cstring): string =
  let v_ms = fcQCameraViewfinder_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcameraviewfinder_types.QCameraViewfinder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQCameraViewfinder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QCameraViewfindernativeEventProc* = proc(self: QCameraViewfinder, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QCameraViewfinderVTable* = object
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
proc QCameraViewfindermetaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraViewfinder_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQCameraViewfinder_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QCameraViewfindermetacast*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cstring): pointer =
  fcQCameraViewfinder_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQCameraViewfinder_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QCameraViewfindermetacall*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint, param2: cint, param3: pointer): cint =
  fcQCameraViewfinder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQCameraViewfinder_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCameraViewfindermediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fcQCameraViewfinder_virtualbase_mediaObject(self.h))

proc miqt_exec_callback_cQCameraViewfinder_mediaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].mediaObject(self)
  virtualReturn.h

proc QCameraViewfindersetMediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fcQCameraViewfinder_virtualbase_setMediaObject(self.h, objectVal.h)

proc miqt_exec_callback_cQCameraViewfinder_setMediaObject(vtbl: pointer, self: pointer, objectVal: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal)
  var virtualReturn = vtbl[].setMediaObject(self, slotval1)
  virtualReturn

proc QCameraViewfindersizeHint*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraViewfinder_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQCameraViewfinder_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QCameraViewfinderevent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): bool =
  fcQCameraViewfinder_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QCameraViewfindershowEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QShowEvent): void =
  fcQCameraViewfinder_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QCameraViewfinderhideEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QHideEvent): void =
  fcQCameraViewfinder_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QCameraViewfinderresizeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QResizeEvent): void =
  fcQCameraViewfinder_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QCameraViewfindermoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMoveEvent): void =
  fcQCameraViewfinder_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QCameraViewfinderpaintEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QPaintEvent): void =
  fcQCameraViewfinder_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QCameraViewfinderdevType*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): cint =
  fcQCameraViewfinder_virtualbase_devType(self.h)

proc miqt_exec_callback_cQCameraViewfinder_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QCameraViewfindersetVisible*(self: gen_qcameraviewfinder_types.QCameraViewfinder, visible: bool): void =
  fcQCameraViewfinder_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQCameraViewfinder_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QCameraViewfinderminimumSizeHint*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQCameraViewfinder_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQCameraViewfinder_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QCameraViewfinderheightForWidth*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): cint =
  fcQCameraViewfinder_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQCameraViewfinder_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QCameraViewfinderhasHeightForWidth*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): bool =
  fcQCameraViewfinder_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQCameraViewfinder_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QCameraViewfinderpaintEngine*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQCameraViewfinder_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQCameraViewfinder_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QCameraViewfindermousePressEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fcQCameraViewfinder_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QCameraViewfindermouseReleaseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fcQCameraViewfinder_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QCameraViewfindermouseDoubleClickEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fcQCameraViewfinder_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QCameraViewfindermouseMoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fcQCameraViewfinder_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QCameraViewfinderwheelEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QWheelEvent): void =
  fcQCameraViewfinder_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QCameraViewfinderkeyPressEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QKeyEvent): void =
  fcQCameraViewfinder_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QCameraViewfinderkeyReleaseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QKeyEvent): void =
  fcQCameraViewfinder_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QCameraViewfinderfocusInEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QFocusEvent): void =
  fcQCameraViewfinder_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QCameraViewfinderfocusOutEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QFocusEvent): void =
  fcQCameraViewfinder_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QCameraViewfinderenterEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fcQCameraViewfinder_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QCameraViewfinderleaveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fcQCameraViewfinder_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QCameraViewfindercloseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QCloseEvent): void =
  fcQCameraViewfinder_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QCameraViewfindercontextMenuEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QContextMenuEvent): void =
  fcQCameraViewfinder_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QCameraViewfindertabletEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QTabletEvent): void =
  fcQCameraViewfinder_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QCameraViewfinderactionEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QActionEvent): void =
  fcQCameraViewfinder_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QCameraViewfinderdragEnterEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragEnterEvent): void =
  fcQCameraViewfinder_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QCameraViewfinderdragMoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragMoveEvent): void =
  fcQCameraViewfinder_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QCameraViewfinderdragLeaveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQCameraViewfinder_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QCameraViewfinderdropEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDropEvent): void =
  fcQCameraViewfinder_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QCameraViewfindernativeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQCameraViewfinder_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQCameraViewfinder_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QCameraViewfinderchangeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: gen_qcoreevent_types.QEvent): void =
  fcQCameraViewfinder_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQCameraViewfinder_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QCameraViewfindermetric*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): cint =
  fcQCameraViewfinder_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQCameraViewfinder_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QCameraViewfinderinitPainter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, painter: gen_qpainter_types.QPainter): void =
  fcQCameraViewfinder_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQCameraViewfinder_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QCameraViewfinderredirected*(self: gen_qcameraviewfinder_types.QCameraViewfinder, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQCameraViewfinder_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQCameraViewfinder_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QCameraViewfindersharedPainter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQCameraViewfinder_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQCameraViewfinder_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QCameraViewfinderinputMethodEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQCameraViewfinder_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQCameraViewfinder_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QCameraViewfinderinputMethodQuery*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCameraViewfinder_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQCameraViewfinder_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QCameraViewfinderfocusNextPrevChild*(self: gen_qcameraviewfinder_types.QCameraViewfinder, next: bool): bool =
  fcQCameraViewfinder_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQCameraViewfinder_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QCameraViewfindereventFilter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQCameraViewfinder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QCameraViewfindertimerEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQCameraViewfinder_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QCameraViewfinderchildEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQCameraViewfinder_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QCameraViewfindercustomEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fcQCameraViewfinder_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQCameraViewfinder_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QCameraViewfinderconnectNotify*(self: gen_qcameraviewfinder_types.QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCameraViewfinder_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCameraViewfinder_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QCameraViewfinderdisconnectNotify*(self: gen_qcameraviewfinder_types.QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQCameraViewfinder_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQCameraViewfinder_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QCameraViewfinderVTable](vtbl)
  let self = QCameraViewfinder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): void =
  fcQCameraViewfinder_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): void =
  fcQCameraViewfinder_protectedbase_create(self.h)

proc destroy*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): void =
  fcQCameraViewfinder_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): bool =
  fcQCameraViewfinder_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): bool =
  fcQCameraViewfinder_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQCameraViewfinder_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraViewfinderVTable, _: ptr cQCameraViewfinder) {.cdecl.} =
    let vtbl = cast[ref QCameraViewfinderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCameraViewfinder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCameraViewfinder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCameraViewfinder_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQCameraViewfinder_mediaObject
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQCameraViewfinder_setMediaObject
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCameraViewfinder_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCameraViewfinder_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCameraViewfinder_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCameraViewfinder_hideEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCameraViewfinder_resizeEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCameraViewfinder_moveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCameraViewfinder_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCameraViewfinder_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCameraViewfinder_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCameraViewfinder_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCameraViewfinder_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCameraViewfinder_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCameraViewfinder_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCameraViewfinder_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCameraViewfinder_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCameraViewfinder_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCameraViewfinder_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCameraViewfinder_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCameraViewfinder_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCameraViewfinder_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCameraViewfinder_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCameraViewfinder_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCameraViewfinder_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCameraViewfinder_leaveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCameraViewfinder_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCameraViewfinder_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCameraViewfinder_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCameraViewfinder_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCameraViewfinder_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCameraViewfinder_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCameraViewfinder_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCameraViewfinder_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCameraViewfinder_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCameraViewfinder_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCameraViewfinder_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCameraViewfinder_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCameraViewfinder_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCameraViewfinder_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCameraViewfinder_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCameraViewfinder_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCameraViewfinder_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCameraViewfinder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCameraViewfinder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCameraViewfinder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCameraViewfinder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCameraViewfinder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCameraViewfinder_disconnectNotify
  gen_qcameraviewfinder_types.QCameraViewfinder(h: fcQCameraViewfinder_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qcameraviewfinder_types.QCameraViewfinder,
    vtbl: ref QCameraViewfinderVTable = nil): gen_qcameraviewfinder_types.QCameraViewfinder =
  let vtbl = if vtbl == nil: new QCameraViewfinderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQCameraViewfinderVTable, _: ptr cQCameraViewfinder) {.cdecl.} =
    let vtbl = cast[ref QCameraViewfinderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQCameraViewfinder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQCameraViewfinder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQCameraViewfinder_metacall
  if not isNil(vtbl.mediaObject):
    vtbl[].vtbl.mediaObject = miqt_exec_callback_cQCameraViewfinder_mediaObject
  if not isNil(vtbl.setMediaObject):
    vtbl[].vtbl.setMediaObject = miqt_exec_callback_cQCameraViewfinder_setMediaObject
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQCameraViewfinder_sizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQCameraViewfinder_event
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQCameraViewfinder_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQCameraViewfinder_hideEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQCameraViewfinder_resizeEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQCameraViewfinder_moveEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQCameraViewfinder_paintEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQCameraViewfinder_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQCameraViewfinder_setVisible
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQCameraViewfinder_minimumSizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQCameraViewfinder_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQCameraViewfinder_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQCameraViewfinder_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQCameraViewfinder_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQCameraViewfinder_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQCameraViewfinder_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQCameraViewfinder_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQCameraViewfinder_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQCameraViewfinder_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQCameraViewfinder_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQCameraViewfinder_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQCameraViewfinder_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQCameraViewfinder_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQCameraViewfinder_leaveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQCameraViewfinder_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQCameraViewfinder_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQCameraViewfinder_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQCameraViewfinder_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQCameraViewfinder_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQCameraViewfinder_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQCameraViewfinder_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQCameraViewfinder_dropEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQCameraViewfinder_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQCameraViewfinder_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQCameraViewfinder_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQCameraViewfinder_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQCameraViewfinder_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQCameraViewfinder_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQCameraViewfinder_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQCameraViewfinder_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQCameraViewfinder_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQCameraViewfinder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQCameraViewfinder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQCameraViewfinder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQCameraViewfinder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQCameraViewfinder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQCameraViewfinder_disconnectNotify
  gen_qcameraviewfinder_types.QCameraViewfinder(h: fcQCameraViewfinder_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qcameraviewfinder_types.QCameraViewfinder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraViewfinder_staticMetaObject())
proc delete*(self: gen_qcameraviewfinder_types.QCameraViewfinder) =
  fcQCameraViewfinder_delete(self.h)
