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

proc fcQSaveFile_metaObject(self: pointer, ): pointer {.importc: "QSaveFile_metaObject".}
proc fcQSaveFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QSaveFile_metacast".}
proc fcQSaveFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSaveFile_metacall".}
proc fcQSaveFile_tr(s: cstring): struct_miqt_string {.importc: "QSaveFile_tr".}
proc fcQSaveFile_fileName(self: pointer, ): struct_miqt_string {.importc: "QSaveFile_fileName".}
proc fcQSaveFile_setFileName(self: pointer, name: struct_miqt_string): void {.importc: "QSaveFile_setFileName".}
proc fcQSaveFile_open(self: pointer, flags: cint): bool {.importc: "QSaveFile_open".}
proc fcQSaveFile_commit(self: pointer, ): bool {.importc: "QSaveFile_commit".}
proc fcQSaveFile_cancelWriting(self: pointer, ): void {.importc: "QSaveFile_cancelWriting".}
proc fcQSaveFile_setDirectWriteFallback(self: pointer, enabled: bool): void {.importc: "QSaveFile_setDirectWriteFallback".}
proc fcQSaveFile_directWriteFallback(self: pointer, ): bool {.importc: "QSaveFile_directWriteFallback".}
proc fcQSaveFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSaveFile_tr2".}
proc fcQSaveFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSaveFile_tr3".}
type cQSaveFileVTable = object
  destructor*: proc(vtbl: ptr cQSaveFileVTable, self: ptr cQSaveFile) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  fileName*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, flags: cint): bool {.cdecl, raises: [], gcsafe.}
  writeData*: proc(vtbl, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(vtbl, self: pointer, offset: clonglong): bool {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  resize*: proc(vtbl, self: pointer, sz: clonglong): bool {.cdecl, raises: [], gcsafe.}
  permissions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setPermissions*: proc(vtbl, self: pointer, permissionSpec: cint): bool {.cdecl, raises: [], gcsafe.}
  readData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  skipData*: proc(vtbl, self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSaveFile_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSaveFile_virtualbase_metaObject".}
proc fcQSaveFile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSaveFile_virtualbase_metacast".}
proc fcQSaveFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSaveFile_virtualbase_metacall".}
proc fcQSaveFile_virtualbase_fileName(self: pointer, ): struct_miqt_string {.importc: "QSaveFile_virtualbase_fileName".}
proc fcQSaveFile_virtualbase_open(self: pointer, flags: cint): bool {.importc: "QSaveFile_virtualbase_open".}
proc fcQSaveFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QSaveFile_virtualbase_writeData".}
proc fcQSaveFile_virtualbase_isSequential(self: pointer, ): bool {.importc: "QSaveFile_virtualbase_isSequential".}
proc fcQSaveFile_virtualbase_pos(self: pointer, ): clonglong {.importc: "QSaveFile_virtualbase_pos".}
proc fcQSaveFile_virtualbase_seek(self: pointer, offset: clonglong): bool {.importc: "QSaveFile_virtualbase_seek".}
proc fcQSaveFile_virtualbase_atEnd(self: pointer, ): bool {.importc: "QSaveFile_virtualbase_atEnd".}
proc fcQSaveFile_virtualbase_size(self: pointer, ): clonglong {.importc: "QSaveFile_virtualbase_size".}
proc fcQSaveFile_virtualbase_resize(self: pointer, sz: clonglong): bool {.importc: "QSaveFile_virtualbase_resize".}
proc fcQSaveFile_virtualbase_permissions(self: pointer, ): cint {.importc: "QSaveFile_virtualbase_permissions".}
proc fcQSaveFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QSaveFile_virtualbase_setPermissions".}
proc fcQSaveFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSaveFile_virtualbase_readData".}
proc fcQSaveFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QSaveFile_virtualbase_readLineData".}
proc fcQSaveFile_virtualbase_reset(self: pointer, ): bool {.importc: "QSaveFile_virtualbase_reset".}
proc fcQSaveFile_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QSaveFile_virtualbase_bytesAvailable".}
proc fcQSaveFile_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QSaveFile_virtualbase_bytesToWrite".}
proc fcQSaveFile_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QSaveFile_virtualbase_canReadLine".}
proc fcQSaveFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QSaveFile_virtualbase_waitForReadyRead".}
proc fcQSaveFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QSaveFile_virtualbase_waitForBytesWritten".}
proc fcQSaveFile_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QSaveFile_virtualbase_skipData".}
proc fcQSaveFile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSaveFile_virtualbase_event".}
proc fcQSaveFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSaveFile_virtualbase_eventFilter".}
proc fcQSaveFile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSaveFile_virtualbase_timerEvent".}
proc fcQSaveFile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSaveFile_virtualbase_childEvent".}
proc fcQSaveFile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSaveFile_virtualbase_customEvent".}
proc fcQSaveFile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSaveFile_virtualbase_connectNotify".}
proc fcQSaveFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSaveFile_virtualbase_disconnectNotify".}
proc fcQSaveFile_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QSaveFile_protectedbase_setOpenMode".}
proc fcQSaveFile_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QSaveFile_protectedbase_setErrorString".}
proc fcQSaveFile_protectedbase_sender(self: pointer, ): pointer {.importc: "QSaveFile_protectedbase_sender".}
proc fcQSaveFile_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSaveFile_protectedbase_senderSignalIndex".}
proc fcQSaveFile_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSaveFile_protectedbase_receivers".}
proc fcQSaveFile_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSaveFile_protectedbase_isSignalConnected".}
proc fcQSaveFile_new(vtbl: pointer, name: struct_miqt_string): ptr cQSaveFile {.importc: "QSaveFile_new".}
proc fcQSaveFile_new2(vtbl: pointer, ): ptr cQSaveFile {.importc: "QSaveFile_new2".}
proc fcQSaveFile_new3(vtbl: pointer, name: struct_miqt_string, parent: pointer): ptr cQSaveFile {.importc: "QSaveFile_new3".}
proc fcQSaveFile_new4(vtbl: pointer, parent: pointer): ptr cQSaveFile {.importc: "QSaveFile_new4".}
proc fcQSaveFile_staticMetaObject(): pointer {.importc: "QSaveFile_staticMetaObject".}
proc fcQSaveFile_delete(self: pointer) {.importc: "QSaveFile_delete".}

proc metaObject*(self: gen_qsavefile_types.QSaveFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSaveFile_metaObject(self.h))

proc metacast*(self: gen_qsavefile_types.QSaveFile, param1: cstring): pointer =
  fcQSaveFile_metacast(self.h, param1)

proc metacall*(self: gen_qsavefile_types.QSaveFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQSaveFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsavefile_types.QSaveFile, s: cstring): string =
  let v_ms = fcQSaveFile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qsavefile_types.QSaveFile, ): string =
  let v_ms = fcQSaveFile_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileName*(self: gen_qsavefile_types.QSaveFile, name: string): void =
  fcQSaveFile_setFileName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc open*(self: gen_qsavefile_types.QSaveFile, flags: cint): bool =
  fcQSaveFile_open(self.h, cint(flags))

proc commit*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fcQSaveFile_commit(self.h)

proc cancelWriting*(self: gen_qsavefile_types.QSaveFile, ): void =
  fcQSaveFile_cancelWriting(self.h)

proc setDirectWriteFallback*(self: gen_qsavefile_types.QSaveFile, enabled: bool): void =
  fcQSaveFile_setDirectWriteFallback(self.h, enabled)

proc directWriteFallback*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fcQSaveFile_directWriteFallback(self.h)

proc tr*(_: type gen_qsavefile_types.QSaveFile, s: cstring, c: cstring): string =
  let v_ms = fcQSaveFile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsavefile_types.QSaveFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSaveFile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QSaveFileskipDataProc* = proc(self: QSaveFile, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QSaveFileeventProc* = proc(self: QSaveFile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSaveFileeventFilterProc* = proc(self: QSaveFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSaveFiletimerEventProc* = proc(self: QSaveFile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSaveFilechildEventProc* = proc(self: QSaveFile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSaveFilecustomEventProc* = proc(self: QSaveFile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSaveFileconnectNotifyProc* = proc(self: QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSaveFiledisconnectNotifyProc* = proc(self: QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSaveFileVTable* = object
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
  skipData*: QSaveFileskipDataProc
  event*: QSaveFileeventProc
  eventFilter*: QSaveFileeventFilterProc
  timerEvent*: QSaveFiletimerEventProc
  childEvent*: QSaveFilechildEventProc
  customEvent*: QSaveFilecustomEventProc
  connectNotify*: QSaveFileconnectNotifyProc
  disconnectNotify*: QSaveFiledisconnectNotifyProc
proc QSaveFilemetaObject*(self: gen_qsavefile_types.QSaveFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSaveFile_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSaveFile_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSaveFilemetacast*(self: gen_qsavefile_types.QSaveFile, param1: cstring): pointer =
  fcQSaveFile_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSaveFile_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSaveFilemetacall*(self: gen_qsavefile_types.QSaveFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQSaveFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSaveFile_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSaveFilefileName*(self: gen_qsavefile_types.QSaveFile, ): string =
  let v_ms = fcQSaveFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQSaveFile_fileName(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].fileName(self)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QSaveFileopen*(self: gen_qsavefile_types.QSaveFile, flags: cint): bool =
  fcQSaveFile_virtualbase_open(self.h, cint(flags))

proc miqt_exec_callback_cQSaveFile_open(vtbl: pointer, self: pointer, flags: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = cint(flags)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QSaveFilewriteData*(self: gen_qsavefile_types.QSaveFile, data: cstring, len: clonglong): clonglong =
  fcQSaveFile_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQSaveFile_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QSaveFileisSequential*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fcQSaveFile_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQSaveFile_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QSaveFilepos*(self: gen_qsavefile_types.QSaveFile, ): clonglong =
  fcQSaveFile_virtualbase_pos(self.h)

proc miqt_exec_callback_cQSaveFile_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QSaveFileseek*(self: gen_qsavefile_types.QSaveFile, offset: clonglong): bool =
  fcQSaveFile_virtualbase_seek(self.h, offset)

proc miqt_exec_callback_cQSaveFile_seek(vtbl: pointer, self: pointer, offset: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = offset
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QSaveFileatEnd*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fcQSaveFile_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQSaveFile_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QSaveFilesize*(self: gen_qsavefile_types.QSaveFile, ): clonglong =
  fcQSaveFile_virtualbase_size(self.h)

proc miqt_exec_callback_cQSaveFile_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QSaveFileresize*(self: gen_qsavefile_types.QSaveFile, sz: clonglong): bool =
  fcQSaveFile_virtualbase_resize(self.h, sz)

proc miqt_exec_callback_cQSaveFile_resize(vtbl: pointer, self: pointer, sz: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = sz
  var virtualReturn = vtbl[].resize(self, slotval1)
  virtualReturn

proc QSaveFilepermissions*(self: gen_qsavefile_types.QSaveFile, ): cint =
  cint(fcQSaveFile_virtualbase_permissions(self.h))

proc miqt_exec_callback_cQSaveFile_permissions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].permissions(self)
  cint(virtualReturn)

proc QSaveFilesetPermissions*(self: gen_qsavefile_types.QSaveFile, permissionSpec: cint): bool =
  fcQSaveFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

proc miqt_exec_callback_cQSaveFile_setPermissions(vtbl: pointer, self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = cint(permissionSpec)
  var virtualReturn = vtbl[].setPermissions(self, slotval1)
  virtualReturn

proc QSaveFilereadData*(self: gen_qsavefile_types.QSaveFile, data: cstring, maxlen: clonglong): clonglong =
  fcQSaveFile_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQSaveFile_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QSaveFilereadLineData*(self: gen_qsavefile_types.QSaveFile, data: cstring, maxlen: clonglong): clonglong =
  fcQSaveFile_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQSaveFile_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QSaveFilereset*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fcQSaveFile_virtualbase_reset(self.h)

proc miqt_exec_callback_cQSaveFile_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QSaveFilebytesAvailable*(self: gen_qsavefile_types.QSaveFile, ): clonglong =
  fcQSaveFile_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQSaveFile_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QSaveFilebytesToWrite*(self: gen_qsavefile_types.QSaveFile, ): clonglong =
  fcQSaveFile_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQSaveFile_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QSaveFilecanReadLine*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fcQSaveFile_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQSaveFile_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QSaveFilewaitForReadyRead*(self: gen_qsavefile_types.QSaveFile, msecs: cint): bool =
  fcQSaveFile_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQSaveFile_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QSaveFilewaitForBytesWritten*(self: gen_qsavefile_types.QSaveFile, msecs: cint): bool =
  fcQSaveFile_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQSaveFile_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QSaveFileskipData*(self: gen_qsavefile_types.QSaveFile, maxSize: clonglong): clonglong =
  fcQSaveFile_virtualbase_skipData(self.h, maxSize)

proc miqt_exec_callback_cQSaveFile_skipData(vtbl: pointer, self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QSaveFileevent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QEvent): bool =
  fcQSaveFile_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSaveFile_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSaveFileeventFilter*(self: gen_qsavefile_types.QSaveFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSaveFile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSaveFile_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSaveFiletimerEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSaveFile_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSaveFile_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSaveFilechildEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSaveFile_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSaveFile_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSaveFilecustomEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QEvent): void =
  fcQSaveFile_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSaveFile_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSaveFileconnectNotify*(self: gen_qsavefile_types.QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSaveFile_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSaveFile_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSaveFiledisconnectNotify*(self: gen_qsavefile_types.QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSaveFile_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSaveFile_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSaveFileVTable](vtbl)
  let self = QSaveFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setOpenMode*(self: gen_qsavefile_types.QSaveFile, openMode: cint): void =
  fcQSaveFile_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qsavefile_types.QSaveFile, errorString: string): void =
  fcQSaveFile_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qsavefile_types.QSaveFile, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSaveFile_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsavefile_types.QSaveFile, ): cint =
  fcQSaveFile_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsavefile_types.QSaveFile, signal: cstring): cint =
  fcQSaveFile_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsavefile_types.QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSaveFile_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsavefile_types.QSaveFile,
    name: string,
    vtbl: ref QSaveFileVTable = nil): gen_qsavefile_types.QSaveFile =
  let vtbl = if vtbl == nil: new QSaveFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSaveFileVTable, _: ptr cQSaveFile) {.cdecl.} =
    let vtbl = cast[ref QSaveFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSaveFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSaveFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSaveFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQSaveFile_fileName
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQSaveFile_open
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQSaveFile_writeData
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQSaveFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQSaveFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQSaveFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQSaveFile_atEnd
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQSaveFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQSaveFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQSaveFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQSaveFile_setPermissions
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQSaveFile_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQSaveFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQSaveFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQSaveFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQSaveFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQSaveFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQSaveFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQSaveFile_waitForBytesWritten
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQSaveFile_skipData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSaveFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSaveFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSaveFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSaveFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSaveFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSaveFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSaveFile_disconnectNotify
  gen_qsavefile_types.QSaveFile(h: fcQSaveFile_new(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name)))))

proc create*(T: type gen_qsavefile_types.QSaveFile,
    vtbl: ref QSaveFileVTable = nil): gen_qsavefile_types.QSaveFile =
  let vtbl = if vtbl == nil: new QSaveFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSaveFileVTable, _: ptr cQSaveFile) {.cdecl.} =
    let vtbl = cast[ref QSaveFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSaveFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSaveFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSaveFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQSaveFile_fileName
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQSaveFile_open
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQSaveFile_writeData
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQSaveFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQSaveFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQSaveFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQSaveFile_atEnd
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQSaveFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQSaveFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQSaveFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQSaveFile_setPermissions
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQSaveFile_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQSaveFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQSaveFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQSaveFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQSaveFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQSaveFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQSaveFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQSaveFile_waitForBytesWritten
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQSaveFile_skipData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSaveFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSaveFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSaveFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSaveFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSaveFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSaveFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSaveFile_disconnectNotify
  gen_qsavefile_types.QSaveFile(h: fcQSaveFile_new2(addr(vtbl[]), ))

proc create*(T: type gen_qsavefile_types.QSaveFile,
    name: string, parent: gen_qobject_types.QObject,
    vtbl: ref QSaveFileVTable = nil): gen_qsavefile_types.QSaveFile =
  let vtbl = if vtbl == nil: new QSaveFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSaveFileVTable, _: ptr cQSaveFile) {.cdecl.} =
    let vtbl = cast[ref QSaveFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSaveFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSaveFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSaveFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQSaveFile_fileName
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQSaveFile_open
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQSaveFile_writeData
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQSaveFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQSaveFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQSaveFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQSaveFile_atEnd
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQSaveFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQSaveFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQSaveFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQSaveFile_setPermissions
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQSaveFile_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQSaveFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQSaveFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQSaveFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQSaveFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQSaveFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQSaveFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQSaveFile_waitForBytesWritten
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQSaveFile_skipData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSaveFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSaveFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSaveFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSaveFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSaveFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSaveFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSaveFile_disconnectNotify
  gen_qsavefile_types.QSaveFile(h: fcQSaveFile_new3(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))

proc create*(T: type gen_qsavefile_types.QSaveFile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSaveFileVTable = nil): gen_qsavefile_types.QSaveFile =
  let vtbl = if vtbl == nil: new QSaveFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSaveFileVTable, _: ptr cQSaveFile) {.cdecl.} =
    let vtbl = cast[ref QSaveFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSaveFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSaveFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSaveFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQSaveFile_fileName
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQSaveFile_open
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQSaveFile_writeData
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQSaveFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQSaveFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQSaveFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQSaveFile_atEnd
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQSaveFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQSaveFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQSaveFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQSaveFile_setPermissions
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQSaveFile_readData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQSaveFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQSaveFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQSaveFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQSaveFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQSaveFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQSaveFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQSaveFile_waitForBytesWritten
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQSaveFile_skipData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSaveFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSaveFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSaveFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSaveFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSaveFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSaveFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSaveFile_disconnectNotify
  gen_qsavefile_types.QSaveFile(h: fcQSaveFile_new4(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qsavefile_types.QSaveFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSaveFile_staticMetaObject())
proc delete*(self: gen_qsavefile_types.QSaveFile) =
  fcQSaveFile_delete(self.h)
