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
{.compile("gen_qsizegrip.cpp", cflags).}


import ./gen_qsizegrip_types
export gen_qsizegrip_types

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
  ./gen_qwidget
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
  gen_qwidget

type cQSizeGrip*{.exportc: "QSizeGrip", incompleteStruct.} = object

proc fcQSizeGrip_new(parent: pointer): ptr cQSizeGrip {.importc: "QSizeGrip_new".}
proc fcQSizeGrip_metaObject(self: pointer, ): pointer {.importc: "QSizeGrip_metaObject".}
proc fcQSizeGrip_metacast(self: pointer, param1: cstring): pointer {.importc: "QSizeGrip_metacast".}
proc fcQSizeGrip_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSizeGrip_metacall".}
proc fcQSizeGrip_tr(s: cstring): struct_miqt_string {.importc: "QSizeGrip_tr".}
proc fcQSizeGrip_sizeHint(self: pointer, ): pointer {.importc: "QSizeGrip_sizeHint".}
proc fcQSizeGrip_setVisible(self: pointer, visible: bool): void {.importc: "QSizeGrip_setVisible".}
proc fcQSizeGrip_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSizeGrip_tr2".}
proc fcQSizeGrip_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSizeGrip_tr3".}
proc fQSizeGrip_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_metaObject".}
proc fcQSizeGrip_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_metaObject".}
proc fQSizeGrip_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSizeGrip_virtualbase_metacast".}
proc fcQSizeGrip_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_metacast".}
proc fQSizeGrip_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSizeGrip_virtualbase_metacall".}
proc fcQSizeGrip_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_metacall".}
proc fQSizeGrip_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_sizeHint".}
proc fcQSizeGrip_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_sizeHint".}
proc fQSizeGrip_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSizeGrip_virtualbase_setVisible".}
proc fcQSizeGrip_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_setVisible".}
proc fQSizeGrip_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_paintEvent".}
proc fcQSizeGrip_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_paintEvent".}
proc fQSizeGrip_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_mousePressEvent".}
proc fcQSizeGrip_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_mousePressEvent".}
proc fQSizeGrip_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_mouseMoveEvent".}
proc fcQSizeGrip_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_mouseMoveEvent".}
proc fQSizeGrip_virtualbase_mouseReleaseEvent(self: pointer, mouseEvent: pointer): void{.importc: "QSizeGrip_virtualbase_mouseReleaseEvent".}
proc fcQSizeGrip_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_mouseReleaseEvent".}
proc fQSizeGrip_virtualbase_moveEvent(self: pointer, moveEvent: pointer): void{.importc: "QSizeGrip_virtualbase_moveEvent".}
proc fcQSizeGrip_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_moveEvent".}
proc fQSizeGrip_virtualbase_showEvent(self: pointer, showEvent: pointer): void{.importc: "QSizeGrip_virtualbase_showEvent".}
proc fcQSizeGrip_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_showEvent".}
proc fQSizeGrip_virtualbase_hideEvent(self: pointer, hideEvent: pointer): void{.importc: "QSizeGrip_virtualbase_hideEvent".}
proc fcQSizeGrip_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_hideEvent".}
proc fQSizeGrip_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QSizeGrip_virtualbase_eventFilter".}
proc fcQSizeGrip_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_eventFilter".}
proc fQSizeGrip_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QSizeGrip_virtualbase_event".}
proc fcQSizeGrip_override_virtual_event(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_event".}
proc fQSizeGrip_virtualbase_devType(self: pointer, ): cint{.importc: "QSizeGrip_virtualbase_devType".}
proc fcQSizeGrip_override_virtual_devType(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_devType".}
proc fQSizeGrip_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_minimumSizeHint".}
proc fcQSizeGrip_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_minimumSizeHint".}
proc fQSizeGrip_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSizeGrip_virtualbase_heightForWidth".}
proc fcQSizeGrip_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_heightForWidth".}
proc fQSizeGrip_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSizeGrip_virtualbase_hasHeightForWidth".}
proc fcQSizeGrip_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_hasHeightForWidth".}
proc fQSizeGrip_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_paintEngine".}
proc fcQSizeGrip_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_paintEngine".}
proc fQSizeGrip_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_mouseDoubleClickEvent".}
proc fcQSizeGrip_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_mouseDoubleClickEvent".}
proc fQSizeGrip_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_wheelEvent".}
proc fcQSizeGrip_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_wheelEvent".}
proc fQSizeGrip_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_keyPressEvent".}
proc fcQSizeGrip_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_keyPressEvent".}
proc fQSizeGrip_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_keyReleaseEvent".}
proc fcQSizeGrip_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_keyReleaseEvent".}
proc fQSizeGrip_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_focusInEvent".}
proc fcQSizeGrip_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_focusInEvent".}
proc fQSizeGrip_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_focusOutEvent".}
proc fcQSizeGrip_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_focusOutEvent".}
proc fQSizeGrip_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_enterEvent".}
proc fcQSizeGrip_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_enterEvent".}
proc fQSizeGrip_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_leaveEvent".}
proc fcQSizeGrip_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_leaveEvent".}
proc fQSizeGrip_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_resizeEvent".}
proc fcQSizeGrip_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_resizeEvent".}
proc fQSizeGrip_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_closeEvent".}
proc fcQSizeGrip_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_closeEvent".}
proc fQSizeGrip_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_contextMenuEvent".}
proc fcQSizeGrip_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_contextMenuEvent".}
proc fQSizeGrip_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_tabletEvent".}
proc fcQSizeGrip_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_tabletEvent".}
proc fQSizeGrip_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_actionEvent".}
proc fcQSizeGrip_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_actionEvent".}
proc fQSizeGrip_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_dragEnterEvent".}
proc fcQSizeGrip_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_dragEnterEvent".}
proc fQSizeGrip_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_dragMoveEvent".}
proc fcQSizeGrip_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_dragMoveEvent".}
proc fQSizeGrip_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_dragLeaveEvent".}
proc fcQSizeGrip_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_dragLeaveEvent".}
proc fQSizeGrip_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_dropEvent".}
proc fcQSizeGrip_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_dropEvent".}
proc fQSizeGrip_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QSizeGrip_virtualbase_nativeEvent".}
proc fcQSizeGrip_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_nativeEvent".}
proc fQSizeGrip_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_changeEvent".}
proc fcQSizeGrip_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_changeEvent".}
proc fQSizeGrip_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSizeGrip_virtualbase_metric".}
proc fcQSizeGrip_override_virtual_metric(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_metric".}
proc fQSizeGrip_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSizeGrip_virtualbase_initPainter".}
proc fcQSizeGrip_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_initPainter".}
proc fQSizeGrip_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSizeGrip_virtualbase_redirected".}
proc fcQSizeGrip_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_redirected".}
proc fQSizeGrip_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSizeGrip_virtualbase_sharedPainter".}
proc fcQSizeGrip_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_sharedPainter".}
proc fQSizeGrip_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSizeGrip_virtualbase_inputMethodEvent".}
proc fcQSizeGrip_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_inputMethodEvent".}
proc fQSizeGrip_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSizeGrip_virtualbase_inputMethodQuery".}
proc fcQSizeGrip_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_inputMethodQuery".}
proc fQSizeGrip_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSizeGrip_virtualbase_focusNextPrevChild".}
proc fcQSizeGrip_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_focusNextPrevChild".}
proc fQSizeGrip_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_timerEvent".}
proc fcQSizeGrip_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_timerEvent".}
proc fQSizeGrip_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_childEvent".}
proc fcQSizeGrip_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_childEvent".}
proc fQSizeGrip_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSizeGrip_virtualbase_customEvent".}
proc fcQSizeGrip_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_customEvent".}
proc fQSizeGrip_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSizeGrip_virtualbase_connectNotify".}
proc fcQSizeGrip_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_connectNotify".}
proc fQSizeGrip_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSizeGrip_virtualbase_disconnectNotify".}
proc fcQSizeGrip_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSizeGrip_override_virtual_disconnectNotify".}
proc fcQSizeGrip_staticMetaObject(): pointer {.importc: "QSizeGrip_staticMetaObject".}
proc fcQSizeGrip_delete(self: pointer) {.importc: "QSizeGrip_delete".}


func init*(T: type gen_qsizegrip_types.QSizeGrip, h: ptr cQSizeGrip): gen_qsizegrip_types.QSizeGrip =
  T(h: h)
proc create*(T: type gen_qsizegrip_types.QSizeGrip, parent: gen_qwidget_types.QWidget): gen_qsizegrip_types.QSizeGrip =
  gen_qsizegrip_types.QSizeGrip.init(fcQSizeGrip_new(parent.h))

proc metaObject*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizeGrip_metaObject(self.h))

proc metacast*(self: gen_qsizegrip_types.QSizeGrip, param1: cstring): pointer =
  fcQSizeGrip_metacast(self.h, param1)

proc metacall*(self: gen_qsizegrip_types.QSizeGrip, param1: cint, param2: cint, param3: pointer): cint =
  fcQSizeGrip_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring): string =
  let v_ms = fcQSizeGrip_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSizeGrip_sizeHint(self.h))

