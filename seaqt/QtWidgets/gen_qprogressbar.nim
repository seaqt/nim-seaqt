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


{.compile("gen_qprogressbar.cpp", QtWidgetsCFlags).}


type QProgressBarDirectionEnum* = distinct cint
template TopToBottom*(_: type QProgressBarDirectionEnum): untyped = 0
template BottomToTop*(_: type QProgressBarDirectionEnum): untyped = 1


import ./gen_qprogressbar_types
export gen_qprogressbar_types

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

type cQProgressBar*{.exportc: "QProgressBar", incompleteStruct.} = object

proc fcQProgressBar_metaObject(self: pointer): pointer {.importc: "QProgressBar_metaObject".}
proc fcQProgressBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressBar_metacast".}
proc fcQProgressBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressBar_metacall".}
proc fcQProgressBar_tr(s: cstring): struct_miqt_string {.importc: "QProgressBar_tr".}
proc fcQProgressBar_trUtf8(s: cstring): struct_miqt_string {.importc: "QProgressBar_trUtf8".}
proc fcQProgressBar_minimum(self: pointer): cint {.importc: "QProgressBar_minimum".}
proc fcQProgressBar_maximum(self: pointer): cint {.importc: "QProgressBar_maximum".}
proc fcQProgressBar_value(self: pointer): cint {.importc: "QProgressBar_value".}
proc fcQProgressBar_text(self: pointer): struct_miqt_string {.importc: "QProgressBar_text".}
proc fcQProgressBar_setTextVisible(self: pointer, visible: bool): void {.importc: "QProgressBar_setTextVisible".}
proc fcQProgressBar_isTextVisible(self: pointer): bool {.importc: "QProgressBar_isTextVisible".}
proc fcQProgressBar_alignment(self: pointer): cint {.importc: "QProgressBar_alignment".}
proc fcQProgressBar_setAlignment(self: pointer, alignment: cint): void {.importc: "QProgressBar_setAlignment".}
proc fcQProgressBar_sizeHint(self: pointer): pointer {.importc: "QProgressBar_sizeHint".}
proc fcQProgressBar_minimumSizeHint(self: pointer): pointer {.importc: "QProgressBar_minimumSizeHint".}
proc fcQProgressBar_orientation(self: pointer): cint {.importc: "QProgressBar_orientation".}
proc fcQProgressBar_setInvertedAppearance(self: pointer, invert: bool): void {.importc: "QProgressBar_setInvertedAppearance".}
proc fcQProgressBar_invertedAppearance(self: pointer): bool {.importc: "QProgressBar_invertedAppearance".}
proc fcQProgressBar_setTextDirection(self: pointer, textDirection: cint): void {.importc: "QProgressBar_setTextDirection".}
proc fcQProgressBar_textDirection(self: pointer): cint {.importc: "QProgressBar_textDirection".}
proc fcQProgressBar_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QProgressBar_setFormat".}
proc fcQProgressBar_resetFormat(self: pointer): void {.importc: "QProgressBar_resetFormat".}
proc fcQProgressBar_format(self: pointer): struct_miqt_string {.importc: "QProgressBar_format".}
proc fcQProgressBar_reset(self: pointer): void {.importc: "QProgressBar_reset".}
proc fcQProgressBar_setRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QProgressBar_setRange".}
proc fcQProgressBar_setMinimum(self: pointer, minimum: cint): void {.importc: "QProgressBar_setMinimum".}
proc fcQProgressBar_setMaximum(self: pointer, maximum: cint): void {.importc: "QProgressBar_setMaximum".}
proc fcQProgressBar_setValue(self: pointer, value: cint): void {.importc: "QProgressBar_setValue".}
proc fcQProgressBar_setOrientation(self: pointer, orientation: cint): void {.importc: "QProgressBar_setOrientation".}
proc fcQProgressBar_valueChanged(self: pointer, value: cint): void {.importc: "QProgressBar_valueChanged".}
proc fcQProgressBar_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, value: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QProgressBar_connect_valueChanged".}
proc fcQProgressBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressBar_tr2".}
proc fcQProgressBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressBar_tr3".}
proc fcQProgressBar_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressBar_trUtf82".}
proc fcQProgressBar_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressBar_trUtf83".}
proc fcQProgressBar_vtbl(self: pointer): pointer {.importc: "QProgressBar_vtbl".}
proc fcQProgressBar_vdata(self: pointer): pointer {.importc: "QProgressBar_vdata".}
type cQProgressBarVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  text*: proc(self: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
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
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
proc fcQProgressBar_virtualbase_metaObject(self: pointer): pointer {.importc: "QProgressBar_virtualbase_metaObject".}
proc fcQProgressBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressBar_virtualbase_metacast".}
proc fcQProgressBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressBar_virtualbase_metacall".}
proc fcQProgressBar_virtualbase_text(self: pointer): struct_miqt_string {.importc: "QProgressBar_virtualbase_text".}
proc fcQProgressBar_virtualbase_sizeHint(self: pointer): pointer {.importc: "QProgressBar_virtualbase_sizeHint".}
proc fcQProgressBar_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QProgressBar_virtualbase_minimumSizeHint".}
proc fcQProgressBar_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QProgressBar_virtualbase_event".}
proc fcQProgressBar_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QProgressBar_virtualbase_paintEvent".}
proc fcQProgressBar_virtualbase_devType(self: pointer): cint {.importc: "QProgressBar_virtualbase_devType".}
proc fcQProgressBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QProgressBar_virtualbase_setVisible".}
proc fcQProgressBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QProgressBar_virtualbase_heightForWidth".}
proc fcQProgressBar_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QProgressBar_virtualbase_hasHeightForWidth".}
proc fcQProgressBar_virtualbase_paintEngine(self: pointer): pointer {.importc: "QProgressBar_virtualbase_paintEngine".}
proc fcQProgressBar_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_mousePressEvent".}
proc fcQProgressBar_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_mouseReleaseEvent".}
proc fcQProgressBar_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_mouseDoubleClickEvent".}
proc fcQProgressBar_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_mouseMoveEvent".}
proc fcQProgressBar_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_wheelEvent".}
proc fcQProgressBar_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_keyPressEvent".}
proc fcQProgressBar_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_keyReleaseEvent".}
proc fcQProgressBar_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_focusInEvent".}
proc fcQProgressBar_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_focusOutEvent".}
proc fcQProgressBar_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_enterEvent".}
proc fcQProgressBar_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_leaveEvent".}
proc fcQProgressBar_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_moveEvent".}
proc fcQProgressBar_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_resizeEvent".}
proc fcQProgressBar_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_closeEvent".}
proc fcQProgressBar_virtualbase_contextMenuEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_contextMenuEvent".}
proc fcQProgressBar_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_tabletEvent".}
proc fcQProgressBar_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_actionEvent".}
proc fcQProgressBar_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_dragEnterEvent".}
proc fcQProgressBar_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_dragMoveEvent".}
proc fcQProgressBar_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_dragLeaveEvent".}
proc fcQProgressBar_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_dropEvent".}
proc fcQProgressBar_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_showEvent".}
proc fcQProgressBar_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_hideEvent".}
proc fcQProgressBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QProgressBar_virtualbase_nativeEvent".}
proc fcQProgressBar_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QProgressBar_virtualbase_changeEvent".}
proc fcQProgressBar_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QProgressBar_virtualbase_metric".}
proc fcQProgressBar_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QProgressBar_virtualbase_initPainter".}
proc fcQProgressBar_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QProgressBar_virtualbase_redirected".}
proc fcQProgressBar_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QProgressBar_virtualbase_sharedPainter".}
proc fcQProgressBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QProgressBar_virtualbase_inputMethodEvent".}
proc fcQProgressBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QProgressBar_virtualbase_inputMethodQuery".}
proc fcQProgressBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QProgressBar_virtualbase_focusNextPrevChild".}
proc fcQProgressBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QProgressBar_virtualbase_eventFilter".}
proc fcQProgressBar_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_timerEvent".}
proc fcQProgressBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_childEvent".}
proc fcQProgressBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_customEvent".}
proc fcQProgressBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QProgressBar_virtualbase_connectNotify".}
proc fcQProgressBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QProgressBar_virtualbase_disconnectNotify".}
proc fcQProgressBar_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QProgressBar_protectedbase_initStyleOption".}
proc fcQProgressBar_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QProgressBar_protectedbase_updateMicroFocus".}
proc fcQProgressBar_protectedbase_create(self: pointer): void {.importc: "QProgressBar_protectedbase_create".}
proc fcQProgressBar_protectedbase_destroy(self: pointer): void {.importc: "QProgressBar_protectedbase_destroy".}
proc fcQProgressBar_protectedbase_focusNextChild(self: pointer): bool {.importc: "QProgressBar_protectedbase_focusNextChild".}
proc fcQProgressBar_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QProgressBar_protectedbase_focusPreviousChild".}
proc fcQProgressBar_protectedbase_sender(self: pointer): pointer {.importc: "QProgressBar_protectedbase_sender".}
proc fcQProgressBar_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QProgressBar_protectedbase_senderSignalIndex".}
proc fcQProgressBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QProgressBar_protectedbase_receivers".}
proc fcQProgressBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QProgressBar_protectedbase_isSignalConnected".}
proc fcQProgressBar_new(vtbl, vdata: pointer, parent: pointer): ptr cQProgressBar {.importc: "QProgressBar_new".}
proc fcQProgressBar_new2(vtbl, vdata: pointer): ptr cQProgressBar {.importc: "QProgressBar_new2".}
proc fcQProgressBar_staticMetaObject(): pointer {.importc: "QProgressBar_staticMetaObject".}

proc metaObject*(self: gen_qprogressbar_types.QProgressBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressBar_metaObject(self.h), owned: false)

proc metacast*(self: gen_qprogressbar_types.QProgressBar, param1: cstring): pointer =
  fcQProgressBar_metacast(self.h, param1)

proc metacall*(self: gen_qprogressbar_types.QProgressBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQProgressBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring): string =
  let v_ms = fcQProgressBar_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprogressbar_types.QProgressBar, s: cstring): string =
  let v_ms = fcQProgressBar_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc minimum*(self: gen_qprogressbar_types.QProgressBar): cint =
  fcQProgressBar_minimum(self.h)

