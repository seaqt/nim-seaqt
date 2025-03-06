import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qlibrary.cpp", cflags).}


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

proc fcQLibrary_metaObject(self: pointer, ): pointer {.importc: "QLibrary_metaObject".}
proc fcQLibrary_metacast(self: pointer, param1: cstring): pointer {.importc: "QLibrary_metacast".}
proc fcQLibrary_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLibrary_metacall".}
proc fcQLibrary_tr(s: cstring): struct_miqt_string {.importc: "QLibrary_tr".}
proc fcQLibrary_load(self: pointer, ): bool {.importc: "QLibrary_load".}
proc fcQLibrary_unload(self: pointer, ): bool {.importc: "QLibrary_unload".}
proc fcQLibrary_isLoaded(self: pointer, ): bool {.importc: "QLibrary_isLoaded".}
proc fcQLibrary_isLibrary(fileName: struct_miqt_string): bool {.importc: "QLibrary_isLibrary".}
proc fcQLibrary_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QLibrary_setFileName".}
proc fcQLibrary_fileName(self: pointer, ): struct_miqt_string {.importc: "QLibrary_fileName".}
proc fcQLibrary_setFileNameAndVersion(self: pointer, fileName: struct_miqt_string, verNum: cint): void {.importc: "QLibrary_setFileNameAndVersion".}
proc fcQLibrary_setFileNameAndVersion2(self: pointer, fileName: struct_miqt_string, version: struct_miqt_string): void {.importc: "QLibrary_setFileNameAndVersion2".}
proc fcQLibrary_errorString(self: pointer, ): struct_miqt_string {.importc: "QLibrary_errorString".}
proc fcQLibrary_setLoadHints(self: pointer, hints: cint): void {.importc: "QLibrary_setLoadHints".}
proc fcQLibrary_loadHints(self: pointer, ): cint {.importc: "QLibrary_loadHints".}
proc fcQLibrary_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLibrary_tr2".}
proc fcQLibrary_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLibrary_tr3".}
type cQLibraryVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQLibraryVTable, self: ptr cQLibrary) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQLibrary_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QLibrary_virtualbase_metaObject".}
proc fcQLibrary_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QLibrary_virtualbase_metacast".}
proc fcQLibrary_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLibrary_virtualbase_metacall".}
proc fcQLibrary_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QLibrary_virtualbase_event".}
proc fcQLibrary_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QLibrary_virtualbase_eventFilter".}
proc fcQLibrary_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QLibrary_virtualbase_timerEvent".}
proc fcQLibrary_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QLibrary_virtualbase_childEvent".}
proc fcQLibrary_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QLibrary_virtualbase_customEvent".}
proc fcQLibrary_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QLibrary_virtualbase_connectNotify".}
proc fcQLibrary_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QLibrary_virtualbase_disconnectNotify".}
proc fcQLibrary_protectedbase_sender(self: pointer, ): pointer {.importc: "QLibrary_protectedbase_sender".}
proc fcQLibrary_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QLibrary_protectedbase_senderSignalIndex".}
proc fcQLibrary_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QLibrary_protectedbase_receivers".}
proc fcQLibrary_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QLibrary_protectedbase_isSignalConnected".}
proc fcQLibrary_new(vtbl: pointer, ): ptr cQLibrary {.importc: "QLibrary_new".}
proc fcQLibrary_new2(vtbl: pointer, fileName: struct_miqt_string): ptr cQLibrary {.importc: "QLibrary_new2".}
proc fcQLibrary_new3(vtbl: pointer, fileName: struct_miqt_string, verNum: cint): ptr cQLibrary {.importc: "QLibrary_new3".}
proc fcQLibrary_new4(vtbl: pointer, fileName: struct_miqt_string, version: struct_miqt_string): ptr cQLibrary {.importc: "QLibrary_new4".}
proc fcQLibrary_new5(vtbl: pointer, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new5".}
proc fcQLibrary_new6(vtbl: pointer, fileName: struct_miqt_string, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new6".}
proc fcQLibrary_new7(vtbl: pointer, fileName: struct_miqt_string, verNum: cint, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new7".}
proc fcQLibrary_new8(vtbl: pointer, fileName: struct_miqt_string, version: struct_miqt_string, parent: pointer): ptr cQLibrary {.importc: "QLibrary_new8".}
proc fcQLibrary_staticMetaObject(): pointer {.importc: "QLibrary_staticMetaObject".}

proc metaObject*(self: gen_qlibrary_types.QLibrary, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLibrary_metaObject(self.h), owned: false)

proc metacast*(self: gen_qlibrary_types.QLibrary, param1: cstring): pointer =
  fcQLibrary_metacast(self.h, param1)

proc metacall*(self: gen_qlibrary_types.QLibrary, param1: cint, param2: cint, param3: pointer): cint =
  fcQLibrary_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring): string =
  let v_ms = fcQLibrary_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: gen_qlibrary_types.QLibrary, ): bool =
  fcQLibrary_load(self.h)

proc unload*(self: gen_qlibrary_types.QLibrary, ): bool =
  fcQLibrary_unload(self.h)

proc isLoaded*(self: gen_qlibrary_types.QLibrary, ): bool =
  fcQLibrary_isLoaded(self.h)

proc isLibrary*(_: type gen_qlibrary_types.QLibrary, fileName: string): bool =
  fcQLibrary_isLibrary(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setFileName*(self: gen_qlibrary_types.QLibrary, fileName: string): void =
  fcQLibrary_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc fileName*(self: gen_qlibrary_types.QLibrary, ): string =
  let v_ms = fcQLibrary_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileNameAndVersion*(self: gen_qlibrary_types.QLibrary, fileName: string, verNum: cint): void =
  fcQLibrary_setFileNameAndVersion(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum)

proc setFileNameAndVersion*(self: gen_qlibrary_types.QLibrary, fileName: string, version: string): void =
  fcQLibrary_setFileNameAndVersion2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version))))

