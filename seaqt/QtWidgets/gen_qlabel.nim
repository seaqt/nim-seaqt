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
{.compile("gen_qlabel.cpp", cflags).}


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

proc fcQLabel_new(parent: pointer): ptr cQLabel {.importc: "QLabel_new".}
proc fcQLabel_new2(): ptr cQLabel {.importc: "QLabel_new2".}
proc fcQLabel_new3(text: struct_miqt_string): ptr cQLabel {.importc: "QLabel_new3".}
proc fcQLabel_new4(parent: pointer, f: cint): ptr cQLabel {.importc: "QLabel_new4".}
proc fcQLabel_new5(text: struct_miqt_string, parent: pointer): ptr cQLabel {.importc: "QLabel_new5".}
proc fcQLabel_new6(text: struct_miqt_string, parent: pointer, f: cint): ptr cQLabel {.importc: "QLabel_new6".}
proc fcQLabel_metaObject(self: pointer, ): pointer {.importc: "QLabel_metaObject".}
proc fcQLabel_metacast(self: pointer, param1: cstring): pointer {.importc: "QLabel_metacast".}
proc fcQLabel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLabel_metacall".}
proc fcQLabel_tr(s: cstring): struct_miqt_string {.importc: "QLabel_tr".}
proc fcQLabel_text(self: pointer, ): struct_miqt_string {.importc: "QLabel_text".}
proc fcQLabel_pixmap(self: pointer, param1: cint): pointer {.importc: "QLabel_pixmap".}
proc fcQLabel_pixmap2(self: pointer, ): pointer {.importc: "QLabel_pixmap2".}
proc fcQLabel_picture(self: pointer, param1: cint): pointer {.importc: "QLabel_picture".}
proc fcQLabel_picture2(self: pointer, ): pointer {.importc: "QLabel_picture2".}
proc fcQLabel_movie(self: pointer, ): pointer {.importc: "QLabel_movie".}
proc fcQLabel_textFormat(self: pointer, ): cint {.importc: "QLabel_textFormat".}
proc fcQLabel_setTextFormat(self: pointer, textFormat: cint): void {.importc: "QLabel_setTextFormat".}
proc fcQLabel_alignment(self: pointer, ): cint {.importc: "QLabel_alignment".}
proc fcQLabel_setAlignment(self: pointer, alignment: cint): void {.importc: "QLabel_setAlignment".}
proc fcQLabel_setWordWrap(self: pointer, on: bool): void {.importc: "QLabel_setWordWrap".}
proc fcQLabel_wordWrap(self: pointer, ): bool {.importc: "QLabel_wordWrap".}
proc fcQLabel_indent(self: pointer, ): cint {.importc: "QLabel_indent".}
proc fcQLabel_setIndent(self: pointer, indent: cint): void {.importc: "QLabel_setIndent".}
proc fcQLabel_margin(self: pointer, ): cint {.importc: "QLabel_margin".}
proc fcQLabel_setMargin(self: pointer, margin: cint): void {.importc: "QLabel_setMargin".}
proc fcQLabel_hasScaledContents(self: pointer, ): bool {.importc: "QLabel_hasScaledContents".}
proc fcQLabel_setScaledContents(self: pointer, scaledContents: bool): void {.importc: "QLabel_setScaledContents".}
proc fcQLabel_sizeHint(self: pointer, ): pointer {.importc: "QLabel_sizeHint".}
proc fcQLabel_minimumSizeHint(self: pointer, ): pointer {.importc: "QLabel_minimumSizeHint".}
proc fcQLabel_setBuddy(self: pointer, buddy: pointer): void {.importc: "QLabel_setBuddy".}
proc fcQLabel_buddy(self: pointer, ): pointer {.importc: "QLabel_buddy".}
proc fcQLabel_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLabel_heightForWidth".}
proc fcQLabel_openExternalLinks(self: pointer, ): bool {.importc: "QLabel_openExternalLinks".}
proc fcQLabel_setOpenExternalLinks(self: pointer, open: bool): void {.importc: "QLabel_setOpenExternalLinks".}
proc fcQLabel_setTextInteractionFlags(self: pointer, flags: cint): void {.importc: "QLabel_setTextInteractionFlags".}
proc fcQLabel_textInteractionFlags(self: pointer, ): cint {.importc: "QLabel_textInteractionFlags".}
proc fcQLabel_setSelection(self: pointer, param1: cint, param2: cint): void {.importc: "QLabel_setSelection".}
proc fcQLabel_hasSelectedText(self: pointer, ): bool {.importc: "QLabel_hasSelectedText".}
proc fcQLabel_selectedText(self: pointer, ): struct_miqt_string {.importc: "QLabel_selectedText".}
proc fcQLabel_selectionStart(self: pointer, ): cint {.importc: "QLabel_selectionStart".}
proc fcQLabel_setText(self: pointer, text: struct_miqt_string): void {.importc: "QLabel_setText".}
proc fcQLabel_setPixmap(self: pointer, pixmap: pointer): void {.importc: "QLabel_setPixmap".}
proc fcQLabel_setPicture(self: pointer, picture: pointer): void {.importc: "QLabel_setPicture".}
proc fcQLabel_setMovie(self: pointer, movie: pointer): void {.importc: "QLabel_setMovie".}
proc fcQLabel_setNum(self: pointer, num: cint): void {.importc: "QLabel_setNum".}
proc fcQLabel_setNumWithNum(self: pointer, num: float64): void {.importc: "QLabel_setNumWithNum".}
proc fcQLabel_clear(self: pointer, ): void {.importc: "QLabel_clear".}
proc fcQLabel_linkActivated(self: pointer, link: struct_miqt_string): void {.importc: "QLabel_linkActivated".}
proc fcQLabel_connect_linkActivated(self: pointer, slot: int) {.importc: "QLabel_connect_linkActivated".}
proc fcQLabel_linkHovered(self: pointer, link: struct_miqt_string): void {.importc: "QLabel_linkHovered".}
proc fcQLabel_connect_linkHovered(self: pointer, slot: int) {.importc: "QLabel_connect_linkHovered".}
proc fcQLabel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLabel_tr2".}
proc fcQLabel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLabel_tr3".}
proc fQLabel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QLabel_virtualbase_metaObject".}
proc fcQLabel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QLabel_override_virtual_metaObject".}
proc fQLabel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QLabel_virtualbase_metacast".}
proc fcQLabel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QLabel_override_virtual_metacast".}
proc fQLabel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLabel_virtualbase_metacall".}
proc fcQLabel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLabel_override_virtual_metacall".}
proc fQLabel_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QLabel_virtualbase_sizeHint".}
proc fcQLabel_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QLabel_override_virtual_sizeHint".}
proc fQLabel_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QLabel_virtualbase_minimumSizeHint".}
proc fcQLabel_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QLabel_override_virtual_minimumSizeHint".}
proc fQLabel_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QLabel_virtualbase_heightForWidth".}
proc fcQLabel_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QLabel_override_virtual_heightForWidth".}
proc fQLabel_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QLabel_virtualbase_event".}
proc fcQLabel_override_virtual_event(self: pointer, slot: int) {.importc: "QLabel_override_virtual_event".}
proc fQLabel_virtualbase_keyPressEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_keyPressEvent".}
proc fcQLabel_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_keyPressEvent".}
proc fQLabel_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QLabel_virtualbase_paintEvent".}
proc fcQLabel_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_paintEvent".}
proc fQLabel_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QLabel_virtualbase_changeEvent".}
proc fcQLabel_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_changeEvent".}
proc fQLabel_virtualbase_mousePressEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_mousePressEvent".}
proc fcQLabel_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_mousePressEvent".}
proc fQLabel_virtualbase_mouseMoveEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_mouseMoveEvent".}
proc fcQLabel_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_mouseMoveEvent".}
proc fQLabel_virtualbase_mouseReleaseEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_mouseReleaseEvent".}
proc fcQLabel_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_mouseReleaseEvent".}
proc fQLabel_virtualbase_contextMenuEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_contextMenuEvent".}
proc fcQLabel_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_contextMenuEvent".}
proc fQLabel_virtualbase_focusInEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_focusInEvent".}
proc fcQLabel_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_focusInEvent".}
proc fQLabel_virtualbase_focusOutEvent(self: pointer, ev: pointer): void{.importc: "QLabel_virtualbase_focusOutEvent".}
proc fcQLabel_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_focusOutEvent".}
proc fQLabel_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QLabel_virtualbase_focusNextPrevChild".}
proc fcQLabel_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QLabel_override_virtual_focusNextPrevChild".}
proc fQLabel_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QLabel_virtualbase_initStyleOption".}
proc fcQLabel_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QLabel_override_virtual_initStyleOption".}
proc fQLabel_virtualbase_devType(self: pointer, ): cint{.importc: "QLabel_virtualbase_devType".}
proc fcQLabel_override_virtual_devType(self: pointer, slot: int) {.importc: "QLabel_override_virtual_devType".}
proc fQLabel_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QLabel_virtualbase_setVisible".}
proc fcQLabel_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QLabel_override_virtual_setVisible".}
proc fQLabel_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QLabel_virtualbase_hasHeightForWidth".}
proc fcQLabel_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QLabel_override_virtual_hasHeightForWidth".}
proc fQLabel_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QLabel_virtualbase_paintEngine".}
proc fcQLabel_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QLabel_override_virtual_paintEngine".}
proc fQLabel_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_mouseDoubleClickEvent".}
proc fcQLabel_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_mouseDoubleClickEvent".}
proc fQLabel_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_wheelEvent".}
proc fcQLabel_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_wheelEvent".}
proc fQLabel_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_keyReleaseEvent".}
proc fcQLabel_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_keyReleaseEvent".}
proc fQLabel_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_enterEvent".}
proc fcQLabel_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_enterEvent".}
proc fQLabel_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_leaveEvent".}
proc fcQLabel_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_leaveEvent".}
proc fQLabel_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_moveEvent".}
proc fcQLabel_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_moveEvent".}
proc fQLabel_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_resizeEvent".}
proc fcQLabel_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_resizeEvent".}
proc fQLabel_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_closeEvent".}
proc fcQLabel_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_closeEvent".}
proc fQLabel_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_tabletEvent".}
proc fcQLabel_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_tabletEvent".}
proc fQLabel_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_actionEvent".}
proc fcQLabel_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_actionEvent".}
proc fQLabel_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_dragEnterEvent".}
proc fcQLabel_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_dragEnterEvent".}
proc fQLabel_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_dragMoveEvent".}
proc fcQLabel_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_dragMoveEvent".}
proc fQLabel_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_dragLeaveEvent".}
proc fcQLabel_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_dragLeaveEvent".}
proc fQLabel_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_dropEvent".}
proc fcQLabel_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_dropEvent".}
proc fQLabel_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_showEvent".}
proc fcQLabel_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_showEvent".}
proc fQLabel_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_hideEvent".}
proc fcQLabel_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_hideEvent".}
proc fQLabel_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QLabel_virtualbase_nativeEvent".}
proc fcQLabel_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_nativeEvent".}
proc fQLabel_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QLabel_virtualbase_metric".}
proc fcQLabel_override_virtual_metric(self: pointer, slot: int) {.importc: "QLabel_override_virtual_metric".}
proc fQLabel_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QLabel_virtualbase_initPainter".}
proc fcQLabel_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QLabel_override_virtual_initPainter".}
proc fQLabel_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QLabel_virtualbase_redirected".}
proc fcQLabel_override_virtual_redirected(self: pointer, slot: int) {.importc: "QLabel_override_virtual_redirected".}
proc fQLabel_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QLabel_virtualbase_sharedPainter".}
proc fcQLabel_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QLabel_override_virtual_sharedPainter".}
proc fQLabel_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QLabel_virtualbase_inputMethodEvent".}
proc fcQLabel_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_inputMethodEvent".}
proc fQLabel_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QLabel_virtualbase_inputMethodQuery".}
proc fcQLabel_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QLabel_override_virtual_inputMethodQuery".}
proc fQLabel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLabel_virtualbase_eventFilter".}
proc fcQLabel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLabel_override_virtual_eventFilter".}
proc fQLabel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_timerEvent".}
proc fcQLabel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_timerEvent".}
proc fQLabel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_childEvent".}
proc fcQLabel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_childEvent".}
proc fQLabel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLabel_virtualbase_customEvent".}
proc fcQLabel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLabel_override_virtual_customEvent".}
proc fQLabel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLabel_virtualbase_connectNotify".}
proc fcQLabel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLabel_override_virtual_connectNotify".}
proc fQLabel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLabel_virtualbase_disconnectNotify".}
proc fcQLabel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLabel_override_virtual_disconnectNotify".}
proc fcQLabel_staticMetaObject(): pointer {.importc: "QLabel_staticMetaObject".}
proc fcQLabel_delete(self: pointer) {.importc: "QLabel_delete".}


