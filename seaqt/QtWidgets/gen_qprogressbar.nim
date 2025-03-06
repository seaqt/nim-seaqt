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
{.compile("gen_qprogressbar.cpp", cflags).}


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

proc fcQProgressBar_metaObject(self: pointer, ): pointer {.importc: "QProgressBar_metaObject".}
proc fcQProgressBar_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressBar_metacast".}
proc fcQProgressBar_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressBar_metacall".}
proc fcQProgressBar_tr(s: cstring): struct_miqt_string {.importc: "QProgressBar_tr".}
proc fcQProgressBar_minimum(self: pointer, ): cint {.importc: "QProgressBar_minimum".}
proc fcQProgressBar_maximum(self: pointer, ): cint {.importc: "QProgressBar_maximum".}
proc fcQProgressBar_value(self: pointer, ): cint {.importc: "QProgressBar_value".}
proc fcQProgressBar_text(self: pointer, ): struct_miqt_string {.importc: "QProgressBar_text".}
proc fcQProgressBar_setTextVisible(self: pointer, visible: bool): void {.importc: "QProgressBar_setTextVisible".}
proc fcQProgressBar_isTextVisible(self: pointer, ): bool {.importc: "QProgressBar_isTextVisible".}
proc fcQProgressBar_alignment(self: pointer, ): cint {.importc: "QProgressBar_alignment".}
proc fcQProgressBar_setAlignment(self: pointer, alignment: cint): void {.importc: "QProgressBar_setAlignment".}
proc fcQProgressBar_sizeHint(self: pointer, ): pointer {.importc: "QProgressBar_sizeHint".}
proc fcQProgressBar_minimumSizeHint(self: pointer, ): pointer {.importc: "QProgressBar_minimumSizeHint".}
proc fcQProgressBar_orientation(self: pointer, ): cint {.importc: "QProgressBar_orientation".}
proc fcQProgressBar_setInvertedAppearance(self: pointer, invert: bool): void {.importc: "QProgressBar_setInvertedAppearance".}
proc fcQProgressBar_invertedAppearance(self: pointer, ): bool {.importc: "QProgressBar_invertedAppearance".}
proc fcQProgressBar_setTextDirection(self: pointer, textDirection: cint): void {.importc: "QProgressBar_setTextDirection".}
proc fcQProgressBar_textDirection(self: pointer, ): cint {.importc: "QProgressBar_textDirection".}
proc fcQProgressBar_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QProgressBar_setFormat".}
proc fcQProgressBar_resetFormat(self: pointer, ): void {.importc: "QProgressBar_resetFormat".}
proc fcQProgressBar_format(self: pointer, ): struct_miqt_string {.importc: "QProgressBar_format".}
proc fcQProgressBar_reset(self: pointer, ): void {.importc: "QProgressBar_reset".}
proc fcQProgressBar_setRange(self: pointer, minimum: cint, maximum: cint): void {.importc: "QProgressBar_setRange".}
proc fcQProgressBar_setMinimum(self: pointer, minimum: cint): void {.importc: "QProgressBar_setMinimum".}
proc fcQProgressBar_setMaximum(self: pointer, maximum: cint): void {.importc: "QProgressBar_setMaximum".}
proc fcQProgressBar_setValue(self: pointer, value: cint): void {.importc: "QProgressBar_setValue".}
proc fcQProgressBar_setOrientation(self: pointer, orientation: cint): void {.importc: "QProgressBar_setOrientation".}
proc fcQProgressBar_valueChanged(self: pointer, value: cint): void {.importc: "QProgressBar_valueChanged".}
proc fcQProgressBar_connect_valueChanged(self: pointer, slot: int, callback: proc (slot: int, value: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QProgressBar_connect_valueChanged".}
proc fcQProgressBar_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProgressBar_tr2".}
proc fcQProgressBar_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProgressBar_tr3".}
type cQProgressBarVTable = object
  destructor*: proc(vtbl: ptr cQProgressBarVTable, self: ptr cQProgressBar) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  text*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  initStyleOption*: proc(vtbl, self: pointer, option: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
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
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQProgressBar_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QProgressBar_virtualbase_metaObject".}
proc fcQProgressBar_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QProgressBar_virtualbase_metacast".}
proc fcQProgressBar_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProgressBar_virtualbase_metacall".}
proc fcQProgressBar_virtualbase_text(self: pointer, ): struct_miqt_string {.importc: "QProgressBar_virtualbase_text".}
proc fcQProgressBar_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QProgressBar_virtualbase_sizeHint".}
proc fcQProgressBar_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QProgressBar_virtualbase_minimumSizeHint".}
proc fcQProgressBar_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QProgressBar_virtualbase_event".}
proc fcQProgressBar_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QProgressBar_virtualbase_paintEvent".}
proc fcQProgressBar_virtualbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QProgressBar_virtualbase_initStyleOption".}
proc fcQProgressBar_virtualbase_devType(self: pointer, ): cint {.importc: "QProgressBar_virtualbase_devType".}
proc fcQProgressBar_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QProgressBar_virtualbase_setVisible".}
proc fcQProgressBar_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QProgressBar_virtualbase_heightForWidth".}
proc fcQProgressBar_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QProgressBar_virtualbase_hasHeightForWidth".}
proc fcQProgressBar_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QProgressBar_virtualbase_paintEngine".}
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
proc fcQProgressBar_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.importc: "QProgressBar_virtualbase_nativeEvent".}
proc fcQProgressBar_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QProgressBar_virtualbase_changeEvent".}
proc fcQProgressBar_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QProgressBar_virtualbase_metric".}
proc fcQProgressBar_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QProgressBar_virtualbase_initPainter".}
proc fcQProgressBar_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QProgressBar_virtualbase_redirected".}
proc fcQProgressBar_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QProgressBar_virtualbase_sharedPainter".}
proc fcQProgressBar_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QProgressBar_virtualbase_inputMethodEvent".}
proc fcQProgressBar_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QProgressBar_virtualbase_inputMethodQuery".}
proc fcQProgressBar_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QProgressBar_virtualbase_focusNextPrevChild".}
proc fcQProgressBar_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QProgressBar_virtualbase_eventFilter".}
proc fcQProgressBar_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_timerEvent".}
proc fcQProgressBar_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_childEvent".}
proc fcQProgressBar_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QProgressBar_virtualbase_customEvent".}
proc fcQProgressBar_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QProgressBar_virtualbase_connectNotify".}
proc fcQProgressBar_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QProgressBar_virtualbase_disconnectNotify".}
proc fcQProgressBar_protectedbase_updateMicroFocus(self: pointer, ): void {.importc: "QProgressBar_protectedbase_updateMicroFocus".}
proc fcQProgressBar_protectedbase_create(self: pointer, ): void {.importc: "QProgressBar_protectedbase_create".}
proc fcQProgressBar_protectedbase_destroy(self: pointer, ): void {.importc: "QProgressBar_protectedbase_destroy".}
proc fcQProgressBar_protectedbase_focusNextChild(self: pointer, ): bool {.importc: "QProgressBar_protectedbase_focusNextChild".}
proc fcQProgressBar_protectedbase_focusPreviousChild(self: pointer, ): bool {.importc: "QProgressBar_protectedbase_focusPreviousChild".}
proc fcQProgressBar_protectedbase_sender(self: pointer, ): pointer {.importc: "QProgressBar_protectedbase_sender".}
proc fcQProgressBar_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QProgressBar_protectedbase_senderSignalIndex".}
proc fcQProgressBar_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QProgressBar_protectedbase_receivers".}
proc fcQProgressBar_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QProgressBar_protectedbase_isSignalConnected".}
proc fcQProgressBar_new(vtbl: pointer, parent: pointer): ptr cQProgressBar {.importc: "QProgressBar_new".}
proc fcQProgressBar_new2(vtbl: pointer, ): ptr cQProgressBar {.importc: "QProgressBar_new2".}
proc fcQProgressBar_staticMetaObject(): pointer {.importc: "QProgressBar_staticMetaObject".}
proc fcQProgressBar_delete(self: pointer) {.importc: "QProgressBar_delete".}

proc metaObject*(self: gen_qprogressbar_types.QProgressBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressBar_metaObject(self.h))

proc metacast*(self: gen_qprogressbar_types.QProgressBar, param1: cstring): pointer =
  fcQProgressBar_metacast(self.h, param1)

proc metacall*(self: gen_qprogressbar_types.QProgressBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQProgressBar_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring): string =
  let v_ms = fcQProgressBar_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc minimum*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  fcQProgressBar_minimum(self.h)

proc maximum*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  fcQProgressBar_maximum(self.h)

proc value*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  fcQProgressBar_value(self.h)

proc text*(self: gen_qprogressbar_types.QProgressBar, ): string =
  let v_ms = fcQProgressBar_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTextVisible*(self: gen_qprogressbar_types.QProgressBar, visible: bool): void =
  fcQProgressBar_setTextVisible(self.h, visible)

proc isTextVisible*(self: gen_qprogressbar_types.QProgressBar, ): bool =
  fcQProgressBar_isTextVisible(self.h)

proc alignment*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  cint(fcQProgressBar_alignment(self.h))

proc setAlignment*(self: gen_qprogressbar_types.QProgressBar, alignment: cint): void =
  fcQProgressBar_setAlignment(self.h, cint(alignment))

proc sizeHint*(self: gen_qprogressbar_types.QProgressBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qprogressbar_types.QProgressBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_minimumSizeHint(self.h))

proc orientation*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  cint(fcQProgressBar_orientation(self.h))

proc setInvertedAppearance*(self: gen_qprogressbar_types.QProgressBar, invert: bool): void =
  fcQProgressBar_setInvertedAppearance(self.h, invert)

proc invertedAppearance*(self: gen_qprogressbar_types.QProgressBar, ): bool =
  fcQProgressBar_invertedAppearance(self.h)

proc setTextDirection*(self: gen_qprogressbar_types.QProgressBar, textDirection: cint): void =
  fcQProgressBar_setTextDirection(self.h, cint(textDirection))

proc textDirection*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  cint(fcQProgressBar_textDirection(self.h))

proc setFormat*(self: gen_qprogressbar_types.QProgressBar, format: string): void =
  fcQProgressBar_setFormat(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc resetFormat*(self: gen_qprogressbar_types.QProgressBar, ): void =
  fcQProgressBar_resetFormat(self.h)

proc format*(self: gen_qprogressbar_types.QProgressBar, ): string =
  let v_ms = fcQProgressBar_format(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc reset*(self: gen_qprogressbar_types.QProgressBar, ): void =
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
proc miqt_exec_callback_cQProgressBar_valueChanged(slot: int, value: cint) {.cdecl.} =
  let nimfunc = cast[ptr QProgressBarvalueChangedSlot](cast[pointer](slot))
  let slotval1 = value

  nimfunc[](slotval1)

proc miqt_exec_callback_cQProgressBar_valueChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QProgressBarvalueChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvalueChanged*(self: gen_qprogressbar_types.QProgressBar, slot: QProgressBarvalueChangedSlot) =
  var tmp = new QProgressBarvalueChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProgressBar_connect_valueChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQProgressBar_valueChanged, miqt_exec_callback_cQProgressBar_valueChanged_release)

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring, c: cstring): string =
  let v_ms = fcQProgressBar_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprogressbar_types.QProgressBar, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProgressBar_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QProgressBarinitStyleOptionProc* = proc(self: QProgressBar, option: gen_qstyleoption_types.QStyleOptionProgressBar): void {.raises: [], gcsafe.}
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
type QProgressBarenterEventProc* = proc(self: QProgressBar, event: gen_qevent_types.QEnterEvent): void {.raises: [], gcsafe.}
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
type QProgressBarnativeEventProc* = proc(self: QProgressBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool {.raises: [], gcsafe.}
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
type QProgressBarVTable* = object
  vtbl: cQProgressBarVTable
  metaObject*: QProgressBarmetaObjectProc
  metacast*: QProgressBarmetacastProc
  metacall*: QProgressBarmetacallProc
  text*: QProgressBartextProc
  sizeHint*: QProgressBarsizeHintProc
  minimumSizeHint*: QProgressBarminimumSizeHintProc
  event*: QProgressBareventProc
  paintEvent*: QProgressBarpaintEventProc
  initStyleOption*: QProgressBarinitStyleOptionProc
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
proc QProgressBarmetaObject*(self: gen_qprogressbar_types.QProgressBar, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressBar_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQProgressBar_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QProgressBarmetacast*(self: gen_qprogressbar_types.QProgressBar, param1: cstring): pointer =
  fcQProgressBar_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQProgressBar_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QProgressBarmetacall*(self: gen_qprogressbar_types.QProgressBar, param1: cint, param2: cint, param3: pointer): cint =
  fcQProgressBar_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQProgressBar_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProgressBartext*(self: gen_qprogressbar_types.QProgressBar, ): string =
  let v_ms = fcQProgressBar_virtualbase_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQProgressBar_text(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].text(self)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QProgressBarsizeHint*(self: gen_qprogressbar_types.QProgressBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQProgressBar_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QProgressBarminimumSizeHint*(self: gen_qprogressbar_types.QProgressBar, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQProgressBar_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQProgressBar_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QProgressBarevent*(self: gen_qprogressbar_types.QProgressBar, e: gen_qcoreevent_types.QEvent): bool =
  fcQProgressBar_virtualbase_event(self.h, e.h)

proc miqt_exec_callback_cQProgressBar_event(vtbl: pointer, self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QProgressBarpaintEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qevent_types.QPaintEvent): void =
  fcQProgressBar_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQProgressBar_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QProgressBarinitStyleOption*(self: gen_qprogressbar_types.QProgressBar, option: gen_qstyleoption_types.QStyleOptionProgressBar): void =
  fcQProgressBar_virtualbase_initStyleOption(self.h, option.h)

proc miqt_exec_callback_cQProgressBar_initStyleOption(vtbl: pointer, self: pointer, option: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qstyleoption_types.QStyleOptionProgressBar(h: option)
  vtbl[].initStyleOption(self, slotval1)

proc QProgressBardevType*(self: gen_qprogressbar_types.QProgressBar, ): cint =
  fcQProgressBar_virtualbase_devType(self.h)

proc miqt_exec_callback_cQProgressBar_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QProgressBarsetVisible*(self: gen_qprogressbar_types.QProgressBar, visible: bool): void =
  fcQProgressBar_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQProgressBar_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QProgressBarheightForWidth*(self: gen_qprogressbar_types.QProgressBar, param1: cint): cint =
  fcQProgressBar_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQProgressBar_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QProgressBarhasHeightForWidth*(self: gen_qprogressbar_types.QProgressBar, ): bool =
  fcQProgressBar_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQProgressBar_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QProgressBarpaintEngine*(self: gen_qprogressbar_types.QProgressBar, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQProgressBar_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQProgressBar_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QProgressBarmousePressEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressBar_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QProgressBarmouseReleaseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressBar_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QProgressBarmouseDoubleClickEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressBar_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QProgressBarmouseMoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMouseEvent): void =
  fcQProgressBar_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QProgressBarwheelEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QWheelEvent): void =
  fcQProgressBar_virtualbase_wheelEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_wheelEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)
  vtbl[].wheelEvent(self, slotval1)

proc QProgressBarkeyPressEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QKeyEvent): void =
  fcQProgressBar_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QProgressBarkeyReleaseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QKeyEvent): void =
  fcQProgressBar_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QProgressBarfocusInEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QFocusEvent): void =
  fcQProgressBar_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QProgressBarfocusOutEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QFocusEvent): void =
  fcQProgressBar_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QProgressBarenterEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QEnterEvent): void =
  fcQProgressBar_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QProgressBarleaveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressBar_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QProgressBarmoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QMoveEvent): void =
  fcQProgressBar_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QProgressBarresizeEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QResizeEvent): void =
  fcQProgressBar_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QProgressBarcloseEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QCloseEvent): void =
  fcQProgressBar_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QProgressBarcontextMenuEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QContextMenuEvent): void =
  fcQProgressBar_virtualbase_contextMenuEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_contextMenuEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)
  vtbl[].contextMenuEvent(self, slotval1)

