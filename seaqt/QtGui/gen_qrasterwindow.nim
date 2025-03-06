import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qrasterwindow.cpp", cflags).}


import ./gen_qrasterwindow_types
export gen_qrasterwindow_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ./gen_qaccessible_types,
  ./gen_qevent_types,
  ./gen_qpaintdevice_types,
  ./gen_qpaintdevicewindow,
  ./gen_qpainter_types,
  ./gen_qsurfaceformat_types,
  ./gen_qwindow_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qaccessible_types,
  gen_qevent_types,
  gen_qpaintdevice_types,
  gen_qpaintdevicewindow,
  gen_qpainter_types,
  gen_qsurfaceformat_types,
  gen_qwindow_types

type cQRasterWindow*{.exportc: "QRasterWindow", incompleteStruct.} = object

proc fcQRasterWindow_new(): ptr cQRasterWindow {.importc: "QRasterWindow_new".}
proc fcQRasterWindow_new2(parent: pointer): ptr cQRasterWindow {.importc: "QRasterWindow_new2".}
proc fcQRasterWindow_metaObject(self: pointer, ): pointer {.importc: "QRasterWindow_metaObject".}
proc fcQRasterWindow_metacast(self: pointer, param1: cstring): pointer {.importc: "QRasterWindow_metacast".}
proc fcQRasterWindow_tr(s: cstring): struct_miqt_string {.importc: "QRasterWindow_tr".}
proc fcQRasterWindow_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QRasterWindow_tr2".}
proc fcQRasterWindow_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QRasterWindow_tr3".}
proc fQRasterWindow_virtualbase_metric(self: pointer, metric: cint): cint{.importc: "QRasterWindow_virtualbase_metric".}
proc fcQRasterWindow_override_virtual_metric(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_metric".}
proc fQRasterWindow_virtualbase_redirected(self: pointer, param1: pointer): pointer{.importc: "QRasterWindow_virtualbase_redirected".}
proc fcQRasterWindow_override_virtual_redirected(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_redirected".}
proc fQRasterWindow_virtualbase_exposeEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_exposeEvent".}
proc fcQRasterWindow_override_virtual_exposeEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_exposeEvent".}
proc fQRasterWindow_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QRasterWindow_virtualbase_paintEvent".}
proc fcQRasterWindow_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_paintEvent".}
proc fQRasterWindow_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QRasterWindow_virtualbase_event".}
proc fcQRasterWindow_override_virtual_event(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_event".}
proc fQRasterWindow_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QRasterWindow_virtualbase_surfaceType".}
proc fcQRasterWindow_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_surfaceType".}
proc fQRasterWindow_virtualbase_format(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_format".}
proc fcQRasterWindow_override_virtual_format(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_format".}
proc fQRasterWindow_virtualbase_size(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_size".}
proc fcQRasterWindow_override_virtual_size(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_size".}
proc fQRasterWindow_virtualbase_accessibleRoot(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_accessibleRoot".}
proc fcQRasterWindow_override_virtual_accessibleRoot(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_accessibleRoot".}
proc fQRasterWindow_virtualbase_focusObject(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_focusObject".}
proc fcQRasterWindow_override_virtual_focusObject(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_focusObject".}
proc fQRasterWindow_virtualbase_resizeEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_resizeEvent".}
proc fcQRasterWindow_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_resizeEvent".}
proc fQRasterWindow_virtualbase_moveEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_moveEvent".}
proc fcQRasterWindow_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_moveEvent".}
proc fQRasterWindow_virtualbase_focusInEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_focusInEvent".}
proc fcQRasterWindow_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_focusInEvent".}
proc fQRasterWindow_virtualbase_focusOutEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_focusOutEvent".}
proc fcQRasterWindow_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_focusOutEvent".}
proc fQRasterWindow_virtualbase_showEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_showEvent".}
proc fcQRasterWindow_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_showEvent".}
proc fQRasterWindow_virtualbase_hideEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_hideEvent".}
proc fcQRasterWindow_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_hideEvent".}
proc fQRasterWindow_virtualbase_closeEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_closeEvent".}
proc fcQRasterWindow_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_closeEvent".}
proc fQRasterWindow_virtualbase_keyPressEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_keyPressEvent".}
proc fcQRasterWindow_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_keyPressEvent".}
proc fQRasterWindow_virtualbase_keyReleaseEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_keyReleaseEvent".}
proc fcQRasterWindow_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_keyReleaseEvent".}
proc fQRasterWindow_virtualbase_mousePressEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_mousePressEvent".}
proc fcQRasterWindow_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_mousePressEvent".}
proc fQRasterWindow_virtualbase_mouseReleaseEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_mouseReleaseEvent".}
proc fcQRasterWindow_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_mouseReleaseEvent".}
proc fQRasterWindow_virtualbase_mouseDoubleClickEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_mouseDoubleClickEvent".}
proc fcQRasterWindow_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_mouseDoubleClickEvent".}
proc fQRasterWindow_virtualbase_mouseMoveEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_mouseMoveEvent".}
proc fcQRasterWindow_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_mouseMoveEvent".}
proc fQRasterWindow_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_wheelEvent".}
proc fcQRasterWindow_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_wheelEvent".}
proc fQRasterWindow_virtualbase_touchEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_touchEvent".}
proc fcQRasterWindow_override_virtual_touchEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_touchEvent".}
proc fQRasterWindow_virtualbase_tabletEvent(self: pointer, param1: pointer): void{.importc: "QRasterWindow_virtualbase_tabletEvent".}
proc fcQRasterWindow_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_tabletEvent".}
proc fQRasterWindow_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QRasterWindow_virtualbase_nativeEvent".}
proc fcQRasterWindow_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_nativeEvent".}
proc fQRasterWindow_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QRasterWindow_virtualbase_eventFilter".}
proc fcQRasterWindow_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_eventFilter".}
proc fQRasterWindow_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QRasterWindow_virtualbase_timerEvent".}
proc fcQRasterWindow_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_timerEvent".}
proc fQRasterWindow_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QRasterWindow_virtualbase_childEvent".}
proc fcQRasterWindow_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_childEvent".}
proc fQRasterWindow_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QRasterWindow_virtualbase_customEvent".}
proc fcQRasterWindow_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_customEvent".}
proc fQRasterWindow_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QRasterWindow_virtualbase_connectNotify".}
proc fcQRasterWindow_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_connectNotify".}
proc fQRasterWindow_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QRasterWindow_virtualbase_disconnectNotify".}
proc fcQRasterWindow_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_disconnectNotify".}
proc fQRasterWindow_virtualbase_devType(self: pointer, ): cint{.importc: "QRasterWindow_virtualbase_devType".}
proc fcQRasterWindow_override_virtual_devType(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_devType".}
proc fQRasterWindow_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QRasterWindow_virtualbase_initPainter".}
proc fcQRasterWindow_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_initPainter".}
proc fQRasterWindow_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QRasterWindow_virtualbase_sharedPainter".}
proc fcQRasterWindow_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QRasterWindow_override_virtual_sharedPainter".}
proc fcQRasterWindow_delete(self: pointer) {.importc: "QRasterWindow_delete".}


func init*(T: type gen_qrasterwindow_types.QRasterWindow, h: ptr cQRasterWindow): gen_qrasterwindow_types.QRasterWindow =
  T(h: h)
proc create*(T: type gen_qrasterwindow_types.QRasterWindow, ): gen_qrasterwindow_types.QRasterWindow =
  gen_qrasterwindow_types.QRasterWindow.init(fcQRasterWindow_new())

proc create*(T: type gen_qrasterwindow_types.QRasterWindow, parent: gen_qwindow_types.QWindow): gen_qrasterwindow_types.QRasterWindow =
  gen_qrasterwindow_types.QRasterWindow.init(fcQRasterWindow_new2(parent.h))

proc metaObject*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQRasterWindow_metaObject(self.h))

proc metacast*(self: gen_qrasterwindow_types.QRasterWindow, param1: cstring): pointer =
  fcQRasterWindow_metacast(self.h, param1)

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring): string =
  let v_ms = fcQRasterWindow_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring, c: cstring): string =
  let v_ms = fcQRasterWindow_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qrasterwindow_types.QRasterWindow, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQRasterWindow_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QRasterWindowmetric*(self: gen_qrasterwindow_types.QRasterWindow, metric: cint): cint =
  fQRasterWindow_virtualbase_metric(self.h, cint(metric))

type QRasterWindowmetricProc* = proc(metric: cint): cint
proc onmetric*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowmetricProc) =
  # TODO check subclass
  var tmp = new QRasterWindowmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_metric(self: ptr cQRasterWindow, slot: int, metric: cint): cint {.exportc: "miqt_exec_callback_QRasterWindow_metric ".} =
  var nimfunc = cast[ptr QRasterWindowmetricProc](cast[pointer](slot))
  let slotval1 = cint(metric)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRasterWindowredirected*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQRasterWindow_virtualbase_redirected(self.h, param1.h))

type QRasterWindowredirectedProc* = proc(param1: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowredirectedProc) =
  # TODO check subclass
  var tmp = new QRasterWindowredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_redirected(self: ptr cQRasterWindow, slot: int, param1: pointer): pointer {.exportc: "miqt_exec_callback_QRasterWindow_redirected ".} =
  var nimfunc = cast[ptr QRasterWindowredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QRasterWindowexposeEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QExposeEvent): void =
  fQRasterWindow_virtualbase_exposeEvent(self.h, param1.h)

type QRasterWindowexposeEventProc* = proc(param1: gen_qevent_types.QExposeEvent): void
proc onexposeEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowexposeEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowexposeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_exposeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_exposeEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_exposeEvent ".} =
  var nimfunc = cast[ptr QRasterWindowexposeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QExposeEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowpaintEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qevent_types.QPaintEvent): void =
  fQRasterWindow_virtualbase_paintEvent(self.h, event.h)

type QRasterWindowpaintEventProc* = proc(event: gen_qevent_types.QPaintEvent): void
proc onpaintEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowpaintEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowpaintEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_paintEvent(self: ptr cQRasterWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_paintEvent ".} =
  var nimfunc = cast[ptr QRasterWindowpaintEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QPaintEvent(h: event)


  nimfunc[](slotval1)
proc QRasterWindowevent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QEvent): bool =
  fQRasterWindow_virtualbase_event(self.h, event.h)

type QRasterWindoweventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindoweventProc) =
  # TODO check subclass
  var tmp = new QRasterWindoweventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_event(self: ptr cQRasterWindow, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QRasterWindow_event ".} =
  var nimfunc = cast[ptr QRasterWindoweventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QRasterWindowsurfaceType*(self: gen_qrasterwindow_types.QRasterWindow, ): cint =
  cint(fQRasterWindow_virtualbase_surfaceType(self.h))

type QRasterWindowsurfaceTypeProc* = proc(): cint
proc onsurfaceType*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowsurfaceTypeProc) =
  # TODO check subclass
  var tmp = new QRasterWindowsurfaceTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_surfaceType(self: ptr cQRasterWindow, slot: int): cint {.exportc: "miqt_exec_callback_QRasterWindow_surfaceType ".} =
  var nimfunc = cast[ptr QRasterWindowsurfaceTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QRasterWindowformat*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fQRasterWindow_virtualbase_format(self.h))

type QRasterWindowformatProc* = proc(): gen_qsurfaceformat_types.QSurfaceFormat
proc onformat*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowformatProc) =
  # TODO check subclass
  var tmp = new QRasterWindowformatProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_format(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_format ".} =
  var nimfunc = cast[ptr QRasterWindowformatProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRasterWindowsize*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQRasterWindow_virtualbase_size(self.h))

type QRasterWindowsizeProc* = proc(): gen_qsize_types.QSize
proc onsize*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowsizeProc) =
  # TODO check subclass
  var tmp = new QRasterWindowsizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_size(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_size ".} =
  var nimfunc = cast[ptr QRasterWindowsizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRasterWindowaccessibleRoot*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qaccessible_types.QAccessibleInterface =
  gen_qaccessible_types.QAccessibleInterface(h: fQRasterWindow_virtualbase_accessibleRoot(self.h))

type QRasterWindowaccessibleRootProc* = proc(): gen_qaccessible_types.QAccessibleInterface
proc onaccessibleRoot*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowaccessibleRootProc) =
  # TODO check subclass
  var tmp = new QRasterWindowaccessibleRootProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_accessibleRoot(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_accessibleRoot(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_accessibleRoot ".} =
  var nimfunc = cast[ptr QRasterWindowaccessibleRootProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRasterWindowfocusObject*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fQRasterWindow_virtualbase_focusObject(self.h))

type QRasterWindowfocusObjectProc* = proc(): gen_qobject_types.QObject
proc onfocusObject*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowfocusObjectProc) =
  # TODO check subclass
  var tmp = new QRasterWindowfocusObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_focusObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_focusObject(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_focusObject ".} =
  var nimfunc = cast[ptr QRasterWindowfocusObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QRasterWindowresizeEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QResizeEvent): void =
  fQRasterWindow_virtualbase_resizeEvent(self.h, param1.h)

type QRasterWindowresizeEventProc* = proc(param1: gen_qevent_types.QResizeEvent): void
proc onresizeEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowresizeEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowresizeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_resizeEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_resizeEvent ".} =
  var nimfunc = cast[ptr QRasterWindowresizeEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QResizeEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowmoveEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMoveEvent): void =
  fQRasterWindow_virtualbase_moveEvent(self.h, param1.h)

type QRasterWindowmoveEventProc* = proc(param1: gen_qevent_types.QMoveEvent): void
proc onmoveEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowmoveEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowmoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_moveEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_moveEvent ".} =
  var nimfunc = cast[ptr QRasterWindowmoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMoveEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowfocusInEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QFocusEvent): void =
  fQRasterWindow_virtualbase_focusInEvent(self.h, param1.h)

type QRasterWindowfocusInEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusInEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowfocusInEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowfocusInEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_focusInEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_focusInEvent ".} =
  var nimfunc = cast[ptr QRasterWindowfocusInEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowfocusOutEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QFocusEvent): void =
  fQRasterWindow_virtualbase_focusOutEvent(self.h, param1.h)

type QRasterWindowfocusOutEventProc* = proc(param1: gen_qevent_types.QFocusEvent): void
proc onfocusOutEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowfocusOutEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowfocusOutEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_focusOutEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_focusOutEvent ".} =
  var nimfunc = cast[ptr QRasterWindowfocusOutEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QFocusEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowshowEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QShowEvent): void =
  fQRasterWindow_virtualbase_showEvent(self.h, param1.h)

type QRasterWindowshowEventProc* = proc(param1: gen_qevent_types.QShowEvent): void
proc onshowEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowshowEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowshowEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_showEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_showEvent ".} =
  var nimfunc = cast[ptr QRasterWindowshowEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QShowEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowhideEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QHideEvent): void =
  fQRasterWindow_virtualbase_hideEvent(self.h, param1.h)

type QRasterWindowhideEventProc* = proc(param1: gen_qevent_types.QHideEvent): void
proc onhideEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowhideEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowhideEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_hideEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_hideEvent ".} =
  var nimfunc = cast[ptr QRasterWindowhideEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QHideEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowcloseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QCloseEvent): void =
  fQRasterWindow_virtualbase_closeEvent(self.h, param1.h)

type QRasterWindowcloseEventProc* = proc(param1: gen_qevent_types.QCloseEvent): void
proc oncloseEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowcloseEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowcloseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_closeEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_closeEvent ".} =
  var nimfunc = cast[ptr QRasterWindowcloseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QCloseEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowkeyPressEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QKeyEvent): void =
  fQRasterWindow_virtualbase_keyPressEvent(self.h, param1.h)

type QRasterWindowkeyPressEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyPressEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowkeyPressEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowkeyPressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_keyPressEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_keyPressEvent ".} =
  var nimfunc = cast[ptr QRasterWindowkeyPressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowkeyReleaseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QKeyEvent): void =
  fQRasterWindow_virtualbase_keyReleaseEvent(self.h, param1.h)

type QRasterWindowkeyReleaseEventProc* = proc(param1: gen_qevent_types.QKeyEvent): void
proc onkeyReleaseEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowkeyReleaseEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowkeyReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_keyReleaseEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_keyReleaseEvent ".} =
  var nimfunc = cast[ptr QRasterWindowkeyReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QKeyEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowmousePressEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQRasterWindow_virtualbase_mousePressEvent(self.h, param1.h)

type QRasterWindowmousePressEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmousePressEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowmousePressEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowmousePressEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_mousePressEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_mousePressEvent ".} =
  var nimfunc = cast[ptr QRasterWindowmousePressEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowmouseReleaseEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQRasterWindow_virtualbase_mouseReleaseEvent(self.h, param1.h)

type QRasterWindowmouseReleaseEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseReleaseEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowmouseReleaseEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowmouseReleaseEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_mouseReleaseEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_mouseReleaseEvent ".} =
  var nimfunc = cast[ptr QRasterWindowmouseReleaseEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowmouseDoubleClickEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQRasterWindow_virtualbase_mouseDoubleClickEvent(self.h, param1.h)

type QRasterWindowmouseDoubleClickEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowmouseDoubleClickEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowmouseDoubleClickEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_mouseDoubleClickEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_mouseDoubleClickEvent ".} =
  var nimfunc = cast[ptr QRasterWindowmouseDoubleClickEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowmouseMoveEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QMouseEvent): void =
  fQRasterWindow_virtualbase_mouseMoveEvent(self.h, param1.h)

type QRasterWindowmouseMoveEventProc* = proc(param1: gen_qevent_types.QMouseEvent): void
proc onmouseMoveEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowmouseMoveEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowmouseMoveEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_mouseMoveEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_mouseMoveEvent ".} =
  var nimfunc = cast[ptr QRasterWindowmouseMoveEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QMouseEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowwheelEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QWheelEvent): void =
  fQRasterWindow_virtualbase_wheelEvent(self.h, param1.h)

type QRasterWindowwheelEventProc* = proc(param1: gen_qevent_types.QWheelEvent): void
proc onwheelEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowwheelEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowwheelEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_wheelEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_wheelEvent ".} =
  var nimfunc = cast[ptr QRasterWindowwheelEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowtouchEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QTouchEvent): void =
  fQRasterWindow_virtualbase_touchEvent(self.h, param1.h)

type QRasterWindowtouchEventProc* = proc(param1: gen_qevent_types.QTouchEvent): void
proc ontouchEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowtouchEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowtouchEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_touchEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_touchEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_touchEvent ".} =
  var nimfunc = cast[ptr QRasterWindowtouchEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTouchEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindowtabletEvent*(self: gen_qrasterwindow_types.QRasterWindow, param1: gen_qevent_types.QTabletEvent): void =
  fQRasterWindow_virtualbase_tabletEvent(self.h, param1.h)

type QRasterWindowtabletEventProc* = proc(param1: gen_qevent_types.QTabletEvent): void
proc ontabletEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowtabletEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowtabletEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_tabletEvent(self: ptr cQRasterWindow, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_tabletEvent ".} =
  var nimfunc = cast[ptr QRasterWindowtabletEventProc](cast[pointer](slot))
  let slotval1 = gen_qevent_types.QTabletEvent(h: param1)


  nimfunc[](slotval1)
proc QRasterWindownativeEvent*(self: gen_qrasterwindow_types.QRasterWindow, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =
  fQRasterWindow_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QRasterWindownativeEventProc* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindownativeEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindownativeEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_nativeEvent(self: ptr cQRasterWindow, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QRasterWindow_nativeEvent ".} =
  var nimfunc = cast[ptr QRasterWindownativeEventProc](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QRasterWindoweventFilter*(self: gen_qrasterwindow_types.QRasterWindow, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQRasterWindow_virtualbase_eventFilter(self.h, watched.h, event.h)

type QRasterWindoweventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindoweventFilterProc) =
  # TODO check subclass
  var tmp = new QRasterWindoweventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_eventFilter(self: ptr cQRasterWindow, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QRasterWindow_eventFilter ".} =
  var nimfunc = cast[ptr QRasterWindoweventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QRasterWindowtimerEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QTimerEvent): void =
  fQRasterWindow_virtualbase_timerEvent(self.h, event.h)

type QRasterWindowtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowtimerEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_timerEvent(self: ptr cQRasterWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_timerEvent ".} =
  var nimfunc = cast[ptr QRasterWindowtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QRasterWindowchildEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QChildEvent): void =
  fQRasterWindow_virtualbase_childEvent(self.h, event.h)

type QRasterWindowchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowchildEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_childEvent(self: ptr cQRasterWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_childEvent ".} =
  var nimfunc = cast[ptr QRasterWindowchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QRasterWindowcustomEvent*(self: gen_qrasterwindow_types.QRasterWindow, event: gen_qcoreevent_types.QEvent): void =
  fQRasterWindow_virtualbase_customEvent(self.h, event.h)

type QRasterWindowcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowcustomEventProc) =
  # TODO check subclass
  var tmp = new QRasterWindowcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_customEvent(self: ptr cQRasterWindow, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_customEvent ".} =
  var nimfunc = cast[ptr QRasterWindowcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QRasterWindowconnectNotify*(self: gen_qrasterwindow_types.QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRasterWindow_virtualbase_connectNotify(self.h, signal.h)

type QRasterWindowconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRasterWindowconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_connectNotify(self: ptr cQRasterWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_connectNotify ".} =
  var nimfunc = cast[ptr QRasterWindowconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QRasterWindowdisconnectNotify*(self: gen_qrasterwindow_types.QRasterWindow, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQRasterWindow_virtualbase_disconnectNotify(self.h, signal.h)

type QRasterWindowdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QRasterWindowdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_disconnectNotify(self: ptr cQRasterWindow, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_disconnectNotify ".} =
  var nimfunc = cast[ptr QRasterWindowdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QRasterWindowdevType*(self: gen_qrasterwindow_types.QRasterWindow, ): cint =
  fQRasterWindow_virtualbase_devType(self.h)

type QRasterWindowdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowdevTypeProc) =
  # TODO check subclass
  var tmp = new QRasterWindowdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_devType(self: ptr cQRasterWindow, slot: int): cint {.exportc: "miqt_exec_callback_QRasterWindow_devType ".} =
  var nimfunc = cast[ptr QRasterWindowdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QRasterWindowinitPainter*(self: gen_qrasterwindow_types.QRasterWindow, painter: gen_qpainter_types.QPainter): void =
  fQRasterWindow_virtualbase_initPainter(self.h, painter.h)

type QRasterWindowinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowinitPainterProc) =
  # TODO check subclass
  var tmp = new QRasterWindowinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_initPainter(self: ptr cQRasterWindow, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QRasterWindow_initPainter ".} =
  var nimfunc = cast[ptr QRasterWindowinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QRasterWindowsharedPainter*(self: gen_qrasterwindow_types.QRasterWindow, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQRasterWindow_virtualbase_sharedPainter(self.h))

type QRasterWindowsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qrasterwindow_types.QRasterWindow, slot: QRasterWindowsharedPainterProc) =
  # TODO check subclass
  var tmp = new QRasterWindowsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQRasterWindow_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QRasterWindow_sharedPainter(self: ptr cQRasterWindow, slot: int): pointer {.exportc: "miqt_exec_callback_QRasterWindow_sharedPainter ".} =
  var nimfunc = cast[ptr QRasterWindowsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qrasterwindow_types.QRasterWindow) =
  fcQRasterWindow_delete(self.h)