proc maximum*(self: gen_qprogressbar_types.QProgressBar): cint =
  fcQProgressBar_maximum(self.h)

proc value*(self: gen_qprogressbar_types.QProgressBar): cint =
  fcQProgressBar_value(self.h)

proc text*(self: gen_qprogressbar_types.QProgressBar): string =
  let v_ms = fcQProgressBar_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setTextVisible*(self: gen_qprogressbar_types.QProgressBar, visible: bool): void =
  fcQProgressBar_setTextVisible(self.h, visible)

proc isTextVisible*(self: gen_qprogressbar_types.QProgressBar): bool =
  fcQProgressBar_isTextVisible(self.h)

proc alignment*(self: gen_qprogressbar_types.QProgressBar): cint =
  cint(fcQProgressBar_alignment(self.h))

proc setAlignment*(self: gen_qprogressbar_types.QProgressBar, alignment: cint): void =
  fcQProgressBar_setAlignment(self.h, cint(alignment))

proc sizeHint*(self: gen_qprogressbar_types.QProgressBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qprogressbar_types.QProgressBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_minimumSizeHint(self.h), owned: true)

proc orientation*(self: gen_qprogressbar_types.QProgressBar): cint =
  cint(fcQProgressBar_orientation(self.h))

proc setInvertedAppearance*(self: gen_qprogressbar_types.QProgressBar, invert: bool): void =
  fcQProgressBar_setInvertedAppearance(self.h, invert)

