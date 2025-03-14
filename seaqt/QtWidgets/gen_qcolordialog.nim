import ./qtwidgets_pkg

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


{.compile("gen_qcolordialog.cpp", QtWidgetsCFlags).}


type QColorDialogColorDialogOptionEnum* = distinct cint
template ShowAlphaChannel*(_: type QColorDialogColorDialogOptionEnum): untyped = 1
template NoButtons*(_: type QColorDialogColorDialogOptionEnum): untyped = 2
template DontUseNativeDialog*(_: type QColorDialogColorDialogOptionEnum): untyped = 4


import ./gen_qcolordialog_types
export gen_qcolordialog_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qdialog,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qcolor_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qdialog,
  gen_qwidget_types

type cQColorDialog*{.exportc: "QColorDialog", incompleteStruct.} = object

proc fcQColorDialog_metaObject(self: pointer): pointer {.importc: "QColorDialog_metaObject".}
proc fcQColorDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QColorDialog_metacast".}
proc fcQColorDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColorDialog_metacall".}
proc fcQColorDialog_tr(s: cstring): struct_miqt_string {.importc: "QColorDialog_tr".}
proc fcQColorDialog_setCurrentColor(self: pointer, color: pointer): void {.importc: "QColorDialog_setCurrentColor".}
proc fcQColorDialog_currentColor(self: pointer): pointer {.importc: "QColorDialog_currentColor".}
proc fcQColorDialog_selectedColor(self: pointer): pointer {.importc: "QColorDialog_selectedColor".}
proc fcQColorDialog_setOption(self: pointer, option: cint): void {.importc: "QColorDialog_setOption".}
proc fcQColorDialog_testOption(self: pointer, option: cint): bool {.importc: "QColorDialog_testOption".}
proc fcQColorDialog_setOptions(self: pointer, options: cint): void {.importc: "QColorDialog_setOptions".}
proc fcQColorDialog_options(self: pointer): cint {.importc: "QColorDialog_options".}
proc fcQColorDialog_setVisible(self: pointer, visible: bool): void {.importc: "QColorDialog_setVisible".}
proc fcQColorDialog_getColor(): pointer {.importc: "QColorDialog_getColor".}
proc fcQColorDialog_customCount(): cint {.importc: "QColorDialog_customCount".}
proc fcQColorDialog_customColor(index: cint): pointer {.importc: "QColorDialog_customColor".}
proc fcQColorDialog_setCustomColor(index: cint, color: pointer): void {.importc: "QColorDialog_setCustomColor".}
proc fcQColorDialog_standardColor(index: cint): pointer {.importc: "QColorDialog_standardColor".}
proc fcQColorDialog_setStandardColor(index: cint, color: pointer): void {.importc: "QColorDialog_setStandardColor".}
proc fcQColorDialog_currentColorChanged(self: pointer, color: pointer): void {.importc: "QColorDialog_currentColorChanged".}
proc fcQColorDialog_connect_currentColorChanged(self: pointer, slot: int, callback: proc (slot: int, color: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QColorDialog_connect_currentColorChanged".}
proc fcQColorDialog_colorSelected(self: pointer, color: pointer): void {.importc: "QColorDialog_colorSelected".}
proc fcQColorDialog_connect_colorSelected(self: pointer, slot: int, callback: proc (slot: int, color: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QColorDialog_connect_colorSelected".}
proc fcQColorDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QColorDialog_tr2".}
proc fcQColorDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColorDialog_tr3".}
proc fcQColorDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QColorDialog_setOption2".}
proc fcQColorDialog_getColor1(initial: pointer): pointer {.importc: "QColorDialog_getColor1".}
proc fcQColorDialog_getColor2(initial: pointer, parent: pointer): pointer {.importc: "QColorDialog_getColor2".}
proc fcQColorDialog_getColor3(initial: pointer, parent: pointer, title: struct_miqt_string): pointer {.importc: "QColorDialog_getColor3".}
proc fcQColorDialog_getColor4(initial: pointer, parent: pointer, title: struct_miqt_string, options: cint): pointer {.importc: "QColorDialog_getColor4".}
proc fcQColorDialog_vtbl(self: pointer): pointer {.importc: "QColorDialog_vtbl".}
proc fcQColorDialog_vdata(self: pointer): pointer {.importc: "QColorDialog_vdata".}
type cQColorDialogVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  done*: proc(self: pointer, resultVal: cint): void {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  exec*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  accept*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  reject*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(self: pointer, param1: cint): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQColorDialog_virtualbase_metaObject(self: pointer): pointer {.importc: "QColorDialog_virtualbase_metaObject".}
proc fcQColorDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QColorDialog_virtualbase_metacast".}
proc fcQColorDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColorDialog_virtualbase_metacall".}
proc fcQColorDialog_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QColorDialog_virtualbase_setVisible".}
proc fcQColorDialog_virtualbase_changeEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_changeEvent".}
proc fcQColorDialog_virtualbase_done(self: pointer, resultVal: cint): void {.importc: "QColorDialog_virtualbase_done".}
proc fcQColorDialog_virtualbase_sizeHint(self: pointer): pointer {.importc: "QColorDialog_virtualbase_sizeHint".}
proc fcQColorDialog_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QColorDialog_virtualbase_minimumSizeHint".}
proc fcQColorDialog_virtualbase_open(self: pointer): void {.importc: "QColorDialog_virtualbase_open".}
proc fcQColorDialog_virtualbase_exec(self: pointer): cint {.importc: "QColorDialog_virtualbase_exec".}
proc fcQColorDialog_virtualbase_accept(self: pointer): void {.importc: "QColorDialog_virtualbase_accept".}
proc fcQColorDialog_virtualbase_reject(self: pointer): void {.importc: "QColorDialog_virtualbase_reject".}
proc fcQColorDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_keyPressEvent".}
proc fcQColorDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_closeEvent".}
proc fcQColorDialog_virtualbase_showEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_showEvent".}
proc fcQColorDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_resizeEvent".}
proc fcQColorDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_contextMenuEvent".}
proc fcQColorDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QColorDialog_virtualbase_eventFilter".}
proc fcQColorDialog_virtualbase_devType(self: pointer): cint {.importc: "QColorDialog_virtualbase_devType".}
proc fcQColorDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QColorDialog_virtualbase_heightForWidth".}
proc fcQColorDialog_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QColorDialog_virtualbase_hasHeightForWidth".}
proc fcQColorDialog_virtualbase_paintEngine(self: pointer): pointer {.importc: "QColorDialog_virtualbase_paintEngine".}
proc fcQColorDialog_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QColorDialog_virtualbase_event".}
proc fcQColorDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_mousePressEvent".}
proc fcQColorDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_mouseReleaseEvent".}
proc fcQColorDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQColorDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_mouseMoveEvent".}
proc fcQColorDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_wheelEvent".}
proc fcQColorDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_keyReleaseEvent".}
proc fcQColorDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_focusInEvent".}
proc fcQColorDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_focusOutEvent".}
proc fcQColorDialog_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_enterEvent".}
proc fcQColorDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_leaveEvent".}
proc fcQColorDialog_virtualbase_paintEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_paintEvent".}
proc fcQColorDialog_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_moveEvent".}
proc fcQColorDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_tabletEvent".}
proc fcQColorDialog_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_actionEvent".}
proc fcQColorDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_dragEnterEvent".}
proc fcQColorDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_dragMoveEvent".}
proc fcQColorDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_dragLeaveEvent".}
proc fcQColorDialog_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_dropEvent".}
proc fcQColorDialog_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_hideEvent".}
proc fcQColorDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QColorDialog_virtualbase_nativeEvent".}
proc fcQColorDialog_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QColorDialog_virtualbase_metric".}
proc fcQColorDialog_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QColorDialog_virtualbase_initPainter".}
proc fcQColorDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QColorDialog_virtualbase_redirected".}
proc fcQColorDialog_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QColorDialog_virtualbase_sharedPainter".}
proc fcQColorDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QColorDialog_virtualbase_inputMethodEvent".}
proc fcQColorDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QColorDialog_virtualbase_inputMethodQuery".}
proc fcQColorDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QColorDialog_virtualbase_focusNextPrevChild".}
proc fcQColorDialog_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_timerEvent".}
proc fcQColorDialog_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_childEvent".}
proc fcQColorDialog_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QColorDialog_virtualbase_customEvent".}
proc fcQColorDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QColorDialog_virtualbase_connectNotify".}
proc fcQColorDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QColorDialog_virtualbase_disconnectNotify".}
proc fcQColorDialog_protectedbase_adjustPosition(self: pointer, param1: pointer): void {.importc: "QColorDialog_protectedbase_adjustPosition".}
proc fcQColorDialog_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QColorDialog_protectedbase_updateMicroFocus".}
proc fcQColorDialog_protectedbase_create(self: pointer): void {.importc: "QColorDialog_protectedbase_create".}
proc fcQColorDialog_protectedbase_destroy(self: pointer): void {.importc: "QColorDialog_protectedbase_destroy".}
proc fcQColorDialog_protectedbase_focusNextChild(self: pointer): bool {.importc: "QColorDialog_protectedbase_focusNextChild".}
proc fcQColorDialog_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QColorDialog_protectedbase_focusPreviousChild".}
proc fcQColorDialog_protectedbase_sender(self: pointer): pointer {.importc: "QColorDialog_protectedbase_sender".}
proc fcQColorDialog_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QColorDialog_protectedbase_senderSignalIndex".}
proc fcQColorDialog_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QColorDialog_protectedbase_receivers".}
proc fcQColorDialog_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QColorDialog_protectedbase_isSignalConnected".}
proc fcQColorDialog_new(vtbl, vdata: pointer, parent: pointer): ptr cQColorDialog {.importc: "QColorDialog_new".}
proc fcQColorDialog_new2(vtbl, vdata: pointer): ptr cQColorDialog {.importc: "QColorDialog_new2".}
proc fcQColorDialog_new3(vtbl, vdata: pointer, initial: pointer): ptr cQColorDialog {.importc: "QColorDialog_new3".}
proc fcQColorDialog_new4(vtbl, vdata: pointer, initial: pointer, parent: pointer): ptr cQColorDialog {.importc: "QColorDialog_new4".}
proc fcQColorDialog_staticMetaObject(): pointer {.importc: "QColorDialog_staticMetaObject".}

proc metaObject*(self: gen_qcolordialog_types.QColorDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorDialog_metaObject(self.h), owned: false)

proc metacast*(self: gen_qcolordialog_types.QColorDialog, param1: cstring): pointer =
  fcQColorDialog_metacast(self.h, param1)

proc metacall*(self: gen_qcolordialog_types.QColorDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQColorDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring): string =
  let v_ms = fcQColorDialog_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setCurrentColor*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setCurrentColor(self.h, color.h)

proc currentColor*(self: gen_qcolordialog_types.QColorDialog): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_currentColor(self.h), owned: true)

proc selectedColor*(self: gen_qcolordialog_types.QColorDialog): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_selectedColor(self.h), owned: true)

proc setOption*(self: gen_qcolordialog_types.QColorDialog, option: cint): void =
  fcQColorDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qcolordialog_types.QColorDialog, option: cint): bool =
  fcQColorDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qcolordialog_types.QColorDialog, options: cint): void =
  fcQColorDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qcolordialog_types.QColorDialog): cint =
  cint(fcQColorDialog_options(self.h))