func init*(T: type gen_qlabel_types.QLabel, h: ptr cQLabel): gen_qlabel_types.QLabel =
  T(h: h)
proc create*(T: type gen_qlabel_types.QLabel, parent: gen_qwidget_types.QWidget): gen_qlabel_types.QLabel =
  gen_qlabel_types.QLabel.init(fcQLabel_new(parent.h))

proc create*(T: type gen_qlabel_types.QLabel, ): gen_qlabel_types.QLabel =
  gen_qlabel_types.QLabel.init(fcQLabel_new2())

proc create*(T: type gen_qlabel_types.QLabel, text: string): gen_qlabel_types.QLabel =
  gen_qlabel_types.QLabel.init(fcQLabel_new3(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc create*(T: type gen_qlabel_types.QLabel, parent: gen_qwidget_types.QWidget, f: cint): gen_qlabel_types.QLabel =
  gen_qlabel_types.QLabel.init(fcQLabel_new4(parent.h, cint(f)))

proc create*(T: type gen_qlabel_types.QLabel, text: string, parent: gen_qwidget_types.QWidget): gen_qlabel_types.QLabel =
  gen_qlabel_types.QLabel.init(fcQLabel_new5(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))

proc create*(T: type gen_qlabel_types.QLabel, text: string, parent: gen_qwidget_types.QWidget, f: cint): gen_qlabel_types.QLabel =
  gen_qlabel_types.QLabel.init(fcQLabel_new6(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h, cint(f)))

proc metaObject*(self: gen_qlabel_types.QLabel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLabel_metaObject(self.h))

proc metacast*(self: gen_qlabel_types.QLabel, param1: cstring): pointer =
  fcQLabel_metacast(self.h, param1)

proc metacall*(self: gen_qlabel_types.QLabel, param1: cint, param2: cint, param3: pointer): cint =
  fcQLabel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlabel_types.QLabel, s: cstring): string =
  let v_ms = fcQLabel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc text*(self: gen_qlabel_types.QLabel, ): string =
  let v_ms = fcQLabel_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pixmap*(self: gen_qlabel_types.QLabel, param1: cint): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQLabel_pixmap(self.h, cint(param1)))

