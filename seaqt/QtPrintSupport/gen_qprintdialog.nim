import ./Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config --cflags Qt5PrintSupport")  & " -fPIC"
{.compile("gen_qprintdialog.cpp", cflags).}


import ./gen_qprintdialog_types
export gen_qprintdialog_types

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
  ../QtWidgets/gen_qwidget_types,
  ./gen_qabstractprintdialog,
  ./gen_qprinter_types
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
  gen_qwidget_types,
  gen_qabstractprintdialog,
  gen_qprinter_types

type cQPrintDialog*{.exportc: "QPrintDialog", incompleteStruct.} = object

proc fcQPrintDialog_new(parent: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new".}
proc fcQPrintDialog_new2(printer: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new2".}
proc fcQPrintDialog_new3(): ptr cQPrintDialog {.importc: "QPrintDialog_new3".}
proc fcQPrintDialog_new4(printer: pointer, parent: pointer): ptr cQPrintDialog {.importc: "QPrintDialog_new4".}
proc fcQPrintDialog_metaObject(self: pointer, ): pointer {.importc: "QPrintDialog_metaObject".}
proc fcQPrintDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QPrintDialog_metacast".}
proc fcQPrintDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPrintDialog_metacall".}
proc fcQPrintDialog_tr(s: cstring): struct_miqt_string {.importc: "QPrintDialog_tr".}
proc fcQPrintDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QPrintDialog_trUtf8".}
proc fcQPrintDialog_exec(self: pointer, ): cint {.importc: "QPrintDialog_exec".}
proc fcQPrintDialog_accept(self: pointer, ): void {.importc: "QPrintDialog_accept".}
proc fcQPrintDialog_done(self: pointer, resultVal: cint): void {.importc: "QPrintDialog_done".}
proc fcQPrintDialog_setOption(self: pointer, option: cint): void {.importc: "QPrintDialog_setOption".}
proc fcQPrintDialog_testOption(self: pointer, option: cint): bool {.importc: "QPrintDialog_testOption".}
proc fcQPrintDialog_setOptions(self: pointer, options: cint): void {.importc: "QPrintDialog_setOptions".}
proc fcQPrintDialog_options(self: pointer, ): cint {.importc: "QPrintDialog_options".}
proc fcQPrintDialog_setVisible(self: pointer, visible: bool): void {.importc: "QPrintDialog_setVisible".}
proc fcQPrintDialog_accepted(self: pointer, printer: pointer): void {.importc: "QPrintDialog_accepted".}
proc fcQPrintDialog_connect_accepted(self: pointer, slot: int) {.importc: "QPrintDialog_connect_accepted".}
proc fcQPrintDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintDialog_tr2".}
proc fcQPrintDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintDialog_tr3".}
proc fcQPrintDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPrintDialog_trUtf82".}
proc fcQPrintDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPrintDialog_trUtf83".}
proc fcQPrintDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QPrintDialog_setOption2".}
proc fQPrintDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_metaObject".}
proc fcQPrintDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_metaObject".}
proc fQPrintDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPrintDialog_virtualbase_metacast".}
proc fcQPrintDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_metacast".}
proc fQPrintDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPrintDialog_virtualbase_metacall".}
proc fcQPrintDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_metacall".}
proc fQPrintDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QPrintDialog_virtualbase_exec".}
proc fcQPrintDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_exec".}
proc fQPrintDialog_virtualbase_accept(self: pointer, ): void{.importc: "QPrintDialog_virtualbase_accept".}
proc fcQPrintDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_accept".}
proc fQPrintDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QPrintDialog_virtualbase_done".}
proc fcQPrintDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_done".}
proc fQPrintDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QPrintDialog_virtualbase_setVisible".}
proc fcQPrintDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_setVisible".}
proc fQPrintDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_sizeHint".}
proc fcQPrintDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_sizeHint".}
proc fQPrintDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_minimumSizeHint".}
proc fcQPrintDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_minimumSizeHint".}
proc fQPrintDialog_virtualbase_open(self: pointer, ): void{.importc: "QPrintDialog_virtualbase_open".}
proc fcQPrintDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_open".}
proc fQPrintDialog_virtualbase_reject(self: pointer, ): void{.importc: "QPrintDialog_virtualbase_reject".}
proc fcQPrintDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_reject".}
proc fQPrintDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_keyPressEvent".}
proc fcQPrintDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_keyPressEvent".}
proc fQPrintDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_closeEvent".}
proc fcQPrintDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_closeEvent".}
proc fQPrintDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_showEvent".}
proc fcQPrintDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_showEvent".}
proc fQPrintDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_resizeEvent".}
proc fcQPrintDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_resizeEvent".}
proc fQPrintDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_contextMenuEvent".}
proc fcQPrintDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_contextMenuEvent".}
proc fQPrintDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QPrintDialog_virtualbase_eventFilter".}
proc fcQPrintDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_eventFilter".}
proc fQPrintDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QPrintDialog_virtualbase_devType".}
proc fcQPrintDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_devType".}
proc fQPrintDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QPrintDialog_virtualbase_heightForWidth".}
proc fcQPrintDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_heightForWidth".}
proc fQPrintDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QPrintDialog_virtualbase_hasHeightForWidth".}
proc fcQPrintDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_hasHeightForWidth".}
proc fQPrintDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_paintEngine".}
proc fcQPrintDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_paintEngine".}
proc fQPrintDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPrintDialog_virtualbase_event".}
proc fcQPrintDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_event".}
proc fQPrintDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_mousePressEvent".}
proc fcQPrintDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_mousePressEvent".}
proc fQPrintDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_mouseReleaseEvent".}
proc fcQPrintDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_mouseReleaseEvent".}
proc fQPrintDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQPrintDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_mouseDoubleClickEvent".}
proc fQPrintDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_mouseMoveEvent".}
proc fcQPrintDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_mouseMoveEvent".}
proc fQPrintDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_wheelEvent".}
proc fcQPrintDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_wheelEvent".}
proc fQPrintDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_keyReleaseEvent".}
proc fcQPrintDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_keyReleaseEvent".}
proc fQPrintDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_focusInEvent".}
proc fcQPrintDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_focusInEvent".}
proc fQPrintDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_focusOutEvent".}
proc fcQPrintDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_focusOutEvent".}
proc fQPrintDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_enterEvent".}
proc fcQPrintDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_enterEvent".}
proc fQPrintDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_leaveEvent".}
proc fcQPrintDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_leaveEvent".}
proc fQPrintDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_paintEvent".}
proc fcQPrintDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_paintEvent".}
proc fQPrintDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_moveEvent".}
proc fcQPrintDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_moveEvent".}
proc fQPrintDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_tabletEvent".}
proc fcQPrintDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_tabletEvent".}
proc fQPrintDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_actionEvent".}
proc fcQPrintDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_actionEvent".}
proc fQPrintDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_dragEnterEvent".}
proc fcQPrintDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_dragEnterEvent".}
proc fQPrintDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_dragMoveEvent".}
proc fcQPrintDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_dragMoveEvent".}
proc fQPrintDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_dragLeaveEvent".}
proc fcQPrintDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_dragLeaveEvent".}
proc fQPrintDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_dropEvent".}
proc fcQPrintDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_dropEvent".}
proc fQPrintDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_hideEvent".}
proc fcQPrintDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_hideEvent".}
proc fQPrintDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QPrintDialog_virtualbase_nativeEvent".}
proc fcQPrintDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_nativeEvent".}
proc fQPrintDialog_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_changeEvent".}
proc fcQPrintDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_changeEvent".}
proc fQPrintDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QPrintDialog_virtualbase_metric".}
proc fcQPrintDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_metric".}
proc fQPrintDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QPrintDialog_virtualbase_initPainter".}
proc fcQPrintDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_initPainter".}
proc fQPrintDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QPrintDialog_virtualbase_redirected".}
proc fcQPrintDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_redirected".}
proc fQPrintDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QPrintDialog_virtualbase_sharedPainter".}
proc fcQPrintDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_sharedPainter".}
proc fQPrintDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QPrintDialog_virtualbase_inputMethodEvent".}
proc fcQPrintDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_inputMethodEvent".}
proc fQPrintDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QPrintDialog_virtualbase_inputMethodQuery".}
proc fcQPrintDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_inputMethodQuery".}
proc fQPrintDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QPrintDialog_virtualbase_focusNextPrevChild".}
proc fcQPrintDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_focusNextPrevChild".}
proc fQPrintDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_timerEvent".}
proc fcQPrintDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_timerEvent".}
proc fQPrintDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_childEvent".}
proc fcQPrintDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_childEvent".}
proc fQPrintDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPrintDialog_virtualbase_customEvent".}
proc fcQPrintDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_customEvent".}
proc fQPrintDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPrintDialog_virtualbase_connectNotify".}
proc fcQPrintDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_connectNotify".}
proc fQPrintDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPrintDialog_virtualbase_disconnectNotify".}
proc fcQPrintDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPrintDialog_override_virtual_disconnectNotify".}
proc fcQPrintDialog_staticMetaObject(): pointer {.importc: "QPrintDialog_staticMetaObject".}
proc fcQPrintDialog_delete(self: pointer) {.importc: "QPrintDialog_delete".}


func init*(T: type gen_qprintdialog_types.QPrintDialog, h: ptr cQPrintDialog): gen_qprintdialog_types.QPrintDialog =
  T(h: h)
proc create*(T: type gen_qprintdialog_types.QPrintDialog, parent: gen_qwidget_types.QWidget): gen_qprintdialog_types.QPrintDialog =
  gen_qprintdialog_types.QPrintDialog.init(fcQPrintDialog_new(parent.h))

proc create*(T: type gen_qprintdialog_types.QPrintDialog, printer: gen_qprinter_types.QPrinter): gen_qprintdialog_types.QPrintDialog =
  gen_qprintdialog_types.QPrintDialog.init(fcQPrintDialog_new2(printer.h))

proc create*(T: type gen_qprintdialog_types.QPrintDialog, ): gen_qprintdialog_types.QPrintDialog =
  gen_qprintdialog_types.QPrintDialog.init(fcQPrintDialog_new3())

proc create*(T: type gen_qprintdialog_types.QPrintDialog, printer: gen_qprinter_types.QPrinter, parent: gen_qwidget_types.QWidget): gen_qprintdialog_types.QPrintDialog =
  gen_qprintdialog_types.QPrintDialog.init(fcQPrintDialog_new4(printer.h, parent.h))

proc metaObject*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintDialog_metaObject(self.h))

proc metacast*(self: gen_qprintdialog_types.QPrintDialog, param1: cstring): pointer =
  fcQPrintDialog_metacast(self.h, param1)

proc metacall*(self: gen_qprintdialog_types.QPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQPrintDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring): string =
  let v_ms = fcQPrintDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring): string =
  let v_ms = fcQPrintDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exec*(self: gen_qprintdialog_types.QPrintDialog, ): cint =
  fcQPrintDialog_exec(self.h)

