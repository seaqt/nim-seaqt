import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui") & " -fPIC"
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
proc fcQOffscreenSurface_connect_screenChanged(self: pointer, slot: int, callback: proc (slot: int, screen: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QOffscreenSurface_connect_screenChanged".}
proc fcQOffscreenSurface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QOffscreenSurface_tr2".}
proc fcQOffscreenSurface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QOffscreenSurface_tr3".}
proc fcQOffscreenSurface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QOffscreenSurface_trUtf82".}
proc fcQOffscreenSurface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QOffscreenSurface_trUtf83".}
type cQOffscreenSurfaceVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQOffscreenSurfaceVTable, self: ptr cQOffscreenSurface) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  surfaceType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  format*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQOffscreenSurface_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QOffscreenSurface_virtualbase_metaObject".}
proc fcQOffscreenSurface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QOffscreenSurface_virtualbase_metacast".}
proc fcQOffscreenSurface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QOffscreenSurface_virtualbase_metacall".}
proc fcQOffscreenSurface_virtualbase_surfaceType(self: pointer, ): cint {.importc: "QOffscreenSurface_virtualbase_surfaceType".}
proc fcQOffscreenSurface_virtualbase_format(self: pointer, ): pointer {.importc: "QOffscreenSurface_virtualbase_format".}
proc fcQOffscreenSurface_virtualbase_size(self: pointer, ): pointer {.importc: "QOffscreenSurface_virtualbase_size".}
proc fcQOffscreenSurface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QOffscreenSurface_virtualbase_event".}
proc fcQOffscreenSurface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QOffscreenSurface_virtualbase_eventFilter".}
proc fcQOffscreenSurface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QOffscreenSurface_virtualbase_timerEvent".}
proc fcQOffscreenSurface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QOffscreenSurface_virtualbase_childEvent".}
proc fcQOffscreenSurface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QOffscreenSurface_virtualbase_customEvent".}
proc fcQOffscreenSurface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QOffscreenSurface_virtualbase_connectNotify".}
proc fcQOffscreenSurface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QOffscreenSurface_virtualbase_disconnectNotify".}
proc fcQOffscreenSurface_protectedbase_sender(self: pointer, ): pointer {.importc: "QOffscreenSurface_protectedbase_sender".}
proc fcQOffscreenSurface_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QOffscreenSurface_protectedbase_senderSignalIndex".}
proc fcQOffscreenSurface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QOffscreenSurface_protectedbase_receivers".}
proc fcQOffscreenSurface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QOffscreenSurface_protectedbase_isSignalConnected".}
proc fcQOffscreenSurface_new(vtbl: pointer, screen: pointer, parent: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new".}
proc fcQOffscreenSurface_new2(vtbl: pointer, ): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new2".}
proc fcQOffscreenSurface_new3(vtbl: pointer, screen: pointer): ptr cQOffscreenSurface {.importc: "QOffscreenSurface_new3".}
proc fcQOffscreenSurface_staticMetaObject(): pointer {.importc: "QOffscreenSurface_staticMetaObject".}

proc metaObject*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQOffscreenSurface_metaObject(self.h), owned: false)

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
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQOffscreenSurface_format(self.h), owned: true)

proc requestedFormat*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQOffscreenSurface_requestedFormat(self.h), owned: true)

proc size*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQOffscreenSurface_size(self.h), owned: true)

proc screen*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qscreen_types.QScreen =
  gen_qscreen_types.QScreen(h: fcQOffscreenSurface_screen(self.h), owned: false)

proc setScreen*(self: gen_qoffscreensurface_types.QOffscreenSurface, screen: gen_qscreen_types.QScreen): void =
  fcQOffscreenSurface_setScreen(self.h, screen.h)

proc nativeHandle*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): pointer =
  fcQOffscreenSurface_nativeHandle(self.h)

proc setNativeHandle*(self: gen_qoffscreensurface_types.QOffscreenSurface, handle: pointer): void =
  fcQOffscreenSurface_setNativeHandle(self.h, handle)

proc screenChanged*(self: gen_qoffscreensurface_types.QOffscreenSurface, screen: gen_qscreen_types.QScreen): void =
  fcQOffscreenSurface_screenChanged(self.h, screen.h)

type QOffscreenSurfacescreenChangedSlot* = proc(screen: gen_qscreen_types.QScreen)
proc miqt_exec_callback_cQOffscreenSurface_screenChanged(slot: int, screen: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QOffscreenSurfacescreenChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qscreen_types.QScreen(h: screen, owned: false)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQOffscreenSurface_screenChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QOffscreenSurfacescreenChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onscreenChanged*(self: gen_qoffscreensurface_types.QOffscreenSurface, slot: QOffscreenSurfacescreenChangedSlot) =
  var tmp = new QOffscreenSurfacescreenChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQOffscreenSurface_connect_screenChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQOffscreenSurface_screenChanged, miqt_exec_callback_cQOffscreenSurface_screenChanged_release)

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
proc QOffscreenSurfacemetaObject*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQOffscreenSurface_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQOffscreenSurface_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QOffscreenSurfacemetacast*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cstring): pointer =
  fcQOffscreenSurface_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQOffscreenSurface_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QOffscreenSurfacemetacall*(self: gen_qoffscreensurface_types.QOffscreenSurface, param1: cint, param2: cint, param3: pointer): cint =
  fcQOffscreenSurface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQOffscreenSurface_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QOffscreenSurfacesurfaceType*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): cint =
  cint(fcQOffscreenSurface_virtualbase_surfaceType(self.h))

