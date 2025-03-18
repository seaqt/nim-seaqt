import ./qtgui_pkg

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


{.compile("gen_qoffscreensurface.cpp", QtGuiCFlags).}


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

proc fcQOffscreenSurface_metaObject(self: pointer): pointer {.importc: "QOffscreenSurface_metaObject".}
proc fcQOffscreenSurface_metacast(self: pointer, param1: cstring): pointer {.importc: "QOffscreenSurface_metacast".}
proc fcQOffscreenSurface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QOffscreenSurface_metacall".}
proc fcQOffscreenSurface_tr(s: cstring): struct_miqt_string {.importc: "QOffscreenSurface_tr".}
proc fcQOffscreenSurface_trUtf8(s: cstring): struct_miqt_string {.importc: "QOffscreenSurface_trUtf8".}
proc fcQOffscreenSurface_surfaceType(self: pointer): cint {.importc: "QOffscreenSurface_surfaceType".}
proc fcQOffscreenSurface_createX(self: pointer): void {.importc: "QOffscreenSurface_create".}
proc fcQOffscreenSurface_destroy(self: pointer): void {.importc: "QOffscreenSurface_destroy".}
proc fcQOffscreenSurface_isValid(self: pointer): bool {.importc: "QOffscreenSurface_isValid".}
proc fcQOffscreenSurface_setFormat(self: pointer, format: pointer): void {.importc: "QOffscreenSurface_setFormat".}
proc fcQOffscreenSurface_format(self: pointer): pointer {.importc: "QOffscreenSurface_format".}
proc fcQOffscreenSurface_requestedFormat(self: pointer): pointer {.importc: "QOffscreenSurface_requestedFormat".}
proc fcQOffscreenSurface_size(self: pointer): pointer {.importc: "QOffscreenSurface_size".}
proc fcQOffscreenSurface_screen(self: pointer): pointer {.importc: "QOffscreenSurface_screen".}
proc fcQOffscreenSurface_setScreen(self: pointer, screen: pointer): void {.importc: "QOffscreenSurface_setScreen".}
proc fcQOffscreenSurface_nativeHandle(self: pointer): pointer {.importc: "QOffscreenSurface_nativeHandle".}
proc fcQOffscreenSurface_setNativeHandle(self: pointer, handle: pointer): void {.importc: "QOffscreenSurface_setNativeHandle".}
proc fcQOffscreenSurface_screenChanged(self: pointer, screen: pointer): void {.importc: "QOffscreenSurface_screenChanged".}
proc fcQOffscreenSurface_connect_screenChanged(self: pointer, slot: int, callback: proc (slot: int, screen: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QOffscreenSurface_connect_screenChanged".}
proc fcQOffscreenSurface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QOffscreenSurface_tr2".}
proc fcQOffscreenSurface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QOffscreenSurface_tr3".}
proc fcQOffscreenSurface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QOffscreenSurface_trUtf82".}
proc fcQOffscreenSurface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QOffscreenSurface_trUtf83".}
proc fcQOffscreenSurface_vtbl(self: pointer): pointer {.importc: "QOffscreenSurface_vtbl".}
proc fcQOffscreenSurface_vdata(self: pointer): pointer {.importc: "QOffscreenSurface_vdata".}

type cQOffscreenSurfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  surfaceType*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  format*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQOffscreenSurface_virtualbase_metaObject(self: pointer): pointer {.importc: "QOffscreenSurface_virtualbase_metaObject".}
proc fcQOffscreenSurface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QOffscreenSurface_virtualbase_metacast".}
proc fcQOffscreenSurface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QOffscreenSurface_virtualbase_metacall".}
proc fcQOffscreenSurface_virtualbase_surfaceType(self: pointer): cint {.importc: "QOffscreenSurface_virtualbase_surfaceType".}
proc fcQOffscreenSurface_virtualbase_format(self: pointer): pointer {.importc: "QOffscreenSurface_virtualbase_format".}
proc fcQOffscreenSurface_virtualbase_size(self: pointer): pointer {.importc: "QOffscreenSurface_virtualbase_size".}
proc fcQOffscreenSurface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QOffscreenSurface_virtualbase_event".}
proc fcQOffscreenSurface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QOffscreenSurface_virtualbase_eventFilter".}
proc fcQOffscreenSurface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QOffscreenSurface_virtualbase_timerEvent".}
proc fcQOffscreenSurface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QOffscreenSurface_virtualbase_childEvent".}
proc fcQOffscreenSurface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QOffscreenSurface_virtualbase_customEvent".}
proc fcQOffscreenSurface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QOffscreenSurface_virtualbase_connectNotify".}
proc fcQOffscreenSurface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QOffscreenSurface_virtualbase_disconnectNotify".}
proc fcQOffscreenSurface_protectedbase_sender(self: pointer): pointer {.importc: "QOffscreenSurface_protectedbase_sender".}
proc fcQOffscreenSurface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QOffscreenSurface_protectedbase_senderSignalIndex".}
proc fcQOffscreenSurface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QOffscreenSurface_protectedbase_receivers".}
proc fcQOffscreenSurface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QOffscreenSurface_protectedbase_isSignalConnected".}
proc fcQOffscreenSurface_new(vtbl, vdata: pointer, screen: pointer, parent: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new".}
proc fcQOffscreenSurface_new2(vtbl, vdata: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new2".}
proc fcQOffscreenSurface_new3(vtbl, vdata: pointer, screen: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new3".}
proc fcQOffscreenSurface_staticMetaObject(): pointer {.importc: "QOffscreenSurface_staticMetaObject".}

proc metaObject*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQOffscreenSurface_metaObject(self.h), owned: false)

proc metacast*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cstring): pointer =
  fcQOffscreenSurface_metacast(self.h, param1)

proc metacall*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cint, param2: cint, param3: pointer): cint =
  fcQOffscreenSurface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring): string =
  let v_ms = fcQOffscreenSurface_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring): string =
  let v_ms = fcQOffscreenSurface_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc surfaceType*(self: gen_qoffscreensurface_types.QOffscreenSurface): cint =
  cint(fcQOffscreenSurface_surfaceType(self.h))

