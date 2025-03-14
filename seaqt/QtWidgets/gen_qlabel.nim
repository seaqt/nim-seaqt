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


{.compile("gen_qlabel.cpp", QtWidgetsCFlags).}


import ./gen_qlabel_types
export gen_qlabel_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qevent_types,
  ../QtGui/gen_qmovie_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpicture_types,
  ../QtGui/gen_qpixmap_types,
  ./gen_qframe,
  ./gen_qstyleoption_types,
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
  gen_qmovie_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpicture_types,
  gen_qpixmap_types,
  gen_qframe,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQLabel*{.exportc: "QLabel", incompleteStruct.} = object

proc fcQLabel_metaObject(self: pointer): pointer {.importc: "QLabel_metaObject".}
proc fcQLabel_metacast(self: pointer, param1: cstring): pointer {.importc: "QLabel_metacast".}
proc fcQLabel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLabel_metacall".}
proc fcQLabel_tr(s: cstring): struct_miqt_string {.importc: "QLabel_tr".}
proc fcQLabel_trUtf8(s: cstring): struct_miqt_string {.importc: "QLabel_trUtf8".}
proc fcQLabel_text(self: pointer): struct_miqt_string {.importc: "QLabel_text".}
proc fcQLabel_pixmap(self: pointer): pointer {.importc: "QLabel_pixmap".}
proc fcQLabel_pixmapWithQtReturnByValueConstant(self: pointer, param1: cint): pointer {.importc: "QLabel_pixmapWithQtReturnByValueConstant".}
proc fcQLabel_picture(self: pointer): pointer {.importc: "QLabel_picture".}
proc fcQLabel_pictureWithQtReturnByValueConstant(self: pointer, param1: cint): pointer {.importc: "QLabel_pictureWithQtReturnByValueConstant".}
proc fcQLabel_movie(self: pointer): pointer {.importc: "QLabel_movie".}
proc fcQLabel_textFormat(self: pointer): cint {.importc: "QLabel_textFormat".}
proc fcQLabel_setTextFormat(self: pointer, textFormat: cint): void {.importc: "QLabel_setTextFormat".}
proc fcQLabel_alignment(self: pointer): cint {.importc: "QLabel_alignment".}
proc fcQLabel_setAlignment(self: pointer, alignment: cint): void {.importc: "QLabel_setAlignment".}
proc fcQLabel_setWordWrap(self: pointer, on: bool): void {.importc: "QLabel_setWordWrap".}
proc fcQLabel_wordWrap(self: pointer): bool {.importc: "QLabel_wordWrap".}
proc fcQLabel_indent(self: pointer): cint {.importc: "QLabel_indent".}
proc fcQLabel_setIndent(self: pointer, indent: cint): void {.importc: "QLabel_setIndent".}
proc fcQLabel_margin(self: pointer): cint {.importc: "QLabel_margin".}
proc fcQLabel_setMargin(self: pointer, margin: cint): void {.importc: "QLabel_setMargin".}
proc fcQLabel_hasScaledContents(self: pointer): bool {.importc: "QLabel_hasScaledContents".}
proc fcQLabel_setScaledContents(self: pointer, scaledContents: bool): void {.importc: "QLabel_setScaledContents".}
proc fcQLabel_sizeHint(self: pointer): pointer {.importc: "QLabel_sizeHint".}
proc fcQLabel_minimumSizeHint(self: pointer): pointer {.importc: "QLabel_minimumSizeHint".}
proc fcQLabel_setBuddy(self: pointer, buddy: pointer): void {.importc: "QLabel_setBuddy".}
proc fcQLabel_buddy(self: pointer): pointer {.importc: "QLabel_buddy".}
proc fcQLabel_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLabel_heightForWidth".}
proc fcQLabel_openExternalLinks(self: pointer): bool {.importc: "QLabel_openExternalLinks".}
proc fcQLabel_setOpenExternalLinks(self: pointer, open: bool): void {.importc: "QLabel_setOpenExternalLinks".}
proc fcQLabel_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QLabel_setTextInteractionFlags".}
proc fcQLabel_textInteractionFlags(self: pointer): cint {.importc: "QLabel_textInteractionFlags".}
proc fcQLabel_setSelection(self: pointer, param1: cint, param2: cint): void {.importc: "QLabel_setSelection".}
proc fcQLabel_hasSelectedText(self: pointer): bool {.importc: "QLabel_hasSelectedText".}
proc fcQLabel_selectedText(self: pointer): struct_miqt_string {.importc: "QLabel_selectedText".}
proc fcQLabel_selectionStart(self: pointer): cint {.importc: "QLabel_selectionStart".}
proc fcQLabel_setText(self: pointer, text: struct_miqt_string): void {.importc: "QLabel_setText".}
proc fcQLabel_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QLabel_setPixmap".}
proc fcQLabel_setPicture(self: pointer, picture: pointer): void {.importc: "QLabel_setPicture".}
proc fcQLabel_setMovie(self: pointer, movie: pointer): void {.importc: "QLabel_setMovie".}
proc fcQLabel_setNum(self: pointer, num: cint): void {.importc: "QLabel_setNum".}
proc fcQLabel_setNumWithNum(self: pointer, num: float64): void {.importc: "QLabel_setNumWithNum".}
proc fcQLabel_clear(self: pointer): void {.importc: "QLabel_clear".}
proc fcQLabel_linkActivated(self: pointer, link: struct_miqt_string): void {.importc: "QLabel_linkActivated".}
proc fcQLabel_connect_linkActivated(self: pointer, slot: int, callback: proc (slot: int, link: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLabel_connect_linkActivated".}
proc fcQLabel_linkHovered(self: pointer, link: struct_miqt_string): void {.importc: "QLabel_linkHovered".}
proc fcQLabel_connect_linkHovered(self: pointer, slot: int, callback: proc (slot: int, link: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QLabel_connect_linkHovered".}
proc fcQLabel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLabel_tr2".}
proc fcQLabel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLabel_tr3".}
proc fcQLabel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QLabel_trUtf82".}
proc fcQLabel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLabel_trUtf83".}
proc fcQLabel_vtbl(self: pointer): pointer {.importc: "QLabel_vtbl".}
proc fcQLabel_vdata(self: pointer): pointer {.importc: "QLabel_vdata".}
type cQLabelVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, e: pointer): bool {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(self: pointer, ev: pointer): void {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  devType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
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
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLabel_virtualbase_metaObject(self: pointer): pointer {.importc: "QLabel_virtualbase_metaObject".}
proc fcQLabel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLabel_virtualbase_metacast".}
proc fcQLabel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLabel_virtualbase_metacall".}
proc fcQLabel_virtualbase_sizeHint(self: pointer): pointer {.importc: "QLabel_virtualbase_sizeHint".}
proc fcQLabel_virtualbase_minimumSizeHint(self: pointer): pointer {.importc: "QLabel_virtualbase_minimumSizeHint".}
proc fcQLabel_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLabel_virtualbase_heightForWidth".}
proc fcQLabel_virtualbase_event(self: pointer, e: pointer): bool {.importc: "QLabel_virtualbase_event".}
proc fcQLabel_virtualbase_keyPressEvent(self: pointer, ev: pointer): void {.importc: "QLabel_virtualbase_keyPressEvent".}
proc fcQLabel_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QLabel_virtualbase_paintEvent".}
proc fcQLabel_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QLabel_virtualbase_changeEvent".}
proc fcQLabel_virtualbase_mousePressEvent(self: pointer, ev: pointer): void {.importc: "QLabel_virtualbase_mousePressEvent".}
proc fcQLabel_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void {.importc: "QLabel_virtualbase_mouseMoveEvent".}
proc fcQLabel_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void {.importc: "QLabel_virtualbase_mouseReleaseEvent".}
proc fcQLabel_virtualbase_contextMenuEvent(self: pointer, ev: pointer): void {.importc: "QLabel_virtualbase_contextMenuEvent".}
proc fcQLabel_virtualbase_focusInEvent(self: pointer, ev: pointer): void {.importc: "QLabel_virtualbase_focusInEvent".}
proc fcQLabel_virtualbase_focusOutEvent(self: pointer, ev: pointer): void {.importc: "QLabel_virtualbase_focusOutEvent".}
proc fcQLabel_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QLabel_virtualbase_focusNextPrevChild".}
proc fcQLabel_virtualbase_devType(self: pointer): cint {.importc: "QLabel_virtualbase_devType".}
proc fcQLabel_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QLabel_virtualbase_setVisible".}
proc fcQLabel_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QLabel_virtualbase_hasHeightForWidth".}
proc fcQLabel_virtualbase_paintEngine(self: pointer): pointer {.importc: "QLabel_virtualbase_paintEngine".}
proc fcQLabel_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_mouseDoubleClickEvent".}
proc fcQLabel_virtualbase_wheelEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_wheelEvent".}
proc fcQLabel_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_keyReleaseEvent".}
proc fcQLabel_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_enterEvent".}
proc fcQLabel_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_leaveEvent".}
proc fcQLabel_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_moveEvent".}
proc fcQLabel_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_resizeEvent".}
proc fcQLabel_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_closeEvent".}
proc fcQLabel_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_tabletEvent".}
proc fcQLabel_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_actionEvent".}
proc fcQLabel_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_dragEnterEvent".}
proc fcQLabel_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_dragMoveEvent".}
proc fcQLabel_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_dragLeaveEvent".}
proc fcQLabel_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_dropEvent".}
proc fcQLabel_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_showEvent".}
proc fcQLabel_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_hideEvent".}
proc fcQLabel_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QLabel_virtualbase_nativeEvent".}
proc fcQLabel_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QLabel_virtualbase_metric".}
proc fcQLabel_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QLabel_virtualbase_initPainter".}
proc fcQLabel_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QLabel_virtualbase_redirected".}
proc fcQLabel_virtualbase_sharedPainter(self: pointer): pointer {.importc: "QLabel_virtualbase_sharedPainter".}
proc fcQLabel_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void {.importc: "QLabel_virtualbase_inputMethodEvent".}
proc fcQLabel_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer {.importc: "QLabel_virtualbase_inputMethodQuery".}
proc fcQLabel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLabel_virtualbase_eventFilter".}
proc fcQLabel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_timerEvent".}
proc fcQLabel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_childEvent".}
proc fcQLabel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLabel_virtualbase_customEvent".}
proc fcQLabel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLabel_virtualbase_connectNotify".}
proc fcQLabel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLabel_virtualbase_disconnectNotify".}
proc fcQLabel_protectedbase_drawFrame(self: pointer, param1: pointer): void {.importc: "QLabel_protectedbase_drawFrame".}
proc fcQLabel_protectedbase_initStyleOption(self: pointer, option: pointer): void {.importc: "QLabel_protectedbase_initStyleOption".}
proc fcQLabel_protectedbase_updateMicroFocus(self: pointer): void {.importc: "QLabel_protectedbase_updateMicroFocus".}
proc fcQLabel_protectedbase_create(self: pointer): void {.importc: "QLabel_protectedbase_create".}
proc fcQLabel_protectedbase_destroy(self: pointer): void {.importc: "QLabel_protectedbase_destroy".}
proc fcQLabel_protectedbase_focusNextChild(self: pointer): bool {.importc: "QLabel_protectedbase_focusNextChild".}
proc fcQLabel_protectedbase_focusPreviousChild(self: pointer): bool {.importc: "QLabel_protectedbase_focusPreviousChild".}
proc fcQLabel_protectedbase_sender(self: pointer): pointer {.importc: "QLabel_protectedbase_sender".}
proc fcQLabel_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QLabel_protectedbase_senderSignalIndex".}
proc fcQLabel_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLabel_protectedbase_receivers".}
proc fcQLabel_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLabel_protectedbase_isSignalConnected".}
proc fcQLabel_new(vtbl, vdata: pointer, parent: pointer): ptr cQLabel {.importc: "QLabel_new".}
proc fcQLabel_new2(vtbl, vdata: pointer): ptr cQLabel {.importc: "QLabel_new2".}
proc fcQLabel_new3(vtbl, vdata: pointer, text: struct_miqt_string): ptr cQLabel {.importc: "QLabel_new3".}
proc fcQLabel_new4(vtbl, vdata: pointer, parent: pointer, f: cint): ptr cQLabel {.importc: "QLabel_new4".}
proc fcQLabel_new5(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer): ptr cQLabel {.importc: "QLabel_new5".}
proc fcQLabel_new6(vtbl, vdata: pointer, text: struct_miqt_string, parent: pointer, f: cint): ptr cQLabel {.importc: "QLabel_new6".}
proc fcQLabel_staticMetaObject(): pointer {.importc: "QLabel_staticMetaObject".}

proc metaObject*(self: gen_qlabel_types.QLabel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLabel_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlabel_types.QLabel, param1: cstring): pointer =
  fcQLabel_metacast(self.h, param1)

proc metacall*(self: gen_qlabel_types.QLabel, param1: cint, param2: cint, param3: pointer): cint =
  fcQLabel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlabel_types.QLabel, s: cstring): string =
  let v_ms = fcQLabel_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlabel_types.QLabel, s: cstring): string =
  let v_ms = fcQLabel_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qlabel_types.QLabel): string =
  let v_ms = fcQLabel_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pixmap*(self: gen_qlabel_types.QLabel): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQLabel_pixmap(self.h), owned: false)

proc pixmap*(self: gen_qlabel_types.QLabel, param1: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQLabel_pixmapWithQtReturnByValueConstant(self.h, cint(param1)), owned: true)

proc picture*(self: gen_qlabel_types.QLabel): gen_qpicture_types.QPicture =
  gen_qpicture_types.QPicture(h: fcQLabel_picture(self.h), owned: false)

proc picture*(self: gen_qlabel_types.QLabel, param1: cint): gen_qpicture_types.QPicture =
  gen_qpicture_types.QPicture(h: fcQLabel_pictureWithQtReturnByValueConstant(self.h, cint(param1)), owned: true)

proc movie*(self: gen_qlabel_types.QLabel): gen_qmovie_types.QMovie =
  gen_qmovie_types.QMovie(h: fcQLabel_movie(self.h), owned: false)

proc textFormat*(self: gen_qlabel_types.QLabel): cint =
  cint(fcQLabel_textFormat(self.h))

proc setTextFormat*(self: gen_qlabel_types.QLabel, textFormat: cint): void =
  fcQLabel_setTextFormat(self.h, cint(textFormat))

proc alignment*(self: gen_qlabel_types.QLabel): cint =
  cint(fcQLabel_alignment(self.h))

proc setAlignment*(self: gen_qlabel_types.QLabel, alignment: cint): void =
  fcQLabel_setAlignment(self.h, cint(alignment))

proc setWordWrap*(self: gen_qlabel_types.QLabel, on: bool): void =
  fcQLabel_setWordWrap(self.h, on)

proc wordWrap*(self: gen_qlabel_types.QLabel): bool =
  fcQLabel_wordWrap(self.h)

proc indent*(self: gen_qlabel_types.QLabel): cint =
  fcQLabel_indent(self.h)

proc setIndent*(self: gen_qlabel_types.QLabel, indent: cint): void =
  fcQLabel_setIndent(self.h, indent)

proc margin*(self: gen_qlabel_types.QLabel): cint =
  fcQLabel_margin(self.h)

proc setMargin*(self: gen_qlabel_types.QLabel, margin: cint): void =
  fcQLabel_setMargin(self.h, margin)

proc hasScaledContents*(self: gen_qlabel_types.QLabel): bool =
  fcQLabel_hasScaledContents(self.h)

proc setScaledContents*(self: gen_qlabel_types.QLabel, scaledContents: bool): void =
  fcQLabel_setScaledContents(self.h, scaledContents)

proc sizeHint*(self: gen_qlabel_types.QLabel): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLabel_sizeHint(self.h), owned: true)

