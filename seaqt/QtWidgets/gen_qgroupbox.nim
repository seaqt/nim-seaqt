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

proc fcQGroupBox_metaObject(self: pointer, ): pointer {.importc: "QGroupBox_metaObject".}
proc fcQGroupBox_metacast(self: pointer, param1: cstring): pointer {.importc: "QGroupBox_metacast".}
proc fcQGroupBox_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGroupBox_metacall".}
proc fcQGroupBox_tr(s: cstring): struct_miqt_string {.importc: "QGroupBox_tr".}
proc fcQGroupBox_trUtf8(s: cstring): struct_miqt_string {.importc: "QGroupBox_trUtf8".}
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
proc fcQGroupBox_connect_clicked(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGroupBox_connect_clicked".}
proc fcQGroupBox_toggled(self: pointer, param1: bool): void {.importc: "QGroupBox_toggled".}
proc fcQGroupBox_connect_toggled(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGroupBox_connect_toggled".}
proc fcQGroupBox_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGroupBox_tr2".}
proc fcQGroupBox_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGroupBox_tr3".}
proc fcQGroupBox_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGroupBox_trUtf82".}
proc fcQGroupBox_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGroupBox_trUtf83".}
proc fcQGroupBox_clicked1(self: pointer, checked: bool): void {.importc: "QGroupBox_clicked1".}
proc fcQGroupBox_connect_clicked1(self: pointer, slot: int, callback: proc (slot: int, checked: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QGroupBox_connect_clicked1".}
type cQGroupBoxVTable = object
  destructor*: proc(vtbl: ptr cQGroupBoxVTable, self: ptr cQGroupBox) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQGroupBox_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QGroupBox_virtualbase_metaObject".}
proc fcQGroupBox_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QGroupBox_virtualbase_metacast".}
proc fcQGroupBox_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGroupBox_virtualbase_metacall".}
proc fcQGroupBox_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QGroupBox_virtualbase_minimumSizeHint".}
proc fcQGroupBox_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QGroupBox_virtualbase_event".}
proc fcQGroupBox_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_childEvent".}
proc fcQGroupBox_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_resizeEvent".}
proc fcQGroupBox_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_paintEvent".}
proc fcQGroupBox_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_focusInEvent".}
proc fcQGroupBox_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_changeEvent".}
proc fcQGroupBox_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_mousePressEvent".}
proc fcQGroupBox_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_mouseMoveEvent".}
proc fcQGroupBox_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_mouseReleaseEvent".}
proc fcQGroupBox_virtualbase_devType(self: pointer, ): cint {.importc: "QGroupBox_virtualbase_devType".}
proc fcQGroupBox_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QGroupBox_virtualbase_setVisible".}
proc fcQGroupBox_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QGroupBox_virtualbase_sizeHint".}
proc fcQGroupBox_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QGroupBox_virtualbase_heightForWidth".}
proc fcQGroupBox_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QGroupBox_virtualbase_hasHeightForWidth".}
proc fcQGroupBox_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QGroupBox_virtualbase_paintEngine".}
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
proc fcQGroupBox_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QGroupBox_virtualbase_sharedPainter".}
proc fcQGroupBox_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QGroupBox_virtualbase_inputMethodEvent".}
proc fcQGroupBox_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QGroupBox_virtualbase_inputMethodQuery".}
proc fcQGroupBox_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QGroupBox_virtualbase_focusNextPrevChild".}
proc fcQGroupBox_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QGroupBox_virtualbase_eventFilter".}
proc fcQGroupBox_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_timerEvent".}
proc fcQGroupBox_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QGroupBox_virtualbase_customEvent".}
proc fcQGroupBox_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QGroupBox_virtualbase_connectNotify".}
proc fcQGroupBox_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QGroupBox_virtualbase_disconnectNotify".}
proc fcQGroupBox_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QGroupBox_protectedbase_initStyleOption".}
proc fcQGroupBox_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QGroupBox_protectedbase_updateMicroFocus".}
proc fcQGroupBox_protectedbase_create(self: pointer, ): void {.importc: "QGroupBox_protectedbase_create".}
proc fcQGroupBox_protectedbase_destroy(self: pointer, ): void {.importc: "QGroupBox_protectedbase_destroy".}
proc fcQGroupBox_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QGroupBox_protectedbase_focusNextChild".}
proc fcQGroupBox_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QGroupBox_protectedbase_focusPreviousChild".}
proc fcQGroupBox_protectedbase_sender(self: pointer, ): pointer {.importc: "QGroupBox_protectedbase_sender".}
proc fcQGroupBox_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QGroupBox_protectedbase_senderSignalIndex".}
proc fcQGroupBox_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QGroupBox_protectedbase_receivers".}
proc fcQGroupBox_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QGroupBox_protectedbase_isSignalConnected".}
proc fcQGroupBox_new(vtbl: pointer, parent: pointer): ptr cQGroupBox {.importc: "QGroupBox_new".}
proc fcQGroupBox_new2(vtbl: pointer, ): ptr cQGroupBox {.importc: "QGroupBox_new2".}
proc fcQGroupBox_new3(vtbl: pointer, title: struct_miqt_string): ptr cQGroupBox {.importc: "QGroupBox_new3".}
proc fcQGroupBox_new4(vtbl: pointer, title: struct_miqt_string, parent: pointer): ptr cQGroupBox {.importc: "QGroupBox_new4".}
proc fcQGroupBox_staticMetaObject(): pointer {.importc: "QGroupBox_staticMetaObject".}
proc fcQGroupBox_delete(self: pointer) {.importc: "QGroupBox_delete".}

proc metaObject*(self: gen_qgroupbox_types.QGroupBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGroupBox_metaObject(self.h))

proc metacast*(self: gen_qgroupbox_types.QGroupBox, param1: cstring): pointer =
  fcQGroupBox_metacast(self.h, param1)

proc metacall*(self: gen_qgroupbox_types.QGroupBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQGroupBox_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qgroupbox_types.QGroupBox, s: cstring): string =
  let v_ms = fcQGroupBox_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgroupbox_types.QGroupBox, s: cstring): string =
  let v_ms = fcQGroupBox_trUtf8(s)
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
proc miqt_exec_callback_cQGroupBox_clicked(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QGroupBoxclickedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQGroupBox_clicked_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGroupBoxclickedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxclickedSlot) =
  var tmp = new QGroupBoxclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_clicked(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGroupBox_clicked, miqt_exec_callback_cQGroupBox_clicked_release)

proc toggled*(self: gen_qgroupbox_types.QGroupBox, param1: bool): void =
  fcQGroupBox_toggled(self.h, param1)

type QGroupBoxtoggledSlot* = proc(param1: bool)
proc miqt_exec_callback_cQGroupBox_toggled(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QGroupBoxtoggledSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGroupBox_toggled_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGroupBoxtoggledSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ontoggled*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxtoggledSlot) =
  var tmp = new QGroupBoxtoggledSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_toggled(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGroupBox_toggled, miqt_exec_callback_cQGroupBox_toggled_release)

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

proc trUtf8*(_: type gen_qgroupbox_types.QGroupBox, s: cstring, c: cstring): string =
  let v_ms = fcQGroupBox_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qgroupbox_types.QGroupBox, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQGroupBox_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clicked*(self: gen_qgroupbox_types.QGroupBox, checked: bool): void =
  fcQGroupBox_clicked1(self.h, checked)

type QGroupBoxclicked1Slot* = proc(checked: bool)
proc miqt_exec_callback_cQGroupBox_clicked1(slot: int, checked: bool) {.cdecl.} =
  let nimfunc = cast[ptr QGroupBoxclicked1Slot](cast[pointer](slot))
  let slotval1 = checked

  nimfunc[](slotval1)

proc miqt_exec_callback_cQGroupBox_clicked1_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QGroupBoxclicked1Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclicked*(self: gen_qgroupbox_types.QGroupBox, slot: QGroupBoxclicked1Slot) =
  var tmp = new QGroupBoxclicked1Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQGroupBox_connect_clicked1(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQGroupBox_clicked1, miqt_exec_callback_cQGroupBox_clicked1_release)

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
type QGroupBoxnativeEventProc* = proc(self: QGroupBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
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
type QGroupBoxVTable* = object
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
proc QGroupBoxmetaObject*(self: gen_qgroupbox_types.QGroupBox, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGroupBox_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQGroupBox_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QGroupBoxmetacast*(self: gen_qgroupbox_types.QGroupBox, param1: cstring): pointer =
  fcQGroupBox_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQGroupBox_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QGroupBoxmetacall*(self: gen_qgroupbox_types.QGroupBox, param1: cint, param2: cint, param3: pointer): cint =
  fcQGroupBox_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQGroupBox_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGroupBoxminimumSizeHint*(self: gen_qgroupbox_types.QGroupBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGroupBox_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQGroupBox_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QGroupBoxevent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): bool =
  fcQGroupBox_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QGroupBoxchildEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QChildEvent): void =
  fcQGroupBox_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QGroupBoxresizeEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QResizeEvent): void =
  fcQGroupBox_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QGroupBoxpaintEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QPaintEvent): void =
  fcQGroupBox_virtualbase_paintEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_paintEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)
  vtbl[].paintEvent(self, slotval1)

proc QGroupBoxfocusInEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QFocusEvent): void =
  fcQGroupBox_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QGroupBoxchangeEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fcQGroupBox_virtualbase_changeEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_changeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].changeEvent(self, slotval1)