proc createX*(self: gen_qoffscreensurface_types.QOffscreenSurface): void =
  fcQOffscreenSurface_createX(self.h)

proc destroy*(self: gen_qoffscreensurface_types.QOffscreenSurface): void =
  fcQOffscreenSurface_destroy(self.h)

proc isValid*(self: gen_qoffscreensurface_types.QOffscreenSurface): bool =
  fcQOffscreenSurface_isValid(self.h)

proc setFormat*(self: gen_qoffscreensurface_types.QOffscreenSurface, format: gen_qsurfaceformat_types.QSurfaceFormat): void =
  fcQOffscreenSurface_setFormat(self.h, format.h)

proc format*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQOffscreenSurface_format(self.h), owned: true)

proc requestedFormat*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQOffscreenSurface_requestedFormat(self.h), owned: true)

proc size*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQOffscreenSurface_size(self.h), owned: true)

proc screen*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQOffscreenSurface_screen(self.h), owned: false)

proc setScreen*(self: gen_qoffscreensurface_types.QOffscreenSurface, screen: gen_qscreen_types.QScreen): void =
  fcQOffscreenSurface_setScreen(self.h, screen.h)

proc nativeHandle*(self: gen_qoffscreensurface_types.QOffscreenSurface): pointer =
  fcQOffscreenSurface_nativeHandle(self.h)

proc setNativeHandle*(self: gen_qoffscreensurface_types.QOffscreenSurface, handle: pointer): void =
  fcQOffscreenSurface_setNativeHandle(self.h, handle)

proc screenChanged*(self: gen_qoffscreensurface_types.QOffscreenSurface, screen: gen_qscreen_types.QScreen): void =
  fcQOffscreenSurface_screenChanged(self.h, screen.h)

type QOffscreenSurfacescreenChangedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc fcQOffscreenSurface_slot_callback_screenChanged(slot: int, screen: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QOffscreenSurfacescreenChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen, owned: false)

  nimfunc[](slotval1)