proc miqt_exec_callback_cQOffscreenSurface_surfaceType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  var virtualReturn = vtbl[].surfaceType(self)
  cint(virtualReturn)

proc QOffscreenSurfaceformat*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsurfaceformat_types.QSurfaceFormat =
  gen_qsurfaceformat_types.QSurfaceFormat(h: fcQOffscreenSurface_virtualbase_format(self.h), owned: true)

proc miqt_exec_callback_cQOffscreenSurface_format(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  var virtualReturn = vtbl[].format(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QOffscreenSurfacesize*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQOffscreenSurface_virtualbase_size(self.h), owned: true)

proc miqt_exec_callback_cQOffscreenSurface_size(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QOffscreenSurfaceevent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QEvent): bool =
  fcQOffscreenSurface_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQOffscreenSurface_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QOffscreenSurfaceeventFilter*(self: gen_qoffscreensurface_types.QOffscreenSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQOffscreenSurface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQOffscreenSurface_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QOffscreenSurfacetimerEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQOffscreenSurface_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQOffscreenSurface_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QOffscreenSurfacechildEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQOffscreenSurface_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQOffscreenSurface_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QOffscreenSurfacecustomEvent*(self: gen_qoffscreensurface_types.QOffscreenSurface, event: gen_qcoreevent_types.QEvent): void =
  fcQOffscreenSurface_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQOffscreenSurface_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QOffscreenSurfaceconnectNotify*(self: gen_qoffscreensurface_types.QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQOffscreenSurface_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQOffscreenSurface_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QOffscreenSurfacedisconnectNotify*(self: gen_qoffscreensurface_types.QOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQOffscreenSurface_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQOffscreenSurface_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QOffscreenSurfaceVTable](vtbl)
  let self = QOffscreenSurface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQOffscreenSurface* {.inheritable.} = ref object of QOffscreenSurface
  vtbl*: cQOffscreenSurfaceVTable
method metaObject*(self: VirtualQOffscreenSurface, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QOffscreenSurfacemetaObject(self[])
proc miqt_exec_method_cQOffscreenSurface_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQOffscreenSurface, param1: cstring): pointer {.base.} =
  QOffscreenSurfacemetacast(self[], param1)
proc miqt_exec_method_cQOffscreenSurface_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQOffscreenSurface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QOffscreenSurfacemetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQOffscreenSurface_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method surfaceType*(self: VirtualQOffscreenSurface, ): cint {.base.} =
  QOffscreenSurfacesurfaceType(self[])
proc miqt_exec_method_cQOffscreenSurface_surfaceType(vtbl: pointer, inst: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  var virtualReturn = vtbl.surfaceType()
  cint(virtualReturn)

method format*(self: VirtualQOffscreenSurface, ): gen_qsurfaceformat_types.QSurfaceFormat {.base.} =
  QOffscreenSurfaceformat(self[])
proc miqt_exec_method_cQOffscreenSurface_format(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  var virtualReturn = vtbl.format()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method size*(self: VirtualQOffscreenSurface, ): gen_qsize_types.QSize {.base.} =
  QOffscreenSurfacesize(self[])
proc miqt_exec_method_cQOffscreenSurface_size(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  var virtualReturn = vtbl.size()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method event*(self: VirtualQOffscreenSurface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QOffscreenSurfaceevent(self[], event)
proc miqt_exec_method_cQOffscreenSurface_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQOffscreenSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QOffscreenSurfaceeventFilter(self[], watched, event)
proc miqt_exec_method_cQOffscreenSurface_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQOffscreenSurface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QOffscreenSurfacetimerEvent(self[], event)
proc miqt_exec_method_cQOffscreenSurface_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQOffscreenSurface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QOffscreenSurfacechildEvent(self[], event)
proc miqt_exec_method_cQOffscreenSurface_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQOffscreenSurface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QOffscreenSurfacecustomEvent(self[], event)
proc miqt_exec_method_cQOffscreenSurface_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QOffscreenSurfaceconnectNotify(self[], signal)
proc miqt_exec_method_cQOffscreenSurface_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQOffscreenSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QOffscreenSurfacedisconnectNotify(self[], signal)
proc miqt_exec_method_cQOffscreenSurface_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQOffscreenSurface](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQOffscreenSurface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qoffscreensurface_types.QOffscreenSurface, ): cint =
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
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQOffscreenSurfaceVTable, _: ptr cQOffscreenSurface) {.cdecl.} =
    let vtbl = cast[ref QOffscreenSurfaceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQOffscreenSurface_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQOffscreenSurface_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQOffscreenSurface_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQOffscreenSurface_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQOffscreenSurface_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQOffscreenSurface_size
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQOffscreenSurface_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQOffscreenSurface_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQOffscreenSurface_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQOffscreenSurface_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQOffscreenSurface_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQOffscreenSurface_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQOffscreenSurface_disconnectNotify
  gen_qoffscreensurface_types.QOffscreenSurface(h: fcQOffscreenSurface_new(addr(vtbl[].vtbl), screen.h, parent.h), owned: true)

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    vtbl: ref QOffscreenSurfaceVTable = nil): gen_qoffscreensurface_types.QOffscreenSurface =
  let vtbl = if vtbl == nil: new QOffscreenSurfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQOffscreenSurfaceVTable, _: ptr cQOffscreenSurface) {.cdecl.} =
    let vtbl = cast[ref QOffscreenSurfaceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQOffscreenSurface_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQOffscreenSurface_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQOffscreenSurface_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQOffscreenSurface_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQOffscreenSurface_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQOffscreenSurface_size
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQOffscreenSurface_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQOffscreenSurface_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQOffscreenSurface_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQOffscreenSurface_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQOffscreenSurface_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQOffscreenSurface_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQOffscreenSurface_disconnectNotify
  gen_qoffscreensurface_types.QOffscreenSurface(h: fcQOffscreenSurface_new2(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    screen: gen_qscreen_types.QScreen,
    vtbl: ref QOffscreenSurfaceVTable = nil): gen_qoffscreensurface_types.QOffscreenSurface =
  let vtbl = if vtbl == nil: new QOffscreenSurfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQOffscreenSurfaceVTable, _: ptr cQOffscreenSurface) {.cdecl.} =
    let vtbl = cast[ref QOffscreenSurfaceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQOffscreenSurface_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQOffscreenSurface_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQOffscreenSurface_metacall
  if not isNil(vtbl[].surfaceType):
    vtbl[].vtbl.surfaceType = miqt_exec_callback_cQOffscreenSurface_surfaceType
  if not isNil(vtbl[].format):
    vtbl[].vtbl.format = miqt_exec_callback_cQOffscreenSurface_format
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = miqt_exec_callback_cQOffscreenSurface_size
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQOffscreenSurface_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQOffscreenSurface_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQOffscreenSurface_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQOffscreenSurface_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQOffscreenSurface_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQOffscreenSurface_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQOffscreenSurface_disconnectNotify
  gen_qoffscreensurface_types.QOffscreenSurface(h: fcQOffscreenSurface_new3(addr(vtbl[].vtbl), screen.h), owned: true)

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    screen: gen_qscreen_types.QScreen, parent: gen_qobject_types.QObject,
    vtbl: VirtualQOffscreenSurface) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQOffscreenSurfaceVTable, _: ptr cQOffscreenSurface) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQOffscreenSurface()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQOffscreenSurface_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQOffscreenSurface_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQOffscreenSurface_metacall
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQOffscreenSurface_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQOffscreenSurface_format
  vtbl[].vtbl.size = miqt_exec_method_cQOffscreenSurface_size
  vtbl[].vtbl.event = miqt_exec_method_cQOffscreenSurface_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQOffscreenSurface_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQOffscreenSurface_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQOffscreenSurface_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQOffscreenSurface_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQOffscreenSurface_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQOffscreenSurface_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQOffscreenSurface_new(addr(vtbl[].vtbl), screen.h, parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    vtbl: VirtualQOffscreenSurface) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQOffscreenSurfaceVTable, _: ptr cQOffscreenSurface) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQOffscreenSurface()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQOffscreenSurface_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQOffscreenSurface_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQOffscreenSurface_metacall
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQOffscreenSurface_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQOffscreenSurface_format
  vtbl[].vtbl.size = miqt_exec_method_cQOffscreenSurface_size
  vtbl[].vtbl.event = miqt_exec_method_cQOffscreenSurface_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQOffscreenSurface_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQOffscreenSurface_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQOffscreenSurface_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQOffscreenSurface_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQOffscreenSurface_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQOffscreenSurface_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQOffscreenSurface_new2(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qoffscreensurface_types.QOffscreenSurface,
    screen: gen_qscreen_types.QScreen,
    vtbl: VirtualQOffscreenSurface) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQOffscreenSurfaceVTable, _: ptr cQOffscreenSurface) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQOffscreenSurface()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQOffscreenSurface, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQOffscreenSurface_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQOffscreenSurface_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQOffscreenSurface_metacall
  vtbl[].vtbl.surfaceType = miqt_exec_method_cQOffscreenSurface_surfaceType
  vtbl[].vtbl.format = miqt_exec_method_cQOffscreenSurface_format
  vtbl[].vtbl.size = miqt_exec_method_cQOffscreenSurface_size
  vtbl[].vtbl.event = miqt_exec_method_cQOffscreenSurface_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQOffscreenSurface_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQOffscreenSurface_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQOffscreenSurface_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQOffscreenSurface_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQOffscreenSurface_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQOffscreenSurface_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQOffscreenSurface_new3(addr(vtbl[].vtbl), screen.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qoffscreensurface_types.QOffscreenSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQOffscreenSurface_staticMetaObject())