proc invertedAppearance*(self: gen_qprogressbar_types.QProgressBar): bool =
  fcQProgressBar_invertedAppearance(self.h)

proc setTextDirection*(self: gen_qprogressbar_types.QProgressBar, textDirection: cint): void =
  fcQProgressBar_setTextDirection(self.h, cint(textDirection))

proc textDirection*(self: gen_qprogressbar_types.QProgressBar): cint =
  cint(fcQProgressBar_textDirection(self.h))

proc setFormat*(self: gen_qprogressbar_types.QProgressBar, format: openArray[char]): void =
  fcQProgressBar_setFormat(self.h, struct_miqt_string(data: if len(format) > 0: addr format[0] else: nil, len: csize_t(len(format))))

proc resetFormat*(self: gen_qprogressbar_types.QProgressBar): void =
  fcQProgressBar_resetFormat(self.h)

proc format*(self: gen_qprogressbar_types.QProgressBar): string =
  let v_ms = fcQProgressBar_format(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc reset*(self: gen_qprogressbar_types.QProgressBar): void =
  fcQProgressBar_reset(self.h)

proc setRange*(self: gen_qprogressbar_types.QProgressBar, minimum: cint, maximum: cint): void =
  fcQProgressBar_setRange(self.h, minimum, maximum)

proc setMinimum*(self: gen_qprogressbar_types.QProgressBar, minimum: cint): void =
  fcQProgressBar_setMinimum(self.h, minimum)

proc setMaximum*(self: gen_qprogressbar_types.QProgressBar, maximum: cint): void =
  fcQProgressBar_setMaximum(self.h, maximum)

proc setValue*(self: gen_qprogressbar_types.QProgressBar, value: cint): void =
  fcQProgressBar_setValue(self.h, value)

proc setOrientation*(self: gen_qprogressbar_types.QProgressBar, orientation: cint): void =
  fcQProgressBar_setOrientation(self.h, cint(orientation))

proc valueChanged*(self: gen_qprogressbar_types.QProgressBar, value: cint): void =
  fcQProgressBar_valueChanged(self.h, value)

type QProgressBarvalueChangedSlot* = proc(value: cint)
proc cQProgressBar_slot_callback_valueChanged(slot: int, value: cint) {.cdecl.} =
  let nimfunc = cast[ptr QProgressBarvalueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc cQProgressBar_slot_callback_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QProgressBarvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvalueChanged*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarvalueChangedSlot) =
  var tmp = new QProgressBarvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_connect_valueChanged(self.h, cast[int](addr tmp[]), cQProgressBar_slot_callback_valueChanged, cQProgressBar_slot_callback_valueChanged_release)

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring, c: cstring): string =
  let v_ms = fcQProgressBar_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProgressBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprogressbar_types.QProgressBar, s: cstring, c: cstring): string =
  let v_ms = fcQProgressBar_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprogressbar_types.QProgressBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProgressBar_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QProgressBarmetaObjectProc* = proc(self: QProgressBar): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QProgressBarmetacastProc* = proc(self: QProgressBar, param1: cstring): pointer {.raises: [], gcsafe.}