proc pixmap*(self: gen_qlabel_types.QLabel, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQLabel_pixmap2(self.h))

proc picture*(self: gen_qlabel_types.QLabel, param1: cint): gen_qpicture_types.QPicture =
  gen_qpicture_types.QPicture(h: fcQLabel_picture(self.h, cint(param1)))

proc picture*(self: gen_qlabel_types.QLabel, ): gen_qpicture_types.QPicture =
  gen_qpicture_types.QPicture(h: fcQLabel_picture2(self.h))

proc movie*(self: gen_qlabel_types.QLabel, ): gen_qmovie_types.QMovie =
  gen_qmovie_types.QMovie(h: fcQLabel_movie(self.h))

proc textFormat*(self: gen_qlabel_types.QLabel, ): cint =
  cint(fcQLabel_textFormat(self.h))

proc setTextFormat*(self: gen_qlabel_types.QLabel, textFormat: cint): void =
  fcQLabel_setTextFormat(self.h, cint(textFormat))

proc alignment*(self: gen_qlabel_types.QLabel, ): cint =
  cint(fcQLabel_alignment(self.h))

proc setAlignment*(self: gen_qlabel_types.QLabel, alignment: cint): void =
  fcQLabel_setAlignment(self.h, cint(alignment))

proc setWordWrap*(self: gen_qlabel_types.QLabel, on: bool): void =
  fcQLabel_setWordWrap(self.h, on)