proc setVisible*(self: gen_qcolordialog_types.QColorDialog, visible: bool): void =
  fcQColorDialog_setVisible(self.h, visible)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor(), owned: true)

proc customCount*(_: type gen_qcolordialog_types.QColorDialog): cint =
  fcQColorDialog_customCount()

proc customColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_customColor(index), owned: true)

proc setCustomColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setCustomColor(index, color.h)

proc standardColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_standardColor(index), owned: true)

proc setStandardColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setStandardColor(index, color.h)

proc currentColorChanged*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_currentColorChanged(self.h, color.h)

type QColorDialogcurrentColorChangedSlot* = proc(color: gen_qcolor_types.QColor)
proc cQColorDialog_slot_callback_currentColorChanged(slot: int, color: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QColorDialogcurrentColorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color, owned: false)

  nimfunc[](slotval1)

proc cQColorDialog_slot_callback_currentColorChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QColorDialogcurrentColorChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncurrentColorChanged*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcurrentColorChangedSlot) =
  var tmp = new QColorDialogcurrentColorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_connect_currentColorChanged(self.h, cast[int](addr tmp[]), cQColorDialog_slot_callback_currentColorChanged, cQColorDialog_slot_callback_currentColorChanged_release)

proc colorSelected*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_colorSelected(self.h, color.h)