type QProgressBarmetacallProc* = proc(self: QProgressBar, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QProgressBartextProc* = proc(self: QProgressBar): string {.raises: [], gcsafe.}
type QProgressBarsizeHintProc* = proc(self: QProgressBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QProgressBarminimumSizeHintProc* = proc(self: QProgressBar): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QProgressBareventProc* = proc(self: QProgressBar, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QProgressBarpaintEventProc* = proc(self: QProgressBar, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QProgressBardevTypeProc* = proc(self: QProgressBar): cint {.raises: [], gcsafe.}
type QProgressBarsetVisibleProc* = proc(self: QProgressBar, visible: bool): void {.raises: [], gcsafe.}
type QProgressBarheightForWidthProc* = proc(self: QProgressBar, param1: cint): cint {.raises: [], gcsafe.}
type QProgressBarhasHeightForWidthProc* = proc(self: QProgressBar): bool {.raises: [], gcsafe.}
type QProgressBarpaintEngineProc* = proc(self: QProgressBar): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QProgressBarmousePressEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QProgressBarmouseReleaseEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QProgressBarmouseDoubleClickEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QProgressBarmouseMoveEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QProgressBarwheelEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QProgressBarkeyPressEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QProgressBarkeyReleaseEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QProgressBarfocusInEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QProgressBarfocusOutEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QProgressBarenterEventProc* = proc(self: QProgressBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProgressBarleaveEventProc* = proc(self: QProgressBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProgressBarmoveEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QProgressBarresizeEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QProgressBarcloseEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QProgressBarcontextMenuEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QProgressBartabletEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QProgressBaractionEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QProgressBardragEnterEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QProgressBardragMoveEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QProgressBardragLeaveEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QProgressBardropEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QProgressBarshowEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QProgressBarhideEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QProgressBarnativeEventProc* = proc(self: QProgressBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QProgressBarchangeEventProc* = proc(self: QProgressBar, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProgressBarmetricProc* = proc(self: QProgressBar, param1: cint): cint {.raises: [], gcsafe.}
type QProgressBarinitPainterProc* = proc(self: QProgressBar, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QProgressBarredirectedProc* = proc(self: QProgressBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QProgressBarsharedPainterProc* = proc(self: QProgressBar): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QProgressBarinputMethodEventProc* = proc(self: QProgressBar, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QProgressBarinputMethodQueryProc* = proc(self: QProgressBar, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QProgressBarfocusNextPrevChildProc* = proc(self: QProgressBar, next: bool): bool {.raises: [], gcsafe.}
type QProgressBareventFilterProc* = proc(self: QProgressBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QProgressBartimerEventProc* = proc(self: QProgressBar, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QProgressBarchildEventProc* = proc(self: QProgressBar, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QProgressBarcustomEventProc* = proc(self: QProgressBar, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProgressBarconnectNotifyProc* = proc(self: QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QProgressBardisconnectNotifyProc* = proc(self: QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QProgressBarVTable* {.inheritable, pure.} = object
  vtbl: cQProgressBarVTable
  metaObject*: QProgressBarmetaObjectProc
  metacast*: QProgressBarmetacastProc
  metacall*: QProgressBarmetacallProc
  text*: QProgressBartextProc
  sizeHint*: QProgressBarsizeHintProc
  minimumSizeHint*: QProgressBarminimumSizeHintProc
  event*: QProgressBareventProc
  paintEvent*: QProgressBarpaintEventProc
  devType*: QProgressBardevTypeProc
  setVisible*: QProgressBarsetVisibleProc
  heightForWidth*: QProgressBarheightForWidthProc
  hasHeightForWidth*: QProgressBarhasHeightForWidthProc
  paintEngine*: QProgressBarpaintEngineProc
  mousePressEvent*: QProgressBarmousePressEventProc
  mouseReleaseEvent*: QProgressBarmouseReleaseEventProc
  mouseDoubleClickEvent*: QProgressBarmouseDoubleClickEventProc
  mouseMoveEvent*: QProgressBarmouseMoveEventProc
  wheelEvent*: QProgressBarwheelEventProc
  keyPressEvent*: QProgressBarkeyPressEventProc
  keyReleaseEvent*: QProgressBarkeyReleaseEventProc
  focusInEvent*: QProgressBarfocusInEventProc
  focusOutEvent*: QProgressBarfocusOutEventProc
  enterEvent*: QProgressBarenterEventProc
  leaveEvent*: QProgressBarleaveEventProc
  moveEvent*: QProgressBarmoveEventProc
  resizeEvent*: QProgressBarresizeEventProc
  closeEvent*: QProgressBarcloseEventProc
  contextMenuEvent*: QProgressBarcontextMenuEventProc
  tabletEvent*: QProgressBartabletEventProc
  actionEvent*: QProgressBaractionEventProc
  dragEnterEvent*: QProgressBardragEnterEventProc
  dragMoveEvent*: QProgressBardragMoveEventProc
  dragLeaveEvent*: QProgressBardragLeaveEventProc
  dropEvent*: QProgressBardropEventProc
  showEvent*: QProgressBarshowEventProc
  hideEvent*: QProgressBarhideEventProc
  nativeEvent*: QProgressBarnativeEventProc
  changeEvent*: QProgressBarchangeEventProc
  metric*: QProgressBarmetricProc
  initPainter*: QProgressBarinitPainterProc
  redirected*: QProgressBarredirectedProc
  sharedPainter*: QProgressBarsharedPainterProc
  inputMethodEvent*: QProgressBarinputMethodEventProc
  inputMethodQuery*: QProgressBarinputMethodQueryProc
  focusNextPrevChild*: QProgressBarfocusNextPrevChildProc
  eventFilter*: QProgressBareventFilterProc
  timerEvent*: QProgressBartimerEventProc
  childEvent*: QProgressBarchildEventProc
  customEvent*: QProgressBarcustomEventProc
  connectNotify*: QProgressBarconnectNotifyProc
  disconnectNotify*: QProgressBardisconnectNotifyProc
proc QProgressBarmetaObject*(self: gen_qprogressbar_types.QProgressBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressBar_virtualbase_metaObject(self.h), owned: false)

proc cQProgressBar_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressBarmetacast*(self: gen_qprogressbar_types.QProgressBar, param1: cstring): pointer =
  fcQProgressBar_virtualbase_metacast(self.h, param1)

proc cQProgressBar_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QProgressBarmetacall*(self: gen_qprogressbar_types.QProgressBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQProgressBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQProgressBar_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProgressBartext*(self: gen_qprogressbar_types.QProgressBar): string =
  let v_ms = fcQProgressBar_virtualbase_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cQProgressBar_vtable_callback_text(self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].text(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QProgressBarsizeHint*(self: gen_qprogressbar_types.QProgressBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_virtualbase_sizeHint(self.h), owned: true)

proc cQProgressBar_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressBarminimumSizeHint*(self: gen_qprogressbar_types.QProgressBar): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQProgressBar_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressBarevent*(self: gen_qprogressbar_types.QProgressBar, e: gen_qcoreevent_types.QEvent): bool =
  fcQProgressBar_virtualbase_event(self.h, e.h)

proc cQProgressBar_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QProgressBarpaintEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQProgressBar_virtualbase_paintEvent(self.h, param1.h)

proc cQProgressBar_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QProgressBardevType*(self: gen_qprogressbar_types.QProgressBar): cint =
  fcQProgressBar_virtualbase_devType(self.h)

proc cQProgressBar_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QProgressBarsetVisible*(self: gen_qprogressbar_types.QProgressBar, visible: bool): void =
  fcQProgressBar_virtualbase_setVisible(self.h, visible)

proc cQProgressBar_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QProgressBarheightForWidth*(self: gen_qprogressbar_types.QProgressBar, param1: cint): cint =
  fcQProgressBar_virtualbase_heightForWidth(self.h, param1)

proc cQProgressBar_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QProgressBarhasHeightForWidth*(self: gen_qprogressbar_types.QProgressBar): bool =
  fcQProgressBar_virtualbase_hasHeightForWidth(self.h)

proc cQProgressBar_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QProgressBarpaintEngine*(self: gen_qprogressbar_types.QProgressBar): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQProgressBar_virtualbase_paintEngine(self.h), owned: false)

proc cQProgressBar_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressBarmousePressEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressBar_virtualbase_mousePressEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QProgressBarmouseReleaseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressBar_virtualbase_mouseReleaseEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QProgressBarmouseDoubleClickEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QProgressBarmouseMoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressBar_virtualbase_mouseMoveEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QProgressBarwheelEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QWheelEvent): void =
  fcQProgressBar_virtualbase_wheelEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QProgressBarkeyPressEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QKeyEvent): void =
  fcQProgressBar_virtualbase_keyPressEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QProgressBarkeyReleaseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QKeyEvent): void =
  fcQProgressBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QProgressBarfocusInEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QFocusEvent): void =
  fcQProgressBar_virtualbase_focusInEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QProgressBarfocusOutEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QFocusEvent): void =
  fcQProgressBar_virtualbase_focusOutEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QProgressBarenterEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressBar_virtualbase_enterEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QProgressBarleaveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressBar_virtualbase_leaveEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QProgressBarmoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMoveEvent): void =
  fcQProgressBar_virtualbase_moveEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QProgressBarresizeEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QResizeEvent): void =
  fcQProgressBar_virtualbase_resizeEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QProgressBarcloseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QCloseEvent): void =
  fcQProgressBar_virtualbase_closeEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QProgressBarcontextMenuEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQProgressBar_virtualbase_contextMenuEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QProgressBartabletEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QTabletEvent): void =
  fcQProgressBar_virtualbase_tabletEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QProgressBaractionEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QActionEvent): void =
  fcQProgressBar_virtualbase_actionEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QProgressBardragEnterEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQProgressBar_virtualbase_dragEnterEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QProgressBardragMoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQProgressBar_virtualbase_dragMoveEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QProgressBardragLeaveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQProgressBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QProgressBardropEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDropEvent): void =
  fcQProgressBar_virtualbase_dropEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QProgressBarshowEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QShowEvent): void =
  fcQProgressBar_virtualbase_showEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QProgressBarhideEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QHideEvent): void =
  fcQProgressBar_virtualbase_hideEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QProgressBarnativeEvent*(self: gen_qprogressbar_types.QProgressBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQProgressBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQProgressBar_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProgressBarchangeEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQProgressBar_virtualbase_changeEvent(self.h, param1.h)

proc cQProgressBar_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QProgressBarmetric*(self: gen_qprogressbar_types.QProgressBar, param1: cint): cint =
  fcQProgressBar_virtualbase_metric(self.h, cint(param1))

proc cQProgressBar_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QProgressBarinitPainter*(self: gen_qprogressbar_types.QProgressBar, painter: gen_qpainter_types.QPainter): void =
  fcQProgressBar_virtualbase_initPainter(self.h, painter.h)

proc cQProgressBar_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QProgressBarredirected*(self: gen_qprogressbar_types.QProgressBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQProgressBar_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQProgressBar_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressBarsharedPainter*(self: gen_qprogressbar_types.QProgressBar): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQProgressBar_virtualbase_sharedPainter(self.h), owned: false)

proc cQProgressBar_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressBarinputMethodEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQProgressBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQProgressBar_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QProgressBarinputMethodQuery*(self: gen_qprogressbar_types.QProgressBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQProgressBar_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQProgressBar_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QProgressBarfocusNextPrevChild*(self: gen_qprogressbar_types.QProgressBar, next: bool): bool =
  fcQProgressBar_virtualbase_focusNextPrevChild(self.h, next)

proc cQProgressBar_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QProgressBareventFilter*(self: gen_qprogressbar_types.QProgressBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQProgressBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQProgressBar_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QProgressBartimerEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQProgressBar_virtualbase_timerEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QProgressBarchildEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQProgressBar_virtualbase_childEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QProgressBarcustomEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressBar_virtualbase_customEvent(self.h, event.h)

proc cQProgressBar_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QProgressBarconnectNotify*(self: gen_qprogressbar_types.QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProgressBar_virtualbase_connectNotify(self.h, signal.h)

proc cQProgressBar_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QProgressBardisconnectNotify*(self: gen_qprogressbar_types.QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProgressBar_virtualbase_disconnectNotify(self.h, signal.h)

proc cQProgressBar_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](fcQProgressBar_vdata(self))
  let self = QProgressBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQProgressBar* {.inheritable.} = ref object of QProgressBar
  vtbl*: cQProgressBarVTable
method metaObject*(self: VirtualQProgressBar): gen_qobjectdefs_types.QMetaObject {.base.} =
  QProgressBarmetaObject(self[])
proc cQProgressBar_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQProgressBar, param1: cstring): pointer {.base.} =
  QProgressBarmetacast(self[], param1)
proc cQProgressBar_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQProgressBar, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QProgressBarmetacall(self[], param1, param2, param3)
proc cQProgressBar_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method text*(self: VirtualQProgressBar): string {.base.} =
  QProgressBartext(self[])
proc cQProgressBar_method_callback_text(self: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var virtualReturn = inst.text()
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method sizeHint*(self: VirtualQProgressBar): gen_qsize_types.QSize {.base.} =
  QProgressBarsizeHint(self[])
proc cQProgressBar_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQProgressBar): gen_qsize_types.QSize {.base.} =
  QProgressBarminimumSizeHint(self[])
proc cQProgressBar_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQProgressBar, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QProgressBarevent(self[], e)
proc cQProgressBar_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method paintEvent*(self: VirtualQProgressBar, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QProgressBarpaintEvent(self[], param1)
proc cQProgressBar_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method devType*(self: VirtualQProgressBar): cint {.base.} =
  QProgressBardevType(self[])
proc cQProgressBar_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQProgressBar, visible: bool): void {.base.} =
  QProgressBarsetVisible(self[], visible)
proc cQProgressBar_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQProgressBar, param1: cint): cint {.base.} =
  QProgressBarheightForWidth(self[], param1)
proc cQProgressBar_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQProgressBar): bool {.base.} =
  QProgressBarhasHeightForWidth(self[])
proc cQProgressBar_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQProgressBar): gen_qpaintengine_types.QPaintEngine {.base.} =
  QProgressBarpaintEngine(self[])
proc cQProgressBar_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mousePressEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QProgressBarmousePressEvent(self[], event)
proc cQProgressBar_method_callback_mousePressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QProgressBarmouseReleaseEvent(self[], event)
proc cQProgressBar_method_callback_mouseReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QProgressBarmouseDoubleClickEvent(self[], event)
proc cQProgressBar_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QProgressBarmouseMoveEvent(self[], event)
proc cQProgressBar_method_callback_mouseMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QProgressBarwheelEvent(self[], event)
proc cQProgressBar_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyPressEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QProgressBarkeyPressEvent(self[], event)
proc cQProgressBar_method_callback_keyPressEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyPressEvent(slotval1)

method keyReleaseEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QProgressBarkeyReleaseEvent(self[], event)
proc cQProgressBar_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QProgressBarfocusInEvent(self[], event)
proc cQProgressBar_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QProgressBarfocusOutEvent(self[], event)
proc cQProgressBar_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQProgressBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QProgressBarenterEvent(self[], event)
proc cQProgressBar_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQProgressBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QProgressBarleaveEvent(self[], event)
proc cQProgressBar_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QProgressBarmoveEvent(self[], event)
proc cQProgressBar_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QProgressBarresizeEvent(self[], event)
proc cQProgressBar_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QProgressBarcloseEvent(self[], event)
proc cQProgressBar_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method contextMenuEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QProgressBarcontextMenuEvent(self[], event)
proc cQProgressBar_method_callback_contextMenuEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event, owned: false)
  inst.contextMenuEvent(slotval1)

method tabletEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QProgressBartabletEvent(self[], event)
proc cQProgressBar_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QActionEvent): void {.base.} =
  QProgressBaractionEvent(self[], event)
proc cQProgressBar_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QProgressBardragEnterEvent(self[], event)
proc cQProgressBar_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QProgressBardragMoveEvent(self[], event)
proc cQProgressBar_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QProgressBardragLeaveEvent(self[], event)
proc cQProgressBar_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QDropEvent): void {.base.} =
  QProgressBardropEvent(self[], event)
proc cQProgressBar_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QShowEvent): void {.base.} =
  QProgressBarshowEvent(self[], event)
proc cQProgressBar_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQProgressBar, event: gen_qevent_types.QHideEvent): void {.base.} =
  QProgressBarhideEvent(self[], event)
proc cQProgressBar_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQProgressBar, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QProgressBarnativeEvent(self[], eventType, message, resultVal)
proc cQProgressBar_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method changeEvent*(self: VirtualQProgressBar, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QProgressBarchangeEvent(self[], param1)
proc cQProgressBar_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method metric*(self: VirtualQProgressBar, param1: cint): cint {.base.} =
  QProgressBarmetric(self[], param1)
proc cQProgressBar_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQProgressBar, painter: gen_qpainter_types.QPainter): void {.base.} =
  QProgressBarinitPainter(self[], painter)
proc cQProgressBar_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQProgressBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QProgressBarredirected(self[], offset)
proc cQProgressBar_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQProgressBar): gen_qpainter_types.QPainter {.base.} =
  QProgressBarsharedPainter(self[])
