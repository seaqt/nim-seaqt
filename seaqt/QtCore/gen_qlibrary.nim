import ./qtcore_pkg

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


{.compile("gen_qlibrary.cpp", QtCoreCFlags).}


type QLibraryLoadHintEnum* = distinct cint
template ResolveAllSymbolsHint*(_: type QLibraryLoadHintEnum): untyped = 1
template ExportExternalSymbolsHint*(_: type QLibraryLoadHintEnum): untyped = 2
template LoadArchiveMemberHint*(_: type QLibraryLoadHintEnum): untyped = 4
template PreventUnloadHint*(_: type QLibraryLoadHintEnum): untyped = 8
template DeepBindHint*(_: type QLibraryLoadHintEnum): untyped = 16


import ./gen_qlibrary_types
export gen_qlibrary_types

import
  ./gen_qcoreevent_types,
  ./gen_qmetaobject_types,
  ./gen_qobject,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQLibrary*{.exportc: "QLibrary", incompleteStruct.} = object

proc fcQLibrary_metaObject(self: pointer): pointer {.importc: "QLibrary_metaObject".}
proc fcQLibrary_metacast(self: pointer, param1: cstring): pointer {.importc: "QLibrary_metacast".}
proc fcQLibrary_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLibrary_metacall".}
proc fcQLibrary_tr(s: cstring): struct_miqt_string {.importc: "QLibrary_tr".}
proc fcQLibrary_load(self: pointer): bool {.importc: "QLibrary_load".}
proc fcQLibrary_unload(self: pointer): bool {.importc: "QLibrary_unload".}
proc fcQLibrary_isLoaded(self: pointer): bool {.importc: "QLibrary_isLoaded".}
proc fcQLibrary_isLibrary(fileName: struct_miqt_string): bool {.importc: "QLibrary_isLibrary".}
proc fcQLibrary_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QLibrary_setFileName".}
proc fcQLibrary_fileName(self: pointer): struct_miqt_string {.importc: "QLibrary_fileName".}
proc fcQLibrary_setFileNameAndVersion(self: pointer, fileName: struct_miqt_string, verNum: cint): void {.importc: "QLibrary_setFileNameAndVersion".}
proc fcQLibrary_setFileNameAndVersion2(self: pointer, fileName: struct_miqt_string, version: struct_miqt_string): void {.importc: "QLibrary_setFileNameAndVersion2".}
proc fcQLibrary_errorString(self: pointer): struct_miqt_string {.importc: "QLibrary_errorString".}
proc fcQLibrary_setLoadHints(self: pointer, hints: cint): void {.importc: "QLibrary_setLoadHints".}
proc fcQLibrary_loadHints(self: pointer): cint {.importc: "QLibrary_loadHints".}
proc fcQLibrary_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLibrary_tr2".}
proc fcQLibrary_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLibrary_tr3".}
proc fcQLibrary_vtbl(self: pointer): pointer {.importc: "QLibrary_vtbl".}
proc fcQLibrary_vdata(self: pointer): pointer {.importc: "QLibrary_vdata".}

type cQLibraryVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLibrary_virtualbase_metaObject(self: pointer): pointer {.importc: "QLibrary_virtualbase_metaObject".}
proc fcQLibrary_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLibrary_virtualbase_metacast".}
proc fcQLibrary_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLibrary_virtualbase_metacall".}
proc fcQLibrary_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QLibrary_virtualbase_event".}
proc fcQLibrary_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLibrary_virtualbase_eventFilter".}
proc fcQLibrary_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLibrary_virtualbase_timerEvent".}
proc fcQLibrary_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLibrary_virtualbase_childEvent".}
proc fcQLibrary_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLibrary_virtualbase_customEvent".}
proc fcQLibrary_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLibrary_virtualbase_connectNotify".}
proc fcQLibrary_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLibrary_virtualbase_disconnectNotify".}
proc fcQLibrary_protectedbase_sender(self: pointer): pointer {.importc: "QLibrary_protectedbase_sender".}
proc fcQLibrary_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QLibrary_protectedbase_senderSignalIndex".}
proc fcQLibrary_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLibrary_protectedbase_receivers".}
proc fcQLibrary_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLibrary_protectedbase_isSignalConnected".}
proc fcQLibrary_new(vtbl, vdata: pointer): ptr cQLibrary {.importc: "QLibrary_new".}
proc fcQLibrary_new2(vtbl, vdata: pointer, fileName: struct_miqt_string): ptr cQLibrary {.importc: "QLibrary_new2".}
proc fcQLibrary_new3(vtbl, vdata: pointer, fileName: struct_miqt_string, verNum: cint): ptr cQLibrary {.importc: "QLibrary_new3".}
proc fcQLibrary_new4(vtbl, vdata: pointer, fileName: struct_miqt_string, version: struct_miqt_string): ptr cQLibrary {.importc: "QLibrary_new4".}
proc fcQLibrary_new5(vtbl, vdata: pointer, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new5".}
proc fcQLibrary_new6(vtbl, vdata: pointer, fileName: struct_miqt_string, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new6".}
proc fcQLibrary_new7(vtbl, vdata: pointer, fileName: struct_miqt_string, verNum: cint, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new7".}
proc fcQLibrary_new8(vtbl, vdata: pointer, fileName: struct_miqt_string, version: struct_miqt_string, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new8".}
proc fcQLibrary_staticMetaObject(): pointer {.importc: "QLibrary_staticMetaObject".}

proc metaObject*(self: gen_qlibrary_types.QLibrary): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLibrary_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlibrary_types.QLibrary, param1: cstring): pointer =
  fcQLibrary_metacast(self.h, param1)

proc metacall*(self: gen_qlibrary_types.QLibrary, param1: cint, param2: cint, param3: pointer): cint =
  fcQLibrary_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring): string =
  let v_ms = fcQLibrary_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qlibrary_types.QLibrary): bool =
  fcQLibrary_load(self.h)

proc unload*(self: gen_qlibrary_types.QLibrary): bool =
  fcQLibrary_unload(self.h)

proc isLoaded*(self: gen_qlibrary_types.QLibrary): bool =
  fcQLibrary_isLoaded(self.h)

proc isLibrary*(_: type gen_qlibrary_types.QLibrary, fileName: openArray[char]): bool =
  fcQLibrary_isLibrary(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc setFileName*(self: gen_qlibrary_types.QLibrary, fileName: openArray[char]): void =
  fcQLibrary_setFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc fileName*(self: gen_qlibrary_types.QLibrary): string =
  let v_ms = fcQLibrary_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFileNameAndVersion*(self: gen_qlibrary_types.QLibrary, fileName: openArray[char], verNum: cint): void =
  fcQLibrary_setFileNameAndVersion(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), verNum)

proc setFileNameAndVersion*(self: gen_qlibrary_types.QLibrary, fileName: openArray[char], version: openArray[char]): void =
  fcQLibrary_setFileNameAndVersion2(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: if len(version) > 0: addr version[0] else: nil, len: csize_t(len(version))))

proc errorString*(self: gen_qlibrary_types.QLibrary): string =
  let v_ms = fcQLibrary_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setLoadHints*(self: gen_qlibrary_types.QLibrary, hints: cint): void =
  fcQLibrary_setLoadHints(self.h, cint(hints))

proc loadHints*(self: gen_qlibrary_types.QLibrary): cint =
  cint(fcQLibrary_loadHints(self.h))

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring, c: cstring): string =
  let v_ms = fcQLibrary_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLibrary_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QLibrarymetaObjectProc* = proc(self: QLibrary): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QLibrarymetacastProc* = proc(self: QLibrary, param1: cstring): pointer {.raises: [], gcsafe.}
