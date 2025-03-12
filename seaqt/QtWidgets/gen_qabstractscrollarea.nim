import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt5Widgets") & " -fPIC"
{.compile("gen_qabstractscrollarea.cpp", cflags).}


type QAbstractScrollAreaSizeAdjustPolicyEnum* = distinct cint
template AdjustIgnored*(_: type QAbstractScrollAreaSizeAdjustPolicyEnum): untyped = 0
template AdjustToContentsOnFirstShow*(_: type QAbstractScrollAreaSizeAdjustPolicyEnum): untyped = 1
template AdjustToContents*(_: type QAbstractScrollAreaSizeAdjustPolicyEnum): untyped = 2


import ./gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmargins_types,
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
  ./gen_qframe,
  ./gen_qscrollbar_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmargins_types,
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
  gen_qframe,
  gen_qscrollbar_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQAbstractScrollArea*{.exportc: "QAbstractScrollArea", incompleteStruct.} = object

proc fcQAbstractScrollArea_metaObject(self: pointer): pointer {.importc: "QAbstractScrollArea_metaObject".}
proc fcQAbstractScrollArea_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractScrollArea_metacast".}
proc fcQAbstractScrollArea_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractScrollArea_metacall".}
proc fcQAbstractScrollArea_tr(s: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_tr".}
proc fcQAbstractScrollArea_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_trUtf8".}
proc fcQAbstractScrollArea_verticalScrollBarPolicy(self: pointer): cint {.importc: "QAbstractScrollArea_verticalScrollBarPolicy".}
proc fcQAbstractScrollArea_setVerticalScrollBarPolicy(self: pointer, verticalScrollBarPolicy: cint): void {.importc: "QAbstractScrollArea_setVerticalScrollBarPolicy".}
proc fcQAbstractScrollArea_verticalScrollBar(self: pointer): pointer {.importc: "QAbstractScrollArea_verticalScrollBar".}
proc fcQAbstractScrollArea_setVerticalScrollBar(self: pointer, scrollbar: pointer): void {.importc: "QAbstractScrollArea_setVerticalScrollBar".}
proc fcQAbstractScrollArea_horizontalScrollBarPolicy(self: pointer): cint {.importc: "QAbstractScrollArea_horizontalScrollBarPolicy".}
proc fcQAbstractScrollArea_setHorizontalScrollBarPolicy(self: pointer, horizontalScrollBarPolicy: cint): void {.importc: "QAbstractScrollArea_setHorizontalScrollBarPolicy".}
proc fcQAbstractScrollArea_horizontalScrollBar(self: pointer): pointer {.importc: "QAbstractScrollArea_horizontalScrollBar".}
proc fcQAbstractScrollArea_setHorizontalScrollBar(self: pointer, scrollbar: pointer): void {.importc: "QAbstractScrollArea_setHorizontalScrollBar".}
proc fcQAbstractScrollArea_cornerWidget(self: pointer): pointer {.importc: "QAbstractScrollArea_cornerWidget".}
proc fcQAbstractScrollArea_setCornerWidget(self: pointer, widget: pointer): void {.importc: "QAbstractScrollArea_setCornerWidget".}
proc fcQAbstractScrollArea_addScrollBarWidget(self: pointer, widget: pointer, alignment: cint): void {.importc: "QAbstractScrollArea_addScrollBarWidget".}
proc fcQAbstractScrollArea_scrollBarWidgets(self: pointer, alignment: cint): struct_miqt_array {.importc: "QAbstractScrollArea_scrollBarWidgets".}
proc fcQAbstractScrollArea_viewport(self: pointer): pointer {.importc: "QAbstractScrollArea_viewport".}
proc fcQAbstractScrollArea_setViewport(self: pointer, widget: pointer): void {.importc: "QAbstractScrollArea_setViewport".}
proc fcQAbstractScrollArea_maximumViewportSize(self: pointer): pointer {.importc: "QAbstractScrollArea_maximumViewportSize".}
proc fcQAbstractScrollArea_minimumSizeHint(self: pointer): pointer {.importc: "QAbstractScrollArea_minimumSizeHint".}
proc fcQAbstractScrollArea_sizeHint(self: pointer): pointer {.importc: "QAbstractScrollArea_sizeHint".}
proc fcQAbstractScrollArea_setupViewport(self: pointer, viewport: pointer): void {.importc: "QAbstractScrollArea_setupViewport".}
proc fcQAbstractScrollArea_sizeAdjustPolicy(self: pointer): cint {.importc: "QAbstractScrollArea_sizeAdjustPolicy".}
proc fcQAbstractScrollArea_setSizeAdjustPolicy(self: pointer, policy: cint): void {.importc: "QAbstractScrollArea_setSizeAdjustPolicy".}
proc fcQAbstractScrollArea_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_tr2".}
proc fcQAbstractScrollArea_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractScrollArea_tr3".}
proc fcQAbstractScrollArea_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractScrollArea_trUtf82".}
proc fcQAbstractScrollArea_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractScrollArea_trUtf83".}
proc fcQAbstractScrollArea_vtbl(self: pointer): pointer {.importc: "QAbstractScrollArea_vtbl".}
proc fcQAbstractScrollArea_vdata(self: pointer): pointer {.importc: "QAbstractScrollArea_vdata".}
type cQAbstractScrollAreaVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, param1: pointer, param2: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(self: pointer, param1: pointer): bool {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractScrollArea_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractScrollArea_virtualbase_metaObject".}
proc fcQAbstractScrollArea_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractScrollArea_virtualbase_metacast".}
proc fcQAbstractScrollArea_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractScrollArea_virtualbase_metacall".}
proc fcQAbstractScrollArea_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QAbstractScrollArea_virtualbase_minimumSizeHint".}
proc fcQAbstractScrollArea_virtualbase_sizeHint(self: pointer): pointer {.importc: "QAbstractScrollArea_virtualbase_sizeHint".}
proc fcQAbstractScrollArea_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QAbstractScrollArea_virtualbase_setupViewport".}
proc fcQAbstractScrollArea_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QAbstractScrollArea_virtualbase_eventFilter".}
proc fcQAbstractScrollArea_virtualbase_event(self: pointer, param1: pointer): bool {.importc: "QAbstractScrollArea_virtualbase_event".}
proc fcQAbstractScrollArea_virtualbase_viewportEvent(self: pointer, param1: pointer): bool {.importc: "QAbstractScrollArea_virtualbase_viewportEvent".}
proc fcQAbstractScrollArea_virtualbase_resizeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_resizeEvent".}
proc fcQAbstractScrollArea_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_paintEvent".}
proc fcQAbstractScrollArea_virtualbase_mousePressEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_mousePressEvent".}
proc fcQAbstractScrollArea_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_mouseReleaseEvent".}
proc fcQAbstractScrollArea_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractScrollArea_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_mouseMoveEvent".}
proc fcQAbstractScrollArea_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_wheelEvent".}
proc fcQAbstractScrollArea_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_contextMenuEvent".}
proc fcQAbstractScrollArea_virtualbase_dragEnterEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_dragEnterEvent".}
proc fcQAbstractScrollArea_virtualbase_dragMoveEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_dragMoveEvent".}
proc fcQAbstractScrollArea_virtualbase_dragLeaveEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_dragLeaveEvent".}
proc fcQAbstractScrollArea_virtualbase_dropEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_dropEvent".}
proc fcQAbstractScrollArea_virtualbase_keyPressEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_keyPressEvent".}
proc fcQAbstractScrollArea_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QAbstractScrollArea_virtualbase_scrollContentsBy".}
proc fcQAbstractScrollArea_virtualbase_viewportSizeHint(self: pointer): pointer {.importc: "QAbstractScrollArea_virtualbase_viewportSizeHint".}
proc fcQAbstractScrollArea_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_changeEvent".}
proc fcQAbstractScrollArea_virtualbase_devType(self: pointer): cint {.importc: "QAbstractScrollArea_virtualbase_devType".}
proc fcQAbstractScrollArea_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractScrollArea_virtualbase_setVisible".}
proc fcQAbstractScrollArea_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractScrollArea_virtualbase_heightForWidth".}
proc fcQAbstractScrollArea_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QAbstractScrollArea_virtualbase_hasHeightForWidth".}
proc fcQAbstractScrollArea_virtualbase_paintEngine(self: pointer): pointer {.importc: "QAbstractScrollArea_virtualbase_paintEngine".}
proc fcQAbstractScrollArea_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_keyReleaseEvent".}
proc fcQAbstractScrollArea_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_focusInEvent".}
proc fcQAbstractScrollArea_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_focusOutEvent".}
proc fcQAbstractScrollArea_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_enterEvent".}
proc fcQAbstractScrollArea_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_leaveEvent".}
proc fcQAbstractScrollArea_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_moveEvent".}
proc fcQAbstractScrollArea_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_closeEvent".}
proc fcQAbstractScrollArea_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_tabletEvent".}
proc fcQAbstractScrollArea_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_actionEvent".}
proc fcQAbstractScrollArea_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_showEvent".}
proc fcQAbstractScrollArea_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_hideEvent".}
proc fcQAbstractScrollArea_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractScrollArea_virtualbase_nativeEvent".}
proc fcQAbstractScrollArea_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractScrollArea_virtualbase_metric".}
proc fcQAbstractScrollArea_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractScrollArea_virtualbase_initPainter".}
proc fcQAbstractScrollArea_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractScrollArea_virtualbase_redirected".}
proc fcQAbstractScrollArea_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QAbstractScrollArea_virtualbase_sharedPainter".}
proc fcQAbstractScrollArea_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_virtualbase_inputMethodEvent".}
proc fcQAbstractScrollArea_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QAbstractScrollArea_virtualbase_inputMethodQuery".}
proc fcQAbstractScrollArea_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractScrollArea_virtualbase_focusNextPrevChild".}
proc fcQAbstractScrollArea_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_timerEvent".}
proc fcQAbstractScrollArea_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_childEvent".}
proc fcQAbstractScrollArea_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractScrollArea_virtualbase_customEvent".}
proc fcQAbstractScrollArea_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractScrollArea_virtualbase_connectNotify".}
proc fcQAbstractScrollArea_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractScrollArea_virtualbase_disconnectNotify".}
proc fcQAbstractScrollArea_protectedbase_setViewportMargins(self: pointer, left: cint, top: cint, right: cint, bottom: cint): void {.importc: "QAbstractScrollArea_protectedbase_setViewportMargins".}
proc fcQAbstractScrollArea_protectedbase_setViewportMarginsWithMargins(self: pointer, margins: pointer): void {.importc: "QAbstractScrollArea_protectedbase_setViewportMarginsWithMargins".}
proc fcQAbstractScrollArea_protectedbase_viewportMargins(self: pointer): pointer {.importc: "QAbstractScrollArea_protectedbase_viewportMargins".}
proc fcQAbstractScrollArea_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QAbstractScrollArea_protectedbase_drawFrame".}
proc fcQAbstractScrollArea_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QAbstractScrollArea_protectedbase_initStyleOption".}
proc fcQAbstractScrollArea_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QAbstractScrollArea_protectedbase_updateMicroFocus".}
proc fcQAbstractScrollArea_protectedbase_create(self: pointer): void {.importc: "QAbstractScrollArea_protectedbase_create".}
proc fcQAbstractScrollArea_protectedbase_destroy(self: pointer): void {.importc: "QAbstractScrollArea_protectedbase_destroy".}
proc fcQAbstractScrollArea_protectedbase_focusNextChild(self: pointer): bool {.importc: "QAbstractScrollArea_protectedbase_focusNextChild".}
proc fcQAbstractScrollArea_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QAbstractScrollArea_protectedbase_focusPreviousChild".}
proc fcQAbstractScrollArea_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractScrollArea_protectedbase_sender".}
proc fcQAbstractScrollArea_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractScrollArea_protectedbase_senderSignalIndex".}
proc fcQAbstractScrollArea_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractScrollArea_protectedbase_receivers".}
proc fcQAbstractScrollArea_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractScrollArea_protectedbase_isSignalConnected".}
proc fcQAbstractScrollArea_new(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractScrollArea {.importc: "QAbstractScrollArea_new".}
proc fcQAbstractScrollArea_new2(vtbl, vdata: pointer): ptr cQAbstractScrollArea {.importc: "QAbstractScrollArea_new2".}
proc fcQAbstractScrollArea_staticMetaObject(): pointer {.importc: "QAbstractScrollArea_staticMetaObject".}

proc metaObject*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractScrollArea_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cstring): pointer =
  fcQAbstractScrollArea_metacast(self.h, param1)

proc metacall*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractScrollArea_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring): string =
  let v_ms = fcQAbstractScrollArea_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring): string =
  let v_ms = fcQAbstractScrollArea_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc verticalScrollBarPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): cint =
  cint(fcQAbstractScrollArea_verticalScrollBarPolicy(self.h))

