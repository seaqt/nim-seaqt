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


{.compile("gen_qfilesystemwatcher.cpp", QtCoreCFlags).}


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

proc fcQFileSystemWatcher_metaObject(self: pointer): pointer {.importc: "QFileSystemWatcher_metaObject".}
proc fcQFileSystemWatcher_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemWatcher_metacast".}
proc fcQFileSystemWatcher_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemWatcher_metacall".}
proc fcQFileSystemWatcher_tr(s: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_tr".}
proc fcQFileSystemWatcher_addPath(self: pointer, file: struct_miqt_string): bool {.importc: "QFileSystemWatcher_addPath".}
proc fcQFileSystemWatcher_addPaths(self: pointer, files: struct_miqt_array): struct_miqt_array {.importc: "QFileSystemWatcher_addPaths".}
proc fcQFileSystemWatcher_removePath(self: pointer, file: struct_miqt_string): bool {.importc: "QFileSystemWatcher_removePath".}
proc fcQFileSystemWatcher_removePaths(self: pointer, files: struct_miqt_array): struct_miqt_array {.importc: "QFileSystemWatcher_removePaths".}
proc fcQFileSystemWatcher_files(self: pointer): struct_miqt_array {.importc: "QFileSystemWatcher_files".}
proc fcQFileSystemWatcher_directories(self: pointer): struct_miqt_array {.importc: "QFileSystemWatcher_directories".}
proc fcQFileSystemWatcher_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_tr2".}
proc fcQFileSystemWatcher_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSystemWatcher_tr3".}
proc fcQFileSystemWatcher_vtbl(self: pointer): pointer {.importc: "QFileSystemWatcher_vtbl".}
proc fcQFileSystemWatcher_vdata(self: pointer): pointer {.importc: "QFileSystemWatcher_vdata".}

type cQFileSystemWatcherVTable {.pure.} = object
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
proc fcQFileSystemWatcher_virtualbase_metaObject(self: pointer): pointer {.importc: "QFileSystemWatcher_virtualbase_metaObject".}
proc fcQFileSystemWatcher_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemWatcher_virtualbase_metacast".}
proc fcQFileSystemWatcher_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemWatcher_virtualbase_metacall".}
proc fcQFileSystemWatcher_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFileSystemWatcher_virtualbase_event".}
proc fcQFileSystemWatcher_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFileSystemWatcher_virtualbase_eventFilter".}
proc fcQFileSystemWatcher_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFileSystemWatcher_virtualbase_timerEvent".}
proc fcQFileSystemWatcher_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFileSystemWatcher_virtualbase_childEvent".}
proc fcQFileSystemWatcher_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFileSystemWatcher_virtualbase_customEvent".}
proc fcQFileSystemWatcher_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFileSystemWatcher_virtualbase_connectNotify".}
proc fcQFileSystemWatcher_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFileSystemWatcher_virtualbase_disconnectNotify".}
proc fcQFileSystemWatcher_protectedbase_sender(self: pointer): pointer {.importc: "QFileSystemWatcher_protectedbase_sender".}
proc fcQFileSystemWatcher_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFileSystemWatcher_protectedbase_senderSignalIndex".}
proc fcQFileSystemWatcher_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFileSystemWatcher_protectedbase_receivers".}
proc fcQFileSystemWatcher_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFileSystemWatcher_protectedbase_isSignalConnected".}
proc fcQFileSystemWatcher_new(vtbl, vdata: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new".}
proc fcQFileSystemWatcher_new2(vtbl, vdata: pointer, paths: struct_miqt_array): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new2".}
proc fcQFileSystemWatcher_new3(vtbl, vdata: pointer, parent: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new3".}
proc fcQFileSystemWatcher_new4(vtbl, vdata: pointer, paths: struct_miqt_array, parent: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new4".}
proc fcQFileSystemWatcher_staticMetaObject(): pointer {.importc: "QFileSystemWatcher_staticMetaObject".}

proc metaObject*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemWatcher_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cstring): pointer =
  fcQFileSystemWatcher_metacast(self.h, param1)

proc metacall*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSystemWatcher_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring): string =
  let v_ms = fcQFileSystemWatcher_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc addPath*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, file: openArray[char]): bool =
  fcQFileSystemWatcher_addPath(self.h, struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))))

