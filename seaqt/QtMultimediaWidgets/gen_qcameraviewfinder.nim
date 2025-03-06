import ./Qt5MultimediaWidgets_libs

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

proc fcQCameraViewfinder_new(parent: pointer): ptr cQCameraViewfinder {.importc: "QCameraViewfinder_new".}
proc fcQCameraViewfinder_new2(): ptr cQCameraViewfinder {.importc: "QCameraViewfinder_new2".}
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
proc fQCameraViewfinder_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_metaObject".}
proc fcQCameraViewfinder_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_metaObject".}
proc fQCameraViewfinder_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QCameraViewfinder_virtualbase_metacast".}
proc fcQCameraViewfinder_override_virtual_metacast(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_metacast".}
proc fQCameraViewfinder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCameraViewfinder_virtualbase_metacall".}
proc fcQCameraViewfinder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_metacall".}
proc fQCameraViewfinder_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_mediaObject".}
proc fcQCameraViewfinder_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mediaObject".}
proc fQCameraViewfinder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QCameraViewfinder_virtualbase_setMediaObject".}
proc fcQCameraViewfinder_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_setMediaObject".}
proc fQCameraViewfinder_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_sizeHint".}
proc fcQCameraViewfinder_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_sizeHint".}
proc fQCameraViewfinder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QCameraViewfinder_virtualbase_event".}
proc fcQCameraViewfinder_override_virtual_event(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_event".}
proc fQCameraViewfinder_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_showEvent".}
proc fcQCameraViewfinder_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_showEvent".}
proc fQCameraViewfinder_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_hideEvent".}
proc fcQCameraViewfinder_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_hideEvent".}
proc fQCameraViewfinder_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_resizeEvent".}
proc fcQCameraViewfinder_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_resizeEvent".}
proc fQCameraViewfinder_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_moveEvent".}
proc fcQCameraViewfinder_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_moveEvent".}
proc fQCameraViewfinder_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_paintEvent".}
proc fcQCameraViewfinder_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_paintEvent".}
proc fQCameraViewfinder_virtualbase_devType(self: pointer, ): cint{.importc: "QCameraViewfinder_virtualbase_devType".}
proc fcQCameraViewfinder_override_virtual_devType(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_devType".}
proc fQCameraViewfinder_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QCameraViewfinder_virtualbase_setVisible".}
proc fcQCameraViewfinder_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_setVisible".}
proc fQCameraViewfinder_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_minimumSizeHint".}
proc fcQCameraViewfinder_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_minimumSizeHint".}
proc fQCameraViewfinder_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QCameraViewfinder_virtualbase_heightForWidth".}
proc fcQCameraViewfinder_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_heightForWidth".}
proc fQCameraViewfinder_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QCameraViewfinder_virtualbase_hasHeightForWidth".}
proc fcQCameraViewfinder_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_hasHeightForWidth".}
proc fQCameraViewfinder_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_paintEngine".}
proc fcQCameraViewfinder_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_paintEngine".}
proc fQCameraViewfinder_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_mousePressEvent".}
proc fcQCameraViewfinder_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mousePressEvent".}
proc fQCameraViewfinder_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_mouseReleaseEvent".}
proc fcQCameraViewfinder_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mouseReleaseEvent".}
proc fQCameraViewfinder_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_mouseDoubleClickEvent".}
proc fcQCameraViewfinder_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mouseDoubleClickEvent".}
proc fQCameraViewfinder_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_mouseMoveEvent".}
proc fcQCameraViewfinder_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_mouseMoveEvent".}
proc fQCameraViewfinder_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_wheelEvent".}
proc fcQCameraViewfinder_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_wheelEvent".}
proc fQCameraViewfinder_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_keyPressEvent".}
proc fcQCameraViewfinder_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_keyPressEvent".}
proc fQCameraViewfinder_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_keyReleaseEvent".}
proc fcQCameraViewfinder_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_keyReleaseEvent".}
proc fQCameraViewfinder_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_focusInEvent".}
proc fcQCameraViewfinder_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_focusInEvent".}
proc fQCameraViewfinder_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_focusOutEvent".}
proc fcQCameraViewfinder_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_focusOutEvent".}
proc fQCameraViewfinder_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_enterEvent".}
proc fcQCameraViewfinder_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_enterEvent".}
proc fQCameraViewfinder_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_leaveEvent".}
proc fcQCameraViewfinder_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_leaveEvent".}
proc fQCameraViewfinder_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_closeEvent".}
proc fcQCameraViewfinder_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_closeEvent".}
proc fQCameraViewfinder_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_contextMenuEvent".}
proc fcQCameraViewfinder_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_contextMenuEvent".}
proc fQCameraViewfinder_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_tabletEvent".}
proc fcQCameraViewfinder_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_tabletEvent".}
proc fQCameraViewfinder_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_actionEvent".}
proc fcQCameraViewfinder_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_actionEvent".}
proc fQCameraViewfinder_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_dragEnterEvent".}
proc fcQCameraViewfinder_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_dragEnterEvent".}
proc fQCameraViewfinder_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_dragMoveEvent".}
proc fcQCameraViewfinder_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_dragMoveEvent".}
proc fQCameraViewfinder_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_dragLeaveEvent".}
proc fcQCameraViewfinder_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_dragLeaveEvent".}
proc fQCameraViewfinder_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_dropEvent".}
proc fcQCameraViewfinder_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_dropEvent".}
proc fQCameraViewfinder_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QCameraViewfinder_virtualbase_nativeEvent".}
proc fcQCameraViewfinder_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_nativeEvent".}
proc fQCameraViewfinder_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QCameraViewfinder_virtualbase_changeEvent".}
proc fcQCameraViewfinder_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_changeEvent".}
proc fQCameraViewfinder_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QCameraViewfinder_virtualbase_metric".}
proc fcQCameraViewfinder_override_virtual_metric(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_metric".}
proc fQCameraViewfinder_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QCameraViewfinder_virtualbase_initPainter".}
proc fcQCameraViewfinder_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_initPainter".}
proc fQCameraViewfinder_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QCameraViewfinder_virtualbase_redirected".}
proc fcQCameraViewfinder_override_virtual_redirected(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_redirected".}
proc fQCameraViewfinder_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QCameraViewfinder_virtualbase_sharedPainter".}
proc fcQCameraViewfinder_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_sharedPainter".}
proc fQCameraViewfinder_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QCameraViewfinder_virtualbase_inputMethodEvent".}
proc fcQCameraViewfinder_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_inputMethodEvent".}
proc fQCameraViewfinder_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QCameraViewfinder_virtualbase_inputMethodQuery".}
proc fcQCameraViewfinder_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_inputMethodQuery".}
proc fQCameraViewfinder_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QCameraViewfinder_virtualbase_focusNextPrevChild".}
proc fcQCameraViewfinder_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_focusNextPrevChild".}
proc fQCameraViewfinder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCameraViewfinder_virtualbase_eventFilter".}
proc fcQCameraViewfinder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_eventFilter".}
proc fQCameraViewfinder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_timerEvent".}
proc fcQCameraViewfinder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_timerEvent".}
proc fQCameraViewfinder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_childEvent".}
proc fcQCameraViewfinder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_childEvent".}
proc fQCameraViewfinder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCameraViewfinder_virtualbase_customEvent".}
proc fcQCameraViewfinder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_customEvent".}
proc fQCameraViewfinder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCameraViewfinder_virtualbase_connectNotify".}
proc fcQCameraViewfinder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_connectNotify".}
proc fQCameraViewfinder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCameraViewfinder_virtualbase_disconnectNotify".}
proc fcQCameraViewfinder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCameraViewfinder_override_virtual_disconnectNotify".}
proc fcQCameraViewfinder_staticMetaObject(): pointer {.importc: "QCameraViewfinder_staticMetaObject".}
proc fcQCameraViewfinder_delete(self: pointer) {.importc: "QCameraViewfinder_delete".}


func init*(T: type gen_qcameraviewfinder_types.QCameraViewfinder, h: ptr cQCameraViewfinder): gen_qcameraviewfinder_types.QCameraViewfinder =
  T(h: h)
proc create*(T: type gen_qcameraviewfinder_types.QCameraViewfinder, parent: gen_qwidget_types.QWidget): gen_qcameraviewfinder_types.QCameraViewfinder =
  gen_qcameraviewfinder_types.QCameraViewfinder.init(fcQCameraViewfinder_new(parent.h))

proc create*(T: type gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qcameraviewfinder_types.QCameraViewfinder =
  gen_qcameraviewfinder_types.QCameraViewfinder.init(fcQCameraViewfinder_new2())

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

proc QCameraViewfindermetaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQCameraViewfinder_virtualbase_metaObject(self.h))

type QCameraViewfindermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermetaObjectProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_metaObject(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_metaObject ".} =
  var nimfunc = cast[ptr QCameraViewfindermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCameraViewfindermetacast*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cstring): pointer =
  fQCameraViewfinder_virtualbase_metacast(self.h, param1)

type QCameraViewfindermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermetacastProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_metacast(self: ptr cQCameraViewfinder, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_metacast ".} =
  var nimfunc = cast[ptr QCameraViewfindermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraViewfindermetacall*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint, param2: cint, param3: pointer): cint =
  fQCameraViewfinder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCameraViewfindermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermetacallProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_metacall(self: ptr cQCameraViewfinder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCameraViewfinder_metacall ".} =
  var nimfunc = cast[ptr QCameraViewfindermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCameraViewfindermediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fQCameraViewfinder_virtualbase_mediaObject(self.h))

type QCameraViewfindermediaObjectProc* = proc(): gen_qmediaobject_types.QMediaObject
proc onmediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermediaObjectProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mediaObject(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_mediaObject ".} =
  var nimfunc = cast[ptr QCameraViewfindermediaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCameraViewfindersetMediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fQCameraViewfinder_virtualbase_setMediaObject(self.h, objectVal.h)

type QCameraViewfindersetMediaObjectProc* = proc(objectVal: gen_qmediaobject_types.QMediaObject): bool
proc onsetMediaObject*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindersetMediaObjectProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindersetMediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_setMediaObject(self: ptr cQCameraViewfinder, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_setMediaObject ".} =
  var nimfunc = cast[ptr QCameraViewfindersetMediaObjectProc](cast[pointer](slot))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraViewfindersizeHint*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCameraViewfinder_virtualbase_sizeHint(self.h))

type QCameraViewfindersizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindersizeHintProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindersizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_sizeHint(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_sizeHint ".} =
  var nimfunc = cast[ptr QCameraViewfindersizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCameraViewfinderevent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): bool =
  fQCameraViewfinder_virtualbase_event(self.h, event.h)

type QCameraViewfindereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindereventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_event(self: ptr cQCameraViewfinder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_event ".} =
  var nimfunc = cast[ptr QCameraViewfindereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraViewfindershowEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QShowEvent): void =
  fQCameraViewfinder_virtualbase_showEvent(self.h, event.h)

type QCameraViewfindershowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindershowEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindershowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_showEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_showEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindershowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderhideEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QHideEvent): void =
  fQCameraViewfinder_virtualbase_hideEvent(self.h, event.h)

type QCameraViewfinderhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderhideEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_hideEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_hideEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderresizeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QResizeEvent): void =
  fQCameraViewfinder_virtualbase_resizeEvent(self.h, event.h)

type QCameraViewfinderresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderresizeEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_resizeEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_resizeEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindermoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMoveEvent): void =
  fQCameraViewfinder_virtualbase_moveEvent(self.h, event.h)

type QCameraViewfindermoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermoveEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_moveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_moveEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindermoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderpaintEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QPaintEvent): void =
  fQCameraViewfinder_virtualbase_paintEvent(self.h, event.h)

type QCameraViewfinderpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderpaintEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_paintEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_paintEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderdevType*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): cint =
  fQCameraViewfinder_virtualbase_devType(self.h)

type QCameraViewfinderdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderdevTypeProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_devType(self: ptr cQCameraViewfinder, slot: int): cint {.exportc: "miqt_exec_callback_QCameraViewfinder_devType ".} =
  var nimfunc = cast[ptr QCameraViewfinderdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCameraViewfindersetVisible*(self: gen_qcameraviewfinder_types.QCameraViewfinder, visible: bool): void =
  fQCameraViewfinder_virtualbase_setVisible(self.h, visible)

type QCameraViewfindersetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindersetVisibleProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindersetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_setVisible(self: ptr cQCameraViewfinder, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QCameraViewfinder_setVisible ".} =
  var nimfunc = cast[ptr QCameraViewfindersetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QCameraViewfinderminimumSizeHint*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQCameraViewfinder_virtualbase_minimumSizeHint(self.h))

type QCameraViewfinderminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_minimumSizeHint(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_minimumSizeHint ".} =
  var nimfunc = cast[ptr QCameraViewfinderminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCameraViewfinderheightForWidth*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): cint =
  fQCameraViewfinder_virtualbase_heightForWidth(self.h, param1)

type QCameraViewfinderheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderheightForWidthProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_heightForWidth(self: ptr cQCameraViewfinder, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCameraViewfinder_heightForWidth ".} =
  var nimfunc = cast[ptr QCameraViewfinderheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraViewfinderhasHeightForWidth*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): bool =
  fQCameraViewfinder_virtualbase_hasHeightForWidth(self.h)

type QCameraViewfinderhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_hasHeightForWidth(self: ptr cQCameraViewfinder, slot: int): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QCameraViewfinderhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QCameraViewfinderpaintEngine*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQCameraViewfinder_virtualbase_paintEngine(self.h))

type QCameraViewfinderpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderpaintEngineProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_paintEngine(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_paintEngine ".} =
  var nimfunc = cast[ptr QCameraViewfinderpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCameraViewfindermousePressEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fQCameraViewfinder_virtualbase_mousePressEvent(self.h, event.h)

type QCameraViewfindermousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermousePressEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mousePressEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_mousePressEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindermousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindermouseReleaseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fQCameraViewfinder_virtualbase_mouseReleaseEvent(self.h, event.h)

type QCameraViewfindermouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mouseReleaseEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindermouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindermouseDoubleClickEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fQCameraViewfinder_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QCameraViewfindermouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mouseDoubleClickEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindermouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindermouseMoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QMouseEvent): void =
  fQCameraViewfinder_virtualbase_mouseMoveEvent(self.h, event.h)

type QCameraViewfindermouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_mouseMoveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindermouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderwheelEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QWheelEvent): void =
  fQCameraViewfinder_virtualbase_wheelEvent(self.h, event.h)

type QCameraViewfinderwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderwheelEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_wheelEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_wheelEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderkeyPressEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QKeyEvent): void =
  fQCameraViewfinder_virtualbase_keyPressEvent(self.h, event.h)

type QCameraViewfinderkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_keyPressEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_keyPressEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderkeyReleaseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QKeyEvent): void =
  fQCameraViewfinder_virtualbase_keyReleaseEvent(self.h, event.h)

type QCameraViewfinderkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_keyReleaseEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderfocusInEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QFocusEvent): void =
  fQCameraViewfinder_virtualbase_focusInEvent(self.h, event.h)

type QCameraViewfinderfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderfocusInEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_focusInEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_focusInEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderfocusOutEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QFocusEvent): void =
  fQCameraViewfinder_virtualbase_focusOutEvent(self.h, event.h)

type QCameraViewfinderfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_focusOutEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_focusOutEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderenterEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fQCameraViewfinder_virtualbase_enterEvent(self.h, event.h)

type QCameraViewfinderenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderenterEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_enterEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_enterEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderleaveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fQCameraViewfinder_virtualbase_leaveEvent(self.h, event.h)

type QCameraViewfinderleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderleaveEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_leaveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_leaveEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindercloseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QCloseEvent): void =
  fQCameraViewfinder_virtualbase_closeEvent(self.h, event.h)

type QCameraViewfindercloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindercloseEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindercloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_closeEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_closeEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindercloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindercontextMenuEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QContextMenuEvent): void =
  fQCameraViewfinder_virtualbase_contextMenuEvent(self.h, event.h)

type QCameraViewfindercontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindercontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindercontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_contextMenuEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_contextMenuEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindercontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindertabletEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QTabletEvent): void =
  fQCameraViewfinder_virtualbase_tabletEvent(self.h, event.h)

type QCameraViewfindertabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindertabletEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindertabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_tabletEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_tabletEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindertabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderactionEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QActionEvent): void =
  fQCameraViewfinder_virtualbase_actionEvent(self.h, event.h)

type QCameraViewfinderactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderactionEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_actionEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_actionEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderdragEnterEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragEnterEvent): void =
  fQCameraViewfinder_virtualbase_dragEnterEvent(self.h, event.h)

type QCameraViewfinderdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_dragEnterEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_dragEnterEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderdragMoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragMoveEvent): void =
  fQCameraViewfinder_virtualbase_dragMoveEvent(self.h, event.h)

type QCameraViewfinderdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_dragMoveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_dragMoveEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderdragLeaveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDragLeaveEvent): void =
  fQCameraViewfinder_virtualbase_dragLeaveEvent(self.h, event.h)

type QCameraViewfinderdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_dragLeaveEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderdropEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qevent_types.QDropEvent): void =
  fQCameraViewfinder_virtualbase_dropEvent(self.h, event.h)

type QCameraViewfinderdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderdropEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_dropEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_dropEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindernativeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQCameraViewfinder_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QCameraViewfindernativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindernativeEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindernativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_nativeEvent(self: ptr cQCameraViewfinder, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_nativeEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindernativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QCameraViewfinderchangeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: gen_qcoreevent_types.QEvent): void =
  fQCameraViewfinder_virtualbase_changeEvent(self.h, param1.h)

type QCameraViewfinderchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderchangeEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_changeEvent(self: ptr cQCameraViewfinder, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_changeEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QCameraViewfindermetric*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): cint =
  fQCameraViewfinder_virtualbase_metric(self.h, cint(param1))

type QCameraViewfindermetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindermetricProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindermetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_metric(self: ptr cQCameraViewfinder, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QCameraViewfinder_metric ".} =
  var nimfunc = cast[ptr QCameraViewfindermetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraViewfinderinitPainter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, painter: gen_qpainter_types.QPainter): void =
  fQCameraViewfinder_virtualbase_initPainter(self.h, painter.h)

type QCameraViewfinderinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderinitPainterProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_initPainter(self: ptr cQCameraViewfinder, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_initPainter ".} =
  var nimfunc = cast[ptr QCameraViewfinderinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QCameraViewfinderredirected*(self: gen_qcameraviewfinder_types.QCameraViewfinder, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQCameraViewfinder_virtualbase_redirected(self.h, offset.h))

type QCameraViewfinderredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderredirectedProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_redirected(self: ptr cQCameraViewfinder, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_redirected ".} =
  var nimfunc = cast[ptr QCameraViewfinderredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QCameraViewfindersharedPainter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQCameraViewfinder_virtualbase_sharedPainter(self.h))

type QCameraViewfindersharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindersharedPainterProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindersharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_sharedPainter(self: ptr cQCameraViewfinder, slot: int): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_sharedPainter ".} =
  var nimfunc = cast[ptr QCameraViewfindersharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QCameraViewfinderinputMethodEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: gen_qevent_types.QInputMethodEvent): void =
  fQCameraViewfinder_virtualbase_inputMethodEvent(self.h, param1.h)

type QCameraViewfinderinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_inputMethodEvent(self: ptr cQCameraViewfinder, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_inputMethodEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QCameraViewfinderinputMethodQuery*(self: gen_qcameraviewfinder_types.QCameraViewfinder, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQCameraViewfinder_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QCameraViewfinderinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_inputMethodQuery(self: ptr cQCameraViewfinder, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QCameraViewfinder_inputMethodQuery ".} =
  var nimfunc = cast[ptr QCameraViewfinderinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QCameraViewfinderfocusNextPrevChild*(self: gen_qcameraviewfinder_types.QCameraViewfinder, next: bool): bool =
  fQCameraViewfinder_virtualbase_focusNextPrevChild(self.h, next)

type QCameraViewfinderfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_focusNextPrevChild(self: ptr cQCameraViewfinder, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QCameraViewfinderfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QCameraViewfindereventFilter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQCameraViewfinder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCameraViewfindereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindereventFilterProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_eventFilter(self: ptr cQCameraViewfinder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCameraViewfinder_eventFilter ".} =
  var nimfunc = cast[ptr QCameraViewfindereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QCameraViewfindertimerEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QTimerEvent): void =
  fQCameraViewfinder_virtualbase_timerEvent(self.h, event.h)

type QCameraViewfindertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindertimerEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_timerEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_timerEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderchildEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QChildEvent): void =
  fQCameraViewfinder_virtualbase_childEvent(self.h, event.h)

type QCameraViewfinderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderchildEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_childEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_childEvent ".} =
  var nimfunc = cast[ptr QCameraViewfinderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfindercustomEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, event: gen_qcoreevent_types.QEvent): void =
  fQCameraViewfinder_virtualbase_customEvent(self.h, event.h)

type QCameraViewfindercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfindercustomEventProc) =
  # TODO check subclass
  var tmp = new QCameraViewfindercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_customEvent(self: ptr cQCameraViewfinder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_customEvent ".} =
  var nimfunc = cast[ptr QCameraViewfindercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QCameraViewfinderconnectNotify*(self: gen_qcameraviewfinder_types.QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCameraViewfinder_virtualbase_connectNotify(self.h, signal.h)

type QCameraViewfinderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_connectNotify(self: ptr cQCameraViewfinder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_connectNotify ".} =
  var nimfunc = cast[ptr QCameraViewfinderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QCameraViewfinderdisconnectNotify*(self: gen_qcameraviewfinder_types.QCameraViewfinder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQCameraViewfinder_virtualbase_disconnectNotify(self.h, signal.h)

type QCameraViewfinderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcameraviewfinder_types.QCameraViewfinder, slot: QCameraViewfinderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QCameraViewfinderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQCameraViewfinder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCameraViewfinder_disconnectNotify(self: ptr cQCameraViewfinder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCameraViewfinder_disconnectNotify ".} =
  var nimfunc = cast[ptr QCameraViewfinderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcameraviewfinder_types.QCameraViewfinder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQCameraViewfinder_staticMetaObject())
proc delete*(self: gen_qcameraviewfinder_types.QCameraViewfinder) =
  fcQCameraViewfinder_delete(self.h)