proc wordWrap*(self: gen_qlabel_types.QLabel, ): bool =
  fcQLabel_wordWrap(self.h)

proc indent*(self: gen_qlabel_types.QLabel, ): cint =
  fcQLabel_indent(self.h)

proc setIndent*(self: gen_qlabel_types.QLabel, indent: cint): void =
  fcQLabel_setIndent(self.h, indent)

proc margin*(self: gen_qlabel_types.QLabel, ): cint =
  fcQLabel_margin(self.h)

proc setMargin*(self: gen_qlabel_types.QLabel, margin: cint): void =
  fcQLabel_setMargin(self.h, margin)

proc hasScaledContents*(self: gen_qlabel_types.QLabel, ): bool =
  fcQLabel_hasScaledContents(self.h)

proc setScaledContents*(self: gen_qlabel_types.QLabel, scaledContents: bool): void =
  fcQLabel_setScaledContents(self.h, scaledContents)

proc sizeHint*(self: gen_qlabel_types.QLabel, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLabel_sizeHint(self.h))

proc minimumSizeHint*(self: gen_qlabel_types.QLabel, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLabel_minimumSizeHint(self.h))

proc setBuddy*(self: gen_qlabel_types.QLabel, buddy: gen_qwidget_types.QWidget): void =
  fcQLabel_setBuddy(self.h, buddy.h)

proc buddy*(self: gen_qlabel_types.QLabel, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLabel_buddy(self.h))

proc heightForWidth*(self: gen_qlabel_types.QLabel, param1: cint): cint =
  fcQLabel_heightForWidth(self.h, param1)

proc openExternalLinks*(self: gen_qlabel_types.QLabel, ): bool =
  fcQLabel_openExternalLinks(self.h)

proc setOpenExternalLinks*(self: gen_qlabel_types.QLabel, open: bool): void =
  fcQLabel_setOpenExternalLinks(self.h, open)

proc setTextInteractionFlags*(self: gen_qlabel_types.QLabel, flags: cint): void =
  fcQLabel_setTextInteractionFlags(self.h, cint(flags))

proc textInteractionFlags*(self: gen_qlabel_types.QLabel, ): cint =
  cint(fcQLabel_textInteractionFlags(self.h))

proc setSelection*(self: gen_qlabel_types.QLabel, param1: cint, param2: cint): void =
  fcQLabel_setSelection(self.h, param1, param2)

proc hasSelectedText*(self: gen_qlabel_types.QLabel, ): bool =
  fcQLabel_hasSelectedText(self.h)

proc selectedText*(self: gen_qlabel_types.QLabel, ): string =
  let v_ms = fcQLabel_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectionStart*(self: gen_qlabel_types.QLabel, ): cint =
  fcQLabel_selectionStart(self.h)

proc setText*(self: gen_qlabel_types.QLabel, text: string): void =
  fcQLabel_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

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

proc clear*(self: gen_qlabel_types.QLabel, ): void =
  fcQLabel_clear(self.h)

proc linkActivated*(self: gen_qlabel_types.QLabel, link: string): void =
  fcQLabel_linkActivated(self.h, struct_miqt_string(data: link, len: csize_t(len(link))))

type QLabellinkActivatedSlot* = proc(link: string)
proc miqt_exec_callback_QLabel_linkActivated(slot: int, link: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QLabellinkActivatedSlot](cast[pointer](slot))
  let vlink_ms = link
  let vlinkx_ret = string.fromBytes(toOpenArrayByte(vlink_ms.data, 0, int(vlink_ms.len)-1))
  c_free(vlink_ms.data)
  let slotval1 = vlinkx_ret

  nimfunc[](slotval1)

proc onlinkActivated*(self: gen_qlabel_types.QLabel, slot: QLabellinkActivatedSlot) =
  var tmp = new QLabellinkActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_connect_linkActivated(self.h, cast[int](addr tmp[]))

proc linkHovered*(self: gen_qlabel_types.QLabel, link: string): void =
  fcQLabel_linkHovered(self.h, struct_miqt_string(data: link, len: csize_t(len(link))))

type QLabellinkHoveredSlot* = proc(link: string)
proc miqt_exec_callback_QLabel_linkHovered(slot: int, link: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QLabellinkHoveredSlot](cast[pointer](slot))
  let vlink_ms = link
  let vlinkx_ret = string.fromBytes(toOpenArrayByte(vlink_ms.data, 0, int(vlink_ms.len)-1))
  c_free(vlink_ms.data)
  let slotval1 = vlinkx_ret

  nimfunc[](slotval1)