proc setVerticalScrollBarPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, verticalScrollBarPolicy: cint): void =
  fcQAbstractScrollArea_setVerticalScrollBarPolicy(self.h, cint(verticalScrollBarPolicy))

proc verticalScrollBar*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qscrollbar_types.QScrollBar =
  gen_qscrollbar_types.QScrollBar(h: fcQAbstractScrollArea_verticalScrollBar(self.h), owned: false)

proc setVerticalScrollBar*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, scrollbar: gen_qscrollbar_types.QScrollBar): void =
  fcQAbstractScrollArea_setVerticalScrollBar(self.h, scrollbar.h)

proc horizontalScrollBarPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): cint =
  cint(fcQAbstractScrollArea_horizontalScrollBarPolicy(self.h))

proc setHorizontalScrollBarPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, horizontalScrollBarPolicy: cint): void =
  fcQAbstractScrollArea_setHorizontalScrollBarPolicy(self.h, cint(horizontalScrollBarPolicy))

proc horizontalScrollBar*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qscrollbar_types.QScrollBar =
  gen_qscrollbar_types.QScrollBar(h: fcQAbstractScrollArea_horizontalScrollBar(self.h), owned: false)

proc setHorizontalScrollBar*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, scrollbar: gen_qscrollbar_types.QScrollBar): void =
  fcQAbstractScrollArea_setHorizontalScrollBar(self.h, scrollbar.h)

