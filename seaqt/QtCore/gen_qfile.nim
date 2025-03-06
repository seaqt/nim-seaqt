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
{.compile("gen_qfile.cpp", cflags).}


import ./gen_qfile_types
export gen_qfile_types

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

type cQFile*{.exportc: "QFile", incompleteStruct.} = object

proc fcQFile_metaObject(self: pointer, ): pointer {.importc: "QFile_metaObject".}
proc fcQFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QFile_metacast".}
proc fcQFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFile_metacall".}
proc fcQFile_tr(s: cstring): struct_miqt_string {.importc: "QFile_tr".}
proc fcQFile_trUtf8(s: cstring): struct_miqt_string {.importc: "QFile_trUtf8".}
proc fcQFile_fileName(self: pointer, ): struct_miqt_string {.importc: "QFile_fileName".}
proc fcQFile_setFileName(self: pointer, name: struct_miqt_string): void {.importc: "QFile_setFileName".}
proc fcQFile_encodeName(fileName: struct_miqt_string): struct_miqt_string {.importc: "QFile_encodeName".}
proc fcQFile_decodeName(localFileName: struct_miqt_string): struct_miqt_string {.importc: "QFile_decodeName".}
proc fcQFile_decodeNameWithLocalFileName(localFileName: cstring): struct_miqt_string {.importc: "QFile_decodeNameWithLocalFileName".}
proc fcQFile_exists(self: pointer, ): bool {.importc: "QFile_exists".}
proc fcQFile_existsWithFileName(fileName: struct_miqt_string): bool {.importc: "QFile_existsWithFileName".}
proc fcQFile_readLink(self: pointer, ): struct_miqt_string {.importc: "QFile_readLink".}
proc fcQFile_readLinkWithFileName(fileName: struct_miqt_string): struct_miqt_string {.importc: "QFile_readLinkWithFileName".}
proc fcQFile_symLinkTarget(self: pointer, ): struct_miqt_string {.importc: "QFile_symLinkTarget".}
proc fcQFile_symLinkTargetWithFileName(fileName: struct_miqt_string): struct_miqt_string {.importc: "QFile_symLinkTargetWithFileName".}
proc fcQFile_remove(self: pointer, ): bool {.importc: "QFile_remove".}
proc fcQFile_removeWithFileName(fileName: struct_miqt_string): bool {.importc: "QFile_removeWithFileName".}
proc fcQFile_moveToTrash(self: pointer, ): bool {.importc: "QFile_moveToTrash".}
proc fcQFile_moveToTrashWithFileName(fileName: struct_miqt_string): bool {.importc: "QFile_moveToTrashWithFileName".}
proc fcQFile_rename(self: pointer, newName: struct_miqt_string): bool {.importc: "QFile_rename".}
proc fcQFile_rename2(oldName: struct_miqt_string, newName: struct_miqt_string): bool {.importc: "QFile_rename2".}
proc fcQFile_link(self: pointer, newName: struct_miqt_string): bool {.importc: "QFile_link".}
proc fcQFile_link2(oldname: struct_miqt_string, newName: struct_miqt_string): bool {.importc: "QFile_link2".}
proc fcQFile_copy(self: pointer, newName: struct_miqt_string): bool {.importc: "QFile_copy".}
proc fcQFile_copy2(fileName: struct_miqt_string, newName: struct_miqt_string): bool {.importc: "QFile_copy2".}
proc fcQFile_open(self: pointer, flags: cint): bool {.importc: "QFile_open".}
proc fcQFile_open3(self: pointer, fd: cint, ioFlags: cint): bool {.importc: "QFile_open3".}
proc fcQFile_size(self: pointer, ): clonglong {.importc: "QFile_size".}
proc fcQFile_resize(self: pointer, sz: clonglong): bool {.importc: "QFile_resize".}
proc fcQFile_resize2(filename: struct_miqt_string, sz: clonglong): bool {.importc: "QFile_resize2".}
proc fcQFile_permissions(self: pointer, ): cint {.importc: "QFile_permissions".}
proc fcQFile_permissionsWithFilename(filename: struct_miqt_string): cint {.importc: "QFile_permissionsWithFilename".}
proc fcQFile_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QFile_setPermissions".}
proc fcQFile_setPermissions2(filename: struct_miqt_string, permissionSpec: cint): bool {.importc: "QFile_setPermissions2".}
proc fcQFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFile_tr2".}
proc fcQFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFile_tr3".}
proc fcQFile_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFile_trUtf82".}
proc fcQFile_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFile_trUtf83".}
proc fcQFile_open33(self: pointer, fd: cint, ioFlags: cint, handleFlags: cint): bool {.importc: "QFile_open33".}
type cQFileVTable = object
  destructor*: proc(vtbl: ptr cQFileVTable, self: ptr cQFile) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  fileName*: proc(vtbl, self: pointer, ): struct_miqt_string {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, flags: cint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQFile_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QFile_virtualbase_metaObject".}
proc fcQFile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFile_virtualbase_metacast".}
proc fcQFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFile_virtualbase_metacall".}
proc fcQFile_virtualbase_fileName(self: pointer, ): struct_miqt_string {.importc: "QFile_virtualbase_fileName".}
proc fcQFile_virtualbase_open(self: pointer, flags: cint): bool {.importc: "QFile_virtualbase_open".}
proc fcQFile_virtualbase_size(self: pointer, ): clonglong {.importc: "QFile_virtualbase_size".}
proc fcQFile_virtualbase_resize(self: pointer, sz: clonglong): bool {.importc: "QFile_virtualbase_resize".}
proc fcQFile_virtualbase_permissions(self: pointer, ): cint {.importc: "QFile_virtualbase_permissions".}
proc fcQFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QFile_virtualbase_setPermissions".}
proc fcQFile_virtualbase_close(self: pointer, ): void {.importc: "QFile_virtualbase_close".}
proc fcQFile_virtualbase_isSequential(self: pointer, ): bool {.importc: "QFile_virtualbase_isSequential".}
proc fcQFile_virtualbase_pos(self: pointer, ): clonglong {.importc: "QFile_virtualbase_pos".}
proc fcQFile_virtualbase_seek(self: pointer, offset: clonglong): bool {.importc: "QFile_virtualbase_seek".}
proc fcQFile_virtualbase_atEnd(self: pointer, ): bool {.importc: "QFile_virtualbase_atEnd".}
proc fcQFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QFile_virtualbase_readData".}
proc fcQFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QFile_virtualbase_writeData".}
proc fcQFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QFile_virtualbase_readLineData".}
proc fcQFile_virtualbase_reset(self: pointer, ): bool {.importc: "QFile_virtualbase_reset".}
proc fcQFile_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QFile_virtualbase_bytesAvailable".}
proc fcQFile_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QFile_virtualbase_bytesToWrite".}
proc fcQFile_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QFile_virtualbase_canReadLine".}
proc fcQFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QFile_virtualbase_waitForReadyRead".}
proc fcQFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QFile_virtualbase_waitForBytesWritten".}
proc fcQFile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFile_virtualbase_event".}
proc fcQFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFile_virtualbase_eventFilter".}
proc fcQFile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFile_virtualbase_timerEvent".}
proc fcQFile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFile_virtualbase_childEvent".}
proc fcQFile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFile_virtualbase_customEvent".}
proc fcQFile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFile_virtualbase_connectNotify".}
proc fcQFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFile_virtualbase_disconnectNotify".}
proc fcQFile_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QFile_protectedbase_setOpenMode".}
proc fcQFile_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QFile_protectedbase_setErrorString".}
proc fcQFile_protectedbase_sender(self: pointer, ): pointer {.importc: "QFile_protectedbase_sender".}
proc fcQFile_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QFile_protectedbase_senderSignalIndex".}
proc fcQFile_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFile_protectedbase_receivers".}
proc fcQFile_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFile_protectedbase_isSignalConnected".}
proc fcQFile_new(vtbl: pointer, ): ptr cQFile {.importc: "QFile_new".}
proc fcQFile_new2(vtbl: pointer, name: struct_miqt_string): ptr cQFile {.importc: "QFile_new2".}
proc fcQFile_new3(vtbl: pointer, parent: pointer): ptr cQFile {.importc: "QFile_new3".}
proc fcQFile_new4(vtbl: pointer, name: struct_miqt_string, parent: pointer): ptr cQFile {.importc: "QFile_new4".}
proc fcQFile_staticMetaObject(): pointer {.importc: "QFile_staticMetaObject".}
proc fcQFile_delete(self: pointer) {.importc: "QFile_delete".}

proc metaObject*(self: gen_qfile_types.QFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFile_metaObject(self.h))

proc metacast*(self: gen_qfile_types.QFile, param1: cstring): pointer =
  fcQFile_metacast(self.h, param1)

proc metacall*(self: gen_qfile_types.QFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfile_types.QFile, s: cstring): string =
  let v_ms = fcQFile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfile_types.QFile, s: cstring): string =
  let v_ms = fcQFile_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qfile_types.QFile, ): string =
  let v_ms = fcQFile_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileName*(self: gen_qfile_types.QFile, name: string): void =
  fcQFile_setFileName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc encodeName*(_: type gen_qfile_types.QFile, fileName: string): seq[byte] =
  var v_bytearray = fcQFile_encodeName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc decodeName*(_: type gen_qfile_types.QFile, localFileName: seq[byte]): string =
  let v_ms = fcQFile_decodeName(struct_miqt_string(data: cast[cstring](if len(localFileName) == 0: nil else: unsafeAddr localFileName[0]), len: csize_t(len(localFileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc decodeName*(_: type gen_qfile_types.QFile, localFileName: cstring): string =
  let v_ms = fcQFile_decodeNameWithLocalFileName(localFileName)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exists*(self: gen_qfile_types.QFile, ): bool =
  fcQFile_exists(self.h)

proc exists*(_: type gen_qfile_types.QFile, fileName: string): bool =
  fcQFile_existsWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc readLink*(self: gen_qfile_types.QFile, ): string =
  let v_ms = fcQFile_readLink(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc readLink*(_: type gen_qfile_types.QFile, fileName: string): string =
  let v_ms = fcQFile_readLinkWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc symLinkTarget*(self: gen_qfile_types.QFile, ): string =
  let v_ms = fcQFile_symLinkTarget(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc symLinkTarget*(_: type gen_qfile_types.QFile, fileName: string): string =
  let v_ms = fcQFile_symLinkTargetWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc remove*(self: gen_qfile_types.QFile, ): bool =
  fcQFile_remove(self.h)

proc remove*(_: type gen_qfile_types.QFile, fileName: string): bool =
  fcQFile_removeWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc moveToTrash*(self: gen_qfile_types.QFile, ): bool =
  fcQFile_moveToTrash(self.h)

proc moveToTrash*(_: type gen_qfile_types.QFile, fileName: string): bool =
  fcQFile_moveToTrashWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc rename*(self: gen_qfile_types.QFile, newName: string): bool =
  fcQFile_rename(self.h, struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc rename*(_: type gen_qfile_types.QFile, oldName: string, newName: string): bool =
  fcQFile_rename2(struct_miqt_string(data: oldName, len: csize_t(len(oldName))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc link*(self: gen_qfile_types.QFile, newName: string): bool =
  fcQFile_link(self.h, struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc link*(_: type gen_qfile_types.QFile, oldname: string, newName: string): bool =
  fcQFile_link2(struct_miqt_string(data: oldname, len: csize_t(len(oldname))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc copy*(self: gen_qfile_types.QFile, newName: string): bool =
  fcQFile_copy(self.h, struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc copy*(_: type gen_qfile_types.QFile, fileName: string, newName: string): bool =
  fcQFile_copy2(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc open*(self: gen_qfile_types.QFile, flags: cint): bool =
  fcQFile_open(self.h, cint(flags))

proc open*(self: gen_qfile_types.QFile, fd: cint, ioFlags: cint): bool =
  fcQFile_open3(self.h, fd, cint(ioFlags))

proc size*(self: gen_qfile_types.QFile, ): clonglong =
  fcQFile_size(self.h)

proc resize*(self: gen_qfile_types.QFile, sz: clonglong): bool =
  fcQFile_resize(self.h, sz)

proc resize*(_: type gen_qfile_types.QFile, filename: string, sz: clonglong): bool =
  fcQFile_resize2(struct_miqt_string(data: filename, len: csize_t(len(filename))), sz)

proc permissions*(self: gen_qfile_types.QFile, ): cint =
  cint(fcQFile_permissions(self.h))

proc permissions*(_: type gen_qfile_types.QFile, filename: string): cint =
  cint(fcQFile_permissionsWithFilename(struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc setPermissions*(self: gen_qfile_types.QFile, permissionSpec: cint): bool =
  fcQFile_setPermissions(self.h, cint(permissionSpec))

proc setPermissions*(_: type gen_qfile_types.QFile, filename: string, permissionSpec: cint): bool =
  fcQFile_setPermissions2(struct_miqt_string(data: filename, len: csize_t(len(filename))), cint(permissionSpec))

proc tr*(_: type gen_qfile_types.QFile, s: cstring, c: cstring): string =
  let v_ms = fcQFile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfile_types.QFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfile_types.QFile, s: cstring, c: cstring): string =
  let v_ms = fcQFile_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qfile_types.QFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFile_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc open*(self: gen_qfile_types.QFile, fd: cint, ioFlags: cint, handleFlags: cint): bool =
  fcQFile_open33(self.h, fd, cint(ioFlags), cint(handleFlags))

type QFilemetaObjectProc* = proc(self: QFile): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFilemetacastProc* = proc(self: QFile, param1: cstring): pointer {.raises: [], gcsafe.}
type QFilemetacallProc* = proc(self: QFile, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFilefileNameProc* = proc(self: QFile): string {.raises: [], gcsafe.}
type QFileopenProc* = proc(self: QFile, flags: cint): bool {.raises: [], gcsafe.}
type QFilesizeProc* = proc(self: QFile): clonglong {.raises: [], gcsafe.}
type QFileresizeProc* = proc(self: QFile, sz: clonglong): bool {.raises: [], gcsafe.}
type QFilepermissionsProc* = proc(self: QFile): cint {.raises: [], gcsafe.}
type QFilesetPermissionsProc* = proc(self: QFile, permissionSpec: cint): bool {.raises: [], gcsafe.}
type QFilecloseProc* = proc(self: QFile): void {.raises: [], gcsafe.}
type QFileisSequentialProc* = proc(self: QFile): bool {.raises: [], gcsafe.}
type QFileposProc* = proc(self: QFile): clonglong {.raises: [], gcsafe.}
type QFileseekProc* = proc(self: QFile, offset: clonglong): bool {.raises: [], gcsafe.}
type QFileatEndProc* = proc(self: QFile): bool {.raises: [], gcsafe.}
type QFilereadDataProc* = proc(self: QFile, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QFilewriteDataProc* = proc(self: QFile, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QFilereadLineDataProc* = proc(self: QFile, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QFileresetProc* = proc(self: QFile): bool {.raises: [], gcsafe.}
type QFilebytesAvailableProc* = proc(self: QFile): clonglong {.raises: [], gcsafe.}
type QFilebytesToWriteProc* = proc(self: QFile): clonglong {.raises: [], gcsafe.}
type QFilecanReadLineProc* = proc(self: QFile): bool {.raises: [], gcsafe.}
type QFilewaitForReadyReadProc* = proc(self: QFile, msecs: cint): bool {.raises: [], gcsafe.}
type QFilewaitForBytesWrittenProc* = proc(self: QFile, msecs: cint): bool {.raises: [], gcsafe.}
type QFileeventProc* = proc(self: QFile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileeventFilterProc* = proc(self: QFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFiletimerEventProc* = proc(self: QFile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFilechildEventProc* = proc(self: QFile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFilecustomEventProc* = proc(self: QFile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileconnectNotifyProc* = proc(self: QFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFiledisconnectNotifyProc* = proc(self: QFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFileVTable* = object
  vtbl: cQFileVTable
  metaObject*: QFilemetaObjectProc
  metacast*: QFilemetacastProc
  metacall*: QFilemetacallProc
  fileName*: QFilefileNameProc
  open*: QFileopenProc
  size*: QFilesizeProc
  resize*: QFileresizeProc
  permissions*: QFilepermissionsProc
  setPermissions*: QFilesetPermissionsProc
  close*: QFilecloseProc
  isSequential*: QFileisSequentialProc
  pos*: QFileposProc
  seek*: QFileseekProc
  atEnd*: QFileatEndProc
  readData*: QFilereadDataProc
  writeData*: QFilewriteDataProc
  readLineData*: QFilereadLineDataProc
  reset*: QFileresetProc
  bytesAvailable*: QFilebytesAvailableProc
  bytesToWrite*: QFilebytesToWriteProc
  canReadLine*: QFilecanReadLineProc
  waitForReadyRead*: QFilewaitForReadyReadProc
  waitForBytesWritten*: QFilewaitForBytesWrittenProc
  event*: QFileeventProc
  eventFilter*: QFileeventFilterProc
  timerEvent*: QFiletimerEventProc
  childEvent*: QFilechildEventProc
  customEvent*: QFilecustomEventProc
  connectNotify*: QFileconnectNotifyProc
  disconnectNotify*: QFiledisconnectNotifyProc
proc QFilemetaObject*(self: gen_qfile_types.QFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFile_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQFile_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QFilemetacast*(self: gen_qfile_types.QFile, param1: cstring): pointer =
  fcQFile_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQFile_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFilemetacall*(self: gen_qfile_types.QFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQFile_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFilefileName*(self: gen_qfile_types.QFile, ): string =
  let v_ms = fcQFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQFile_fileName(vtbl: pointer, self: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].fileName(self)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc QFileopen*(self: gen_qfile_types.QFile, flags: cint): bool =
  fcQFile_virtualbase_open(self.h, cint(flags))

proc miqt_exec_callback_cQFile_open(vtbl: pointer, self: pointer, flags: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = cint(flags)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QFilesize*(self: gen_qfile_types.QFile, ): clonglong =
  fcQFile_virtualbase_size(self.h)

proc miqt_exec_callback_cQFile_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QFileresize*(self: gen_qfile_types.QFile, sz: clonglong): bool =
  fcQFile_virtualbase_resize(self.h, sz)

proc miqt_exec_callback_cQFile_resize(vtbl: pointer, self: pointer, sz: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = sz
  var virtualReturn = vtbl[].resize(self, slotval1)
  virtualReturn

proc QFilepermissions*(self: gen_qfile_types.QFile, ): cint =
  cint(fcQFile_virtualbase_permissions(self.h))

proc miqt_exec_callback_cQFile_permissions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].permissions(self)
  cint(virtualReturn)

proc QFilesetPermissions*(self: gen_qfile_types.QFile, permissionSpec: cint): bool =
  fcQFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

proc miqt_exec_callback_cQFile_setPermissions(vtbl: pointer, self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = cint(permissionSpec)
  var virtualReturn = vtbl[].setPermissions(self, slotval1)
  virtualReturn

proc QFileclose*(self: gen_qfile_types.QFile, ): void =
  fcQFile_virtualbase_close(self.h)

proc miqt_exec_callback_cQFile_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  vtbl[].close(self)

proc QFileisSequential*(self: gen_qfile_types.QFile, ): bool =
  fcQFile_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQFile_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QFilepos*(self: gen_qfile_types.QFile, ): clonglong =
  fcQFile_virtualbase_pos(self.h)

proc miqt_exec_callback_cQFile_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QFileseek*(self: gen_qfile_types.QFile, offset: clonglong): bool =
  fcQFile_virtualbase_seek(self.h, offset)

proc miqt_exec_callback_cQFile_seek(vtbl: pointer, self: pointer, offset: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = offset
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QFileatEnd*(self: gen_qfile_types.QFile, ): bool =
  fcQFile_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQFile_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QFilereadData*(self: gen_qfile_types.QFile, data: cstring, maxlen: clonglong): clonglong =
  fcQFile_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQFile_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QFilewriteData*(self: gen_qfile_types.QFile, data: cstring, len: clonglong): clonglong =
  fcQFile_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQFile_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QFilereadLineData*(self: gen_qfile_types.QFile, data: cstring, maxlen: clonglong): clonglong =
  fcQFile_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQFile_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QFilereset*(self: gen_qfile_types.QFile, ): bool =
  fcQFile_virtualbase_reset(self.h)

proc miqt_exec_callback_cQFile_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QFilebytesAvailable*(self: gen_qfile_types.QFile, ): clonglong =
  fcQFile_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQFile_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QFilebytesToWrite*(self: gen_qfile_types.QFile, ): clonglong =
  fcQFile_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQFile_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QFilecanReadLine*(self: gen_qfile_types.QFile, ): bool =
  fcQFile_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQFile_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QFilewaitForReadyRead*(self: gen_qfile_types.QFile, msecs: cint): bool =
  fcQFile_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQFile_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QFilewaitForBytesWritten*(self: gen_qfile_types.QFile, msecs: cint): bool =
  fcQFile_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQFile_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QFileevent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QEvent): bool =
  fcQFile_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQFile_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFileeventFilter*(self: gen_qfile_types.QFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQFile_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFiletimerEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFile_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQFile_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QFilechildEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFile_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQFile_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QFilecustomEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QEvent): void =
  fcQFile_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQFile_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QFileconnectNotify*(self: gen_qfile_types.QFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFile_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFile_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QFiledisconnectNotify*(self: gen_qfile_types.QFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFile_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQFile_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](vtbl)
  let self = QFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setOpenMode*(self: gen_qfile_types.QFile, openMode: cint): void =
  fcQFile_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qfile_types.QFile, errorString: string): void =
  fcQFile_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qfile_types.QFile, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFile_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qfile_types.QFile, ): cint =
  fcQFile_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfile_types.QFile, signal: cstring): cint =
  fcQFile_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfile_types.QFile, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFile_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfile_types.QFile,
    vtbl: ref QFileVTable = nil): gen_qfile_types.QFile =
  let vtbl = if vtbl == nil: new QFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileVTable, _: ptr cQFile) {.cdecl.} =
    let vtbl = cast[ref QFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQFile_fileName
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFile_open
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQFile_setPermissions
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQFile_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQFile_atEnd
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQFile_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQFile_writeData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQFile_waitForBytesWritten
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFile_disconnectNotify
  gen_qfile_types.QFile(h: fcQFile_new(addr(vtbl[]), ))

proc create*(T: type gen_qfile_types.QFile,
    name: string,
    vtbl: ref QFileVTable = nil): gen_qfile_types.QFile =
  let vtbl = if vtbl == nil: new QFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileVTable, _: ptr cQFile) {.cdecl.} =
    let vtbl = cast[ref QFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQFile_fileName
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFile_open
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQFile_setPermissions
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQFile_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQFile_atEnd
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQFile_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQFile_writeData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQFile_waitForBytesWritten
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFile_disconnectNotify
  gen_qfile_types.QFile(h: fcQFile_new2(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name)))))

proc create*(T: type gen_qfile_types.QFile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QFileVTable = nil): gen_qfile_types.QFile =
  let vtbl = if vtbl == nil: new QFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileVTable, _: ptr cQFile) {.cdecl.} =
    let vtbl = cast[ref QFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQFile_fileName
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFile_open
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQFile_setPermissions
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQFile_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQFile_atEnd
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQFile_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQFile_writeData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQFile_waitForBytesWritten
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFile_disconnectNotify
  gen_qfile_types.QFile(h: fcQFile_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qfile_types.QFile,
    name: string, parent: gen_qobject_types.QObject,
    vtbl: ref QFileVTable = nil): gen_qfile_types.QFile =
  let vtbl = if vtbl == nil: new QFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileVTable, _: ptr cQFile) {.cdecl.} =
    let vtbl = cast[ref QFileVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQFile_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQFile_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQFile_metacall
  if not isNil(vtbl.fileName):
    vtbl[].vtbl.fileName = miqt_exec_callback_cQFile_fileName
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQFile_open
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQFile_size
  if not isNil(vtbl.resize):
    vtbl[].vtbl.resize = miqt_exec_callback_cQFile_resize
  if not isNil(vtbl.permissions):
    vtbl[].vtbl.permissions = miqt_exec_callback_cQFile_permissions
  if not isNil(vtbl.setPermissions):
    vtbl[].vtbl.setPermissions = miqt_exec_callback_cQFile_setPermissions
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQFile_close
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQFile_isSequential
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQFile_pos
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQFile_seek
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQFile_atEnd
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQFile_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQFile_writeData
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQFile_readLineData
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQFile_reset
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQFile_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQFile_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQFile_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQFile_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQFile_waitForBytesWritten
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQFile_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQFile_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQFile_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQFile_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQFile_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQFile_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQFile_disconnectNotify
  gen_qfile_types.QFile(h: fcQFile_new4(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))

proc staticMetaObject*(_: type gen_qfile_types.QFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFile_staticMetaObject())
proc delete*(self: gen_qfile_types.QFile) =
  fcQFile_delete(self.h)
