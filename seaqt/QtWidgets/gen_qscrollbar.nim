import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qscrollbar.cpp", cflags).}


import ./gen_qscrollbar_types
export gen_qscrollbar_types

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
  ./gen_qabstractslider,
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
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qabstractslider,
  gen_qwidget_types

type cQScrollBar*{.exportc: "QScrollBar", incompleteStruct.} = object

proc fcQScrollBar_new(parent: pointer): ptr cQScrollBar {.importc: "QScrollBar_new".}
proc fcQScrollBar_new2(): ptr cQScrollBar {.importc: "QScrollBar_new2".}
proc fcQScrollBar_new3(param1: cint): ptr cQScrollBar {.importc: "QScrollBar_new3".}
proc fcQScrollBar_new4(param1: cint, parent: pointer): ptr cQScrollBar {.importc: "QScrollBar_new4".}
proc fcQScrollBar_metaObject(self: pointer, ): pointer {.importc: "QScrollBar_metaObject".}
proc fcQScrollBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QScrollBar_metacast".}
proc fcQScrollBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QScrollBar_metacall".}
proc fcQScrollBar_tr(s: cstring): struct_miqt_string {.importc: "QScrollBar_tr".}
proc fcQScrollBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QScrollBar_trUtf8".}
proc fcQScrollBar_sizeHint(self: pointer, ): pointer {.importc: "QScrollBar_sizeHint".}
proc fcQScrollBar_event(self: pointer, event: pointer): bool {.importc: "QScrollBar_event".}
proc fcQScrollBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollBar_tr2".}
proc fcQScrollBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollBar_tr3".}
proc fcQScrollBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QScrollBar_trUtf82".}
proc fcQScrollBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QScrollBar_trUtf83".}
proc fQScrollBar_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_metaObject".}
proc fcQScrollBar_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_metaObject".}
proc fQScrollBar_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QScrollBar_virtualbase_metacast".}
proc fcQScrollBar_override_virtual_metacast(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_metacast".}
proc fQScrollBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QScrollBar_virtualbase_metacall".}
proc fcQScrollBar_override_virtual_metacall(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_metacall".}
proc fQScrollBar_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_sizeHint".}
proc fcQScrollBar_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_sizeHint".}
proc fQScrollBar_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QScrollBar_virtualbase_event".}
proc fcQScrollBar_override_virtual_event(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_event".}
proc fQScrollBar_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_wheelEvent".}
proc fcQScrollBar_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_wheelEvent".}
proc fQScrollBar_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_paintEvent".}
proc fcQScrollBar_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_paintEvent".}
proc fQScrollBar_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_mousePressEvent".}
proc fcQScrollBar_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_mousePressEvent".}
proc fQScrollBar_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_mouseReleaseEvent".}
proc fcQScrollBar_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_mouseReleaseEvent".}
proc fQScrollBar_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_mouseMoveEvent".}
proc fcQScrollBar_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_mouseMoveEvent".}
proc fQScrollBar_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_hideEvent".}
proc fcQScrollBar_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_hideEvent".}
proc fQScrollBar_virtualbase_sliderChange(self: pointer, change: cint): void{.importc: "QScrollBar_virtualbase_sliderChange".}
proc fcQScrollBar_override_virtual_sliderChange(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_sliderChange".}
proc fQScrollBar_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_contextMenuEvent".}
proc fcQScrollBar_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_contextMenuEvent".}
proc fQScrollBar_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QScrollBar_virtualbase_keyPressEvent".}
proc fcQScrollBar_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_keyPressEvent".}
proc fQScrollBar_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_timerEvent".}
proc fcQScrollBar_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_timerEvent".}
proc fQScrollBar_virtualbase_changeEvent(self: pointer, e: pointer): void{.importc: "QScrollBar_virtualbase_changeEvent".}
proc fcQScrollBar_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_changeEvent".}
proc fQScrollBar_virtualbase_devType(self: pointer, ): cint{.importc: "QScrollBar_virtualbase_devType".}
proc fcQScrollBar_override_virtual_devType(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_devType".}
proc fQScrollBar_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QScrollBar_virtualbase_setVisible".}
proc fcQScrollBar_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_setVisible".}
proc fQScrollBar_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_minimumSizeHint".}
proc fcQScrollBar_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_minimumSizeHint".}
proc fQScrollBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QScrollBar_virtualbase_heightForWidth".}
proc fcQScrollBar_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_heightForWidth".}
proc fQScrollBar_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QScrollBar_virtualbase_hasHeightForWidth".}
proc fcQScrollBar_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_hasHeightForWidth".}
proc fQScrollBar_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_paintEngine".}
proc fcQScrollBar_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_paintEngine".}
proc fQScrollBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_mouseDoubleClickEvent".}
proc fcQScrollBar_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_mouseDoubleClickEvent".}
proc fQScrollBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_keyReleaseEvent".}
proc fcQScrollBar_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_keyReleaseEvent".}
proc fQScrollBar_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_focusInEvent".}
proc fcQScrollBar_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_focusInEvent".}
proc fQScrollBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_focusOutEvent".}
proc fcQScrollBar_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_focusOutEvent".}
proc fQScrollBar_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_enterEvent".}
proc fcQScrollBar_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_enterEvent".}
proc fQScrollBar_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_leaveEvent".}
proc fcQScrollBar_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_leaveEvent".}
proc fQScrollBar_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_moveEvent".}
proc fcQScrollBar_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_moveEvent".}
proc fQScrollBar_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_resizeEvent".}
proc fcQScrollBar_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_resizeEvent".}
proc fQScrollBar_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_closeEvent".}
proc fcQScrollBar_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_closeEvent".}
proc fQScrollBar_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_tabletEvent".}
proc fcQScrollBar_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_tabletEvent".}
proc fQScrollBar_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_actionEvent".}
proc fcQScrollBar_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_actionEvent".}
proc fQScrollBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_dragEnterEvent".}
proc fcQScrollBar_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_dragEnterEvent".}
proc fQScrollBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_dragMoveEvent".}
proc fcQScrollBar_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_dragMoveEvent".}
proc fQScrollBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_dragLeaveEvent".}
proc fcQScrollBar_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_dragLeaveEvent".}
proc fQScrollBar_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_dropEvent".}
proc fcQScrollBar_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_dropEvent".}
proc fQScrollBar_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_showEvent".}
proc fcQScrollBar_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_showEvent".}
proc fQScrollBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QScrollBar_virtualbase_nativeEvent".}
proc fcQScrollBar_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_nativeEvent".}
proc fQScrollBar_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QScrollBar_virtualbase_metric".}
proc fcQScrollBar_override_virtual_metric(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_metric".}
proc fQScrollBar_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QScrollBar_virtualbase_initPainter".}
proc fcQScrollBar_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_initPainter".}
proc fQScrollBar_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QScrollBar_virtualbase_redirected".}
proc fcQScrollBar_override_virtual_redirected(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_redirected".}
proc fQScrollBar_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QScrollBar_virtualbase_sharedPainter".}
proc fcQScrollBar_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_sharedPainter".}
proc fQScrollBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QScrollBar_virtualbase_inputMethodEvent".}
proc fcQScrollBar_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_inputMethodEvent".}
proc fQScrollBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QScrollBar_virtualbase_inputMethodQuery".}
proc fcQScrollBar_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_inputMethodQuery".}
proc fQScrollBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QScrollBar_virtualbase_focusNextPrevChild".}
proc fcQScrollBar_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_focusNextPrevChild".}
proc fQScrollBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QScrollBar_virtualbase_eventFilter".}
proc fcQScrollBar_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_eventFilter".}
proc fQScrollBar_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_childEvent".}
proc fcQScrollBar_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_childEvent".}
proc fQScrollBar_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QScrollBar_virtualbase_customEvent".}
proc fcQScrollBar_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_customEvent".}
proc fQScrollBar_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QScrollBar_virtualbase_connectNotify".}
proc fcQScrollBar_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_connectNotify".}
proc fQScrollBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QScrollBar_virtualbase_disconnectNotify".}
proc fcQScrollBar_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QScrollBar_override_virtual_disconnectNotify".}
proc fcQScrollBar_staticMetaObject(): pointer {.importc: "QScrollBar_staticMetaObject".}
proc fcQScrollBar_delete(self: pointer) {.importc: "QScrollBar_delete".}


func init*(T: type gen_qscrollbar_types.QScrollBar, h: ptr cQScrollBar): gen_qscrollbar_types.QScrollBar =
  T(h: h)
proc create*(T: type gen_qscrollbar_types.QScrollBar, parent: gen_qwidget_types.QWidget): gen_qscrollbar_types.QScrollBar =
  gen_qscrollbar_types.QScrollBar.init(fcQScrollBar_new(parent.h))

proc create*(T: type gen_qscrollbar_types.QScrollBar, ): gen_qscrollbar_types.QScrollBar =
  gen_qscrollbar_types.QScrollBar.init(fcQScrollBar_new2())

proc create*(T: type gen_qscrollbar_types.QScrollBar, param1: cint): gen_qscrollbar_types.QScrollBar =
  gen_qscrollbar_types.QScrollBar.init(fcQScrollBar_new3(cint(param1)))

proc create*(T: type gen_qscrollbar_types.QScrollBar, param1: cint, parent: gen_qwidget_types.QWidget): gen_qscrollbar_types.QScrollBar =
  gen_qscrollbar_types.QScrollBar.init(fcQScrollBar_new4(cint(param1), parent.h))

proc metaObject*(self: gen_qscrollbar_types.QScrollBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollBar_metaObject(self.h))

proc metacast*(self: gen_qscrollbar_types.QScrollBar, param1: cstring): pointer =
  fcQScrollBar_metacast(self.h, param1)

proc metacall*(self: gen_qscrollbar_types.QScrollBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQScrollBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring): string =
  let v_ms = fcQScrollBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscrollbar_types.QScrollBar, s: cstring): string =
  let v_ms = fcQScrollBar_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sizeHint*(self: gen_qscrollbar_types.QScrollBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQScrollBar_sizeHint(self.h))

proc event*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): bool =
  fcQScrollBar_event(self.h, event.h)

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring, c: cstring): string =
  let v_ms = fcQScrollBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qscrollbar_types.QScrollBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScrollBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscrollbar_types.QScrollBar, s: cstring, c: cstring): string =
  let v_ms = fcQScrollBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qscrollbar_types.QScrollBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQScrollBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QScrollBarmetaObject*(self: gen_qscrollbar_types.QScrollBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQScrollBar_virtualbase_metaObject(self.h))

type QScrollBarmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmetaObjectProc) =
  # TODO check subclass
  var tmp = new QScrollBarmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_metaObject(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_metaObject ".} =
  var nimfunc = cast[ptr QScrollBarmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollBarmetacast*(self: gen_qscrollbar_types.QScrollBar, param1: cstring): pointer =
  fQScrollBar_virtualbase_metacast(self.h, param1)

type QScrollBarmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmetacastProc) =
  # TODO check subclass
  var tmp = new QScrollBarmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_metacast(self: ptr cQScrollBar, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QScrollBar_metacast ".} =
  var nimfunc = cast[ptr QScrollBarmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollBarmetacall*(self: gen_qscrollbar_types.QScrollBar, param1: cint, param2: cint, param3: pointer): cint =
  fQScrollBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QScrollBarmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmetacallProc) =
  # TODO check subclass
  var tmp = new QScrollBarmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_metacall(self: ptr cQScrollBar, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QScrollBar_metacall ".} =
  var nimfunc = cast[ptr QScrollBarmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QScrollBarsizeHint*(self: gen_qscrollbar_types.QScrollBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQScrollBar_virtualbase_sizeHint(self.h))

type QScrollBarsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarsizeHintProc) =
  # TODO check subclass
  var tmp = new QScrollBarsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_sizeHint(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_sizeHint ".} =
  var nimfunc = cast[ptr QScrollBarsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollBarevent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): bool =
  fQScrollBar_virtualbase_event(self.h, event.h)

type QScrollBareventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBareventProc) =
  # TODO check subclass
  var tmp = new QScrollBareventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_event(self: ptr cQScrollBar, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QScrollBar_event ".} =
  var nimfunc = cast[ptr QScrollBareventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollBarwheelEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QWheelEvent): void =
  fQScrollBar_virtualbase_wheelEvent(self.h, param1.h)

type QScrollBarwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarwheelEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_wheelEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_wheelEvent ".} =
  var nimfunc = cast[ptr QScrollBarwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarpaintEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QPaintEvent): void =
  fQScrollBar_virtualbase_paintEvent(self.h, param1.h)

type QScrollBarpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarpaintEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_paintEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_paintEvent ".} =
  var nimfunc = cast[ptr QScrollBarpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarmousePressEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fQScrollBar_virtualbase_mousePressEvent(self.h, param1.h)

type QScrollBarmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmousePressEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_mousePressEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_mousePressEvent ".} =
  var nimfunc = cast[ptr QScrollBarmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarmouseReleaseEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fQScrollBar_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QScrollBarmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_mouseReleaseEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QScrollBarmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarmouseMoveEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QMouseEvent): void =
  fQScrollBar_virtualbase_mouseMoveEvent(self.h, param1.h)

type QScrollBarmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_mouseMoveEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QScrollBarmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarhideEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QHideEvent): void =
  fQScrollBar_virtualbase_hideEvent(self.h, param1.h)

type QScrollBarhideEventProc* = proc(param1: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarhideEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_hideEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_hideEvent ".} =
  var nimfunc = cast[ptr QScrollBarhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarsliderChange*(self: gen_qscrollbar_types.QScrollBar, change: cint): void =
  fQScrollBar_virtualbase_sliderChange(self.h, cint(change))

type QScrollBarsliderChangeProc* = proc(change: cint): void
proc onsliderChange*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarsliderChangeProc) =
  # TODO check subclass
  var tmp = new QScrollBarsliderChangeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_sliderChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_sliderChange(self: ptr cQScrollBar, slot: int, change: cint): void {.exportc: "miqt_exec_callback_QScrollBar_sliderChange ".} =
  var nimfunc = cast[ptr QScrollBarsliderChangeProc](cast[pointer](slot))
  let slotval1 = cint(change)


  nimfunc[](slotval1)
proc QScrollBarcontextMenuEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QContextMenuEvent): void =
  fQScrollBar_virtualbase_contextMenuEvent(self.h, param1.h)

type QScrollBarcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_contextMenuEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_contextMenuEvent ".} =
  var nimfunc = cast[ptr QScrollBarcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarkeyPressEvent*(self: gen_qscrollbar_types.QScrollBar, ev: gen_qevent_types.QKeyEvent): void =
  fQScrollBar_virtualbase_keyPressEvent(self.h, ev.h)

type QScrollBarkeyPressEventProc* = proc(ev: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_keyPressEvent(self: ptr cQScrollBar, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_keyPressEvent ".} =
  var nimfunc = cast[ptr QScrollBarkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)


  nimfunc[](slotval1)
proc QScrollBartimerEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qcoreevent_types.QTimerEvent): void =
  fQScrollBar_virtualbase_timerEvent(self.h, param1.h)

type QScrollBartimerEventProc* = proc(param1: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBartimerEventProc) =
  # TODO check subclass
  var tmp = new QScrollBartimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_timerEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_timerEvent ".} =
  var nimfunc = cast[ptr QScrollBartimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarchangeEvent*(self: gen_qscrollbar_types.QScrollBar, e: gen_qcoreevent_types.QEvent): void =
  fQScrollBar_virtualbase_changeEvent(self.h, e.h)

type QScrollBarchangeEventProc* = proc(e: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarchangeEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_changeEvent(self: ptr cQScrollBar, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_changeEvent ".} =
  var nimfunc = cast[ptr QScrollBarchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  nimfunc[](slotval1)
proc QScrollBardevType*(self: gen_qscrollbar_types.QScrollBar, ): cint =
  fQScrollBar_virtualbase_devType(self.h)

type QScrollBardevTypeProc* = proc(): cint
proc ondevType*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBardevTypeProc) =
  # TODO check subclass
  var tmp = new QScrollBardevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_devType(self: ptr cQScrollBar, slot: int): cint {.exportc: "miqt_exec_callback_QScrollBar_devType ".} =
  var nimfunc = cast[ptr QScrollBardevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QScrollBarsetVisible*(self: gen_qscrollbar_types.QScrollBar, visible: bool): void =
  fQScrollBar_virtualbase_setVisible(self.h, visible)

type QScrollBarsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarsetVisibleProc) =
  # TODO check subclass
  var tmp = new QScrollBarsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_setVisible(self: ptr cQScrollBar, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QScrollBar_setVisible ".} =
  var nimfunc = cast[ptr QScrollBarsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QScrollBarminimumSizeHint*(self: gen_qscrollbar_types.QScrollBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQScrollBar_virtualbase_minimumSizeHint(self.h))

type QScrollBarminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QScrollBarminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_minimumSizeHint(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_minimumSizeHint ".} =
  var nimfunc = cast[ptr QScrollBarminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollBarheightForWidth*(self: gen_qscrollbar_types.QScrollBar, param1: cint): cint =
  fQScrollBar_virtualbase_heightForWidth(self.h, param1)

type QScrollBarheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarheightForWidthProc) =
  # TODO check subclass
  var tmp = new QScrollBarheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_heightForWidth(self: ptr cQScrollBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QScrollBar_heightForWidth ".} =
  var nimfunc = cast[ptr QScrollBarheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollBarhasHeightForWidth*(self: gen_qscrollbar_types.QScrollBar, ): bool =
  fQScrollBar_virtualbase_hasHeightForWidth(self.h)

type QScrollBarhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QScrollBarhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_hasHeightForWidth(self: ptr cQScrollBar, slot: int): bool {.exportc: "miqt_exec_callback_QScrollBar_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QScrollBarhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QScrollBarpaintEngine*(self: gen_qscrollbar_types.QScrollBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQScrollBar_virtualbase_paintEngine(self.h))

type QScrollBarpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarpaintEngineProc) =
  # TODO check subclass
  var tmp = new QScrollBarpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_paintEngine(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_paintEngine ".} =
  var nimfunc = cast[ptr QScrollBarpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollBarmouseDoubleClickEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QMouseEvent): void =
  fQScrollBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QScrollBarmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_mouseDoubleClickEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QScrollBarmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarkeyReleaseEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QKeyEvent): void =
  fQScrollBar_virtualbase_keyReleaseEvent(self.h, event.h)

type QScrollBarkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_keyReleaseEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QScrollBarkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarfocusInEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QFocusEvent): void =
  fQScrollBar_virtualbase_focusInEvent(self.h, event.h)

type QScrollBarfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarfocusInEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_focusInEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_focusInEvent ".} =
  var nimfunc = cast[ptr QScrollBarfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarfocusOutEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QFocusEvent): void =
  fQScrollBar_virtualbase_focusOutEvent(self.h, event.h)

type QScrollBarfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_focusOutEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_focusOutEvent ".} =
  var nimfunc = cast[ptr QScrollBarfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarenterEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): void =
  fQScrollBar_virtualbase_enterEvent(self.h, event.h)

type QScrollBarenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarenterEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_enterEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_enterEvent ".} =
  var nimfunc = cast[ptr QScrollBarenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarleaveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): void =
  fQScrollBar_virtualbase_leaveEvent(self.h, event.h)

type QScrollBarleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarleaveEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_leaveEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_leaveEvent ".} =
  var nimfunc = cast[ptr QScrollBarleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarmoveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QMoveEvent): void =
  fQScrollBar_virtualbase_moveEvent(self.h, event.h)

type QScrollBarmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmoveEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_moveEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_moveEvent ".} =
  var nimfunc = cast[ptr QScrollBarmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarresizeEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QResizeEvent): void =
  fQScrollBar_virtualbase_resizeEvent(self.h, event.h)

type QScrollBarresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarresizeEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_resizeEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_resizeEvent ".} =
  var nimfunc = cast[ptr QScrollBarresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarcloseEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QCloseEvent): void =
  fQScrollBar_virtualbase_closeEvent(self.h, event.h)

type QScrollBarcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarcloseEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_closeEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_closeEvent ".} =
  var nimfunc = cast[ptr QScrollBarcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBartabletEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QTabletEvent): void =
  fQScrollBar_virtualbase_tabletEvent(self.h, event.h)

type QScrollBartabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBartabletEventProc) =
  # TODO check subclass
  var tmp = new QScrollBartabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_tabletEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_tabletEvent ".} =
  var nimfunc = cast[ptr QScrollBartabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBaractionEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QActionEvent): void =
  fQScrollBar_virtualbase_actionEvent(self.h, event.h)

type QScrollBaractionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBaractionEventProc) =
  # TODO check subclass
  var tmp = new QScrollBaractionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_actionEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_actionEvent ".} =
  var nimfunc = cast[ptr QScrollBaractionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBardragEnterEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragEnterEvent): void =
  fQScrollBar_virtualbase_dragEnterEvent(self.h, event.h)

type QScrollBardragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBardragEnterEventProc) =
  # TODO check subclass
  var tmp = new QScrollBardragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_dragEnterEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_dragEnterEvent ".} =
  var nimfunc = cast[ptr QScrollBardragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBardragMoveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragMoveEvent): void =
  fQScrollBar_virtualbase_dragMoveEvent(self.h, event.h)

type QScrollBardragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBardragMoveEventProc) =
  # TODO check subclass
  var tmp = new QScrollBardragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_dragMoveEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_dragMoveEvent ".} =
  var nimfunc = cast[ptr QScrollBardragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBardragLeaveEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fQScrollBar_virtualbase_dragLeaveEvent(self.h, event.h)

type QScrollBardragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBardragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QScrollBardragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_dragLeaveEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QScrollBardragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBardropEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QDropEvent): void =
  fQScrollBar_virtualbase_dropEvent(self.h, event.h)

type QScrollBardropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBardropEventProc) =
  # TODO check subclass
  var tmp = new QScrollBardropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_dropEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_dropEvent ".} =
  var nimfunc = cast[ptr QScrollBardropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarshowEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qevent_types.QShowEvent): void =
  fQScrollBar_virtualbase_showEvent(self.h, event.h)

type QScrollBarshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarshowEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_showEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_showEvent ".} =
  var nimfunc = cast[ptr QScrollBarshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarnativeEvent*(self: gen_qscrollbar_types.QScrollBar, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQScrollBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QScrollBarnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarnativeEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_nativeEvent(self: ptr cQScrollBar, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QScrollBar_nativeEvent ".} =
  var nimfunc = cast[ptr QScrollBarnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QScrollBarmetric*(self: gen_qscrollbar_types.QScrollBar, param1: cint): cint =
  fQScrollBar_virtualbase_metric(self.h, cint(param1))

type QScrollBarmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarmetricProc) =
  # TODO check subclass
  var tmp = new QScrollBarmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_metric(self: ptr cQScrollBar, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QScrollBar_metric ".} =
  var nimfunc = cast[ptr QScrollBarmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollBarinitPainter*(self: gen_qscrollbar_types.QScrollBar, painter: gen_qpainter_types.QPainter): void =
  fQScrollBar_virtualbase_initPainter(self.h, painter.h)

type QScrollBarinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarinitPainterProc) =
  # TODO check subclass
  var tmp = new QScrollBarinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_initPainter(self: ptr cQScrollBar, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_initPainter ".} =
  var nimfunc = cast[ptr QScrollBarinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QScrollBarredirected*(self: gen_qscrollbar_types.QScrollBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQScrollBar_virtualbase_redirected(self.h, offset.h))

type QScrollBarredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarredirectedProc) =
  # TODO check subclass
  var tmp = new QScrollBarredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_redirected(self: ptr cQScrollBar, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QScrollBar_redirected ".} =
  var nimfunc = cast[ptr QScrollBarredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QScrollBarsharedPainter*(self: gen_qscrollbar_types.QScrollBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQScrollBar_virtualbase_sharedPainter(self.h))

type QScrollBarsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarsharedPainterProc) =
  # TODO check subclass
  var tmp = new QScrollBarsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_sharedPainter(self: ptr cQScrollBar, slot: int): pointer {.exportc: "miqt_exec_callback_QScrollBar_sharedPainter ".} =
  var nimfunc = cast[ptr QScrollBarsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QScrollBarinputMethodEvent*(self: gen_qscrollbar_types.QScrollBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fQScrollBar_virtualbase_inputMethodEvent(self.h, param1.h)

type QScrollBarinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_inputMethodEvent(self: ptr cQScrollBar, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_inputMethodEvent ".} =
  var nimfunc = cast[ptr QScrollBarinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QScrollBarinputMethodQuery*(self: gen_qscrollbar_types.QScrollBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQScrollBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QScrollBarinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QScrollBarinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_inputMethodQuery(self: ptr cQScrollBar, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QScrollBar_inputMethodQuery ".} =
  var nimfunc = cast[ptr QScrollBarinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QScrollBarfocusNextPrevChild*(self: gen_qscrollbar_types.QScrollBar, next: bool): bool =
  fQScrollBar_virtualbase_focusNextPrevChild(self.h, next)

type QScrollBarfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QScrollBarfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_focusNextPrevChild(self: ptr cQScrollBar, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QScrollBar_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QScrollBarfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QScrollBareventFilter*(self: gen_qscrollbar_types.QScrollBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQScrollBar_virtualbase_eventFilter(self.h, watched.h, event.h)

type QScrollBareventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBareventFilterProc) =
  # TODO check subclass
  var tmp = new QScrollBareventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_eventFilter(self: ptr cQScrollBar, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QScrollBar_eventFilter ".} =
  var nimfunc = cast[ptr QScrollBareventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QScrollBarchildEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QChildEvent): void =
  fQScrollBar_virtualbase_childEvent(self.h, event.h)

type QScrollBarchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarchildEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_childEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_childEvent ".} =
  var nimfunc = cast[ptr QScrollBarchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarcustomEvent*(self: gen_qscrollbar_types.QScrollBar, event: gen_qcoreevent_types.QEvent): void =
  fQScrollBar_virtualbase_customEvent(self.h, event.h)

type QScrollBarcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarcustomEventProc) =
  # TODO check subclass
  var tmp = new QScrollBarcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_customEvent(self: ptr cQScrollBar, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_customEvent ".} =
  var nimfunc = cast[ptr QScrollBarcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QScrollBarconnectNotify*(self: gen_qscrollbar_types.QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQScrollBar_virtualbase_connectNotify(self.h, signal.h)

type QScrollBarconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBarconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QScrollBarconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_connectNotify(self: ptr cQScrollBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_connectNotify ".} =
  var nimfunc = cast[ptr QScrollBarconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QScrollBardisconnectNotify*(self: gen_qscrollbar_types.QScrollBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQScrollBar_virtualbase_disconnectNotify(self.h, signal.h)

type QScrollBardisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qscrollbar_types.QScrollBar, slot: QScrollBardisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QScrollBardisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQScrollBar_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScrollBar_disconnectNotify(self: ptr cQScrollBar, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QScrollBar_disconnectNotify ".} =
  var nimfunc = cast[ptr QScrollBardisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qscrollbar_types.QScrollBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQScrollBar_staticMetaObject())
proc delete*(self: gen_qscrollbar_types.QScrollBar) =
  fcQScrollBar_delete(self.h)
