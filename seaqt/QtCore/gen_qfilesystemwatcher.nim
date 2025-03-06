import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qfilesystemwatcher.cpp", cflags).}


import ./gen_qfilesystemwatcher_types
export gen_qfilesystemwatcher_types

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

type cQFileSystemWatcher*{.exportc: "QFileSystemWatcher", incompleteStruct.} = object

proc fcQFileSystemWatcher_metaObject(self: pointer, ): pointer {.importc: "QFileSystemWatcher_metaObject".}
proc fcQFileSystemWatcher_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemWatcher_metacast".}
proc fcQFileSystemWatcher_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemWatcher_metacall".}
proc fcQFileSystemWatcher_tr(s: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_tr".}
proc fcQFileSystemWatcher_trUtf8(s: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_trUtf8".}
proc fcQFileSystemWatcher_addPath(self: pointer, file: struct_miqt_string): bool {.importc: "QFileSystemWatcher_addPath".}
proc fcQFileSystemWatcher_addPaths(self: pointer, files: struct_miqt_array): struct_miqt_array {.importc: "QFileSystemWatcher_addPaths".}
proc fcQFileSystemWatcher_removePath(self: pointer, file: struct_miqt_string): bool {.importc: "QFileSystemWatcher_removePath".}
proc fcQFileSystemWatcher_removePaths(self: pointer, files: struct_miqt_array): struct_miqt_array {.importc: "QFileSystemWatcher_removePaths".}
proc fcQFileSystemWatcher_files(self: pointer, ): struct_miqt_array {.importc: "QFileSystemWatcher_files".}
proc fcQFileSystemWatcher_directories(self: pointer, ): struct_miqt_array {.importc: "QFileSystemWatcher_directories".}
proc fcQFileSystemWatcher_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_tr2".}
proc fcQFileSystemWatcher_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSystemWatcher_tr3".}
proc fcQFileSystemWatcher_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_trUtf82".}
proc fcQFileSystemWatcher_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSystemWatcher_trUtf83".}
type cQFileSystemWatcherVTable {.pure.} = object
  destructor*: proc(vtbl: ptr cQFileSystemWatcherVTable, self: ptr cQFileSystemWatcher) {.cdecl, raises:[], gcsafe.}
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
proc fcQFileSystemWatcher_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFileSystemWatcher_virtualbase_metaObject".}
proc fcQFileSystemWatcher_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemWatcher_virtualbase_metacast".}
proc fcQFileSystemWatcher_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemWatcher_virtualbase_metacall".}
proc fcQFileSystemWatcher_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFileSystemWatcher_virtualbase_event".}
proc fcQFileSystemWatcher_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFileSystemWatcher_virtualbase_eventFilter".}
proc fcQFileSystemWatcher_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFileSystemWatcher_virtualbase_timerEvent".}
proc fcQFileSystemWatcher_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFileSystemWatcher_virtualbase_childEvent".}
proc fcQFileSystemWatcher_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFileSystemWatcher_virtualbase_customEvent".}
proc fcQFileSystemWatcher_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFileSystemWatcher_virtualbase_connectNotify".}
proc fcQFileSystemWatcher_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFileSystemWatcher_virtualbase_disconnectNotify".}
proc fcQFileSystemWatcher_protectedbase_sender(self: pointer, ): pointer {.importc: "QFileSystemWatcher_protectedbase_sender".}
proc fcQFileSystemWatcher_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QFileSystemWatcher_protectedbase_senderSignalIndex".}
proc fcQFileSystemWatcher_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFileSystemWatcher_protectedbase_receivers".}
proc fcQFileSystemWatcher_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFileSystemWatcher_protectedbase_isSignalConnected".}
proc fcQFileSystemWatcher_new(vtbl: pointer, ): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new".}
proc fcQFileSystemWatcher_new2(vtbl: pointer, paths: struct_miqt_array): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new2".}
proc fcQFileSystemWatcher_new3(vtbl: pointer, parent: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new3".}
proc fcQFileSystemWatcher_new4(vtbl: pointer, paths: struct_miqt_array, parent: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new4".}
proc fcQFileSystemWatcher_staticMetaObject(): pointer {.importc: "QFileSystemWatcher_staticMetaObject".}

proc metaObject*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemWatcher_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cstring): pointer =
  fcQFileSystemWatcher_metacast(self.h, param1)

proc metacall*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSystemWatcher_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring): string =
  let v_ms = fcQFileSystemWatcher_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring): string =
  let v_ms = fcQFileSystemWatcher_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPath*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, file: string): bool =
  fcQFileSystemWatcher_addPath(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc addPaths*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, files: seq[string]): seq[string] =
  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: files[i], len: csize_t(len(files[i])))

  var v_ma = fcQFileSystemWatcher_addPaths(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc removePath*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, file: string): bool =
  fcQFileSystemWatcher_removePath(self.h, struct_miqt_string(data: file, len: csize_t(len(file))))