proc addPaths*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, files: openArray[string]): seq[string] =
  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: if len(files[i]) > 0: addr files[i][0] else: nil, len: csize_t(len(files[i])))

  var v_ma = fcQFileSystemWatcher_addPaths(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc removePath*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, file: openArray[char]): bool =
  fcQFileSystemWatcher_removePath(self.h, struct_miqt_string(data: if len(file) > 0: addr file[0] else: nil, len: csize_t(len(file))))

proc removePaths*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, files: openArray[string]): seq[string] =
  var files_CArray = newSeq[struct_miqt_string](len(files))
  for i in 0..<len(files):
    files_CArray[i] = struct_miqt_string(data: if len(files[i]) > 0: addr files[i][0] else: nil, len: csize_t(len(files[i])))

  var v_ma = fcQFileSystemWatcher_removePaths(self.h, struct_miqt_array(len: csize_t(len(files)), data: if len(files) == 0: nil else: addr(files_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc files*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher): seq[string] =
  var v_ma = fcQFileSystemWatcher_files(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc directories*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher): seq[string] =
  var v_ma = fcQFileSystemWatcher_directories(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc tr*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring, c: cstring): string =
  let v_ms = fcQFileSystemWatcher_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFileSystemWatcher_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

proc QFileSystemWatchermetaObject*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemWatcher_virtualbase_metaObject(self.h), owned: false)

proc QFileSystemWatchermetacast*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cstring): pointer =
  fcQFileSystemWatcher_virtualbase_metacast(self.h, param1)

proc QFileSystemWatchermetacall*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cint, param2: cint, param3: pointer): cint =
  fcQFileSystemWatcher_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QFileSystemWatcherevent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSystemWatcher_virtualbase_event(self.h, event.h)

proc QFileSystemWatchereventFilter*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFileSystemWatcher_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QFileSystemWatchertimerEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFileSystemWatcher_virtualbase_timerEvent(self.h, event.h)

proc QFileSystemWatcherchildEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFileSystemWatcher_virtualbase_childEvent(self.h, event.h)

proc QFileSystemWatchercustomEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QEvent): void =
  fcQFileSystemWatcher_virtualbase_customEvent(self.h, event.h)

proc QFileSystemWatcherconnectNotify*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSystemWatcher_virtualbase_connectNotify(self.h, signal.h)

