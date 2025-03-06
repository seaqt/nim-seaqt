import ./Qt5Svg_libs

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

const cflags = gorge("pkg-config --cflags Qt5Svg")  & " -fPIC"
{.compile("gen_qsvgwidget.cpp", cflags).}


import ./gen_qsvgwidget_types
export gen_qsvgwidget_types

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
  ../QtWidgets/gen_qwidget,
  ./gen_qsvgrenderer_types
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
  gen_qwidget,
  gen_qsvgrenderer_types

type cQSvgWidget*{.exportc: "QSvgWidget", incompleteStruct.} = object

proc fcQSvgWidget_new(parent: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new".}
proc fcQSvgWidget_new2(): ptr cQSvgWidget {.importc: "QSvgWidget_new2".}
proc fcQSvgWidget_new3(file: struct_miqt_string): ptr cQSvgWidget {.importc: "QSvgWidget_new3".}
proc fcQSvgWidget_new4(file: struct_miqt_string, parent: pointer): ptr cQSvgWidget {.importc: "QSvgWidget_new4".}
proc fcQSvgWidget_metaObject(self: pointer, ): pointer {.importc: "QSvgWidget_metaObject".}
proc fcQSvgWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QSvgWidget_metacast".}
proc fcQSvgWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSvgWidget_metacall".}
proc fcQSvgWidget_tr(s: cstring): struct_miqt_string {.importc: "QSvgWidget_tr".}
proc fcQSvgWidget_trUtf8(s: cstring): struct_miqt_string {.importc: "QSvgWidget_trUtf8".}
proc fcQSvgWidget_renderer(self: pointer, ): pointer {.importc: "QSvgWidget_renderer".}
proc fcQSvgWidget_sizeHint(self: pointer, ): pointer {.importc: "QSvgWidget_sizeHint".}
proc fcQSvgWidget_load(self: pointer, file: struct_miqt_string): void {.importc: "QSvgWidget_load".}
proc fcQSvgWidget_loadWithContents(self: pointer, contents: struct_miqt_string): void {.importc: "QSvgWidget_loadWithContents".}
proc fcQSvgWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgWidget_tr2".}
proc fcQSvgWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgWidget_tr3".}
proc fcQSvgWidget_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSvgWidget_trUtf82".}
proc fcQSvgWidget_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSvgWidget_trUtf83".}
proc fQSvgWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_metaObject".}
proc fcQSvgWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_metaObject".}
proc fQSvgWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSvgWidget_virtualbase_metacast".}
proc fcQSvgWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_metacast".}
proc fQSvgWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSvgWidget_virtualbase_metacall".}
proc fcQSvgWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_metacall".}
proc fQSvgWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_sizeHint".}
proc fcQSvgWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_sizeHint".}
proc fQSvgWidget_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_paintEvent".}
proc fcQSvgWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_paintEvent".}
proc fQSvgWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QSvgWidget_virtualbase_devType".}
proc fcQSvgWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_devType".}
proc fQSvgWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QSvgWidget_virtualbase_setVisible".}
proc fcQSvgWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_setVisible".}
proc fQSvgWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_minimumSizeHint".}
proc fcQSvgWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_minimumSizeHint".}
proc fQSvgWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QSvgWidget_virtualbase_heightForWidth".}
proc fcQSvgWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_heightForWidth".}
proc fQSvgWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QSvgWidget_virtualbase_hasHeightForWidth".}
proc fcQSvgWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_hasHeightForWidth".}
proc fQSvgWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_paintEngine".}
proc fcQSvgWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_paintEngine".}
proc fQSvgWidget_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSvgWidget_virtualbase_event".}
proc fcQSvgWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_event".}
proc fQSvgWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_mousePressEvent".}
proc fcQSvgWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_mousePressEvent".}
proc fQSvgWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_mouseReleaseEvent".}
proc fcQSvgWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_mouseReleaseEvent".}
proc fQSvgWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQSvgWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_mouseDoubleClickEvent".}
proc fQSvgWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_mouseMoveEvent".}
proc fcQSvgWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_mouseMoveEvent".}
proc fQSvgWidget_virtualbase_wheelEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_wheelEvent".}
proc fcQSvgWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_wheelEvent".}
proc fQSvgWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_keyPressEvent".}
proc fcQSvgWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_keyPressEvent".}
proc fQSvgWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_keyReleaseEvent".}
proc fcQSvgWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_keyReleaseEvent".}
proc fQSvgWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_focusInEvent".}
proc fcQSvgWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_focusInEvent".}
proc fQSvgWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_focusOutEvent".}
proc fcQSvgWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_focusOutEvent".}
proc fQSvgWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_enterEvent".}
proc fcQSvgWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_enterEvent".}
proc fQSvgWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_leaveEvent".}
proc fcQSvgWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_leaveEvent".}
proc fQSvgWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_moveEvent".}
proc fcQSvgWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_moveEvent".}
proc fQSvgWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_resizeEvent".}
proc fcQSvgWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_resizeEvent".}
proc fQSvgWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_closeEvent".}
proc fcQSvgWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_closeEvent".}
proc fQSvgWidget_virtualbase_contextMenuEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_contextMenuEvent".}
proc fcQSvgWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_contextMenuEvent".}
proc fQSvgWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_tabletEvent".}
proc fcQSvgWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_tabletEvent".}
proc fQSvgWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_actionEvent".}
proc fcQSvgWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_actionEvent".}
proc fQSvgWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_dragEnterEvent".}
proc fcQSvgWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_dragEnterEvent".}
proc fQSvgWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_dragMoveEvent".}
proc fcQSvgWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_dragMoveEvent".}
proc fQSvgWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_dragLeaveEvent".}
proc fcQSvgWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_dragLeaveEvent".}
proc fQSvgWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_dropEvent".}
proc fcQSvgWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_dropEvent".}
proc fQSvgWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_showEvent".}
proc fcQSvgWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_showEvent".}
proc fQSvgWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_hideEvent".}
proc fcQSvgWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_hideEvent".}
proc fQSvgWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QSvgWidget_virtualbase_nativeEvent".}
proc fcQSvgWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_nativeEvent".}
proc fQSvgWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QSvgWidget_virtualbase_changeEvent".}
proc fcQSvgWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_changeEvent".}
proc fQSvgWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QSvgWidget_virtualbase_metric".}
proc fcQSvgWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_metric".}
proc fQSvgWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSvgWidget_virtualbase_initPainter".}
proc fcQSvgWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_initPainter".}
proc fQSvgWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSvgWidget_virtualbase_redirected".}
proc fcQSvgWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_redirected".}
proc fQSvgWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSvgWidget_virtualbase_sharedPainter".}
proc fcQSvgWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_sharedPainter".}
proc fQSvgWidget_virtualbase_inputMethodEvent(self: pointer, param1: pointer): void{.importc: "QSvgWidget_virtualbase_inputMethodEvent".}
proc fcQSvgWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_inputMethodEvent".}
proc fQSvgWidget_virtualbase_inputMethodQuery(self: pointer, param1: cint): pointer{.importc: "QSvgWidget_virtualbase_inputMethodQuery".}
proc fcQSvgWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_inputMethodQuery".}
proc fQSvgWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QSvgWidget_virtualbase_focusNextPrevChild".}
proc fcQSvgWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_focusNextPrevChild".}
proc fQSvgWidget_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSvgWidget_virtualbase_eventFilter".}
proc fcQSvgWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_eventFilter".}
proc fQSvgWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_timerEvent".}
proc fcQSvgWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_timerEvent".}
proc fQSvgWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_childEvent".}
proc fcQSvgWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_childEvent".}
proc fQSvgWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSvgWidget_virtualbase_customEvent".}
proc fcQSvgWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_customEvent".}
proc fQSvgWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSvgWidget_virtualbase_connectNotify".}
proc fcQSvgWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_connectNotify".}
proc fQSvgWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSvgWidget_virtualbase_disconnectNotify".}
proc fcQSvgWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSvgWidget_override_virtual_disconnectNotify".}
proc fcQSvgWidget_staticMetaObject(): pointer {.importc: "QSvgWidget_staticMetaObject".}
proc fcQSvgWidget_delete(self: pointer) {.importc: "QSvgWidget_delete".}


func init*(T: type gen_qsvgwidget_types.QSvgWidget, h: ptr cQSvgWidget): gen_qsvgwidget_types.QSvgWidget =
  T(h: h)
proc create*(T: type gen_qsvgwidget_types.QSvgWidget, parent: gen_qwidget_types.QWidget): gen_qsvgwidget_types.QSvgWidget =
  gen_qsvgwidget_types.QSvgWidget.init(fcQSvgWidget_new(parent.h))

proc create*(T: type gen_qsvgwidget_types.QSvgWidget, ): gen_qsvgwidget_types.QSvgWidget =
  gen_qsvgwidget_types.QSvgWidget.init(fcQSvgWidget_new2())

proc create*(T: type gen_qsvgwidget_types.QSvgWidget, file: string): gen_qsvgwidget_types.QSvgWidget =
  gen_qsvgwidget_types.QSvgWidget.init(fcQSvgWidget_new3(struct_miqt_string(data: file, len: csize_t(len(file)))))

proc create*(T: type gen_qsvgwidget_types.QSvgWidget, file: string, parent: gen_qwidget_types.QWidget): gen_qsvgwidget_types.QSvgWidget =
  gen_qsvgwidget_types.QSvgWidget.init(fcQSvgWidget_new4(struct_miqt_string(data: file, len: csize_t(len(file))), parent.h))

proc metaObject*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgWidget_metaObject(self.h))