proc cornerWidget*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractScrollArea_cornerWidget(self.h), owned: false)

proc setCornerWidget*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, widget: gen_qwidget_types.QWidget): void =
  fcQAbstractScrollArea_setCornerWidget(self.h, widget.h)

proc addScrollBarWidget*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, widget: gen_qwidget_types.QWidget, alignment: cint): void =
  fcQAbstractScrollArea_addScrollBarWidget(self.h, widget.h, cint(alignment))

proc scrollBarWidgets*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, alignment: cint): seq[gen_qwidget_types.QWidget] =
  var v_ma = fcQAbstractScrollArea_scrollBarWidgets(self.h, cint(alignment))
  var vx_ret = newSeq[gen_qwidget_types.QWidget](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwidget_types.QWidget(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc viewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractScrollArea_viewport(self.h), owned: false)

proc setViewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, widget: gen_qwidget_types.QWidget): void =
  fcQAbstractScrollArea_setViewport(self.h, widget.h)

proc maximumViewportSize*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_maximumViewportSize(self.h), owned: true)

proc minimumSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_minimumSizeHint(self.h), owned: true)

proc sizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_sizeHint(self.h), owned: true)

proc setupViewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, viewport: gen_qwidget_types.QWidget): void =
  fcQAbstractScrollArea_setupViewport(self.h, viewport.h)

proc sizeAdjustPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): cint =
  cint(fcQAbstractScrollArea_sizeAdjustPolicy(self.h))

proc setSizeAdjustPolicy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, policy: cint): void =
  fcQAbstractScrollArea_setSizeAdjustPolicy(self.h, cint(policy))