proc errorString*(self: gen_qlibrary_types.QLibrary, ): string =
  let v_ms = fcQLibrary_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setLoadHints*(self: gen_qlibrary_types.QLibrary, hints: cint): void =
  fcQLibrary_setLoadHints(self.h, cint(hints))

proc loadHints*(self: gen_qlibrary_types.QLibrary, ): cint =
  cint(fcQLibrary_loadHints(self.h))

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring, c: cstring): string =
  let v_ms = fcQLibrary_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qlibrary_types.QLibrary, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQLibrary_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
proc QLibrarymetaObject*(self: gen_qlibrary_types.QLibrary, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLibrary_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQLibrary_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QLibrarymetacast*(self: gen_qlibrary_types.QLibrary, param1: cstring): pointer =
  fcQLibrary_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQLibrary_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QLibrarymetacall*(self: gen_qlibrary_types.QLibrary, param1: cint, param2: cint, param3: pointer): cint =
  fcQLibrary_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQLibrary_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QLibraryevent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QEvent): bool =
  fcQLibrary_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQLibrary_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QLibraryeventFilter*(self: gen_qlibrary_types.QLibrary, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQLibrary_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQLibrary_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QLibrarytimerEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQLibrary_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQLibrary_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QLibrarychildEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QChildEvent): void =
  fcQLibrary_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQLibrary_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QLibrarycustomEvent*(self: gen_qlibrary_types.QLibrary, event: gen_qcoreevent_types.QEvent): void =
  fcQLibrary_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQLibrary_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QLibraryconnectNotify*(self: gen_qlibrary_types.QLibrary, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLibrary_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQLibrary_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QLibrarydisconnectNotify*(self: gen_qlibrary_types.QLibrary, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQLibrary_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQLibrary_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLibraryVTable](vtbl)
  let self = QLibrary(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQLibrary* {.inheritable.} = ref object of QLibrary
  vtbl*: cQLibraryVTable
method metaObject*(self: VirtualQLibrary, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QLibrarymetaObject(self[])
proc miqt_exec_method_cQLibrary_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQLibrary, param1: cstring): pointer {.base.} =
  QLibrarymetacast(self[], param1)
proc miqt_exec_method_cQLibrary_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQLibrary, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QLibrarymetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQLibrary_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQLibrary, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLibraryevent(self[], event)
proc miqt_exec_method_cQLibrary_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQLibrary, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QLibraryeventFilter(self[], watched, event)
proc miqt_exec_method_cQLibrary_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQLibrary, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QLibrarytimerEvent(self[], event)
proc miqt_exec_method_cQLibrary_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQLibrary, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QLibrarychildEvent(self[], event)
proc miqt_exec_method_cQLibrary_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQLibrary, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QLibrarycustomEvent(self[], event)
proc miqt_exec_method_cQLibrary_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQLibrary, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLibraryconnectNotify(self[], signal)
proc miqt_exec_method_cQLibrary_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQLibrary, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QLibrarydisconnectNotify(self[], signal)
proc miqt_exec_method_cQLibrary_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQLibrary](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qlibrary_types.QLibrary, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQLibrary_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qlibrary_types.QLibrary, ): cint =
  fcQLibrary_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qlibrary_types.QLibrary, signal: cstring): cint =
  fcQLibrary_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qlibrary_types.QLibrary, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQLibrary_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qlibrary_types.QLibrary,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLibrary_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLibrary_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLibrary_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLibrary_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLibrary_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLibrary_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLibrary_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLibrary_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLibrary_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLibrary_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLibrary_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLibrary_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLibrary_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLibrary_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLibrary_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLibrary_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLibrary_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLibrary_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLibrary_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLibrary_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new2(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, verNum: cint,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLibrary_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLibrary_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLibrary_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLibrary_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLibrary_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLibrary_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLibrary_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLibrary_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLibrary_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLibrary_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new3(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, version: string,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLibrary_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLibrary_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLibrary_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLibrary_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLibrary_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLibrary_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLibrary_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLibrary_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLibrary_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLibrary_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new4(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version)))), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    parent: gen_qobject_types.QObject,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLibrary_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLibrary_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLibrary_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLibrary_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLibrary_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLibrary_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLibrary_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLibrary_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLibrary_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLibrary_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new5(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, parent: gen_qobject_types.QObject,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLibrary_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLibrary_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLibrary_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLibrary_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLibrary_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLibrary_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLibrary_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLibrary_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLibrary_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLibrary_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new6(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, verNum: cint, parent: gen_qobject_types.QObject,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLibrary_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLibrary_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLibrary_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLibrary_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLibrary_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLibrary_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLibrary_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLibrary_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLibrary_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLibrary_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new7(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum, parent.h), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, version: string, parent: gen_qobject_types.QObject,
    vtbl: ref QLibraryVTable = nil): gen_qlibrary_types.QLibrary =
  let vtbl = if vtbl == nil: new QLibraryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ref QLibraryVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQLibrary_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQLibrary_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQLibrary_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQLibrary_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQLibrary_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQLibrary_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQLibrary_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQLibrary_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQLibrary_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQLibrary_disconnectNotify
  gen_qlibrary_types.QLibrary(h: fcQLibrary_new8(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version))), parent.h), owned: true)