proc accept*(self: gen_qprintdialog_types.QPrintDialog, ): void =
  fcQPrintDialog_accept(self.h)

proc done*(self: gen_qprintdialog_types.QPrintDialog, resultVal: cint): void =
  fcQPrintDialog_done(self.h, resultVal)

proc setOption*(self: gen_qprintdialog_types.QPrintDialog, option: cint): void =
  fcQPrintDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qprintdialog_types.QPrintDialog, option: cint): bool =
  fcQPrintDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qprintdialog_types.QPrintDialog, options: cint): void =
  fcQPrintDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qprintdialog_types.QPrintDialog, ): cint =
  cint(fcQPrintDialog_options(self.h))

proc setVisible*(self: gen_qprintdialog_types.QPrintDialog, visible: bool): void =
  fcQPrintDialog_setVisible(self.h, visible)

proc accepted*(self: gen_qprintdialog_types.QPrintDialog, printer: gen_qprinter_types.QPrinter): void =
  fcQPrintDialog_accepted(self.h, printer.h)

type QPrintDialogacceptedSlot* = proc(printer: gen_qprinter_types.QPrinter)
proc miqt_exec_callback_QPrintDialog_accepted(slot: int, printer: pointer) {.exportc.} =
  let nimfunc = cast[ptr QPrintDialogacceptedSlot](cast[pointer](slot))
  let slotval1 = gen_qprinter_types.QPrinter(h: printer)

  nimfunc[](slotval1)