type QLibrarymetacallProc* = proc(self: QLibrary, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QLibraryeventProc* = proc(self: QLibrary, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLibraryeventFilterProc* = proc(self: QLibrary, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QLibrarytimerEventProc* = proc(self: QLibrary, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QLibrarychildEventProc* = proc(self: QLibrary, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QLibrarycustomEventProc* = proc(self: QLibrary, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QLibraryconnectNotifyProc* = proc(self: QLibrary, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QLibrarydisconnectNotifyProc* = proc(self: QLibrary, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QLibraryVTable* {.inheritable, pure.} = object
  vtbl: cQLibraryVTable
  metaObject*: QLibrarymetaObjectProc
  metacast*: QLibrarymetacastProc
  metacall*: QLibrarymetacallProc
  event*: QLibraryeventProc
  eventFilter*: QLibraryeventFilterProc
  timerEvent*: QLibrarytimerEventProc
  childEvent*: QLibrarychildEventProc
  customEvent*: QLibrarycustomEventProc
  connectNotify*: QLibraryconnectNotifyProc
  disconnectNotify*: QLibrarydisconnectNotifyProc

proc QLibrarymetaObject*(self: gen_qlibrary_types.QLibrary): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLibrary_virtualbase_metaObject(self.h), owned: false)

proc QLibrarymetacast*(self: gen_qlibrary_types.QLibrary, param1: cstring): pointer =
  fcQLibrary_virtualbase_metacast(self.h, param1)

proc QLibrarymetacall*(self: gen_qlibrary_types.QLibrary, param1: cint, param2: cint, param3: pointer): cint =
  fcQLibrary_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QLibraryevent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QEvent): bool =
  fcQLibrary_virtualbase_event(self.h, event.h)

proc QLibraryeventFilter*(self: gen_qlibrary_types.QLibrary, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLibrary_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QLibrarytimerEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLibrary_virtualbase_timerEvent(self.h, event.h)

proc QLibrarychildEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLibrary_virtualbase_childEvent(self.h, event.h)

proc QLibrarycustomEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QEvent): void =
  fcQLibrary_virtualbase_customEvent(self.h, event.h)

proc QLibraryconnectNotify*(self: gen_qlibrary_types.QLibrary, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLibrary_virtualbase_connectNotify(self.h, signal.h)

proc QLibrarydisconnectNotify*(self: gen_qlibrary_types.QLibrary, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLibrary_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQLibrary_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLibrary_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQLibrary_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLibrary_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQLibrary_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQLibrary_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQLibrary_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQLibrary_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQLibrary_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQLibrary_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](fcQLibrary_vdata(self))
  let self = QLibrary(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQLibrary* {.inheritable.} = ref object of QLibrary
  vtbl*: cQLibraryVTable

method metaObject*(self: VirtualQLibrary): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLibrarymetaObject(self[])
method metacast*(self: VirtualQLibrary, param1: cstring): pointer {.base.} =
  QLibrarymetacast(self[], param1)
method metacall*(self: VirtualQLibrary, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLibrarymetacall(self[], param1, param2, param3)
method event*(self: VirtualQLibrary, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLibraryevent(self[], event)
method eventFilter*(self: VirtualQLibrary, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLibraryeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQLibrary, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLibrarytimerEvent(self[], event)
method childEvent*(self: VirtualQLibrary, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLibrarychildEvent(self[], event)
method customEvent*(self: VirtualQLibrary, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLibrarycustomEvent(self[], event)
method connectNotify*(self: VirtualQLibrary, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLibraryconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQLibrary, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLibrarydisconnectNotify(self[], signal)

proc fcQLibrary_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLibrary_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQLibrary_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQLibrary_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQLibrary_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQLibrary_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQLibrary_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQLibrary_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQLibrary_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQLibrary_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLibrary](fcQLibrary_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qlibrary_types.QLibrary): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLibrary_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlibrary_types.QLibrary): cint =
  fcQLibrary_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlibrary_types.QLibrary, signal: cstring): cint =
  fcQLibrary_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlibrary_types.QLibrary, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQLibrary_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlibrary_types.QLibrary,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](fcQLibrary_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLibrary_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLibrary_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLibrary_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLibrary_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLibrary_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLibrary_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLibrary_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLibrary_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLibrary_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLibrary_vtable_callback_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char],
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](fcQLibrary_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLibrary_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLibrary_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLibrary_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLibrary_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLibrary_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLibrary_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLibrary_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLibrary_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLibrary_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLibrary_vtable_callback_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], verNum: cint,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](fcQLibrary_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLibrary_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLibrary_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLibrary_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLibrary_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLibrary_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLibrary_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLibrary_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLibrary_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLibrary_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLibrary_vtable_callback_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), verNum), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], version: openArray[char],
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](fcQLibrary_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLibrary_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLibrary_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLibrary_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLibrary_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLibrary_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLibrary_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLibrary_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLibrary_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLibrary_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLibrary_vtable_callback_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: if len(version) > 0: addr version[0] else: nil, len: csize_t(len(version)))), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    parent: gen_qobject_types.QObject,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](fcQLibrary_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLibrary_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLibrary_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLibrary_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLibrary_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLibrary_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLibrary_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLibrary_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLibrary_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLibrary_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLibrary_vtable_callback_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new5(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](fcQLibrary_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLibrary_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLibrary_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLibrary_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLibrary_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLibrary_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLibrary_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLibrary_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLibrary_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLibrary_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLibrary_vtable_callback_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new6(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), parent.h), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], verNum: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](fcQLibrary_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLibrary_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLibrary_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLibrary_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLibrary_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLibrary_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLibrary_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLibrary_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLibrary_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLibrary_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLibrary_vtable_callback_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new7(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), verNum, parent.h), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], version: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](fcQLibrary_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQLibrary_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQLibrary_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQLibrary_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQLibrary_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQLibrary_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQLibrary_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQLibrary_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQLibrary_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQLibrary_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQLibrary_vtable_callback_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new8(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: if len(version) > 0: addr version[0] else: nil, len: csize_t(len(version))), parent.h), owned: true)

