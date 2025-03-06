import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
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

proc fcQFileSystemWatcher_new(): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new".}
proc fcQFileSystemWatcher_new2(paths: struct_miqt_array): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new2".}
proc fcQFileSystemWatcher_new3(parent: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new3".}
proc fcQFileSystemWatcher_new4(paths: struct_miqt_array, parent: pointer): ptr cQFileSystemWatcher {.importc: "QFileSystemWatcher_new4".}
proc fcQFileSystemWatcher_metaObject(self: pointer, ): pointer {.importc: "QFileSystemWatcher_metaObject".}
proc fcQFileSystemWatcher_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemWatcher_metacast".}
proc fcQFileSystemWatcher_tr(s: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_tr".}
proc fcQFileSystemWatcher_addPath(self: pointer, file: struct_miqt_string): bool {.importc: "QFileSystemWatcher_addPath".}
proc fcQFileSystemWatcher_addPaths(self: pointer, files: struct_miqt_array): struct_miqt_array {.importc: "QFileSystemWatcher_addPaths".}
proc fcQFileSystemWatcher_removePath(self: pointer, file: struct_miqt_string): bool {.importc: "QFileSystemWatcher_removePath".}
proc fcQFileSystemWatcher_removePaths(self: pointer, files: struct_miqt_array): struct_miqt_array {.importc: "QFileSystemWatcher_removePaths".}
proc fcQFileSystemWatcher_files(self: pointer, ): struct_miqt_array {.importc: "QFileSystemWatcher_files".}
proc fcQFileSystemWatcher_directories(self: pointer, ): struct_miqt_array {.importc: "QFileSystemWatcher_directories".}
proc fcQFileSystemWatcher_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSystemWatcher_tr2".}
proc fcQFileSystemWatcher_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSystemWatcher_tr3".}
proc fQFileSystemWatcher_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFileSystemWatcher_virtualbase_event".}
proc fcQFileSystemWatcher_override_virtual_event(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_event".}
proc fQFileSystemWatcher_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFileSystemWatcher_virtualbase_eventFilter".}
proc fcQFileSystemWatcher_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_eventFilter".}
proc fQFileSystemWatcher_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFileSystemWatcher_virtualbase_timerEvent".}
proc fcQFileSystemWatcher_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_timerEvent".}
proc fQFileSystemWatcher_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFileSystemWatcher_virtualbase_childEvent".}
proc fcQFileSystemWatcher_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_childEvent".}
proc fQFileSystemWatcher_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFileSystemWatcher_virtualbase_customEvent".}
proc fcQFileSystemWatcher_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_customEvent".}
proc fQFileSystemWatcher_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFileSystemWatcher_virtualbase_connectNotify".}
proc fcQFileSystemWatcher_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_connectNotify".}
proc fQFileSystemWatcher_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFileSystemWatcher_virtualbase_disconnectNotify".}
proc fcQFileSystemWatcher_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFileSystemWatcher_override_virtual_disconnectNotify".}
proc fcQFileSystemWatcher_delete(self: pointer) {.importc: "QFileSystemWatcher_delete".}


func init*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher, h: ptr cQFileSystemWatcher): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  T(h: h)
proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher, ): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  gen_qfilesystemwatcher_types.QFileSystemWatcher.init(fcQFileSystemWatcher_new())

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher, paths: seq[string]): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  gen_qfilesystemwatcher_types.QFileSystemWatcher.init(fcQFileSystemWatcher_new2(struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0]))))

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher, parent: gen_qobject_types.QObject): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  gen_qfilesystemwatcher_types.QFileSystemWatcher.init(fcQFileSystemWatcher_new3(parent.h))

proc create*(T: type gen_qfilesystemwatcher_types.QFileSystemWatcher, paths: seq[string], parent: gen_qobject_types.QObject): gen_qfilesystemwatcher_types.QFileSystemWatcher =
  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  gen_qfilesystemwatcher_types.QFileSystemWatcher.init(fcQFileSystemWatcher_new4(struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])), parent.h))

proc metaObject*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFileSystemWatcher_metaObject(self.h))

proc metacast*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, param1: cstring): pointer =
  fcQFileSystemWatcher_metacast(self.h, param1)

proc tr*(_: type gen_qfilesystemwatcher_types.QFileSystemWatcher, s: cstring): string =
  let v_ms = fcQFileSystemWatcher_tr(s)
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

proc QFileSystemWatcherevent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QEvent): bool =
  fQFileSystemWatcher_virtualbase_event(self.h, event.h)

type QFileSystemWatchereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, slot: QFileSystemWatchereventProc) =
  # TODO check subclass
  var tmp = new QFileSystemWatchereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_event(self: ptr cQFileSystemWatcher, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemWatcher_event ".} =
  var nimfunc = cast[ptr QFileSystemWatchereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileSystemWatchereventFilter*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFileSystemWatcher_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFileSystemWatchereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, slot: QFileSystemWatchereventFilterProc) =
  # TODO check subclass
  var tmp = new QFileSystemWatchereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_eventFilter(self: ptr cQFileSystemWatcher, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemWatcher_eventFilter ".} =
  var nimfunc = cast[ptr QFileSystemWatchereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFileSystemWatchertimerEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFileSystemWatcher_virtualbase_timerEvent(self.h, event.h)

type QFileSystemWatchertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, slot: QFileSystemWatchertimerEventProc) =
  # TODO check subclass
  var tmp = new QFileSystemWatchertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_timerEvent(self: ptr cQFileSystemWatcher, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_timerEvent ".} =
  var nimfunc = cast[ptr QFileSystemWatchertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFileSystemWatcherchildEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QChildEvent): void =
  fQFileSystemWatcher_virtualbase_childEvent(self.h, event.h)

type QFileSystemWatcherchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, slot: QFileSystemWatcherchildEventProc) =
  # TODO check subclass
  var tmp = new QFileSystemWatcherchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_childEvent(self: ptr cQFileSystemWatcher, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_childEvent ".} =
  var nimfunc = cast[ptr QFileSystemWatcherchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFileSystemWatchercustomEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, event: gen_qcoreevent_types.QEvent): void =
  fQFileSystemWatcher_virtualbase_customEvent(self.h, event.h)

type QFileSystemWatchercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, slot: QFileSystemWatchercustomEventProc) =
  # TODO check subclass
  var tmp = new QFileSystemWatchercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_customEvent(self: ptr cQFileSystemWatcher, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_customEvent ".} =
  var nimfunc = cast[ptr QFileSystemWatchercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFileSystemWatcherconnectNotify*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFileSystemWatcher_virtualbase_connectNotify(self.h, signal.h)

type QFileSystemWatcherconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, slot: QFileSystemWatcherconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileSystemWatcherconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_connectNotify(self: ptr cQFileSystemWatcher, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_connectNotify ".} =
  var nimfunc = cast[ptr QFileSystemWatcherconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFileSystemWatcherdisconnectNotify*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFileSystemWatcher_virtualbase_disconnectNotify(self.h, signal.h)

type QFileSystemWatcherdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher, slot: QFileSystemWatcherdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileSystemWatcherdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemWatcher_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemWatcher_disconnectNotify(self: ptr cQFileSystemWatcher, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSystemWatcher_disconnectNotify ".} =
  var nimfunc = cast[ptr QFileSystemWatcherdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qfilesystemwatcher_types.QFileSystemWatcher) =
  fcQFileSystemWatcher_delete(self.h)