proc minimumSizeHint*(self: gen_qlabel_types.QLabel): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLabel_minimumSizeHint(self.h), owned: true)

proc setBuddy*(self: gen_qlabel_types.QLabel, buddy: gen_qwidget_types.QWidget): void =
  fcQLabel_setBuddy(self.h, buddy.h)

proc buddy*(self: gen_qlabel_types.QLabel): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLabel_buddy(self.h), owned: false)

proc heightForWidth*(self: gen_qlabel_types.QLabel, param1: cint): cint =
  fcQLabel_heightForWidth(self.h, param1)

proc openExternalLinks*(self: gen_qlabel_types.QLabel): bool =
  fcQLabel_openExternalLinks(self.h)

proc setOpenExternalLinks*(self: gen_qlabel_types.QLabel, open: bool): void =
  fcQLabel_setOpenExternalLinks(self.h, open)

proc setTextInteractionFlags*(self: gen_qlabel_types.QLabel, flags: cint): void =
  fcQLabel_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: gen_qlabel_types.QLabel): cint =
  cint(fcQLabel_textInteractionFlags(self.h))

proc setSelection*(self: gen_qlabel_types.QLabel, param1: cint, param2: cint): void =
  fcQLabel_setSelection(self.h, param1, param2)

proc hasSelectedText*(self: gen_qlabel_types.QLabel): bool =
  fcQLabel_hasSelectedText(self.h)

