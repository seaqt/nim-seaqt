import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qtemporaryfile.cpp", cflags).}


import ./gen_qtemporaryfile_types
export gen_qtemporaryfile_types

import
  ./gen_qcoreevent_types,
  ./gen_qfile,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qfile,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQTemporaryFile*{.exportc: "QTemporaryFile", incompleteStruct.} = object

proc fcQTemporaryFile_metaObject(self: pointer): pointer {.importc: "QTemporaryFile_metaObject".}
proc fcQTemporaryFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QTemporaryFile_metacast".}
proc fcQTemporaryFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTemporaryFile_metacall".}
proc fcQTemporaryFile_tr(s: cstring): struct_miqt_string {.importc: "QTemporaryFile_tr".}
proc fcQTemporaryFile_autoRemove(self: pointer): bool {.importc: "QTemporaryFile_autoRemove".}
proc fcQTemporaryFile_setAutoRemove(self: pointer, b: bool): void {.importc: "QTemporaryFile_setAutoRemove".}
proc fcQTemporaryFile_open(self: pointer): bool {.importc: "QTemporaryFile_open".}
proc fcQTemporaryFile_fileName(self: pointer): struct_miqt_string {.importc: "QTemporaryFile_fileName".}
proc fcQTemporaryFile_fileTemplate(self: pointer): struct_miqt_string {.importc: "QTemporaryFile_fileTemplate".}
proc fcQTemporaryFile_setFileTemplate(self: pointer, name: struct_miqt_string): void {.importc: "QTemporaryFile_setFileTemplate".}
proc fcQTemporaryFile_rename(self: pointer, newName: struct_miqt_string): bool {.importc: "QTemporaryFile_rename".}
proc fcQTemporaryFile_createNativeFile(fileName: struct_miqt_string): pointer {.importc: "QTemporaryFile_createNativeFile".}
proc fcQTemporaryFile_createNativeFileWithFile(file: pointer): pointer {.importc: "QTemporaryFile_createNativeFileWithFile".}
proc fcQTemporaryFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTemporaryFile_tr2".}
proc fcQTemporaryFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTemporaryFile_tr3".}
proc fcQTemporaryFile_vtbl(self: pointer): pointer {.importc: "QTemporaryFile_vtbl".}
proc fcQTemporaryFile_vdata(self: pointer): pointer {.importc: "QTemporaryFile_vdata".}
type cQTemporaryFileVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  fileName*: proc(self: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  openWithFlags*: proc(self: pointer, flags: cint): bool {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  resize*: proc(self: pointer, sz: clonglong): bool {.cdecl, raises: [], gcsafe.}
  permissions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setPermissions*: proc(self: pointer, permissionSpec: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, offset: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  skipData*: proc(self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTemporaryFile_virtualbase_metaObject(self: pointer): pointer {.importc: "QTemporaryFile_virtualbase_metaObject".}
proc fcQTemporaryFile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTemporaryFile_virtualbase_metacast".}
proc fcQTemporaryFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTemporaryFile_virtualbase_metacall".}
proc fcQTemporaryFile_virtualbase_fileName(self: pointer): struct_miqt_string {.importc: "QTemporaryFile_virtualbase_fileName".}
proc fcQTemporaryFile_virtualbase_openWithFlags(self: pointer, flags: cint): bool {.importc: "QTemporaryFile_virtualbase_openWithFlags".}
proc fcQTemporaryFile_virtualbase_size(self: pointer): clonglong {.importc: "QTemporaryFile_virtualbase_size".}
proc fcQTemporaryFile_virtualbase_resize(self: pointer, sz: clonglong): bool {.importc: "QTemporaryFile_virtualbase_resize".}
proc fcQTemporaryFile_virtualbase_permissions(self: pointer): cint {.importc: "QTemporaryFile_virtualbase_permissions".}
proc fcQTemporaryFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QTemporaryFile_virtualbase_setPermissions".}
proc fcQTemporaryFile_virtualbase_close(self: pointer): void {.importc: "QTemporaryFile_virtualbase_close".}
proc fcQTemporaryFile_virtualbase_isSequential(self: pointer): bool {.importc: "QTemporaryFile_virtualbase_isSequential".}
proc fcQTemporaryFile_virtualbase_pos(self: pointer): clonglong {.importc: "QTemporaryFile_virtualbase_pos".}
proc fcQTemporaryFile_virtualbase_seek(self: pointer, offset: clonglong): bool {.importc: "QTemporaryFile_virtualbase_seek".}
proc fcQTemporaryFile_virtualbase_atEnd(self: pointer): bool {.importc: "QTemporaryFile_virtualbase_atEnd".}
proc fcQTemporaryFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTemporaryFile_virtualbase_readData".}
proc fcQTemporaryFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QTemporaryFile_virtualbase_writeData".}
proc fcQTemporaryFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTemporaryFile_virtualbase_readLineData".}
proc fcQTemporaryFile_virtualbase_reset(self: pointer): bool {.importc: "QTemporaryFile_virtualbase_reset".}
proc fcQTemporaryFile_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QTemporaryFile_virtualbase_bytesAvailable".}
proc fcQTemporaryFile_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QTemporaryFile_virtualbase_bytesToWrite".}
proc fcQTemporaryFile_virtualbase_canReadLine(self: pointer): bool {.importc: "QTemporaryFile_virtualbase_canReadLine".}
proc fcQTemporaryFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QTemporaryFile_virtualbase_waitForReadyRead".}
proc fcQTemporaryFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QTemporaryFile_virtualbase_waitForBytesWritten".}
proc fcQTemporaryFile_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QTemporaryFile_virtualbase_skipData".}
proc fcQTemporaryFile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTemporaryFile_virtualbase_event".}
proc fcQTemporaryFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTemporaryFile_virtualbase_eventFilter".}
proc fcQTemporaryFile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTemporaryFile_virtualbase_timerEvent".}
proc fcQTemporaryFile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTemporaryFile_virtualbase_childEvent".}
proc fcQTemporaryFile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTemporaryFile_virtualbase_customEvent".}
proc fcQTemporaryFile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTemporaryFile_virtualbase_connectNotify".}
proc fcQTemporaryFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTemporaryFile_virtualbase_disconnectNotify".}
proc fcQTemporaryFile_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QTemporaryFile_protectedbase_setOpenMode".}
proc fcQTemporaryFile_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QTemporaryFile_protectedbase_setErrorString".}
proc fcQTemporaryFile_protectedbase_sender(self: pointer): pointer {.importc: "QTemporaryFile_protectedbase_sender".}
proc fcQTemporaryFile_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QTemporaryFile_protectedbase_senderSignalIndex".}
proc fcQTemporaryFile_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QTemporaryFile_protectedbase_receivers".}
proc fcQTemporaryFile_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QTemporaryFile_protectedbase_isSignalConnected".}
proc fcQTemporaryFile_new(vtbl, vdata: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new".}
proc fcQTemporaryFile_new2(vtbl, vdata: pointer, templateName: struct_miqt_string): ptr cQTemporaryFile {.importc: "QTemporaryFile_new2".}
proc fcQTemporaryFile_new3(vtbl, vdata: pointer, parent: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new3".}
proc fcQTemporaryFile_new4(vtbl, vdata: pointer, templateName: struct_miqt_string, parent: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new4".}
proc fcQTemporaryFile_staticMetaObject(): pointer {.importc: "QTemporaryFile_staticMetaObject".}

proc metaObject*(self: gen_qtemporaryfile_types.QTemporaryFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTemporaryFile_metaObject(self.h), owned: false)

proc metacast*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cstring): pointer =
  fcQTemporaryFile_metacast(self.h, param1)

proc metacall*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQTemporaryFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring): string =
  let v_ms = fcQTemporaryFile_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc autoRemove*(self: gen_qtemporaryfile_types.QTemporaryFile): bool =
  fcQTemporaryFile_autoRemove(self.h)

proc setAutoRemove*(self: gen_qtemporaryfile_types.QTemporaryFile, b: bool): void =
  fcQTemporaryFile_setAutoRemove(self.h, b)

proc open*(self: gen_qtemporaryfile_types.QTemporaryFile): bool =
  fcQTemporaryFile_open(self.h)

proc fileName*(self: gen_qtemporaryfile_types.QTemporaryFile): string =
  let v_ms = fcQTemporaryFile_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileTemplate*(self: gen_qtemporaryfile_types.QTemporaryFile): string =
  let v_ms = fcQTemporaryFile_fileTemplate(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFileTemplate*(self: gen_qtemporaryfile_types.QTemporaryFile, name: openArray[char]): void =
  fcQTemporaryFile_setFileTemplate(self.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc rename*(self: gen_qtemporaryfile_types.QTemporaryFile, newName: openArray[char]): bool =
  fcQTemporaryFile_rename(self.h, struct_miqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

proc createNativeFile*(_: type gen_qtemporaryfile_types.QTemporaryFile, fileName: openArray[char]): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_createNativeFile(struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: false)

proc createNativeFile*(_: type gen_qtemporaryfile_types.QTemporaryFile, file: gen_qfile_types.QFile): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_createNativeFileWithFile(file.h), owned: false)

proc tr*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring, c: cstring): string =
  let v_ms = fcQTemporaryFile_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTemporaryFile_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QTemporaryFilemetaObjectProc* = proc(self: QTemporaryFile): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QTemporaryFilemetacastProc* = proc(self: QTemporaryFile, param1: cstring): pointer {.raises: [], gcsafe.}
type QTemporaryFilemetacallProc* = proc(self: QTemporaryFile, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QTemporaryFilefileNameProc* = proc(self: QTemporaryFile): string {.raises: [], gcsafe.}
type QTemporaryFileopenWithFlagsProc* = proc(self: QTemporaryFile, flags: cint): bool {.raises: [], gcsafe.}
type QTemporaryFilesizeProc* = proc(self: QTemporaryFile): clonglong {.raises: [], gcsafe.}
type QTemporaryFileresizeProc* = proc(self: QTemporaryFile, sz: clonglong): bool {.raises: [], gcsafe.}
type QTemporaryFilepermissionsProc* = proc(self: QTemporaryFile): cint {.raises: [], gcsafe.}
type QTemporaryFilesetPermissionsProc* = proc(self: QTemporaryFile, permissionSpec: cint): bool {.raises: [], gcsafe.}
type QTemporaryFilecloseProc* = proc(self: QTemporaryFile): void {.raises: [], gcsafe.}
type QTemporaryFileisSequentialProc* = proc(self: QTemporaryFile): bool {.raises: [], gcsafe.}
type QTemporaryFileposProc* = proc(self: QTemporaryFile): clonglong {.raises: [], gcsafe.}
type QTemporaryFileseekProc* = proc(self: QTemporaryFile, offset: clonglong): bool {.raises: [], gcsafe.}
type QTemporaryFileatEndProc* = proc(self: QTemporaryFile): bool {.raises: [], gcsafe.}
type QTemporaryFilereadDataProc* = proc(self: QTemporaryFile, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QTemporaryFilewriteDataProc* = proc(self: QTemporaryFile, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QTemporaryFilereadLineDataProc* = proc(self: QTemporaryFile, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QTemporaryFileresetProc* = proc(self: QTemporaryFile): bool {.raises: [], gcsafe.}
type QTemporaryFilebytesAvailableProc* = proc(self: QTemporaryFile): clonglong {.raises: [], gcsafe.}
type QTemporaryFilebytesToWriteProc* = proc(self: QTemporaryFile): clonglong {.raises: [], gcsafe.}
type QTemporaryFilecanReadLineProc* = proc(self: QTemporaryFile): bool {.raises: [], gcsafe.}
type QTemporaryFilewaitForReadyReadProc* = proc(self: QTemporaryFile, msecs: cint): bool {.raises: [], gcsafe.}
type QTemporaryFilewaitForBytesWrittenProc* = proc(self: QTemporaryFile, msecs: cint): bool {.raises: [], gcsafe.}
type QTemporaryFileskipDataProc* = proc(self: QTemporaryFile, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QTemporaryFileeventProc* = proc(self: QTemporaryFile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTemporaryFileeventFilterProc* = proc(self: QTemporaryFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTemporaryFiletimerEventProc* = proc(self: QTemporaryFile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTemporaryFilechildEventProc* = proc(self: QTemporaryFile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTemporaryFilecustomEventProc* = proc(self: QTemporaryFile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTemporaryFileconnectNotifyProc* = proc(self: QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTemporaryFiledisconnectNotifyProc* = proc(self: QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTemporaryFileVTable* {.inheritable, pure.} = object
  vtbl: cQTemporaryFileVTable
  metaObject*: QTemporaryFilemetaObjectProc
  metacast*: QTemporaryFilemetacastProc
  metacall*: QTemporaryFilemetacallProc
  fileName*: QTemporaryFilefileNameProc
  openWithFlags*: QTemporaryFileopenWithFlagsProc
  size*: QTemporaryFilesizeProc
  resize*: QTemporaryFileresizeProc
  permissions*: QTemporaryFilepermissionsProc
  setPermissions*: QTemporaryFilesetPermissionsProc
  close*: QTemporaryFilecloseProc
  isSequential*: QTemporaryFileisSequentialProc
  pos*: QTemporaryFileposProc
  seek*: QTemporaryFileseekProc
  atEnd*: QTemporaryFileatEndProc
  readData*: QTemporaryFilereadDataProc
  writeData*: QTemporaryFilewriteDataProc
  readLineData*: QTemporaryFilereadLineDataProc
  reset*: QTemporaryFileresetProc
  bytesAvailable*: QTemporaryFilebytesAvailableProc
  bytesToWrite*: QTemporaryFilebytesToWriteProc
  canReadLine*: QTemporaryFilecanReadLineProc
  waitForReadyRead*: QTemporaryFilewaitForReadyReadProc
  waitForBytesWritten*: QTemporaryFilewaitForBytesWrittenProc
  skipData*: QTemporaryFileskipDataProc
  event*: QTemporaryFileeventProc
  eventFilter*: QTemporaryFileeventFilterProc
  timerEvent*: QTemporaryFiletimerEventProc
  childEvent*: QTemporaryFilechildEventProc
  customEvent*: QTemporaryFilecustomEventProc
  connectNotify*: QTemporaryFileconnectNotifyProc
  disconnectNotify*: QTemporaryFiledisconnectNotifyProc
proc QTemporaryFilemetaObject*(self: gen_qtemporaryfile_types.QTemporaryFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTemporaryFile_virtualbase_metaObject(self.h), owned: false)

proc cQTemporaryFile_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QTemporaryFilemetacast*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cstring): pointer =
  fcQTemporaryFile_virtualbase_metacast(self.h, param1)

proc cQTemporaryFile_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTemporaryFilemetacall*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQTemporaryFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQTemporaryFile_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTemporaryFilefileName*(self: gen_qtemporaryfile_types.QTemporaryFile): string =
  let v_ms = fcQTemporaryFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc cQTemporaryFile_vtable_callback_fileName(self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].fileName(self)
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc QTemporaryFileopen*(self: gen_qtemporaryfile_types.QTemporaryFile, flags: cint): bool =
  fcQTemporaryFile_virtualbase_openWithFlags(self.h, cint(flags))

proc cQTemporaryFile_vtable_callback_openWithFlags(self: pointer, flags: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = cint(flags)
  var virtualReturn = vtbl[].openWithFlags(self, slotval1)
  virtualReturn

proc QTemporaryFilesize*(self: gen_qtemporaryfile_types.QTemporaryFile): clonglong =
  fcQTemporaryFile_virtualbase_size(self.h)

proc cQTemporaryFile_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QTemporaryFileresize*(self: gen_qtemporaryfile_types.QTemporaryFile, sz: clonglong): bool =
  fcQTemporaryFile_virtualbase_resize(self.h, sz)

proc cQTemporaryFile_vtable_callback_resize(self: pointer, sz: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = sz
  var virtualReturn = vtbl[].resize(self, slotval1)
  virtualReturn

proc QTemporaryFilepermissions*(self: gen_qtemporaryfile_types.QTemporaryFile): cint =
  cint(fcQTemporaryFile_virtualbase_permissions(self.h))

proc cQTemporaryFile_vtable_callback_permissions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].permissions(self)
  cint(virtualReturn)

proc QTemporaryFilesetPermissions*(self: gen_qtemporaryfile_types.QTemporaryFile, permissionSpec: cint): bool =
  fcQTemporaryFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

proc cQTemporaryFile_vtable_callback_setPermissions(self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = cint(permissionSpec)
  var virtualReturn = vtbl[].setPermissions(self, slotval1)
  virtualReturn

proc QTemporaryFileclose*(self: gen_qtemporaryfile_types.QTemporaryFile): void =
  fcQTemporaryFile_virtualbase_close(self.h)

proc cQTemporaryFile_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  vtbl[].close(self)

proc QTemporaryFileisSequential*(self: gen_qtemporaryfile_types.QTemporaryFile): bool =
  fcQTemporaryFile_virtualbase_isSequential(self.h)

proc cQTemporaryFile_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QTemporaryFilepos*(self: gen_qtemporaryfile_types.QTemporaryFile): clonglong =
  fcQTemporaryFile_virtualbase_pos(self.h)

proc cQTemporaryFile_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QTemporaryFileseek*(self: gen_qtemporaryfile_types.QTemporaryFile, offset: clonglong): bool =
  fcQTemporaryFile_virtualbase_seek(self.h, offset)

proc cQTemporaryFile_vtable_callback_seek(self: pointer, offset: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = offset
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QTemporaryFileatEnd*(self: gen_qtemporaryfile_types.QTemporaryFile): bool =
  fcQTemporaryFile_virtualbase_atEnd(self.h)

proc cQTemporaryFile_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QTemporaryFilereadData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, maxlen: clonglong): clonglong =
  fcQTemporaryFile_virtualbase_readData(self.h, data, maxlen)

proc cQTemporaryFile_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QTemporaryFilewriteData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, len: clonglong): clonglong =
  fcQTemporaryFile_virtualbase_writeData(self.h, data, len)

proc cQTemporaryFile_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QTemporaryFilereadLineData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, maxlen: clonglong): clonglong =
  fcQTemporaryFile_virtualbase_readLineData(self.h, data, maxlen)

proc cQTemporaryFile_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QTemporaryFilereset*(self: gen_qtemporaryfile_types.QTemporaryFile): bool =
  fcQTemporaryFile_virtualbase_reset(self.h)

proc cQTemporaryFile_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QTemporaryFilebytesAvailable*(self: gen_qtemporaryfile_types.QTemporaryFile): clonglong =
  fcQTemporaryFile_virtualbase_bytesAvailable(self.h)

proc cQTemporaryFile_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QTemporaryFilebytesToWrite*(self: gen_qtemporaryfile_types.QTemporaryFile): clonglong =
  fcQTemporaryFile_virtualbase_bytesToWrite(self.h)

proc cQTemporaryFile_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QTemporaryFilecanReadLine*(self: gen_qtemporaryfile_types.QTemporaryFile): bool =
  fcQTemporaryFile_virtualbase_canReadLine(self.h)

proc cQTemporaryFile_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QTemporaryFilewaitForReadyRead*(self: gen_qtemporaryfile_types.QTemporaryFile, msecs: cint): bool =
  fcQTemporaryFile_virtualbase_waitForReadyRead(self.h, msecs)

proc cQTemporaryFile_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QTemporaryFilewaitForBytesWritten*(self: gen_qtemporaryfile_types.QTemporaryFile, msecs: cint): bool =
  fcQTemporaryFile_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQTemporaryFile_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QTemporaryFileskipData*(self: gen_qtemporaryfile_types.QTemporaryFile, maxSize: clonglong): clonglong =
  fcQTemporaryFile_virtualbase_skipData(self.h, maxSize)

proc cQTemporaryFile_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QTemporaryFileevent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QEvent): bool =
  fcQTemporaryFile_virtualbase_event(self.h, event.h)

proc cQTemporaryFile_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTemporaryFileeventFilter*(self: gen_qtemporaryfile_types.QTemporaryFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTemporaryFile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQTemporaryFile_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTemporaryFiletimerEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTemporaryFile_virtualbase_timerEvent(self.h, event.h)

proc cQTemporaryFile_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QTemporaryFilechildEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTemporaryFile_virtualbase_childEvent(self.h, event.h)

proc cQTemporaryFile_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QTemporaryFilecustomEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QEvent): void =
  fcQTemporaryFile_virtualbase_customEvent(self.h, event.h)

proc cQTemporaryFile_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QTemporaryFileconnectNotify*(self: gen_qtemporaryfile_types.QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTemporaryFile_virtualbase_connectNotify(self.h, signal.h)

proc cQTemporaryFile_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QTemporaryFiledisconnectNotify*(self: gen_qtemporaryfile_types.QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTemporaryFile_virtualbase_disconnectNotify(self.h, signal.h)

proc cQTemporaryFile_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQTemporaryFile* {.inheritable.} = ref object of QTemporaryFile
  vtbl*: cQTemporaryFileVTable
method metaObject*(self: VirtualQTemporaryFile): gen_qobjectdefs_types.QMetaObject {.base.} =
  QTemporaryFilemetaObject(self[])
proc cQTemporaryFile_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQTemporaryFile, param1: cstring): pointer {.base.} =
  QTemporaryFilemetacast(self[], param1)
proc cQTemporaryFile_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQTemporaryFile, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QTemporaryFilemetacall(self[], param1, param2, param3)
proc cQTemporaryFile_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method fileName*(self: VirtualQTemporaryFile): string {.base.} =
  QTemporaryFilefileName(self[])
proc cQTemporaryFile_method_callback_fileName(self: pointer): struct_miqt_string {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.fileName()
  var virtualReturn_copy = cast[cstring](if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil)
  if len(virtualReturn) > 0: copyMem(cast[pointer](virtualReturn_copy), addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_miqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

method open*(self: VirtualQTemporaryFile, flags: cint): bool {.base.} =
  QTemporaryFileopen(self[], flags)
proc cQTemporaryFile_method_callback_openWithFlags(self: pointer, flags: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = cint(flags)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method size*(self: VirtualQTemporaryFile): clonglong {.base.} =
  QTemporaryFilesize(self[])
proc cQTemporaryFile_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method resize*(self: VirtualQTemporaryFile, sz: clonglong): bool {.base.} =
  QTemporaryFileresize(self[], sz)
proc cQTemporaryFile_method_callback_resize(self: pointer, sz: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = sz
  var virtualReturn = inst.resize(slotval1)
  virtualReturn

method permissions*(self: VirtualQTemporaryFile): cint {.base.} =
  QTemporaryFilepermissions(self[])
proc cQTemporaryFile_method_callback_permissions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.permissions()
  cint(virtualReturn)

method setPermissions*(self: VirtualQTemporaryFile, permissionSpec: cint): bool {.base.} =
  QTemporaryFilesetPermissions(self[], permissionSpec)
proc cQTemporaryFile_method_callback_setPermissions(self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = cint(permissionSpec)
  var virtualReturn = inst.setPermissions(slotval1)
  virtualReturn

method close*(self: VirtualQTemporaryFile): void {.base.} =
  QTemporaryFileclose(self[])
proc cQTemporaryFile_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  inst.close()

method isSequential*(self: VirtualQTemporaryFile): bool {.base.} =
  QTemporaryFileisSequential(self[])
proc cQTemporaryFile_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method pos*(self: VirtualQTemporaryFile): clonglong {.base.} =
  QTemporaryFilepos(self[])
proc cQTemporaryFile_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method seek*(self: VirtualQTemporaryFile, offset: clonglong): bool {.base.} =
  QTemporaryFileseek(self[], offset)
proc cQTemporaryFile_method_callback_seek(self: pointer, offset: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = offset
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method atEnd*(self: VirtualQTemporaryFile): bool {.base.} =
  QTemporaryFileatEnd(self[])
proc cQTemporaryFile_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method readData*(self: VirtualQTemporaryFile, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QTemporaryFilereadData(self[], data, maxlen)
proc cQTemporaryFile_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

method writeData*(self: VirtualQTemporaryFile, data: cstring, len: clonglong): clonglong {.base.} =
  QTemporaryFilewriteData(self[], data, len)
proc cQTemporaryFile_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

method readLineData*(self: VirtualQTemporaryFile, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QTemporaryFilereadLineData(self[], data, maxlen)
proc cQTemporaryFile_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method reset*(self: VirtualQTemporaryFile): bool {.base.} =
  QTemporaryFilereset(self[])
proc cQTemporaryFile_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method bytesAvailable*(self: VirtualQTemporaryFile): clonglong {.base.} =
  QTemporaryFilebytesAvailable(self[])
proc cQTemporaryFile_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method bytesToWrite*(self: VirtualQTemporaryFile): clonglong {.base.} =
  QTemporaryFilebytesToWrite(self[])
proc cQTemporaryFile_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method canReadLine*(self: VirtualQTemporaryFile): bool {.base.} =
  QTemporaryFilecanReadLine(self[])
proc cQTemporaryFile_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method waitForReadyRead*(self: VirtualQTemporaryFile, msecs: cint): bool {.base.} =
  QTemporaryFilewaitForReadyRead(self[], msecs)
proc cQTemporaryFile_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQTemporaryFile, msecs: cint): bool {.base.} =
  QTemporaryFilewaitForBytesWritten(self[], msecs)
proc cQTemporaryFile_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method skipData*(self: VirtualQTemporaryFile, maxSize: clonglong): clonglong {.base.} =
  QTemporaryFileskipData(self[], maxSize)
proc cQTemporaryFile_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

method event*(self: VirtualQTemporaryFile, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTemporaryFileevent(self[], event)
proc cQTemporaryFile_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQTemporaryFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QTemporaryFileeventFilter(self[], watched, event)
proc cQTemporaryFile_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQTemporaryFile, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QTemporaryFiletimerEvent(self[], event)
proc cQTemporaryFile_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQTemporaryFile, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QTemporaryFilechildEvent(self[], event)
proc cQTemporaryFile_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQTemporaryFile, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QTemporaryFilecustomEvent(self[], event)
proc cQTemporaryFile_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTemporaryFileconnectNotify(self[], signal)
proc cQTemporaryFile_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QTemporaryFiledisconnectNotify(self[], signal)
proc cQTemporaryFile_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQTemporaryFile](fcQTemporaryFile_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setOpenMode*(self: gen_qtemporaryfile_types.QTemporaryFile, openMode: cint): void =
  fcQTemporaryFile_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qtemporaryfile_types.QTemporaryFile, errorString: openArray[char]): void =
  fcQTemporaryFile_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qtemporaryfile_types.QTemporaryFile): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQTemporaryFile_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qtemporaryfile_types.QTemporaryFile): cint =
  fcQTemporaryFile_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qtemporaryfile_types.QTemporaryFile, signal: cstring): cint =
  fcQTemporaryFile_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qtemporaryfile_types.QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQTemporaryFile_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    vtbl: ref QTemporaryFileVTable = nil): gen_qtemporaryfile_types.QTemporaryFile =
  let vtbl = if vtbl == nil: new QTemporaryFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTemporaryFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTemporaryFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTemporaryFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = cQTemporaryFile_vtable_callback_fileName
  if not isNil(vtbl[].openWithFlags):
    vtbl[].vtbl.openWithFlags = cQTemporaryFile_vtable_callback_openWithFlags
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQTemporaryFile_vtable_callback_size
  if not isNil(vtbl[].resize):
    vtbl[].vtbl.resize = cQTemporaryFile_vtable_callback_resize
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = cQTemporaryFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissions):
    vtbl[].vtbl.setPermissions = cQTemporaryFile_vtable_callback_setPermissions
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQTemporaryFile_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQTemporaryFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQTemporaryFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQTemporaryFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQTemporaryFile_vtable_callback_atEnd
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQTemporaryFile_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQTemporaryFile_vtable_callback_writeData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQTemporaryFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQTemporaryFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQTemporaryFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQTemporaryFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQTemporaryFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQTemporaryFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQTemporaryFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQTemporaryFile_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTemporaryFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTemporaryFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTemporaryFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTemporaryFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTemporaryFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTemporaryFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTemporaryFile_vtable_callback_disconnectNotify
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    templateName: openArray[char],
    vtbl: ref QTemporaryFileVTable = nil): gen_qtemporaryfile_types.QTemporaryFile =
  let vtbl = if vtbl == nil: new QTemporaryFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTemporaryFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTemporaryFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTemporaryFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = cQTemporaryFile_vtable_callback_fileName
  if not isNil(vtbl[].openWithFlags):
    vtbl[].vtbl.openWithFlags = cQTemporaryFile_vtable_callback_openWithFlags
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQTemporaryFile_vtable_callback_size
  if not isNil(vtbl[].resize):
    vtbl[].vtbl.resize = cQTemporaryFile_vtable_callback_resize
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = cQTemporaryFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissions):
    vtbl[].vtbl.setPermissions = cQTemporaryFile_vtable_callback_setPermissions
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQTemporaryFile_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQTemporaryFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQTemporaryFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQTemporaryFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQTemporaryFile_vtable_callback_atEnd
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQTemporaryFile_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQTemporaryFile_vtable_callback_writeData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQTemporaryFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQTemporaryFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQTemporaryFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQTemporaryFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQTemporaryFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQTemporaryFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQTemporaryFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQTemporaryFile_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTemporaryFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTemporaryFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTemporaryFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTemporaryFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTemporaryFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTemporaryFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTemporaryFile_vtable_callback_disconnectNotify
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(templateName) > 0: addr templateName[0] else: nil, len: csize_t(len(templateName)))), owned: true)

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTemporaryFileVTable = nil): gen_qtemporaryfile_types.QTemporaryFile =
  let vtbl = if vtbl == nil: new QTemporaryFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTemporaryFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTemporaryFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTemporaryFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = cQTemporaryFile_vtable_callback_fileName
  if not isNil(vtbl[].openWithFlags):
    vtbl[].vtbl.openWithFlags = cQTemporaryFile_vtable_callback_openWithFlags
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQTemporaryFile_vtable_callback_size
  if not isNil(vtbl[].resize):
    vtbl[].vtbl.resize = cQTemporaryFile_vtable_callback_resize
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = cQTemporaryFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissions):
    vtbl[].vtbl.setPermissions = cQTemporaryFile_vtable_callback_setPermissions
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQTemporaryFile_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQTemporaryFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQTemporaryFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQTemporaryFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQTemporaryFile_vtable_callback_atEnd
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQTemporaryFile_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQTemporaryFile_vtable_callback_writeData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQTemporaryFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQTemporaryFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQTemporaryFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQTemporaryFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQTemporaryFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQTemporaryFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQTemporaryFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQTemporaryFile_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTemporaryFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTemporaryFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTemporaryFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTemporaryFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTemporaryFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTemporaryFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTemporaryFile_vtable_callback_disconnectNotify
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    templateName: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QTemporaryFileVTable = nil): gen_qtemporaryfile_types.QTemporaryFile =
  let vtbl = if vtbl == nil: new QTemporaryFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QTemporaryFileVTable](fcQTemporaryFile_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQTemporaryFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQTemporaryFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQTemporaryFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = cQTemporaryFile_vtable_callback_fileName
  if not isNil(vtbl[].openWithFlags):
    vtbl[].vtbl.openWithFlags = cQTemporaryFile_vtable_callback_openWithFlags
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQTemporaryFile_vtable_callback_size
  if not isNil(vtbl[].resize):
    vtbl[].vtbl.resize = cQTemporaryFile_vtable_callback_resize
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = cQTemporaryFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissions):
    vtbl[].vtbl.setPermissions = cQTemporaryFile_vtable_callback_setPermissions
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQTemporaryFile_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQTemporaryFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQTemporaryFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQTemporaryFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQTemporaryFile_vtable_callback_atEnd
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = cQTemporaryFile_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = cQTemporaryFile_vtable_callback_writeData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQTemporaryFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQTemporaryFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQTemporaryFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQTemporaryFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQTemporaryFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQTemporaryFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQTemporaryFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQTemporaryFile_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQTemporaryFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQTemporaryFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQTemporaryFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQTemporaryFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQTemporaryFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQTemporaryFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQTemporaryFile_vtable_callback_disconnectNotify
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(templateName) > 0: addr templateName[0] else: nil, len: csize_t(len(templateName))), parent.h), owned: true)

const cQTemporaryFile_mvtbl = cQTemporaryFileVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQTemporaryFile()[])](self.fcQTemporaryFile_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQTemporaryFile_method_callback_metaObject,
  metacast: cQTemporaryFile_method_callback_metacast,
  metacall: cQTemporaryFile_method_callback_metacall,
  fileName: cQTemporaryFile_method_callback_fileName,
  openWithFlags: cQTemporaryFile_method_callback_openWithFlags,
  size: cQTemporaryFile_method_callback_size,
  resize: cQTemporaryFile_method_callback_resize,
  permissions: cQTemporaryFile_method_callback_permissions,
  setPermissions: cQTemporaryFile_method_callback_setPermissions,
  close: cQTemporaryFile_method_callback_close,
  isSequential: cQTemporaryFile_method_callback_isSequential,
  pos: cQTemporaryFile_method_callback_pos,
  seek: cQTemporaryFile_method_callback_seek,
  atEnd: cQTemporaryFile_method_callback_atEnd,
  readData: cQTemporaryFile_method_callback_readData,
  writeData: cQTemporaryFile_method_callback_writeData,
  readLineData: cQTemporaryFile_method_callback_readLineData,
  reset: cQTemporaryFile_method_callback_reset,
  bytesAvailable: cQTemporaryFile_method_callback_bytesAvailable,
  bytesToWrite: cQTemporaryFile_method_callback_bytesToWrite,
  canReadLine: cQTemporaryFile_method_callback_canReadLine,
  waitForReadyRead: cQTemporaryFile_method_callback_waitForReadyRead,
  waitForBytesWritten: cQTemporaryFile_method_callback_waitForBytesWritten,
  skipData: cQTemporaryFile_method_callback_skipData,
  event: cQTemporaryFile_method_callback_event,
  eventFilter: cQTemporaryFile_method_callback_eventFilter,
  timerEvent: cQTemporaryFile_method_callback_timerEvent,
  childEvent: cQTemporaryFile_method_callback_childEvent,
  customEvent: cQTemporaryFile_method_callback_customEvent,
  connectNotify: cQTemporaryFile_method_callback_connectNotify,
  disconnectNotify: cQTemporaryFile_method_callback_disconnectNotify,
)
proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    inst: VirtualQTemporaryFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTemporaryFile_new(addr(cQTemporaryFile_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    templateName: openArray[char],
    inst: VirtualQTemporaryFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTemporaryFile_new2(addr(cQTemporaryFile_mvtbl), addr(inst[]), struct_miqt_string(data: if len(templateName) > 0: addr templateName[0] else: nil, len: csize_t(len(templateName))))
  inst[].owned = true

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    parent: gen_qobject_types.QObject,
    inst: VirtualQTemporaryFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTemporaryFile_new3(addr(cQTemporaryFile_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    templateName: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQTemporaryFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQTemporaryFile_new4(addr(cQTemporaryFile_mvtbl), addr(inst[]), struct_miqt_string(data: if len(templateName) > 0: addr templateName[0] else: nil, len: csize_t(len(templateName))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qtemporaryfile_types.QTemporaryFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTemporaryFile_staticMetaObject())