proc tr*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractScrollArea_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractScrollArea_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractScrollArea_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractScrollArea_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractScrollAreametaObjectProc* = proc(self: QAbstractScrollArea): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractScrollAreametacastProc* = proc(self: QAbstractScrollArea, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractScrollAreametacallProc* = proc(self: QAbstractScrollArea, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractScrollAreaminimumSizeHintProc* = proc(self: QAbstractScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractScrollAreasizeHintProc* = proc(self: QAbstractScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractScrollAreasetupViewportProc* = proc(self: QAbstractScrollArea, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QAbstractScrollAreaeventFilterProc* = proc(self: QAbstractScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractScrollAreaeventProc* = proc(self: QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractScrollAreaviewportEventProc* = proc(self: QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractScrollArearesizeEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreapaintEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamousePressEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamouseReleaseEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamouseDoubleClickEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamouseMoveEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreawheelEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreacontextMenuEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadragEnterEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadragMoveEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadragLeaveEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadropEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreakeyPressEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreascrollContentsByProc* = proc(self: QAbstractScrollArea, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QAbstractScrollAreaviewportSizeHintProc* = proc(self: QAbstractScrollArea): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractScrollAreachangeEventProc* = proc(self: QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreadevTypeProc* = proc(self: QAbstractScrollArea): cint {.raises: [], gcsafe.}
type QAbstractScrollAreasetVisibleProc* = proc(self: QAbstractScrollArea, visible: bool): void {.raises: [], gcsafe.}
type QAbstractScrollAreaheightForWidthProc* = proc(self: QAbstractScrollArea, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractScrollAreahasHeightForWidthProc* = proc(self: QAbstractScrollArea): bool {.raises: [], gcsafe.}
type QAbstractScrollAreapaintEngineProc* = proc(self: QAbstractScrollArea): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QAbstractScrollAreakeyReleaseEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreafocusInEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreafocusOutEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreaenterEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractScrollArealeaveEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreamoveEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreacloseEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreatabletEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreaactionEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreashowEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreahideEventProc* = proc(self: QAbstractScrollArea, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreanativeEventProc* = proc(self: QAbstractScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractScrollAreametricProc* = proc(self: QAbstractScrollArea, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractScrollAreainitPainterProc* = proc(self: QAbstractScrollArea, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QAbstractScrollArearedirectedProc* = proc(self: QAbstractScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QAbstractScrollAreasharedPainterProc* = proc(self: QAbstractScrollArea): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QAbstractScrollAreainputMethodEventProc* = proc(self: QAbstractScrollArea, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreainputMethodQueryProc* = proc(self: QAbstractScrollArea, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractScrollAreafocusNextPrevChildProc* = proc(self: QAbstractScrollArea, next: bool): bool {.raises: [], gcsafe.}
type QAbstractScrollAreatimerEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreachildEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreacustomEventProc* = proc(self: QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractScrollAreaconnectNotifyProc* = proc(self: QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractScrollAreadisconnectNotifyProc* = proc(self: QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractScrollAreaVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractScrollAreaVTable
  metaObject*: QAbstractScrollAreametaObjectProc
  metacast*: QAbstractScrollAreametacastProc
  metacall*: QAbstractScrollAreametacallProc
  minimumSizeHint*: QAbstractScrollAreaminimumSizeHintProc
  sizeHint*: QAbstractScrollAreasizeHintProc
  setupViewport*: QAbstractScrollAreasetupViewportProc
  eventFilter*: QAbstractScrollAreaeventFilterProc
  event*: QAbstractScrollAreaeventProc
  viewportEvent*: QAbstractScrollAreaviewportEventProc
  resizeEvent*: QAbstractScrollArearesizeEventProc
  paintEvent*: QAbstractScrollAreapaintEventProc
  mousePressEvent*: QAbstractScrollAreamousePressEventProc
  mouseReleaseEvent*: QAbstractScrollAreamouseReleaseEventProc
  mouseDoubleClickEvent*: QAbstractScrollAreamouseDoubleClickEventProc
  mouseMoveEvent*: QAbstractScrollAreamouseMoveEventProc
  wheelEvent*: QAbstractScrollAreawheelEventProc
  contextMenuEvent*: QAbstractScrollAreacontextMenuEventProc
  dragEnterEvent*: QAbstractScrollAreadragEnterEventProc
  dragMoveEvent*: QAbstractScrollAreadragMoveEventProc
  dragLeaveEvent*: QAbstractScrollAreadragLeaveEventProc
  dropEvent*: QAbstractScrollAreadropEventProc
  keyPressEvent*: QAbstractScrollAreakeyPressEventProc
  scrollContentsBy*: QAbstractScrollAreascrollContentsByProc
  viewportSizeHint*: QAbstractScrollAreaviewportSizeHintProc
  changeEvent*: QAbstractScrollAreachangeEventProc
  devType*: QAbstractScrollAreadevTypeProc
  setVisible*: QAbstractScrollAreasetVisibleProc
  heightForWidth*: QAbstractScrollAreaheightForWidthProc
  hasHeightForWidth*: QAbstractScrollAreahasHeightForWidthProc
  paintEngine*: QAbstractScrollAreapaintEngineProc
  keyReleaseEvent*: QAbstractScrollAreakeyReleaseEventProc
  focusInEvent*: QAbstractScrollAreafocusInEventProc
  focusOutEvent*: QAbstractScrollAreafocusOutEventProc
  enterEvent*: QAbstractScrollAreaenterEventProc
  leaveEvent*: QAbstractScrollArealeaveEventProc
  moveEvent*: QAbstractScrollAreamoveEventProc
  closeEvent*: QAbstractScrollAreacloseEventProc
  tabletEvent*: QAbstractScrollAreatabletEventProc
  actionEvent*: QAbstractScrollAreaactionEventProc
  showEvent*: QAbstractScrollAreashowEventProc
  hideEvent*: QAbstractScrollAreahideEventProc
  nativeEvent*: QAbstractScrollAreanativeEventProc
  metric*: QAbstractScrollAreametricProc
  initPainter*: QAbstractScrollAreainitPainterProc
  redirected*: QAbstractScrollArearedirectedProc
  sharedPainter*: QAbstractScrollAreasharedPainterProc
  inputMethodEvent*: QAbstractScrollAreainputMethodEventProc
  inputMethodQuery*: QAbstractScrollAreainputMethodQueryProc
  focusNextPrevChild*: QAbstractScrollAreafocusNextPrevChildProc
  timerEvent*: QAbstractScrollAreatimerEventProc
  childEvent*: QAbstractScrollAreachildEventProc
  customEvent*: QAbstractScrollAreacustomEventProc
  connectNotify*: QAbstractScrollAreaconnectNotifyProc
  disconnectNotify*: QAbstractScrollAreadisconnectNotifyProc
proc QAbstractScrollAreametaObject*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractScrollArea_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractScrollArea_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractScrollAreametacast*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cstring): pointer =
  fcQAbstractScrollArea_virtualbase_metacast(self.h, param1)

proc cQAbstractScrollArea_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractScrollAreametacall*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractScrollArea_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractScrollArea_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractScrollAreaminimumSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQAbstractScrollArea_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractScrollAreasizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_virtualbase_sizeHint(self.h), owned: true)

proc cQAbstractScrollArea_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractScrollAreasetupViewport*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, viewport: gen_qwidget_types.QWidget): void =
  fcQAbstractScrollArea_virtualbase_setupViewport(self.h, viewport.h)

proc cQAbstractScrollArea_vtable_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  vtbl[].setupViewport(self, slotval1)

proc QAbstractScrollAreaeventFilter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractScrollArea_virtualbase_eventFilter(self.h, param1.h, param2.h)

proc cQAbstractScrollArea_vtable_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractScrollAreaevent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractScrollArea_virtualbase_event(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractScrollAreaviewportEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractScrollArea_virtualbase_viewportEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QAbstractScrollArearesizeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QResizeEvent): void =
  fcQAbstractScrollArea_virtualbase_resizeEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractScrollAreapaintEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QPaintEvent): void =
  fcQAbstractScrollArea_virtualbase_paintEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractScrollAreamousePressEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQAbstractScrollArea_virtualbase_mousePressEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractScrollAreamouseReleaseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQAbstractScrollArea_virtualbase_mouseReleaseEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractScrollAreamouseDoubleClickEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQAbstractScrollArea_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractScrollAreamouseMoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void =
  fcQAbstractScrollArea_virtualbase_mouseMoveEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractScrollAreawheelEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QWheelEvent): void =
  fcQAbstractScrollArea_virtualbase_wheelEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractScrollAreacontextMenuEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractScrollArea_virtualbase_contextMenuEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractScrollAreadragEnterEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractScrollArea_virtualbase_dragEnterEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractScrollAreadragMoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractScrollArea_virtualbase_dragMoveEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractScrollAreadragLeaveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractScrollArea_virtualbase_dragLeaveEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractScrollAreadropEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QDropEvent): void =
  fcQAbstractScrollArea_virtualbase_dropEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractScrollAreakeyPressEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QKeyEvent): void =
  fcQAbstractScrollArea_virtualbase_keyPressEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractScrollAreascrollContentsBy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, dx: cint, dy: cint): void =
  fcQAbstractScrollArea_virtualbase_scrollContentsBy(self.h, dx, dy)

proc cQAbstractScrollArea_vtable_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QAbstractScrollAreaviewportSizeHint*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractScrollArea_virtualbase_viewportSizeHint(self.h), owned: true)

proc cQAbstractScrollArea_vtable_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractScrollAreachangeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): void =
  fcQAbstractScrollArea_virtualbase_changeEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractScrollAreadevType*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): cint =
  fcQAbstractScrollArea_virtualbase_devType(self.h)

proc cQAbstractScrollArea_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractScrollAreasetVisible*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, visible: bool): void =
  fcQAbstractScrollArea_virtualbase_setVisible(self.h, visible)

proc cQAbstractScrollArea_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractScrollAreaheightForWidth*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): cint =
  fcQAbstractScrollArea_virtualbase_heightForWidth(self.h, param1)

proc cQAbstractScrollArea_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractScrollAreahasHeightForWidth*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): bool =
  fcQAbstractScrollArea_virtualbase_hasHeightForWidth(self.h)

proc cQAbstractScrollArea_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractScrollAreapaintEngine*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractScrollArea_virtualbase_paintEngine(self.h), owned: false)

proc cQAbstractScrollArea_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractScrollAreakeyReleaseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractScrollArea_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractScrollAreafocusInEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractScrollArea_virtualbase_focusInEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractScrollAreafocusOutEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractScrollArea_virtualbase_focusOutEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractScrollAreaenterEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractScrollArea_virtualbase_enterEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractScrollArealeaveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractScrollArea_virtualbase_leaveEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractScrollAreamoveEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractScrollArea_virtualbase_moveEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractScrollAreacloseEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractScrollArea_virtualbase_closeEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractScrollAreatabletEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractScrollArea_virtualbase_tabletEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractScrollAreaactionEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractScrollArea_virtualbase_actionEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractScrollAreashowEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractScrollArea_virtualbase_showEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QAbstractScrollAreahideEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractScrollArea_virtualbase_hideEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractScrollAreanativeEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractScrollArea_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQAbstractScrollArea_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractScrollAreametric*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): cint =
  fcQAbstractScrollArea_virtualbase_metric(self.h, cint(param1))

proc cQAbstractScrollArea_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractScrollAreainitPainter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractScrollArea_virtualbase_initPainter(self.h, painter.h)

proc cQAbstractScrollArea_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QAbstractScrollArearedirected*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractScrollArea_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQAbstractScrollArea_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractScrollAreasharedPainter*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractScrollArea_virtualbase_sharedPainter(self.h), owned: false)

proc cQAbstractScrollArea_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractScrollAreainputMethodEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractScrollArea_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQAbstractScrollArea_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractScrollAreainputMethodQuery*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractScrollArea_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQAbstractScrollArea_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractScrollAreafocusNextPrevChild*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, next: bool): bool =
  fcQAbstractScrollArea_virtualbase_focusNextPrevChild(self.h, next)

proc cQAbstractScrollArea_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractScrollAreatimerEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractScrollArea_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractScrollAreachildEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractScrollArea_virtualbase_childEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractScrollAreacustomEvent*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractScrollArea_virtualbase_customEvent(self.h, event.h)

proc cQAbstractScrollArea_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractScrollAreaconnectNotify*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractScrollArea_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractScrollArea_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractScrollAreadisconnectNotify*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractScrollArea_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractScrollArea_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
  let self = QAbstractScrollArea(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractScrollArea* {.inheritable.} = ref object of QAbstractScrollArea
  vtbl*: cQAbstractScrollAreaVTable
method metaObject*(self: VirtualQAbstractScrollArea): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractScrollAreametaObject(self[])
proc cQAbstractScrollArea_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractScrollArea, param1: cstring): pointer {.base.} =
  QAbstractScrollAreametacast(self[], param1)
proc cQAbstractScrollArea_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractScrollArea, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractScrollAreametacall(self[], param1, param2, param3)
proc cQAbstractScrollArea_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method minimumSizeHint*(self: VirtualQAbstractScrollArea): gen_qsize_types.QSize {.base.} =
  QAbstractScrollAreaminimumSizeHint(self[])
proc cQAbstractScrollArea_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQAbstractScrollArea): gen_qsize_types.QSize {.base.} =
  QAbstractScrollAreasizeHint(self[])
proc cQAbstractScrollArea_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setupViewport*(self: VirtualQAbstractScrollArea, viewport: gen_qwidget_types.QWidget): void {.base.} =
  QAbstractScrollAreasetupViewport(self[], viewport)
proc cQAbstractScrollArea_method_callback_setupViewport(self: pointer, viewport: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: viewport, owned: false)
  inst.setupViewport(slotval1)

method eventFilter*(self: VirtualQAbstractScrollArea, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractScrollAreaeventFilter(self[], param1, param2)
proc cQAbstractScrollArea_method_callback_eventFilter(self: pointer, param1: pointer, param2: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: param1, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: param2, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method event*(self: VirtualQAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractScrollAreaevent(self[], param1)
proc cQAbstractScrollArea_method_callback_event(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method viewportEvent*(self: VirtualQAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractScrollAreaviewportEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_viewportEvent(self: pointer, param1: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  var virtualReturn = inst.viewportEvent(slotval1)
  virtualReturn

method resizeEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QResizeEvent): void {.base.} =
  QAbstractScrollArearesizeEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_resizeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1, owned: false)
  inst.resizeEvent(slotval1)

method paintEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QAbstractScrollAreapaintEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method mousePressEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractScrollAreamousePressEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_mousePressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mousePressEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractScrollAreamouseReleaseEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_mouseReleaseEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseReleaseEvent(slotval1)

method mouseDoubleClickEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractScrollAreamouseDoubleClickEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_mouseDoubleClickEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method mouseMoveEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QMouseEvent): void {.base.} =
  QAbstractScrollAreamouseMoveEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_mouseMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1, owned: false)
  inst.mouseMoveEvent(slotval1)

method wheelEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QWheelEvent): void {.base.} =
  QAbstractScrollAreawheelEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_wheelEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1, owned: false)
  inst.wheelEvent(slotval1)

method contextMenuEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QAbstractScrollAreacontextMenuEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_contextMenuEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1, owned: false)
  inst.contextMenuEvent(slotval1)

method dragEnterEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QAbstractScrollAreadragEnterEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_dragEnterEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: param1, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QAbstractScrollAreadragMoveEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_dragMoveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: param1, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QAbstractScrollAreadragLeaveEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_dragLeaveEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: param1, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QDropEvent): void {.base.} =
  QAbstractScrollAreadropEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_dropEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: param1, owned: false)
  inst.dropEvent(slotval1)

method keyPressEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractScrollAreakeyPressEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_keyPressEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1, owned: false)
  inst.keyPressEvent(slotval1)

method scrollContentsBy*(self: VirtualQAbstractScrollArea, dx: cint, dy: cint): void {.base.} =
  QAbstractScrollAreascrollContentsBy(self[], dx, dy)
proc cQAbstractScrollArea_method_callback_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = dx
  let slotval2 = dy
  inst.scrollContentsBy(slotval1, slotval2)

method viewportSizeHint*(self: VirtualQAbstractScrollArea): gen_qsize_types.QSize {.base.} =
  QAbstractScrollAreaviewportSizeHint(self[])
proc cQAbstractScrollArea_method_callback_viewportSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var virtualReturn = inst.viewportSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method changeEvent*(self: VirtualQAbstractScrollArea, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractScrollAreachangeEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method devType*(self: VirtualQAbstractScrollArea): cint {.base.} =
  QAbstractScrollAreadevType(self[])
proc cQAbstractScrollArea_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQAbstractScrollArea, visible: bool): void {.base.} =
  QAbstractScrollAreasetVisible(self[], visible)
proc cQAbstractScrollArea_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method heightForWidth*(self: VirtualQAbstractScrollArea, param1: cint): cint {.base.} =
  QAbstractScrollAreaheightForWidth(self[], param1)