proc selectedText*(self: gen_qlabel_types.QLabel): string =
  let v_ms = fcQLabel_selectedText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc selectionStart*(self: gen_qlabel_types.QLabel): cint =
  fcQLabel_selectionStart(self.h)

proc setText*(self: gen_qlabel_types.QLabel, text: openArray[char]): void =
  fcQLabel_setText(self.h, struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc setPixmap*(self: gen_qlabel_types.QLabel, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQLabel_setPixmap(self.h, pixmap.h)

proc setPicture*(self: gen_qlabel_types.QLabel, picture: gen_qpicture_types.QPicture): void =
  fcQLabel_setPicture(self.h, picture.h)

proc setMovie*(self: gen_qlabel_types.QLabel, movie: gen_qmovie_types.QMovie): void =
  fcQLabel_setMovie(self.h, movie.h)

proc setNum*(self: gen_qlabel_types.QLabel, num: cint): void =
  fcQLabel_setNum(self.h, num)

proc setNum*(self: gen_qlabel_types.QLabel, num: float64): void =
  fcQLabel_setNumWithNum(self.h, num)

proc clear*(self: gen_qlabel_types.QLabel): void =
  fcQLabel_clear(self.h)

proc linkActivated*(self: gen_qlabel_types.QLabel, link: openArray[char]): void =
  fcQLabel_linkActivated(self.h, struct_miqt_string(data: if len(link) > 0: addr link[0] else: nil, len: csize_t(len(link))))

type QLabellinkActivatedSlot* = proc(link: openArray[char])
proc cQLabel_slot_callback_linkActivated(slot: int, link: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QLabellinkActivatedSlot](cast[pointer](slot))
  let vlink_ms = link
  let vlinkx_ret = string.fromBytes(vlink_ms)
  c_free(vlink_ms.data)
  let slotval1 = vlinkx_ret

  nimfunc[](slotval1)

proc cQLabel_slot_callback_linkActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLabellinkActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkActivated*(self: gen_qlabel_types.QLabel, slot: QLabellinkActivatedSlot) =
  var tmp = new QLabellinkActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_connect_linkActivated(self.h, cast[int](addr tmp[]), cQLabel_slot_callback_linkActivated, cQLabel_slot_callback_linkActivated_release)

proc linkHovered*(self: gen_qlabel_types.QLabel, link: openArray[char]): void =
  fcQLabel_linkHovered(self.h, struct_miqt_string(data: if len(link) > 0: addr link[0] else: nil, len: csize_t(len(link))))

type QLabellinkHoveredSlot* = proc(link: openArray[char])
proc cQLabel_slot_callback_linkHovered(slot: int, link: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QLabellinkHoveredSlot](cast[pointer](slot))
  let vlink_ms = link
  let vlinkx_ret = string.fromBytes(vlink_ms)
  c_free(vlink_ms.data)
  let slotval1 = vlinkx_ret

  nimfunc[](slotval1)

proc cQLabel_slot_callback_linkHovered_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QLabellinkHoveredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onlinkHovered*(self: gen_qlabel_types.QLabel, slot: QLabellinkHoveredSlot) =
  var tmp = new QLabellinkHoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_connect_linkHovered(self.h, cast[int](addr tmp[]), cQLabel_slot_callback_linkHovered, cQLabel_slot_callback_linkHovered_release)

proc tr*(_: type gen_qlabel_types.QLabel, s: cstring, c: cstring): string =
  let v_ms = fcQLabel_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlabel_types.QLabel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLabel_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlabel_types.QLabel, s: cstring, c: cstring): string =
  let v_ms = fcQLabel_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qlabel_types.QLabel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLabel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QLabelmetaObjectProc* = proc(self: QLabel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QLabelmetacastProc* = proc(self: QLabel, param1: cstring): pointer {.raises: [], gcsafe.}
type QLabelmetacallProc* = proc(self: QLabel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QLabelsizeHintProc* = proc(self: QLabel): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLabelminimumSizeHintProc* = proc(self: QLabel): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLabelheightForWidthProc* = proc(self: QLabel, param1: cint): cint {.raises: [], gcsafe.}
type QLabeleventProc* = proc(self: QLabel, e: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLabelkeyPressEventProc* = proc(self: QLabel, ev: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QLabelpaintEventProc* = proc(self: QLabel, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QLabelchangeEventProc* = proc(self: QLabel, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLabelmousePressEventProc* = proc(self: QLabel, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLabelmouseMoveEventProc* = proc(self: QLabel, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLabelmouseReleaseEventProc* = proc(self: QLabel, ev: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLabelcontextMenuEventProc* = proc(self: QLabel, ev: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QLabelfocusInEventProc* = proc(self: QLabel, ev: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QLabelfocusOutEventProc* = proc(self: QLabel, ev: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QLabelfocusNextPrevChildProc* = proc(self: QLabel, next: bool): bool {.raises: [], gcsafe.}
type QLabeldevTypeProc* = proc(self: QLabel): cint {.raises: [], gcsafe.}
type QLabelsetVisibleProc* = proc(self: QLabel, visible: bool): void {.raises: [], gcsafe.}
type QLabelhasHeightForWidthProc* = proc(self: QLabel): bool {.raises: [], gcsafe.}
type QLabelpaintEngineProc* = proc(self: QLabel): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QLabelmouseDoubleClickEventProc* = proc(self: QLabel, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QLabelwheelEventProc* = proc(self: QLabel, event: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QLabelkeyReleaseEventProc* = proc(self: QLabel, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QLabelenterEventProc* = proc(self: QLabel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLabelleaveEventProc* = proc(self: QLabel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLabelmoveEventProc* = proc(self: QLabel, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QLabelresizeEventProc* = proc(self: QLabel, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QLabelcloseEventProc* = proc(self: QLabel, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QLabeltabletEventProc* = proc(self: QLabel, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QLabelactionEventProc* = proc(self: QLabel, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QLabeldragEnterEventProc* = proc(self: QLabel, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QLabeldragMoveEventProc* = proc(self: QLabel, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QLabeldragLeaveEventProc* = proc(self: QLabel, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QLabeldropEventProc* = proc(self: QLabel, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QLabelshowEventProc* = proc(self: QLabel, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QLabelhideEventProc* = proc(self: QLabel, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QLabelnativeEventProc* = proc(self: QLabel, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QLabelmetricProc* = proc(self: QLabel, param1: cint): cint {.raises: [], gcsafe.}
type QLabelinitPainterProc* = proc(self: QLabel, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QLabelredirectedProc* = proc(self: QLabel, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QLabelsharedPainterProc* = proc(self: QLabel): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QLabelinputMethodEventProc* = proc(self: QLabel, param1: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QLabelinputMethodQueryProc* = proc(self: QLabel, param1: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QLabeleventFilterProc* = proc(self: QLabel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLabeltimerEventProc* = proc(self: QLabel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QLabelchildEventProc* = proc(self: QLabel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QLabelcustomEventProc* = proc(self: QLabel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLabelconnectNotifyProc* = proc(self: QLabel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLabeldisconnectNotifyProc* = proc(self: QLabel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLabelVTable* {.inheritable, pure.} = object
  vtbl: cQLabelVTable
  metaObject*: QLabelmetaObjectProc
  metacast*: QLabelmetacastProc
  metacall*: QLabelmetacallProc
  sizeHint*: QLabelsizeHintProc
  minimumSizeHint*: QLabelminimumSizeHintProc
  heightForWidth*: QLabelheightForWidthProc
  event*: QLabeleventProc
  keyPressEvent*: QLabelkeyPressEventProc
  paintEvent*: QLabelpaintEventProc
  changeEvent*: QLabelchangeEventProc
  mousePressEvent*: QLabelmousePressEventProc
  mouseMoveEvent*: QLabelmouseMoveEventProc
  mouseReleaseEvent*: QLabelmouseReleaseEventProc
  contextMenuEvent*: QLabelcontextMenuEventProc
  focusInEvent*: QLabelfocusInEventProc
  focusOutEvent*: QLabelfocusOutEventProc
  focusNextPrevChild*: QLabelfocusNextPrevChildProc
  devType*: QLabeldevTypeProc
  setVisible*: QLabelsetVisibleProc
  hasHeightForWidth*: QLabelhasHeightForWidthProc
  paintEngine*: QLabelpaintEngineProc
  mouseDoubleClickEvent*: QLabelmouseDoubleClickEventProc
  wheelEvent*: QLabelwheelEventProc
  keyReleaseEvent*: QLabelkeyReleaseEventProc
  enterEvent*: QLabelenterEventProc
  leaveEvent*: QLabelleaveEventProc
  moveEvent*: QLabelmoveEventProc
  resizeEvent*: QLabelresizeEventProc
  closeEvent*: QLabelcloseEventProc
  tabletEvent*: QLabeltabletEventProc
  actionEvent*: QLabelactionEventProc
  dragEnterEvent*: QLabeldragEnterEventProc
  dragMoveEvent*: QLabeldragMoveEventProc
  dragLeaveEvent*: QLabeldragLeaveEventProc
  dropEvent*: QLabeldropEventProc
  showEvent*: QLabelshowEventProc
  hideEvent*: QLabelhideEventProc
  nativeEvent*: QLabelnativeEventProc
  metric*: QLabelmetricProc
  initPainter*: QLabelinitPainterProc
  redirected*: QLabelredirectedProc
  sharedPainter*: QLabelsharedPainterProc
  inputMethodEvent*: QLabelinputMethodEventProc
  inputMethodQuery*: QLabelinputMethodQueryProc
  eventFilter*: QLabeleventFilterProc
  timerEvent*: QLabeltimerEventProc
  childEvent*: QLabelchildEventProc
  customEvent*: QLabelcustomEventProc
  connectNotify*: QLabelconnectNotifyProc
  disconnectNotify*: QLabeldisconnectNotifyProc
proc QLabelmetaObject*(self: gen_qlabel_types.QLabel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLabel_virtualbase_metaObject(self.h), owned: false)

proc cQLabel_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLabelmetacast*(self: gen_qlabel_types.QLabel, param1: cstring): pointer =
  fcQLabel_virtualbase_metacast(self.h, param1)

proc cQLabel_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QLabelmetacall*(self: gen_qlabel_types.QLabel, param1: cint, param2: cint, param3: pointer): cint =
  fcQLabel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQLabel_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLabelsizeHint*(self: gen_qlabel_types.QLabel): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLabel_virtualbase_sizeHint(self.h), owned: true)

proc cQLabel_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLabelminimumSizeHint*(self: gen_qlabel_types.QLabel): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLabel_virtualbase_minimumSizeHint(self.h), owned: true)

proc cQLabel_vtable_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  var virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLabelheightForWidth*(self: gen_qlabel_types.QLabel, param1: cint): cint =
  fcQLabel_virtualbase_heightForWidth(self.h, param1)

proc cQLabel_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QLabelevent*(self: gen_qlabel_types.QLabel, e: gen_qcoreevent_types.QEvent): bool =
  fcQLabel_virtualbase_event(self.h, e.h)

proc cQLabel_vtable_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QLabelkeyPressEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QKeyEvent): void =
  fcQLabel_virtualbase_keyPressEvent(self.h, ev.h)

proc cQLabel_vtable_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  vtbl[].keyPressEvent(self, slotval1)

proc QLabelpaintEvent*(self: gen_qlabel_types.QLabel, param1: gen_qevent_types.QPaintEvent): void =
  fcQLabel_virtualbase_paintEvent(self.h, param1.h)

proc cQLabel_vtable_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  vtbl[].paintEvent(self, slotval1)

proc QLabelchangeEvent*(self: gen_qlabel_types.QLabel, param1: gen_qcoreevent_types.QEvent): void =
  fcQLabel_virtualbase_changeEvent(self.h, param1.h)

proc cQLabel_vtable_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  vtbl[].changeEvent(self, slotval1)

proc QLabelmousePressEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QMouseEvent): void =
  fcQLabel_virtualbase_mousePressEvent(self.h, ev.h)

proc cQLabel_vtable_callback_mousePressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mousePressEvent(self, slotval1)

proc QLabelmouseMoveEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QMouseEvent): void =
  fcQLabel_virtualbase_mouseMoveEvent(self.h, ev.h)

proc cQLabel_vtable_callback_mouseMoveEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QLabelmouseReleaseEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QMouseEvent): void =
  fcQLabel_virtualbase_mouseReleaseEvent(self.h, ev.h)

proc cQLabel_vtable_callback_mouseReleaseEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QLabelcontextMenuEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QContextMenuEvent): void =
  fcQLabel_virtualbase_contextMenuEvent(self.h, ev.h)

proc cQLabel_vtable_callback_contextMenuEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: ev, owned: false)
  vtbl[].contextMenuEvent(self, slotval1)

proc QLabelfocusInEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QFocusEvent): void =
  fcQLabel_virtualbase_focusInEvent(self.h, ev.h)

proc cQLabel_vtable_callback_focusInEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev, owned: false)
  vtbl[].focusInEvent(self, slotval1)

proc QLabelfocusOutEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QFocusEvent): void =
  fcQLabel_virtualbase_focusOutEvent(self.h, ev.h)

proc cQLabel_vtable_callback_focusOutEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev, owned: false)
  vtbl[].focusOutEvent(self, slotval1)

proc QLabelfocusNextPrevChild*(self: gen_qlabel_types.QLabel, next: bool): bool =
  fcQLabel_virtualbase_focusNextPrevChild(self.h, next)

proc cQLabel_vtable_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = next
  var virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QLabeldevType*(self: gen_qlabel_types.QLabel): cint =
  fcQLabel_virtualbase_devType(self.h)

proc cQLabel_vtable_callback_devType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QLabelsetVisible*(self: gen_qlabel_types.QLabel, visible: bool): void =
  fcQLabel_virtualbase_setVisible(self.h, visible)

proc cQLabel_vtable_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QLabelhasHeightForWidth*(self: gen_qlabel_types.QLabel): bool =
  fcQLabel_virtualbase_hasHeightForWidth(self.h)

proc cQLabel_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QLabelpaintEngine*(self: gen_qlabel_types.QLabel): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQLabel_virtualbase_paintEngine(self.h), owned: false)

proc cQLabel_vtable_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLabelmouseDoubleClickEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QMouseEvent): void =
  fcQLabel_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc cQLabel_vtable_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QLabelwheelEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QWheelEvent): void =
  fcQLabel_virtualbase_wheelEvent(self.h, event.h)

proc cQLabel_vtable_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  vtbl[].wheelEvent(self, slotval1)

proc QLabelkeyReleaseEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QKeyEvent): void =
  fcQLabel_virtualbase_keyReleaseEvent(self.h, event.h)

proc cQLabel_vtable_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QLabelenterEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QEvent): void =
  fcQLabel_virtualbase_enterEvent(self.h, event.h)

proc cQLabel_vtable_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].enterEvent(self, slotval1)

proc QLabelleaveEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QEvent): void =
  fcQLabel_virtualbase_leaveEvent(self.h, event.h)

proc cQLabel_vtable_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].leaveEvent(self, slotval1)

proc QLabelmoveEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QMoveEvent): void =
  fcQLabel_virtualbase_moveEvent(self.h, event.h)

proc cQLabel_vtable_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  vtbl[].moveEvent(self, slotval1)

proc QLabelresizeEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QResizeEvent): void =
  fcQLabel_virtualbase_resizeEvent(self.h, event.h)

proc cQLabel_vtable_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  vtbl[].resizeEvent(self, slotval1)

proc QLabelcloseEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QCloseEvent): void =
  fcQLabel_virtualbase_closeEvent(self.h, event.h)

proc cQLabel_vtable_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  vtbl[].closeEvent(self, slotval1)

proc QLabeltabletEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QTabletEvent): void =
  fcQLabel_virtualbase_tabletEvent(self.h, event.h)

proc cQLabel_vtable_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  vtbl[].tabletEvent(self, slotval1)

proc QLabelactionEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QActionEvent): void =
  fcQLabel_virtualbase_actionEvent(self.h, event.h)

proc cQLabel_vtable_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  vtbl[].actionEvent(self, slotval1)

proc QLabeldragEnterEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QDragEnterEvent): void =
  fcQLabel_virtualbase_dragEnterEvent(self.h, event.h)

proc cQLabel_vtable_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  vtbl[].dragEnterEvent(self, slotval1)

proc QLabeldragMoveEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QDragMoveEvent): void =
  fcQLabel_virtualbase_dragMoveEvent(self.h, event.h)

proc cQLabel_vtable_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  vtbl[].dragMoveEvent(self, slotval1)

proc QLabeldragLeaveEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQLabel_virtualbase_dragLeaveEvent(self.h, event.h)

proc cQLabel_vtable_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QLabeldropEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QDropEvent): void =
  fcQLabel_virtualbase_dropEvent(self.h, event.h)

proc cQLabel_vtable_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  vtbl[].dropEvent(self, slotval1)

proc QLabelshowEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QShowEvent): void =
  fcQLabel_virtualbase_showEvent(self.h, event.h)

proc cQLabel_vtable_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  vtbl[].showEvent(self, slotval1)

proc QLabelhideEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QHideEvent): void =
  fcQLabel_virtualbase_hideEvent(self.h, event.h)

proc cQLabel_vtable_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  vtbl[].hideEvent(self, slotval1)

proc QLabelnativeEvent*(self: gen_qlabel_types.QLabel, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool =
  fcQLabel_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc cQLabel_vtable_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLabelmetric*(self: gen_qlabel_types.QLabel, param1: cint): cint =
  fcQLabel_virtualbase_metric(self.h, cint(param1))

proc cQLabel_vtable_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QLabelinitPainter*(self: gen_qlabel_types.QLabel, painter: gen_qpainter_types.QPainter): void =
  fcQLabel_virtualbase_initPainter(self.h, painter.h)

proc cQLabel_vtable_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  vtbl[].initPainter(self, slotval1)

proc QLabelredirected*(self: gen_qlabel_types.QLabel, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQLabel_virtualbase_redirected(self.h, offset.h), owned: false)

proc cQLabel_vtable_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLabelsharedPainter*(self: gen_qlabel_types.QLabel): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQLabel_virtualbase_sharedPainter(self.h), owned: false)

proc cQLabel_vtable_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLabelinputMethodEvent*(self: gen_qlabel_types.QLabel, param1: gen_qevent_types.QInputMethodEvent): void =
  fcQLabel_virtualbase_inputMethodEvent(self.h, param1.h)

proc cQLabel_vtable_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  vtbl[].inputMethodEvent(self, slotval1)

proc QLabelinputMethodQuery*(self: gen_qlabel_types.QLabel, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQLabel_virtualbase_inputMethodQuery(self.h, cint(param1)), owned: true)

proc cQLabel_vtable_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLabeleventFilter*(self: gen_qlabel_types.QLabel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLabel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQLabel_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QLabeltimerEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLabel_virtualbase_timerEvent(self.h, event.h)

proc cQLabel_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QLabelchildEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLabel_virtualbase_childEvent(self.h, event.h)

proc cQLabel_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QLabelcustomEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QEvent): void =
  fcQLabel_virtualbase_customEvent(self.h, event.h)

proc cQLabel_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QLabelconnectNotify*(self: gen_qlabel_types.QLabel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLabel_virtualbase_connectNotify(self.h, signal.h)

proc cQLabel_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QLabeldisconnectNotify*(self: gen_qlabel_types.QLabel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLabel_virtualbase_disconnectNotify(self.h, signal.h)

proc cQLabel_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLabelVTable](fcQLabel_vdata(self))
  let self = QLabel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQLabel* {.inheritable.} = ref object of QLabel
  vtbl*: cQLabelVTable
method metaObject*(self: VirtualQLabel): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLabelmetaObject(self[])
proc cQLabel_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQLabel, param1: cstring): pointer {.base.} =
  QLabelmetacast(self[], param1)
proc cQLabel_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQLabel, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLabelmetacall(self[], param1, param2, param3)
proc cQLabel_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method sizeHint*(self: VirtualQLabel): gen_qsize_types.QSize {.base.} =
  QLabelsizeHint(self[])
proc cQLabel_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method minimumSizeHint*(self: VirtualQLabel): gen_qsize_types.QSize {.base.} =
  QLabelminimumSizeHint(self[])
proc cQLabel_method_callback_minimumSizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  var virtualReturn = inst.minimumSizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method heightForWidth*(self: VirtualQLabel, param1: cint): cint {.base.} =
  QLabelheightForWidth(self[], param1)
proc cQLabel_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method event*(self: VirtualQLabel, e: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLabelevent(self[], e)
proc cQLabel_method_callback_event(self: pointer, e: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method keyPressEvent*(self: VirtualQLabel, ev: gen_qevent_types.QKeyEvent): void {.base.} =
  QLabelkeyPressEvent(self[], ev)
proc cQLabel_method_callback_keyPressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev, owned: false)
  inst.keyPressEvent(slotval1)

method paintEvent*(self: VirtualQLabel, param1: gen_qevent_types.QPaintEvent): void {.base.} =
  QLabelpaintEvent(self[], param1)
proc cQLabel_method_callback_paintEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1, owned: false)
  inst.paintEvent(slotval1)

method changeEvent*(self: VirtualQLabel, param1: gen_qcoreevent_types.QEvent): void {.base.} =
  QLabelchangeEvent(self[], param1)
proc cQLabel_method_callback_changeEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1, owned: false)
  inst.changeEvent(slotval1)

method mousePressEvent*(self: VirtualQLabel, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QLabelmousePressEvent(self[], ev)
proc cQLabel_method_callback_mousePressEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mousePressEvent(slotval1)

method mouseMoveEvent*(self: VirtualQLabel, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QLabelmouseMoveEvent(self[], ev)
proc cQLabel_method_callback_mouseMoveEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mouseMoveEvent(slotval1)

method mouseReleaseEvent*(self: VirtualQLabel, ev: gen_qevent_types.QMouseEvent): void {.base.} =
  QLabelmouseReleaseEvent(self[], ev)
proc cQLabel_method_callback_mouseReleaseEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev, owned: false)
  inst.mouseReleaseEvent(slotval1)

method contextMenuEvent*(self: VirtualQLabel, ev: gen_qevent_types.QContextMenuEvent): void {.base.} =
  QLabelcontextMenuEvent(self[], ev)
proc cQLabel_method_callback_contextMenuEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: ev, owned: false)
  inst.contextMenuEvent(slotval1)

method focusInEvent*(self: VirtualQLabel, ev: gen_qevent_types.QFocusEvent): void {.base.} =
  QLabelfocusInEvent(self[], ev)
proc cQLabel_method_callback_focusInEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev, owned: false)
  inst.focusInEvent(slotval1)

method focusOutEvent*(self: VirtualQLabel, ev: gen_qevent_types.QFocusEvent): void {.base.} =
  QLabelfocusOutEvent(self[], ev)
proc cQLabel_method_callback_focusOutEvent(self: pointer, ev: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev, owned: false)
  inst.focusOutEvent(slotval1)

method focusNextPrevChild*(self: VirtualQLabel, next: bool): bool {.base.} =
  QLabelfocusNextPrevChild(self[], next)
proc cQLabel_method_callback_focusNextPrevChild(self: pointer, next: bool): bool {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = next
  var virtualReturn = inst.focusNextPrevChild(slotval1)
  virtualReturn

method devType*(self: VirtualQLabel): cint {.base.} =
  QLabeldevType(self[])
proc cQLabel_method_callback_devType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  var virtualReturn = inst.devType()
  virtualReturn

method setVisible*(self: VirtualQLabel, visible: bool): void {.base.} =
  QLabelsetVisible(self[], visible)
proc cQLabel_method_callback_setVisible(self: pointer, visible: bool): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = visible
  inst.setVisible(slotval1)

method hasHeightForWidth*(self: VirtualQLabel): bool {.base.} =
  QLabelhasHeightForWidth(self[])
proc cQLabel_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method paintEngine*(self: VirtualQLabel): gen_qpaintengine_types.QPaintEngine {.base.} =
  QLabelpaintEngine(self[])
proc cQLabel_method_callback_paintEngine(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  var virtualReturn = inst.paintEngine()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method mouseDoubleClickEvent*(self: VirtualQLabel, event: gen_qevent_types.QMouseEvent): void {.base.} =
  QLabelmouseDoubleClickEvent(self[], event)
proc cQLabel_method_callback_mouseDoubleClickEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event, owned: false)
  inst.mouseDoubleClickEvent(slotval1)

method wheelEvent*(self: VirtualQLabel, event: gen_qevent_types.QWheelEvent): void {.base.} =
  QLabelwheelEvent(self[], event)
proc cQLabel_method_callback_wheelEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event, owned: false)
  inst.wheelEvent(slotval1)

method keyReleaseEvent*(self: VirtualQLabel, event: gen_qevent_types.QKeyEvent): void {.base.} =
  QLabelkeyReleaseEvent(self[], event)
proc cQLabel_method_callback_keyReleaseEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event, owned: false)
  inst.keyReleaseEvent(slotval1)

method enterEvent*(self: VirtualQLabel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLabelenterEvent(self[], event)
proc cQLabel_method_callback_enterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.enterEvent(slotval1)

method leaveEvent*(self: VirtualQLabel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLabelleaveEvent(self[], event)
proc cQLabel_method_callback_leaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.leaveEvent(slotval1)

method moveEvent*(self: VirtualQLabel, event: gen_qevent_types.QMoveEvent): void {.base.} =
  QLabelmoveEvent(self[], event)
proc cQLabel_method_callback_moveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event, owned: false)
  inst.moveEvent(slotval1)

method resizeEvent*(self: VirtualQLabel, event: gen_qevent_types.QResizeEvent): void {.base.} =
  QLabelresizeEvent(self[], event)
proc cQLabel_method_callback_resizeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event, owned: false)
  inst.resizeEvent(slotval1)

method closeEvent*(self: VirtualQLabel, event: gen_qevent_types.QCloseEvent): void {.base.} =
  QLabelcloseEvent(self[], event)
proc cQLabel_method_callback_closeEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event, owned: false)
  inst.closeEvent(slotval1)

method tabletEvent*(self: VirtualQLabel, event: gen_qevent_types.QTabletEvent): void {.base.} =
  QLabeltabletEvent(self[], event)
proc cQLabel_method_callback_tabletEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event, owned: false)
  inst.tabletEvent(slotval1)

method actionEvent*(self: VirtualQLabel, event: gen_qevent_types.QActionEvent): void {.base.} =
  QLabelactionEvent(self[], event)
proc cQLabel_method_callback_actionEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QActionEvent(h: event, owned: false)
  inst.actionEvent(slotval1)

method dragEnterEvent*(self: VirtualQLabel, event: gen_qevent_types.QDragEnterEvent): void {.base.} =
  QLabeldragEnterEvent(self[], event)
proc cQLabel_method_callback_dragEnterEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event, owned: false)
  inst.dragEnterEvent(slotval1)

method dragMoveEvent*(self: VirtualQLabel, event: gen_qevent_types.QDragMoveEvent): void {.base.} =
  QLabeldragMoveEvent(self[], event)
proc cQLabel_method_callback_dragMoveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event, owned: false)
  inst.dragMoveEvent(slotval1)

method dragLeaveEvent*(self: VirtualQLabel, event: gen_qevent_types.QDragLeaveEvent): void {.base.} =
  QLabeldragLeaveEvent(self[], event)
proc cQLabel_method_callback_dragLeaveEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event, owned: false)
  inst.dragLeaveEvent(slotval1)

method dropEvent*(self: VirtualQLabel, event: gen_qevent_types.QDropEvent): void {.base.} =
  QLabeldropEvent(self[], event)
proc cQLabel_method_callback_dropEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QDropEvent(h: event, owned: false)
  inst.dropEvent(slotval1)

method showEvent*(self: VirtualQLabel, event: gen_qevent_types.QShowEvent): void {.base.} =
  QLabelshowEvent(self[], event)
proc cQLabel_method_callback_showEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QShowEvent(h: event, owned: false)
  inst.showEvent(slotval1)

method hideEvent*(self: VirtualQLabel, event: gen_qevent_types.QHideEvent): void {.base.} =
  QLabelhideEvent(self[], event)
proc cQLabel_method_callback_hideEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QHideEvent(h: event, owned: false)
  inst.hideEvent(slotval1)

method nativeEvent*(self: VirtualQLabel, eventType: openArray[byte], message: pointer, resultVal: ptr clong): bool {.base.} =
  QLabelnativeEvent(self[], eventType, message, resultVal)
proc cQLabel_method_callback_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](veventType_bytearray.data), 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  var virtualReturn = inst.nativeEvent(slotval1, slotval2, slotval3)
  virtualReturn

method metric*(self: VirtualQLabel, param1: cint): cint {.base.} =
  QLabelmetric(self[], param1)
proc cQLabel_method_callback_metric(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.metric(slotval1)
  virtualReturn

method initPainter*(self: VirtualQLabel, painter: gen_qpainter_types.QPainter): void {.base.} =
  QLabelinitPainter(self[], painter)
proc cQLabel_method_callback_initPainter(self: pointer, painter: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qpainter_types.QPainter(h: painter, owned: false)
  inst.initPainter(slotval1)

method redirected*(self: VirtualQLabel, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.base.} =
  QLabelredirected(self[], offset)
proc cQLabel_method_callback_redirected(self: pointer, offset: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qpoint_types.QPoint(h: offset, owned: false)
  var virtualReturn = inst.redirected(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sharedPainter*(self: VirtualQLabel): gen_qpainter_types.QPainter {.base.} =
  QLabelsharedPainter(self[])
proc cQLabel_method_callback_sharedPainter(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  var virtualReturn = inst.sharedPainter()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method inputMethodEvent*(self: VirtualQLabel, param1: gen_qevent_types.QInputMethodEvent): void {.base.} =
  QLabelinputMethodEvent(self[], param1)
proc cQLabel_method_callback_inputMethodEvent(self: pointer, param1: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1, owned: false)
  inst.inputMethodEvent(slotval1)

method inputMethodQuery*(self: VirtualQLabel, param1: cint): gen_qvariant_types.QVariant {.base.} =
  QLabelinputMethodQuery(self[], param1)
proc cQLabel_method_callback_inputMethodQuery(self: pointer, param1: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = cint(param1)
  var virtualReturn = inst.inputMethodQuery(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method eventFilter*(self: VirtualQLabel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLabeleventFilter(self[], watched, event)
proc cQLabel_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQLabel, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLabeltimerEvent(self[], event)
proc cQLabel_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQLabel, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLabelchildEvent(self[], event)
proc cQLabel_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQLabel, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLabelcustomEvent(self[], event)
proc cQLabel_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQLabel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLabelconnectNotify(self[], signal)
proc cQLabel_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQLabel, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLabeldisconnectNotify(self[], signal)
proc cQLabel_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLabel](fcQLabel_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc drawFrame*(self: gen_qlabel_types.QLabel, param1: gen_qpainter_types.QPainter): void =
  fcQLabel_protectedbase_drawFrame(self.h, param1.h)

proc initStyleOption*(self: gen_qlabel_types.QLabel, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQLabel_protectedbase_initStyleOption(self.h, option.h)

proc updateMicroFocus*(self: gen_qlabel_types.QLabel): void =
  fcQLabel_protectedbase_updateMicroFocus(self.h)

proc createX*(self: gen_qlabel_types.QLabel): void =
  fcQLabel_protectedbase_create(self.h)

proc destroy*(self: gen_qlabel_types.QLabel): void =
  fcQLabel_protectedbase_destroy(self.h)

proc focusNextChild*(self: gen_qlabel_types.QLabel): bool =
  fcQLabel_protectedbase_focusNextChild(self.h)

proc focusPreviousChild*(self: gen_qlabel_types.QLabel): bool =
  fcQLabel_protectedbase_focusPreviousChild(self.h)

proc sender*(self: gen_qlabel_types.QLabel): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLabel_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlabel_types.QLabel): cint =
  fcQLabel_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlabel_types.QLabel, signal: cstring): cint =
  fcQLabel_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlabel_types.QLabel, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQLabel_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlabel_types.QLabel,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QLabelVTable = nil): gen_qlabel_types.QLabel =
  let vtbl = if vtbl == nil: new QLabelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLabelVTable](fcQLabel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQLabel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQLabel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQLabel_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQLabel_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQLabel_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQLabel_vtable_callback_heightForWidth
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQLabel_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQLabel_vtable_callback_keyPressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQLabel_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQLabel_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQLabel_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQLabel_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQLabel_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQLabel_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQLabel_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQLabel_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQLabel_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQLabel_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQLabel_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQLabel_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQLabel_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQLabel_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQLabel_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQLabel_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQLabel_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQLabel_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQLabel_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQLabel_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQLabel_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQLabel_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQLabel_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQLabel_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQLabel_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQLabel_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQLabel_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQLabel_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQLabel_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQLabel_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQLabel_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQLabel_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQLabel_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQLabel_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQLabel_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQLabel_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQLabel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQLabel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQLabel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQLabel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQLabel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQLabel_vtable_callback_disconnectNotify
  gen_qlabel_types.QLabel(h: fcQLabel_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qlabel_types.QLabel,
    vtbl: ref QLabelVTable = nil): gen_qlabel_types.QLabel =
  let vtbl = if vtbl == nil: new QLabelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLabelVTable](fcQLabel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQLabel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQLabel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQLabel_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQLabel_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQLabel_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQLabel_vtable_callback_heightForWidth
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQLabel_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQLabel_vtable_callback_keyPressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQLabel_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQLabel_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQLabel_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQLabel_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQLabel_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQLabel_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQLabel_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQLabel_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQLabel_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQLabel_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQLabel_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQLabel_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQLabel_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQLabel_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQLabel_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQLabel_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQLabel_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQLabel_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQLabel_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQLabel_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQLabel_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQLabel_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQLabel_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQLabel_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQLabel_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQLabel_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQLabel_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQLabel_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQLabel_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQLabel_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQLabel_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQLabel_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQLabel_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQLabel_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQLabel_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQLabel_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQLabel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQLabel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQLabel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQLabel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQLabel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQLabel_vtable_callback_disconnectNotify
  gen_qlabel_types.QLabel(h: fcQLabel_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qlabel_types.QLabel,
    text: openArray[char],
    vtbl: ref QLabelVTable = nil): gen_qlabel_types.QLabel =
  let vtbl = if vtbl == nil: new QLabelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLabelVTable](fcQLabel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQLabel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQLabel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQLabel_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQLabel_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQLabel_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQLabel_vtable_callback_heightForWidth
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQLabel_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQLabel_vtable_callback_keyPressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQLabel_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQLabel_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQLabel_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQLabel_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQLabel_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQLabel_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQLabel_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQLabel_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQLabel_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQLabel_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQLabel_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQLabel_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQLabel_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQLabel_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQLabel_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQLabel_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQLabel_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQLabel_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQLabel_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQLabel_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQLabel_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQLabel_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQLabel_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQLabel_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQLabel_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQLabel_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQLabel_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQLabel_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQLabel_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQLabel_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQLabel_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQLabel_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQLabel_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQLabel_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQLabel_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQLabel_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQLabel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQLabel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQLabel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQLabel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQLabel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQLabel_vtable_callback_disconnectNotify
  gen_qlabel_types.QLabel(h: fcQLabel_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text)))), owned: true)

proc create*(T: type gen_qlabel_types.QLabel,
    parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QLabelVTable = nil): gen_qlabel_types.QLabel =
  let vtbl = if vtbl == nil: new QLabelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLabelVTable](fcQLabel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQLabel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQLabel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQLabel_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQLabel_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQLabel_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQLabel_vtable_callback_heightForWidth
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQLabel_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQLabel_vtable_callback_keyPressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQLabel_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQLabel_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQLabel_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQLabel_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQLabel_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQLabel_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQLabel_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQLabel_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQLabel_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQLabel_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQLabel_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQLabel_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQLabel_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQLabel_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQLabel_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQLabel_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQLabel_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQLabel_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQLabel_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQLabel_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQLabel_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQLabel_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQLabel_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQLabel_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQLabel_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQLabel_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQLabel_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQLabel_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQLabel_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQLabel_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQLabel_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQLabel_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQLabel_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQLabel_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQLabel_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQLabel_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQLabel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQLabel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQLabel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQLabel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQLabel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQLabel_vtable_callback_disconnectNotify
  gen_qlabel_types.QLabel(h: fcQLabel_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h, cint(f)), owned: true)

proc create*(T: type gen_qlabel_types.QLabel,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    vtbl: ref QLabelVTable = nil): gen_qlabel_types.QLabel =
  let vtbl = if vtbl == nil: new QLabelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLabelVTable](fcQLabel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQLabel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQLabel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQLabel_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQLabel_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQLabel_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQLabel_vtable_callback_heightForWidth
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQLabel_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQLabel_vtable_callback_keyPressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQLabel_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQLabel_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQLabel_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQLabel_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQLabel_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQLabel_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQLabel_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQLabel_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQLabel_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQLabel_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQLabel_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQLabel_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQLabel_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQLabel_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQLabel_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQLabel_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQLabel_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQLabel_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQLabel_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQLabel_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQLabel_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQLabel_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQLabel_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQLabel_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQLabel_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQLabel_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQLabel_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQLabel_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQLabel_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQLabel_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQLabel_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQLabel_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQLabel_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQLabel_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQLabel_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQLabel_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQLabel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQLabel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQLabel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQLabel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQLabel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQLabel_vtable_callback_disconnectNotify
  gen_qlabel_types.QLabel(h: fcQLabel_new5(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h), owned: true)

proc create*(T: type gen_qlabel_types.QLabel,
    text: openArray[char], parent: gen_qwidget_types.QWidget, f: cint,
    vtbl: ref QLabelVTable = nil): gen_qlabel_types.QLabel =
  let vtbl = if vtbl == nil: new QLabelVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLabelVTable](fcQLabel_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQLabel_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQLabel_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQLabel_vtable_callback_metacall
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQLabel_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = cQLabel_vtable_callback_minimumSizeHint
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQLabel_vtable_callback_heightForWidth
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQLabel_vtable_callback_event
  if not isNil(vtbl[].keyPressEvent):
    vtbl[].vtbl.keyPressEvent = cQLabel_vtable_callback_keyPressEvent
  if not isNil(vtbl[].paintEvent):
    vtbl[].vtbl.paintEvent = cQLabel_vtable_callback_paintEvent
  if not isNil(vtbl[].changeEvent):
    vtbl[].vtbl.changeEvent = cQLabel_vtable_callback_changeEvent
  if not isNil(vtbl[].mousePressEvent):
    vtbl[].vtbl.mousePressEvent = cQLabel_vtable_callback_mousePressEvent
  if not isNil(vtbl[].mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = cQLabel_vtable_callback_mouseMoveEvent
  if not isNil(vtbl[].mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = cQLabel_vtable_callback_mouseReleaseEvent
  if not isNil(vtbl[].contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = cQLabel_vtable_callback_contextMenuEvent
  if not isNil(vtbl[].focusInEvent):
    vtbl[].vtbl.focusInEvent = cQLabel_vtable_callback_focusInEvent
  if not isNil(vtbl[].focusOutEvent):
    vtbl[].vtbl.focusOutEvent = cQLabel_vtable_callback_focusOutEvent
  if not isNil(vtbl[].focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = cQLabel_vtable_callback_focusNextPrevChild
  if not isNil(vtbl[].devType):
    vtbl[].vtbl.devType = cQLabel_vtable_callback_devType
  if not isNil(vtbl[].setVisible):
    vtbl[].vtbl.setVisible = cQLabel_vtable_callback_setVisible
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQLabel_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].paintEngine):
    vtbl[].vtbl.paintEngine = cQLabel_vtable_callback_paintEngine
  if not isNil(vtbl[].mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = cQLabel_vtable_callback_mouseDoubleClickEvent
  if not isNil(vtbl[].wheelEvent):
    vtbl[].vtbl.wheelEvent = cQLabel_vtable_callback_wheelEvent
  if not isNil(vtbl[].keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = cQLabel_vtable_callback_keyReleaseEvent
  if not isNil(vtbl[].enterEvent):
    vtbl[].vtbl.enterEvent = cQLabel_vtable_callback_enterEvent
  if not isNil(vtbl[].leaveEvent):
    vtbl[].vtbl.leaveEvent = cQLabel_vtable_callback_leaveEvent
  if not isNil(vtbl[].moveEvent):
    vtbl[].vtbl.moveEvent = cQLabel_vtable_callback_moveEvent
  if not isNil(vtbl[].resizeEvent):
    vtbl[].vtbl.resizeEvent = cQLabel_vtable_callback_resizeEvent
  if not isNil(vtbl[].closeEvent):
    vtbl[].vtbl.closeEvent = cQLabel_vtable_callback_closeEvent
  if not isNil(vtbl[].tabletEvent):
    vtbl[].vtbl.tabletEvent = cQLabel_vtable_callback_tabletEvent
  if not isNil(vtbl[].actionEvent):
    vtbl[].vtbl.actionEvent = cQLabel_vtable_callback_actionEvent
  if not isNil(vtbl[].dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = cQLabel_vtable_callback_dragEnterEvent
  if not isNil(vtbl[].dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = cQLabel_vtable_callback_dragMoveEvent
  if not isNil(vtbl[].dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = cQLabel_vtable_callback_dragLeaveEvent
  if not isNil(vtbl[].dropEvent):
    vtbl[].vtbl.dropEvent = cQLabel_vtable_callback_dropEvent
  if not isNil(vtbl[].showEvent):
    vtbl[].vtbl.showEvent = cQLabel_vtable_callback_showEvent
  if not isNil(vtbl[].hideEvent):
    vtbl[].vtbl.hideEvent = cQLabel_vtable_callback_hideEvent
  if not isNil(vtbl[].nativeEvent):
    vtbl[].vtbl.nativeEvent = cQLabel_vtable_callback_nativeEvent
  if not isNil(vtbl[].metric):
    vtbl[].vtbl.metric = cQLabel_vtable_callback_metric
  if not isNil(vtbl[].initPainter):
    vtbl[].vtbl.initPainter = cQLabel_vtable_callback_initPainter
  if not isNil(vtbl[].redirected):
    vtbl[].vtbl.redirected = cQLabel_vtable_callback_redirected
  if not isNil(vtbl[].sharedPainter):
    vtbl[].vtbl.sharedPainter = cQLabel_vtable_callback_sharedPainter
  if not isNil(vtbl[].inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = cQLabel_vtable_callback_inputMethodEvent
  if not isNil(vtbl[].inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = cQLabel_vtable_callback_inputMethodQuery
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQLabel_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQLabel_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQLabel_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQLabel_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQLabel_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQLabel_vtable_callback_disconnectNotify
  gen_qlabel_types.QLabel(h: fcQLabel_new6(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h, cint(f)), owned: true)

const cQLabel_mvtbl = cQLabelVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQLabel()[])](self.fcQLabel_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQLabel_method_callback_metaObject,
  metacast: cQLabel_method_callback_metacast,
  metacall: cQLabel_method_callback_metacall,
  sizeHint: cQLabel_method_callback_sizeHint,
  minimumSizeHint: cQLabel_method_callback_minimumSizeHint,
  heightForWidth: cQLabel_method_callback_heightForWidth,
  event: cQLabel_method_callback_event,
  keyPressEvent: cQLabel_method_callback_keyPressEvent,
  paintEvent: cQLabel_method_callback_paintEvent,
  changeEvent: cQLabel_method_callback_changeEvent,
  mousePressEvent: cQLabel_method_callback_mousePressEvent,
  mouseMoveEvent: cQLabel_method_callback_mouseMoveEvent,
  mouseReleaseEvent: cQLabel_method_callback_mouseReleaseEvent,
  contextMenuEvent: cQLabel_method_callback_contextMenuEvent,
  focusInEvent: cQLabel_method_callback_focusInEvent,
  focusOutEvent: cQLabel_method_callback_focusOutEvent,
  focusNextPrevChild: cQLabel_method_callback_focusNextPrevChild,
  devType: cQLabel_method_callback_devType,
  setVisible: cQLabel_method_callback_setVisible,
  hasHeightForWidth: cQLabel_method_callback_hasHeightForWidth,
  paintEngine: cQLabel_method_callback_paintEngine,
  mouseDoubleClickEvent: cQLabel_method_callback_mouseDoubleClickEvent,
  wheelEvent: cQLabel_method_callback_wheelEvent,
  keyReleaseEvent: cQLabel_method_callback_keyReleaseEvent,
  enterEvent: cQLabel_method_callback_enterEvent,
  leaveEvent: cQLabel_method_callback_leaveEvent,
  moveEvent: cQLabel_method_callback_moveEvent,
  resizeEvent: cQLabel_method_callback_resizeEvent,
  closeEvent: cQLabel_method_callback_closeEvent,
  tabletEvent: cQLabel_method_callback_tabletEvent,
  actionEvent: cQLabel_method_callback_actionEvent,
  dragEnterEvent: cQLabel_method_callback_dragEnterEvent,
  dragMoveEvent: cQLabel_method_callback_dragMoveEvent,
  dragLeaveEvent: cQLabel_method_callback_dragLeaveEvent,
  dropEvent: cQLabel_method_callback_dropEvent,
  showEvent: cQLabel_method_callback_showEvent,
  hideEvent: cQLabel_method_callback_hideEvent,
  nativeEvent: cQLabel_method_callback_nativeEvent,
  metric: cQLabel_method_callback_metric,
  initPainter: cQLabel_method_callback_initPainter,
  redirected: cQLabel_method_callback_redirected,
  sharedPainter: cQLabel_method_callback_sharedPainter,
  inputMethodEvent: cQLabel_method_callback_inputMethodEvent,
  inputMethodQuery: cQLabel_method_callback_inputMethodQuery,
  eventFilter: cQLabel_method_callback_eventFilter,
  timerEvent: cQLabel_method_callback_timerEvent,
  childEvent: cQLabel_method_callback_childEvent,
  customEvent: cQLabel_method_callback_customEvent,
  connectNotify: cQLabel_method_callback_connectNotify,
  disconnectNotify: cQLabel_method_callback_disconnectNotify,
)
proc create*(T: type gen_qlabel_types.QLabel,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQLabel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLabel_new(addr(cQLabel_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlabel_types.QLabel,
    inst: VirtualQLabel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLabel_new2(addr(cQLabel_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qlabel_types.QLabel,
    text: openArray[char],
    inst: VirtualQLabel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLabel_new3(addr(cQLabel_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))
  inst[].owned = true

proc create*(T: type gen_qlabel_types.QLabel,
    parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQLabel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLabel_new4(addr(cQLabel_mvtbl), addr(inst[]), parent.h, cint(f))
  inst[].owned = true

proc create*(T: type gen_qlabel_types.QLabel,
    text: openArray[char], parent: gen_qwidget_types.QWidget,
    inst: VirtualQLabel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLabel_new5(addr(cQLabel_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlabel_types.QLabel,
    text: openArray[char], parent: gen_qwidget_types.QWidget, f: cint,
    inst: VirtualQLabel) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLabel_new6(addr(cQLabel_mvtbl), addr(inst[]), struct_miqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))), parent.h, cint(f))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlabel_types.QLabel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLabel_staticMetaObject())
