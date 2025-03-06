import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qoffscreensurface.cpp", cflags).}


import ./gen_qoffscreensurface_types
export gen_qoffscreensurface_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ./gen_qscreen_types,
  ./gen_qsurfaceformat_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qscreen_types,
  gen_qsurfaceformat_types

type cQOffscreenSurface*{.exportc: "QOffscreenSurface", incompleteStruct.} = object

proc fcQOffscreenSurface_new(screen: pointer, parent: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new".}
proc fcQOffscreenSurface_new2(): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new2".}
proc fcQOffscreenSurface_new3(screen: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new3".}
proc fcQOffscreenSurface_metaObject(self: pointer, ): pointer {.importc: "QOffscreenSurface_metaObject".}
proc fcQOffscreenSurface_metacast(self: pointer, param1: cstring): pointer {.importc: "QOffscreenSurface_metacast".}
proc fcQOffscreenSurface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QOffscreenSurface_metacall".}
proc fcQOffscreenSurface_tr(s: cstring): struct_miqt_string {.importc: "QOffscreenSurface_tr".}
proc fcQOffscreenSurface_trUtf8(s: cstring): struct_miqt_string {.importc: "QOffscreenSurface_trUtf8".}
proc fcQOffscreenSurface_surfaceType(self: pointer, ): cint {.importc: "QOffscreenSurface_surfaceType".}
proc fcQOffscreenSurface_create(self: pointer, ): void {.importc: "QOffscreenSurface_create".}
proc fcQOffscreenSurface_destroy(self: pointer, ): void {.importc: "QOffscreenSurface_destroy".}
proc fcQOffscreenSurface_isValid(self: pointer, ): bool {.importc: "QOffscreenSurface_isValid".}
proc fcQOffscreenSurface_setFormat(self: pointer, format: pointer): void {.importc: "QOffscreenSurface_setFormat".}
proc fcQOffscreenSurface_format(self: pointer, ): pointer {.importc: "QOffscreenSurface_format".}
proc fcQOffscreenSurface_requestedFormat(self: pointer, ): pointer {.importc: "QOffscreenSurface_requestedFormat".}
proc fcQOffscreenSurface_size(self: pointer, ): pointer {.importc: "QOffscreenSurface_size".}
proc fcQOffscreenSurface_screen(self: pointer, ): pointer {.importc: "QOffscreenSurface_screen".}
proc fcQOffscreenSurface_setScreen(self: pointer, screen: pointer): void {.importc: "QOffscreenSurface_setScreen".}
proc fcQOffscreenSurface_nativeHandle(self: pointer, ): pointer {.importc: "QOffscreenSurface_nativeHandle".}
proc fcQOffscreenSurface_setNativeHandle(self: pointer, handle: pointer): void {.importc: "QOffscreenSurface_setNativeHandle".}
proc fcQOffscreenSurface_screenChanged(self: pointer, screen: pointer): void {.importc: "QOffscreenSurface_screenChanged".}
proc fcQOffscreenSurface_connect_screenChanged(self: pointer, slot: int) {.importc: "QOffscreenSurface_connect_screenChanged".}
proc fcQOffscreenSurface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QOffscreenSurface_tr2".}
proc fcQOffscreenSurface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QOffscreenSurface_tr3".}
proc fcQOffscreenSurface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QOffscreenSurface_trUtf82".}
proc fcQOffscreenSurface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QOffscreenSurface_trUtf83".}
proc fQOffscreenSurface_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QOffscreenSurface_virtualbase_metaObject".}
proc fcQOffscreenSurface_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_metaObject".}
proc fQOffscreenSurface_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QOffscreenSurface_virtualbase_metacast".}
proc fcQOffscreenSurface_override_virtual_metacast(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_metacast".}
proc fQOffscreenSurface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QOffscreenSurface_virtualbase_metacall".}
proc fcQOffscreenSurface_override_virtual_metacall(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_metacall".}
proc fQOffscreenSurface_virtualbase_surfaceType(self: pointer, ): cint{.importc: "QOffscreenSurface_virtualbase_surfaceType".}
proc fcQOffscreenSurface_override_virtual_surfaceType(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_surfaceType".}
proc fQOffscreenSurface_virtualbase_format(self: pointer, ): pointer{.importc: "QOffscreenSurface_virtualbase_format".}
proc fcQOffscreenSurface_override_virtual_format(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_format".}
proc fQOffscreenSurface_virtualbase_size(self: pointer, ): pointer{.importc: "QOffscreenSurface_virtualbase_size".}
proc fcQOffscreenSurface_override_virtual_size(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_size".}
proc fQOffscreenSurface_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QOffscreenSurface_virtualbase_event".}
proc fcQOffscreenSurface_override_virtual_event(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_event".}
proc fQOffscreenSurface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QOffscreenSurface_virtualbase_eventFilter".}
proc fcQOffscreenSurface_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_eventFilter".}
proc fQOffscreenSurface_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QOffscreenSurface_virtualbase_timerEvent".}
proc fcQOffscreenSurface_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_timerEvent".}
proc fQOffscreenSurface_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QOffscreenSurface_virtualbase_childEvent".}
proc fcQOffscreenSurface_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_childEvent".}
proc fQOffscreenSurface_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QOffscreenSurface_virtualbase_customEvent".}
proc fcQOffscreenSurface_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_customEvent".}
proc fQOffscreenSurface_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QOffscreenSurface_virtualbase_connectNotify".}
proc fcQOffscreenSurface_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_connectNotify".}
proc fQOffscreenSurface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QOffscreenSurface_virtualbase_disconnectNotify".}
proc fcQOffscreenSurface_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QOffscreenSurface_override_virtual_disconnectNotify".}
proc fcQOffscreenSurface_staticMetaObject(): pointer {.importc: "QOffscreenSurface_staticMetaObject".}
proc fcQOffscreenSurface_delete(self: pointer) {.importc: "QOffscreenSurface_delete".}


func init*(T: type gen_qoffscreensurface_types.QOffscreenSurface, h: ptr cQOffscreenSurface): gen_qoffscreensurface_types.QOffscreenSurface =
  T(h: h)
proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface, screen: gen_qscreen_types.QScreen, parent: gen_qobject_types.QObject): gen_qoffscreensurface_types.QOffscreenSurface =
  gen_qoffscreensurface_types.QOffscreenSurface.init(fcQOffscreenSurface_new(screen.h, parent.h))

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qoffscreensurface_types.QOffscreenSurface =
  gen_qoffscreensurface_types.QOffscreenSurface.init(fcQOffscreenSurface_new2())

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface, screen: gen_qscreen_types.QScreen): gen_qoffscreensurface_types.QOffscreenSurface =
  gen_qoffscreensurface_types.QOffscreenSurface.init(fcQOffscreenSurface_new3(screen.h))

proc metaObject*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQOffscreenSurface_metaObject(self.h))

proc metacast*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cstring): pointer =
  fcQOffscreenSurface_metacast(self.h, param1)

proc metacall*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cint, param2: cint, param3: pointer): cint =
  fcQOffscreenSurface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring): string =
  let v_ms = fcQOffscreenSurface_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring): string =
  let v_ms = fcQOffscreenSurface_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc surfaceType*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): cint =
  cint(fcQOffscreenSurface_surfaceType(self.h))