proc cQAbstractScrollArea_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method hasHeightForWidth*(self: VirtualQAbstractScrollArea): bool {.base.} =
  QAbstractScrollAreahasHeightForWidth(self[])
proc cQAbstractScrollArea_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQAbstractScrollArea): gen_qpaintengine_types.QPaintEngine {.base.} =
  QAbstractScrollAreapaintEngine(self[])
proc cQAbstractScrollArea_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method keyReleaseEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QAbstractScrollAreakeyReleaseEvent(self[], event)
proc cQAbstractScrollArea_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method focusInEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractScrollAreafocusInEvent(self[], event)
proc cQAbstractScrollArea_method_callback_focusInEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QFocusEvent): void {.base.} =
  QAbstractScrollAreafocusOutEvent(self[], event)
proc cQAbstractScrollArea_method_callback_focusOutEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event, owned: false)
  inst.focusOutEvent(slotval1)

method enterEvent*(self: VirtualQAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractScrollAreaenterEvent(self[], event)
proc cQAbstractScrollArea_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractScrollArealeaveEvent(self[], event)
proc cQAbstractScrollArea_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QAbstractScrollAreamoveEvent(self[], event)
proc cQAbstractScrollArea_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method closeEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QAbstractScrollAreacloseEvent(self[], event)
proc cQAbstractScrollArea_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QAbstractScrollAreatabletEvent(self[], event)
proc cQAbstractScrollArea_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QActionEvent): void {.base.} =
  QAbstractScrollAreaactionEvent(self[], event)
proc cQAbstractScrollArea_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method showEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QShowEvent): void {.base.} =
  QAbstractScrollAreashowEvent(self[], event)
proc cQAbstractScrollArea_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQAbstractScrollArea, event: gen_qevent_types.QHideEvent): void {.base.} =
  QAbstractScrollAreahideEvent(self[], event)
proc cQAbstractScrollArea_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQAbstractScrollArea, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QAbstractScrollAreanativeEvent(self[], eventType, message, resultVal)
proc cQAbstractScrollArea_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQAbstractScrollArea, param1: cint): cint {.base.} =
  QAbstractScrollAreametric(self[], param1)
proc cQAbstractScrollArea_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQAbstractScrollArea, painter: gen_qpainter_types.QPainter): void {.base.} =
  QAbstractScrollAreainitPainter(self[], painter)
proc cQAbstractScrollArea_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQAbstractScrollArea, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QAbstractScrollArearedirected(self[], offset)
proc cQAbstractScrollArea_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQAbstractScrollArea): gen_qpainter_types.QPainter {.base.} =
  QAbstractScrollAreasharedPainter(self[])