proc onaccepted*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogacceptedSlot) =
  var tmp = new QPrintDialogacceptedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_connect_accepted(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPrintDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring, c: cstring): string =
  let v_ms = fcQPrintDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprintdialog_types.QPrintDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPrintDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qprintdialog_types.QPrintDialog, option: cint, on: bool): void =
  fcQPrintDialog_setOption2(self.h, cint(option), on)

proc QPrintDialogmetaObject*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQPrintDialog_virtualbase_metaObject(self.h))

type QPrintDialogmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmetaObjectProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_metaObject(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_metaObject ".} =
  var nimfunc = cast[ptr QPrintDialogmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintDialogmetacast*(self: gen_qprintdialog_types.QPrintDialog, param1: cstring): pointer =
  fQPrintDialog_virtualbase_metacast(self.h, param1)

type QPrintDialogmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmetacastProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_metacast(self: ptr cQPrintDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPrintDialog_metacast ".} =
  var nimfunc = cast[ptr QPrintDialogmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintDialogmetacall*(self: gen_qprintdialog_types.QPrintDialog, param1: cint, param2: cint, param3: pointer): cint =
  fQPrintDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPrintDialogmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmetacallProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_metacall(self: ptr cQPrintDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPrintDialog_metacall ".} =
  var nimfunc = cast[ptr QPrintDialogmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPrintDialogexec*(self: gen_qprintdialog_types.QPrintDialog, ): cint =
  fQPrintDialog_virtualbase_exec(self.h)

type QPrintDialogexecProc* = proc(): cint
proc onexec*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogexecProc) =
  # TODO check subclass
  var tmp = new QPrintDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_exec(self: ptr cQPrintDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPrintDialog_exec ".} =
  var nimfunc = cast[ptr QPrintDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPrintDialogaccept*(self: gen_qprintdialog_types.QPrintDialog, ): void =
  fQPrintDialog_virtualbase_accept(self.h)

type QPrintDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogacceptProc) =
  # TODO check subclass
  var tmp = new QPrintDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_accept(self: ptr cQPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintDialog_accept ".} =
  var nimfunc = cast[ptr QPrintDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QPrintDialogdone*(self: gen_qprintdialog_types.QPrintDialog, resultVal: cint): void =
  fQPrintDialog_virtualbase_done(self.h, resultVal)

type QPrintDialogdoneProc* = proc(resultVal: cint): void
proc ondone*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogdoneProc) =
  # TODO check subclass
  var tmp = new QPrintDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_done(self: ptr cQPrintDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QPrintDialog_done ".} =
  var nimfunc = cast[ptr QPrintDialogdoneProc](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)
proc QPrintDialogsetVisible*(self: gen_qprintdialog_types.QPrintDialog, visible: bool): void =
  fQPrintDialog_virtualbase_setVisible(self.h, visible)

type QPrintDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QPrintDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_setVisible(self: ptr cQPrintDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QPrintDialog_setVisible ".} =
  var nimfunc = cast[ptr QPrintDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QPrintDialogsizeHint*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPrintDialog_virtualbase_sizeHint(self.h))

type QPrintDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QPrintDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_sizeHint(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_sizeHint ".} =
  var nimfunc = cast[ptr QPrintDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintDialogminimumSizeHint*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQPrintDialog_virtualbase_minimumSizeHint(self.h))

type QPrintDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QPrintDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_minimumSizeHint(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QPrintDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintDialogopen*(self: gen_qprintdialog_types.QPrintDialog, ): void =
  fQPrintDialog_virtualbase_open(self.h)

type QPrintDialogopenProc* = proc(): void
proc onopen*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogopenProc) =
  # TODO check subclass
  var tmp = new QPrintDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_open(self: ptr cQPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintDialog_open ".} =
  var nimfunc = cast[ptr QPrintDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QPrintDialogreject*(self: gen_qprintdialog_types.QPrintDialog, ): void =
  fQPrintDialog_virtualbase_reject(self.h)

type QPrintDialogrejectProc* = proc(): void
proc onreject*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogrejectProc) =
  # TODO check subclass
  var tmp = new QPrintDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_reject(self: ptr cQPrintDialog, slot: int): void {.exportc: "miqt_exec_callback_QPrintDialog_reject ".} =
  var nimfunc = cast[ptr QPrintDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QPrintDialogkeyPressEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQPrintDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QPrintDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_keyPressEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QPrintDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintDialogcloseEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQPrintDialog_virtualbase_closeEvent(self.h, param1.h)

type QPrintDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_closeEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_closeEvent ".} =
  var nimfunc = cast[ptr QPrintDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintDialogshowEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QShowEvent): void =
  fQPrintDialog_virtualbase_showEvent(self.h, param1.h)

type QPrintDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_showEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_showEvent ".} =
  var nimfunc = cast[ptr QPrintDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintDialogresizeEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQPrintDialog_virtualbase_resizeEvent(self.h, param1.h)

type QPrintDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_resizeEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QPrintDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintDialogcontextMenuEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQPrintDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QPrintDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_contextMenuEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QPrintDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintDialogeventFilter*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQPrintDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QPrintDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QPrintDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_eventFilter(self: ptr cQPrintDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QPrintDialog_eventFilter ".} =
  var nimfunc = cast[ptr QPrintDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPrintDialogdevType*(self: gen_qprintdialog_types.QPrintDialog, ): cint =
  fQPrintDialog_virtualbase_devType(self.h)

type QPrintDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QPrintDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_devType(self: ptr cQPrintDialog, slot: int): cint {.exportc: "miqt_exec_callback_QPrintDialog_devType ".} =
  var nimfunc = cast[ptr QPrintDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPrintDialogheightForWidth*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): cint =
  fQPrintDialog_virtualbase_heightForWidth(self.h, param1)

type QPrintDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QPrintDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_heightForWidth(self: ptr cQPrintDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QPrintDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintDialoghasHeightForWidth*(self: gen_qprintdialog_types.QPrintDialog, ): bool =
  fQPrintDialog_virtualbase_hasHeightForWidth(self.h)

type QPrintDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QPrintDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_hasHeightForWidth(self: ptr cQPrintDialog, slot: int): bool {.exportc: "miqt_exec_callback_QPrintDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QPrintDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QPrintDialogpaintEngine*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQPrintDialog_virtualbase_paintEngine(self.h))

type QPrintDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QPrintDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_paintEngine(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_paintEngine ".} =
  var nimfunc = cast[ptr QPrintDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintDialogevent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQPrintDialog_virtualbase_event(self.h, event.h)

type QPrintDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogeventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_event(self: ptr cQPrintDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPrintDialog_event ".} =
  var nimfunc = cast[ptr QPrintDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintDialogmousePressEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPrintDialog_virtualbase_mousePressEvent(self.h, event.h)

type QPrintDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_mousePressEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QPrintDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogmouseReleaseEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPrintDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QPrintDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_mouseReleaseEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QPrintDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogmouseDoubleClickEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPrintDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QPrintDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_mouseDoubleClickEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QPrintDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogmouseMoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMouseEvent): void =
  fQPrintDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QPrintDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_mouseMoveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QPrintDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogwheelEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QWheelEvent): void =
  fQPrintDialog_virtualbase_wheelEvent(self.h, event.h)

type QPrintDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_wheelEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QPrintDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogkeyReleaseEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QKeyEvent): void =
  fQPrintDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QPrintDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_keyReleaseEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QPrintDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogfocusInEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fQPrintDialog_virtualbase_focusInEvent(self.h, event.h)

type QPrintDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_focusInEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QPrintDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogfocusOutEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QFocusEvent): void =
  fQPrintDialog_virtualbase_focusOutEvent(self.h, event.h)

type QPrintDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_focusOutEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QPrintDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogenterEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fQPrintDialog_virtualbase_enterEvent(self.h, event.h)

type QPrintDialogenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_enterEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_enterEvent ".} =
  var nimfunc = cast[ptr QPrintDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogleaveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fQPrintDialog_virtualbase_leaveEvent(self.h, event.h)

type QPrintDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_leaveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QPrintDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogpaintEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QPaintEvent): void =
  fQPrintDialog_virtualbase_paintEvent(self.h, event.h)

type QPrintDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_paintEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_paintEvent ".} =
  var nimfunc = cast[ptr QPrintDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogmoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QMoveEvent): void =
  fQPrintDialog_virtualbase_moveEvent(self.h, event.h)

type QPrintDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_moveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_moveEvent ".} =
  var nimfunc = cast[ptr QPrintDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogtabletEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QTabletEvent): void =
  fQPrintDialog_virtualbase_tabletEvent(self.h, event.h)

type QPrintDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_tabletEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QPrintDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogactionEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QActionEvent): void =
  fQPrintDialog_virtualbase_actionEvent(self.h, event.h)

type QPrintDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_actionEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_actionEvent ".} =
  var nimfunc = cast[ptr QPrintDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogdragEnterEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQPrintDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QPrintDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_dragEnterEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QPrintDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogdragMoveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQPrintDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QPrintDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_dragMoveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QPrintDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogdragLeaveEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQPrintDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QPrintDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_dragLeaveEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QPrintDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogdropEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QDropEvent): void =
  fQPrintDialog_virtualbase_dropEvent(self.h, event.h)

type QPrintDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_dropEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_dropEvent ".} =
  var nimfunc = cast[ptr QPrintDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialoghideEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qevent_types.QHideEvent): void =
  fQPrintDialog_virtualbase_hideEvent(self.h, event.h)

type QPrintDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_hideEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_hideEvent ".} =
  var nimfunc = cast[ptr QPrintDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialognativeEvent*(self: gen_qprintdialog_types.QPrintDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQPrintDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QPrintDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_nativeEvent(self: ptr cQPrintDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QPrintDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QPrintDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPrintDialogchangeEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qcoreevent_types.QEvent): void =
  fQPrintDialog_virtualbase_changeEvent(self.h, param1.h)

type QPrintDialogchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_changeEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_changeEvent ".} =
  var nimfunc = cast[ptr QPrintDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintDialogmetric*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): cint =
  fQPrintDialog_virtualbase_metric(self.h, cint(param1))

type QPrintDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogmetricProc) =
  # TODO check subclass
  var tmp = new QPrintDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_metric(self: ptr cQPrintDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QPrintDialog_metric ".} =
  var nimfunc = cast[ptr QPrintDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintDialoginitPainter*(self: gen_qprintdialog_types.QPrintDialog, painter: gen_qpainter_types.QPainter): void =
  fQPrintDialog_virtualbase_initPainter(self.h, painter.h)

type QPrintDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QPrintDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_initPainter(self: ptr cQPrintDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_initPainter ".} =
  var nimfunc = cast[ptr QPrintDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QPrintDialogredirected*(self: gen_qprintdialog_types.QPrintDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQPrintDialog_virtualbase_redirected(self.h, offset.h))

type QPrintDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QPrintDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_redirected(self: ptr cQPrintDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QPrintDialog_redirected ".} =
  var nimfunc = cast[ptr QPrintDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPrintDialogsharedPainter*(self: gen_qprintdialog_types.QPrintDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQPrintDialog_virtualbase_sharedPainter(self.h))

type QPrintDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QPrintDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_sharedPainter(self: ptr cQPrintDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QPrintDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QPrintDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPrintDialoginputMethodEvent*(self: gen_qprintdialog_types.QPrintDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQPrintDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QPrintDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_inputMethodEvent(self: ptr cQPrintDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QPrintDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QPrintDialoginputMethodQuery*(self: gen_qprintdialog_types.QPrintDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQPrintDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QPrintDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QPrintDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_inputMethodQuery(self: ptr cQPrintDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QPrintDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QPrintDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QPrintDialogfocusNextPrevChild*(self: gen_qprintdialog_types.QPrintDialog, next: bool): bool =
  fQPrintDialog_virtualbase_focusNextPrevChild(self.h, next)

type QPrintDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QPrintDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_focusNextPrevChild(self: ptr cQPrintDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QPrintDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QPrintDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPrintDialogtimerEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPrintDialog_virtualbase_timerEvent(self.h, event.h)

type QPrintDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_timerEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_timerEvent ".} =
  var nimfunc = cast[ptr QPrintDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogchildEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQPrintDialog_virtualbase_childEvent(self.h, event.h)

type QPrintDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_childEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_childEvent ".} =
  var nimfunc = cast[ptr QPrintDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogcustomEvent*(self: gen_qprintdialog_types.QPrintDialog, event: gen_qcoreevent_types.QEvent): void =
  fQPrintDialog_virtualbase_customEvent(self.h, event.h)

type QPrintDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QPrintDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_customEvent(self: ptr cQPrintDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_customEvent ".} =
  var nimfunc = cast[ptr QPrintDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPrintDialogconnectNotify*(self: gen_qprintdialog_types.QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPrintDialog_virtualbase_connectNotify(self.h, signal.h)

type QPrintDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPrintDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_connectNotify(self: ptr cQPrintDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_connectNotify ".} =
  var nimfunc = cast[ptr QPrintDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPrintDialogdisconnectNotify*(self: gen_qprintdialog_types.QPrintDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPrintDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QPrintDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qprintdialog_types.QPrintDialog, slot: QPrintDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPrintDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPrintDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPrintDialog_disconnectNotify(self: ptr cQPrintDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPrintDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QPrintDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qprintdialog_types.QPrintDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPrintDialog_staticMetaObject())
proc delete*(self: gen_qprintdialog_types.QPrintDialog) =
  fcQPrintDialog_delete(self.h)