proc metacast*(self: gen_qsvgwidget_types.QSvgWidget, param1: cstring): pointer =
  fcQSvgWidget_metacast(self.h, param1)

proc metacall*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint, param2: cint, param3: pointer): cint =
  fcQSvgWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring): string =
  let v_ms = fcQSvgWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring): string =
  let v_ms = fcQSvgWidget_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc renderer*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qsvgrenderer_types.QSvgRenderer =
  gen_qsvgrenderer_types.QSvgRenderer(h: fcQSvgWidget_renderer(self.h))

proc sizeHint*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgWidget_sizeHint(self.h))

proc load*(self: gen_qsvgwidget_types.QSvgWidget, file: string): void =
  fcQSvgWidget_load(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc load*(self: gen_qsvgwidget_types.QSvgWidget, contents: seq[byte]): void =
  fcQSvgWidget_loadWithContents(self.h, struct_miqt_string(data: cast[cstring](if len(contents) == 0: nil else: unsafeAddr contents[0]), len: csize_t(len(contents))))

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring): string =
  let v_ms = fcQSvgWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSvgWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring): string =
  let v_ms = fcQSvgWidget_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsvgwidget_types.QSvgWidget, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSvgWidget_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSvgWidgetmetaObject*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSvgWidget_virtualbase_metaObject(self.h))

type QSvgWidgetmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmetaObjectProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_metaObject(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_metaObject ".} =
  var nimfunc = cast[ptr QSvgWidgetmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSvgWidgetmetacast*(self: gen_qsvgwidget_types.QSvgWidget, param1: cstring): pointer =
  fQSvgWidget_virtualbase_metacast(self.h, param1)

type QSvgWidgetmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmetacastProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_metacast(self: ptr cQSvgWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSvgWidget_metacast ".} =
  var nimfunc = cast[ptr QSvgWidgetmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSvgWidgetmetacall*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint, param2: cint, param3: pointer): cint =
  fQSvgWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSvgWidgetmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmetacallProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_metacall(self: ptr cQSvgWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSvgWidget_metacall ".} =
  var nimfunc = cast[ptr QSvgWidgetmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSvgWidgetsizeHint*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSvgWidget_virtualbase_sizeHint(self.h))

type QSvgWidgetsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetsizeHintProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_sizeHint(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_sizeHint ".} =
  var nimfunc = cast[ptr QSvgWidgetsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSvgWidgetpaintEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QPaintEvent): void =
  fQSvgWidget_virtualbase_paintEvent(self.h, event.h)

type QSvgWidgetpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetpaintEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_paintEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_paintEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetdevType*(self: gen_qsvgwidget_types.QSvgWidget, ): cint =
  fQSvgWidget_virtualbase_devType(self.h)

type QSvgWidgetdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetdevTypeProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_devType(self: ptr cQSvgWidget, slot: int): cint {.exportc: "miqt_exec_callback_QSvgWidget_devType ".} =
  var nimfunc = cast[ptr QSvgWidgetdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSvgWidgetsetVisible*(self: gen_qsvgwidget_types.QSvgWidget, visible: bool): void =
  fQSvgWidget_virtualbase_setVisible(self.h, visible)

type QSvgWidgetsetVisibleProc* = proc(visible: bool): void
proc onsetVisible*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetsetVisibleProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetsetVisibleProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_setVisible(self: ptr cQSvgWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QSvgWidget_setVisible ".} =
  var nimfunc = cast[ptr QSvgWidgetsetVisibleProc](cast[pointer](slot))
  let slotval1 = visible


  nimfunc[](slotval1)
proc QSvgWidgetminimumSizeHint*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQSvgWidget_virtualbase_minimumSizeHint(self.h))

type QSvgWidgetminimumSizeHintProc* = proc(): gen_qsize_types.QSize
proc onminimumSizeHint*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetminimumSizeHintProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetminimumSizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_minimumSizeHint(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_minimumSizeHint ".} =
  var nimfunc = cast[ptr QSvgWidgetminimumSizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSvgWidgetheightForWidth*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): cint =
  fQSvgWidget_virtualbase_heightForWidth(self.h, param1)

type QSvgWidgetheightForWidthProc* = proc(param1: cint): cint
proc onheightForWidth*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetheightForWidthProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_heightForWidth(self: ptr cQSvgWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSvgWidget_heightForWidth ".} =
  var nimfunc = cast[ptr QSvgWidgetheightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSvgWidgethasHeightForWidth*(self: gen_qsvgwidget_types.QSvgWidget, ): bool =
  fQSvgWidget_virtualbase_hasHeightForWidth(self.h)

type QSvgWidgethasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgethasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QSvgWidgethasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_hasHeightForWidth(self: ptr cQSvgWidget, slot: int): bool {.exportc: "miqt_exec_callback_QSvgWidget_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QSvgWidgethasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSvgWidgetpaintEngine*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQSvgWidget_virtualbase_paintEngine(self.h))

type QSvgWidgetpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetpaintEngineProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_paintEngine(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_paintEngine ".} =
  var nimfunc = cast[ptr QSvgWidgetpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSvgWidgetevent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): bool =
  fQSvgWidget_virtualbase_event(self.h, event.h)

type QSvgWidgeteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgeteventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgeteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_event(self: ptr cQSvgWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSvgWidget_event ".} =
  var nimfunc = cast[ptr QSvgWidgeteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSvgWidgetmousePressEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fQSvgWidget_virtualbase_mousePressEvent(self.h, event.h)

type QSvgWidgetmousePressEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmousePressEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_mousePressEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_mousePressEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetmouseReleaseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fQSvgWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QSvgWidgetmouseReleaseEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_mouseReleaseEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetmouseDoubleClickEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fQSvgWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QSvgWidgetmouseDoubleClickEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_mouseDoubleClickEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetmouseMoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMouseEvent): void =
  fQSvgWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QSvgWidgetmouseMoveEventProc* = proc(event: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_mouseMoveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetwheelEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QWheelEvent): void =
  fQSvgWidget_virtualbase_wheelEvent(self.h, event.h)

type QSvgWidgetwheelEventProc* = proc(event: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetwheelEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_wheelEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_wheelEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetkeyPressEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QKeyEvent): void =
  fQSvgWidget_virtualbase_keyPressEvent(self.h, event.h)

type QSvgWidgetkeyPressEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_keyPressEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_keyPressEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetkeyReleaseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QKeyEvent): void =
  fQSvgWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QSvgWidgetkeyReleaseEventProc* = proc(event: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_keyReleaseEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetfocusInEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QFocusEvent): void =
  fQSvgWidget_virtualbase_focusInEvent(self.h, event.h)

type QSvgWidgetfocusInEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetfocusInEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_focusInEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_focusInEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetfocusOutEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QFocusEvent): void =
  fQSvgWidget_virtualbase_focusOutEvent(self.h, event.h)

type QSvgWidgetfocusOutEventProc* = proc(event: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_focusOutEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_focusOutEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetenterEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): void =
  fQSvgWidget_virtualbase_enterEvent(self.h, event.h)

type QSvgWidgetenterEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onenterEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetenterEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetenterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_enterEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_enterEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetenterEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetleaveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): void =
  fQSvgWidget_virtualbase_leaveEvent(self.h, event.h)

type QSvgWidgetleaveEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc onleaveEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetleaveEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetleaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_leaveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_leaveEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetleaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetmoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QMoveEvent): void =
  fQSvgWidget_virtualbase_moveEvent(self.h, event.h)

type QSvgWidgetmoveEventProc* = proc(event: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmoveEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_moveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_moveEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetresizeEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QResizeEvent): void =
  fQSvgWidget_virtualbase_resizeEvent(self.h, event.h)

type QSvgWidgetresizeEventProc* = proc(event: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetresizeEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_resizeEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_resizeEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetcloseEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QCloseEvent): void =
  fQSvgWidget_virtualbase_closeEvent(self.h, event.h)

type QSvgWidgetcloseEventProc* = proc(event: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetcloseEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_closeEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_closeEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetcontextMenuEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QContextMenuEvent): void =
  fQSvgWidget_virtualbase_contextMenuEvent(self.h, event.h)

type QSvgWidgetcontextMenuEventProc* = proc(event: gen_qevent_types.QContextMenuEvent): void
proc oncontextMenuEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetcontextMenuEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetcontextMenuEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_contextMenuEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_contextMenuEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetcontextMenuEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgettabletEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QTabletEvent): void =
  fQSvgWidget_virtualbase_tabletEvent(self.h, event.h)

type QSvgWidgettabletEventProc* = proc(event: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgettabletEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgettabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_tabletEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_tabletEvent ".} =
  var nimfunc = cast[ptr QSvgWidgettabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetactionEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QActionEvent): void =
  fQSvgWidget_virtualbase_actionEvent(self.h, event.h)

type QSvgWidgetactionEventProc* = proc(event: gen_qevent_types.QActionEvent): void
proc onactionEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetactionEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetactionEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_actionEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_actionEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetactionEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QActionEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetdragEnterEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragEnterEvent): void =
  fQSvgWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QSvgWidgetdragEnterEventProc* = proc(event: gen_qevent_types.QDragEnterEvent): void
proc ondragEnterEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetdragEnterEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetdragEnterEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_dragEnterEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_dragEnterEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetdragEnterEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetdragMoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragMoveEvent): void =
  fQSvgWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QSvgWidgetdragMoveEventProc* = proc(event: gen_qevent_types.QDragMoveEvent): void
proc ondragMoveEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetdragMoveEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetdragMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_dragMoveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_dragMoveEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetdragMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetdragLeaveEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDragLeaveEvent): void =
  fQSvgWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QSvgWidgetdragLeaveEventProc* = proc(event: gen_qevent_types.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetdragLeaveEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetdragLeaveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_dragLeaveEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_dragLeaveEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetdragLeaveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetdropEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QDropEvent): void =
  fQSvgWidget_virtualbase_dropEvent(self.h, event.h)

type QSvgWidgetdropEventProc* = proc(event: gen_qevent_types.QDropEvent): void
proc ondropEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetdropEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetdropEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_dropEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_dropEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetdropEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QDropEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetshowEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QShowEvent): void =
  fQSvgWidget_virtualbase_showEvent(self.h, event.h)

type QSvgWidgetshowEventProc* = proc(event: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetshowEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_showEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_showEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgethideEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qevent_types.QHideEvent): void =
  fQSvgWidget_virtualbase_hideEvent(self.h, event.h)

type QSvgWidgethideEventProc* = proc(event: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgethideEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgethideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_hideEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_hideEvent ".} =
  var nimfunc = cast[ptr QSvgWidgethideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetnativeEvent*(self: gen_qsvgwidget_types.QSvgWidget, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fQSvgWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QSvgWidgetnativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetnativeEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetnativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_nativeEvent(self: ptr cQSvgWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QSvgWidget_nativeEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetnativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSvgWidgetchangeEvent*(self: gen_qsvgwidget_types.QSvgWidget, param1: gen_qcoreevent_types.QEvent): void =
  fQSvgWidget_virtualbase_changeEvent(self.h, param1.h)

type QSvgWidgetchangeEventProc* = proc(param1: gen_qcoreevent_types.QEvent): void
proc onchangeEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetchangeEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetchangeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_changeEvent(self: ptr cQSvgWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_changeEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetchangeEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)


  nimfunc[](slotval1)
proc QSvgWidgetmetric*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): cint =
  fQSvgWidget_virtualbase_metric(self.h, cint(param1))

type QSvgWidgetmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetmetricProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_metric(self: ptr cQSvgWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QSvgWidget_metric ".} =
  var nimfunc = cast[ptr QSvgWidgetmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSvgWidgetinitPainter*(self: gen_qsvgwidget_types.QSvgWidget, painter: gen_qpainter_types.QPainter): void =
  fQSvgWidget_virtualbase_initPainter(self.h, painter.h)

type QSvgWidgetinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetinitPainterProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_initPainter(self: ptr cQSvgWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_initPainter ".} =
  var nimfunc = cast[ptr QSvgWidgetinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSvgWidgetredirected*(self: gen_qsvgwidget_types.QSvgWidget, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQSvgWidget_virtualbase_redirected(self.h, offset.h))

type QSvgWidgetredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetredirectedProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_redirected(self: ptr cQSvgWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSvgWidget_redirected ".} =
  var nimfunc = cast[ptr QSvgWidgetredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSvgWidgetsharedPainter*(self: gen_qsvgwidget_types.QSvgWidget, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQSvgWidget_virtualbase_sharedPainter(self.h))

type QSvgWidgetsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetsharedPainterProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_sharedPainter(self: ptr cQSvgWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgWidget_sharedPainter ".} =
  var nimfunc = cast[ptr QSvgWidgetsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSvgWidgetinputMethodEvent*(self: gen_qsvgwidget_types.QSvgWidget, param1: gen_qevent_types.QInputMethodEvent): void =
  fQSvgWidget_virtualbase_inputMethodEvent(self.h, param1.h)

type QSvgWidgetinputMethodEventProc* = proc(param1: gen_qevent_types.QInputMethodEvent): void
proc oninputMethodEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetinputMethodEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetinputMethodEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_inputMethodEvent(self: ptr cQSvgWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_inputMethodEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetinputMethodEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: param1)


  nimfunc[](slotval1)
proc QSvgWidgetinputMethodQuery*(self: gen_qsvgwidget_types.QSvgWidget, param1: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fQSvgWidget_virtualbase_inputMethodQuery(self.h, cint(param1)))

type QSvgWidgetinputMethodQueryProc* = proc(param1: cint): gen_qvariant_types.QVariant
proc oninputMethodQuery*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetinputMethodQueryProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetinputMethodQueryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_inputMethodQuery(self: ptr cQSvgWidget, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QSvgWidget_inputMethodQuery ".} =
  var nimfunc = cast[ptr QSvgWidgetinputMethodQueryProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSvgWidgetfocusNextPrevChild*(self: gen_qsvgwidget_types.QSvgWidget, next: bool): bool =
  fQSvgWidget_virtualbase_focusNextPrevChild(self.h, next)

type QSvgWidgetfocusNextPrevChildProc* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetfocusNextPrevChildProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetfocusNextPrevChildProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_focusNextPrevChild(self: ptr cQSvgWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QSvgWidget_focusNextPrevChild ".} =
  var nimfunc = cast[ptr QSvgWidgetfocusNextPrevChildProc](cast[pointer](slot))
  let slotval1 = next


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSvgWidgeteventFilter*(self: gen_qsvgwidget_types.QSvgWidget, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSvgWidget_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSvgWidgeteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgeteventFilterProc) =
  # TODO check subclass
  var tmp = new QSvgWidgeteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_eventFilter(self: ptr cQSvgWidget, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSvgWidget_eventFilter ".} =
  var nimfunc = cast[ptr QSvgWidgeteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSvgWidgettimerEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSvgWidget_virtualbase_timerEvent(self.h, event.h)

type QSvgWidgettimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgettimerEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgettimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_timerEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_timerEvent ".} =
  var nimfunc = cast[ptr QSvgWidgettimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetchildEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QChildEvent): void =
  fQSvgWidget_virtualbase_childEvent(self.h, event.h)

type QSvgWidgetchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetchildEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_childEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_childEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetcustomEvent*(self: gen_qsvgwidget_types.QSvgWidget, event: gen_qcoreevent_types.QEvent): void =
  fQSvgWidget_virtualbase_customEvent(self.h, event.h)

type QSvgWidgetcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetcustomEventProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_customEvent(self: ptr cQSvgWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_customEvent ".} =
  var nimfunc = cast[ptr QSvgWidgetcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSvgWidgetconnectNotify*(self: gen_qsvgwidget_types.QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSvgWidget_virtualbase_connectNotify(self.h, signal.h)

type QSvgWidgetconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_connectNotify(self: ptr cQSvgWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_connectNotify ".} =
  var nimfunc = cast[ptr QSvgWidgetconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSvgWidgetdisconnectNotify*(self: gen_qsvgwidget_types.QSvgWidget, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSvgWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QSvgWidgetdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsvgwidget_types.QSvgWidget, slot: QSvgWidgetdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSvgWidgetdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgWidget_disconnectNotify(self: ptr cQSvgWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSvgWidget_disconnectNotify ".} =
  var nimfunc = cast[ptr QSvgWidgetdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsvgwidget_types.QSvgWidget): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSvgWidget_staticMetaObject())
proc delete*(self: gen_qsvgwidget_types.QSvgWidget) =
  fcQSvgWidget_delete(self.h)
