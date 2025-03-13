import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core") & " -fPIC"
{.compile("gen_qsavefile.cpp", cflags).}


import ./gen_qsavefile_types
export gen_qsavefile_types

import
  ./gen_qcoreevent_types,
  ./gen_qfiledevice,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qfiledevice,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQSaveFile*{.exportc: "QSaveFile", incompleteStruct.} = object

proc fcQSaveFile_metaObject(self: pointer): pointer {.importc: "QSaveFile_metaObject".}
proc fcQSaveFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QSaveFile_metacast".}
proc fcQSaveFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSaveFile_metacall".}
proc fcQSaveFile_tr(s: cstring): struct_miqt_string {.importc: "QSaveFile_tr".}
proc fcQSaveFile_trUtf8(s: cstring): struct_miqt_string {.importc: "QSaveFile_trUtf8".}
proc fcQSaveFile_fileName(self: pointer): struct_miqt_string {.importc: "QSaveFile_fileName".}
proc fcQSaveFile_setFileName(self: pointer, name: struct_miqt_string): void {.importc: "QSaveFile_setFileName".}
proc fcQSaveFile_open(self: pointer, flags: cint): bool {.importc: "QSaveFile_open".}
proc fcQSaveFile_commit(self: pointer): bool {.importc: "QSaveFile_commit".}
proc fcQSaveFile_cancelWriting(self: pointer): void {.importc: "QSaveFile_cancelWriting".}
proc fcQSaveFile_setDirectWriteFallback(self: pointer, enabled: bool): void {.importc: "QSaveFile_setDirectWriteFallback".}
proc fcQSaveFile_directWriteFallback(self: pointer): bool {.importc: "QSaveFile_directWriteFallback".}
proc fcQSaveFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSaveFile_tr2".}
proc fcQSaveFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSaveFile_tr3".}
proc fcQSaveFile_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSaveFile_trUtf82".}
proc fcQSaveFile_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSaveFile_trUtf83".}
proc fcQSaveFile_vtbl(self: pointer): pointer {.importc: "QSaveFile_vtbl".}
proc fcQSaveFile_vdata(self: pointer): pointer {.importc: "QSaveFile_vdata".}
type cQSaveFileVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  fileName*: proc(self: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, flags: cint): bool {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, offset: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  resize*: proc(self: pointer, sz: clonglong): bool {.cdecl, raises: [], gcsafe.}
  permissions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setPermissions*: proc(self: pointer, permissionSpec: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSaveFile_virtualbase_metaObject(self: pointer): pointer {.importc: "QSaveFile_virtualbase_metaObject".}
proc fcQSaveFile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSaveFile_virtualbase_metacast".}
proc fcQSaveFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSaveFile_virtualbase_metacall".}
proc fcQSaveFile_virtualbase_fileName(self: pointer): struct_miqt_string {.importc: "QSaveFile_virtualbase_fileName".}
proc fcQSaveFile_virtualbase_open(self: pointer, flags: cint): bool {.importc: "QSaveFile_virtualbase_open".}
proc fcQSaveFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QSaveFile_virtualbase_writeData".}
proc fcQSaveFile_virtualbase_isSequential(self: pointer): bool {.importc: "QSaveFile_virtualbase_isSequential".}
proc fcQSaveFile_virtualbase_pos(self: pointer): clonglong {.importc: "QSaveFile_virtualbase_pos".}
proc fcQSaveFile_virtualbase_seek(self: pointer, offset: clonglong): bool {.importc: "QSaveFile_virtualbase_seek".}
proc fcQSaveFile_virtualbase_atEnd(self: pointer): bool {.importc: "QSaveFile_virtualbase_atEnd".}
proc fcQSaveFile_virtualbase_size(self: pointer): clonglong {.importc: "QSaveFile_virtualbase_size".}
proc fcQSaveFile_virtualbase_resize(self: pointer, sz: clonglong): bool {.importc: "QSaveFile_virtualbase_resize".}
proc fcQSaveFile_virtualbase_permissions(self: pointer): cint {.importc: "QSaveFile_virtualbase_permissions".}
proc fcQSaveFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QSaveFile_virtualbase_setPermissions".}
proc fcQSaveFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSaveFile_virtualbase_readData".}
proc fcQSaveFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSaveFile_virtualbase_readLineData".}
proc fcQSaveFile_virtualbase_reset(self: pointer): bool {.importc: "QSaveFile_virtualbase_reset".}
proc fcQSaveFile_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QSaveFile_virtualbase_bytesAvailable".}
proc fcQSaveFile_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QSaveFile_virtualbase_bytesToWrite".}
proc fcQSaveFile_virtualbase_canReadLine(self: pointer): bool {.importc: "QSaveFile_virtualbase_canReadLine".}
proc fcQSaveFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QSaveFile_virtualbase_waitForReadyRead".}
proc fcQSaveFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QSaveFile_virtualbase_waitForBytesWritten".}
proc fcQSaveFile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSaveFile_virtualbase_event".}
proc fcQSaveFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSaveFile_virtualbase_eventFilter".}
proc fcQSaveFile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSaveFile_virtualbase_timerEvent".}
proc fcQSaveFile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSaveFile_virtualbase_childEvent".}
proc fcQSaveFile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSaveFile_virtualbase_customEvent".}
proc fcQSaveFile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSaveFile_virtualbase_connectNotify".}
proc fcQSaveFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSaveFile_virtualbase_disconnectNotify".}
proc fcQSaveFile_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QSaveFile_protectedbase_setOpenMode".}
proc fcQSaveFile_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QSaveFile_protectedbase_setErrorString".}
proc fcQSaveFile_protectedbase_sender(self: pointer): pointer {.importc: "QSaveFile_protectedbase_sender".}
proc fcQSaveFile_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSaveFile_protectedbase_senderSignalIndex".}
proc fcQSaveFile_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSaveFile_protectedbase_receivers".}
proc fcQSaveFile_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSaveFile_protectedbase_isSignalConnected".}
proc fcQSaveFile_new(vtbl, vdata: pointer, name: struct_miqt_string): ptr cQSaveFile {.importc: "QSaveFile_new".}
proc fcQSaveFile_new2(vtbl, vdata: pointer): ptr cQSaveFile {.importc: "QSaveFile_new2".}
proc fcQSaveFile_new3(vtbl, vdata: pointer, name: struct_miqt_string, parent: pointer): ptr cQSaveFile {.importc: "QSaveFile_new3".}
proc fcQSaveFile_new4(vtbl, vdata: pointer, parent: pointer): ptr cQSaveFile {.importc: "QSaveFile_new4".}
proc fcQSaveFile_staticMetaObject(): pointer {.importc: "QSaveFile_staticMetaObject".}

proc metaObject*(self: gen_qsavefile_types.QSaveFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSaveFile_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsavefile_types.QSaveFile, param1: cstring): pointer =
  fcQSaveFile_metacast(self.h, param1)

proc metacall*(self: gen_qsavefile_types.QSaveFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQSaveFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsavefile_types.QSaveFile, s: cstring): string =
  let v_ms = fcQSaveFile_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsavefile_types.QSaveFile, s: cstring): string =
  let v_ms = fcQSaveFile_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qsavefile_types.QSaveFile): string =
  let v_ms = fcQSaveFile_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFileName*(self: gen_qsavefile_types.QSaveFile, name: openArray[char]): void =
  fcQSaveFile_setFileName(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc open*(self: gen_qsavefile_types.QSaveFile, flags: cint): bool =
  fcQSaveFile_open(self.h, cint(flags))

proc commit*(self: gen_qsavefile_types.QSaveFile): bool =
  fcQSaveFile_commit(self.h)

proc cancelWriting*(self: gen_qsavefile_types.QSaveFile): void =
  fcQSaveFile_cancelWriting(self.h)

proc setDirectWriteFallback*(self: gen_qsavefile_types.QSaveFile, enabled: bool): void =
  fcQSaveFile_setDirectWriteFallback(self.h, enabled)

proc directWriteFallback*(self: gen_qsavefile_types.QSaveFile): bool =
  fcQSaveFile_directWriteFallback(self.h)

proc tr*(_: type gen_qsavefile_types.QSaveFile, s: cstring, c: cstring): string =
  let v_ms = fcQSaveFile_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsavefile_types.QSaveFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSaveFile_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsavefile_types.QSaveFile, s: cstring, c: cstring): string =
  let v_ms = fcQSaveFile_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsavefile_types.QSaveFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSaveFile_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSaveFilemetaObjectProc* = proc(self: QSaveFile): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSaveFilemetacastProc* = proc(self: QSaveFile, param1: cstring): pointer {.raises: [], gcsafe.}