const cQLibrary_mvtbl = cQLibraryVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQLibrary()[])](self.fcQLibrary_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQLibrary_method_callback_metaObject,
  metacast: fcQLibrary_method_callback_metacast,
  metacall: fcQLibrary_method_callback_metacall,
  event: fcQLibrary_method_callback_event,
  eventFilter: fcQLibrary_method_callback_eventFilter,
  timerEvent: fcQLibrary_method_callback_timerEvent,
  childEvent: fcQLibrary_method_callback_childEvent,
  customEvent: fcQLibrary_method_callback_customEvent,
  connectNotify: fcQLibrary_method_callback_connectNotify,
  disconnectNotify: fcQLibrary_method_callback_disconnectNotify,
)
proc create*(T: type gen_qlibrary_types.QLibrary,
    inst: VirtualQLibrary) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLibrary_new(addr(cQLibrary_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char],
    inst: VirtualQLibrary) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLibrary_new2(addr(cQLibrary_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  inst[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], verNum: cint,
    inst: VirtualQLibrary) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLibrary_new3(addr(cQLibrary_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), verNum)
  inst[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], version: openArray[char],
    inst: VirtualQLibrary) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLibrary_new4(addr(cQLibrary_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: if len(version) > 0: addr version[0] else: nil, len: csize_t(len(version))))
  inst[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    parent: gen_qobject_types.QObject,
    inst: VirtualQLibrary) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLibrary_new5(addr(cQLibrary_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQLibrary) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLibrary_new6(addr(cQLibrary_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), parent.h)
  inst[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], verNum: cint, parent: gen_qobject_types.QObject,
    inst: VirtualQLibrary) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLibrary_new7(addr(cQLibrary_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), verNum, parent.h)
  inst[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: openArray[char], version: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQLibrary) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLibrary_new8(addr(cQLibrary_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: if len(version) > 0: addr version[0] else: nil, len: csize_t(len(version))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qlibrary_types.QLibrary): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLibrary_staticMetaObject())
