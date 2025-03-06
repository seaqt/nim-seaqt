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
{.compile("gen_qcolordialog.cpp", cflags).}


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

proc fcQColorDialog_new(parent: pointer): ptr cQColorDialog {.importc: "QColorDialog_new".}
proc fcQColorDialog_new2(): ptr cQColorDialog {.importc: "QColorDialog_new2".}
proc fcQColorDialog_new3(initial: pointer): ptr cQColorDialog {.importc: "QColorDialog_new3".}
proc fcQColorDialog_new4(initial: pointer, parent: pointer): ptr cQColorDialog {.importc: "QColorDialog_new4".}
proc fcQColorDialog_metaObject(self: pointer, ): pointer {.importc: "QColorDialog_metaObject".}
proc fcQColorDialog_metacast(self: pointer, param1: cstring): pointer {.importc: "QColorDialog_metacast".}
proc fcQColorDialog_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColorDialog_metacall".}
proc fcQColorDialog_tr(s: cstring): struct_miqt_string {.importc: "QColorDialog_tr".}
proc fcQColorDialog_trUtf8(s: cstring): struct_miqt_string {.importc: "QColorDialog_trUtf8".}
proc fcQColorDialog_setCurrentColor(self: pointer, color: pointer): void {.importc: "QColorDialog_setCurrentColor".}
proc fcQColorDialog_currentColor(self: pointer, ): pointer {.importc: "QColorDialog_currentColor".}
proc fcQColorDialog_selectedColor(self: pointer, ): pointer {.importc: "QColorDialog_selectedColor".}
proc fcQColorDialog_setOption(self: pointer, option: cint): void {.importc: "QColorDialog_setOption".}
proc fcQColorDialog_testOption(self: pointer, option: cint): bool {.importc: "QColorDialog_testOption".}
proc fcQColorDialog_setOptions(self: pointer, options: cint): void {.importc: "QColorDialog_setOptions".}
proc fcQColorDialog_options(self: pointer, ): cint {.importc: "QColorDialog_options".}
proc fcQColorDialog_setVisible(self: pointer, visible: bool): void {.importc: "QColorDialog_setVisible".}
proc fcQColorDialog_getColor(): pointer {.importc: "QColorDialog_getColor".}
proc fcQColorDialog_getRgba(): cuint {.importc: "QColorDialog_getRgba".}
proc fcQColorDialog_customCount(): cint {.importc: "QColorDialog_customCount".}
proc fcQColorDialog_customColor(index: cint): pointer {.importc: "QColorDialog_customColor".}
proc fcQColorDialog_setCustomColor(index: cint, color: pointer): void {.importc: "QColorDialog_setCustomColor".}
proc fcQColorDialog_standardColor(index: cint): pointer {.importc: "QColorDialog_standardColor".}
proc fcQColorDialog_setStandardColor(index: cint, color: pointer): void {.importc: "QColorDialog_setStandardColor".}
proc fcQColorDialog_currentColorChanged(self: pointer, color: pointer): void {.importc: "QColorDialog_currentColorChanged".}
proc fcQColorDialog_connect_currentColorChanged(self: pointer, slot: int) {.importc: "QColorDialog_connect_currentColorChanged".}
proc fcQColorDialog_colorSelected(self: pointer, color: pointer): void {.importc: "QColorDialog_colorSelected".}
proc fcQColorDialog_connect_colorSelected(self: pointer, slot: int) {.importc: "QColorDialog_connect_colorSelected".}
proc fcQColorDialog_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QColorDialog_tr2".}
proc fcQColorDialog_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColorDialog_tr3".}
proc fcQColorDialog_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QColorDialog_trUtf82".}
proc fcQColorDialog_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColorDialog_trUtf83".}
proc fcQColorDialog_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QColorDialog_setOption2".}
proc fcQColorDialog_getColor1(initial: pointer): pointer {.importc: "QColorDialog_getColor1".}
proc fcQColorDialog_getColor2(initial: pointer, parent: pointer): pointer {.importc: "QColorDialog_getColor2".}
proc fcQColorDialog_getColor3(initial: pointer, parent: pointer, title: struct_miqt_string): pointer {.importc: "QColorDialog_getColor3".}
proc fcQColorDialog_getColor4(initial: pointer, parent: pointer, title: struct_miqt_string, options: cint): pointer {.importc: "QColorDialog_getColor4".}
proc fcQColorDialog_getRgba1(rgba: cuint): cuint {.importc: "QColorDialog_getRgba1".}
proc fcQColorDialog_getRgba2(rgba: cuint, ok: ptr bool): cuint {.importc: "QColorDialog_getRgba2".}
proc fcQColorDialog_getRgba3(rgba: cuint, ok: ptr bool, parent: pointer): cuint {.importc: "QColorDialog_getRgba3".}
proc fQColorDialog_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_metaObject".}
proc fcQColorDialog_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_metaObject".}
proc fQColorDialog_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QColorDialog_virtualbase_metacast".}
proc fcQColorDialog_override_virtual_metacast(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_metacast".}
proc fQColorDialog_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QColorDialog_virtualbase_metacall".}
proc fcQColorDialog_override_virtual_metacall(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_metacall".}
proc fQColorDialog_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QColorDialog_virtualbase_setVisible".}
proc fcQColorDialog_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_setVisible".}
proc fQColorDialog_virtualbase_changeEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_changeEvent".}
proc fcQColorDialog_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_changeEvent".}
proc fQColorDialog_virtualbase_done(self: pointer, resultVal: cint): void{.importc: "QColorDialog_virtualbase_done".}
proc fcQColorDialog_override_virtual_done(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_done".}
proc fQColorDialog_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_sizeHint".}
proc fcQColorDialog_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_sizeHint".}
proc fQColorDialog_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_minimumSizeHint".}
proc fcQColorDialog_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_minimumSizeHint".}
proc fQColorDialog_virtualbase_open(self: pointer, ): void{.importc: "QColorDialog_virtualbase_open".}
proc fcQColorDialog_override_virtual_open(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_open".}
proc fQColorDialog_virtualbase_exec(self: pointer, ): cint{.importc: "QColorDialog_virtualbase_exec".}
proc fcQColorDialog_override_virtual_exec(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_exec".}
proc fQColorDialog_virtualbase_accept(self: pointer, ): void{.importc: "QColorDialog_virtualbase_accept".}
proc fcQColorDialog_override_virtual_accept(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_accept".}
proc fQColorDialog_virtualbase_reject(self: pointer, ): void{.importc: "QColorDialog_virtualbase_reject".}
proc fcQColorDialog_override_virtual_reject(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_reject".}
proc fQColorDialog_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_keyPressEvent".}
proc fcQColorDialog_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_keyPressEvent".}
proc fQColorDialog_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_closeEvent".}
proc fcQColorDialog_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_closeEvent".}
proc fQColorDialog_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_showEvent".}
proc fcQColorDialog_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_showEvent".}
proc fQColorDialog_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_resizeEvent".}
proc fcQColorDialog_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_resizeEvent".}
proc fQColorDialog_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_contextMenuEvent".}
proc fcQColorDialog_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_contextMenuEvent".}
proc fQColorDialog_virtualbase_eventFilter(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QColorDialog_virtualbase_eventFilter".}
proc fcQColorDialog_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_eventFilter".}
proc fQColorDialog_virtualbase_devType(self: pointer, ): cint{.importc: "QColorDialog_virtualbase_devType".}
proc fcQColorDialog_override_virtual_devType(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_devType".}
proc fQColorDialog_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QColorDialog_virtualbase_heightForWidth".}
proc fcQColorDialog_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_heightForWidth".}
proc fQColorDialog_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QColorDialog_virtualbase_hasHeightForWidth".}
proc fcQColorDialog_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_hasHeightForWidth".}
proc fQColorDialog_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_paintEngine".}
proc fcQColorDialog_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_paintEngine".}
proc fQColorDialog_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QColorDialog_virtualbase_event".}
proc fcQColorDialog_override_virtual_event(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_event".}
proc fQColorDialog_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_mousePressEvent".}
proc fcQColorDialog_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_mousePressEvent".}
proc fQColorDialog_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_mouseReleaseEvent".}
proc fcQColorDialog_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_mouseReleaseEvent".}
proc fQColorDialog_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_mouseDoubleClickEvent".}
proc fcQColorDialog_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_mouseDoubleClickEvent".}
proc fQColorDialog_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_mouseMoveEvent".}
proc fcQColorDialog_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_mouseMoveEvent".}
proc fQColorDialog_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_wheelEvent".}
proc fcQColorDialog_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_wheelEvent".}
proc fQColorDialog_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_keyReleaseEvent".}
proc fcQColorDialog_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_keyReleaseEvent".}
proc fQColorDialog_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_focusInEvent".}
proc fcQColorDialog_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_focusInEvent".}
proc fQColorDialog_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_focusOutEvent".}
proc fcQColorDialog_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_focusOutEvent".}
proc fQColorDialog_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_enterEvent".}
proc fcQColorDialog_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_enterEvent".}
proc fQColorDialog_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_leaveEvent".}
proc fcQColorDialog_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_leaveEvent".}
proc fQColorDialog_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_paintEvent".}
proc fcQColorDialog_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_paintEvent".}
proc fQColorDialog_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_moveEvent".}
proc fcQColorDialog_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_moveEvent".}
proc fQColorDialog_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_tabletEvent".}
proc fcQColorDialog_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_tabletEvent".}
proc fQColorDialog_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_actionEvent".}
proc fcQColorDialog_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_actionEvent".}
proc fQColorDialog_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_dragEnterEvent".}
proc fcQColorDialog_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_dragEnterEvent".}
proc fQColorDialog_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_dragMoveEvent".}
proc fcQColorDialog_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_dragMoveEvent".}
proc fQColorDialog_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_dragLeaveEvent".}
proc fcQColorDialog_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_dragLeaveEvent".}
proc fQColorDialog_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_dropEvent".}
proc fcQColorDialog_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_dropEvent".}
proc fQColorDialog_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_hideEvent".}
proc fcQColorDialog_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_hideEvent".}
proc fQColorDialog_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QColorDialog_virtualbase_nativeEvent".}
proc fcQColorDialog_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_nativeEvent".}
proc fQColorDialog_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QColorDialog_virtualbase_metric".}
proc fcQColorDialog_override_virtual_metric(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_metric".}
proc fQColorDialog_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QColorDialog_virtualbase_initPainter".}
proc fcQColorDialog_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_initPainter".}
proc fQColorDialog_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QColorDialog_virtualbase_redirected".}
proc fcQColorDialog_override_virtual_redirected(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_redirected".}
proc fQColorDialog_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QColorDialog_virtualbase_sharedPainter".}
proc fcQColorDialog_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_sharedPainter".}
proc fQColorDialog_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QColorDialog_virtualbase_inputMethodEvent".}
proc fcQColorDialog_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_inputMethodEvent".}
proc fQColorDialog_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QColorDialog_virtualbase_inputMethodQuery".}
proc fcQColorDialog_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_inputMethodQuery".}
proc fQColorDialog_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QColorDialog_virtualbase_focusNextPrevChild".}
proc fcQColorDialog_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_focusNextPrevChild".}
proc fQColorDialog_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_timerEvent".}
proc fcQColorDialog_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_timerEvent".}
proc fQColorDialog_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_childEvent".}
proc fcQColorDialog_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_childEvent".}
proc fQColorDialog_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QColorDialog_virtualbase_customEvent".}
proc fcQColorDialog_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_customEvent".}
proc fQColorDialog_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QColorDialog_virtualbase_connectNotify".}
proc fcQColorDialog_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_connectNotify".}
proc fQColorDialog_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QColorDialog_virtualbase_disconnectNotify".}
proc fcQColorDialog_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QColorDialog_override_virtual_disconnectNotify".}
proc fcQColorDialog_staticMetaObject(): pointer {.importc: "QColorDialog_staticMetaObject".}
proc fcQColorDialog_delete(self: pointer) {.importc: "QColorDialog_delete".}


func init*(T: type gen_qcolordialog_types.QColorDialog, h: ptr cQColorDialog): gen_qcolordialog_types.QColorDialog =
  T(h: h)
proc create*(T: type gen_qcolordialog_types.QColorDialog, parent: gen_qwidget_types.QWidget): gen_qcolordialog_types.QColorDialog =
  gen_qcolordialog_types.QColorDialog.init(fcQColorDialog_new(parent.h))

proc create*(T: type gen_qcolordialog_types.QColorDialog, ): gen_qcolordialog_types.QColorDialog =
  gen_qcolordialog_types.QColorDialog.init(fcQColorDialog_new2())

proc create*(T: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor): gen_qcolordialog_types.QColorDialog =
  gen_qcolordialog_types.QColorDialog.init(fcQColorDialog_new3(initial.h))

proc create*(T: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget): gen_qcolordialog_types.QColorDialog =
  gen_qcolordialog_types.QColorDialog.init(fcQColorDialog_new4(initial.h, parent.h))

proc metaObject*(self: gen_qcolordialog_types.QColorDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorDialog_metaObject(self.h))

proc metacast*(self: gen_qcolordialog_types.QColorDialog, param1: cstring): pointer =
  fcQColorDialog_metacast(self.h, param1)

proc metacall*(self: gen_qcolordialog_types.QColorDialog, param1: cint, param2: cint, param3: pointer): cint =
  fcQColorDialog_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring): string =
  let v_ms = fcQColorDialog_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcolordialog_types.QColorDialog, s: cstring): string =
  let v_ms = fcQColorDialog_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCurrentColor*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setCurrentColor(self.h, color.h)

proc currentColor*(self: gen_qcolordialog_types.QColorDialog, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_currentColor(self.h))

proc selectedColor*(self: gen_qcolordialog_types.QColorDialog, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_selectedColor(self.h))

proc setOption*(self: gen_qcolordialog_types.QColorDialog, option: cint): void =
  fcQColorDialog_setOption(self.h, cint(option))

proc testOption*(self: gen_qcolordialog_types.QColorDialog, option: cint): bool =
  fcQColorDialog_testOption(self.h, cint(option))

proc setOptions*(self: gen_qcolordialog_types.QColorDialog, options: cint): void =
  fcQColorDialog_setOptions(self.h, cint(options))

proc options*(self: gen_qcolordialog_types.QColorDialog, ): cint =
  cint(fcQColorDialog_options(self.h))

proc setVisible*(self: gen_qcolordialog_types.QColorDialog, visible: bool): void =
  fcQColorDialog_setVisible(self.h, visible)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor())

proc getRgba*(_: type gen_qcolordialog_types.QColorDialog, ): cuint =
  fcQColorDialog_getRgba()

proc customCount*(_: type gen_qcolordialog_types.QColorDialog, ): cint =
  fcQColorDialog_customCount()

proc customColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_customColor(index))

proc setCustomColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setCustomColor(index, color.h)

proc standardColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_standardColor(index))

proc setStandardColor*(_: type gen_qcolordialog_types.QColorDialog, index: cint, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_setStandardColor(index, color.h)

proc currentColorChanged*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_currentColorChanged(self.h, color.h)

type QColorDialogcurrentColorChangedSlot* = proc(color: gen_qcolor_types.QColor)
proc miqt_exec_callback_QColorDialog_currentColorChanged(slot: int, color: pointer) {.exportc.} =
  let nimfunc = cast[ptr QColorDialogcurrentColorChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color)

  nimfunc[](slotval1)

proc oncurrentColorChanged*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcurrentColorChangedSlot) =
  var tmp = new QColorDialogcurrentColorChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_connect_currentColorChanged(self.h, cast[int](addr tmp[]))

proc colorSelected*(self: gen_qcolordialog_types.QColorDialog, color: gen_qcolor_types.QColor): void =
  fcQColorDialog_colorSelected(self.h, color.h)

type QColorDialogcolorSelectedSlot* = proc(color: gen_qcolor_types.QColor)
proc miqt_exec_callback_QColorDialog_colorSelected(slot: int, color: pointer) {.exportc.} =
  let nimfunc = cast[ptr QColorDialogcolorSelectedSlot](cast[pointer](slot))
  let slotval1 = gen_qcolor_types.QColor(h: color)

  nimfunc[](slotval1)

proc oncolorSelected*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcolorSelectedSlot) =
  var tmp = new QColorDialogcolorSelectedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_connect_colorSelected(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring): string =
  let v_ms = fcQColorDialog_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQColorDialog_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring): string =
  let v_ms = fcQColorDialog_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qcolordialog_types.QColorDialog, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQColorDialog_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOption*(self: gen_qcolordialog_types.QColorDialog, option: cint, on: bool): void =
  fcQColorDialog_setOption2(self.h, cint(option), on)

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor1(initial.h))

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor2(initial.h, parent.h))

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget, title: string): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor3(initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title)))))