proc fcQOffscreenSurface_slot_callback_screenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QOffscreenSurfacescreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onScreenChanged*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacescreenChangedSlot) =
  var tmp = new QOffscreenSurfacescreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_connect_screenChanged(self.h, cast[int](addr tmp[]), fcQOffscreenSurface_slot_callback_screenChanged, fcQOffscreenSurface_slot_callback_screenChanged_release)

proc tr*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring, c: cstring): string =
  let v_ms = fcQOffscreenSurface_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQOffscreenSurface_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring, c: cstring): string =
  let v_ms = fcQOffscreenSurface_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qoffscreensurface_types.QOffscreenSurface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQOffscreenSurface_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QOffscreenSurfacemetaObjectProc* = proc(self: QOffscreenSurface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QOffscreenSurfacemetacastProc* = proc(self: QOffscreenSurface, param1: cstring): pointer {.raises: [], gcsafe.}
type QOffscreenSurfacemetacallProc* = proc(self: QOffscreenSurface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QOffscreenSurfacesurfaceTypeProc* = proc(self: QOffscreenSurface): cint {.raises: [], gcsafe.}
type QOffscreenSurfaceformatProc* = proc(self: QOffscreenSurface): gen_qsurfaceformat_types.QSurfaceFormat {.raises: [], gcsafe.}
type QOffscreenSurfacesizeProc* = proc(self: QOffscreenSurface): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QOffscreenSurfaceeventProc* = proc(self: QOffscreenSurface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QOffscreenSurfaceeventFilterProc* = proc(self: QOffscreenSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QOffscreenSurfacetimerEventProc* = proc(self: QOffscreenSurface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QOffscreenSurfacechildEventProc* = proc(self: QOffscreenSurface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QOffscreenSurfacecustomEventProc* = proc(self: QOffscreenSurface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QOffscreenSurfaceconnectNotifyProc* = proc(self: QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QOffscreenSurfacedisconnectNotifyProc* = proc(self: QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QOffscreenSurfaceVTable* {.inheritable, pure.} = object
  vtbl: cQOffscreenSurfaceVTable
  metaObject*: QOffscreenSurfacemetaObjectProc
  metacast*: QOffscreenSurfacemetacastProc
  metacall*: QOffscreenSurfacemetacallProc
  surfaceType*: QOffscreenSurfacesurfaceTypeProc
  format*: QOffscreenSurfaceformatProc
  size*: QOffscreenSurfacesizeProc
  event*: QOffscreenSurfaceeventProc
  eventFilter*: QOffscreenSurfaceeventFilterProc
  timerEvent*: QOffscreenSurfacetimerEventProc
  childEvent*: QOffscreenSurfacechildEventProc
  customEvent*: QOffscreenSurfacecustomEventProc
  connectNotify*: QOffscreenSurfaceconnectNotifyProc
  disconnectNotify*: QOffscreenSurfacedisconnectNotifyProc

proc QOffscreenSurfacemetaObject*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQOffscreenSurface_virtualbase_metaObject(self.h), owned: false)

proc QOffscreenSurfacemetacast*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cstring): pointer =
  fcQOffscreenSurface_virtualbase_metacast(self.h, param1)

proc QOffscreenSurfacemetacall*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cint, param2: cint, param3: pointer): cint =
  fcQOffscreenSurface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QOffscreenSurfacesurfaceType*(self: gen_qoffscreensurface_types.QOffscreenSurface): cint =
  cint(fcQOffscreenSurface_virtualbase_surfaceType(self.h))

proc QOffscreenSurfaceformat*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQOffscreenSurface_virtualbase_format(self.h), owned: true)

proc QOffscreenSurfacesize*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQOffscreenSurface_virtualbase_size(self.h), owned: true)

proc QOffscreenSurfaceevent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QEvent): bool =
  fcQOffscreenSurface_virtualbase_event(self.h, event.h)

proc QOffscreenSurfaceeventFilter*(self: gen_qoffscreensurface_types.QOffscreenSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQOffscreenSurface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QOffscreenSurfacetimerEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQOffscreenSurface_virtualbase_timerEvent(self.h, event.h)

proc QOffscreenSurfacechildEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQOffscreenSurface_virtualbase_childEvent(self.h, event.h)

proc QOffscreenSurfacecustomEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QEvent): void =
  fcQOffscreenSurface_virtualbase_customEvent(self.h, event.h)

proc QOffscreenSurfaceconnectNotify*(self: gen_qoffscreensurface_types.QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQOffscreenSurface_virtualbase_connectNotify(self.h, signal.h)

proc QOffscreenSurfacedisconnectNotify*(self: gen_qoffscreensurface_types.QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQOffscreenSurface_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQOffscreenSurface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQOffscreenSurface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQOffscreenSurface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQOffscreenSurface_vtable_callback_surfaceType(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  var virtualReturn = vtbl[].surfaceType(self)
  cint(virtualReturn)

proc fcQOffscreenSurface_vtable_callback_format(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  var virtualReturn = vtbl[].format(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQOffscreenSurface_vtable_callback_size(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQOffscreenSurface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQOffscreenSurface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQOffscreenSurface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQOffscreenSurface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQOffscreenSurface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQOffscreenSurface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQOffscreenSurface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQOffscreenSurface* {.inheritable.} = ref object of QOffscreenSurface
  vtbl*: cQOffscreenSurfaceVTable

method metaObject*(self: VirtualQOffscreenSurface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QOffscreenSurfacemetaObject(self[])
method metacast*(self: VirtualQOffscreenSurface, param1: cstring): pointer {.base.} =
  QOffscreenSurfacemetacast(self[], param1)
method metacall*(self: VirtualQOffscreenSurface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QOffscreenSurfacemetacall(self[], param1, param2, param3)
method surfaceType*(self: VirtualQOffscreenSurface): cint {.base.} =
  QOffscreenSurfacesurfaceType(self[])
method format*(self: VirtualQOffscreenSurface): gen_qsurfaceformat_types.QSurfaceFormat {.base.} =
  QOffscreenSurfaceformat(self[])
method size*(self: VirtualQOffscreenSurface): gen_qsize_types.QSize {.base.} =
  QOffscreenSurfacesize(self[])
method event*(self: VirtualQOffscreenSurface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QOffscreenSurfaceevent(self[], event)
method eventFilter*(self: VirtualQOffscreenSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QOffscreenSurfaceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQOffscreenSurface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QOffscreenSurfacetimerEvent(self[], event)
method childEvent*(self: VirtualQOffscreenSurface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QOffscreenSurfacechildEvent(self[], event)
method customEvent*(self: VirtualQOffscreenSurface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QOffscreenSurfacecustomEvent(self[], event)
method connectNotify*(self: VirtualQOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QOffscreenSurfaceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QOffscreenSurfacedisconnectNotify(self[], signal)

proc fcQOffscreenSurface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQOffscreenSurface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQOffscreenSurface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQOffscreenSurface_method_callback_surfaceType(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  var virtualReturn = inst.surfaceType()
  cint(virtualReturn)

proc fcQOffscreenSurface_method_callback_format(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  var virtualReturn = inst.format()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQOffscreenSurface_method_callback_size(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQOffscreenSurface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQOffscreenSurface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQOffscreenSurface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQOffscreenSurface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQOffscreenSurface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQOffscreenSurface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQOffscreenSurface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQOffscreenSurface](fcQOffscreenSurface_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qoffscreensurface_types.QOffscreenSurface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQOffscreenSurface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qoffscreensurface_types.QOffscreenSurface): cint =
  fcQOffscreenSurface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qoffscreensurface_types.QOffscreenSurface, signal: cstring): cint =
  fcQOffscreenSurface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qoffscreensurface_types.QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQOffscreenSurface_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    screen: gen_qscreen_types.QScreen, parent: gen_qobject_types.QObject,
    vtbl: ref QOffscreenSurfaceVTable = nil): gen_qoffscreensurface_types.QOffscreenSurface =
  let vtbl = if vtbl == nil: new QOffscreenSurfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQOffscreenSurface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQOffscreenSurface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQOffscreenSurface_vtable_callback_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQOffscreenSurface_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQOffscreenSurface_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQOffscreenSurface_vtable_callback_size
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQOffscreenSurface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQOffscreenSurface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQOffscreenSurface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQOffscreenSurface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQOffscreenSurface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQOffscreenSurface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQOffscreenSurface_vtable_callback_disconnectNotify
  gen_qoffscreensurface_types.QOffscreenSurface(h: fcQOffscreenSurface_new(addr(vtbl[].vtbl), addr(vtbl[]), screen.h, parent.h), owned: true)

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    vtbl: ref QOffscreenSurfaceVTable = nil): gen_qoffscreensurface_types.QOffscreenSurface =
  let vtbl = if vtbl == nil: new QOffscreenSurfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQOffscreenSurface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQOffscreenSurface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQOffscreenSurface_vtable_callback_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQOffscreenSurface_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQOffscreenSurface_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQOffscreenSurface_vtable_callback_size
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQOffscreenSurface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQOffscreenSurface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQOffscreenSurface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQOffscreenSurface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQOffscreenSurface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQOffscreenSurface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQOffscreenSurface_vtable_callback_disconnectNotify
  gen_qoffscreensurface_types.QOffscreenSurface(h: fcQOffscreenSurface_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    screen: gen_qscreen_types.QScreen,
    vtbl: ref QOffscreenSurfaceVTable = nil): gen_qoffscreensurface_types.QOffscreenSurface =
  let vtbl = if vtbl == nil: new QOffscreenSurfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QOffscreenSurfaceVTable](fcQOffscreenSurface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQOffscreenSurface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQOffscreenSurface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQOffscreenSurface_vtable_callback_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = fcQOffscreenSurface_vtable_callback_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = fcQOffscreenSurface_vtable_callback_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQOffscreenSurface_vtable_callback_size
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQOffscreenSurface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQOffscreenSurface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQOffscreenSurface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQOffscreenSurface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQOffscreenSurface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQOffscreenSurface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQOffscreenSurface_vtable_callback_disconnectNotify
  gen_qoffscreensurface_types.QOffscreenSurface(h: fcQOffscreenSurface_new3(addr(vtbl[].vtbl), addr(vtbl[]), screen.h), owned: true)

const cQOffscreenSurface_mvtbl = cQOffscreenSurfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQOffscreenSurface()[])](self.fcQOffscreenSurface_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQOffscreenSurface_method_callback_metaObject,
  metacast: fcQOffscreenSurface_method_callback_metacast,
  metacall: fcQOffscreenSurface_method_callback_metacall,
  surfaceType: fcQOffscreenSurface_method_callback_surfaceType,
  format: fcQOffscreenSurface_method_callback_format,
  size: fcQOffscreenSurface_method_callback_size,
  event: fcQOffscreenSurface_method_callback_event,
  eventFilter: fcQOffscreenSurface_method_callback_eventFilter,
  timerEvent: fcQOffscreenSurface_method_callback_timerEvent,
  childEvent: fcQOffscreenSurface_method_callback_childEvent,
  customEvent: fcQOffscreenSurface_method_callback_customEvent,
  connectNotify: fcQOffscreenSurface_method_callback_connectNotify,
  disconnectNotify: fcQOffscreenSurface_method_callback_disconnectNotify,
)
proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    screen: gen_qscreen_types.QScreen, parent: gen_qobject_types.QObject,
    inst: VirtualQOffscreenSurface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQOffscreenSurface_new(addr(cQOffscreenSurface_mvtbl), addr(inst[]), screen.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    inst: VirtualQOffscreenSurface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQOffscreenSurface_new2(addr(cQOffscreenSurface_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    screen: gen_qscreen_types.QScreen,
    inst: VirtualQOffscreenSurface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQOffscreenSurface_new3(addr(cQOffscreenSurface_mvtbl), addr(inst[]), screen.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qoffscreensurface_types.QOffscreenSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQOffscreenSurface_staticMetaObject())