proc QProgressBartabletEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QTabletEvent): void =
  fcQProgressBar_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QProgressBaractionEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QActionEvent): void =
  fcQProgressBar_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QProgressBardragEnterEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragEnterEvent): void =
  fcQProgressBar_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QProgressBardragMoveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragMoveEvent): void =
  fcQProgressBar_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QProgressBardragLeaveEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQProgressBar_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QProgressBardropEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QDropEvent): void =
  fcQProgressBar_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QProgressBarshowEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QShowEvent): void =
  fcQProgressBar_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QProgressBarhideEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qevent_types.QHideEvent): void =
  fcQProgressBar_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QProgressBarnativeEvent*(self: gen_qprogressbar_types.QProgressBar, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fcQProgressBar_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQProgressBar_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProgressBarchangeEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qcoreevent_types.QEvent): void =
  fcQProgressBar_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQProgressBar_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QProgressBarmetric*(self: gen_qprogressbar_types.QProgressBar, param1: cint): cint =
  fcQProgressBar_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQProgressBar_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QProgressBarinitPainter*(self: gen_qprogressbar_types.QProgressBar, painter: gen_qpainter_types.QPainter): void =
  fcQProgressBar_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQProgressBar_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QProgressBarredirected*(self: gen_qprogressbar_types.QProgressBar, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQProgressBar_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQProgressBar_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QProgressBarsharedPainter*(self: gen_qprogressbar_types.QProgressBar, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQProgressBar_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQProgressBar_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QProgressBarinputMethodEvent*(self: gen_qprogressbar_types.QProgressBar, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQProgressBar_virtualbase_inputMethodEvent(self.h, param1.h)

proc miqt_exec_callback_cQProgressBar_inputMethodEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)
  vtbl[].inputMethodEvent(self, slotval1)

proc QProgressBarinputMethodQuery*(self: gen_qprogressbar_types.QProgressBar, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQProgressBar_virtualbase_inputMethodQuery(self.h, cint(param1)))

proc miqt_exec_callback_cQProgressBar_inputMethodQuery(vtbl: pointer, self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QProgressBarfocusNextPrevChild*(self: gen_qprogressbar_types.QProgressBar, next: bool): bool =
  fcQProgressBar_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQProgressBar_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QProgressBareventFilter*(self: gen_qprogressbar_types.QProgressBar, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQProgressBar_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQProgressBar_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QProgressBartimerEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQProgressBar_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QProgressBarchildEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QChildEvent): void =
  fcQProgressBar_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QProgressBarcustomEvent*(self: gen_qprogressbar_types.QProgressBar, event: gen_qcoreevent_types.QEvent): void =
  fcQProgressBar_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQProgressBar_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QProgressBarconnectNotify*(self: gen_qprogressbar_types.QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProgressBar_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQProgressBar_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QProgressBardisconnectNotify*(self: gen_qprogressbar_types.QProgressBar, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProgressBar_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQProgressBar_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProgressBarVTable](vtbl)
  let self = QProgressBar(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc updateMicroFocus*(self: gen_qprogressbar_types.QProgressBar, ): void =
  fcQProgressBar_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qprogressbar_types.QProgressBar, ): void =
  fcQProgressBar_protectedbase_create(self.h)

proc destroy*(self: gen_qprogressbar_types.QProgressBar, ): void =
  fcQProgressBar_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qprogressbar_types.QProgressBar, ): bool =
  fcQProgressBar_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qprogressbar_types.QProgressBar, ): bool =
  fcQProgressBar_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qprogressbar_types.QProgressBar, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQProgressBar_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qprogressbar_types.QProgressBar, ): cint =
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
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProgressBarVTable, _: ptr cQProgressBar) {.cdecl.} =
    let vtbl = cast[ref QProgressBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProgressBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProgressBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProgressBar_metacall
  if not isNil(vtbl.text):
    vtbl[].vtbl.text = miqt_exec_callback_cQProgressBar_text
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQProgressBar_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQProgressBar_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProgressBar_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQProgressBar_paintEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQProgressBar_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQProgressBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQProgressBar_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQProgressBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQProgressBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQProgressBar_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQProgressBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQProgressBar_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQProgressBar_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQProgressBar_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQProgressBar_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQProgressBar_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQProgressBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQProgressBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQProgressBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQProgressBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQProgressBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQProgressBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQProgressBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQProgressBar_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQProgressBar_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQProgressBar_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQProgressBar_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQProgressBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQProgressBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQProgressBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQProgressBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQProgressBar_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQProgressBar_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQProgressBar_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQProgressBar_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQProgressBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQProgressBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQProgressBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQProgressBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQProgressBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQProgressBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQProgressBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProgressBar_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProgressBar_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProgressBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProgressBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProgressBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProgressBar_disconnectNotify
  gen_qprogressbar_types.QProgressBar(h: fcQProgressBar_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qprogressbar_types.QProgressBar,
    vtbl: ref QProgressBarVTable = nil): gen_qprogressbar_types.QProgressBar =
  let vtbl = if vtbl == nil: new QProgressBarVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProgressBarVTable, _: ptr cQProgressBar) {.cdecl.} =
    let vtbl = cast[ref QProgressBarVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProgressBar_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProgressBar_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProgressBar_metacall
  if not isNil(vtbl.text):
    vtbl[].vtbl.text = miqt_exec_callback_cQProgressBar_text
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQProgressBar_sizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQProgressBar_minimumSizeHint
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProgressBar_event
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQProgressBar_paintEvent
  if not isNil(vtbl.initStyleOption):
    vtbl[].vtbl.initStyleOption = miqt_exec_callback_cQProgressBar_initStyleOption
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQProgressBar_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQProgressBar_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQProgressBar_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQProgressBar_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQProgressBar_paintEngine
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQProgressBar_mousePressEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQProgressBar_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQProgressBar_mouseDoubleClickEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQProgressBar_mouseMoveEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQProgressBar_wheelEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQProgressBar_keyPressEvent
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQProgressBar_keyReleaseEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQProgressBar_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQProgressBar_focusOutEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQProgressBar_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQProgressBar_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQProgressBar_moveEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQProgressBar_resizeEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQProgressBar_closeEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQProgressBar_contextMenuEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQProgressBar_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQProgressBar_actionEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQProgressBar_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQProgressBar_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQProgressBar_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQProgressBar_dropEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQProgressBar_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQProgressBar_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQProgressBar_nativeEvent
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQProgressBar_changeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQProgressBar_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQProgressBar_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQProgressBar_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQProgressBar_sharedPainter
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQProgressBar_inputMethodEvent
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQProgressBar_inputMethodQuery
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQProgressBar_focusNextPrevChild
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProgressBar_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProgressBar_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProgressBar_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProgressBar_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProgressBar_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProgressBar_disconnectNotify
  gen_qprogressbar_types.QProgressBar(h: fcQProgressBar_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qprogressbar_types.QProgressBar): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProgressBar_staticMetaObject())
proc delete*(self: gen_qprogressbar_types.QProgressBar) =
  fcQProgressBar_delete(self.h)