type QColorDialogcolorSelectedSlot* = proc(color: gen_qcolor_types.QColor)
proc cQColorDialog_slot_callback_colorSelected(slot: int, color: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QColorDialogcolorSelectedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color, owned: false)

  nimfunc[](slotval1)

proc cQColorDialog_slot_callback_colorSelected_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QColorDialogcolorSelectedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oncolorSelected*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcolorSelectedSlot) =
  var tmp = new QColorDialogcolorSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_connect_colorSelected(self.h, cast[int](addr tmp[]), cQColorDialog_slot_callback_colorSelected, cQColorDialog_slot_callback_colorSelected_release)

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring): string =
  let v_ms = fcQColorDialog_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQColorDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qcolordialog_types.QColorDialog, option: cint, on: bool): void =
  fcQColorDialog_setOption2(self.h, cint(option), on)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor1(initial.h), owned: true)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor2(initial.h, parent.h), owned: true)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget, title: openArray[char]): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor3(initial.h, parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title)))), owned: true)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget, title: openArray[char], options: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor4(initial.h, parent.h, struct_miqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))), cint(options)), owned: true)

type QColorDialogmetaObjectProc* = proc(self: QColorDialog): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QColorDialogmetacastProc* = proc(self: QColorDialog, param1: cstring): pointer {.raises: [], gcsafe.}
type QColorDialogmetacallProc* = proc(self: QColorDialog, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QColorDialogsetVisibleProc* = proc(self: QColorDialog, visible: bool): void {.raises: [], gcsafe.}
type QColorDialogchangeEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColorDialogdoneProc* = proc(self: QColorDialog, resultVal: cint): void {.raises: [], gcsafe.}
type QColorDialogsizeHintProc* = proc(self: QColorDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QColorDialogminimumSizeHintProc* = proc(self: QColorDialog): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QColorDialogopenProc* = proc(self: QColorDialog): void {.raises: [], gcsafe.}
type QColorDialogexecProc* = proc(self: QColorDialog): cint {.raises: [], gcsafe.}
type QColorDialogacceptProc* = proc(self: QColorDialog): void {.raises: [], gcsafe.}
type QColorDialogrejectProc* = proc(self: QColorDialog): void {.raises: [], gcsafe.}
type QColorDialogkeyPressEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QColorDialogcloseEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QColorDialogshowEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QColorDialogresizeEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QColorDialogcontextMenuEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QColorDialogeventFilterProc* = proc(self: QColorDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QColorDialogdevTypeProc* = proc(self: QColorDialog): cint {.raises: [], gcsafe.}
type QColorDialogheightForWidthProc* = proc(self: QColorDialog, param1: cint): cint {.raises: [], gcsafe.}
type QColorDialoghasHeightForWidthProc* = proc(self: QColorDialog): bool {.raises: [], gcsafe.}
type QColorDialogpaintEngineProc* = proc(self: QColorDialog): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QColorDialogeventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QColorDialogmousePressEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColorDialogmouseReleaseEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColorDialogmouseDoubleClickEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColorDialogmouseMoveEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QColorDialogwheelEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QColorDialogkeyReleaseEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QColorDialogfocusInEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QColorDialogfocusOutEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QColorDialogenterEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
type QColorDialogleaveEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColorDialogpaintEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QColorDialogmoveEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QColorDialogtabletEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QColorDialogactionEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QColorDialogdragEnterEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QColorDialogdragMoveEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QColorDialogdragLeaveEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QColorDialogdropEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QColorDialoghideEventProc* = proc(self: QColorDialog, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QColorDialognativeEventProc* = proc(self: QColorDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
type QColorDialogmetricProc* = proc(self: QColorDialog, param1: cint): cint {.raises: [], gcsafe.}
type QColorDialoginitPainterProc* = proc(self: QColorDialog, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QColorDialogredirectedProc* = proc(self: QColorDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QColorDialogsharedPainterProc* = proc(self: QColorDialog): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QColorDialoginputMethodEventProc* = proc(self: QColorDialog, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QColorDialoginputMethodQueryProc* = proc(self: QColorDialog, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QColorDialogfocusNextPrevChildProc* = proc(self: QColorDialog, next: bool): bool {.raises: [], gcsafe.}
type QColorDialogtimerEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QColorDialogchildEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QColorDialogcustomEventProc* = proc(self: QColorDialog, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QColorDialogconnectNotifyProc* = proc(self: QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QColorDialogdisconnectNotifyProc* = proc(self: QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QColorDialogVTable* {.inheritable, pure.} = object
  vtbl: cQColorDialogVTable
  metaObject*: QColorDialogmetaObjectProc
  metacast*: QColorDialogmetacastProc
  metacall*: QColorDialogmetacallProc
  setVisible*: QColorDialogsetVisibleProc
  changeEvent*: QColorDialogchangeEventProc
  done*: QColorDialogdoneProc
  sizeHint*: QColorDialogsizeHintProc
  minimumSizeHint*: QColorDialogminimumSizeHintProc
  open*: QColorDialogopenProc
  exec*: QColorDialogexecProc
  accept*: QColorDialogacceptProc
  reject*: QColorDialogrejectProc
  keyPressEvent*: QColorDialogkeyPressEventProc
  closeEvent*: QColorDialogcloseEventProc
  showEvent*: QColorDialogshowEventProc
  resizeEvent*: QColorDialogresizeEventProc
  contextMenuEvent*: QColorDialogcontextMenuEventProc
  eventFilter*: QColorDialogeventFilterProc
  devType*: QColorDialogdevTypeProc
  heightForWidth*: QColorDialogheightForWidthProc
  hasHeightForWidth*: QColorDialoghasHeightForWidthProc
  paintEngine*: QColorDialogpaintEngineProc
  event*: QColorDialogeventProc
  mousePressEvent*: QColorDialogmousePressEventProc
  mouseReleaseEvent*: QColorDialogmouseReleaseEventProc
  mouseDoubleClickEvent*: QColorDialogmouseDoubleClickEventProc
  mouseMoveEvent*: QColorDialogmouseMoveEventProc
  wheelEvent*: QColorDialogwheelEventProc
  keyReleaseEvent*: QColorDialogkeyReleaseEventProc
  focusInEvent*: QColorDialogfocusInEventProc
  focusOutEvent*: QColorDialogfocusOutEventProc
  enterEvent*: QColorDialogenterEventProc
  leaveEvent*: QColorDialogleaveEventProc
  paintEvent*: QColorDialogpaintEventProc
  moveEvent*: QColorDialogmoveEventProc
  tabletEvent*: QColorDialogtabletEventProc
  actionEvent*: QColorDialogactionEventProc
  dragEnterEvent*: QColorDialogdragEnterEventProc
  dragMoveEvent*: QColorDialogdragMoveEventProc
  dragLeaveEvent*: QColorDialogdragLeaveEventProc
  dropEvent*: QColorDialogdropEventProc
  hideEvent*: QColorDialoghideEventProc
  nativeEvent*: QColorDialognativeEventProc
  metric*: QColorDialogmetricProc
  initPainter*: QColorDialoginitPainterProc
  redirected*: QColorDialogredirectedProc
  sharedPainter*: QColorDialogsharedPainterProc
  inputMethodEvent*: QColorDialoginputMethodEventProc
  inputMethodQuery*: QColorDialoginputMethodQueryProc
  focusNextPrevChild*: QColorDialogfocusNextPrevChildProc
  timerEvent*: QColorDialogtimerEventProc
  childEvent*: QColorDialogchildEventProc
  customEvent*: QColorDialogcustomEventProc
  connectNotify*: QColorDialogconnectNotifyProc
  disconnectNotify*: QColorDialogdisconnectNotifyProc
proc QColorDialogmetaObject*(self: gen_qcolordialog_types.QColorDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorDialog_virtualbase_metaObject(self.h), owned: false)

proc cQColorDialog_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColorDialogmetacast*(self: gen_qcolordialog_types.QColorDialog, param1: cstring): pointer =
  fcQColorDialog_virtualbase_metacast(self.h, param1)

proc cQColorDialog_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QColorDialogmetacall*(self: gen_qcolordialog_types.QColorDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQColorDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQColorDialog_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QColorDialogsetVisible*(self: gen_qcolordialog_types.QColorDialog, visible: bool): void =
  fcQColorDialog_virtualbase_setVisible(self.h, visible)

proc cQColorDialog_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QColorDialogchangeEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQColorDialog_virtualbase_changeEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QColorDialogdone*(self: gen_qcolordialog_types.QColorDialog, resultVal: cint): void =
  fcQColorDialog_virtualbase_done(self.h, resultVal)

proc cQColorDialog_vtable_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = resultVal
  vtbl[].done(self, slotval1)

proc QColorDialogsizeHint*(self: gen_qcolordialog_types.QColorDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColorDialog_virtualbase_sizeHint(self.h), owned: true)

proc cQColorDialog_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColorDialogminimumSizeHint*(self: gen_qcolordialog_types.QColorDialog): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQColorDialog_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQColorDialog_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColorDialogopen*(self: gen_qcolordialog_types.QColorDialog): void =
  fcQColorDialog_virtualbase_open(self.h)

proc cQColorDialog_vtable_callback_open(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  vtbl[].open(self)

proc QColorDialogexec*(self: gen_qcolordialog_types.QColorDialog): cint =
  fcQColorDialog_virtualbase_exec(self.h)

proc cQColorDialog_vtable_callback_exec(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].exec(self)
  virtualReturn

proc QColorDialogaccept*(self: gen_qcolordialog_types.QColorDialog): void =
  fcQColorDialog_virtualbase_accept(self.h)

proc cQColorDialog_vtable_callback_accept(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  vtbl[].accept(self)

proc QColorDialogreject*(self: gen_qcolordialog_types.QColorDialog): void =
  fcQColorDialog_virtualbase_reject(self.h)

proc cQColorDialog_vtable_callback_reject(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  vtbl[].reject(self)

proc QColorDialogkeyPressEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QKeyEvent): void =
  fcQColorDialog_virtualbase_keyPressEvent(self.h, param1.h)

proc cQColorDialog_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QColorDialogcloseEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QCloseEvent): void =
  fcQColorDialog_virtualbase_closeEvent(self.h, param1.h)

proc cQColorDialog_vtable_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QColorDialogshowEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QShowEvent): void =
  fcQColorDialog_virtualbase_showEvent(self.h, param1.h)

proc cQColorDialog_vtable_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QColorDialogresizeEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QResizeEvent): void =
  fcQColorDialog_virtualbase_resizeEvent(self.h, param1.h)

proc cQColorDialog_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QColorDialogcontextMenuEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQColorDialog_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQColorDialog_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QColorDialogeventFilter*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQColorDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQColorDialog_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QColorDialogdevType*(self: gen_qcolordialog_types.QColorDialog): cint =
  fcQColorDialog_virtualbase_devType(self.h)

proc cQColorDialog_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QColorDialogheightForWidth*(self: gen_qcolordialog_types.QColorDialog, param1: cint): cint =
  fcQColorDialog_virtualbase_heightForWidth(self.h, param1)

proc cQColorDialog_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QColorDialoghasHeightForWidth*(self: gen_qcolordialog_types.QColorDialog): bool =
  fcQColorDialog_virtualbase_hasHeightForWidth(self.h)

proc cQColorDialog_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QColorDialogpaintEngine*(self: gen_qcolordialog_types.QColorDialog): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQColorDialog_virtualbase_paintEngine(self.h), owned: false)

proc cQColorDialog_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColorDialogevent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): bool =
  fcQColorDialog_virtualbase_event(self.h, event.h)

proc cQColorDialog_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QColorDialogmousePressEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQColorDialog_virtualbase_mousePressEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QColorDialogmouseReleaseEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQColorDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QColorDialogmouseDoubleClickEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQColorDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QColorDialogmouseMoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fcQColorDialog_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QColorDialogwheelEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QWheelEvent): void =
  fcQColorDialog_virtualbase_wheelEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QColorDialogkeyReleaseEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QKeyEvent): void =
  fcQColorDialog_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QColorDialogfocusInEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQColorDialog_virtualbase_focusInEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QColorDialogfocusOutEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QFocusEvent): void =
  fcQColorDialog_virtualbase_focusOutEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QColorDialogenterEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QEnterEvent): void =
  fcQColorDialog_virtualbase_enterEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QColorDialogleaveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQColorDialog_virtualbase_leaveEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QColorDialogpaintEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QPaintEvent): void =
  fcQColorDialog_virtualbase_paintEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QColorDialogmoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMoveEvent): void =
  fcQColorDialog_virtualbase_moveEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QColorDialogtabletEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QTabletEvent): void =
  fcQColorDialog_virtualbase_tabletEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QColorDialogactionEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QActionEvent): void =
  fcQColorDialog_virtualbase_actionEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QColorDialogdragEnterEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fcQColorDialog_virtualbase_dragEnterEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QColorDialogdragMoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fcQColorDialog_virtualbase_dragMoveEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QColorDialogdragLeaveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQColorDialog_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QColorDialogdropEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDropEvent): void =
  fcQColorDialog_virtualbase_dropEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QColorDialoghideEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QHideEvent): void =
  fcQColorDialog_virtualbase_hideEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QColorDialognativeEvent*(self: gen_qcolordialog_types.QColorDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool =
  fcQColorDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQColorDialog_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QColorDialogmetric*(self: gen_qcolordialog_types.QColorDialog, param1: cint): cint =
  fcQColorDialog_virtualbase_metric(self.h, cint(param1))

proc cQColorDialog_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QColorDialoginitPainter*(self: gen_qcolordialog_types.QColorDialog, painter: gen_qpainter_types.QPainter): void =
  fcQColorDialog_virtualbase_initPainter(self.h, painter.h)

proc cQColorDialog_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QColorDialogredirected*(self: gen_qcolordialog_types.QColorDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQColorDialog_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQColorDialog_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColorDialogsharedPainter*(self: gen_qcolordialog_types.QColorDialog): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQColorDialog_virtualbase_sharedPainter(self.h), owned: false)

proc cQColorDialog_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColorDialoginputMethodEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQColorDialog_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQColorDialog_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QColorDialoginputMethodQuery*(self: gen_qcolordialog_types.QColorDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQColorDialog_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQColorDialog_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QColorDialogfocusNextPrevChild*(self: gen_qcolordialog_types.QColorDialog, next: bool): bool =
  fcQColorDialog_virtualbase_focusNextPrevChild(self.h, next)

proc cQColorDialog_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QColorDialogtimerEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQColorDialog_virtualbase_timerEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QColorDialogchildEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fcQColorDialog_virtualbase_childEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QColorDialogcustomEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fcQColorDialog_virtualbase_customEvent(self.h, event.h)

proc cQColorDialog_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QColorDialogconnectNotify*(self: gen_qcolordialog_types.QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQColorDialog_virtualbase_connectNotify(self.h, signal.h)

proc cQColorDialog_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QColorDialogdisconnectNotify*(self: gen_qcolordialog_types.QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQColorDialog_virtualbase_disconnectNotify(self.h, signal.h)

proc cQColorDialog_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QColorDialogVTable](fcQColorDialog_vdata(self))
  let self = QColorDialog(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQColorDialog* {.inheritable.} = ref object of QColorDialog
  vtbl*: cQColorDialogVTable
method metaObject*(self: VirtualQColorDialog): gen_qobjectdefs_types.QMetaObject {.base.} =
  QColorDialogmetaObject(self[])
proc cQColorDialog_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQColorDialog, param1: cstring): pointer {.base.} =
  QColorDialogmetacast(self[], param1)
proc cQColorDialog_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQColorDialog, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QColorDialogmetacall(self[], param1, param2, param3)
proc cQColorDialog_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method setVisible*(self: VirtualQColorDialog, visible: bool): void {.base.} =
  QColorDialogsetVisible(self[], visible)
proc cQColorDialog_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method changeEvent*(self: VirtualQColorDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QColorDialogchangeEvent(self[], event)
proc cQColorDialog_method_callback_changeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.changeEvent(slotval1)

method done*(self: VirtualQColorDialog, resultVal: cint): void {.base.} =
  QColorDialogdone(self[], resultVal)
proc cQColorDialog_method_callback_done(self: pointer, resultVal: cint): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = resultVal
  inst.done(slotval1)

method sizeHint*(self: VirtualQColorDialog): gen_qsize_types.QSize {.base.} =
  QColorDialogsizeHint(self[])
proc cQColorDialog_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQColorDialog): gen_qsize_types.QSize {.base.} =
  QColorDialogminimumSizeHint(self[])
proc cQColorDialog_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method open*(self: VirtualQColorDialog): void {.base.} =
  QColorDialogopen(self[])
proc cQColorDialog_method_callback_open(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  inst.open()

method exec*(self: VirtualQColorDialog): cint {.base.} =
  QColorDialogexec(self[])
proc cQColorDialog_method_callback_exec(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var virtualReturn = inst.exec()
  virtualReturn

method accept*(self: VirtualQColorDialog): void {.base.} =
  QColorDialogaccept(self[])
proc cQColorDialog_method_callback_accept(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  inst.accept()

method reject*(self: VirtualQColorDialog): void {.base.} =
  QColorDialogreject(self[])
proc cQColorDialog_method_callback_reject(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  inst.reject()

method keyPressEvent*(self: VirtualQColorDialog, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QColorDialogkeyPressEvent(self[], param1)
proc cQColorDialog_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method closeEvent*(self: VirtualQColorDialog, param1: gen_qevent_types.QCloseEvent): void {.base.} =
  QColorDialogcloseEvent(self[], param1)
proc cQColorDialog_method_callback_closeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1, owned: false)
  inst.closeEvent(slotval1)

method showEvent*(self: VirtualQColorDialog, param1: gen_qevent_types.QShowEvent): void {.base.} =
  QColorDialogshowEvent(self[], param1)
proc cQColorDialog_method_callback_showEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1, owned: false)
  inst.showEvent(slotval1)

method resizeEvent*(self: VirtualQColorDialog, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QColorDialogresizeEvent(self[], param1)
proc cQColorDialog_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method contextMenuEvent*(self: VirtualQColorDialog, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QColorDialogcontextMenuEvent(self[], param1)
proc cQColorDialog_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method eventFilter*(self: VirtualQColorDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QColorDialogeventFilter(self[], param1, param2)
proc cQColorDialog_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method devType*(self: VirtualQColorDialog): cint {.base.} =
  QColorDialogdevType(self[])
proc cQColorDialog_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method heightForWidth*(self: VirtualQColorDialog, param1: cint): cint {.base.} =
  QColorDialogheightForWidth(self[], param1)
proc cQColorDialog_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQColorDialog): bool {.base.} =
  QColorDialoghasHeightForWidth(self[])
proc cQColorDialog_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQColorDialog): gen_qpaintengine_types.QPaintEngine {.base.} =
  QColorDialogpaintEngine(self[])
proc cQColorDialog_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQColorDialog, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QColorDialogevent(self[], event)
proc cQColorDialog_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method mousePressEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QColorDialogmousePressEvent(self[], event)
proc cQColorDialog_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QColorDialogmouseReleaseEvent(self[], event)
proc cQColorDialog_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QColorDialogmouseDoubleClickEvent(self[], event)
proc cQColorDialog_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QColorDialogmouseMoveEvent(self[], event)
proc cQColorDialog_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QColorDialogwheelEvent(self[], event)
proc cQColorDialog_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QColorDialogkeyReleaseEvent(self[], event)
proc cQColorDialog_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QColorDialogfocusInEvent(self[], event)
proc cQColorDialog_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QColorDialogfocusOutEvent(self[], event)
proc cQColorDialog_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QEnterEvent): void {.base.} =
  QColorDialogenterEvent(self[], event)
proc cQColorDialog_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQColorDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QColorDialogleaveEvent(self[], event)
proc cQColorDialog_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method paintEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QPaintEvent): void {.base.} =
  QColorDialogpaintEvent(self[], event)
proc cQColorDialog_method_callback_paintEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event, owned: false)
  inst.paintEvent(slotval1)

method moveEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QColorDialogmoveEvent(self[], event)
proc cQColorDialog_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method tabletEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QColorDialogtabletEvent(self[], event)
proc cQColorDialog_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QActionEvent): void {.base.} =
  QColorDialogactionEvent(self[], event)
proc cQColorDialog_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QColorDialogdragEnterEvent(self[], event)
proc cQColorDialog_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QColorDialogdragMoveEvent(self[], event)
proc cQColorDialog_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QColorDialogdragLeaveEvent(self[], event)
proc cQColorDialog_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QDropEvent): void {.base.} =
  QColorDialogdropEvent(self[], event)
proc cQColorDialog_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method hideEvent*(self: VirtualQColorDialog, event: gen_qevent_types.QHideEvent): void {.base.} =
  QColorDialoghideEvent(self[], event)
proc cQColorDialog_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQColorDialog, eventType: openArray[byte], message: pointer, resultVal: ptr uint): bool {.base.} =
  QColorDialognativeEvent(self[], eventType, message, resultVal)
proc cQColorDialog_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQColorDialog, param1: cint): cint {.base.} =
  QColorDialogmetric(self[], param1)