proc removePaths*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, files: seq[string]): seq[string] =
  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: files[i], len: csize_t(len(files[i])))

  var v_ma = fcQFileSystemWatcher_removePaths(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc files*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, ): seq[string] =
  var v_ma = fcQFileSystemWatcher_files(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc directories*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, ): seq[string] =
  var v_ma = fcQFileSystemWatcher_directories(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc tr*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring, c: cstring): string =
  let v_ms = fcQFileSystemWatcher_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileSystemWatcher_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring, c: cstring): string =
  let v_ms = fcQFileSystemWatcher_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileSystemWatcher_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFileSystemWatchermetaObjectProc* = proc(self: QFileSystemWatcher): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFileSystemWatchermetacastProc* = proc(self: QFileSystemWatcher, param1: cstring): pointer {.raises: [], gcsafe.}
type QFileSystemWatchermetacallProc* = proc(self: QFileSystemWatcher, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFileSystemWatchereventProc* = proc(self: QFileSystemWatcher, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileSystemWatchereventFilterProc* = proc(self: QFileSystemWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileSystemWatchertimerEventProc* = proc(self: QFileSystemWatcher, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFileSystemWatcherchildEventProc* = proc(self: QFileSystemWatcher, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFileSystemWatchercustomEventProc* = proc(self: QFileSystemWatcher, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileSystemWatcherconnectNotifyProc* = proc(self: QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileSystemWatcherdisconnectNotifyProc* = proc(self: QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileSystemWatcherVTable* {.inheritable, pure.} = object
  vtbl: cQFileSystemWatcherVTable
  metaObject*: QFileSystemWatchermetaObjectProc
  metacast*: QFileSystemWatchermetacastProc
  metacall*: QFileSystemWatchermetacallProc
  event*: QFileSystemWatchereventProc
  eventFilter*: QFileSystemWatchereventFilterProc
  timerEvent*: QFileSystemWatchertimerEventProc
  childEvent*: QFileSystemWatcherchildEventProc
  customEvent*: QFileSystemWatchercustomEventProc
  connectNotify*: QFileSystemWatcherconnectNotifyProc
  disconnectNotify*: QFileSystemWatcherdisconnectNotifyProc
proc QFileSystemWatchermetaObject*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemWatcher_virtualbase_metaObject(self.h), owned: false)

proc miqt_exec_callback_cQFileSystemWatcher_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFileSystemWatchermetacast*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cstring): pointer =
  fcQFileSystemWatcher_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFileSystemWatcher_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFileSystemWatchermetacall*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSystemWatcher_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFileSystemWatcher_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFileSystemWatcherevent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSystemWatcher_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQFileSystemWatcher_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFileSystemWatchereventFilter*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSystemWatcher_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQFileSystemWatcher_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFileSystemWatchertimerEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFileSystemWatcher_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSystemWatcher_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFileSystemWatcherchildEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFileSystemWatcher_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSystemWatcher_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFileSystemWatchercustomEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QEvent): void =
  fcQFileSystemWatcher_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFileSystemWatcher_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFileSystemWatcherconnectNotify*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSystemWatcher_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFileSystemWatcher_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFileSystemWatcherdisconnectNotify*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSystemWatcher_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFileSystemWatcher_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](vtbl)
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFileSystemWatcher* {.inheritable.} = ref object of QFileSystemWatcher
  vtbl*: cQFileSystemWatcherVTable
method metaObject*(self: VirtualQFileSystemWatcher, ): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFileSystemWatchermetaObject(self[])
proc miqt_exec_method_cQFileSystemWatcher_metaObject(vtbl: pointer, inst: pointer): pointer {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  var virtualReturn = vtbl.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFileSystemWatcher, param1: cstring): pointer {.base.} =
  QFileSystemWatchermetacast(self[], param1)
proc miqt_exec_method_cQFileSystemWatcher_metacast(vtbl: pointer, inst: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = (param1)
  var virtualReturn = vtbl.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFileSystemWatcher, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFileSystemWatchermetacall(self[], param1, param2, param3)
proc miqt_exec_method_cQFileSystemWatcher_metacall(vtbl: pointer, inst: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQFileSystemWatcher, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileSystemWatcherevent(self[], event)
proc miqt_exec_method_cQFileSystemWatcher_event(vtbl: pointer, inst: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQFileSystemWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileSystemWatchereventFilter(self[], watched, event)
proc miqt_exec_method_cQFileSystemWatcher_eventFilter(vtbl: pointer, inst: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQFileSystemWatcher, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFileSystemWatchertimerEvent(self[], event)
proc miqt_exec_method_cQFileSystemWatcher_timerEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl.timerEvent(slotval1)

method childEvent*(self: VirtualQFileSystemWatcher, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFileSystemWatcherchildEvent(self[], event)
proc miqt_exec_method_cQFileSystemWatcher_childEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl.childEvent(slotval1)

method customEvent*(self: VirtualQFileSystemWatcher, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFileSystemWatchercustomEvent(self[], event)
proc miqt_exec_method_cQFileSystemWatcher_customEvent(vtbl: pointer, inst: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl.customEvent(slotval1)

method connectNotify*(self: VirtualQFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileSystemWatcherconnectNotify(self[], signal)
proc miqt_exec_method_cQFileSystemWatcher_connectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileSystemWatcherdisconnectNotify(self[], signal)
proc miqt_exec_method_cQFileSystemWatcher_disconnectNotify(vtbl: pointer, inst: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[VirtualQFileSystemWatcher](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl.disconnectNotify(slotval1)

proc sender*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFileSystemWatcher_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, ): cint =
  fcQFileSystemWatcher_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: cstring): cint =
  fcQFileSystemWatcher_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFileSystemWatcher_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    vtbl: ref QFileSystemWatcherVTable = nil): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  let vtbl = if vtbl == nil: new QFileSystemWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileSystemWatcherVTable, _: ptr cQFileSystemWatcher) {.cdecl.} =
    let vtbl = cast[ref QFileSystemWatcherVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileSystemWatcher_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileSystemWatcher_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileSystemWatcher_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileSystemWatcher_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileSystemWatcher_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileSystemWatcher_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileSystemWatcher_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileSystemWatcher_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileSystemWatcher_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileSystemWatcher_disconnectNotify
  gen_qfilesystemwatcher_types.QFileSystemWatcher(h: fcQFileSystemWatcher_new(addr(vtbl[].vtbl), ), owned: true)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    paths: seq[string],
    vtbl: ref QFileSystemWatcherVTable = nil): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  let vtbl = if vtbl == nil: new QFileSystemWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileSystemWatcherVTable, _: ptr cQFileSystemWatcher) {.cdecl.} =
    let vtbl = cast[ref QFileSystemWatcherVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileSystemWatcher_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileSystemWatcher_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileSystemWatcher_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileSystemWatcher_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileSystemWatcher_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileSystemWatcher_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileSystemWatcher_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileSystemWatcher_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileSystemWatcher_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileSystemWatcher_disconnectNotify
  gen_qfilesystemwatcher_types.QFileSystemWatcher(h: fcQFileSystemWatcher_new2(addr(vtbl[].vtbl), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0]))), owned: true)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    parent: gen_qobject_types.QObject,
    vtbl: ref QFileSystemWatcherVTable = nil): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  let vtbl = if vtbl == nil: new QFileSystemWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileSystemWatcherVTable, _: ptr cQFileSystemWatcher) {.cdecl.} =
    let vtbl = cast[ref QFileSystemWatcherVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileSystemWatcher_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileSystemWatcher_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileSystemWatcher_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileSystemWatcher_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileSystemWatcher_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileSystemWatcher_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileSystemWatcher_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileSystemWatcher_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileSystemWatcher_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileSystemWatcher_disconnectNotify
  gen_qfilesystemwatcher_types.QFileSystemWatcher(h: fcQFileSystemWatcher_new3(addr(vtbl[].vtbl), parent.h), owned: true)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    paths: seq[string], parent: gen_qobject_types.QObject,
    vtbl: ref QFileSystemWatcherVTable = nil): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  let vtbl = if vtbl == nil: new QFileSystemWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileSystemWatcherVTable, _: ptr cQFileSystemWatcher) {.cdecl.} =
    let vtbl = cast[ref QFileSystemWatcherVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFileSystemWatcher_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFileSystemWatcher_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFileSystemWatcher_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFileSystemWatcher_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFileSystemWatcher_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFileSystemWatcher_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFileSystemWatcher_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFileSystemWatcher_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFileSystemWatcher_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFileSystemWatcher_disconnectNotify
  gen_qfilesystemwatcher_types.QFileSystemWatcher(h: fcQFileSystemWatcher_new4(addr(vtbl[].vtbl), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])), parent.h), owned: true)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    vtbl: VirtualQFileSystemWatcher) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileSystemWatcherVTable, _: ptr cQFileSystemWatcher) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQFileSystemWatcher()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQFileSystemWatcher_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQFileSystemWatcher_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQFileSystemWatcher_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQFileSystemWatcher_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQFileSystemWatcher_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQFileSystemWatcher_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQFileSystemWatcher_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQFileSystemWatcher_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQFileSystemWatcher_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQFileSystemWatcher_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQFileSystemWatcher_new(addr(vtbl[].vtbl), )
  vtbl[].owned = true

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    paths: seq[string],
    vtbl: VirtualQFileSystemWatcher) =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))


  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileSystemWatcherVTable, _: ptr cQFileSystemWatcher) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQFileSystemWatcher()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQFileSystemWatcher_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQFileSystemWatcher_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQFileSystemWatcher_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQFileSystemWatcher_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQFileSystemWatcher_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQFileSystemWatcher_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQFileSystemWatcher_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQFileSystemWatcher_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQFileSystemWatcher_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQFileSystemWatcher_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQFileSystemWatcher_new2(addr(vtbl[].vtbl), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))
  vtbl[].owned = true

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    parent: gen_qobject_types.QObject,
    vtbl: VirtualQFileSystemWatcher) =

  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileSystemWatcherVTable, _: ptr cQFileSystemWatcher) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQFileSystemWatcher()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQFileSystemWatcher_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQFileSystemWatcher_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQFileSystemWatcher_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQFileSystemWatcher_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQFileSystemWatcher_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQFileSystemWatcher_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQFileSystemWatcher_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQFileSystemWatcher_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQFileSystemWatcher_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQFileSystemWatcher_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQFileSystemWatcher_new3(addr(vtbl[].vtbl), parent.h)
  vtbl[].owned = true

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    paths: seq[string], parent: gen_qobject_types.QObject,
    vtbl: VirtualQFileSystemWatcher) =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))


  vtbl[].vtbl.destructor = proc(vtbl: ptr cQFileSystemWatcherVTable, _: ptr cQFileSystemWatcher) {.cdecl.} =
    let vtbl = cast[ptr typeof(VirtualQFileSystemWatcher()[])](cast[uint](vtbl) - uint(offsetOf(VirtualQFileSystemWatcher, vtbl)))
    vtbl[].h = nil
    vtbl[].owned = false
  vtbl[].vtbl.metaObject = miqt_exec_method_cQFileSystemWatcher_metaObject
  vtbl[].vtbl.metacast = miqt_exec_method_cQFileSystemWatcher_metacast
  vtbl[].vtbl.metacall = miqt_exec_method_cQFileSystemWatcher_metacall
  vtbl[].vtbl.event = miqt_exec_method_cQFileSystemWatcher_event
  vtbl[].vtbl.eventFilter = miqt_exec_method_cQFileSystemWatcher_eventFilter
  vtbl[].vtbl.timerEvent = miqt_exec_method_cQFileSystemWatcher_timerEvent
  vtbl[].vtbl.childEvent = miqt_exec_method_cQFileSystemWatcher_childEvent
  vtbl[].vtbl.customEvent = miqt_exec_method_cQFileSystemWatcher_customEvent
  vtbl[].vtbl.connectNotify = miqt_exec_method_cQFileSystemWatcher_connectNotify
  vtbl[].vtbl.disconnectNotify = miqt_exec_method_cQFileSystemWatcher_disconnectNotify
  if vtbl[].h != nil: delete(move(vtbl[]))
  vtbl[].h = fcQFileSystemWatcher_new4(addr(vtbl[].vtbl), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])), parent.h)
  vtbl[].owned = true

proc staticMetaObject*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemWatcher_staticMetaObject())