proc onlinkHovered*(self: gen_qlabel_types.QLabel, slot: QLabellinkHoveredSlot) =
  var tmp = new QLabellinkHoveredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_connect_linkHovered(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qlabel_types.QLabel, s: cstring, c: cstring): string =
  let v_ms = fcQLabel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlabel_types.QLabel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLabel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QLabelmetaObject*(self: gen_qlabel_types.QLabel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQLabel_virtualbase_metaObject(self.h))

type QLabelmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qlabel_types.QLabel, slot: QLabelmetaObjectProc) =
  # TODO check subclass
  var tmp = new QLabelmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_metaObject(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_metaObject ".} =
  var nimfunc = cast[ptr QLabelmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLabelmetacast*(self: gen_qlabel_types.QLabel, param1: cstring): pointer =
  fQLabel_virtualbase_metacast(self.h, param1)

type QLabelmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qlabel_types.QLabel, slot: QLabelmetacastProc) =
  # TODO check subclass
  var tmp = new QLabelmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_metacast(self: ptr cQLabel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QLabel_metacast ".} =
  var nimfunc = cast[ptr QLabelmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLabelmetacall*(self: gen_qlabel_types.QLabel, param1: cint, param2: cint, param3: pointer): cint =
  fQLabel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLabelmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qlabel_types.QLabel, slot: QLabelmetacallProc) =
  # TODO check subclass
  var tmp = new QLabelmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_metacall(self: ptr cQLabel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLabel_metacall ".} =
  var nimfunc = cast[ptr QLabelmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QLabelsizeHint*(self: gen_qlabel_types.QLabel, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQLabel_virtualbase_sizeHint(self.h))

type QLabelsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qlabel_types.QLabel, slot: QLabelsizeHintProc) =
  # TODO check subclass
  var tmp = new QLabelsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_sizeHint(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_sizeHint ".} =
  var nimfunc = cast[ptr QLabelsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLabelminimumSizeHint*(self: gen_qlabel_types.QLabel, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQLabel_virtualbase_minimumSizeHint(self.h))

type QLabelminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qlabel_types.QLabel, slot: QLabelminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QLabelminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_minimumSizeHint(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_minimumSizeHint ".} =
  var nimfunc = cast[ptr QLabelminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLabelheightForWidth*(self: gen_qlabel_types.QLabel, param1: cint): cint =
  fQLabel_virtualbase_heightForWidth(self.h, param1)

type QLabelheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qlabel_types.QLabel, slot: QLabelheightForWidthProc) =
  # TODO check subclass
  var tmp = new QLabelheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_heightForWidth(self: ptr cQLabel, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLabel_heightForWidth ".} =
  var nimfunc = cast[ptr QLabelheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLabelevent*(self: gen_qlabel_types.QLabel, e: gen_qcoreevent_types.QEvent): bool =
  fQLabel_virtualbase_event(self.h, e.h)

type QLabeleventProc* = proc(e: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qlabel_types.QLabel, slot: QLabeleventProc) =
  # TODO check subclass
  var tmp = new QLabeleventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_event(self: ptr cQLabel, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QLabel_event ".} =
  var nimfunc = cast[ptr QLabeleventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: e)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLabelkeyPressEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QKeyEvent): void =
  fQLabel_virtualbase_keyPressEvent(self.h, ev.h)

type QLabelkeyPressEventProc* = proc(ev: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qlabel_types.QLabel, slot: QLabelkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QLabelkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_keyPressEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_keyPressEvent ".} =
  var nimfunc = cast[ptr QLabelkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: ev)


  nimfunc[](slotval1)
proc QLabelpaintEvent*(self: gen_qlabel_types.QLabel, param1: gen_qevent_types.QPaintEvent): void =
  fQLabel_virtualbase_paintEvent(self.h, param1.h)

type QLabelpaintEventProc* = proc(param1: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qlabel_types.QLabel, slot: QLabelpaintEventProc) =
  # TODO check subclass
  var tmp = new QLabelpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_paintEvent(self: ptr cQLabel, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLabel_paintEvent ".} =
  var nimfunc = cast[ptr QLabelpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)


  nimfunc[](slotval1)
proc QLabelchangeEvent*(self: gen_qlabel_types.QLabel, param1: gen_qcoreevent_types.QEvent): void =
  fQLabel_virtualbase_changeEvent(self.h, param1.h)

type QLabelchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qlabel_types.QLabel, slot: QLabelchangeEventProc) =
  # TODO check subclass
  var tmp = new QLabelchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_changeEvent(self: ptr cQLabel, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLabel_changeEvent ".} =
  var nimfunc = cast[ptr QLabelchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QLabelmousePressEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QMouseEvent): void =
  fQLabel_virtualbase_mousePressEvent(self.h, ev.h)

type QLabelmousePressEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qlabel_types.QLabel, slot: QLabelmousePressEventProc) =
  # TODO check subclass
  var tmp = new QLabelmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_mousePressEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_mousePressEvent ".} =
  var nimfunc = cast[ptr QLabelmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QLabelmouseMoveEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QMouseEvent): void =
  fQLabel_virtualbase_mouseMoveEvent(self.h, ev.h)

type QLabelmouseMoveEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qlabel_types.QLabel, slot: QLabelmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QLabelmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_mouseMoveEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QLabelmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QLabelmouseReleaseEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QMouseEvent): void =
  fQLabel_virtualbase_mouseReleaseEvent(self.h, ev.h)

type QLabelmouseReleaseEventProc* = proc(ev: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qlabel_types.QLabel, slot: QLabelmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QLabelmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_mouseReleaseEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QLabelmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: ev)


  nimfunc[](slotval1)
proc QLabelcontextMenuEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QContextMenuEvent): void =
  fQLabel_virtualbase_contextMenuEvent(self.h, ev.h)

type QLabelcontextMenuEventProc* = proc(ev: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qlabel_types.QLabel, slot: QLabelcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QLabelcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_contextMenuEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_contextMenuEvent ".} =
  var nimfunc = cast[ptr QLabelcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: ev)


  nimfunc[](slotval1)
proc QLabelfocusInEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QFocusEvent): void =
  fQLabel_virtualbase_focusInEvent(self.h, ev.h)

type QLabelfocusInEventProc* = proc(ev: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qlabel_types.QLabel, slot: QLabelfocusInEventProc) =
  # TODO check subclass
  var tmp = new QLabelfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_focusInEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_focusInEvent ".} =
  var nimfunc = cast[ptr QLabelfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev)


  nimfunc[](slotval1)
proc QLabelfocusOutEvent*(self: gen_qlabel_types.QLabel, ev: gen_qevent_types.QFocusEvent): void =
  fQLabel_virtualbase_focusOutEvent(self.h, ev.h)

type QLabelfocusOutEventProc* = proc(ev: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qlabel_types.QLabel, slot: QLabelfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QLabelfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_focusOutEvent(self: ptr cQLabel, slot: int, ev: pointer): void {.exportc: "miqt_exec_callback_QLabel_focusOutEvent ".} =
  var nimfunc = cast[ptr QLabelfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: ev)


  nimfunc[](slotval1)
proc QLabelfocusNextPrevChild*(self: gen_qlabel_types.QLabel, next: bool): bool =
  fQLabel_virtualbase_focusNextPrevChild(self.h, next)

type QLabelfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qlabel_types.QLabel, slot: QLabelfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QLabelfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_focusNextPrevChild(self: ptr cQLabel, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QLabel_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QLabelfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLabelinitStyleOption*(self: gen_qlabel_types.QLabel, option: gen_qstyleoption_types.QStyleOptionFrame): void =
  fQLabel_virtualbase_initStyleOption(self.h, option.h)

type QLabelinitStyleOptionProc* = proc(option: gen_qstyleoption_types.QStyleOptionFrame): void
proc oninitStyleOption*(self: gen_qlabel_types.QLabel, slot: QLabelinitStyleOptionProc) =
  # TODO check subclass
  var tmp = new QLabelinitStyleOptionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_initStyleOption(self: ptr cQLabel, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QLabel_initStyleOption ".} =
  var nimfunc = cast[ptr QLabelinitStyleOptionProc](cast[pointer](slot))
  let slotval1 = gen_qstyleoption_types.QStyleOptionFrame(h: option)


  nimfunc[](slotval1)
proc QLabeldevType*(self: gen_qlabel_types.QLabel, ): cint =
  fQLabel_virtualbase_devType(self.h)

type QLabeldevTypeProc* = proc(): cint
proc ondevType*(self: gen_qlabel_types.QLabel, slot: QLabeldevTypeProc) =
  # TODO check subclass
  var tmp = new QLabeldevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_devType(self: ptr cQLabel, slot: int): cint {.exportc: "miqt_exec_callback_QLabel_devType ".} =
  var nimfunc = cast[ptr QLabeldevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLabelsetVisible*(self: gen_qlabel_types.QLabel, visible: bool): void =
  fQLabel_virtualbase_setVisible(self.h, visible)

type QLabelsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qlabel_types.QLabel, slot: QLabelsetVisibleProc) =
  # TODO check subclass
  var tmp = new QLabelsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_setVisible(self: ptr cQLabel, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QLabel_setVisible ".} =
  var nimfunc = cast[ptr QLabelsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QLabelhasHeightForWidth*(self: gen_qlabel_types.QLabel, ): bool =
  fQLabel_virtualbase_hasHeightForWidth(self.h)

type QLabelhasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qlabel_types.QLabel, slot: QLabelhasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QLabelhasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_hasHeightForWidth(self: ptr cQLabel, slot: int): bool {.exportc: "miqt_exec_callback_QLabel_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QLabelhasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QLabelpaintEngine*(self: gen_qlabel_types.QLabel, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQLabel_virtualbase_paintEngine(self.h))

type QLabelpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qlabel_types.QLabel, slot: QLabelpaintEngineProc) =
  # TODO check subclass
  var tmp = new QLabelpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_paintEngine(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_paintEngine ".} =
  var nimfunc = cast[ptr QLabelpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLabelmouseDoubleClickEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QMouseEvent): void =
  fQLabel_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QLabelmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qlabel_types.QLabel, slot: QLabelmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QLabelmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_mouseDoubleClickEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QLabelmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QLabelwheelEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QWheelEvent): void =
  fQLabel_virtualbase_wheelEvent(self.h, event.h)

type QLabelwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qlabel_types.QLabel, slot: QLabelwheelEventProc) =
  # TODO check subclass
  var tmp = new QLabelwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_wheelEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_wheelEvent ".} =
  var nimfunc = cast[ptr QLabelwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QLabelkeyReleaseEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QKeyEvent): void =
  fQLabel_virtualbase_keyReleaseEvent(self.h, event.h)

type QLabelkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qlabel_types.QLabel, slot: QLabelkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QLabelkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_keyReleaseEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QLabelkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QLabelenterEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QEnterEvent): void =
  fQLabel_virtualbase_enterEvent(self.h, event.h)

type QLabelenterEventProc* = proc(event: gen_qevent_types.QEnterEvent): void
proc onenterEvent*(self: gen_qlabel_types.QLabel, slot: QLabelenterEventProc) =
  # TODO check subclass
  var tmp = new QLabelenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_enterEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_enterEvent ".} =
  var nimfunc = cast[ptr QLabelenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QEnterEvent(h: event)


  nimfunc[](slotval1)
proc QLabelleaveEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QEvent): void =
  fQLabel_virtualbase_leaveEvent(self.h, event.h)

type QLabelleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qlabel_types.QLabel, slot: QLabelleaveEventProc) =
  # TODO check subclass
  var tmp = new QLabelleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_leaveEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_leaveEvent ".} =
  var nimfunc = cast[ptr QLabelleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLabelmoveEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QMoveEvent): void =
  fQLabel_virtualbase_moveEvent(self.h, event.h)

type QLabelmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qlabel_types.QLabel, slot: QLabelmoveEventProc) =
  # TODO check subclass
  var tmp = new QLabelmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_moveEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_moveEvent ".} =
  var nimfunc = cast[ptr QLabelmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QLabelresizeEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QResizeEvent): void =
  fQLabel_virtualbase_resizeEvent(self.h, event.h)

type QLabelresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qlabel_types.QLabel, slot: QLabelresizeEventProc) =
  # TODO check subclass
  var tmp = new QLabelresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_resizeEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_resizeEvent ".} =
  var nimfunc = cast[ptr QLabelresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QLabelcloseEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QCloseEvent): void =
  fQLabel_virtualbase_closeEvent(self.h, event.h)

type QLabelcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qlabel_types.QLabel, slot: QLabelcloseEventProc) =
  # TODO check subclass
  var tmp = new QLabelcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_closeEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_closeEvent ".} =
  var nimfunc = cast[ptr QLabelcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QLabeltabletEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QTabletEvent): void =
  fQLabel_virtualbase_tabletEvent(self.h, event.h)

type QLabeltabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qlabel_types.QLabel, slot: QLabeltabletEventProc) =
  # TODO check subclass
  var tmp = new QLabeltabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_tabletEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_tabletEvent ".} =
  var nimfunc = cast[ptr QLabeltabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QLabelactionEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QActionEvent): void =
  fQLabel_virtualbase_actionEvent(self.h, event.h)

type QLabelactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qlabel_types.QLabel, slot: QLabelactionEventProc) =
  # TODO check subclass
  var tmp = new QLabelactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_actionEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_actionEvent ".} =
  var nimfunc = cast[ptr QLabelactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QLabeldragEnterEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QDragEnterEvent): void =
  fQLabel_virtualbase_dragEnterEvent(self.h, event.h)

type QLabeldragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qlabel_types.QLabel, slot: QLabeldragEnterEventProc) =
  # TODO check subclass
  var tmp = new QLabeldragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_dragEnterEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_dragEnterEvent ".} =
  var nimfunc = cast[ptr QLabeldragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QLabeldragMoveEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QDragMoveEvent): void =
  fQLabel_virtualbase_dragMoveEvent(self.h, event.h)

type QLabeldragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qlabel_types.QLabel, slot: QLabeldragMoveEventProc) =
  # TODO check subclass
  var tmp = new QLabeldragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_dragMoveEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_dragMoveEvent ".} =
  var nimfunc = cast[ptr QLabeldragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QLabeldragLeaveEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QDragLeaveEvent): void =
  fQLabel_virtualbase_dragLeaveEvent(self.h, event.h)

type QLabeldragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qlabel_types.QLabel, slot: QLabeldragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QLabeldragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_dragLeaveEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QLabeldragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QLabeldropEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QDropEvent): void =
  fQLabel_virtualbase_dropEvent(self.h, event.h)

type QLabeldropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qlabel_types.QLabel, slot: QLabeldropEventProc) =
  # TODO check subclass
  var tmp = new QLabeldropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_dropEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_dropEvent ".} =
  var nimfunc = cast[ptr QLabeldropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QLabelshowEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QShowEvent): void =
  fQLabel_virtualbase_showEvent(self.h, event.h)

type QLabelshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qlabel_types.QLabel, slot: QLabelshowEventProc) =
  # TODO check subclass
  var tmp = new QLabelshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_showEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_showEvent ".} =
  var nimfunc = cast[ptr QLabelshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QLabelhideEvent*(self: gen_qlabel_types.QLabel, event: gen_qevent_types.QHideEvent): void =
  fQLabel_virtualbase_hideEvent(self.h, event.h)

type QLabelhideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qlabel_types.QLabel, slot: QLabelhideEventProc) =
  # TODO check subclass
  var tmp = new QLabelhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_hideEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_hideEvent ".} =
  var nimfunc = cast[ptr QLabelhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QLabelnativeEvent*(self: gen_qlabel_types.QLabel, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQLabel_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QLabelnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qlabel_types.QLabel, slot: QLabelnativeEventProc) =
  # TODO check subclass
  var tmp = new QLabelnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_nativeEvent(self: ptr cQLabel, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QLabel_nativeEvent ".} =
  var nimfunc = cast[ptr QLabelnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QLabelmetric*(self: gen_qlabel_types.QLabel, param1: cint): cint =
  fQLabel_virtualbase_metric(self.h, cint(param1))

type QLabelmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qlabel_types.QLabel, slot: QLabelmetricProc) =
  # TODO check subclass
  var tmp = new QLabelmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_metric(self: ptr cQLabel, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QLabel_metric ".} =
  var nimfunc = cast[ptr QLabelmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QLabelinitPainter*(self: gen_qlabel_types.QLabel, painter: gen_qpainter_types.QPainter): void =
  fQLabel_virtualbase_initPainter(self.h, painter.h)

type QLabelinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qlabel_types.QLabel, slot: QLabelinitPainterProc) =
  # TODO check subclass
  var tmp = new QLabelinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_initPainter(self: ptr cQLabel, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QLabel_initPainter ".} =
  var nimfunc = cast[ptr QLabelinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QLabelredirected*(self: gen_qlabel_types.QLabel, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQLabel_virtualbase_redirected(self.h, offset.h))

type QLabelredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qlabel_types.QLabel, slot: QLabelredirectedProc) =
  # TODO check subclass
  var tmp = new QLabelredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_redirected(self: ptr cQLabel, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QLabel_redirected ".} =
  var nimfunc = cast[ptr QLabelredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QLabelsharedPainter*(self: gen_qlabel_types.QLabel, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQLabel_virtualbase_sharedPainter(self.h))

type QLabelsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qlabel_types.QLabel, slot: QLabelsharedPainterProc) =
  # TODO check subclass
  var tmp = new QLabelsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_sharedPainter(self: ptr cQLabel, slot: int): pointer {.exportc: "miqt_exec_callback_QLabel_sharedPainter ".} =
  var nimfunc = cast[ptr QLabelsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QLabelinputMethodEvent*(self: gen_qlabel_types.QLabel, param1: gen_qevent_types.QInputMethodEvent): void =
  fQLabel_virtualbase_inputMethodEvent(self.h, param1.h)

type QLabelinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qlabel_types.QLabel, slot: QLabelinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QLabelinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_inputMethodEvent(self: ptr cQLabel, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QLabel_inputMethodEvent ".} =
  var nimfunc = cast[ptr QLabelinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QLabelinputMethodQuery*(self: gen_qlabel_types.QLabel, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQLabel_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QLabelinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qlabel_types.QLabel, slot: QLabelinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QLabelinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_inputMethodQuery(self: ptr cQLabel, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QLabel_inputMethodQuery ".} =
  var nimfunc = cast[ptr QLabelinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QLabeleventFilter*(self: gen_qlabel_types.QLabel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQLabel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLabeleventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qlabel_types.QLabel, slot: QLabeleventFilterProc) =
  # TODO check subclass
  var tmp = new QLabeleventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_eventFilter(self: ptr cQLabel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLabel_eventFilter ".} =
  var nimfunc = cast[ptr QLabeleventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QLabeltimerEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QTimerEvent): void =
  fQLabel_virtualbase_timerEvent(self.h, event.h)

type QLabeltimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qlabel_types.QLabel, slot: QLabeltimerEventProc) =
  # TODO check subclass
  var tmp = new QLabeltimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_timerEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_timerEvent ".} =
  var nimfunc = cast[ptr QLabeltimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QLabelchildEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QChildEvent): void =
  fQLabel_virtualbase_childEvent(self.h, event.h)

type QLabelchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qlabel_types.QLabel, slot: QLabelchildEventProc) =
  # TODO check subclass
  var tmp = new QLabelchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_childEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_childEvent ".} =
  var nimfunc = cast[ptr QLabelchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QLabelcustomEvent*(self: gen_qlabel_types.QLabel, event: gen_qcoreevent_types.QEvent): void =
  fQLabel_virtualbase_customEvent(self.h, event.h)

type QLabelcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qlabel_types.QLabel, slot: QLabelcustomEventProc) =
  # TODO check subclass
  var tmp = new QLabelcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_customEvent(self: ptr cQLabel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLabel_customEvent ".} =
  var nimfunc = cast[ptr QLabelcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QLabelconnectNotify*(self: gen_qlabel_types.QLabel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLabel_virtualbase_connectNotify(self.h, signal.h)

type QLabelconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qlabel_types.QLabel, slot: QLabelconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLabelconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_connectNotify(self: ptr cQLabel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLabel_connectNotify ".} =
  var nimfunc = cast[ptr QLabelconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QLabeldisconnectNotify*(self: gen_qlabel_types.QLabel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQLabel_virtualbase_disconnectNotify(self.h, signal.h)

type QLabeldisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qlabel_types.QLabel, slot: QLabeldisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QLabeldisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQLabel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLabel_disconnectNotify(self: ptr cQLabel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLabel_disconnectNotify ".} =
  var nimfunc = cast[ptr QLabeldisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qlabel_types.QLabel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLabel_staticMetaObject())
proc delete*(self: gen_qlabel_types.QLabel) =
  fcQLabel_delete(self.h)