proc create*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): void =
  fcQOffscreenSurface_create(self.h)

proc destroy*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): void =
  fcQOffscreenSurface_destroy(self.h)

proc isValid*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): bool =
  fcQOffscreenSurface_isValid(self.h)

proc setFormat*(self: gen_qoffscreensurface_types.QOffscreenSurface, format: gen_qsurfaceformat_types.QSurfaceFormat): void =
  fcQOffscreenSurface_setFormat(self.h, format.h)

proc format*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQOffscreenSurface_format(self.h))

proc requestedFormat*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQOffscreenSurface_requestedFormat(self.h))

proc size*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQOffscreenSurface_size(self.h))

proc screen*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQOffscreenSurface_screen(self.h))

proc setScreen*(self: gen_qoffscreensurface_types.QOffscreenSurface, screen: gen_qscreen_types.QScreen): void =
  fcQOffscreenSurface_setScreen(self.h, screen.h)

proc nativeHandle*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): pointer =
  fcQOffscreenSurface_nativeHandle(self.h)

proc setNativeHandle*(self: gen_qoffscreensurface_types.QOffscreenSurface, handle: pointer): void =
  fcQOffscreenSurface_setNativeHandle(self.h, handle)

proc screenChanged*(self: gen_qoffscreensurface_types.QOffscreenSurface, screen: gen_qscreen_types.QScreen): void =
  fcQOffscreenSurface_screenChanged(self.h, screen.h)

type QOffscreenSurfacescreenChangedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_QOffscreenSurface_screenChanged(slot: int, screen: pointer) {.exportc.} =
  let nimfunc = cast[ptr QOffscreenSurfacescreenChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen)

  nimfunc[](slotval1)

proc onscreenChanged*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacescreenChangedSlot) =
  var tmp = new QOffscreenSurfacescreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_connect_screenChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring, c: cstring): string =
  let v_ms = fcQOffscreenSurface_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQOffscreenSurface_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring, c: cstring): string =
  let v_ms = fcQOffscreenSurface_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQOffscreenSurface_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QOffscreenSurfacemetaObject*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQOffscreenSurface_virtualbase_metaObject(self.h))

type QOffscreenSurfacemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacemetaObjectProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_metaObject(self: ptr cQOffscreenSurface, slot: int): pointer {.exportc: "miqt_exec_callback_QOffscreenSurface_metaObject ".} =
  var nimfunc = cast[ptr QOffscreenSurfacemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QOffscreenSurfacemetacast*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cstring): pointer =
  fQOffscreenSurface_virtualbase_metacast(self.h, param1)

type QOffscreenSurfacemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacemetacastProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_metacast(self: ptr cQOffscreenSurface, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QOffscreenSurface_metacast ".} =
  var nimfunc = cast[ptr QOffscreenSurfacemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QOffscreenSurfacemetacall*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cint, param2: cint, param3: pointer): cint =
  fQOffscreenSurface_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QOffscreenSurfacemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacemetacallProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_metacall(self: ptr cQOffscreenSurface, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QOffscreenSurface_metacall ".} =
  var nimfunc = cast[ptr QOffscreenSurfacemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QOffscreenSurfacesurfaceType*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): cint =
  cint(fQOffscreenSurface_virtualbase_surfaceType(self.h))

type QOffscreenSurfacesurfaceTypeProc* = proc(): cint
proc onsurfaceType*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacesurfaceTypeProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacesurfaceTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_surfaceType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_surfaceType(self: ptr cQOffscreenSurface, slot: int): cint {.exportc: "miqt_exec_callback_QOffscreenSurface_surfaceType ".} =
  var nimfunc = cast[ptr QOffscreenSurfacesurfaceTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QOffscreenSurfaceformat*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fQOffscreenSurface_virtualbase_format(self.h))

type QOffscreenSurfaceformatProc* = proc(): gen_qsurfaceformat_types.QSurfaceFormat
proc onformat*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfaceformatProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfaceformatProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_format(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_format(self: ptr cQOffscreenSurface, slot: int): pointer {.exportc: "miqt_exec_callback_QOffscreenSurface_format ".} =
  var nimfunc = cast[ptr QOffscreenSurfaceformatProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QOffscreenSurfacesize*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQOffscreenSurface_virtualbase_size(self.h))

type QOffscreenSurfacesizeProc* = proc(): gen_qsize_types.QSize
proc onsize*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacesizeProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacesizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_size(self: ptr cQOffscreenSurface, slot: int): pointer {.exportc: "miqt_exec_callback_QOffscreenSurface_size ".} =
  var nimfunc = cast[ptr QOffscreenSurfacesizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QOffscreenSurfaceevent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QEvent): bool =
  fQOffscreenSurface_virtualbase_event(self.h, event.h)

type QOffscreenSurfaceeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfaceeventProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfaceeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_event(self: ptr cQOffscreenSurface, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QOffscreenSurface_event ".} =
  var nimfunc = cast[ptr QOffscreenSurfaceeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QOffscreenSurfaceeventFilter*(self: gen_qoffscreensurface_types.QOffscreenSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQOffscreenSurface_virtualbase_eventFilter(self.h, watched.h, event.h)

type QOffscreenSurfaceeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfaceeventFilterProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfaceeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_eventFilter(self: ptr cQOffscreenSurface, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QOffscreenSurface_eventFilter ".} =
  var nimfunc = cast[ptr QOffscreenSurfaceeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QOffscreenSurfacetimerEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QTimerEvent): void =
  fQOffscreenSurface_virtualbase_timerEvent(self.h, event.h)

type QOffscreenSurfacetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacetimerEventProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_timerEvent(self: ptr cQOffscreenSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_timerEvent ".} =
  var nimfunc = cast[ptr QOffscreenSurfacetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QOffscreenSurfacechildEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QChildEvent): void =
  fQOffscreenSurface_virtualbase_childEvent(self.h, event.h)

type QOffscreenSurfacechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacechildEventProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_childEvent(self: ptr cQOffscreenSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_childEvent ".} =
  var nimfunc = cast[ptr QOffscreenSurfacechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QOffscreenSurfacecustomEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QEvent): void =
  fQOffscreenSurface_virtualbase_customEvent(self.h, event.h)

type QOffscreenSurfacecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacecustomEventProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_customEvent(self: ptr cQOffscreenSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_customEvent ".} =
  var nimfunc = cast[ptr QOffscreenSurfacecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QOffscreenSurfaceconnectNotify*(self: gen_qoffscreensurface_types.QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQOffscreenSurface_virtualbase_connectNotify(self.h, signal.h)

type QOffscreenSurfaceconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfaceconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfaceconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_connectNotify(self: ptr cQOffscreenSurface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_connectNotify ".} =
  var nimfunc = cast[ptr QOffscreenSurfaceconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QOffscreenSurfacedisconnectNotify*(self: gen_qoffscreensurface_types.QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQOffscreenSurface_virtualbase_disconnectNotify(self.h, signal.h)

type QOffscreenSurfacedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QOffscreenSurfacedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QOffscreenSurface_disconnectNotify(self: ptr cQOffscreenSurface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QOffscreenSurface_disconnectNotify ".} =
  var nimfunc = cast[ptr QOffscreenSurfacedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qoffscreensurface_types.QOffscreenSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQOffscreenSurface_staticMetaObject())
proc delete*(self: gen_qoffscreensurface_types.QOffscreenSurface) =
  fcQOffscreenSurface_delete(self.h)
