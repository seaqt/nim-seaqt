import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
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

proc fcQGroupBox_metaObject(self: pointer): pointer {.importc: "QGroupBox_metaObject".}
proc fcQGroupBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QGroupBox_metacast".}
proc fcQGroupBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGroupBox_metacall".}
proc fcQGroupBox_tr(s: cstring): struct_miqt_string {.importc: "QGroupBox_tr".}
proc fcQGroupBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QGroupBox_trUtf8".}
proc fcQGroupBox_title(self: pointer): struct_miqt_string {.importc: "QGroupBox_title".}
proc fcQGroupBox_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QGroupBox_setTitle".}
proc fcQGroupBox_alignment(self: pointer): cint {.importc: "QGroupBox_alignment".}
proc fcQGroupBox_setAlignment(self: pointer, alignment: cint): void {.importc: "QGroupBox_setAlignment".}
proc fcQGroupBox_minimumSizeHint(self: pointer): pointer {.importc: "QGroupBox_minimumSizeHint".}
proc fcQGroupBox_isFlat(self: pointer): bool {.importc: "QGroupBox_isFlat".}
proc fcQGroupBox_setFlat(self: pointer, flat: bool): void {.importc: "QGroupBox_setFlat".}
proc fcQGroupBox_isCheckable(self: pointer): bool {.importc: "QGroupBox_isCheckable".}
proc fcQGroupBox_setCheckable(self: pointer, checkable: bool): void {.importc: "QGroupBox_setCheckable".}
proc fcQGroupBox_isChecked(self: pointer): bool {.importc: "QGroupBox_isChecked".}
proc fcQGroupBox_setChecked(self: pointer, checked: bool): void {.importc: "QGroupBox_setChecked".}
proc fcQGroupBox_clicked(self: pointer): void {.importc: "QGroupBox_clicked".}
proc fcQGroupBox_connect_clicked(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGroupBox_connect_clicked".}
proc fcQGroupBox_toggled(self: pointer, param1: bool): void {.importc: "QGroupBox_toggled".}
proc fcQGroupBox_connect_toggled(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGroupBox_connect_toggled".}
proc fcQGroupBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGroupBox_tr2".}
proc fcQGroupBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGroupBox_tr3".}
proc fcQGroupBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGroupBox_trUtf82".}
proc fcQGroupBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGroupBox_trUtf83".}
proc fcQGroupBox_clicked1(self: pointer, checked: bool): void {.importc: "QGroupBox_clicked1".}
proc fcQGroupBox_connect_clicked1(self: pointer, slot: int, callback: proc (slot: int, checked: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGroupBox_connect_clicked1".}
proc fcQGroupBox_vtbl(self: pointer): pointer {.importc: "QGroupBox_vtbl".}
proc fcQGroupBox_vdata(self: pointer): pointer {.importc: "QGroupBox_vdata".}
type cQGroupBoxVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGroupBox_virtualbase_metaObject(self: pointer): pointer {.importc: "QGroupBox_virtualbase_metaObject".}
proc fcQGroupBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGroupBox_virtualbase_metacast".}
proc fcQGroupBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGroupBox_virtualbase_metacall".}
proc fcQGroupBox_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QGroupBox_virtualbase_minimumSizeHint".}
proc fcQGroupBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGroupBox_virtualbase_event".}
proc fcQGroupBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_childEvent".}
proc fcQGroupBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_resizeEvent".}
proc fcQGroupBox_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_paintEvent".}
proc fcQGroupBox_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_focusInEvent".}
proc fcQGroupBox_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_changeEvent".}
proc fcQGroupBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_mousePressEvent".}
proc fcQGroupBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_mouseMoveEvent".}
proc fcQGroupBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_mouseReleaseEvent".}
proc fcQGroupBox_virtualbase_devType(self: pointer): cint {.importc: "QGroupBox_virtualbase_devType".}
proc fcQGroupBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QGroupBox_virtualbase_setVisible".}
proc fcQGroupBox_virtualbase_sizeHint(self: pointer): pointer {.importc: "QGroupBox_virtualbase_sizeHint".}
proc fcQGroupBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QGroupBox_virtualbase_heightForWidth".}
proc fcQGroupBox_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QGroupBox_virtualbase_hasHeightForWidth".}
proc fcQGroupBox_virtualbase_paintEngine(self: pointer): pointer {.importc: "QGroupBox_virtualbase_paintEngine".}
proc fcQGroupBox_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_mouseDoubleClickEvent".}
proc fcQGroupBox_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_wheelEvent".}
proc fcQGroupBox_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_keyPressEvent".}
proc fcQGroupBox_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_keyReleaseEvent".}
proc fcQGroupBox_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_focusOutEvent".}
proc fcQGroupBox_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_enterEvent".}
proc fcQGroupBox_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_leaveEvent".}
proc fcQGroupBox_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_moveEvent".}
proc fcQGroupBox_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_closeEvent".}
proc fcQGroupBox_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_contextMenuEvent".}
proc fcQGroupBox_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_tabletEvent".}
proc fcQGroupBox_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_actionEvent".}
proc fcQGroupBox_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_dragEnterEvent".}
proc fcQGroupBox_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_dragMoveEvent".}
proc fcQGroupBox_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_dragLeaveEvent".}
proc fcQGroupBox_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_dropEvent".}
proc fcQGroupBox_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_showEvent".}
proc fcQGroupBox_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_hideEvent".}
proc fcQGroupBox_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QGroupBox_virtualbase_nativeEvent".}
proc fcQGroupBox_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QGroupBox_virtualbase_metric".}
proc fcQGroupBox_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QGroupBox_virtualbase_initPainter".}
proc fcQGroupBox_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QGroupBox_virtualbase_redirected".}
proc fcQGroupBox_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QGroupBox_virtualbase_sharedPainter".}
proc fcQGroupBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QGroupBox_virtualbase_inputMethodEvent".}
proc fcQGroupBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QGroupBox_virtualbase_inputMethodQuery".}
proc fcQGroupBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QGroupBox_virtualbase_focusNextPrevChild".}
proc fcQGroupBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGroupBox_virtualbase_eventFilter".}
proc fcQGroupBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_timerEvent".}
proc fcQGroupBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_customEvent".}
proc fcQGroupBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGroupBox_virtualbase_connectNotify".}
proc fcQGroupBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGroupBox_virtualbase_disconnectNotify".}
proc fcQGroupBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGroupBox_protectedbase_initStyleOption".}
proc fcQGroupBox_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QGroupBox_protectedbase_updateMicroFocus".}
proc fcQGroupBox_protectedbase_create(self: pointer): void {.importc: "QGroupBox_protectedbase_create".}
proc fcQGroupBox_protectedbase_destroy(self: pointer): void {.importc: "QGroupBox_protectedbase_destroy".}
proc fcQGroupBox_protectedbase_focusNextChild(self: pointer): bool {.importc: "QGroupBox_protectedbase_focusNextChild".}
proc fcQGroupBox_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QGroupBox_protectedbase_focusPreviousChild".}
proc fcQGroupBox_protectedbase_sender(self: pointer): pointer {.importc: "QGroupBox_protectedbase_sender".}
proc fcQGroupBox_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QGroupBox_protectedbase_senderSignalIndex".}
proc fcQGroupBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGroupBox_protectedbase_receivers".}
proc fcQGroupBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGroupBox_protectedbase_isSignalConnected".}
proc fcQGroupBox_new(vtbl, vdata: pointer, parent: pointer): ptr cQGroupBox {.importc: "QGroupBox_new".}
proc fcQGroupBox_new2(vtbl, vdata: pointer): ptr cQGroupBox {.importc: "QGroupBox_new2".}
proc fcQGroupBox_new3(vtbl, vdata: pointer, title: struct_miqt_string): ptr cQGroupBox {.importc: "QGroupBox_new3".}
proc fcQGroupBox_new4(vtbl, vdata: pointer, title: struct_miqt_string, parent: pointer): ptr cQGroupBox {.importc: "QGroupBox_new4".}
proc fcQGroupBox_staticMetaObject(): pointer {.importc: "QGroupBox_staticMetaObject".}

proc metaObject*(self: gen_qgroupbox_types.QGroupBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGroupBox_metaObject(self.h), owned: false)

proc metacast*(self: gen_qgroupbox_types.QGroupBox, param1: cstring): pointer =
  fcQGroupBox_metacast(self.h, param1)

proc metacall*(self: gen_qgroupbox_types.QGroupBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQGroupBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgroupbox_types.QGroupBox, s: cstring): string =
  let v_ms = fcQGroupBox_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgroupbox_types.QGroupBox, s: cstring): string =
  let v_ms = fcQGroupBox_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc title*(self: gen_qgroupbox_types.QGroupBox): string =
  let v_ms = fcQGroupBox_title(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: gen_qgroupbox_types.QGroupBox, title: openArray[char]): void =
  fcQGroupBox_setTitle(self.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

proc alignment*(self: gen_qgroupbox_types.QGroupBox): cint =
  cint(fcQGroupBox_alignment(self.h))

proc setAlignment*(self: gen_qgroupbox_types.QGroupBox, alignment: cint): void =
  fcQGroupBox_setAlignment(self.h, alignment)

proc minimumSizeHint*(self: gen_qgroupbox_types.QGroupBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGroupBox_minimumSizeHint(self.h), owned: true)

proc isFlat*(self: gen_qgroupbox_types.QGroupBox): bool =
  fcQGroupBox_isFlat(self.h)

proc setFlat*(self: gen_qgroupbox_types.QGroupBox, flat: bool): void =
  fcQGroupBox_setFlat(self.h, flat)

proc isCheckable*(self: gen_qgroupbox_types.QGroupBox): bool =
  fcQGroupBox_isCheckable(self.h)

proc setCheckable*(self: gen_qgroupbox_types.QGroupBox, checkable: bool): void =
  fcQGroupBox_setCheckable(self.h, checkable)

proc isChecked*(self: gen_qgroupbox_types.QGroupBox): bool =
  fcQGroupBox_isChecked(self.h)

proc setChecked*(self: gen_qgroupbox_types.QGroupBox, checked: bool): void =
  fcQGroupBox_setChecked(self.h, checked)

proc clicked*(self: gen_qgroupbox_types.QGroupBox): void =
  fcQGroupBox_clicked(self.h)

type QGroupBoxclickedSlot* = proc()
proc cQGroupBox_slot_callback_clicked(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGroupBoxclickedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQGroupBox_slot_callback_clicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGroupBoxclickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxclickedSlot) =
  var tmp = new QGroupBoxclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_clicked(self.h, cast[int](addr tmp[]), cQGroupBox_slot_callback_clicked, cQGroupBox_slot_callback_clicked_release)

proc toggled*(self: gen_qgroupbox_types.QGroupBox, param1: bool): void =
  fcQGroupBox_toggled(self.h, param1)

type QGroupBoxtoggledSlot* = proc(param1: bool)
proc cQGroupBox_slot_callback_toggled(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QGroupBoxtoggledSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc cQGroupBox_slot_callback_toggled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGroupBoxtoggledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontoggled*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxtoggledSlot) =
  var tmp = new QGroupBoxtoggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_toggled(self.h, cast[int](addr tmp[]), cQGroupBox_slot_callback_toggled, cQGroupBox_slot_callback_toggled_release)

proc tr*(_: type gen_qgroupbox_types.QGroupBox, s: cstring, c: cstring): string =
  let v_ms = fcQGroupBox_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qgroupbox_types.QGroupBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGroupBox_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgroupbox_types.QGroupBox, s: cstring, c: cstring): string =
  let v_ms = fcQGroupBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgroupbox_types.QGroupBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGroupBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc clicked*(self: gen_qgroupbox_types.QGroupBox, checked: bool): void =
  fcQGroupBox_clicked1(self.h, checked)

type QGroupBoxclicked1Slot* = proc(checked: bool)
proc cQGroupBox_slot_callback_clicked1(slot: int, checked: bool) {.cdecl.} =
  let nimfunc = cast[ptr QGroupBoxclicked1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc cQGroupBox_slot_callback_clicked1_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGroupBoxclicked1Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxclicked1Slot) =
  var tmp = new QGroupBoxclicked1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_clicked1(self.h, cast[int](addr tmp[]), cQGroupBox_slot_callback_clicked1, cQGroupBox_slot_callback_clicked1_release)

type QGroupBoxmetaObjectProc* = proc(self: QGroupBox): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QGroupBoxmetacastProc* = proc(self: QGroupBox, param1: cstring): pointer {.raises: [], gcsafe.}
type QGroupBoxmetacallProc* = proc(self: QGroupBox, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QGroupBoxminimumSizeHintProc* = proc(self: QGroupBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QGroupBoxeventProc* = proc(self: QGroupBox, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGroupBoxchildEventProc* = proc(self: QGroupBox, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QGroupBoxresizeEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QGroupBoxpaintEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QGroupBoxfocusInEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGroupBoxchangeEventProc* = proc(self: QGroupBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGroupBoxmousePressEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QGroupBoxmouseMoveEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QGroupBoxmouseReleaseEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QGroupBoxdevTypeProc* = proc(self: QGroupBox): cint {.raises: [], gcsafe.}
type QGroupBoxsetVisibleProc* = proc(self: QGroupBox, visible: bool): void {.raises: [], gcsafe.}
type QGroupBoxsizeHintProc* = proc(self: QGroupBox): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QGroupBoxheightForWidthProc* = proc(self: QGroupBox, param1: cint): cint {.raises: [], gcsafe.}
type QGroupBoxhasHeightForWidthProc* = proc(self: QGroupBox): bool {.raises: [], gcsafe.}
type QGroupBoxpaintEngineProc* = proc(self: QGroupBox): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QGroupBoxmouseDoubleClickEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QGroupBoxwheelEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QGroupBoxkeyPressEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGroupBoxkeyReleaseEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QGroupBoxfocusOutEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QGroupBoxenterEventProc* = proc(self: QGroupBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGroupBoxleaveEventProc* = proc(self: QGroupBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGroupBoxmoveEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QGroupBoxcloseEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QGroupBoxcontextMenuEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QGroupBoxtabletEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QGroupBoxactionEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QGroupBoxdragEnterEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QGroupBoxdragMoveEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QGroupBoxdragLeaveEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QGroupBoxdropEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QGroupBoxshowEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QGroupBoxhideEventProc* = proc(self: QGroupBox, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QGroupBoxnativeEventProc* = proc(self: QGroupBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QGroupBoxmetricProc* = proc(self: QGroupBox, param1: cint): cint {.raises: [], gcsafe.}
type QGroupBoxinitPainterProc* = proc(self: QGroupBox, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QGroupBoxredirectedProc* = proc(self: QGroupBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QGroupBoxsharedPainterProc* = proc(self: QGroupBox): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QGroupBoxinputMethodEventProc* = proc(self: QGroupBox, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QGroupBoxinputMethodQueryProc* = proc(self: QGroupBox, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QGroupBoxfocusNextPrevChildProc* = proc(self: QGroupBox, next: bool): bool {.raises: [], gcsafe.}
type QGroupBoxeventFilterProc* = proc(self: QGroupBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QGroupBoxtimerEventProc* = proc(self: QGroupBox, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QGroupBoxcustomEventProc* = proc(self: QGroupBox, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QGroupBoxconnectNotifyProc* = proc(self: QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGroupBoxdisconnectNotifyProc* = proc(self: QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QGroupBoxVTable* {.inheritable, pure.} = object
  vtbl: cQGroupBoxVTable
  metaObject*: QGroupBoxmetaObjectProc
  metacast*: QGroupBoxmetacastProc
  metacall*: QGroupBoxmetacallProc
  minimumSizeHint*: QGroupBoxminimumSizeHintProc
  event*: QGroupBoxeventProc
  childEvent*: QGroupBoxchildEventProc
  resizeEvent*: QGroupBoxresizeEventProc
  paintEvent*: QGroupBoxpaintEventProc
  focusInEvent*: QGroupBoxfocusInEventProc
  changeEvent*: QGroupBoxchangeEventProc
  mousePressEvent*: QGroupBoxmousePressEventProc
  mouseMoveEvent*: QGroupBoxmouseMoveEventProc
  mouseReleaseEvent*: QGroupBoxmouseReleaseEventProc
  devType*: QGroupBoxdevTypeProc
  setVisible*: QGroupBoxsetVisibleProc
  sizeHint*: QGroupBoxsizeHintProc
  heightForWidth*: QGroupBoxheightForWidthProc
  hasHeightForWidth*: QGroupBoxhasHeightForWidthProc
  paintEngine*: QGroupBoxpaintEngineProc
  mouseDoubleClickEvent*: QGroupBoxmouseDoubleClickEventProc
  wheelEvent*: QGroupBoxwheelEventProc
  keyPressEvent*: QGroupBoxkeyPressEventProc
  keyReleaseEvent*: QGroupBoxkeyReleaseEventProc
  focusOutEvent*: QGroupBoxfocusOutEventProc
  enterEvent*: QGroupBoxenterEventProc
  leaveEvent*: QGroupBoxleaveEventProc
  moveEvent*: QGroupBoxmoveEventProc
  closeEvent*: QGroupBoxcloseEventProc
  contextMenuEvent*: QGroupBoxcontextMenuEventProc
  tabletEvent*: QGroupBoxtabletEventProc
  actionEvent*: QGroupBoxactionEventProc
  dragEnterEvent*: QGroupBoxdragEnterEventProc
  dragMoveEvent*: QGroupBoxdragMoveEventProc
  dragLeaveEvent*: QGroupBoxdragLeaveEventProc
  dropEvent*: QGroupBoxdropEventProc
  showEvent*: QGroupBoxshowEventProc
  hideEvent*: QGroupBoxhideEventProc
  nativeEvent*: QGroupBoxnativeEventProc
  metric*: QGroupBoxmetricProc
  initPainter*: QGroupBoxinitPainterProc
  redirected*: QGroupBoxredirectedProc
  sharedPainter*: QGroupBoxsharedPainterProc
  inputMethodEvent*: QGroupBoxinputMethodEventProc
  inputMethodQuery*: QGroupBoxinputMethodQueryProc
  focusNextPrevChild*: QGroupBoxfocusNextPrevChildProc
  eventFilter*: QGroupBoxeventFilterProc
  timerEvent*: QGroupBoxtimerEventProc
  customEvent*: QGroupBoxcustomEventProc
  connectNotify*: QGroupBoxconnectNotifyProc
  disconnectNotify*: QGroupBoxdisconnectNotifyProc
proc QGroupBoxmetaObject*(self: gen_qgroupbox_types.QGroupBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGroupBox_virtualbase_metaObject(self.h), owned: false)

proc cQGroupBox_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGroupBoxmetacast*(self: gen_qgroupbox_types.QGroupBox, param1: cstring): pointer =
  fcQGroupBox_virtualbase_metacast(self.h, param1)

proc cQGroupBox_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGroupBoxmetacall*(self: gen_qgroupbox_types.QGroupBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQGroupBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQGroupBox_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGroupBoxminimumSizeHint*(self: gen_qgroupbox_types.QGroupBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGroupBox_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQGroupBox_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGroupBoxevent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQGroupBox_virtualbase_event(self.h, event.h)

proc cQGroupBox_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGroupBoxchildEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGroupBox_virtualbase_childEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QGroupBoxresizeEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QResizeEvent): void =
  fcQGroupBox_virtualbase_resizeEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QGroupBoxpaintEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QPaintEvent): void =
  fcQGroupBox_virtualbase_paintEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QGroupBoxfocusInEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QFocusEvent): void =
  fcQGroupBox_virtualbase_focusInEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QGroupBoxchangeEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fcQGroupBox_virtualbase_changeEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QGroupBoxmousePressEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fcQGroupBox_virtualbase_mousePressEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QGroupBoxmouseMoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fcQGroupBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGroupBoxmouseReleaseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fcQGroupBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGroupBoxdevType*(self: gen_qgroupbox_types.QGroupBox): cint =
  fcQGroupBox_virtualbase_devType(self.h)

proc cQGroupBox_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QGroupBoxsetVisible*(self: gen_qgroupbox_types.QGroupBox, visible: bool): void =
  fcQGroupBox_virtualbase_setVisible(self.h, visible)

proc cQGroupBox_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QGroupBoxsizeHint*(self: gen_qgroupbox_types.QGroupBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGroupBox_virtualbase_sizeHint(self.h), owned: true)

proc cQGroupBox_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGroupBoxheightForWidth*(self: gen_qgroupbox_types.QGroupBox, param1: cint): cint =
  fcQGroupBox_virtualbase_heightForWidth(self.h, param1)

proc cQGroupBox_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QGroupBoxhasHeightForWidth*(self: gen_qgroupbox_types.QGroupBox): bool =
  fcQGroupBox_virtualbase_hasHeightForWidth(self.h)

proc cQGroupBox_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QGroupBoxpaintEngine*(self: gen_qgroupbox_types.QGroupBox): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQGroupBox_virtualbase_paintEngine(self.h), owned: false)

proc cQGroupBox_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGroupBoxmouseDoubleClickEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fcQGroupBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGroupBoxwheelEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QWheelEvent): void =
  fcQGroupBox_virtualbase_wheelEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QGroupBoxkeyPressEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QKeyEvent): void =
  fcQGroupBox_virtualbase_keyPressEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QGroupBoxkeyReleaseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QKeyEvent): void =
  fcQGroupBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGroupBoxfocusOutEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QFocusEvent): void =
  fcQGroupBox_virtualbase_focusOutEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QGroupBoxenterEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fcQGroupBox_virtualbase_enterEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QGroupBoxleaveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fcQGroupBox_virtualbase_leaveEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QGroupBoxmoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMoveEvent): void =
  fcQGroupBox_virtualbase_moveEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QGroupBoxcloseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QCloseEvent): void =
  fcQGroupBox_virtualbase_closeEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QGroupBoxcontextMenuEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQGroupBox_virtualbase_contextMenuEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGroupBoxtabletEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QTabletEvent): void =
  fcQGroupBox_virtualbase_tabletEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QGroupBoxactionEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QActionEvent): void =
  fcQGroupBox_virtualbase_actionEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QGroupBoxdragEnterEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQGroupBox_virtualbase_dragEnterEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGroupBoxdragMoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQGroupBox_virtualbase_dragMoveEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGroupBoxdragLeaveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQGroupBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGroupBoxdropEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDropEvent): void =
  fcQGroupBox_virtualbase_dropEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QGroupBoxshowEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QShowEvent): void =
  fcQGroupBox_virtualbase_showEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QGroupBoxhideEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QHideEvent): void =
  fcQGroupBox_virtualbase_hideEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QGroupBoxnativeEvent*(self: gen_qgroupbox_types.QGroupBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQGroupBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQGroupBox_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGroupBoxmetric*(self: gen_qgroupbox_types.QGroupBox, param1: cint): cint =
  fcQGroupBox_virtualbase_metric(self.h, cint(param1))

proc cQGroupBox_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QGroupBoxinitPainter*(self: gen_qgroupbox_types.QGroupBox, painter: gen_qpainter_types.QPainter): void =
  fcQGroupBox_virtualbase_initPainter(self.h, painter.h)

proc cQGroupBox_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QGroupBoxredirected*(self: gen_qgroupbox_types.QGroupBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQGroupBox_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQGroupBox_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGroupBoxsharedPainter*(self: gen_qgroupbox_types.QGroupBox): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQGroupBox_virtualbase_sharedPainter(self.h), owned: false)

proc cQGroupBox_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGroupBoxinputMethodEvent*(self: gen_qgroupbox_types.QGroupBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQGroupBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQGroupBox_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGroupBoxinputMethodQuery*(self: gen_qgroupbox_types.QGroupBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGroupBox_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQGroupBox_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QGroupBoxfocusNextPrevChild*(self: gen_qgroupbox_types.QGroupBox, next: bool): bool =
  fcQGroupBox_virtualbase_focusNextPrevChild(self.h, next)

proc cQGroupBox_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGroupBoxeventFilter*(self: gen_qgroupbox_types.QGroupBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGroupBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQGroupBox_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGroupBoxtimerEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGroupBox_virtualbase_timerEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QGroupBoxcustomEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fcQGroupBox_virtualbase_customEvent(self.h, event.h)

proc cQGroupBox_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QGroupBoxconnectNotify*(self: gen_qgroupbox_types.QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGroupBox_virtualbase_connectNotify(self.h, signal.h)

proc cQGroupBox_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QGroupBoxdisconnectNotify*(self: gen_qgroupbox_types.QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGroupBox_virtualbase_disconnectNotify(self.h, signal.h)

proc cQGroupBox_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](fcQGroupBox_vdata(self))
  let self = QGroupBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQGroupBox* {.inheritable.} = ref object of QGroupBox
  vtbl*: cQGroupBoxVTable
method metaObject*(self: VirtualQGroupBox): gen_qobjectdefs_types.QMetaObject {.base.} =
  QGroupBoxmetaObject(self[])
proc cQGroupBox_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQGroupBox, param1: cstring): pointer {.base.} =
  QGroupBoxmetacast(self[], param1)
proc cQGroupBox_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQGroupBox, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QGroupBoxmetacall(self[], param1, param2, param3)
proc cQGroupBox_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method minimumSizeHint*(self: VirtualQGroupBox): gen_qsize_types.QSize {.base.} =
  QGroupBoxminimumSizeHint(self[])
proc cQGroupBox_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQGroupBox, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGroupBoxevent(self[], event)
proc cQGroupBox_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method childEvent*(self: VirtualQGroupBox, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QGroupBoxchildEvent(self[], event)
proc cQGroupBox_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method resizeEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QGroupBoxresizeEvent(self[], event)
proc cQGroupBox_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method paintEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QGroupBoxpaintEvent(self[], event)
proc cQGroupBox_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method focusInEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGroupBoxfocusInEvent(self[], event)
proc cQGroupBox_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method changeEvent*(self: VirtualQGroupBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGroupBoxchangeEvent(self[], event)
proc cQGroupBox_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method mousePressEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QGroupBoxmousePressEvent(self[], event)
proc cQGroupBox_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QGroupBoxmouseMoveEvent(self[], event)
proc cQGroupBox_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QGroupBoxmouseReleaseEvent(self[], event)
proc cQGroupBox_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method devType*(self: VirtualQGroupBox): cint {.base.} =
  QGroupBoxdevType(self[])
proc cQGroupBox_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQGroupBox, visible: bool): void {.base.} =
  QGroupBoxsetVisible(self[], visible)
proc cQGroupBox_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method sizeHint*(self: VirtualQGroupBox): gen_qsize_types.QSize {.base.} =
  QGroupBoxsizeHint(self[])
proc cQGroupBox_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQGroupBox, param1: cint): cint {.base.} =
  QGroupBoxheightForWidth(self[], param1)
proc cQGroupBox_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQGroupBox): bool {.base.} =
  QGroupBoxhasHeightForWidth(self[])
proc cQGroupBox_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQGroupBox): gen_qpaintengine_types.QPaintEngine {.base.} =
  QGroupBoxpaintEngine(self[])
proc cQGroupBox_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QGroupBoxmouseDoubleClickEvent(self[], event)
proc cQGroupBox_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QGroupBoxwheelEvent(self[], event)
proc cQGroupBox_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGroupBoxkeyPressEvent(self[], event)
proc cQGroupBox_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QGroupBoxkeyReleaseEvent(self[], event)
proc cQGroupBox_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusOutEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QGroupBoxfocusOutEvent(self[], event)
proc cQGroupBox_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQGroupBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGroupBoxenterEvent(self[], event)
proc cQGroupBox_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQGroupBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGroupBoxleaveEvent(self[], event)
proc cQGroupBox_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QGroupBoxmoveEvent(self[], event)
proc cQGroupBox_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QGroupBoxcloseEvent(self[], event)
proc cQGroupBox_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QGroupBoxcontextMenuEvent(self[], event)
proc cQGroupBox_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QGroupBoxtabletEvent(self[], event)
proc cQGroupBox_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QActionEvent): void {.base.} =
  QGroupBoxactionEvent(self[], event)
proc cQGroupBox_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QGroupBoxdragEnterEvent(self[], event)
proc cQGroupBox_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QGroupBoxdragMoveEvent(self[], event)
proc cQGroupBox_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QGroupBoxdragLeaveEvent(self[], event)
proc cQGroupBox_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QDropEvent): void {.base.} =
  QGroupBoxdropEvent(self[], event)
proc cQGroupBox_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QShowEvent): void {.base.} =
  QGroupBoxshowEvent(self[], event)
proc cQGroupBox_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQGroupBox, event: gen_qevent_types.QHideEvent): void {.base.} =
  QGroupBoxhideEvent(self[], event)
proc cQGroupBox_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQGroupBox, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QGroupBoxnativeEvent(self[], eventType, message, resultVal)
proc cQGroupBox_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQGroupBox, param1: cint): cint {.base.} =
  QGroupBoxmetric(self[], param1)
proc cQGroupBox_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQGroupBox, painter: gen_qpainter_types.QPainter): void {.base.} =
  QGroupBoxinitPainter(self[], painter)
proc cQGroupBox_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQGroupBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QGroupBoxredirected(self[], offset)
proc cQGroupBox_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQGroupBox): gen_qpainter_types.QPainter {.base.} =
  QGroupBoxsharedPainter(self[])
proc cQGroupBox_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQGroupBox, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QGroupBoxinputMethodEvent(self[], param1)
proc cQGroupBox_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQGroupBox, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QGroupBoxinputMethodQuery(self[], param1)
proc cQGroupBox_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQGroupBox, next: bool): bool {.base.} =
  QGroupBoxfocusNextPrevChild(self[], next)
proc cQGroupBox_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQGroupBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QGroupBoxeventFilter(self[], watched, event)
proc cQGroupBox_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQGroupBox, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QGroupBoxtimerEvent(self[], event)
proc cQGroupBox_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method customEvent*(self: VirtualQGroupBox, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QGroupBoxcustomEvent(self[], event)
proc cQGroupBox_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGroupBoxconnectNotify(self[], signal)
proc cQGroupBox_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QGroupBoxdisconnectNotify(self[], signal)
proc cQGroupBox_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQGroupBox](fcQGroupBox_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qgroupbox_types.QGroupBox, option: gen_qstyleoption_types.QStyleOptionGroupBox): void =
  fcQGroupBox_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qgroupbox_types.QGroupBox): void =
  fcQGroupBox_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qgroupbox_types.QGroupBox): void =
  fcQGroupBox_protectedbase_create(self.h)