proc setVisible*(self: gen_qsizegrip_types.QSizeGrip, visible: bool): void =
  fcQSizeGrip_setVisible(self.h, visible)

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring, c: cstring): string =
  let v_ms = fcQSizeGrip_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsizegrip_types.QSizeGrip, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSizeGrip_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSizeGripmetaObject*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSizeGrip_virtualbase_metaObject(self.h))

type QSizeGripmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSizeGripmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_metaObject(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_metaObject ".} =
  var nimfunc = cast[ptr QSizeGripmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSizeGripmetacast*(self: gen_qsizegrip_types.QSizeGrip, param1: cstring): pointer =
  fQSizeGrip_virtualbase_metacast(self.h, param1)

type QSizeGripmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmetacastProc) =
  # TODO check subclass
  var tmp = new QSizeGripmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_metacast(self: ptr cQSizeGrip, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSizeGrip_metacast ".} =
  var nimfunc = cast[ptr QSizeGripmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSizeGripmetacall*(self: gen_qsizegrip_types.QSizeGrip, param1: cint, param2: cint, param3: pointer): cint =
  fQSizeGrip_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSizeGripmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmetacallProc) =
  # TODO check subclass
  var tmp = new QSizeGripmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_metacall(self: ptr cQSizeGrip, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSizeGrip_metacall ".} =
  var nimfunc = cast[ptr QSizeGripmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSizeGripsizeHint*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSizeGrip_virtualbase_sizeHint(self.h))

type QSizeGripsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripsizeHintProc) =
  # TODO check subclass
  var tmp = new QSizeGripsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_sizeHint(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_sizeHint ".} =
  var nimfunc = cast[ptr QSizeGripsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSizeGripsetVisible*(self: gen_qsizegrip_types.QSizeGrip, visible: bool): void =
  fQSizeGrip_virtualbase_setVisible(self.h, visible)

type QSizeGripsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripsetVisibleProc) =
  # TODO check subclass
  var tmp = new QSizeGripsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_setVisible(self: ptr cQSizeGrip, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSizeGrip_setVisible ".} =
  var nimfunc = cast[ptr QSizeGripsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QSizeGrippaintEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QPaintEvent): void =
  fQSizeGrip_virtualbase_paintEvent(self.h, param1.h)

type QSizeGrippaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGrippaintEventProc) =
  # TODO check subclass
  var tmp = new QSizeGrippaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_paintEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_paintEvent ".} =
  var nimfunc = cast[ptr QSizeGrippaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QSizeGripmousePressEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QMouseEvent): void =
  fQSizeGrip_virtualbase_mousePressEvent(self.h, param1.h)

type QSizeGripmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmousePressEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_mousePressEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_mousePressEvent ".} =
  var nimfunc = cast[ptr QSizeGripmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QSizeGripmouseMoveEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QMouseEvent): void =
  fQSizeGrip_virtualbase_mouseMoveEvent(self.h, param1.h)

type QSizeGripmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_mouseMoveEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QSizeGripmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QSizeGripmouseReleaseEvent*(self: gen_qsizegrip_types.QSizeGrip, mouseEvent: gen_qevent_types.QMouseEvent): void =
  fQSizeGrip_virtualbase_mouseReleaseEvent(self.h, mouseEvent.h)

type QSizeGripmouseReleaseEventProc* = proc(mouseEvent: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_mouseReleaseEvent(self: ptr cQSizeGrip, slot: int, mouseEvent: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QSizeGripmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: mouseEvent)


  nimfunc[](slotval1)
proc QSizeGripmoveEvent*(self: gen_qsizegrip_types.QSizeGrip, moveEvent: gen_qevent_types.QMoveEvent): void =
  fQSizeGrip_virtualbase_moveEvent(self.h, moveEvent.h)

type QSizeGripmoveEventProc* = proc(moveEvent: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmoveEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_moveEvent(self: ptr cQSizeGrip, slot: int, moveEvent: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_moveEvent ".} =
  var nimfunc = cast[ptr QSizeGripmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: moveEvent)


  nimfunc[](slotval1)
proc QSizeGripshowEvent*(self: gen_qsizegrip_types.QSizeGrip, showEvent: gen_qevent_types.QShowEvent): void =
  fQSizeGrip_virtualbase_showEvent(self.h, showEvent.h)

type QSizeGripshowEventProc* = proc(showEvent: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripshowEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_showEvent(self: ptr cQSizeGrip, slot: int, showEvent: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_showEvent ".} =
  var nimfunc = cast[ptr QSizeGripshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: showEvent)


  nimfunc[](slotval1)
proc QSizeGriphideEvent*(self: gen_qsizegrip_types.QSizeGrip, hideEvent: gen_qevent_types.QHideEvent): void =
  fQSizeGrip_virtualbase_hideEvent(self.h, hideEvent.h)

type QSizeGriphideEventProc* = proc(hideEvent: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGriphideEventProc) =
  # TODO check subclass
  var tmp = new QSizeGriphideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_hideEvent(self: ptr cQSizeGrip, slot: int, hideEvent: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_hideEvent ".} =
  var nimfunc = cast[ptr QSizeGriphideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: hideEvent)


  nimfunc[](slotval1)
proc QSizeGripeventFilter*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQSizeGrip_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QSizeGripeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripeventFilterProc) =
  # TODO check subclass
  var tmp = new QSizeGripeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_eventFilter(self: ptr cQSizeGrip, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QSizeGrip_eventFilter ".} =
  var nimfunc = cast[ptr QSizeGripeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSizeGripevent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qcoreevent_types.QEvent): bool =
  fQSizeGrip_virtualbase_event(self.h, param1.h)

type QSizeGripeventProc* = proc(param1: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripeventProc) =
  # TODO check subclass
  var tmp = new QSizeGripeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_event(self: ptr cQSizeGrip, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QSizeGrip_event ".} =
  var nimfunc = cast[ptr QSizeGripeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSizeGripdevType*(self: gen_qsizegrip_types.QSizeGrip, ): cint =
  fQSizeGrip_virtualbase_devType(self.h)

type QSizeGripdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripdevTypeProc) =
  # TODO check subclass
  var tmp = new QSizeGripdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_devType(self: ptr cQSizeGrip, slot: int): cint {.exportc: "miqt_exec_callback_QSizeGrip_devType ".} =
  var nimfunc = cast[ptr QSizeGripdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSizeGripminimumSizeHint*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSizeGrip_virtualbase_minimumSizeHint(self.h))

type QSizeGripminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QSizeGripminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_minimumSizeHint(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_minimumSizeHint ".} =
  var nimfunc = cast[ptr QSizeGripminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSizeGripheightForWidth*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): cint =
  fQSizeGrip_virtualbase_heightForWidth(self.h, param1)

type QSizeGripheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripheightForWidthProc) =
  # TODO check subclass
  var tmp = new QSizeGripheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_heightForWidth(self: ptr cQSizeGrip, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSizeGrip_heightForWidth ".} =
  var nimfunc = cast[ptr QSizeGripheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSizeGriphasHeightForWidth*(self: gen_qsizegrip_types.QSizeGrip, ): bool =
  fQSizeGrip_virtualbase_hasHeightForWidth(self.h)

type QSizeGriphasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGriphasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSizeGriphasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_hasHeightForWidth(self: ptr cQSizeGrip, slot: int): bool {.exportc: "miqt_exec_callback_QSizeGrip_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QSizeGriphasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSizeGrippaintEngine*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQSizeGrip_virtualbase_paintEngine(self.h))

type QSizeGrippaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGrippaintEngineProc) =
  # TODO check subclass
  var tmp = new QSizeGrippaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_paintEngine(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_paintEngine ".} =
  var nimfunc = cast[ptr QSizeGrippaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSizeGripmouseDoubleClickEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QMouseEvent): void =
  fQSizeGrip_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSizeGripmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_mouseDoubleClickEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QSizeGripmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripwheelEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QWheelEvent): void =
  fQSizeGrip_virtualbase_wheelEvent(self.h, event.h)

type QSizeGripwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripwheelEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_wheelEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_wheelEvent ".} =
  var nimfunc = cast[ptr QSizeGripwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripkeyPressEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QKeyEvent): void =
  fQSizeGrip_virtualbase_keyPressEvent(self.h, event.h)

type QSizeGripkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_keyPressEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_keyPressEvent ".} =
  var nimfunc = cast[ptr QSizeGripkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripkeyReleaseEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QKeyEvent): void =
  fQSizeGrip_virtualbase_keyReleaseEvent(self.h, event.h)

type QSizeGripkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_keyReleaseEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QSizeGripkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripfocusInEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QFocusEvent): void =
  fQSizeGrip_virtualbase_focusInEvent(self.h, event.h)

type QSizeGripfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripfocusInEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_focusInEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_focusInEvent ".} =
  var nimfunc = cast[ptr QSizeGripfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripfocusOutEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QFocusEvent): void =
  fQSizeGrip_virtualbase_focusOutEvent(self.h, event.h)

type QSizeGripfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_focusOutEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_focusOutEvent ".} =
  var nimfunc = cast[ptr QSizeGripfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripenterEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QEnterEvent): void =
  fQSizeGrip_virtualbase_enterEvent(self.h, event.h)

type QSizeGripenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripenterEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_enterEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_enterEvent ".} =
  var nimfunc = cast[ptr QSizeGripenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripleaveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QEvent): void =
  fQSizeGrip_virtualbase_leaveEvent(self.h, event.h)

type QSizeGripleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripleaveEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_leaveEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_leaveEvent ".} =
  var nimfunc = cast[ptr QSizeGripleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripresizeEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QResizeEvent): void =
  fQSizeGrip_virtualbase_resizeEvent(self.h, event.h)

type QSizeGripresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripresizeEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_resizeEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_resizeEvent ".} =
  var nimfunc = cast[ptr QSizeGripresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripcloseEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QCloseEvent): void =
  fQSizeGrip_virtualbase_closeEvent(self.h, event.h)

type QSizeGripcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripcloseEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_closeEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_closeEvent ".} =
  var nimfunc = cast[ptr QSizeGripcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripcontextMenuEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QContextMenuEvent): void =
  fQSizeGrip_virtualbase_contextMenuEvent(self.h, event.h)

type QSizeGripcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_contextMenuEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_contextMenuEvent ".} =
  var nimfunc = cast[ptr QSizeGripcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGriptabletEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QTabletEvent): void =
  fQSizeGrip_virtualbase_tabletEvent(self.h, event.h)

type QSizeGriptabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGriptabletEventProc) =
  # TODO check subclass
  var tmp = new QSizeGriptabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_tabletEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_tabletEvent ".} =
  var nimfunc = cast[ptr QSizeGriptabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripactionEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QActionEvent): void =
  fQSizeGrip_virtualbase_actionEvent(self.h, event.h)

type QSizeGripactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripactionEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_actionEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_actionEvent ".} =
  var nimfunc = cast[ptr QSizeGripactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripdragEnterEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragEnterEvent): void =
  fQSizeGrip_virtualbase_dragEnterEvent(self.h, event.h)

type QSizeGripdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_dragEnterEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_dragEnterEvent ".} =
  var nimfunc = cast[ptr QSizeGripdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripdragMoveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragMoveEvent): void =
  fQSizeGrip_virtualbase_dragMoveEvent(self.h, event.h)

type QSizeGripdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_dragMoveEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_dragMoveEvent ".} =
  var nimfunc = cast[ptr QSizeGripdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripdragLeaveEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDragLeaveEvent): void =
  fQSizeGrip_virtualbase_dragLeaveEvent(self.h, event.h)

type QSizeGripdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_dragLeaveEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QSizeGripdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripdropEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qevent_types.QDropEvent): void =
  fQSizeGrip_virtualbase_dropEvent(self.h, event.h)

type QSizeGripdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripdropEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_dropEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_dropEvent ".} =
  var nimfunc = cast[ptr QSizeGripdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripnativeEvent*(self: gen_qsizegrip_types.QSizeGrip, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQSizeGrip_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSizeGripnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripnativeEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_nativeEvent(self: ptr cQSizeGrip, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QSizeGrip_nativeEvent ".} =
  var nimfunc = cast[ptr QSizeGripnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSizeGripchangeEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qcoreevent_types.QEvent): void =
  fQSizeGrip_virtualbase_changeEvent(self.h, param1.h)

type QSizeGripchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripchangeEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_changeEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_changeEvent ".} =
  var nimfunc = cast[ptr QSizeGripchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QSizeGripmetric*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): cint =
  fQSizeGrip_virtualbase_metric(self.h, cint(param1))

type QSizeGripmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripmetricProc) =
  # TODO check subclass
  var tmp = new QSizeGripmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_metric(self: ptr cQSizeGrip, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSizeGrip_metric ".} =
  var nimfunc = cast[ptr QSizeGripmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSizeGripinitPainter*(self: gen_qsizegrip_types.QSizeGrip, painter: gen_qpainter_types.QPainter): void =
  fQSizeGrip_virtualbase_initPainter(self.h, painter.h)

type QSizeGripinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripinitPainterProc) =
  # TODO check subclass
  var tmp = new QSizeGripinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_initPainter(self: ptr cQSizeGrip, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_initPainter ".} =
  var nimfunc = cast[ptr QSizeGripinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSizeGripredirected*(self: gen_qsizegrip_types.QSizeGrip, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQSizeGrip_virtualbase_redirected(self.h, offset.h))

type QSizeGripredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripredirectedProc) =
  # TODO check subclass
  var tmp = new QSizeGripredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_redirected(self: ptr cQSizeGrip, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSizeGrip_redirected ".} =
  var nimfunc = cast[ptr QSizeGripredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSizeGripsharedPainter*(self: gen_qsizegrip_types.QSizeGrip, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQSizeGrip_virtualbase_sharedPainter(self.h))

type QSizeGripsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripsharedPainterProc) =
  # TODO check subclass
  var tmp = new QSizeGripsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_sharedPainter(self: ptr cQSizeGrip, slot: int): pointer {.exportc: "miqt_exec_callback_QSizeGrip_sharedPainter ".} =
  var nimfunc = cast[ptr QSizeGripsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSizeGripinputMethodEvent*(self: gen_qsizegrip_types.QSizeGrip, param1: gen_qevent_types.QInputMethodEvent): void =
  fQSizeGrip_virtualbase_inputMethodEvent(self.h, param1.h)

type QSizeGripinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_inputMethodEvent(self: ptr cQSizeGrip, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_inputMethodEvent ".} =
  var nimfunc = cast[ptr QSizeGripinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QSizeGripinputMethodQuery*(self: gen_qsizegrip_types.QSizeGrip, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSizeGrip_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSizeGripinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QSizeGripinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_inputMethodQuery(self: ptr cQSizeGrip, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSizeGrip_inputMethodQuery ".} =
  var nimfunc = cast[ptr QSizeGripinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSizeGripfocusNextPrevChild*(self: gen_qsizegrip_types.QSizeGrip, next: bool): bool =
  fQSizeGrip_virtualbase_focusNextPrevChild(self.h, next)

type QSizeGripfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QSizeGripfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_focusNextPrevChild(self: ptr cQSizeGrip, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSizeGrip_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QSizeGripfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSizeGriptimerEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSizeGrip_virtualbase_timerEvent(self.h, event.h)

type QSizeGriptimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGriptimerEventProc) =
  # TODO check subclass
  var tmp = new QSizeGriptimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_timerEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_timerEvent ".} =
  var nimfunc = cast[ptr QSizeGriptimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripchildEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QChildEvent): void =
  fQSizeGrip_virtualbase_childEvent(self.h, event.h)

type QSizeGripchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripchildEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_childEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_childEvent ".} =
  var nimfunc = cast[ptr QSizeGripchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripcustomEvent*(self: gen_qsizegrip_types.QSizeGrip, event: gen_qcoreevent_types.QEvent): void =
  fQSizeGrip_virtualbase_customEvent(self.h, event.h)

type QSizeGripcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripcustomEventProc) =
  # TODO check subclass
  var tmp = new QSizeGripcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_customEvent(self: ptr cQSizeGrip, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_customEvent ".} =
  var nimfunc = cast[ptr QSizeGripcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSizeGripconnectNotify*(self: gen_qsizegrip_types.QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSizeGrip_virtualbase_connectNotify(self.h, signal.h)

type QSizeGripconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSizeGripconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_connectNotify(self: ptr cQSizeGrip, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_connectNotify ".} =
  var nimfunc = cast[ptr QSizeGripconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSizeGripdisconnectNotify*(self: gen_qsizegrip_types.QSizeGrip, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSizeGrip_virtualbase_disconnectNotify(self.h, signal.h)

type QSizeGripdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsizegrip_types.QSizeGrip, slot: QSizeGripdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSizeGripdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSizeGrip_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSizeGrip_disconnectNotify(self: ptr cQSizeGrip, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSizeGrip_disconnectNotify ".} =
  var nimfunc = cast[ptr QSizeGripdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsizegrip_types.QSizeGrip): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizeGrip_staticMetaObject())
proc delete*(self: gen_qsizegrip_types.QSizeGrip) =
  fcQSizeGrip_delete(self.h)