proc QGroupBoxmousePressEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fcQGroupBox_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QGroupBoxmouseMoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fcQGroupBox_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QGroupBoxmouseReleaseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fcQGroupBox_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QGroupBoxdevType*(self: gen_qgroupbox_types.QGroupBox, ): cint =
  fcQGroupBox_virtualbase_devType(self.h)

proc miqt_exec_callback_cQGroupBox_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QGroupBoxsetVisible*(self: gen_qgroupbox_types.QGroupBox, visible: bool): void =
  fcQGroupBox_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQGroupBox_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QGroupBoxsizeHint*(self: gen_qgroupbox_types.QGroupBox, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQGroupBox_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQGroupBox_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QGroupBoxheightForWidth*(self: gen_qgroupbox_types.QGroupBox, param1: cint): cint =
  fcQGroupBox_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQGroupBox_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QGroupBoxhasHeightForWidth*(self: gen_qgroupbox_types.QGroupBox, ): bool =
  fcQGroupBox_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQGroupBox_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QGroupBoxpaintEngine*(self: gen_qgroupbox_types.QGroupBox, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQGroupBox_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQGroupBox_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QGroupBoxmouseDoubleClickEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMouseEvent): void =
  fcQGroupBox_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QGroupBoxwheelEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QWheelEvent): void =
  fcQGroupBox_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QGroupBoxkeyPressEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QKeyEvent): void =
  fcQGroupBox_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QGroupBoxkeyReleaseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QKeyEvent): void =
  fcQGroupBox_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QGroupBoxfocusOutEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QFocusEvent): void =
  fcQGroupBox_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QGroupBoxenterEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fcQGroupBox_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QGroupBoxleaveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fcQGroupBox_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QGroupBoxmoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QMoveEvent): void =
  fcQGroupBox_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QGroupBoxcloseEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QCloseEvent): void =
  fcQGroupBox_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QGroupBoxcontextMenuEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QContextMenuEvent): void =
  fcQGroupBox_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QGroupBoxtabletEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QTabletEvent): void =
  fcQGroupBox_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QGroupBoxactionEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QActionEvent): void =
  fcQGroupBox_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QGroupBoxdragEnterEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragEnterEvent): void =
  fcQGroupBox_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QGroupBoxdragMoveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragMoveEvent): void =
  fcQGroupBox_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QGroupBoxdragLeaveEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQGroupBox_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QGroupBoxdropEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QDropEvent): void =
  fcQGroupBox_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QGroupBoxshowEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QShowEvent): void =
  fcQGroupBox_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QGroupBoxhideEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qevent_types.QHideEvent): void =
  fcQGroupBox_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QGroupBoxnativeEvent*(self: gen_qgroupbox_types.QGroupBox, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQGroupBox_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQGroupBox_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QGroupBoxmetric*(self: gen_qgroupbox_types.QGroupBox, param1: cint): cint =
  fcQGroupBox_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQGroupBox_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QGroupBoxinitPainter*(self: gen_qgroupbox_types.QGroupBox, painter: gen_qpainter_types.QPainter): void =
  fcQGroupBox_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQGroupBox_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QGroupBoxredirected*(self: gen_qgroupbox_types.QGroupBox, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQGroupBox_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQGroupBox_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QGroupBoxsharedPainter*(self: gen_qgroupbox_types.QGroupBox, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQGroupBox_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQGroupBox_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QGroupBoxinputMethodEvent*(self: gen_qgroupbox_types.QGroupBox, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQGroupBox_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQGroupBox_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QGroupBoxinputMethodQuery*(self: gen_qgroupbox_types.QGroupBox, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQGroupBox_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQGroupBox_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QGroupBoxfocusNextPrevChild*(self: gen_qgroupbox_types.QGroupBox, next: bool): bool =
  fcQGroupBox_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQGroupBox_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QGroupBoxeventFilter*(self: gen_qgroupbox_types.QGroupBox, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQGroupBox_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQGroupBox_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QGroupBoxtimerEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQGroupBox_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QGroupBoxcustomEvent*(self: gen_qgroupbox_types.QGroupBox, event: gen_qcoreevent_types.QEvent): void =
  fcQGroupBox_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQGroupBox_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QGroupBoxconnectNotify*(self: gen_qgroupbox_types.QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGroupBox_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGroupBox_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QGroupBoxdisconnectNotify*(self: gen_qgroupbox_types.QGroupBox, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQGroupBox_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQGroupBox_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QGroupBoxVTable](vtbl)
  let self = QGroupBox(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc initStyleOption*(self: gen_qgroupbox_types.QGroupBox, option: gen_qstyleoption_types.QStyleOptionGroupBox): void =
  fcQGroupBox_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qgroupbox_types.QGroupBox, ): void =
  fcQGroupBox_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qgroupbox_types.QGroupBox, ): void =
  fcQGroupBox_protectedbase_create(self.h)

proc destroy*(self: gen_qgroupbox_types.QGroupBox, ): void =
  fcQGroupBox_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qgroupbox_types.QGroupBox, ): bool =
  fcQGroupBox_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qgroupbox_types.QGroupBox, ): bool =
  fcQGroupBox_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qgroupbox_types.QGroupBox, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGroupBox_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qgroupbox_types.QGroupBox, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGroupBoxVTable, _: ptr cQGroupBox) {.cdecl.} =
    let vtbl = cast[ref QGroupBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGroupBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGroupBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGroupBox_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQGroupBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGroupBox_event
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGroupBox_childEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGroupBox_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQGroupBox_paintEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGroupBox_focusInEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGroupBox_changeEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGroupBox_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGroupBox_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGroupBox_mouseReleaseEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQGroupBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQGroupBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGroupBox_sizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQGroupBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQGroupBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQGroupBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGroupBox_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGroupBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGroupBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGroupBox_keyReleaseEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGroupBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQGroupBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQGroupBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGroupBox_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGroupBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGroupBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQGroupBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQGroupBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGroupBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGroupBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGroupBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGroupBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGroupBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGroupBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQGroupBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQGroupBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQGroupBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQGroupBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQGroupBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGroupBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGroupBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGroupBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGroupBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGroupBox_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGroupBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGroupBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGroupBox_disconnectNotify
  gen_qgroupbox_types.QGroupBox(h: fcQGroupBox_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    vtbl: ref QGroupBoxVTable = nil): gen_qgroupbox_types.QGroupBox =
  let vtbl = if vtbl == nil: new QGroupBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGroupBoxVTable, _: ptr cQGroupBox) {.cdecl.} =
    let vtbl = cast[ref QGroupBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGroupBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGroupBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGroupBox_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQGroupBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGroupBox_event
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGroupBox_childEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGroupBox_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQGroupBox_paintEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGroupBox_focusInEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGroupBox_changeEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGroupBox_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGroupBox_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGroupBox_mouseReleaseEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQGroupBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQGroupBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGroupBox_sizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQGroupBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQGroupBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQGroupBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGroupBox_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGroupBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGroupBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGroupBox_keyReleaseEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGroupBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQGroupBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQGroupBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGroupBox_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGroupBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGroupBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQGroupBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQGroupBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGroupBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGroupBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGroupBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGroupBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGroupBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGroupBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQGroupBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQGroupBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQGroupBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQGroupBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQGroupBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGroupBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGroupBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGroupBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGroupBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGroupBox_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGroupBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGroupBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGroupBox_disconnectNotify
  gen_qgroupbox_types.QGroupBox(h: fcQGroupBox_new2(addr(vtbl[]), ))

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    title: string,
    vtbl: ref QGroupBoxVTable = nil): gen_qgroupbox_types.QGroupBox =
  let vtbl = if vtbl == nil: new QGroupBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGroupBoxVTable, _: ptr cQGroupBox) {.cdecl.} =
    let vtbl = cast[ref QGroupBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGroupBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGroupBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGroupBox_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQGroupBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGroupBox_event
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGroupBox_childEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGroupBox_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQGroupBox_paintEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGroupBox_focusInEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGroupBox_changeEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGroupBox_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGroupBox_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGroupBox_mouseReleaseEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQGroupBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQGroupBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGroupBox_sizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQGroupBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQGroupBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQGroupBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGroupBox_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGroupBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGroupBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGroupBox_keyReleaseEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGroupBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQGroupBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQGroupBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGroupBox_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGroupBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGroupBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQGroupBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQGroupBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGroupBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGroupBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGroupBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGroupBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGroupBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGroupBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQGroupBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQGroupBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQGroupBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQGroupBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQGroupBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGroupBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGroupBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGroupBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGroupBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGroupBox_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGroupBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGroupBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGroupBox_disconnectNotify
  gen_qgroupbox_types.QGroupBox(h: fcQGroupBox_new3(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title)))))