type QSaveFilemetacallProc* = proc(self: QSaveFile, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSaveFilefileNameProc* = proc(self: QSaveFile): string {.raises: [], gcsafe.}
type QSaveFileopenProc* = proc(self: QSaveFile, flags: cint): bool {.raises: [], gcsafe.}
type QSaveFilewriteDataProc* = proc(self: QSaveFile, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QSaveFileisSequentialProc* = proc(self: QSaveFile): bool {.raises: [], gcsafe.}
type QSaveFileposProc* = proc(self: QSaveFile): clonglong {.raises: [], gcsafe.}
type QSaveFileseekProc* = proc(self: QSaveFile, offset: clonglong): bool {.raises: [], gcsafe.}
type QSaveFileatEndProc* = proc(self: QSaveFile): bool {.raises: [], gcsafe.}
type QSaveFilesizeProc* = proc(self: QSaveFile): clonglong {.raises: [], gcsafe.}
type QSaveFileresizeProc* = proc(self: QSaveFile, sz: clonglong): bool {.raises: [], gcsafe.}
type QSaveFilepermissionsProc* = proc(self: QSaveFile): cint {.raises: [], gcsafe.}
type QSaveFilesetPermissionsProc* = proc(self: QSaveFile, permissionSpec: cint): bool {.raises: [], gcsafe.}
type QSaveFilereadDataProc* = proc(self: QSaveFile, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QSaveFilereadLineDataProc* = proc(self: QSaveFile, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QSaveFileresetProc* = proc(self: QSaveFile): bool {.raises: [], gcsafe.}
type QSaveFilebytesAvailableProc* = proc(self: QSaveFile): clonglong {.raises: [], gcsafe.}
type QSaveFilebytesToWriteProc* = proc(self: QSaveFile): clonglong {.raises: [], gcsafe.}
type QSaveFilecanReadLineProc* = proc(self: QSaveFile): bool {.raises: [], gcsafe.}
type QSaveFilewaitForReadyReadProc* = proc(self: QSaveFile, msecs: cint): bool {.raises: [], gcsafe.}
type QSaveFilewaitForBytesWrittenProc* = proc(self: QSaveFile, msecs: cint): bool {.raises: [], gcsafe.}
type QSaveFileeventProc* = proc(self: QSaveFile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSaveFileeventFilterProc* = proc(self: QSaveFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSaveFiletimerEventProc* = proc(self: QSaveFile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSaveFilechildEventProc* = proc(self: QSaveFile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSaveFilecustomEventProc* = proc(self: QSaveFile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSaveFileconnectNotifyProc* = proc(self: QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSaveFiledisconnectNotifyProc* = proc(self: QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSaveFileVTable* {.inheritable, pure.} = object
  vtbl: cQSaveFileVTable
  metaObject*: QSaveFilemetaObjectProc
  metacast*: QSaveFilemetacastProc
  metacall*: QSaveFilemetacallProc
  fileName*: QSaveFilefileNameProc
  open*: QSaveFileopenProc
  writeData*: QSaveFilewriteDataProc
  isSequential*: QSaveFileisSequentialProc
  pos*: QSaveFileposProc
  seek*: QSaveFileseekProc
  atEnd*: QSaveFileatEndProc
  size*: QSaveFilesizeProc
  resize*: QSaveFileresizeProc
  permissions*: QSaveFilepermissionsProc
  setPermissions*: QSaveFilesetPermissionsProc
  readData*: QSaveFilereadDataProc
  readLineData*: QSaveFilereadLineDataProc
  reset*: QSaveFileresetProc
  bytesAvailable*: QSaveFilebytesAvailableProc
  bytesToWrite*: QSaveFilebytesToWriteProc
  canReadLine*: QSaveFilecanReadLineProc
  waitForReadyRead*: QSaveFilewaitForReadyReadProc
  waitForBytesWritten*: QSaveFilewaitForBytesWrittenProc
  event*: QSaveFileeventProc
  eventFilter*: QSaveFileeventFilterProc
  timerEvent*: QSaveFiletimerEventProc
  childEvent*: QSaveFilechildEventProc
  customEvent*: QSaveFilecustomEventProc
  connectNotify*: QSaveFileconnectNotifyProc
  disconnectNotify*: QSaveFiledisconnectNotifyProc
proc QSaveFilemetaObject*(self: gen_qsavefile_types.QSaveFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSaveFile_virtualbase_metaObject(self.h), owned: false)

proc cQSaveFile_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QSaveFilemetacast*(self: gen_qsavefile_types.QSaveFile, param1: cstring): pointer =
  fcQSaveFile_virtualbase_metacast(self.h, param1)

proc cQSaveFile_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSaveFilemetacall*(self: gen_qsavefile_types.QSaveFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQSaveFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQSaveFile_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSaveFilefileName*(self: gen_qsavefile_types.QSaveFile): string =
  let v_ms = fcQSaveFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cQSaveFile_vtable_callback_fileName(self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].fileName(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QSaveFileopen*(self: gen_qsavefile_types.QSaveFile, flags: cint): bool =
  fcQSaveFile_virtualbase_open(self.h, cint(flags))

proc cQSaveFile_vtable_callback_open(self: pointer, flags: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = cint(flags)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QSaveFilewriteData*(self: gen_qsavefile_types.QSaveFile, data: cstring, len: clonglong): clonglong =
  fcQSaveFile_virtualbase_writeData(self.h, data, len)

proc cQSaveFile_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QSaveFileisSequential*(self: gen_qsavefile_types.QSaveFile): bool =
  fcQSaveFile_virtualbase_isSequential(self.h)

proc cQSaveFile_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QSaveFilepos*(self: gen_qsavefile_types.QSaveFile): clonglong =
  fcQSaveFile_virtualbase_pos(self.h)

proc cQSaveFile_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QSaveFileseek*(self: gen_qsavefile_types.QSaveFile, offset: clonglong): bool =
  fcQSaveFile_virtualbase_seek(self.h, offset)

proc cQSaveFile_vtable_callback_seek(self: pointer, offset: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = offset
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QSaveFileatEnd*(self: gen_qsavefile_types.QSaveFile): bool =
  fcQSaveFile_virtualbase_atEnd(self.h)

proc cQSaveFile_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QSaveFilesize*(self: gen_qsavefile_types.QSaveFile): clonglong =
  fcQSaveFile_virtualbase_size(self.h)

proc cQSaveFile_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QSaveFileresize*(self: gen_qsavefile_types.QSaveFile, sz: clonglong): bool =
  fcQSaveFile_virtualbase_resize(self.h, sz)

proc cQSaveFile_vtable_callback_resize(self: pointer, sz: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = sz
  var virtualReturn = vtbl[].resize(self, slotval1)
  virtualReturn

proc QSaveFilepermissions*(self: gen_qsavefile_types.QSaveFile): cint =
  cint(fcQSaveFile_virtualbase_permissions(self.h))

proc cQSaveFile_vtable_callback_permissions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].permissions(self)
  cint(virtualReturn)

proc QSaveFilesetPermissions*(self: gen_qsavefile_types.QSaveFile, permissionSpec: cint): bool =
  fcQSaveFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

proc cQSaveFile_vtable_callback_setPermissions(self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = cint(permissionSpec)
  var virtualReturn = vtbl[].setPermissions(self, slotval1)
  virtualReturn

proc QSaveFilereadData*(self: gen_qsavefile_types.QSaveFile, data: cstring, maxlen: clonglong): clonglong =
  fcQSaveFile_virtualbase_readData(self.h, data, maxlen)

proc cQSaveFile_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QSaveFilereadLineData*(self: gen_qsavefile_types.QSaveFile, data: cstring, maxlen: clonglong): clonglong =
  fcQSaveFile_virtualbase_readLineData(self.h, data, maxlen)

proc cQSaveFile_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QSaveFilereset*(self: gen_qsavefile_types.QSaveFile): bool =
  fcQSaveFile_virtualbase_reset(self.h)

proc cQSaveFile_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QSaveFilebytesAvailable*(self: gen_qsavefile_types.QSaveFile): clonglong =
  fcQSaveFile_virtualbase_bytesAvailable(self.h)

proc cQSaveFile_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QSaveFilebytesToWrite*(self: gen_qsavefile_types.QSaveFile): clonglong =
  fcQSaveFile_virtualbase_bytesToWrite(self.h)

proc cQSaveFile_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QSaveFilecanReadLine*(self: gen_qsavefile_types.QSaveFile): bool =
  fcQSaveFile_virtualbase_canReadLine(self.h)

proc cQSaveFile_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QSaveFilewaitForReadyRead*(self: gen_qsavefile_types.QSaveFile, msecs: cint): bool =
  fcQSaveFile_virtualbase_waitForReadyRead(self.h, msecs)

proc cQSaveFile_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QSaveFilewaitForBytesWritten*(self: gen_qsavefile_types.QSaveFile, msecs: cint): bool =
  fcQSaveFile_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQSaveFile_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QSaveFileevent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QEvent): bool =
  fcQSaveFile_virtualbase_event(self.h, event.h)

proc cQSaveFile_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSaveFileeventFilter*(self: gen_qsavefile_types.QSaveFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSaveFile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQSaveFile_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSaveFiletimerEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSaveFile_virtualbase_timerEvent(self.h, event.h)

proc cQSaveFile_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QSaveFilechildEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSaveFile_virtualbase_childEvent(self.h, event.h)

proc cQSaveFile_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QSaveFilecustomEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QEvent): void =
  fcQSaveFile_virtualbase_customEvent(self.h, event.h)

proc cQSaveFile_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QSaveFileconnectNotify*(self: gen_qsavefile_types.QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSaveFile_virtualbase_connectNotify(self.h, signal.h)

proc cQSaveFile_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QSaveFiledisconnectNotify*(self: gen_qsavefile_types.QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSaveFile_virtualbase_disconnectNotify(self.h, signal.h)

proc cQSaveFile_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](fcQSaveFile_vdata(self))
  let self = QSaveFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSaveFile* {.inheritable.} = ref object of QSaveFile
  vtbl*: cQSaveFileVTable
method metaObject*(self: VirtualQSaveFile): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSaveFilemetaObject(self[])
proc cQSaveFile_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQSaveFile, param1: cstring): pointer {.base.} =
  QSaveFilemetacast(self[], param1)
proc cQSaveFile_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQSaveFile, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSaveFilemetacall(self[], param1, param2, param3)
proc cQSaveFile_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method fileName*(self: VirtualQSaveFile): string {.base.} =
  QSaveFilefileName(self[])
proc cQSaveFile_method_callback_fileName(self: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.fileName()
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method open*(self: VirtualQSaveFile, flags: cint): bool {.base.} =
  QSaveFileopen(self[], flags)
proc cQSaveFile_method_callback_open(self: pointer, flags: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = cint(flags)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method writeData*(self: VirtualQSaveFile, data: cstring, len: clonglong): clonglong {.base.} =
  QSaveFilewriteData(self[], data, len)
proc cQSaveFile_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

method isSequential*(self: VirtualQSaveFile): bool {.base.} =
  QSaveFileisSequential(self[])
proc cQSaveFile_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method pos*(self: VirtualQSaveFile): clonglong {.base.} =
  QSaveFilepos(self[])
proc cQSaveFile_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method seek*(self: VirtualQSaveFile, offset: clonglong): bool {.base.} =
  QSaveFileseek(self[], offset)
proc cQSaveFile_method_callback_seek(self: pointer, offset: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = offset
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method atEnd*(self: VirtualQSaveFile): bool {.base.} =
  QSaveFileatEnd(self[])
proc cQSaveFile_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method size*(self: VirtualQSaveFile): clonglong {.base.} =
  QSaveFilesize(self[])
proc cQSaveFile_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method resize*(self: VirtualQSaveFile, sz: clonglong): bool {.base.} =
  QSaveFileresize(self[], sz)
proc cQSaveFile_method_callback_resize(self: pointer, sz: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = sz
  var virtualReturn = inst.resize(slotval1)
  virtualReturn

method permissions*(self: VirtualQSaveFile): cint {.base.} =
  QSaveFilepermissions(self[])
proc cQSaveFile_method_callback_permissions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.permissions()
  cint(virtualReturn)

method setPermissions*(self: VirtualQSaveFile, permissionSpec: cint): bool {.base.} =
  QSaveFilesetPermissions(self[], permissionSpec)
proc cQSaveFile_method_callback_setPermissions(self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = cint(permissionSpec)
  var virtualReturn = inst.setPermissions(slotval1)
  virtualReturn

method readData*(self: VirtualQSaveFile, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QSaveFilereadData(self[], data, maxlen)
proc cQSaveFile_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

method readLineData*(self: VirtualQSaveFile, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QSaveFilereadLineData(self[], data, maxlen)
proc cQSaveFile_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method reset*(self: VirtualQSaveFile): bool {.base.} =
  QSaveFilereset(self[])
proc cQSaveFile_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method bytesAvailable*(self: VirtualQSaveFile): clonglong {.base.} =
  QSaveFilebytesAvailable(self[])
proc cQSaveFile_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQSaveFile): clonglong {.base.} =
  QSaveFilebytesToWrite(self[])
proc cQSaveFile_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method canReadLine*(self: VirtualQSaveFile): bool {.base.} =
  QSaveFilecanReadLine(self[])
proc cQSaveFile_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method waitForReadyRead*(self: VirtualQSaveFile, msecs: cint): bool {.base.} =
  QSaveFilewaitForReadyRead(self[], msecs)
proc cQSaveFile_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQSaveFile, msecs: cint): bool {.base.} =
  QSaveFilewaitForBytesWritten(self[], msecs)
proc cQSaveFile_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method event*(self: VirtualQSaveFile, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSaveFileevent(self[], event)
proc cQSaveFile_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQSaveFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSaveFileeventFilter(self[], watched, event)
proc cQSaveFile_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQSaveFile, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSaveFiletimerEvent(self[], event)
proc cQSaveFile_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQSaveFile, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSaveFilechildEvent(self[], event)
proc cQSaveFile_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQSaveFile, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSaveFilecustomEvent(self[], event)
proc cQSaveFile_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSaveFileconnectNotify(self[], signal)
proc cQSaveFile_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSaveFiledisconnectNotify(self[], signal)
proc cQSaveFile_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSaveFile](fcQSaveFile_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setOpenMode*(self: gen_qsavefile_types.QSaveFile, openMode: cint): void =
  fcQSaveFile_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qsavefile_types.QSaveFile, errorString: openArray[char]): void =
  fcQSaveFile_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qsavefile_types.QSaveFile): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSaveFile_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsavefile_types.QSaveFile): cint =
  fcQSaveFile_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsavefile_types.QSaveFile, signal: cstring): cint =
  fcQSaveFile_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsavefile_types.QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSaveFile_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsavefile_types.QSaveFile,
    name: openArray[char],
    vtbl: ref QSaveFileVTable = nil): gen_qsavefile_types.QSaveFile =
  let vtbl = if vtbl == nil: new QSaveFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSaveFileVTable](fcQSaveFile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSaveFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSaveFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSaveFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = cQSaveFile_vtable_callback_fileName
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQSaveFile_vtable_callback_open
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQSaveFile_vtable_callback_writeData
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQSaveFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQSaveFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQSaveFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQSaveFile_vtable_callback_atEnd
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQSaveFile_vtable_callback_size
  if not isNil(vtbl[].resize):
    vtbl[].vtbl.resize = cQSaveFile_vtable_callback_resize
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = cQSaveFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissions):
    vtbl[].vtbl.setPermissions = cQSaveFile_vtable_callback_setPermissions
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQSaveFile_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQSaveFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQSaveFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQSaveFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQSaveFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQSaveFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQSaveFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQSaveFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSaveFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSaveFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSaveFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSaveFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSaveFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSaveFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSaveFile_vtable_callback_disconnectNotify
  gen_qsavefile_types.QSaveFile(h: fcQSaveFile_new(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qsavefile_types.QSaveFile,
    vtbl: ref QSaveFileVTable = nil): gen_qsavefile_types.QSaveFile =
  let vtbl = if vtbl == nil: new QSaveFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSaveFileVTable](fcQSaveFile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSaveFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSaveFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSaveFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = cQSaveFile_vtable_callback_fileName
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQSaveFile_vtable_callback_open
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQSaveFile_vtable_callback_writeData
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQSaveFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQSaveFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQSaveFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQSaveFile_vtable_callback_atEnd
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQSaveFile_vtable_callback_size
  if not isNil(vtbl[].resize):
    vtbl[].vtbl.resize = cQSaveFile_vtable_callback_resize
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = cQSaveFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissions):
    vtbl[].vtbl.setPermissions = cQSaveFile_vtable_callback_setPermissions
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQSaveFile_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQSaveFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQSaveFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQSaveFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQSaveFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQSaveFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQSaveFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQSaveFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSaveFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSaveFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSaveFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSaveFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSaveFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSaveFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSaveFile_vtable_callback_disconnectNotify
  gen_qsavefile_types.QSaveFile(h: fcQSaveFile_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsavefile_types.QSaveFile,
    name: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QSaveFileVTable = nil): gen_qsavefile_types.QSaveFile =
  let vtbl = if vtbl == nil: new QSaveFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSaveFileVTable](fcQSaveFile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSaveFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSaveFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSaveFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = cQSaveFile_vtable_callback_fileName
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQSaveFile_vtable_callback_open
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQSaveFile_vtable_callback_writeData
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQSaveFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQSaveFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQSaveFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQSaveFile_vtable_callback_atEnd
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQSaveFile_vtable_callback_size
  if not isNil(vtbl[].resize):
    vtbl[].vtbl.resize = cQSaveFile_vtable_callback_resize
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = cQSaveFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissions):
    vtbl[].vtbl.setPermissions = cQSaveFile_vtable_callback_setPermissions
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQSaveFile_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQSaveFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQSaveFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQSaveFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQSaveFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQSaveFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQSaveFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQSaveFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSaveFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSaveFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSaveFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSaveFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSaveFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSaveFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSaveFile_vtable_callback_disconnectNotify
  gen_qsavefile_types.QSaveFile(h: fcQSaveFile_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), parent.h), owned: true)

proc create*(T: type gen_qsavefile_types.QSaveFile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSaveFileVTable = nil): gen_qsavefile_types.QSaveFile =
  let vtbl = if vtbl == nil: new QSaveFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSaveFileVTable](fcQSaveFile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQSaveFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQSaveFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQSaveFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = cQSaveFile_vtable_callback_fileName
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQSaveFile_vtable_callback_open
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQSaveFile_vtable_callback_writeData
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQSaveFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQSaveFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQSaveFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQSaveFile_vtable_callback_atEnd
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQSaveFile_vtable_callback_size
  if not isNil(vtbl[].resize):
    vtbl[].vtbl.resize = cQSaveFile_vtable_callback_resize
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = cQSaveFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissions):
    vtbl[].vtbl.setPermissions = cQSaveFile_vtable_callback_setPermissions
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQSaveFile_vtable_callback_readData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQSaveFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQSaveFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQSaveFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQSaveFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQSaveFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQSaveFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQSaveFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQSaveFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQSaveFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQSaveFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQSaveFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQSaveFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQSaveFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQSaveFile_vtable_callback_disconnectNotify
  gen_qsavefile_types.QSaveFile(h: fcQSaveFile_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSaveFile_mvtbl = cQSaveFileVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSaveFile()[])](self.fcQSaveFile_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQSaveFile_method_callback_metaObject,
  metacast: cQSaveFile_method_callback_metacast,
  metacall: cQSaveFile_method_callback_metacall,
  fileName: cQSaveFile_method_callback_fileName,
  open: cQSaveFile_method_callback_open,
  writeData: cQSaveFile_method_callback_writeData,
  isSequential: cQSaveFile_method_callback_isSequential,
  pos: cQSaveFile_method_callback_pos,
  seek: cQSaveFile_method_callback_seek,
  atEnd: cQSaveFile_method_callback_atEnd,
  size: cQSaveFile_method_callback_size,
  resize: cQSaveFile_method_callback_resize,
  permissions: cQSaveFile_method_callback_permissions,
  setPermissions: cQSaveFile_method_callback_setPermissions,
  readData: cQSaveFile_method_callback_readData,
  readLineData: cQSaveFile_method_callback_readLineData,
  reset: cQSaveFile_method_callback_reset,
  bytesAvailable: cQSaveFile_method_callback_bytesAvailable,
  bytesToWrite: cQSaveFile_method_callback_bytesToWrite,
  canReadLine: cQSaveFile_method_callback_canReadLine,
  waitForReadyRead: cQSaveFile_method_callback_waitForReadyRead,
  waitForBytesWritten: cQSaveFile_method_callback_waitForBytesWritten,
  event: cQSaveFile_method_callback_event,
  eventFilter: cQSaveFile_method_callback_eventFilter,
  timerEvent: cQSaveFile_method_callback_timerEvent,
  childEvent: cQSaveFile_method_callback_childEvent,
  customEvent: cQSaveFile_method_callback_customEvent,
  connectNotify: cQSaveFile_method_callback_connectNotify,
  disconnectNotify: cQSaveFile_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsavefile_types.QSaveFile,
    name: openArray[char],
    inst: VirtualQSaveFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSaveFile_new(addr(cQSaveFile_mvtbl), addr(inst[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))
  inst[].owned = true

proc create*(T: type gen_qsavefile_types.QSaveFile,
    inst: VirtualQSaveFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSaveFile_new2(addr(cQSaveFile_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsavefile_types.QSaveFile,
    name: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQSaveFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSaveFile_new3(addr(cQSaveFile_mvtbl), addr(inst[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), parent.h)
  inst[].owned = true

proc create*(T: type gen_qsavefile_types.QSaveFile,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSaveFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSaveFile_new4(addr(cQSaveFile_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsavefile_types.QSaveFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSaveFile_staticMetaObject())