proc QFileSystemWatcherdisconnectNotify*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFileSystemWatcher_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQFileSystemWatcher_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFileSystemWatcher_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQFileSystemWatcher_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQFileSystemWatcher_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQFileSystemWatcher_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQFileSystemWatcher_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQFileSystemWatcher_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQFileSystemWatcher_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQFileSystemWatcher_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQFileSystemWatcher_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
  let self = QFileSystemWatcher(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFileSystemWatcher* {.inheritable.} = ref object of QFileSystemWatcher
  vtbl*: cQFileSystemWatcherVTable

method metaObject*(self: VirtualQFileSystemWatcher): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFileSystemWatchermetaObject(self[])
method metacast*(self: VirtualQFileSystemWatcher, param1: cstring): pointer {.base.} =
  QFileSystemWatchermetacast(self[], param1)
method metacall*(self: VirtualQFileSystemWatcher, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFileSystemWatchermetacall(self[], param1, param2, param3)
method event*(self: VirtualQFileSystemWatcher, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileSystemWatcherevent(self[], event)
method eventFilter*(self: VirtualQFileSystemWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileSystemWatchereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQFileSystemWatcher, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFileSystemWatchertimerEvent(self[], event)
method childEvent*(self: VirtualQFileSystemWatcher, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFileSystemWatcherchildEvent(self[], event)
method customEvent*(self: VirtualQFileSystemWatcher, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFileSystemWatchercustomEvent(self[], event)
method connectNotify*(self: VirtualQFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileSystemWatcherconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileSystemWatcherdisconnectNotify(self[], signal)

proc fcQFileSystemWatcher_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFileSystemWatcher_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQFileSystemWatcher_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQFileSystemWatcher_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQFileSystemWatcher_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQFileSystemWatcher_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQFileSystemWatcher_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQFileSystemWatcher_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQFileSystemWatcher_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQFileSystemWatcher_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFileSystemWatcher](fcQFileSystemWatcher_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFileSystemWatcher_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher): cint =
  fcQFileSystemWatcher_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: cstring): cint =
  fcQFileSystemWatcher_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFileSystemWatcher_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    vtbl: ref QFileSystemWatcherVTable = nil): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  let vtbl = if vtbl == nil: new QFileSystemWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFileSystemWatcher_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFileSystemWatcher_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFileSystemWatcher_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFileSystemWatcher_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFileSystemWatcher_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFileSystemWatcher_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFileSystemWatcher_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFileSystemWatcher_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFileSystemWatcher_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFileSystemWatcher_vtable_callback_disconnectNotify
  gen_qfilesystemwatcher_types.QFileSystemWatcher(h: fcQFileSystemWatcher_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    paths: openArray[string],
    vtbl: ref QFileSystemWatcherVTable = nil): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  let vtbl = if vtbl == nil: new QFileSystemWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFileSystemWatcher_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFileSystemWatcher_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFileSystemWatcher_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFileSystemWatcher_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFileSystemWatcher_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFileSystemWatcher_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFileSystemWatcher_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFileSystemWatcher_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFileSystemWatcher_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFileSystemWatcher_vtable_callback_disconnectNotify
  gen_qfilesystemwatcher_types.QFileSystemWatcher(h: fcQFileSystemWatcher_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0]))), owned: true)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    parent: gen_qobject_types.QObject,
    vtbl: ref QFileSystemWatcherVTable = nil): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  let vtbl = if vtbl == nil: new QFileSystemWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFileSystemWatcher_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFileSystemWatcher_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFileSystemWatcher_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFileSystemWatcher_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFileSystemWatcher_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFileSystemWatcher_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFileSystemWatcher_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFileSystemWatcher_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFileSystemWatcher_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFileSystemWatcher_vtable_callback_disconnectNotify
  gen_qfilesystemwatcher_types.QFileSystemWatcher(h: fcQFileSystemWatcher_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    paths: openArray[string], parent: gen_qobject_types.QObject,
    vtbl: ref QFileSystemWatcherVTable = nil): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  let vtbl = if vtbl == nil: new QFileSystemWatcherVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileSystemWatcherVTable](fcQFileSystemWatcher_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFileSystemWatcher_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFileSystemWatcher_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFileSystemWatcher_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFileSystemWatcher_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFileSystemWatcher_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFileSystemWatcher_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFileSystemWatcher_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFileSystemWatcher_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFileSystemWatcher_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFileSystemWatcher_vtable_callback_disconnectNotify
  gen_qfilesystemwatcher_types.QFileSystemWatcher(h: fcQFileSystemWatcher_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])), parent.h), owned: true)

const cQFileSystemWatcher_mvtbl = cQFileSystemWatcherVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFileSystemWatcher()[])](self.fcQFileSystemWatcher_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQFileSystemWatcher_method_callback_metaObject,
  metacast: fcQFileSystemWatcher_method_callback_metacast,
  metacall: fcQFileSystemWatcher_method_callback_metacall,
  event: fcQFileSystemWatcher_method_callback_event,
  eventFilter: fcQFileSystemWatcher_method_callback_eventFilter,
  timerEvent: fcQFileSystemWatcher_method_callback_timerEvent,
  childEvent: fcQFileSystemWatcher_method_callback_childEvent,
  customEvent: fcQFileSystemWatcher_method_callback_customEvent,
  connectNotify: fcQFileSystemWatcher_method_callback_connectNotify,
  disconnectNotify: fcQFileSystemWatcher_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    inst: VirtualQFileSystemWatcher) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileSystemWatcher_new(addr(cQFileSystemWatcher_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    paths: openArray[string],
    inst: VirtualQFileSystemWatcher) =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileSystemWatcher_new2(addr(cQFileSystemWatcher_mvtbl), addr(inst[]), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))
  inst[].owned = true

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    parent: gen_qobject_types.QObject,
    inst: VirtualQFileSystemWatcher) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileSystemWatcher_new3(addr(cQFileSystemWatcher_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher,
    paths: openArray[string], parent: gen_qobject_types.QObject,
    inst: VirtualQFileSystemWatcher) =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: if len(paths[i]) > 0: addr paths[i][0] else: nil, len: csize_t(len(paths[i])))

  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFileSystemWatcher_new4(addr(cQFileSystemWatcher_mvtbl), addr(inst[]), struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemWatcher_staticMetaObject())