proc cQColorDialog_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQColorDialog, painter: gen_qpainter_types.QPainter): void {.base.} =
  QColorDialoginitPainter(self[], painter)
proc cQColorDialog_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQColorDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QColorDialogredirected(self[], offset)
proc cQColorDialog_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQColorDialog): gen_qpainter_types.QPainter {.base.} =
  QColorDialogsharedPainter(self[])
proc cQColorDialog_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQColorDialog, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QColorDialoginputMethodEvent(self[], param1)
proc cQColorDialog_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQColorDialog, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QColorDialoginputMethodQuery(self[], param1)
proc cQColorDialog_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQColorDialog, next: bool): bool {.base.} =
  QColorDialogfocusNextPrevChild(self[], next)
proc cQColorDialog_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQColorDialog, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QColorDialogtimerEvent(self[], event)
proc cQColorDialog_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQColorDialog, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QColorDialogchildEvent(self[], event)
proc cQColorDialog_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQColorDialog, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QColorDialogcustomEvent(self[], event)
proc cQColorDialog_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QColorDialogconnectNotify(self[], signal)
proc cQColorDialog_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QColorDialogdisconnectNotify(self[], signal)
proc cQColorDialog_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQColorDialog](fcQColorDialog_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc adjustPosition*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qwidget_types.QWidget): void =
  fcQColorDialog_protectedbase_adjustPosition(self.h, param1.h)