proc destroy*(self: gen_qgroupbox_types.QGroupBox): void =
  fcQGroupBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qgroupbox_types.QGroupBox): bool =
  fcQGroupBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qgroupbox_types.QGroupBox): bool =
  fcQGroupBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qgroupbox_types.QGroupBox): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGroupBox_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qgroupbox_types.QGroupBox): cint =
  fcQGroupBox_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qgroupbox_types.QGroupBox, signal: cstring): cint =
  fcQGroupBox_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qgroupbox_types.QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQGroupBox_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QGroupBoxVTable = nil): gen_qgroupbox_types.QGroupBox =
  let vtbl = if vtbl == nil: new QGroupBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGroupBoxVTable](fcQGroupBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGroupBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGroupBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGroupBox_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQGroupBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGroupBox_vtable_callback_event
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGroupBox_vtable_callback_childEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGroupBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQGroupBox_vtable_callback_paintEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGroupBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGroupBox_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGroupBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGroupBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGroupBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQGroupBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQGroupBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGroupBox_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQGroupBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQGroupBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQGroupBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGroupBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGroupBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGroupBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGroupBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGroupBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQGroupBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQGroupBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGroupBox_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGroupBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGroupBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQGroupBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQGroupBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGroupBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGroupBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGroupBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGroupBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGroupBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGroupBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQGroupBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQGroupBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQGroupBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQGroupBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQGroupBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGroupBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGroupBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGroupBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGroupBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGroupBox_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGroupBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGroupBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGroupBox_vtable_callback_disconnectNotify
  gen_qgroupbox_types.QGroupBox(h: fcQGroupBox_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    vtbl: ref QGroupBoxVTable = nil): gen_qgroupbox_types.QGroupBox =
  let vtbl = if vtbl == nil: new QGroupBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGroupBoxVTable](fcQGroupBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGroupBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGroupBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGroupBox_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQGroupBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGroupBox_vtable_callback_event
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGroupBox_vtable_callback_childEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGroupBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQGroupBox_vtable_callback_paintEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGroupBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGroupBox_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGroupBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGroupBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGroupBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQGroupBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQGroupBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGroupBox_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQGroupBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQGroupBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQGroupBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGroupBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGroupBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGroupBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGroupBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGroupBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQGroupBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQGroupBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGroupBox_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGroupBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGroupBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQGroupBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQGroupBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGroupBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGroupBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGroupBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGroupBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGroupBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGroupBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQGroupBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQGroupBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQGroupBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQGroupBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQGroupBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGroupBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGroupBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGroupBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGroupBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGroupBox_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGroupBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGroupBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGroupBox_vtable_callback_disconnectNotify
  gen_qgroupbox_types.QGroupBox(h: fcQGroupBox_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    title: openArray[char],
    vtbl: ref QGroupBoxVTable = nil): gen_qgroupbox_types.QGroupBox =
  let vtbl = if vtbl == nil: new QGroupBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGroupBoxVTable](fcQGroupBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGroupBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGroupBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGroupBox_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQGroupBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGroupBox_vtable_callback_event
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGroupBox_vtable_callback_childEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGroupBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQGroupBox_vtable_callback_paintEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGroupBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGroupBox_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGroupBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGroupBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGroupBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQGroupBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQGroupBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGroupBox_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQGroupBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQGroupBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQGroupBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGroupBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGroupBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGroupBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGroupBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGroupBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQGroupBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQGroupBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGroupBox_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGroupBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGroupBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQGroupBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQGroupBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGroupBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGroupBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGroupBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGroupBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGroupBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGroupBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQGroupBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQGroupBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQGroupBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQGroupBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQGroupBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGroupBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGroupBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGroupBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGroupBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGroupBox_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGroupBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGroupBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGroupBox_vtable_callback_disconnectNotify
  gen_qgroupbox_types.QGroupBox(h: fcQGroupBox_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title)))), owned: true)

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    title: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QGroupBoxVTable = nil): gen_qgroupbox_types.QGroupBox =
  let vtbl = if vtbl == nil: new QGroupBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QGroupBoxVTable](fcQGroupBox_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQGroupBox_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQGroupBox_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQGroupBox_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQGroupBox_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQGroupBox_vtable_callback_event
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQGroupBox_vtable_callback_childEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQGroupBox_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQGroupBox_vtable_callback_paintEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQGroupBox_vtable_callback_focusInEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQGroupBox_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQGroupBox_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQGroupBox_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQGroupBox_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQGroupBox_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQGroupBox_vtable_callback_setVisible
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQGroupBox_vtable_callback_sizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQGroupBox_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQGroupBox_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQGroupBox_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQGroupBox_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQGroupBox_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQGroupBox_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQGroupBox_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQGroupBox_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQGroupBox_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQGroupBox_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQGroupBox_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQGroupBox_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQGroupBox_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQGroupBox_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQGroupBox_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQGroupBox_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQGroupBox_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQGroupBox_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQGroupBox_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQGroupBox_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQGroupBox_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQGroupBox_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQGroupBox_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQGroupBox_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQGroupBox_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQGroupBox_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQGroupBox_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQGroupBox_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQGroupBox_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQGroupBox_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQGroupBox_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQGroupBox_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQGroupBox_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQGroupBox_vtable_callback_disconnectNotify
  gen_qgroupbox_types.QGroupBox(h: fcQGroupBox_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), parent.h), owned: true)

