import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
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

proc fcQTemporaryFile_metaObject(self: pointer, ): pointer {.importc: "QTemporaryFile_metaObject".}
proc fcQTemporaryFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QTemporaryFile_metacast".}
proc fcQTemporaryFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTemporaryFile_metacall".}
proc fcQTemporaryFile_tr(s: cstring): struct_miqt_string {.importc: "QTemporaryFile_tr".}
proc fcQTemporaryFile_trUtf8(s: cstring): struct_miqt_string {.importc: "QTemporaryFile_trUtf8".}
proc fcQTemporaryFile_autoRemove(self: pointer, ): bool {.importc: "QTemporaryFile_autoRemove".}
proc fcQTemporaryFile_setAutoRemove(self: pointer, b: bool): void {.importc: "QTemporaryFile_setAutoRemove".}
proc fcQTemporaryFile_open(self: pointer, ): bool {.importc: "QTemporaryFile_open".}
proc fcQTemporaryFile_fileName(self: pointer, ): struct_miqt_string {.importc: "QTemporaryFile_fileName".}
proc fcQTemporaryFile_fileTemplate(self: pointer, ): struct_miqt_string {.importc: "QTemporaryFile_fileTemplate".}
proc fcQTemporaryFile_setFileTemplate(self: pointer, name: struct_miqt_string): void {.importc: "QTemporaryFile_setFileTemplate".}
proc fcQTemporaryFile_rename(self: pointer, newName: struct_miqt_string): bool {.importc: "QTemporaryFile_rename".}
proc fcQTemporaryFile_createLocalFile(fileName: struct_miqt_string): pointer {.importc: "QTemporaryFile_createLocalFile".}
proc fcQTemporaryFile_createLocalFileWithFile(file: pointer): pointer {.importc: "QTemporaryFile_createLocalFileWithFile".}
proc fcQTemporaryFile_createNativeFile(fileName: struct_miqt_string): pointer {.importc: "QTemporaryFile_createNativeFile".}
proc fcQTemporaryFile_createNativeFileWithFile(file: pointer): pointer {.importc: "QTemporaryFile_createNativeFileWithFile".}
proc fcQTemporaryFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTemporaryFile_tr2".}
proc fcQTemporaryFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTemporaryFile_tr3".}
proc fcQTemporaryFile_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTemporaryFile_trUtf82".}
proc fcQTemporaryFile_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTemporaryFile_trUtf83".}
type cQTemporaryFileVTable = object
  destructor*: proc(vtbl: ptr cQTemporaryFileVTable, self: ptr cQTemporaryFile) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  fileName*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  openWithFlags*: proc(vtbl, self: pointer, flags: cint): bool {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  resize*: proc(vtbl, self: pointer, sz: clonglong): bool {.cdecl, raises: [], gcsafe.}
  permissions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setPermissions*: proc(vtbl, self: pointer, permissionSpec: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(vtbl, self: pointer, offset: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(vtbl, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQTemporaryFile_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QTemporaryFile_virtualbase_metaObject".}
proc fcQTemporaryFile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QTemporaryFile_virtualbase_metacast".}
proc fcQTemporaryFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTemporaryFile_virtualbase_metacall".}
proc fcQTemporaryFile_virtualbase_fileName(self: pointer, ): struct_miqt_string {.importc: "QTemporaryFile_virtualbase_fileName".}
proc fcQTemporaryFile_virtualbase_openWithFlags(self: pointer, flags: cint): bool {.importc: "QTemporaryFile_virtualbase_openWithFlags".}
proc fcQTemporaryFile_virtualbase_size(self: pointer, ): clonglong {.importc: "QTemporaryFile_virtualbase_size".}
proc fcQTemporaryFile_virtualbase_resize(self: pointer, sz: clonglong): bool {.importc: "QTemporaryFile_virtualbase_resize".}
proc fcQTemporaryFile_virtualbase_permissions(self: pointer, ): cint {.importc: "QTemporaryFile_virtualbase_permissions".}
proc fcQTemporaryFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QTemporaryFile_virtualbase_setPermissions".}
proc fcQTemporaryFile_virtualbase_close(self: pointer, ): void {.importc: "QTemporaryFile_virtualbase_close".}
proc fcQTemporaryFile_virtualbase_isSequential(self: pointer, ): bool {.importc: "QTemporaryFile_virtualbase_isSequential".}
proc fcQTemporaryFile_virtualbase_pos(self: pointer, ): clonglong {.importc: "QTemporaryFile_virtualbase_pos".}
proc fcQTemporaryFile_virtualbase_seek(self: pointer, offset: clonglong): bool {.importc: "QTemporaryFile_virtualbase_seek".}
proc fcQTemporaryFile_virtualbase_atEnd(self: pointer, ): bool {.importc: "QTemporaryFile_virtualbase_atEnd".}
proc fcQTemporaryFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTemporaryFile_virtualbase_readData".}
proc fcQTemporaryFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QTemporaryFile_virtualbase_writeData".}
proc fcQTemporaryFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QTemporaryFile_virtualbase_readLineData".}
proc fcQTemporaryFile_virtualbase_reset(self: pointer, ): bool {.importc: "QTemporaryFile_virtualbase_reset".}
proc fcQTemporaryFile_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QTemporaryFile_virtualbase_bytesAvailable".}
proc fcQTemporaryFile_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QTemporaryFile_virtualbase_bytesToWrite".}
proc fcQTemporaryFile_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QTemporaryFile_virtualbase_canReadLine".}
proc fcQTemporaryFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QTemporaryFile_virtualbase_waitForReadyRead".}
proc fcQTemporaryFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QTemporaryFile_virtualbase_waitForBytesWritten".}
proc fcQTemporaryFile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QTemporaryFile_virtualbase_event".}
proc fcQTemporaryFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QTemporaryFile_virtualbase_eventFilter".}
proc fcQTemporaryFile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QTemporaryFile_virtualbase_timerEvent".}
proc fcQTemporaryFile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QTemporaryFile_virtualbase_childEvent".}
proc fcQTemporaryFile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QTemporaryFile_virtualbase_customEvent".}
proc fcQTemporaryFile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QTemporaryFile_virtualbase_connectNotify".}
proc fcQTemporaryFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QTemporaryFile_virtualbase_disconnectNotify".}
proc fcQTemporaryFile_new(vtbl: pointer, ): ptr cQTemporaryFile {.importc: "QTemporaryFile_new".}
proc fcQTemporaryFile_new2(vtbl: pointer, templateName: struct_miqt_string): ptr cQTemporaryFile {.importc: "QTemporaryFile_new2".}
proc fcQTemporaryFile_new3(vtbl: pointer, parent: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new3".}
proc fcQTemporaryFile_new4(vtbl: pointer, templateName: struct_miqt_string, parent: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new4".}
proc fcQTemporaryFile_staticMetaObject(): pointer {.importc: "QTemporaryFile_staticMetaObject".}
proc fcQTemporaryFile_delete(self: pointer) {.importc: "QTemporaryFile_delete".}

proc metaObject*(self: gen_qtemporaryfile_types.QTemporaryFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTemporaryFile_metaObject(self.h))

proc metacast*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cstring): pointer =
  fcQTemporaryFile_metacast(self.h, param1)

proc metacall*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQTemporaryFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring): string =
  let v_ms = fcQTemporaryFile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring): string =
  let v_ms = fcQTemporaryFile_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc autoRemove*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fcQTemporaryFile_autoRemove(self.h)

proc setAutoRemove*(self: gen_qtemporaryfile_types.QTemporaryFile, b: bool): void =
  fcQTemporaryFile_setAutoRemove(self.h, b)

proc open*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fcQTemporaryFile_open(self.h)

proc fileName*(self: gen_qtemporaryfile_types.QTemporaryFile, ): string =
  let v_ms = fcQTemporaryFile_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileTemplate*(self: gen_qtemporaryfile_types.QTemporaryFile, ): string =
  let v_ms = fcQTemporaryFile_fileTemplate(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileTemplate*(self: gen_qtemporaryfile_types.QTemporaryFile, name: string): void =
  fcQTemporaryFile_setFileTemplate(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc rename*(self: gen_qtemporaryfile_types.QTemporaryFile, newName: string): bool =
  fcQTemporaryFile_rename(self.h, struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc createLocalFile*(_: type gen_qtemporaryfile_types.QTemporaryFile, fileName: string): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_createLocalFile(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc createLocalFile*(_: type gen_qtemporaryfile_types.QTemporaryFile, file: gen_qfile_types.QFile): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_createLocalFileWithFile(file.h))

proc createNativeFile*(_: type gen_qtemporaryfile_types.QTemporaryFile, fileName: string): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_createNativeFile(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc createNativeFile*(_: type gen_qtemporaryfile_types.QTemporaryFile, file: gen_qfile_types.QFile): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_createNativeFileWithFile(file.h))

proc tr*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring, c: cstring): string =
  let v_ms = fcQTemporaryFile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTemporaryFile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring, c: cstring): string =
  let v_ms = fcQTemporaryFile_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qtemporaryfile_types.QTemporaryFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQTemporaryFile_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QTemporaryFileeventProc* = proc(self: QTemporaryFile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTemporaryFileeventFilterProc* = proc(self: QTemporaryFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QTemporaryFiletimerEventProc* = proc(self: QTemporaryFile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QTemporaryFilechildEventProc* = proc(self: QTemporaryFile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QTemporaryFilecustomEventProc* = proc(self: QTemporaryFile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QTemporaryFileconnectNotifyProc* = proc(self: QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTemporaryFiledisconnectNotifyProc* = proc(self: QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QTemporaryFileVTable* = object
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
  event*: QTemporaryFileeventProc
  eventFilter*: QTemporaryFileeventFilterProc
  timerEvent*: QTemporaryFiletimerEventProc
  childEvent*: QTemporaryFilechildEventProc
  customEvent*: QTemporaryFilecustomEventProc
  connectNotify*: QTemporaryFileconnectNotifyProc
  disconnectNotify*: QTemporaryFiledisconnectNotifyProc
proc QTemporaryFilemetaObject*(self: gen_qtemporaryfile_types.QTemporaryFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTemporaryFile_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQTemporaryFile_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QTemporaryFilemetacast*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cstring): pointer =
  fcQTemporaryFile_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQTemporaryFile_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QTemporaryFilemetacall*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQTemporaryFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQTemporaryFile_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QTemporaryFilefileName*(self: gen_qtemporaryfile_types.QTemporaryFile, ): string =
  let v_ms = fcQTemporaryFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQTemporaryFile_fileName(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].fileName(self)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QTemporaryFileopen*(self: gen_qtemporaryfile_types.QTemporaryFile, flags: cint): bool =
  fcQTemporaryFile_virtualbase_openWithFlags(self.h, cint(flags))

proc miqt_exec_callback_cQTemporaryFile_openWithFlags(vtbl: pointer, self: pointer, flags: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = cint(flags)
  var virtualReturn = vtbl[].openWithFlags(self, slotval1)
  virtualReturn

proc QTemporaryFilesize*(self: gen_qtemporaryfile_types.QTemporaryFile, ): clonglong =
  fcQTemporaryFile_virtualbase_size(self.h)

proc miqt_exec_callback_cQTemporaryFile_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QTemporaryFileresize*(self: gen_qtemporaryfile_types.QTemporaryFile, sz: clonglong): bool =
  fcQTemporaryFile_virtualbase_resize(self.h, sz)

proc miqt_exec_callback_cQTemporaryFile_resize(vtbl: pointer, self: pointer, sz: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = sz
  var virtualReturn = vtbl[].resize(self, slotval1)
  virtualReturn

proc QTemporaryFilepermissions*(self: gen_qtemporaryfile_types.QTemporaryFile, ): cint =
  cint(fcQTemporaryFile_virtualbase_permissions(self.h))

proc miqt_exec_callback_cQTemporaryFile_permissions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].permissions(self)
  cint(virtualReturn)

proc QTemporaryFilesetPermissions*(self: gen_qtemporaryfile_types.QTemporaryFile, permissionSpec: cint): bool =
  fcQTemporaryFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

proc miqt_exec_callback_cQTemporaryFile_setPermissions(vtbl: pointer, self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = cint(permissionSpec)
  var virtualReturn = vtbl[].setPermissions(self, slotval1)
  virtualReturn

proc QTemporaryFileclose*(self: gen_qtemporaryfile_types.QTemporaryFile, ): void =
  fcQTemporaryFile_virtualbase_close(self.h)

proc miqt_exec_callback_cQTemporaryFile_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  vtbl[].close(self)

proc QTemporaryFileisSequential*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fcQTemporaryFile_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQTemporaryFile_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QTemporaryFilepos*(self: gen_qtemporaryfile_types.QTemporaryFile, ): clonglong =
  fcQTemporaryFile_virtualbase_pos(self.h)

proc miqt_exec_callback_cQTemporaryFile_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QTemporaryFileseek*(self: gen_qtemporaryfile_types.QTemporaryFile, offset: clonglong): bool =
  fcQTemporaryFile_virtualbase_seek(self.h, offset)

proc miqt_exec_callback_cQTemporaryFile_seek(vtbl: pointer, self: pointer, offset: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = offset
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QTemporaryFileatEnd*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fcQTemporaryFile_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQTemporaryFile_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QTemporaryFilereadData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, maxlen: clonglong): clonglong =
  fcQTemporaryFile_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQTemporaryFile_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QTemporaryFilewriteData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, len: clonglong): clonglong =
  fcQTemporaryFile_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQTemporaryFile_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QTemporaryFilereadLineData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, maxlen: clonglong): clonglong =
  fcQTemporaryFile_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQTemporaryFile_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QTemporaryFilereset*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fcQTemporaryFile_virtualbase_reset(self.h)

proc miqt_exec_callback_cQTemporaryFile_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QTemporaryFilebytesAvailable*(self: gen_qtemporaryfile_types.QTemporaryFile, ): clonglong =
  fcQTemporaryFile_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQTemporaryFile_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QTemporaryFilebytesToWrite*(self: gen_qtemporaryfile_types.QTemporaryFile, ): clonglong =
  fcQTemporaryFile_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQTemporaryFile_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QTemporaryFilecanReadLine*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fcQTemporaryFile_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQTemporaryFile_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QTemporaryFilewaitForReadyRead*(self: gen_qtemporaryfile_types.QTemporaryFile, msecs: cint): bool =
  fcQTemporaryFile_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQTemporaryFile_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QTemporaryFilewaitForBytesWritten*(self: gen_qtemporaryfile_types.QTemporaryFile, msecs: cint): bool =
  fcQTemporaryFile_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQTemporaryFile_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QTemporaryFileevent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QEvent): bool =
  fcQTemporaryFile_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQTemporaryFile_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QTemporaryFileeventFilter*(self: gen_qtemporaryfile_types.QTemporaryFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQTemporaryFile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQTemporaryFile_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QTemporaryFiletimerEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQTemporaryFile_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQTemporaryFile_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QTemporaryFilechildEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQTemporaryFile_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQTemporaryFile_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QTemporaryFilecustomEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QEvent): void =
  fcQTemporaryFile_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQTemporaryFile_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QTemporaryFileconnectNotify*(self: gen_qtemporaryfile_types.QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTemporaryFile_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTemporaryFile_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QTemporaryFiledisconnectNotify*(self: gen_qtemporaryfile_types.QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQTemporaryFile_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQTemporaryFile_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QTemporaryFileVTable](vtbl)
  let self = QTemporaryFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    vtbl: ref QTemporaryFileVTable = nil): gen_qtemporaryfile_types.QTemporaryFile =
  let vtbl = if vtbl == nil: new QTemporaryFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTemporaryFileVTable, _: ptr cQTemporaryFile) {.cdecl.} =
    let vtbl = cast[ref QTemporaryFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTemporaryFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTemporaryFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTemporaryFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQTemporaryFile_fileName
  if not isNil(vtbl.openWithFlags):
    vtbl[].vtbl.openWithFlags = miqt_exec_callback_cQTemporaryFile_openWithFlags
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQTemporaryFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQTemporaryFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQTemporaryFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQTemporaryFile_setPermissions
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQTemporaryFile_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQTemporaryFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQTemporaryFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQTemporaryFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQTemporaryFile_atEnd
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQTemporaryFile_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQTemporaryFile_writeData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQTemporaryFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTemporaryFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQTemporaryFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQTemporaryFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQTemporaryFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQTemporaryFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQTemporaryFile_waitForBytesWritten
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTemporaryFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTemporaryFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTemporaryFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTemporaryFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTemporaryFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTemporaryFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTemporaryFile_disconnectNotify
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_new(addr(vtbl[]), ))

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    templateName: string,
    vtbl: ref QTemporaryFileVTable = nil): gen_qtemporaryfile_types.QTemporaryFile =
  let vtbl = if vtbl == nil: new QTemporaryFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTemporaryFileVTable, _: ptr cQTemporaryFile) {.cdecl.} =
    let vtbl = cast[ref QTemporaryFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTemporaryFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTemporaryFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTemporaryFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQTemporaryFile_fileName
  if not isNil(vtbl.openWithFlags):
    vtbl[].vtbl.openWithFlags = miqt_exec_callback_cQTemporaryFile_openWithFlags
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQTemporaryFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQTemporaryFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQTemporaryFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQTemporaryFile_setPermissions
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQTemporaryFile_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQTemporaryFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQTemporaryFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQTemporaryFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQTemporaryFile_atEnd
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQTemporaryFile_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQTemporaryFile_writeData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQTemporaryFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTemporaryFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQTemporaryFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQTemporaryFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQTemporaryFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQTemporaryFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQTemporaryFile_waitForBytesWritten
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTemporaryFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTemporaryFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTemporaryFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTemporaryFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTemporaryFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTemporaryFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTemporaryFile_disconnectNotify
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_new2(addr(vtbl[]), struct_miqt_string(data: templateName, len: csize_t(len(templateName)))))

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QTemporaryFileVTable = nil): gen_qtemporaryfile_types.QTemporaryFile =
  let vtbl = if vtbl == nil: new QTemporaryFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTemporaryFileVTable, _: ptr cQTemporaryFile) {.cdecl.} =
    let vtbl = cast[ref QTemporaryFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTemporaryFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTemporaryFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTemporaryFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQTemporaryFile_fileName
  if not isNil(vtbl.openWithFlags):
    vtbl[].vtbl.openWithFlags = miqt_exec_callback_cQTemporaryFile_openWithFlags
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQTemporaryFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQTemporaryFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQTemporaryFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQTemporaryFile_setPermissions
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQTemporaryFile_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQTemporaryFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQTemporaryFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQTemporaryFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQTemporaryFile_atEnd
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQTemporaryFile_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQTemporaryFile_writeData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQTemporaryFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTemporaryFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQTemporaryFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQTemporaryFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQTemporaryFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQTemporaryFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQTemporaryFile_waitForBytesWritten
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTemporaryFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTemporaryFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTemporaryFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTemporaryFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTemporaryFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTemporaryFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTemporaryFile_disconnectNotify
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile,
    templateName: string, parent: gen_qobject_types.QObject,
    vtbl: ref QTemporaryFileVTable = nil): gen_qtemporaryfile_types.QTemporaryFile =
  let vtbl = if vtbl == nil: new QTemporaryFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQTemporaryFileVTable, _: ptr cQTemporaryFile) {.cdecl.} =
    let vtbl = cast[ref QTemporaryFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQTemporaryFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQTemporaryFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQTemporaryFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQTemporaryFile_fileName
  if not isNil(vtbl.openWithFlags):
    vtbl[].vtbl.openWithFlags = miqt_exec_callback_cQTemporaryFile_openWithFlags
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQTemporaryFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQTemporaryFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQTemporaryFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQTemporaryFile_setPermissions
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQTemporaryFile_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQTemporaryFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQTemporaryFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQTemporaryFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQTemporaryFile_atEnd
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQTemporaryFile_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQTemporaryFile_writeData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQTemporaryFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQTemporaryFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQTemporaryFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQTemporaryFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQTemporaryFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQTemporaryFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQTemporaryFile_waitForBytesWritten
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQTemporaryFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQTemporaryFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQTemporaryFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQTemporaryFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQTemporaryFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQTemporaryFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQTemporaryFile_disconnectNotify
  gen_qtemporaryfile_types.QTemporaryFile(h: fcQTemporaryFile_new4(addr(vtbl[]), struct_miqt_string(data: templateName, len: csize_t(len(templateName))), parent.h))

proc staticMetaObject*(_: type gen_qtemporaryfile_types.QTemporaryFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTemporaryFile_staticMetaObject())
proc delete*(self: gen_qtemporaryfile_types.QTemporaryFile) =
  fcQTemporaryFile_delete(self.h)