proc updateMicroFocus*(self: gen_qcolordialog_types.QColorDialog): void =
  fcQColorDialog_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qcolordialog_types.QColorDialog): void =
  fcQColorDialog_protectedbase_create(self.h)

proc destroy*(self: gen_qcolordialog_types.QColorDialog): void =
  fcQColorDialog_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qcolordialog_types.QColorDialog): bool =
  fcQColorDialog_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qcolordialog_types.QColorDialog): bool =
  fcQColorDialog_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qcolordialog_types.QColorDialog): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQColorDialog_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qcolordialog_types.QColorDialog): cint =
  fcQColorDialog_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qcolordialog_types.QColorDialog, signal: cstring): cint =
  fcQColorDialog_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qcolordialog_types.QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQColorDialog_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QColorDialogVTable = nil): gen_qcolordialog_types.QColorDialog =
  let vtbl = if vtbl == nil: new QColorDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QColorDialogVTable](fcQColorDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQColorDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQColorDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQColorDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQColorDialog_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQColorDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQColorDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQColorDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQColorDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQColorDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQColorDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQColorDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQColorDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQColorDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQColorDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQColorDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQColorDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQColorDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQColorDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQColorDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQColorDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQColorDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQColorDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQColorDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQColorDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQColorDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQColorDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQColorDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQColorDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQColorDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQColorDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQColorDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQColorDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQColorDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQColorDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQColorDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQColorDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQColorDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQColorDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQColorDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQColorDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQColorDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQColorDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQColorDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQColorDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQColorDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQColorDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQColorDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQColorDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQColorDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQColorDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQColorDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQColorDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQColorDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQColorDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQColorDialog_vtable_callback_disconnectNotify
  gen_qcolordialog_types.QColorDialog(h: fcQColorDialog_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    vtbl: ref QColorDialogVTable = nil): gen_qcolordialog_types.QColorDialog =
  let vtbl = if vtbl == nil: new QColorDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QColorDialogVTable](fcQColorDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQColorDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQColorDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQColorDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQColorDialog_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQColorDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQColorDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQColorDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQColorDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQColorDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQColorDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQColorDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQColorDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQColorDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQColorDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQColorDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQColorDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQColorDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQColorDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQColorDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQColorDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQColorDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQColorDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQColorDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQColorDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQColorDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQColorDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQColorDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQColorDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQColorDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQColorDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQColorDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQColorDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQColorDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQColorDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQColorDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQColorDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQColorDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQColorDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQColorDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQColorDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQColorDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQColorDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQColorDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQColorDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQColorDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQColorDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQColorDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQColorDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQColorDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQColorDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQColorDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQColorDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQColorDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQColorDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQColorDialog_vtable_callback_disconnectNotify
  gen_qcolordialog_types.QColorDialog(h: fcQColorDialog_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    initial: gen_qcolor_types.QColor,
    vtbl: ref QColorDialogVTable = nil): gen_qcolordialog_types.QColorDialog =
  let vtbl = if vtbl == nil: new QColorDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QColorDialogVTable](fcQColorDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQColorDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQColorDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQColorDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQColorDialog_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQColorDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQColorDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQColorDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQColorDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQColorDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQColorDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQColorDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQColorDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQColorDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQColorDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQColorDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQColorDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQColorDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQColorDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQColorDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQColorDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQColorDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQColorDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQColorDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQColorDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQColorDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQColorDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQColorDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQColorDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQColorDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQColorDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQColorDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQColorDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQColorDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQColorDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQColorDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQColorDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQColorDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQColorDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQColorDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQColorDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQColorDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQColorDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQColorDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQColorDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQColorDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQColorDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQColorDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQColorDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQColorDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQColorDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQColorDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQColorDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQColorDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQColorDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQColorDialog_vtable_callback_disconnectNotify
  gen_qcolordialog_types.QColorDialog(h: fcQColorDialog_new3(addr(vtbl[].vtbl), addr(vtbl[]), initial.h), owned: true)

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget,
    vtbl: ref QColorDialogVTable = nil): gen_qcolordialog_types.QColorDialog =
  let vtbl = if vtbl == nil: new QColorDialogVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QColorDialogVTable](fcQColorDialog_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQColorDialog_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQColorDialog_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQColorDialog_vtable_callback_metacall
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQColorDialog_vtable_callback_setVisible
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQColorDialog_vtable_callback_changeEvent
  if not isNil(vtbl[].done):
    vtbl[].vtbl.done = cQColorDialog_vtable_callback_done
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQColorDialog_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQColorDialog_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQColorDialog_vtable_callback_open
  if not isNil(vtbl[].exec):
    vtbl[].vtbl.exec = cQColorDialog_vtable_callback_exec
  if not isNil(vtbl[].accept):
    vtbl[].vtbl.accept = cQColorDialog_vtable_callback_accept
  if not isNil(vtbl[].reject):
    vtbl[].vtbl.reject = cQColorDialog_vtable_callback_reject
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQColorDialog_vtable_callback_keyPressEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQColorDialog_vtable_callback_closeEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQColorDialog_vtable_callback_showEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQColorDialog_vtable_callback_resizeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQColorDialog_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQColorDialog_vtable_callback_eventFilter
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQColorDialog_vtable_callback_devType
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQColorDialog_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQColorDialog_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQColorDialog_vtable_callback_paintEngine
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQColorDialog_vtable_callback_event
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQColorDialog_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQColorDialog_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQColorDialog_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQColorDialog_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQColorDialog_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQColorDialog_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQColorDialog_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQColorDialog_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQColorDialog_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQColorDialog_vtable_callback_leaveEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQColorDialog_vtable_callback_paintEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQColorDialog_vtable_callback_moveEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQColorDialog_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQColorDialog_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQColorDialog_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQColorDialog_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQColorDialog_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQColorDialog_vtable_callback_dropEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQColorDialog_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQColorDialog_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQColorDialog_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQColorDialog_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQColorDialog_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQColorDialog_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQColorDialog_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQColorDialog_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQColorDialog_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQColorDialog_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQColorDialog_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQColorDialog_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQColorDialog_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQColorDialog_vtable_callback_disconnectNotify
  gen_qcolordialog_types.QColorDialog(h: fcQColorDialog_new4(addr(vtbl[].vtbl), addr(vtbl[]), initial.h, parent.h), owned: true)

const cQColorDialog_mvtbl = cQColorDialogVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQColorDialog()[])](self.fcQColorDialog_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQColorDialog_method_callback_metaObject,
  metacast: cQColorDialog_method_callback_metacast,
  metacall: cQColorDialog_method_callback_metacall,
  setVisible: cQColorDialog_method_callback_setVisible,
  changeEvent: cQColorDialog_method_callback_changeEvent,
  done: cQColorDialog_method_callback_done,
  sizeHint: cQColorDialog_method_callback_sizeHint,
  minimumSizeHint: cQColorDialog_method_callback_minimumSizeHint,
  open: cQColorDialog_method_callback_open,
  exec: cQColorDialog_method_callback_exec,
  accept: cQColorDialog_method_callback_accept,
  reject: cQColorDialog_method_callback_reject,
  keyPressEvent: cQColorDialog_method_callback_keyPressEvent,
  closeEvent: cQColorDialog_method_callback_closeEvent,
  showEvent: cQColorDialog_method_callback_showEvent,
  resizeEvent: cQColorDialog_method_callback_resizeEvent,
  contextMenuEvent: cQColorDialog_method_callback_contextMenuEvent,
  eventFilter: cQColorDialog_method_callback_eventFilter,
  devType: cQColorDialog_method_callback_devType,
  heightForWidth: cQColorDialog_method_callback_heightForWidth,
  hasHeightForWidth: cQColorDialog_method_callback_hasHeightForWidth,
  paintEngine: cQColorDialog_method_callback_paintEngine,
  event: cQColorDialog_method_callback_event,
  mousePressEvent: cQColorDialog_method_callback_mousePressEvent,
  mouseReleaseEvent: cQColorDialog_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQColorDialog_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQColorDialog_method_callback_mouseMoveEvent,
  wheelEvent: cQColorDialog_method_callback_wheelEvent,
  keyReleaseEvent: cQColorDialog_method_callback_keyReleaseEvent,
  focusInEvent: cQColorDialog_method_callback_focusInEvent,
  focusOutEvent: cQColorDialog_method_callback_focusOutEvent,
  enterEvent: cQColorDialog_method_callback_enterEvent,
  leaveEvent: cQColorDialog_method_callback_leaveEvent,
  paintEvent: cQColorDialog_method_callback_paintEvent,
  moveEvent: cQColorDialog_method_callback_moveEvent,
  tabletEvent: cQColorDialog_method_callback_tabletEvent,
  actionEvent: cQColorDialog_method_callback_actionEvent,
  dragEnterEvent: cQColorDialog_method_callback_dragEnterEvent,
  dragMoveEvent: cQColorDialog_method_callback_dragMoveEvent,
  dragLeaveEvent: cQColorDialog_method_callback_dragLeaveEvent,
  dropEvent: cQColorDialog_method_callback_dropEvent,
  hideEvent: cQColorDialog_method_callback_hideEvent,
  nativeEvent: cQColorDialog_method_callback_nativeEvent,
  metric: cQColorDialog_method_callback_metric,
  initPainter: cQColorDialog_method_callback_initPainter,
  redirected: cQColorDialog_method_callback_redirected,
  sharedPainter: cQColorDialog_method_callback_sharedPainter,
  inputMethodEvent: cQColorDialog_method_callback_inputMethodEvent,
  inputMethodQuery: cQColorDialog_method_callback_inputMethodQuery,
  focusNextPrevChild: cQColorDialog_method_callback_focusNextPrevChild,
  timerEvent: cQColorDialog_method_callback_timerEvent,
  childEvent: cQColorDialog_method_callback_childEvent,
  customEvent: cQColorDialog_method_callback_customEvent,
  connectNotify: cQColorDialog_method_callback_connectNotify,
  disconnectNotify: cQColorDialog_method_callback_disconnectNotify,
)
proc create*(T: type gen_qcolordialog_types.QColorDialog,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQColorDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQColorDialog_new(addr(cQColorDialog_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    inst: VirtualQColorDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQColorDialog_new2(addr(cQColorDialog_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    initial: gen_qcolor_types.QColor,
    inst: VirtualQColorDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQColorDialog_new3(addr(cQColorDialog_mvtbl), addr(inst[]), initial.h)
  inst[].owned = true

proc create*(T: type gen_qcolordialog_types.QColorDialog,
    initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget,
    inst: VirtualQColorDialog) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQColorDialog_new4(addr(cQColorDialog_mvtbl), addr(inst[]), initial.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qcolordialog_types.QColorDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorDialog_staticMetaObject())