const cQGroupBox_mvtbl = cQGroupBoxVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQGroupBox()[])](self.fcQGroupBox_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQGroupBox_method_callback_metaObject,
  metacast: cQGroupBox_method_callback_metacast,
  metacall: cQGroupBox_method_callback_metacall,
  minimumSizeHint: cQGroupBox_method_callback_minimumSizeHint,
  event: cQGroupBox_method_callback_event,
  childEvent: cQGroupBox_method_callback_childEvent,
  resizeEvent: cQGroupBox_method_callback_resizeEvent,
  paintEvent: cQGroupBox_method_callback_paintEvent,
  focusInEvent: cQGroupBox_method_callback_focusInEvent,
  changeEvent: cQGroupBox_method_callback_changeEvent,
  mousePressEvent: cQGroupBox_method_callback_mousePressEvent,
  mouseMoveEvent: cQGroupBox_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQGroupBox_method_callback_mouseReleaseEvent,
  devType: cQGroupBox_method_callback_devType,
  setVisible: cQGroupBox_method_callback_setVisible,
  sizeHint: cQGroupBox_method_callback_sizeHint,
  heightForWidth: cQGroupBox_method_callback_heightForWidth,
  hasHeightForWidth: cQGroupBox_method_callback_hasHeightForWidth,
  paintEngine: cQGroupBox_method_callback_paintEngine,
  mouseDoubleClickEvent: cQGroupBox_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQGroupBox_method_callback_wheelEvent,
  keyPressEvent: cQGroupBox_method_callback_keyPressEvent,
  keyReleaseEvent: cQGroupBox_method_callback_keyReleaseEvent,
  focusOutEvent: cQGroupBox_method_callback_focusOutEvent,
  enterEvent: cQGroupBox_method_callback_enterEvent,
  leaveEvent: cQGroupBox_method_callback_leaveEvent,
  moveEvent: cQGroupBox_method_callback_moveEvent,
  closeEvent: cQGroupBox_method_callback_closeEvent,
  contextMenuEvent: cQGroupBox_method_callback_contextMenuEvent,
  tabletEvent: cQGroupBox_method_callback_tabletEvent,
  actionEvent: cQGroupBox_method_callback_actionEvent,
  dragEnterEvent: cQGroupBox_method_callback_dragEnterEvent,
  dragMoveEvent: cQGroupBox_method_callback_dragMoveEvent,
  dragLeaveEvent: cQGroupBox_method_callback_dragLeaveEvent,
  dropEvent: cQGroupBox_method_callback_dropEvent,
  showEvent: cQGroupBox_method_callback_showEvent,
  hideEvent: cQGroupBox_method_callback_hideEvent,
  nativeEvent: cQGroupBox_method_callback_nativeEvent,
  metric: cQGroupBox_method_callback_metric,
  initPainter: cQGroupBox_method_callback_initPainter,
  redirected: cQGroupBox_method_callback_redirected,
  sharedPainter: cQGroupBox_method_callback_sharedPainter,
  inputMethodEvent: cQGroupBox_method_callback_inputMethodEvent,
  inputMethodQuery: cQGroupBox_method_callback_inputMethodQuery,
  focusNextPrevChild: cQGroupBox_method_callback_focusNextPrevChild,
  eventFilter: cQGroupBox_method_callback_eventFilter,
  timerEvent: cQGroupBox_method_callback_timerEvent,
  customEvent: cQGroupBox_method_callback_customEvent,
  connectNotify: cQGroupBox_method_callback_connectNotify,
  disconnectNotify: cQGroupBox_method_callback_disconnectNotify,
)
proc create*(T: type gen_qgroupbox_types.QGroupBox,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQGroupBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGroupBox_new(addr(cQGroupBox_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    inst: VirtualQGroupBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGroupBox_new2(addr(cQGroupBox_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    title: openArray[char],
    inst: VirtualQGroupBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGroupBox_new3(addr(cQGroupBox_mvtbl), addr(inst[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))
  inst[].owned = true

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    title: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQGroupBox) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQGroupBox_new4(addr(cQGroupBox_mvtbl), addr(inst[]), struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qgroupbox_types.QGroupBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGroupBox_staticMetaObject())