proc cQProgressBar_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQProgressBar, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QProgressBarinputMethodEvent(self[], param1)
proc cQProgressBar_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQProgressBar, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QProgressBarinputMethodQuery(self[], param1)
proc cQProgressBar_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQProgressBar, next: bool): bool {.base.} =
  QProgressBarfocusNextPrevChild(self[], next)
proc cQProgressBar_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQProgressBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QProgressBareventFilter(self[], watched, event)
proc cQProgressBar_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQProgressBar, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QProgressBartimerEvent(self[], event)
proc cQProgressBar_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQProgressBar, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QProgressBarchildEvent(self[], event)
proc cQProgressBar_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQProgressBar, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QProgressBarcustomEvent(self[], event)
proc cQProgressBar_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QProgressBarconnectNotify(self[], signal)
proc cQProgressBar_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QProgressBardisconnectNotify(self[], signal)
proc cQProgressBar_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQProgressBar](fcQProgressBar_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc initStyleOption*(self: gen_qprogressbar_types.QProgressBar, option: gen_qstyleoption_types.QStyleOptionProgressBar): void =
  fcQProgressBar_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qprogressbar_types.QProgressBar): void =
  fcQProgressBar_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qprogressbar_types.QProgressBar): void =
  fcQProgressBar_protectedbase_create(self.h)