proc cQAbstractScrollArea_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQAbstractScrollArea, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QAbstractScrollAreainputMethodEvent(self[], param1)
proc cQAbstractScrollArea_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQAbstractScrollArea, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QAbstractScrollAreainputMethodQuery(self[], param1)
proc cQAbstractScrollArea_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method focusNextPrevChild*(self: VirtualQAbstractScrollArea, next: bool): bool {.base.} =
  QAbstractScrollAreafocusNextPrevChild(self[], next)
proc cQAbstractScrollArea_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method timerEvent*(self: VirtualQAbstractScrollArea, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractScrollAreatimerEvent(self[], event)
proc cQAbstractScrollArea_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractScrollArea, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractScrollAreachildEvent(self[], event)
proc cQAbstractScrollArea_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractScrollArea, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractScrollAreacustomEvent(self[], event)
proc cQAbstractScrollArea_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractScrollAreaconnectNotify(self[], signal)
proc cQAbstractScrollArea_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractScrollAreadisconnectNotify(self[], signal)
proc cQAbstractScrollArea_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractScrollArea](fcQAbstractScrollArea_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setViewportMargins*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, left: cint, top: cint, right: cint, bottom: cint): void =
  fcQAbstractScrollArea_protectedbase_setViewportMargins(self.h, left, top, right, bottom)

proc setViewportMargins*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, margins: gen_qmargins_types.QMargins): void =
  fcQAbstractScrollArea_protectedbase_setViewportMarginsWithMargins(self.h, margins.h)

proc viewportMargins*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQAbstractScrollArea_protectedbase_viewportMargins(self.h), owned: true)

proc drawFrame*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, param1: gen_qpainter_types.QPainter): void =
  fcQAbstractScrollArea_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQAbstractScrollArea_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): void =
  fcQAbstractScrollArea_protectedbase_updateMicroFocus(self.h)

proc create*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): void =
  fcQAbstractScrollArea_protectedbase_create(self.h)