proc create*(T: type gen_qgroupbox_types.QGroupBox,
    title: string, parent: gen_qwidget_types.QWidget,
    vtbl: ref QGroupBoxVTable = nil): gen_qgroupbox_types.QGroupBox =
  let vtbl = if vtbl == nil: new QGroupBoxVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQGroupBoxVTable, _: ptr cQGroupBox) {.cdecl.} =
    let vtbl = cast[ref QGroupBoxVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQGroupBox_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQGroupBox_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQGroupBox_metacall
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQGroupBox_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQGroupBox_event
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQGroupBox_childEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQGroupBox_resizeEvent
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQGroupBox_paintEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQGroupBox_focusInEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQGroupBox_changeEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQGroupBox_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQGroupBox_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQGroupBox_mouseReleaseEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQGroupBox_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQGroupBox_setVisible
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQGroupBox_sizeHint
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQGroupBox_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQGroupBox_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQGroupBox_paintEngine
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQGroupBox_mouseDoubleClickEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQGroupBox_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQGroupBox_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQGroupBox_keyReleaseEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQGroupBox_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQGroupBox_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQGroupBox_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQGroupBox_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQGroupBox_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQGroupBox_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQGroupBox_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQGroupBox_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQGroupBox_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQGroupBox_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQGroupBox_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQGroupBox_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQGroupBox_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQGroupBox_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQGroupBox_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQGroupBox_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQGroupBox_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQGroupBox_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQGroupBox_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQGroupBox_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQGroupBox_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQGroupBox_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQGroupBox_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQGroupBox_timerEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQGroupBox_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQGroupBox_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQGroupBox_disconnectNotify
  gen_qgroupbox_types.QGroupBox(h: fcQGroupBox_new4(addr(vtbl[]), struct_miqt_string(data: title, len: csize_t(len(title))), parent.h))

proc staticMetaObject*(_: type gen_qgroupbox_types.QGroupBox): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQGroupBox_staticMetaObject())
proc delete*(self: gen_qgroupbox_types.QGroupBox) =
  fcQGroupBox_delete(self.h)