proc create*(T: type gen_qlibrary_types.QLibrary,
    vtbl: VirtualQLibrary) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLibrary()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLibrary_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLibrary_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLibrary_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQLibrary_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLibrary_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLibrary_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLibrary_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLibrary_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLibrary_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLibrary_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLibrary_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string,
    vtbl: VirtualQLibrary) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLibrary()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLibrary_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLibrary_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLibrary_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQLibrary_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLibrary_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLibrary_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLibrary_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLibrary_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLibrary_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLibrary_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLibrary_new2(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  vtbl[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, verNum: cint,
    vtbl: VirtualQLibrary) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLibrary()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLibrary_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLibrary_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLibrary_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQLibrary_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLibrary_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLibrary_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLibrary_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLibrary_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLibrary_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLibrary_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLibrary_new3(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum)
  vtbl[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, version: string,
    vtbl: VirtualQLibrary) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLibrary()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLibrary_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLibrary_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLibrary_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQLibrary_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLibrary_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLibrary_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLibrary_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLibrary_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLibrary_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLibrary_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLibrary_new4(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version))))
  vtbl[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQLibrary) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLibrary()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLibrary_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLibrary_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLibrary_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQLibrary_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLibrary_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLibrary_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLibrary_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLibrary_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLibrary_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLibrary_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLibrary_new5(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, parent: gen_qobject_types.QObject,
    vtbl: VirtualQLibrary) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLibrary()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLibrary_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLibrary_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLibrary_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQLibrary_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLibrary_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLibrary_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLibrary_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLibrary_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLibrary_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLibrary_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLibrary_new6(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, verNum: cint, parent: gen_qobject_types.QObject,
    vtbl: VirtualQLibrary) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLibrary()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLibrary_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLibrary_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLibrary_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQLibrary_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLibrary_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLibrary_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLibrary_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLibrary_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLibrary_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLibrary_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLibrary_new7(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), verNum, parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qlibrary_types.QLibrary,
    fileName: string, version: string, parent: gen_qobject_types.QObject,
    vtbl: VirtualQLibrary) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQLibraryVTable, _: ptr cQLibrary) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQLibrary()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQLibrary, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQLibrary_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQLibrary_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQLibrary_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQLibrary_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQLibrary_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQLibrary_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQLibrary_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQLibrary_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQLibrary_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQLibrary_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQLibrary_new8(addr(vtbl[].vtbl), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: version, len: csize_t(len(version))), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qlibrary_types.QLibrary): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQLibrary_staticMetaObject())