proc destroy*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): void =
  fcQAbstractScrollArea_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): bool =
  fcQAbstractScrollArea_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): bool =
  fcQAbstractScrollArea_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractScrollArea_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractscrollarea_types.QAbstractScrollArea): cint =
  fcQAbstractScrollArea_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, signal: cstring): cint =
  fcQAbstractScrollArea_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractscrollarea_types.QAbstractScrollArea, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractScrollArea_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractScrollAreaVTable = nil): gen_qabstractscrollarea_types.QAbstractScrollArea =
  let vtbl = if vtbl == nil: new QAbstractScrollAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractScrollArea_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractScrollArea_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractScrollArea_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQAbstractScrollArea_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQAbstractScrollArea_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQAbstractScrollArea_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractScrollArea_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractScrollArea_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQAbstractScrollArea_vtable_callback_viewportEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQAbstractScrollArea_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQAbstractScrollArea_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQAbstractScrollArea_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQAbstractScrollArea_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQAbstractScrollArea_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQAbstractScrollArea_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQAbstractScrollArea_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQAbstractScrollArea_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQAbstractScrollArea_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQAbstractScrollArea_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQAbstractScrollArea_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQAbstractScrollArea_vtable_callback_dropEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQAbstractScrollArea_vtable_callback_keyPressEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQAbstractScrollArea_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQAbstractScrollArea_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQAbstractScrollArea_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQAbstractScrollArea_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQAbstractScrollArea_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQAbstractScrollArea_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQAbstractScrollArea_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQAbstractScrollArea_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQAbstractScrollArea_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQAbstractScrollArea_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQAbstractScrollArea_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQAbstractScrollArea_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQAbstractScrollArea_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQAbstractScrollArea_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQAbstractScrollArea_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQAbstractScrollArea_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQAbstractScrollArea_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQAbstractScrollArea_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQAbstractScrollArea_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQAbstractScrollArea_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQAbstractScrollArea_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQAbstractScrollArea_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQAbstractScrollArea_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQAbstractScrollArea_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQAbstractScrollArea_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQAbstractScrollArea_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQAbstractScrollArea_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractScrollArea_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractScrollArea_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractScrollArea_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractScrollArea_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractScrollArea_vtable_callback_disconnectNotify
  gen_qabstractscrollarea_types.QAbstractScrollArea(h: fcQAbstractScrollArea_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea,
    vtbl: ref QAbstractScrollAreaVTable = nil): gen_qabstractscrollarea_types.QAbstractScrollArea =
  let vtbl = if vtbl == nil: new QAbstractScrollAreaVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractScrollAreaVTable](fcQAbstractScrollArea_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractScrollArea_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractScrollArea_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractScrollArea_vtable_callback_metacall
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQAbstractScrollArea_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQAbstractScrollArea_vtable_callback_sizeHint
  if not isNil(vtbl[].setupViewport):
    vtbl[].vtbl.setupViewport = cQAbstractScrollArea_vtable_callback_setupViewport
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractScrollArea_vtable_callback_eventFilter
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractScrollArea_vtable_callback_event
  if not isNil(vtbl[].viewportEvent):
    vtbl[].vtbl.viewportEvent = cQAbstractScrollArea_vtable_callback_viewportEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQAbstractScrollArea_vtable_callback_resizeEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQAbstractScrollArea_vtable_callback_paintEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQAbstractScrollArea_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQAbstractScrollArea_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQAbstractScrollArea_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQAbstractScrollArea_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQAbstractScrollArea_vtable_callback_wheelEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQAbstractScrollArea_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQAbstractScrollArea_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQAbstractScrollArea_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQAbstractScrollArea_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQAbstractScrollArea_vtable_callback_dropEvent
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQAbstractScrollArea_vtable_callback_keyPressEvent
  if not isNil(vtbl[].scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = cQAbstractScrollArea_vtable_callback_scrollContentsBy
  if not isNil(vtbl[].viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = cQAbstractScrollArea_vtable_callback_viewportSizeHint
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQAbstractScrollArea_vtable_callback_changeEvent
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQAbstractScrollArea_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQAbstractScrollArea_vtable_callback_setVisible
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQAbstractScrollArea_vtable_callback_heightForWidth
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQAbstractScrollArea_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQAbstractScrollArea_vtable_callback_paintEngine
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQAbstractScrollArea_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQAbstractScrollArea_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQAbstractScrollArea_vtable_callback_focusOutEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQAbstractScrollArea_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQAbstractScrollArea_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQAbstractScrollArea_vtable_callback_moveEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQAbstractScrollArea_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQAbstractScrollArea_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQAbstractScrollArea_vtable_callback_actionEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQAbstractScrollArea_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQAbstractScrollArea_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQAbstractScrollArea_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQAbstractScrollArea_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQAbstractScrollArea_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQAbstractScrollArea_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQAbstractScrollArea_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQAbstractScrollArea_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQAbstractScrollArea_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQAbstractScrollArea_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractScrollArea_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractScrollArea_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractScrollArea_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractScrollArea_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractScrollArea_vtable_callback_disconnectNotify
  gen_qabstractscrollarea_types.QAbstractScrollArea(h: fcQAbstractScrollArea_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQAbstractScrollArea_mvtbl = cQAbstractScrollAreaVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractScrollArea()[])](self.fcQAbstractScrollArea_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractScrollArea_method_callback_metaObject,
  metacast: cQAbstractScrollArea_method_callback_metacast,
  metacall: cQAbstractScrollArea_method_callback_metacall,
  minimumSizeHint: cQAbstractScrollArea_method_callback_minimumSizeHint,
  sizeHint: cQAbstractScrollArea_method_callback_sizeHint,
  setupViewport: cQAbstractScrollArea_method_callback_setupViewport,
  eventFilter: cQAbstractScrollArea_method_callback_eventFilter,
  event: cQAbstractScrollArea_method_callback_event,
  viewportEvent: cQAbstractScrollArea_method_callback_viewportEvent,
  resizeEvent: cQAbstractScrollArea_method_callback_resizeEvent,
  paintEvent: cQAbstractScrollArea_method_callback_paintEvent,
  mousePressEvent: cQAbstractScrollArea_method_callback_mousePressEvent,
  mouseReleaseEvent: cQAbstractScrollArea_method_callback_mouseReleaseEvent,
  mouseDoubleClickEvent: cQAbstractScrollArea_method_callback_mouseDoubleClickEvent,
  mouseMoveEvent: cQAbstractScrollArea_method_callback_mouseMoveEvent,
  wheelEvent: cQAbstractScrollArea_method_callback_wheelEvent,
  contextMenuEvent: cQAbstractScrollArea_method_callback_contextMenuEvent,
  dragEnterEvent: cQAbstractScrollArea_method_callback_dragEnterEvent,
  dragMoveEvent: cQAbstractScrollArea_method_callback_dragMoveEvent,
  dragLeaveEvent: cQAbstractScrollArea_method_callback_dragLeaveEvent,
  dropEvent: cQAbstractScrollArea_method_callback_dropEvent,
  keyPressEvent: cQAbstractScrollArea_method_callback_keyPressEvent,
  scrollContentsBy: cQAbstractScrollArea_method_callback_scrollContentsBy,
  viewportSizeHint: cQAbstractScrollArea_method_callback_viewportSizeHint,
  changeEvent: cQAbstractScrollArea_method_callback_changeEvent,
  devType: cQAbstractScrollArea_method_callback_devType,
  setVisible: cQAbstractScrollArea_method_callback_setVisible,
  heightForWidth: cQAbstractScrollArea_method_callback_heightForWidth,
  hasHeightForWidth: cQAbstractScrollArea_method_callback_hasHeightForWidth,
  paintEngine: cQAbstractScrollArea_method_callback_paintEngine,
  keyReleaseEvent: cQAbstractScrollArea_method_callback_keyReleaseEvent,
  focusInEvent: cQAbstractScrollArea_method_callback_focusInEvent,
  focusOutEvent: cQAbstractScrollArea_method_callback_focusOutEvent,
  enterEvent: cQAbstractScrollArea_method_callback_enterEvent,
  leaveEvent: cQAbstractScrollArea_method_callback_leaveEvent,
  moveEvent: cQAbstractScrollArea_method_callback_moveEvent,
  closeEvent: cQAbstractScrollArea_method_callback_closeEvent,
  tabletEvent: cQAbstractScrollArea_method_callback_tabletEvent,
  actionEvent: cQAbstractScrollArea_method_callback_actionEvent,
  showEvent: cQAbstractScrollArea_method_callback_showEvent,
  hideEvent: cQAbstractScrollArea_method_callback_hideEvent,
  nativeEvent: cQAbstractScrollArea_method_callback_nativeEvent,
  metric: cQAbstractScrollArea_method_callback_metric,
  initPainter: cQAbstractScrollArea_method_callback_initPainter,
  redirected: cQAbstractScrollArea_method_callback_redirected,
  sharedPainter: cQAbstractScrollArea_method_callback_sharedPainter,
  inputMethodEvent: cQAbstractScrollArea_method_callback_inputMethodEvent,
  inputMethodQuery: cQAbstractScrollArea_method_callback_inputMethodQuery,
  focusNextPrevChild: cQAbstractScrollArea_method_callback_focusNextPrevChild,
  timerEvent: cQAbstractScrollArea_method_callback_timerEvent,
  childEvent: cQAbstractScrollArea_method_callback_childEvent,
  customEvent: cQAbstractScrollArea_method_callback_customEvent,
  connectNotify: cQAbstractScrollArea_method_callback_connectNotify,
  disconnectNotify: cQAbstractScrollArea_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQAbstractScrollArea) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractScrollArea_new(addr(cQAbstractScrollArea_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qabstractscrollarea_types.QAbstractScrollArea,
    inst: VirtualQAbstractScrollArea) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractScrollArea_new2(addr(cQAbstractScrollArea_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractscrollarea_types.QAbstractScrollArea): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractScrollArea_staticMetaObject())