proc getColor*(_: type gen_qcolordialog_types.QColorDialog, initial: gen_qcolor_types.QColor, parent: gen_qwidget_types.QWidget, title: string, options: cint): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQColorDialog_getColor4(initial.h, parent.h, struct_miqt_string(data: title, len: csize_t(len(title))), cint(options)))

proc getRgba*(_: type gen_qcolordialog_types.QColorDialog, rgba: cuint): cuint =
  fcQColorDialog_getRgba1(rgba)

proc getRgba*(_: type gen_qcolordialog_types.QColorDialog, rgba: cuint, ok: ptr bool): cuint =
  fcQColorDialog_getRgba2(rgba, ok)

proc getRgba*(_: type gen_qcolordialog_types.QColorDialog, rgba: cuint, ok: ptr bool, parent: gen_qwidget_types.QWidget): cuint =
  fcQColorDialog_getRgba3(rgba, ok, parent.h)

proc QColorDialogmetaObject*(self: gen_qcolordialog_types.QColorDialog, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQColorDialog_virtualbase_metaObject(self.h))

type QColorDialogmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmetaObjectProc) =
  # TODO check subclass
  var tmp = new QColorDialogmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_metaObject(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_metaObject ".} =
  var nimfunc = cast[ptr QColorDialogmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColorDialogmetacast*(self: gen_qcolordialog_types.QColorDialog, param1: cstring): pointer =
  fQColorDialog_virtualbase_metacast(self.h, param1)

type QColorDialogmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmetacastProc) =
  # TODO check subclass
  var tmp = new QColorDialogmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_metacast(self: ptr cQColorDialog, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QColorDialog_metacast ".} =
  var nimfunc = cast[ptr QColorDialogmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColorDialogmetacall*(self: gen_qcolordialog_types.QColorDialog, param1: cint, param2: cint, param3: pointer): cint =
  fQColorDialog_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QColorDialogmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmetacallProc) =
  # TODO check subclass
  var tmp = new QColorDialogmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_metacall(self: ptr cQColorDialog, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QColorDialog_metacall ".} =
  var nimfunc = cast[ptr QColorDialogmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QColorDialogsetVisible*(self: gen_qcolordialog_types.QColorDialog, visible: bool): void =
  fQColorDialog_virtualbase_setVisible(self.h, visible)

type QColorDialogsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogsetVisibleProc) =
  # TODO check subclass
  var tmp = new QColorDialogsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_setVisible(self: ptr cQColorDialog, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QColorDialog_setVisible ".} =
  var nimfunc = cast[ptr QColorDialogsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QColorDialogchangeEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fQColorDialog_virtualbase_changeEvent(self.h, event.h)

type QColorDialogchangeEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogchangeEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_changeEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_changeEvent ".} =
  var nimfunc = cast[ptr QColorDialogchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogdone*(self: gen_qcolordialog_types.QColorDialog, resultVal: cint): void =
  fQColorDialog_virtualbase_done(self.h, resultVal)

type QColorDialogdoneProc* = proc(resultVal: cint): void
proc ondone*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogdoneProc) =
  # TODO check subclass
  var tmp = new QColorDialogdoneProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_done(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_done(self: ptr cQColorDialog, slot: int, resultVal: cint): void {.exportc: "miqt_exec_callback_QColorDialog_done ".} =
  var nimfunc = cast[ptr QColorDialogdoneProc](cast[pointer](slot))
  let slotval1 = resultVal


  nimfunc[](slotval1)
proc QColorDialogsizeHint*(self: gen_qcolordialog_types.QColorDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQColorDialog_virtualbase_sizeHint(self.h))

type QColorDialogsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogsizeHintProc) =
  # TODO check subclass
  var tmp = new QColorDialogsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_sizeHint(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_sizeHint ".} =
  var nimfunc = cast[ptr QColorDialogsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColorDialogminimumSizeHint*(self: gen_qcolordialog_types.QColorDialog, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQColorDialog_virtualbase_minimumSizeHint(self.h))

type QColorDialogminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QColorDialogminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_minimumSizeHint(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_minimumSizeHint ".} =
  var nimfunc = cast[ptr QColorDialogminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColorDialogopen*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fQColorDialog_virtualbase_open(self.h)

type QColorDialogopenProc* = proc(): void
proc onopen*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogopenProc) =
  # TODO check subclass
  var tmp = new QColorDialogopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_open(self: ptr cQColorDialog, slot: int): void {.exportc: "miqt_exec_callback_QColorDialog_open ".} =
  var nimfunc = cast[ptr QColorDialogopenProc](cast[pointer](slot))

  nimfunc[]()
proc QColorDialogexec*(self: gen_qcolordialog_types.QColorDialog, ): cint =
  fQColorDialog_virtualbase_exec(self.h)

type QColorDialogexecProc* = proc(): cint
proc onexec*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogexecProc) =
  # TODO check subclass
  var tmp = new QColorDialogexecProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_exec(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_exec(self: ptr cQColorDialog, slot: int): cint {.exportc: "miqt_exec_callback_QColorDialog_exec ".} =
  var nimfunc = cast[ptr QColorDialogexecProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QColorDialogaccept*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fQColorDialog_virtualbase_accept(self.h)

type QColorDialogacceptProc* = proc(): void
proc onaccept*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogacceptProc) =
  # TODO check subclass
  var tmp = new QColorDialogacceptProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_accept(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_accept(self: ptr cQColorDialog, slot: int): void {.exportc: "miqt_exec_callback_QColorDialog_accept ".} =
  var nimfunc = cast[ptr QColorDialogacceptProc](cast[pointer](slot))

  nimfunc[]()
proc QColorDialogreject*(self: gen_qcolordialog_types.QColorDialog, ): void =
  fQColorDialog_virtualbase_reject(self.h)

type QColorDialogrejectProc* = proc(): void
proc onreject*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogrejectProc) =
  # TODO check subclass
  var tmp = new QColorDialogrejectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_reject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_reject(self: ptr cQColorDialog, slot: int): void {.exportc: "miqt_exec_callback_QColorDialog_reject ".} =
  var nimfunc = cast[ptr QColorDialogrejectProc](cast[pointer](slot))

  nimfunc[]()
proc QColorDialogkeyPressEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QKeyEvent): void =
  fQColorDialog_virtualbase_keyPressEvent(self.h, param1.h)

type QColorDialogkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_keyPressEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_keyPressEvent ".} =
  var nimfunc = cast[ptr QColorDialogkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QColorDialogcloseEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QCloseEvent): void =
  fQColorDialog_virtualbase_closeEvent(self.h, param1.h)

type QColorDialogcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcloseEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_closeEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_closeEvent ".} =
  var nimfunc = cast[ptr QColorDialogcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QColorDialogshowEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QShowEvent): void =
  fQColorDialog_virtualbase_showEvent(self.h, param1.h)

type QColorDialogshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogshowEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_showEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_showEvent ".} =
  var nimfunc = cast[ptr QColorDialogshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QColorDialogresizeEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QResizeEvent): void =
  fQColorDialog_virtualbase_resizeEvent(self.h, param1.h)

type QColorDialogresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogresizeEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_resizeEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_resizeEvent ".} =
  var nimfunc = cast[ptr QColorDialogresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QColorDialogcontextMenuEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QContextMenuEvent): void =
  fQColorDialog_virtualbase_contextMenuEvent(self.h, param1.h)

type QColorDialogcontextMenuEventProc* = proc(param1: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_contextMenuEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_contextMenuEvent ".} =
  var nimfunc = cast[ptr QColorDialogcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)


  nimfunc[](slotval1)
proc QColorDialogeventFilter*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool =
  fQColorDialog_virtualbase_eventFilter(self.h, param1.h, param2.h)

type QColorDialogeventFilterProc* = proc(param1: gen_qobject_types.QObject, param2: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogeventFilterProc) =
  # TODO check subclass
  var tmp = new QColorDialogeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_eventFilter(self: ptr cQColorDialog, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QColorDialog_eventFilter ".} =
  var nimfunc = cast[ptr QColorDialogeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  let slotval2 = gen_qcoreevent_types.QEvent(h: param2)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QColorDialogdevType*(self: gen_qcolordialog_types.QColorDialog, ): cint =
  fQColorDialog_virtualbase_devType(self.h)

type QColorDialogdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogdevTypeProc) =
  # TODO check subclass
  var tmp = new QColorDialogdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_devType(self: ptr cQColorDialog, slot: int): cint {.exportc: "miqt_exec_callback_QColorDialog_devType ".} =
  var nimfunc = cast[ptr QColorDialogdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QColorDialogheightForWidth*(self: gen_qcolordialog_types.QColorDialog, param1: cint): cint =
  fQColorDialog_virtualbase_heightForWidth(self.h, param1)

type QColorDialogheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogheightForWidthProc) =
  # TODO check subclass
  var tmp = new QColorDialogheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_heightForWidth(self: ptr cQColorDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QColorDialog_heightForWidth ".} =
  var nimfunc = cast[ptr QColorDialogheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColorDialoghasHeightForWidth*(self: gen_qcolordialog_types.QColorDialog, ): bool =
  fQColorDialog_virtualbase_hasHeightForWidth(self.h)

type QColorDialoghasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialoghasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QColorDialoghasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_hasHeightForWidth(self: ptr cQColorDialog, slot: int): bool {.exportc: "miqt_exec_callback_QColorDialog_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QColorDialoghasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QColorDialogpaintEngine*(self: gen_qcolordialog_types.QColorDialog, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQColorDialog_virtualbase_paintEngine(self.h))

type QColorDialogpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogpaintEngineProc) =
  # TODO check subclass
  var tmp = new QColorDialogpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_paintEngine(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_paintEngine ".} =
  var nimfunc = cast[ptr QColorDialogpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColorDialogevent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): bool =
  fQColorDialog_virtualbase_event(self.h, event.h)

type QColorDialogeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogeventProc) =
  # TODO check subclass
  var tmp = new QColorDialogeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_event(self: ptr cQColorDialog, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QColorDialog_event ".} =
  var nimfunc = cast[ptr QColorDialogeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColorDialogmousePressEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fQColorDialog_virtualbase_mousePressEvent(self.h, event.h)

type QColorDialogmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmousePressEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_mousePressEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_mousePressEvent ".} =
  var nimfunc = cast[ptr QColorDialogmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogmouseReleaseEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fQColorDialog_virtualbase_mouseReleaseEvent(self.h, event.h)

type QColorDialogmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_mouseReleaseEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QColorDialogmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogmouseDoubleClickEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fQColorDialog_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QColorDialogmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_mouseDoubleClickEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QColorDialogmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogmouseMoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMouseEvent): void =
  fQColorDialog_virtualbase_mouseMoveEvent(self.h, event.h)

type QColorDialogmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_mouseMoveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QColorDialogmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogwheelEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QWheelEvent): void =
  fQColorDialog_virtualbase_wheelEvent(self.h, event.h)

type QColorDialogwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogwheelEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_wheelEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_wheelEvent ".} =
  var nimfunc = cast[ptr QColorDialogwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogkeyReleaseEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QKeyEvent): void =
  fQColorDialog_virtualbase_keyReleaseEvent(self.h, event.h)

type QColorDialogkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_keyReleaseEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QColorDialogkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogfocusInEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QFocusEvent): void =
  fQColorDialog_virtualbase_focusInEvent(self.h, event.h)

type QColorDialogfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogfocusInEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_focusInEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_focusInEvent ".} =
  var nimfunc = cast[ptr QColorDialogfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogfocusOutEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QFocusEvent): void =
  fQColorDialog_virtualbase_focusOutEvent(self.h, event.h)

type QColorDialogfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_focusOutEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_focusOutEvent ".} =
  var nimfunc = cast[ptr QColorDialogfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogenterEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fQColorDialog_virtualbase_enterEvent(self.h, event.h)

type QColorDialogenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogenterEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_enterEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_enterEvent ".} =
  var nimfunc = cast[ptr QColorDialogenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogleaveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fQColorDialog_virtualbase_leaveEvent(self.h, event.h)

type QColorDialogleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogleaveEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_leaveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_leaveEvent ".} =
  var nimfunc = cast[ptr QColorDialogleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogpaintEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QPaintEvent): void =
  fQColorDialog_virtualbase_paintEvent(self.h, event.h)

type QColorDialogpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogpaintEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_paintEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_paintEvent ".} =
  var nimfunc = cast[ptr QColorDialogpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogmoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QMoveEvent): void =
  fQColorDialog_virtualbase_moveEvent(self.h, event.h)

type QColorDialogmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmoveEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_moveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_moveEvent ".} =
  var nimfunc = cast[ptr QColorDialogmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogtabletEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QTabletEvent): void =
  fQColorDialog_virtualbase_tabletEvent(self.h, event.h)

type QColorDialogtabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogtabletEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_tabletEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_tabletEvent ".} =
  var nimfunc = cast[ptr QColorDialogtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogactionEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QActionEvent): void =
  fQColorDialog_virtualbase_actionEvent(self.h, event.h)

type QColorDialogactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogactionEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_actionEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_actionEvent ".} =
  var nimfunc = cast[ptr QColorDialogactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogdragEnterEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragEnterEvent): void =
  fQColorDialog_virtualbase_dragEnterEvent(self.h, event.h)

type QColorDialogdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_dragEnterEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_dragEnterEvent ".} =
  var nimfunc = cast[ptr QColorDialogdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogdragMoveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragMoveEvent): void =
  fQColorDialog_virtualbase_dragMoveEvent(self.h, event.h)

type QColorDialogdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_dragMoveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_dragMoveEvent ".} =
  var nimfunc = cast[ptr QColorDialogdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogdragLeaveEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDragLeaveEvent): void =
  fQColorDialog_virtualbase_dragLeaveEvent(self.h, event.h)

type QColorDialogdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_dragLeaveEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QColorDialogdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogdropEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QDropEvent): void =
  fQColorDialog_virtualbase_dropEvent(self.h, event.h)

type QColorDialogdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogdropEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_dropEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_dropEvent ".} =
  var nimfunc = cast[ptr QColorDialogdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialoghideEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qevent_types.QHideEvent): void =
  fQColorDialog_virtualbase_hideEvent(self.h, event.h)

type QColorDialoghideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialoghideEventProc) =
  # TODO check subclass
  var tmp = new QColorDialoghideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_hideEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_hideEvent ".} =
  var nimfunc = cast[ptr QColorDialoghideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialognativeEvent*(self: gen_qcolordialog_types.QColorDialog, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQColorDialog_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QColorDialognativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialognativeEventProc) =
  # TODO check subclass
  var tmp = new QColorDialognativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_nativeEvent(self: ptr cQColorDialog, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QColorDialog_nativeEvent ".} =
  var nimfunc = cast[ptr QColorDialognativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QColorDialogmetric*(self: gen_qcolordialog_types.QColorDialog, param1: cint): cint =
  fQColorDialog_virtualbase_metric(self.h, cint(param1))

type QColorDialogmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogmetricProc) =
  # TODO check subclass
  var tmp = new QColorDialogmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_metric(self: ptr cQColorDialog, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QColorDialog_metric ".} =
  var nimfunc = cast[ptr QColorDialogmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColorDialoginitPainter*(self: gen_qcolordialog_types.QColorDialog, painter: gen_qpainter_types.QPainter): void =
  fQColorDialog_virtualbase_initPainter(self.h, painter.h)

type QColorDialoginitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialoginitPainterProc) =
  # TODO check subclass
  var tmp = new QColorDialoginitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_initPainter(self: ptr cQColorDialog, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_initPainter ".} =
  var nimfunc = cast[ptr QColorDialoginitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QColorDialogredirected*(self: gen_qcolordialog_types.QColorDialog, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQColorDialog_virtualbase_redirected(self.h, offset.h))

type QColorDialogredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogredirectedProc) =
  # TODO check subclass
  var tmp = new QColorDialogredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_redirected(self: ptr cQColorDialog, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QColorDialog_redirected ".} =
  var nimfunc = cast[ptr QColorDialogredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColorDialogsharedPainter*(self: gen_qcolordialog_types.QColorDialog, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQColorDialog_virtualbase_sharedPainter(self.h))

type QColorDialogsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogsharedPainterProc) =
  # TODO check subclass
  var tmp = new QColorDialogsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_sharedPainter(self: ptr cQColorDialog, slot: int): pointer {.exportc: "miqt_exec_callback_QColorDialog_sharedPainter ".} =
  var nimfunc = cast[ptr QColorDialogsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QColorDialoginputMethodEvent*(self: gen_qcolordialog_types.QColorDialog, param1: gen_qevent_types.QInputMethodEvent): void =
  fQColorDialog_virtualbase_inputMethodEvent(self.h, param1.h)

type QColorDialoginputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialoginputMethodEventProc) =
  # TODO check subclass
  var tmp = new QColorDialoginputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_inputMethodEvent(self: ptr cQColorDialog, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_inputMethodEvent ".} =
  var nimfunc = cast[ptr QColorDialoginputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QColorDialoginputMethodQuery*(self: gen_qcolordialog_types.QColorDialog, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQColorDialog_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QColorDialoginputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialoginputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QColorDialoginputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_inputMethodQuery(self: ptr cQColorDialog, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QColorDialog_inputMethodQuery ".} =
  var nimfunc = cast[ptr QColorDialoginputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QColorDialogfocusNextPrevChild*(self: gen_qcolordialog_types.QColorDialog, next: bool): bool =
  fQColorDialog_virtualbase_focusNextPrevChild(self.h, next)

type QColorDialogfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QColorDialogfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_focusNextPrevChild(self: ptr cQColorDialog, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QColorDialog_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QColorDialogfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QColorDialogtimerEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QTimerEvent): void =
  fQColorDialog_virtualbase_timerEvent(self.h, event.h)

type QColorDialogtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogtimerEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_timerEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_timerEvent ".} =
  var nimfunc = cast[ptr QColorDialogtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogchildEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QChildEvent): void =
  fQColorDialog_virtualbase_childEvent(self.h, event.h)

type QColorDialogchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogchildEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_childEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_childEvent ".} =
  var nimfunc = cast[ptr QColorDialogchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogcustomEvent*(self: gen_qcolordialog_types.QColorDialog, event: gen_qcoreevent_types.QEvent): void =
  fQColorDialog_virtualbase_customEvent(self.h, event.h)

type QColorDialogcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogcustomEventProc) =
  # TODO check subclass
  var tmp = new QColorDialogcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_customEvent(self: ptr cQColorDialog, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_customEvent ".} =
  var nimfunc = cast[ptr QColorDialogcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QColorDialogconnectNotify*(self: gen_qcolordialog_types.QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQColorDialog_virtualbase_connectNotify(self.h, signal.h)

type QColorDialogconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QColorDialogconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_connectNotify(self: ptr cQColorDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_connectNotify ".} =
  var nimfunc = cast[ptr QColorDialogconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QColorDialogdisconnectNotify*(self: gen_qcolordialog_types.QColorDialog, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQColorDialog_virtualbase_disconnectNotify(self.h, signal.h)

type QColorDialogdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qcolordialog_types.QColorDialog, slot: QColorDialogdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QColorDialogdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQColorDialog_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColorDialog_disconnectNotify(self: ptr cQColorDialog, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QColorDialog_disconnectNotify ".} =
  var nimfunc = cast[ptr QColorDialogdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qcolordialog_types.QColorDialog): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQColorDialog_staticMetaObject())
proc delete*(self: gen_qcolordialog_types.QColorDialog) =
  fcQColorDialog_delete(self.h)
