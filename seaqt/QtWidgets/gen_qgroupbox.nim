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
{.compile("gen_qgroupbox.cpp", cflags).}


import ./gen_qgroupbox_types
export gen_qgroupbox_types

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
  ./gen_qstyleoption_types,
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
  gen_qstyleoption_types,
  gen_qwidget

type cQGroupBox*{.exportc: "QGroupBox", incompleteStruct.} = object

proc fcQGroupBox_new(parent: pointer): ptr cQGroupBox {.importc: "QGroupBox_new".}
proc fcQGroupBox_new2(): ptr cQGroupBox {.importc: "QGroupBox_new2".}
proc fcQGroupBox_new3(title: struct_miqt_string): ptr cQGroupBox {.importc: "QGroupBox_new3".}
proc fcQGroupBox_new4(title: struct_miqt_string, parent: pointer): ptr cQGroupBox {.importc: "QGroupBox_new4".}
proc fcQGroupBox_metaObject(self: pointer, ): pointer {.importc: "QGroupBox_metaObject".}
proc fcQGroupBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QGroupBox_metacast".}
proc fcQGroupBox_tr(s: cstring): struct_miqt_string {.importc: "QGroupBox_tr".}
proc fcQGroupBox_title(self: pointer, ): struct_miqt_string {.importc: "QGroupBox_title".}
proc fcQGroupBox_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QGroupBox_setTitle".}
proc fcQGroupBox_alignment(self: pointer, ): cint {.importc: "QGroupBox_alignment".}
proc fcQGroupBox_setAlignment(self: pointer, alignment: cint): void {.importc: "QGroupBox_setAlignment".}
proc fcQGroupBox_minimumSizeHint(self: pointer, ): pointer {.importc: "QGroupBox_minimumSizeHint".}
proc fcQGroupBox_isFlat(self: pointer, ): bool {.importc: "QGroupBox_isFlat".}
proc fcQGroupBox_setFlat(self: pointer, flat: bool): void {.importc: "QGroupBox_setFlat".}
proc fcQGroupBox_isCheckable(self: pointer, ): bool {.importc: "QGroupBox_isCheckable".}
proc fcQGroupBox_setCheckable(self: pointer, checkable: bool): void {.importc: "QGroupBox_setCheckable".}
proc fcQGroupBox_isChecked(self: pointer, ): bool {.importc: "QGroupBox_isChecked".}
proc fcQGroupBox_setChecked(self: pointer, checked: bool): void {.importc: "QGroupBox_setChecked".}
proc fcQGroupBox_clicked(self: pointer, ): void {.importc: "QGroupBox_clicked".}
proc fcQGroupBox_connect_clicked(self: pointer, slot: int) {.importc: "QGroupBox_connect_clicked".}
proc fcQGroupBox_toggled(self: pointer, param1: bool): void {.importc: "QGroupBox_toggled".}
proc fcQGroupBox_connect_toggled(self: pointer, slot: int) {.importc: "QGroupBox_connect_toggled".}
proc fcQGroupBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGroupBox_tr2".}
proc fcQGroupBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGroupBox_tr3".}
proc fcQGroupBox_clicked1(self: pointer, checked: bool): void {.importc: "QGroupBox_clicked1".}
proc fcQGroupBox_connect_clicked1(self: pointer, slot: int) {.importc: "QGroupBox_connect_clicked1".}
proc fQGroupBox_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_minimumSizeHint".}
proc fcQGroupBox_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_minimumSizeHint".}
proc fQGroupBox_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGroupBox_virtualbase_event".}
proc fcQGroupBox_override_virtual_event(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_event".}
proc fQGroupBox_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_childEvent".}
proc fcQGroupBox_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_childEvent".}
proc fQGroupBox_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_resizeEvent".}
proc fcQGroupBox_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_resizeEvent".}
proc fQGroupBox_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_paintEvent".}
proc fcQGroupBox_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_paintEvent".}
proc fQGroupBox_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_focusInEvent".}
proc fcQGroupBox_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_focusInEvent".}
proc fQGroupBox_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_changeEvent".}
proc fcQGroupBox_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_changeEvent".}
proc fQGroupBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_mousePressEvent".}
proc fcQGroupBox_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_mousePressEvent".}
proc fQGroupBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_mouseMoveEvent".}
proc fcQGroupBox_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_mouseMoveEvent".}
proc fQGroupBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_mouseReleaseEvent".}
proc fcQGroupBox_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_mouseReleaseEvent".}
proc fQGroupBox_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QGroupBox_virtualbase_initStyleOption".}
proc fcQGroupBox_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_initStyleOption".}
proc fQGroupBox_virtualbase_devType(self: pointer, ): cint{.importc: "QGroupBox_virtualbase_devType".}
proc fcQGroupBox_override_virtual_devType(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_devType".}
proc fQGroupBox_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QGroupBox_virtualbase_setVisible".}
proc fcQGroupBox_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_setVisible".}
proc fQGroupBox_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_sizeHint".}
proc fcQGroupBox_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_sizeHint".}
proc fQGroupBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QGroupBox_virtualbase_heightForWidth".}
proc fcQGroupBox_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_heightForWidth".}
proc fQGroupBox_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QGroupBox_virtualbase_hasHeightForWidth".}
proc fcQGroupBox_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_hasHeightForWidth".}
proc fQGroupBox_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_paintEngine".}
proc fcQGroupBox_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_paintEngine".}
proc fQGroupBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_mouseDoubleClickEvent".}
proc fcQGroupBox_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_mouseDoubleClickEvent".}
proc fQGroupBox_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_wheelEvent".}
proc fcQGroupBox_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_wheelEvent".}
proc fQGroupBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_keyPressEvent".}
proc fcQGroupBox_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_keyPressEvent".}
proc fQGroupBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_keyReleaseEvent".}
proc fcQGroupBox_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_keyReleaseEvent".}
proc fQGroupBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_focusOutEvent".}
proc fcQGroupBox_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_focusOutEvent".}
proc fQGroupBox_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_enterEvent".}
proc fcQGroupBox_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_enterEvent".}
proc fQGroupBox_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_leaveEvent".}
proc fcQGroupBox_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_leaveEvent".}
proc fQGroupBox_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_moveEvent".}
proc fcQGroupBox_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_moveEvent".}
proc fQGroupBox_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_closeEvent".}
proc fcQGroupBox_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_closeEvent".}
proc fQGroupBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_contextMenuEvent".}
proc fcQGroupBox_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_contextMenuEvent".}
proc fQGroupBox_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_tabletEvent".}
proc fcQGroupBox_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_tabletEvent".}
proc fQGroupBox_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_actionEvent".}
proc fcQGroupBox_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_actionEvent".}
proc fQGroupBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_dragEnterEvent".}
proc fcQGroupBox_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_dragEnterEvent".}
proc fQGroupBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_dragMoveEvent".}
proc fcQGroupBox_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_dragMoveEvent".}
proc fQGroupBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_dragLeaveEvent".}
proc fcQGroupBox_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_dragLeaveEvent".}
proc fQGroupBox_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_dropEvent".}
proc fcQGroupBox_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_dropEvent".}
proc fQGroupBox_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_showEvent".}
proc fcQGroupBox_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_showEvent".}
proc fQGroupBox_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_hideEvent".}
proc fcQGroupBox_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_hideEvent".}
proc fQGroupBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QGroupBox_virtualbase_nativeEvent".}
proc fcQGroupBox_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_nativeEvent".}
proc fQGroupBox_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QGroupBox_virtualbase_metric".}
proc fcQGroupBox_override_virtual_metric(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_metric".}
proc fQGroupBox_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QGroupBox_virtualbase_initPainter".}
proc fcQGroupBox_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_initPainter".}
proc fQGroupBox_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QGroupBox_virtualbase_redirected".}
proc fcQGroupBox_override_virtual_redirected(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_redirected".}
proc fQGroupBox_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QGroupBox_virtualbase_sharedPainter".}
proc fcQGroupBox_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_sharedPainter".}
proc fQGroupBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QGroupBox_virtualbase_inputMethodEvent".}
proc fcQGroupBox_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_inputMethodEvent".}
proc fQGroupBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QGroupBox_virtualbase_inputMethodQuery".}
proc fcQGroupBox_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_inputMethodQuery".}
proc fQGroupBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QGroupBox_virtualbase_focusNextPrevChild".}
proc fcQGroupBox_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_focusNextPrevChild".}
proc fQGroupBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGroupBox_virtualbase_eventFilter".}
proc fcQGroupBox_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_eventFilter".}
proc fQGroupBox_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_timerEvent".}
proc fcQGroupBox_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_timerEvent".}
proc fQGroupBox_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGroupBox_virtualbase_customEvent".}
proc fcQGroupBox_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_customEvent".}
proc fQGroupBox_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGroupBox_virtualbase_connectNotify".}
proc fcQGroupBox_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_connectNotify".}
proc fQGroupBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGroupBox_virtualbase_disconnectNotify".}
proc fcQGroupBox_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGroupBox_override_virtual_disconnectNotify".}
proc fcQGroupBox_delete(self: pointer) {.importc: "QGroupBox_delete".}


func init*(T: type gen_qgroupbox_types.QGroupBox, h: ptr cQGroupBox): gen_qgroupbox_types.QGroupBox =
  T(h: h)
proc create*(T: type gen_qgroupbox_types.QGroupBox, parent: gen_qwidget_types.QWidget): gen_qgroupbox_types.QGroupBox =
  gen_qgroupbox_types.QGroupBox.init(fcQGroupBox_new(parent.h))

proc create*(T: type gen_qgroupbox_types.QGroupBox, ): gen_qgroupbox_types.QGroupBox =
  gen_qgroupbox_types.QGroupBox.init(fcQGroupBox_new2())

proc create*(T: type gen_qgroupbox_types.QGroupBox, title: string): gen_qgroupbox_types.QGroupBox =
  gen_qgroupbox_types.QGroupBox.init(fcQGroupBox_new3(struct_miqt_string(data: title, len: csize_t(len(title)))))

proc create*(T: type gen_qgroupbox_types.QGroupBox, title: string, parent: gen_qwidget_types.QWidget): gen_qgroupbox_types.QGroupBox =
  gen_qgroupbox_types.QGroupBox.init(fcQGroupBox_new4(struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))

proc metaObject*(self: gen_qgroupbox_types.QGroupBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGroupBox_metaObject(self.h))

proc metacast*(self: gen_qgroupbox_types.QGroupBox, param1: cstring): pointer =
  fcQGroupBox_metacast(self.h, param1)

proc tr*(_: type gen_qgroupbox_types.QGroupBox, s: cstring): string =
  let v_ms = fcQGroupBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc title*(self: gen_qgroupbox_types.QGroupBox, ): string =
  let v_ms = fcQGroupBox_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: gen_qgroupbox_types.QGroupBox, title: string): void =
  fcQGroupBox_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc alignment*(self: gen_qgroupbox_types.QGroupBox, ): cint =
  cint(fcQGroupBox_alignment(self.h))

proc setAlignment*(self: gen_qgroupbox_types.QGroupBox, alignment: cint): void =
  fcQGroupBox_setAlignment(self.h, alignment)

proc minimumSizeHint*(self: gen_qgroupbox_types.QGroupBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGroupBox_minimumSizeHint(self.h))

proc isFlat*(self: gen_qgroupbox_types.QGroupBox, ): bool =
  fcQGroupBox_isFlat(self.h)

proc setFlat*(self: gen_qgroupbox_types.QGroupBox, flat: bool): void =
  fcQGroupBox_setFlat(self.h, flat)

proc isCheckable*(self: gen_qgroupbox_types.QGroupBox, ): bool =
  fcQGroupBox_isCheckable(self.h)

proc setCheckable*(self: gen_qgroupbox_types.QGroupBox, checkable: bool): void =
  fcQGroupBox_setCheckable(self.h, checkable)

proc isChecked*(self: gen_qgroupbox_types.QGroupBox, ): bool =
  fcQGroupBox_isChecked(self.h)

proc setChecked*(self: gen_qgroupbox_types.QGroupBox, checked: bool): void =
  fcQGroupBox_setChecked(self.h, checked)

proc clicked*(self: gen_qgroupbox_types.QGroupBox, ): void =
  fcQGroupBox_clicked(self.h)

type QGroupBoxclickedSlot* = proc()
proc miqt_exec_callback_QGroupBox_clicked(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QGroupBoxclickedSlot](cast[pointer](slot))
  nimfunc[]()

proc onclicked*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxclickedSlot) =
  var tmp = new QGroupBoxclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_clicked(self.h, cast[int](addr tmp[]))

proc toggled*(self: gen_qgroupbox_types.QGroupBox, param1: bool): void =
  fcQGroupBox_toggled(self.h, param1)

type QGroupBoxtoggledSlot* = proc(param1: bool)
proc miqt_exec_callback_QGroupBox_toggled(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QGroupBoxtoggledSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc ontoggled*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxtoggledSlot) =
  var tmp = new QGroupBoxtoggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_toggled(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qgroupbox_types.QGroupBox, s: cstring, c: cstring): string =
  let v_ms = fcQGroupBox_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgroupbox_types.QGroupBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGroupBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clicked*(self: gen_qgroupbox_types.QGroupBox, checked: bool): void =
  fcQGroupBox_clicked1(self.h, checked)

type QGroupBoxclicked1Slot* = proc(checked: bool)
proc miqt_exec_callback_QGroupBox_clicked1(slot: int, checked: bool) {.exportc.} =
  let nimfunc = cast[ptr QGroupBoxclicked1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc onclicked*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxclicked1Slot) =
  var tmp = new QGroupBoxclicked1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_clicked1(self.h, cast[int](addr tmp[]))

proc QGroupBoxminimumSizeHint*(self: gen_qgroupbox_types.QGroupBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQGroupBox_virtualbase_minimumSizeHint(self.h))

type QGroupBoxminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QGroupBoxminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_minimumSizeHint(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_minimumSizeHint ".} =
  var nimfunc = cast[ptr QGroupBoxminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGroupBoxevent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): bool =
  fQGroupBox_virtualbase_event(self.h, event.h)

type QGroupBoxeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxeventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_event(self: ptr cQGroupBox, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGroupBox_event ".} =
  var nimfunc = cast[ptr QGroupBoxeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGroupBoxchildEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QChildEvent): void =
  fQGroupBox_virtualbase_childEvent(self.h, event.h)

type QGroupBoxchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxchildEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_childEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_childEvent ".} =
  var nimfunc = cast[ptr QGroupBoxchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxresizeEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QResizeEvent): void =
  fQGroupBox_virtualbase_resizeEvent(self.h, event.h)

type QGroupBoxresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxresizeEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_resizeEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_resizeEvent ".} =
  var nimfunc = cast[ptr QGroupBoxresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxpaintEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QPaintEvent): void =
  fQGroupBox_virtualbase_paintEvent(self.h, event.h)

type QGroupBoxpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxpaintEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_paintEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_paintEvent ".} =
  var nimfunc = cast[ptr QGroupBoxpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxfocusInEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QFocusEvent): void =
  fQGroupBox_virtualbase_focusInEvent(self.h, event.h)

type QGroupBoxfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxfocusInEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_focusInEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_focusInEvent ".} =
  var nimfunc = cast[ptr QGroupBoxfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxchangeEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fQGroupBox_virtualbase_changeEvent(self.h, event.h)

type QGroupBoxchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxchangeEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_changeEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_changeEvent ".} =
  var nimfunc = cast[ptr QGroupBoxchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxmousePressEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fQGroupBox_virtualbase_mousePressEvent(self.h, event.h)

type QGroupBoxmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxmousePressEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_mousePressEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_mousePressEvent ".} =
  var nimfunc = cast[ptr QGroupBoxmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxmouseMoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fQGroupBox_virtualbase_mouseMoveEvent(self.h, event.h)

type QGroupBoxmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_mouseMoveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QGroupBoxmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxmouseReleaseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fQGroupBox_virtualbase_mouseReleaseEvent(self.h, event.h)

type QGroupBoxmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_mouseReleaseEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QGroupBoxmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxinitStyleOption*(self: gen_qgroupbox_types.QGroupBox, option: gen_qstyleoption_types.QStyleOptionGroupBox): void =
  fQGroupBox_virtualbase_initStyleOption(self.h, option.h)

type QGroupBoxinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionGroupBox): void
proc oninitStyleOption*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QGroupBoxinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_initStyleOption(self: ptr cQGroupBox, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_initStyleOption ".} =
  var nimfunc = cast[ptr QGroupBoxinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionGroupBox(h: option)


  nimfunc[](slotval1)
proc QGroupBoxdevType*(self: gen_qgroupbox_types.QGroupBox, ): cint =
  fQGroupBox_virtualbase_devType(self.h)

type QGroupBoxdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxdevTypeProc) =
  # TODO check subclass
  var tmp = new QGroupBoxdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_devType(self: ptr cQGroupBox, slot: int): cint {.exportc: "miqt_exec_callback_QGroupBox_devType ".} =
  var nimfunc = cast[ptr QGroupBoxdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGroupBoxsetVisible*(self: gen_qgroupbox_types.QGroupBox, visible: bool): void =
  fQGroupBox_virtualbase_setVisible(self.h, visible)

type QGroupBoxsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxsetVisibleProc) =
  # TODO check subclass
  var tmp = new QGroupBoxsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_setVisible(self: ptr cQGroupBox, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QGroupBox_setVisible ".} =
  var nimfunc = cast[ptr QGroupBoxsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QGroupBoxsizeHint*(self: gen_qgroupbox_types.QGroupBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQGroupBox_virtualbase_sizeHint(self.h))

type QGroupBoxsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxsizeHintProc) =
  # TODO check subclass
  var tmp = new QGroupBoxsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_sizeHint(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_sizeHint ".} =
  var nimfunc = cast[ptr QGroupBoxsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGroupBoxheightForWidth*(self: gen_qgroupbox_types.QGroupBox, param1: cint): cint =
  fQGroupBox_virtualbase_heightForWidth(self.h, param1)

type QGroupBoxheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxheightForWidthProc) =
  # TODO check subclass
  var tmp = new QGroupBoxheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_heightForWidth(self: ptr cQGroupBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGroupBox_heightForWidth ".} =
  var nimfunc = cast[ptr QGroupBoxheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGroupBoxhasHeightForWidth*(self: gen_qgroupbox_types.QGroupBox, ): bool =
  fQGroupBox_virtualbase_hasHeightForWidth(self.h)

type QGroupBoxhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QGroupBoxhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_hasHeightForWidth(self: ptr cQGroupBox, slot: int): bool {.exportc: "miqt_exec_callback_QGroupBox_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QGroupBoxhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QGroupBoxpaintEngine*(self: gen_qgroupbox_types.QGroupBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQGroupBox_virtualbase_paintEngine(self.h))

type QGroupBoxpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxpaintEngineProc) =
  # TODO check subclass
  var tmp = new QGroupBoxpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_paintEngine(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_paintEngine ".} =
  var nimfunc = cast[ptr QGroupBoxpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGroupBoxmouseDoubleClickEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fQGroupBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QGroupBoxmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_mouseDoubleClickEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QGroupBoxmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxwheelEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QWheelEvent): void =
  fQGroupBox_virtualbase_wheelEvent(self.h, event.h)

type QGroupBoxwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxwheelEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_wheelEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_wheelEvent ".} =
  var nimfunc = cast[ptr QGroupBoxwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxkeyPressEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QKeyEvent): void =
  fQGroupBox_virtualbase_keyPressEvent(self.h, event.h)

type QGroupBoxkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_keyPressEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_keyPressEvent ".} =
  var nimfunc = cast[ptr QGroupBoxkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxkeyReleaseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QKeyEvent): void =
  fQGroupBox_virtualbase_keyReleaseEvent(self.h, event.h)

type QGroupBoxkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_keyReleaseEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QGroupBoxkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxfocusOutEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QFocusEvent): void =
  fQGroupBox_virtualbase_focusOutEvent(self.h, event.h)

type QGroupBoxfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_focusOutEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_focusOutEvent ".} =
  var nimfunc = cast[ptr QGroupBoxfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxenterEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QEnterEvent): void =
  fQGroupBox_virtualbase_enterEvent(self.h, event.h)

type QGroupBoxenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxenterEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_enterEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_enterEvent ".} =
  var nimfunc = cast[ptr QGroupBoxenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxleaveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fQGroupBox_virtualbase_leaveEvent(self.h, event.h)

type QGroupBoxleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxleaveEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_leaveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_leaveEvent ".} =
  var nimfunc = cast[ptr QGroupBoxleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxmoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMoveEvent): void =
  fQGroupBox_virtualbase_moveEvent(self.h, event.h)

type QGroupBoxmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxmoveEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_moveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_moveEvent ".} =
  var nimfunc = cast[ptr QGroupBoxmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxcloseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QCloseEvent): void =
  fQGroupBox_virtualbase_closeEvent(self.h, event.h)

type QGroupBoxcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxcloseEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_closeEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_closeEvent ".} =
  var nimfunc = cast[ptr QGroupBoxcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxcontextMenuEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QContextMenuEvent): void =
  fQGroupBox_virtualbase_contextMenuEvent(self.h, event.h)

type QGroupBoxcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_contextMenuEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_contextMenuEvent ".} =
  var nimfunc = cast[ptr QGroupBoxcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxtabletEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QTabletEvent): void =
  fQGroupBox_virtualbase_tabletEvent(self.h, event.h)

type QGroupBoxtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxtabletEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_tabletEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_tabletEvent ".} =
  var nimfunc = cast[ptr QGroupBoxtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxactionEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QActionEvent): void =
  fQGroupBox_virtualbase_actionEvent(self.h, event.h)

type QGroupBoxactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxactionEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_actionEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_actionEvent ".} =
  var nimfunc = cast[ptr QGroupBoxactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxdragEnterEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragEnterEvent): void =
  fQGroupBox_virtualbase_dragEnterEvent(self.h, event.h)

type QGroupBoxdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_dragEnterEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_dragEnterEvent ".} =
  var nimfunc = cast[ptr QGroupBoxdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxdragMoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragMoveEvent): void =
  fQGroupBox_virtualbase_dragMoveEvent(self.h, event.h)

type QGroupBoxdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_dragMoveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_dragMoveEvent ".} =
  var nimfunc = cast[ptr QGroupBoxdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxdragLeaveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fQGroupBox_virtualbase_dragLeaveEvent(self.h, event.h)

type QGroupBoxdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_dragLeaveEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QGroupBoxdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxdropEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDropEvent): void =
  fQGroupBox_virtualbase_dropEvent(self.h, event.h)

type QGroupBoxdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxdropEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_dropEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_dropEvent ".} =
  var nimfunc = cast[ptr QGroupBoxdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxshowEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QShowEvent): void =
  fQGroupBox_virtualbase_showEvent(self.h, event.h)

type QGroupBoxshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxshowEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_showEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_showEvent ".} =
  var nimfunc = cast[ptr QGroupBoxshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxhideEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QHideEvent): void =
  fQGroupBox_virtualbase_hideEvent(self.h, event.h)

type QGroupBoxhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxhideEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_hideEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_hideEvent ".} =
  var nimfunc = cast[ptr QGroupBoxhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxnativeEvent*(self: gen_qgroupbox_types.QGroupBox, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQGroupBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QGroupBoxnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxnativeEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_nativeEvent(self: ptr cQGroupBox, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QGroupBox_nativeEvent ".} =
  var nimfunc = cast[ptr QGroupBoxnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QGroupBoxmetric*(self: gen_qgroupbox_types.QGroupBox, param1: cint): cint =
  fQGroupBox_virtualbase_metric(self.h, cint(param1))

type QGroupBoxmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxmetricProc) =
  # TODO check subclass
  var tmp = new QGroupBoxmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_metric(self: ptr cQGroupBox, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QGroupBox_metric ".} =
  var nimfunc = cast[ptr QGroupBoxmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGroupBoxinitPainter*(self: gen_qgroupbox_types.QGroupBox, painter: gen_qpainter_types.QPainter): void =
  fQGroupBox_virtualbase_initPainter(self.h, painter.h)

type QGroupBoxinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxinitPainterProc) =
  # TODO check subclass
  var tmp = new QGroupBoxinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_initPainter(self: ptr cQGroupBox, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_initPainter ".} =
  var nimfunc = cast[ptr QGroupBoxinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QGroupBoxredirected*(self: gen_qgroupbox_types.QGroupBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQGroupBox_virtualbase_redirected(self.h, offset.h))

type QGroupBoxredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxredirectedProc) =
  # TODO check subclass
  var tmp = new QGroupBoxredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_redirected(self: ptr cQGroupBox, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QGroupBox_redirected ".} =
  var nimfunc = cast[ptr QGroupBoxredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGroupBoxsharedPainter*(self: gen_qgroupbox_types.QGroupBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQGroupBox_virtualbase_sharedPainter(self.h))

type QGroupBoxsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxsharedPainterProc) =
  # TODO check subclass
  var tmp = new QGroupBoxsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_sharedPainter(self: ptr cQGroupBox, slot: int): pointer {.exportc: "miqt_exec_callback_QGroupBox_sharedPainter ".} =
  var nimfunc = cast[ptr QGroupBoxsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QGroupBoxinputMethodEvent*(self: gen_qgroupbox_types.QGroupBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fQGroupBox_virtualbase_inputMethodEvent(self.h, param1.h)

type QGroupBoxinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_inputMethodEvent(self: ptr cQGroupBox, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_inputMethodEvent ".} =
  var nimfunc = cast[ptr QGroupBoxinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QGroupBoxinputMethodQuery*(self: gen_qgroupbox_types.QGroupBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQGroupBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QGroupBoxinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QGroupBoxinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_inputMethodQuery(self: ptr cQGroupBox, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QGroupBox_inputMethodQuery ".} =
  var nimfunc = cast[ptr QGroupBoxinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QGroupBoxfocusNextPrevChild*(self: gen_qgroupbox_types.QGroupBox, next: bool): bool =
  fQGroupBox_virtualbase_focusNextPrevChild(self.h, next)

type QGroupBoxfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QGroupBoxfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_focusNextPrevChild(self: ptr cQGroupBox, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QGroupBox_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QGroupBoxfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QGroupBoxeventFilter*(self: gen_qgroupbox_types.QGroupBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQGroupBox_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGroupBoxeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxeventFilterProc) =
  # TODO check subclass
  var tmp = new QGroupBoxeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_eventFilter(self: ptr cQGroupBox, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGroupBox_eventFilter ".} =
  var nimfunc = cast[ptr QGroupBoxeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QGroupBoxtimerEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fQGroupBox_virtualbase_timerEvent(self.h, event.h)

type QGroupBoxtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxtimerEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_timerEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_timerEvent ".} =
  var nimfunc = cast[ptr QGroupBoxtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxcustomEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fQGroupBox_virtualbase_customEvent(self.h, event.h)

type QGroupBoxcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxcustomEventProc) =
  # TODO check subclass
  var tmp = new QGroupBoxcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_customEvent(self: ptr cQGroupBox, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_customEvent ".} =
  var nimfunc = cast[ptr QGroupBoxcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QGroupBoxconnectNotify*(self: gen_qgroupbox_types.QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGroupBox_virtualbase_connectNotify(self.h, signal.h)

type QGroupBoxconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGroupBoxconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_connectNotify(self: ptr cQGroupBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_connectNotify ".} =
  var nimfunc = cast[ptr QGroupBoxconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QGroupBoxdisconnectNotify*(self: gen_qgroupbox_types.QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQGroupBox_virtualbase_disconnectNotify(self.h, signal.h)

type QGroupBoxdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QGroupBoxdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGroupBox_disconnectNotify(self: ptr cQGroupBox, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGroupBox_disconnectNotify ".} =
  var nimfunc = cast[ptr QGroupBoxdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qgroupbox_types.QGroupBox) =
  fcQGroupBox_delete(self.h)