proc destroy*(self: gen_qprogressbar_types.QProgressBar): void =
  fcQProgressBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qprogressbar_types.QProgressBar): bool =
  fcQProgressBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qprogressbar_types.QProgressBar): bool =
  fcQProgressBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qprogressbar_types.QProgressBar): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQProgressBar_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qprogressbar_types.QProgressBar): cint =
  fcQProgressBar_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qprogressbar_types.QProgressBar, signal: cstring): cint =
  fcQProgressBar_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qprogressbar_types.QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQProgressBar_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qprogressbar_types.QProgressBar,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QProgressBarVTable = nil): gen_qprogressbar_types.QProgressBar =
  let vtbl = if vtbl == nil: new QProgressBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QProgressBarVTable](fcQProgressBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQProgressBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQProgressBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQProgressBar_vtable_callback_metacall
  if not isNil(vtbl[].text):
    vtbl[].vtbl.text = cQProgressBar_vtable_callback_text
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQProgressBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQProgressBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQProgressBar_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQProgressBar_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQProgressBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQProgressBar_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQProgressBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQProgressBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQProgressBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQProgressBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQProgressBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQProgressBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQProgressBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQProgressBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQProgressBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQProgressBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQProgressBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQProgressBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQProgressBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQProgressBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQProgressBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQProgressBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQProgressBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQProgressBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQProgressBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQProgressBar_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQProgressBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQProgressBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQProgressBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQProgressBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQProgressBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQProgressBar_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQProgressBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQProgressBar_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQProgressBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQProgressBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQProgressBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQProgressBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQProgressBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQProgressBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQProgressBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQProgressBar_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQProgressBar_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQProgressBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQProgressBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQProgressBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQProgressBar_vtable_callback_disconnectNotify
  gen_qprogressbar_types.QProgressBar(h: fcQProgressBar_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qprogressbar_types.QProgressBar,
    vtbl: ref QProgressBarVTable = nil): gen_qprogressbar_types.QProgressBar =
  let vtbl = if vtbl == nil: new QProgressBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QProgressBarVTable](fcQProgressBar_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQProgressBar_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQProgressBar_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQProgressBar_vtable_callback_metacall
  if not isNil(vtbl[].text):
    vtbl[].vtbl.text = cQProgressBar_vtable_callback_text
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQProgressBar_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQProgressBar_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQProgressBar_vtable_callback_event
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQProgressBar_vtable_callback_paintEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQProgressBar_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQProgressBar_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQProgressBar_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQProgressBar_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQProgressBar_vtable_callback_paintEngine
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQProgressBar_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQProgressBar_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQProgressBar_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQProgressBar_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQProgressBar_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQProgressBar_vtable_callback_keyPressEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQProgressBar_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQProgressBar_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQProgressBar_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQProgressBar_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQProgressBar_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQProgressBar_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQProgressBar_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQProgressBar_vtable_callback_closeEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQProgressBar_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQProgressBar_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQProgressBar_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQProgressBar_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQProgressBar_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQProgressBar_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQProgressBar_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQProgressBar_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQProgressBar_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQProgressBar_vtable_callback_nativeEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQProgressBar_vtable_callback_changeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQProgressBar_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQProgressBar_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQProgressBar_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQProgressBar_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQProgressBar_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQProgressBar_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQProgressBar_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQProgressBar_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQProgressBar_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQProgressBar_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQProgressBar_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQProgressBar_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQProgressBar_vtable_callback_disconnectNotify
  gen_qprogressbar_types.QProgressBar(h: fcQProgressBar_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQProgressBar_mvtbl = cQProgressBarVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQProgressBar()[])](self.fcQProgressBar_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQProgressBar_method_callback_metaObject,
  metacast: cQProgressBar_method_callback_metacast,
  metacall: cQProgressBar_method_callback_metacall,
  text: cQProgressBar_method_callback_text,
  sizeHint: cQProgressBar_method_callback_sizeHint,
  minimumSizeHint: cQProgressBar_method_callback_minimumSizeHint,
  event: cQProgressBar_method_callback_event,
  paintEvent: cQProgressBar_method_callback_paintEvent,
  devType: cQProgressBar_method_callback_devType,
  setVisible: cQProgressBar_method_callback_setVisible,
  heightForWidth: cQProgressBar_method_callback_heightForWidth,
  hasHeightForWidth: cQProgressBar_method_callback_hasHeightForWidth,
  paintEngine: cQProgressBar_method_callback_paintEngine,
  mousePressEvent: cQProgressBar_method_callback_mousePressEvent,
  mouseReleaseEvent: cQProgressBar_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQProgressBar_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQProgressBar_method_callback_mouseMoveEvent,
  wheelEvent: cQProgressBar_method_callback_wheelEvent,
  keyPressEvent: cQProgressBar_method_callback_keyPressEvent,
  keyReleaseEvent: cQProgressBar_method_callback_keyReleaseEvent,
  focusInEvent: cQProgressBar_method_callback_focusInEvent,
  focusOutEvent: cQProgressBar_method_callback_focusOutEvent,
  enterEvent: cQProgressBar_method_callback_enterEvent,
  leaveEvent: cQProgressBar_method_callback_leaveEvent,
  moveEvent: cQProgressBar_method_callback_moveEvent,
  resizeEvent: cQProgressBar_method_callback_resizeEvent,
  closeEvent: cQProgressBar_method_callback_closeEvent,
  contextMenuEvent: cQProgressBar_method_callback_contextMenuEvent,
  tabletEvent: cQProgressBar_method_callback_tabletEvent,
  actionEvent: cQProgressBar_method_callback_actionEvent,
  dragEnterEvent: cQProgressBar_method_callback_dragEnterEvent,
  dragMoveEvent: cQProgressBar_method_callback_dragMoveEvent,
  dragLeaveEvent: cQProgressBar_method_callback_dragLeaveEvent,
  dropEvent: cQProgressBar_method_callback_dropEvent,
  showEvent: cQProgressBar_method_callback_showEvent,
  hideEvent: cQProgressBar_method_callback_hideEvent,
  nativeEvent: cQProgressBar_method_callback_nativeEvent,
  changeEvent: cQProgressBar_method_callback_changeEvent,
  metric: cQProgressBar_method_callback_metric,
  initPainter: cQProgressBar_method_callback_initPainter,
  redirected: cQProgressBar_method_callback_redirected,
  sharedPainter: cQProgressBar_method_callback_sharedPainter,
  inputMethodEvent: cQProgressBar_method_callback_inputMethodEvent,
  inputMethodQuery: cQProgressBar_method_callback_inputMethodQuery,
  focusNextPrevChild: cQProgressBar_method_callback_focusNextPrevChild,
  eventFilter: cQProgressBar_method_callback_eventFilter,
  timerEvent: cQProgressBar_method_callback_timerEvent,
  childEvent: cQProgressBar_method_callback_childEvent,
  customEvent: cQProgressBar_method_callback_customEvent,
  connectNotify: cQProgressBar_method_callback_connectNotify,
  disconnectNotify: cQProgressBar_method_callback_disconnectNotify,
)
proc create*(T: type gen_qprogressbar_types.QProgressBar,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQProgressBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQProgressBar_new(addr(cQProgressBar_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qprogressbar_types.QProgressBar,
    inst: VirtualQProgressBar) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQProgressBar_new2(addr(cQProgressBar_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qprogressbar_types.QProgressBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressBar_staticMetaObject())
