import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qfile.cpp", QtCoreCFlags).}


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

proc fcQFile_metaObject(self: pointer): pointer {.importc: "QFile_metaObject".}
proc fcQFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QFile_metacast".}
proc fcQFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFile_metacall".}
proc fcQFile_trS(s: cstring): struct_seaqt_string {.importc: "QFile_tr_s".}
proc fcQFile_fileName(self: pointer): struct_seaqt_string {.importc: "QFile_fileName".}
proc fcQFile_setFileName(self: pointer, name: struct_seaqt_string): void {.importc: "QFile_setFileName".}
proc fcQFile_encodeName(fileName: struct_seaqt_string): struct_seaqt_string {.importc: "QFile_encodeName".}
proc fcQFile_decodeName_QByteArray(localFileName: struct_seaqt_string): struct_seaqt_string {.importc: "QFile_decodeName_QByteArray".}
proc fcQFile_decodeNameChar(localFileName: cstring): struct_seaqt_string {.importc: "QFile_decodeName_char".}
proc fcQFile_exists(self: pointer): bool {.importc: "QFile_exists".}
proc fcQFile_existsFileName(fileName: struct_seaqt_string): bool {.importc: "QFile_exists_fileName".}
proc fcQFile_symLinkTarget(self: pointer): struct_seaqt_string {.importc: "QFile_symLinkTarget".}
proc fcQFile_symLinkTargetFileName(fileName: struct_seaqt_string): struct_seaqt_string {.importc: "QFile_symLinkTarget_fileName".}
proc fcQFile_remove(self: pointer): bool {.importc: "QFile_remove".}
proc fcQFile_removeFileName(fileName: struct_seaqt_string): bool {.importc: "QFile_remove_fileName".}
proc fcQFile_supportsMoveToTrash(): bool {.importc: "QFile_supportsMoveToTrash".}
proc fcQFile_moveToTrash(self: pointer): bool {.importc: "QFile_moveToTrash".}
proc fcQFile_moveToTrashFileName(fileName: struct_seaqt_string): bool {.importc: "QFile_moveToTrash_fileName".}
proc fcQFile_renameNewName(self: pointer, newName: struct_seaqt_string): bool {.importc: "QFile_rename_newName".}
proc fcQFile_renameOldNameNewName(oldName: struct_seaqt_string, newName: struct_seaqt_string): bool {.importc: "QFile_rename_oldName_newName".}
proc fcQFile_linkNewName(self: pointer, newName: struct_seaqt_string): bool {.importc: "QFile_link_newName".}
proc fcQFile_linkFileNameNewName(fileName: struct_seaqt_string, newName: struct_seaqt_string): bool {.importc: "QFile_link_fileName_newName".}
proc fcQFile_copyNewName(self: pointer, newName: struct_seaqt_string): bool {.importc: "QFile_copy_newName".}
proc fcQFile_copyFileNameNewName(fileName: struct_seaqt_string, newName: struct_seaqt_string): bool {.importc: "QFile_copy_fileName_newName".}
proc fcQFile_openFlags(self: pointer, flags: cint): bool {.importc: "QFile_open_flags".}
proc fcQFile_openFlagsPermissions(self: pointer, flags: cint, permissions: cint): bool {.importc: "QFile_open_flags_permissions".}
proc fcQFile_openFdIoFlags(self: pointer, fd: cint, ioFlags: cint): bool {.importc: "QFile_open_fd_ioFlags".}
proc fcQFile_size(self: pointer): clonglong {.importc: "QFile_size".}
proc fcQFile_resizeSz(self: pointer, sz: clonglong): bool {.importc: "QFile_resize_sz".}
proc fcQFile_resizeFilenameSz(filename: struct_seaqt_string, sz: clonglong): bool {.importc: "QFile_resize_filename_sz".}
proc fcQFile_permissions(self: pointer): cint {.importc: "QFile_permissions".}
proc fcQFile_permissionsFilename(filename: struct_seaqt_string): cint {.importc: "QFile_permissions_filename".}
proc fcQFile_setPermissionsPermissionSpec(self: pointer, permissionSpec: cint): bool {.importc: "QFile_setPermissions_permissionSpec".}
proc fcQFile_setPermissionsFilenamePermissionSpec(filename: struct_seaqt_string, permissionSpec: cint): bool {.importc: "QFile_setPermissions_filename_permissionSpec".}
proc fcQFile_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QFile_tr_s_c".}
proc fcQFile_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QFile_tr_s_c_n".}
proc fcQFile_openFdIoFlagsHandleFlags(self: pointer, fd: cint, ioFlags: cint, handleFlags: cint): bool {.importc: "QFile_open_fd_ioFlags_handleFlags".}
proc fcQFile_vdata(self: pointer): ptr pointer {.importc: "QFile_vdata".}
proc fvdata_cQFile(self: pointer): pointer {.importc: "vdata_QFile".}

type cQFileVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  fileName*: proc(self: pointer): struct_seaqt_string {.cdecl, raises: [], gcsafe.}
  openFlags*: proc(self: pointer, flags: cint): bool {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  resizeSz*: proc(self: pointer, sz: clonglong): bool {.cdecl, raises: [], gcsafe.}
  permissions*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setPermissionsPermissionSpec*: proc(self: pointer, permissionSpec: cint): bool {.cdecl, raises: [], gcsafe.}
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
proc fcQFile_virtualbase_metaObject(self: pointer): pointer {.importc: "QFile_virtualbase_metaObject".}
proc fcQFile_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFile_virtualbase_metacast".}
proc fcQFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFile_virtualbase_metacall".}
proc fcQFile_virtualbase_fileName(self: pointer): struct_seaqt_string {.importc: "QFile_virtualbase_fileName".}
proc fcQFile_virtualbase_openFlags(self: pointer, flags: cint): bool {.importc: "QFile_virtualbase_open_flags".}
proc fcQFile_virtualbase_size(self: pointer): clonglong {.importc: "QFile_virtualbase_size".}
proc fcQFile_virtualbase_resizeSz(self: pointer, sz: clonglong): bool {.importc: "QFile_virtualbase_resize_sz".}
proc fcQFile_virtualbase_permissions(self: pointer): cint {.importc: "QFile_virtualbase_permissions".}
proc fcQFile_virtualbase_setPermissionsPermissionSpec(self: pointer, permissionSpec: cint): bool {.importc: "QFile_virtualbase_setPermissions_permissionSpec".}
proc fcQFile_virtualbase_close(self: pointer): void {.importc: "QFile_virtualbase_close".}
proc fcQFile_virtualbase_isSequential(self: pointer): bool {.importc: "QFile_virtualbase_isSequential".}
proc fcQFile_virtualbase_pos(self: pointer): clonglong {.importc: "QFile_virtualbase_pos".}
proc fcQFile_virtualbase_seek(self: pointer, offset: clonglong): bool {.importc: "QFile_virtualbase_seek".}
proc fcQFile_virtualbase_atEnd(self: pointer): bool {.importc: "QFile_virtualbase_atEnd".}
proc fcQFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QFile_virtualbase_readData".}
proc fcQFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QFile_virtualbase_writeData".}
proc fcQFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QFile_virtualbase_readLineData".}
proc fcQFile_virtualbase_reset(self: pointer): bool {.importc: "QFile_virtualbase_reset".}
proc fcQFile_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QFile_virtualbase_bytesAvailable".}
proc fcQFile_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QFile_virtualbase_bytesToWrite".}
proc fcQFile_virtualbase_canReadLine(self: pointer): bool {.importc: "QFile_virtualbase_canReadLine".}
proc fcQFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QFile_virtualbase_waitForReadyRead".}
proc fcQFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QFile_virtualbase_waitForBytesWritten".}
proc fcQFile_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QFile_virtualbase_skipData".}
proc fcQFile_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFile_virtualbase_event".}
proc fcQFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFile_virtualbase_eventFilter".}
proc fcQFile_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFile_virtualbase_timerEvent".}
proc fcQFile_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QFile_virtualbase_childEvent".}
proc fcQFile_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFile_virtualbase_customEvent".}
proc fcQFile_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFile_virtualbase_connectNotify".}
proc fcQFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFile_virtualbase_disconnectNotify".}
proc fcQFile_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QFile_protectedbase_setOpenMode".}
proc fcQFile_protectedbase_setErrorString(self: pointer, errorString: struct_seaqt_string): void {.importc: "QFile_protectedbase_setErrorString".}
proc fcQFile_protectedbase_sender(self: pointer): pointer {.importc: "QFile_protectedbase_sender".}
proc fcQFile_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFile_protectedbase_senderSignalIndex".}
proc fcQFile_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFile_protectedbase_receivers".}
proc fcQFile_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFile_protectedbase_isSignalConnected".}
proc fcQFile_new(vtbl: pointer, vdata: csize_t): ptr cQFile {.importc: "QFile_new".}
proc fcQFile_new2(vtbl: pointer, vdata: csize_t, name: struct_seaqt_string): ptr cQFile {.importc: "QFile_new_name".}
proc fcQFile_new3(vtbl: pointer, vdata: csize_t, parent: pointer): ptr cQFile {.importc: "QFile_new_parent".}
proc fcQFile_new4(vtbl: pointer, vdata: csize_t, name: struct_seaqt_string, parent: pointer): ptr cQFile {.importc: "QFile_new_name_parent".}
proc fcQFile_staticMetaObject(): pointer {.importc: "QFile_staticMetaObject".}

proc metaObject*(self: gen_qfile_types.QFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFile_metaObject(self.h), owned: false)

proc metacast*(self: gen_qfile_types.QFile, param1: cstring): pointer =
  fcQFile_metacast(self.h, param1)

proc metacall*(self: gen_qfile_types.QFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qfile_types.QFile, s: cstring): string =
  let v_ms = fcQFile_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qfile_types.QFile): string =
  let v_ms = fcQFile_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFileName*(self: gen_qfile_types.QFile, name: openArray[char]): void =
  fcQFile_setFileName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc encodeName*(_: type gen_qfile_types.QFile, fileName: openArray[char]): seq[byte] =
  var v_bytearray = fcQFile_encodeName(struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc decodeName*(_: type gen_qfile_types.QFile, localFileName: openArray[byte]): string =
  let v_ms = fcQFile_decodeName_QByteArray(struct_seaqt_string(data: if len(localFileName) > 0: addr localFileName[0] else: nil, len: csize_t(len(localFileName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc decodeName*(_: type gen_qfile_types.QFile, localFileName: cstring): string =
  let v_ms = fcQFile_decodeNameChar(localFileName)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc exists*(self: gen_qfile_types.QFile): bool =
  fcQFile_exists(self.h)

proc exists*(_: type gen_qfile_types.QFile, fileName: openArray[char]): bool =
  fcQFile_existsFileName(struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc symLinkTarget*(self: gen_qfile_types.QFile): string =
  let v_ms = fcQFile_symLinkTarget(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc symLinkTarget*(_: type gen_qfile_types.QFile, fileName: openArray[char]): string =
  let v_ms = fcQFile_symLinkTargetFileName(struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc remove*(self: gen_qfile_types.QFile): bool =
  fcQFile_remove(self.h)

proc remove*(_: type gen_qfile_types.QFile, fileName: openArray[char]): bool =
  fcQFile_removeFileName(struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc supportsMoveToTrash*(_: type gen_qfile_types.QFile): bool =
  fcQFile_supportsMoveToTrash()

proc moveToTrash*(self: gen_qfile_types.QFile): bool =
  fcQFile_moveToTrash(self.h)

proc moveToTrash*(_: type gen_qfile_types.QFile, fileName: openArray[char]): bool =
  fcQFile_moveToTrashFileName(struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc rename*(self: gen_qfile_types.QFile, newName: openArray[char]): bool =
  fcQFile_renameNewName(self.h, struct_seaqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

proc rename*(_: type gen_qfile_types.QFile, oldName: openArray[char], newName: openArray[char]): bool =
  fcQFile_renameOldNameNewName(struct_seaqt_string(data: if len(oldName) > 0: addr oldName[0] else: nil, len: csize_t(len(oldName))), struct_seaqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

proc link*(self: gen_qfile_types.QFile, newName: openArray[char]): bool =
  fcQFile_linkNewName(self.h, struct_seaqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

proc link*(_: type gen_qfile_types.QFile, fileName: openArray[char], newName: openArray[char]): bool =
  fcQFile_linkFileNameNewName(struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_seaqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

proc copy*(self: gen_qfile_types.QFile, newName: openArray[char]): bool =
  fcQFile_copyNewName(self.h, struct_seaqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

proc copy*(_: type gen_qfile_types.QFile, fileName: openArray[char], newName: openArray[char]): bool =
  fcQFile_copyFileNameNewName(struct_seaqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_seaqt_string(data: if len(newName) > 0: addr newName[0] else: nil, len: csize_t(len(newName))))

proc open*(self: gen_qfile_types.QFile, flags: cint): bool =
  fcQFile_openFlags(self.h, cint(flags))

proc open*(self: gen_qfile_types.QFile, flags: cint, permissions: cint): bool =
  fcQFile_openFlagsPermissions(self.h, cint(flags), cint(permissions))

proc open2*(self: gen_qfile_types.QFile, fd: cint, ioFlags: cint): bool =
  fcQFile_openFdIoFlags(self.h, fd, cint(ioFlags))

proc size*(self: gen_qfile_types.QFile): clonglong =
  fcQFile_size(self.h)

proc resize*(self: gen_qfile_types.QFile, sz: clonglong): bool =
  fcQFile_resizeSz(self.h, sz)

proc resize*(_: type gen_qfile_types.QFile, filename: openArray[char], sz: clonglong): bool =
  fcQFile_resizeFilenameSz(struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), sz)

proc permissions*(self: gen_qfile_types.QFile): cint =
  cint(fcQFile_permissions(self.h))

proc permissions*(_: type gen_qfile_types.QFile, filename: openArray[char]): cint =
  cint(fcQFile_permissionsFilename(struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename)))))

proc setPermissions*(self: gen_qfile_types.QFile, permissionSpec: cint): bool =
  fcQFile_setPermissionsPermissionSpec(self.h, cint(permissionSpec))

proc setPermissions*(_: type gen_qfile_types.QFile, filename: openArray[char], permissionSpec: cint): bool =
  fcQFile_setPermissionsFilenamePermissionSpec(struct_seaqt_string(data: if len(filename) > 0: addr filename[0] else: nil, len: csize_t(len(filename))), cint(permissionSpec))

proc tr*(_: type gen_qfile_types.QFile, s: cstring, c: cstring): string =
  let v_ms = fcQFile_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qfile_types.QFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFile_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc open*(self: gen_qfile_types.QFile, fd: cint, ioFlags: cint, handleFlags: cint): bool =
  fcQFile_openFdIoFlagsHandleFlags(self.h, fd, cint(ioFlags), cint(handleFlags))

type QFilemetaObjectProc* = proc(self: QFile): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFilemetacastProc* = proc(self: QFile, param1: cstring): pointer {.raises: [], gcsafe.}
type QFilemetacallProc* = proc(self: QFile, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFilefileNameProc* = proc(self: QFile): string {.raises: [], gcsafe.}
type QFileopenFlagsProc* = proc(self: QFile, flags: cint): bool {.raises: [], gcsafe.}
type QFilesizeProc* = proc(self: QFile): clonglong {.raises: [], gcsafe.}
type QFileresizeSzProc* = proc(self: QFile, sz: clonglong): bool {.raises: [], gcsafe.}
type QFilepermissionsProc* = proc(self: QFile): cint {.raises: [], gcsafe.}
type QFilesetPermissionsPermissionSpecProc* = proc(self: QFile, permissionSpec: cint): bool {.raises: [], gcsafe.}
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
type QFileskipDataProc* = proc(self: QFile, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QFileeventProc* = proc(self: QFile, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFileeventFilterProc* = proc(self: QFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFiletimerEventProc* = proc(self: QFile, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFilechildEventProc* = proc(self: QFile, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFilecustomEventProc* = proc(self: QFile, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFileconnectNotifyProc* = proc(self: QFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFiledisconnectNotifyProc* = proc(self: QFile, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QFileVTable* {.inheritable, pure.} = object
  vtbl: cQFileVTable
  metaObject*: QFilemetaObjectProc
  metacast*: QFilemetacastProc
  metacall*: QFilemetacallProc
  fileName*: QFilefileNameProc
  openFlags*: QFileopenFlagsProc
  size*: QFilesizeProc
  resizeSz*: QFileresizeSzProc
  permissions*: QFilepermissionsProc
  setPermissionsPermissionSpec*: QFilesetPermissionsPermissionSpecProc
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
  skipData*: QFileskipDataProc
  event*: QFileeventProc
  eventFilter*: QFileeventFilterProc
  timerEvent*: QFiletimerEventProc
  childEvent*: QFilechildEventProc
  customEvent*: QFilecustomEventProc
  connectNotify*: QFileconnectNotifyProc
  disconnectNotify*: QFiledisconnectNotifyProc

proc QFilemetaObject*(self: gen_qfile_types.QFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFile_virtualbase_metaObject(self.h), owned: false)

proc QFilemetacast*(self: gen_qfile_types.QFile, param1: cstring): pointer =
  fcQFile_virtualbase_metacast(self.h, param1)

proc QFilemetacall*(self: gen_qfile_types.QFile, param1: cint, param2: cint, param3: pointer): cint =
  fcQFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QFilefileName*(self: gen_qfile_types.QFile): string =
  let v_ms = fcQFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc QFileopen*(self: gen_qfile_types.QFile, flags: cint): bool =
  fcQFile_virtualbase_openFlags(self.h, cint(flags))

proc QFilesize*(self: gen_qfile_types.QFile): clonglong =
  fcQFile_virtualbase_size(self.h)

proc QFileresize*(self: gen_qfile_types.QFile, sz: clonglong): bool =
  fcQFile_virtualbase_resizeSz(self.h, sz)

proc QFilepermissions*(self: gen_qfile_types.QFile): cint =
  cint(fcQFile_virtualbase_permissions(self.h))

proc QFilesetPermissions*(self: gen_qfile_types.QFile, permissionSpec: cint): bool =
  fcQFile_virtualbase_setPermissionsPermissionSpec(self.h, cint(permissionSpec))

proc QFileclose*(self: gen_qfile_types.QFile): void =
  fcQFile_virtualbase_close(self.h)

proc QFileisSequential*(self: gen_qfile_types.QFile): bool =
  fcQFile_virtualbase_isSequential(self.h)

proc QFilepos*(self: gen_qfile_types.QFile): clonglong =
  fcQFile_virtualbase_pos(self.h)

proc QFileseek*(self: gen_qfile_types.QFile, offset: clonglong): bool =
  fcQFile_virtualbase_seek(self.h, offset)

proc QFileatEnd*(self: gen_qfile_types.QFile): bool =
  fcQFile_virtualbase_atEnd(self.h)

proc QFilereadData*(self: gen_qfile_types.QFile, data: cstring, maxlen: clonglong): clonglong =
  fcQFile_virtualbase_readData(self.h, data, maxlen)

proc QFilewriteData*(self: gen_qfile_types.QFile, data: cstring, len: clonglong): clonglong =
  fcQFile_virtualbase_writeData(self.h, data, len)

proc QFilereadLineData*(self: gen_qfile_types.QFile, data: cstring, maxlen: clonglong): clonglong =
  fcQFile_virtualbase_readLineData(self.h, data, maxlen)

proc QFilereset*(self: gen_qfile_types.QFile): bool =
  fcQFile_virtualbase_reset(self.h)

proc QFilebytesAvailable*(self: gen_qfile_types.QFile): clonglong =
  fcQFile_virtualbase_bytesAvailable(self.h)

proc QFilebytesToWrite*(self: gen_qfile_types.QFile): clonglong =
  fcQFile_virtualbase_bytesToWrite(self.h)

proc QFilecanReadLine*(self: gen_qfile_types.QFile): bool =
  fcQFile_virtualbase_canReadLine(self.h)

proc QFilewaitForReadyRead*(self: gen_qfile_types.QFile, msecs: cint): bool =
  fcQFile_virtualbase_waitForReadyRead(self.h, msecs)

proc QFilewaitForBytesWritten*(self: gen_qfile_types.QFile, msecs: cint): bool =
  fcQFile_virtualbase_waitForBytesWritten(self.h, msecs)

proc QFileskipData*(self: gen_qfile_types.QFile, maxSize: clonglong): clonglong =
  fcQFile_virtualbase_skipData(self.h, maxSize)

proc QFileevent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QEvent): bool =
  fcQFile_virtualbase_event(self.h, event.h)

proc QFileeventFilter*(self: gen_qfile_types.QFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFile_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QFiletimerEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFile_virtualbase_timerEvent(self.h, event.h)

proc QFilechildEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QChildEvent): void =
  fcQFile_virtualbase_childEvent(self.h, event.h)

proc QFilecustomEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QEvent): void =
  fcQFile_virtualbase_customEvent(self.h, event.h)

proc QFileconnectNotify*(self: gen_qfile_types.QFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFile_virtualbase_connectNotify(self.h, signal.h)

proc QFiledisconnectNotify*(self: gen_qfile_types.QFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFile_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQFile_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFile_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQFile_vtable_callback_fileName(self: pointer): struct_seaqt_string {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].fileName(self)
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQFile_vtable_callback_openFlags(self: pointer, flags: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = cint(flags)
  var virtualReturn = vtbl[].openFlags(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc fcQFile_vtable_callback_resizeSz(self: pointer, sz: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = sz
  var virtualReturn = vtbl[].resizeSz(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_permissions(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].permissions(self)
  cint(virtualReturn)

proc fcQFile_vtable_callback_setPermissionsPermissionSpec(self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = cint(permissionSpec)
  var virtualReturn = vtbl[].setPermissionsPermissionSpec(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  vtbl[].close(self)

proc fcQFile_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc fcQFile_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc fcQFile_vtable_callback_seek(self: pointer, offset: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = offset
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc fcQFile_vtable_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc fcQFile_vtable_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc fcQFile_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc fcQFile_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc fcQFile_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc fcQFile_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc fcQFile_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc fcQFile_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQFile_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQFile_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQFile_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQFile_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQFile_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQFile_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFileVTable](fcQFile_vdata(self)[])
  let self = QFile(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQFile* {.inheritable.} = ref object of QFile
  vtbl*: cQFileVTable

method metaObject*(self: VirtualQFile): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFilemetaObject(self[])
method metacast*(self: VirtualQFile, param1: cstring): pointer {.base.} =
  QFilemetacast(self[], param1)
method metacall*(self: VirtualQFile, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFilemetacall(self[], param1, param2, param3)
method fileName*(self: VirtualQFile): string {.base.} =
  QFilefileName(self[])
method open*(self: VirtualQFile, flags: cint): bool {.base.} =
  QFileopen(self[], flags)
method size*(self: VirtualQFile): clonglong {.base.} =
  QFilesize(self[])
method resize*(self: VirtualQFile, sz: clonglong): bool {.base.} =
  QFileresize(self[], sz)
method permissions*(self: VirtualQFile): cint {.base.} =
  QFilepermissions(self[])
method setPermissions*(self: VirtualQFile, permissionSpec: cint): bool {.base.} =
  QFilesetPermissions(self[], permissionSpec)
method close*(self: VirtualQFile): void {.base.} =
  QFileclose(self[])
method isSequential*(self: VirtualQFile): bool {.base.} =
  QFileisSequential(self[])
method pos*(self: VirtualQFile): clonglong {.base.} =
  QFilepos(self[])
method seek*(self: VirtualQFile, offset: clonglong): bool {.base.} =
  QFileseek(self[], offset)
method atEnd*(self: VirtualQFile): bool {.base.} =
  QFileatEnd(self[])
method readData*(self: VirtualQFile, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QFilereadData(self[], data, maxlen)
method writeData*(self: VirtualQFile, data: cstring, len: clonglong): clonglong {.base.} =
  QFilewriteData(self[], data, len)
method readLineData*(self: VirtualQFile, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QFilereadLineData(self[], data, maxlen)
method reset*(self: VirtualQFile): bool {.base.} =
  QFilereset(self[])
method bytesAvailable*(self: VirtualQFile): clonglong {.base.} =
  QFilebytesAvailable(self[])
method bytesToWrite*(self: VirtualQFile): clonglong {.base.} =
  QFilebytesToWrite(self[])
method canReadLine*(self: VirtualQFile): bool {.base.} =
  QFilecanReadLine(self[])
method waitForReadyRead*(self: VirtualQFile, msecs: cint): bool {.base.} =
  QFilewaitForReadyRead(self[], msecs)
method waitForBytesWritten*(self: VirtualQFile, msecs: cint): bool {.base.} =
  QFilewaitForBytesWritten(self[], msecs)
method skipData*(self: VirtualQFile, maxSize: clonglong): clonglong {.base.} =
  QFileskipData(self[], maxSize)
method event*(self: VirtualQFile, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileevent(self[], event)
method eventFilter*(self: VirtualQFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFileeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQFile, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFiletimerEvent(self[], event)
method childEvent*(self: VirtualQFile, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFilechildEvent(self[], event)
method customEvent*(self: VirtualQFile, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFilecustomEvent(self[], event)
method connectNotify*(self: VirtualQFile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFileconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQFile, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFiledisconnectNotify(self[], signal)

proc fcQFile_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQFile_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQFile_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQFile_method_callback_fileName(self: pointer): struct_seaqt_string {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.fileName()
  var virtualReturn_copy = if len(virtualReturn) > 0: c_malloc(csize_t(len(virtualReturn))) else: nil
  if len(virtualReturn) > 0: copyMem(virtualReturn_copy, addr virtualReturn[0], csize_t(len(virtualReturn)))
  struct_seaqt_string(data: virtualReturn_copy, len: csize_t(len(virtualReturn)))

proc fcQFile_method_callback_openFlags(self: pointer, flags: cint): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = cint(flags)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

proc fcQFile_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.size()
  virtualReturn

proc fcQFile_method_callback_resizeSz(self: pointer, sz: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = sz
  var virtualReturn = inst.resize(slotval1)
  virtualReturn

proc fcQFile_method_callback_permissions(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.permissions()
  cint(virtualReturn)

proc fcQFile_method_callback_setPermissionsPermissionSpec(self: pointer, permissionSpec: cint): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = cint(permissionSpec)
  var virtualReturn = inst.setPermissions(slotval1)
  virtualReturn

proc fcQFile_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  inst.close()

proc fcQFile_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.isSequential()
  virtualReturn

proc fcQFile_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.pos()
  virtualReturn

proc fcQFile_method_callback_seek(self: pointer, offset: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = offset
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

proc fcQFile_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.atEnd()
  virtualReturn

proc fcQFile_method_callback_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readData(slotval1, slotval2)
  virtualReturn

proc fcQFile_method_callback_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = inst.writeData(slotval1, slotval2)
  virtualReturn

proc fcQFile_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

proc fcQFile_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.reset()
  virtualReturn

proc fcQFile_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

proc fcQFile_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

proc fcQFile_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  var virtualReturn = inst.canReadLine()
  virtualReturn

proc fcQFile_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

proc fcQFile_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

proc fcQFile_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

proc fcQFile_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQFile_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQFile_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQFile_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQFile_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQFile_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQFile_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFile](fcQFile_vdata(self)[])
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc setOpenMode*(self: gen_qfile_types.QFile, openMode: cint): void =
  fcQFile_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qfile_types.QFile, errorString: openArray[char]): void =
  fcQFile_protectedbase_setErrorString(self.h, struct_seaqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qfile_types.QFile): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFile_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qfile_types.QFile): cint =
  fcQFile_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qfile_types.QFile, signal: cstring): cint =
  fcQFile_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qfile_types.QFile, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFile_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qfile_types.QFile,
    vtbl: ref QFileVTable = nil): gen_qfile_types.QFile =
  let vtbl = if vtbl == nil: new QFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileVTable](fcQFile_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = fcQFile_vtable_callback_fileName
  if not isNil(vtbl[].openFlags):
    vtbl[].vtbl.openFlags = fcQFile_vtable_callback_openFlags
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQFile_vtable_callback_size
  if not isNil(vtbl[].resizeSz):
    vtbl[].vtbl.resizeSz = fcQFile_vtable_callback_resizeSz
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = fcQFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissionsPermissionSpec):
    vtbl[].vtbl.setPermissionsPermissionSpec = fcQFile_vtable_callback_setPermissionsPermissionSpec
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQFile_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQFile_vtable_callback_atEnd
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQFile_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQFile_vtable_callback_writeData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQFile_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFile_vtable_callback_disconnectNotify
  let tmp = gen_qfile_types.QFile(h: fcQFile_new(addr(vtbl[].vtbl), csize_t(sizeof(pointer))), owned: true)
  fcQFile_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qfile_types.QFile,
    name: openArray[char],
    vtbl: ref QFileVTable = nil): gen_qfile_types.QFile =
  let vtbl = if vtbl == nil: new QFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileVTable](fcQFile_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = fcQFile_vtable_callback_fileName
  if not isNil(vtbl[].openFlags):
    vtbl[].vtbl.openFlags = fcQFile_vtable_callback_openFlags
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQFile_vtable_callback_size
  if not isNil(vtbl[].resizeSz):
    vtbl[].vtbl.resizeSz = fcQFile_vtable_callback_resizeSz
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = fcQFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissionsPermissionSpec):
    vtbl[].vtbl.setPermissionsPermissionSpec = fcQFile_vtable_callback_setPermissionsPermissionSpec
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQFile_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQFile_vtable_callback_atEnd
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQFile_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQFile_vtable_callback_writeData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQFile_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFile_vtable_callback_disconnectNotify
  let tmp = gen_qfile_types.QFile(h: fcQFile_new2(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)
  fcQFile_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qfile_types.QFile,
    parent: gen_qobject_types.QObject,
    vtbl: ref QFileVTable = nil): gen_qfile_types.QFile =
  let vtbl = if vtbl == nil: new QFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileVTable](fcQFile_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = fcQFile_vtable_callback_fileName
  if not isNil(vtbl[].openFlags):
    vtbl[].vtbl.openFlags = fcQFile_vtable_callback_openFlags
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQFile_vtable_callback_size
  if not isNil(vtbl[].resizeSz):
    vtbl[].vtbl.resizeSz = fcQFile_vtable_callback_resizeSz
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = fcQFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissionsPermissionSpec):
    vtbl[].vtbl.setPermissionsPermissionSpec = fcQFile_vtable_callback_setPermissionsPermissionSpec
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQFile_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQFile_vtable_callback_atEnd
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQFile_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQFile_vtable_callback_writeData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQFile_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFile_vtable_callback_disconnectNotify
  let tmp = gen_qfile_types.QFile(h: fcQFile_new3(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), parent.h), owned: true)
  fcQFile_vdata(tmp.h)[] = addr(vtbl[])
  tmp
proc create*(T: type gen_qfile_types.QFile,
    name: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QFileVTable = nil): gen_qfile_types.QFile =
  let vtbl = if vtbl == nil: new QFileVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFileVTable](fcQFile_vdata(self)[])
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQFile_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQFile_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQFile_vtable_callback_metacall
  if not isNil(vtbl[].fileName):
    vtbl[].vtbl.fileName = fcQFile_vtable_callback_fileName
  if not isNil(vtbl[].openFlags):
    vtbl[].vtbl.openFlags = fcQFile_vtable_callback_openFlags
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = fcQFile_vtable_callback_size
  if not isNil(vtbl[].resizeSz):
    vtbl[].vtbl.resizeSz = fcQFile_vtable_callback_resizeSz
  if not isNil(vtbl[].permissions):
    vtbl[].vtbl.permissions = fcQFile_vtable_callback_permissions
  if not isNil(vtbl[].setPermissionsPermissionSpec):
    vtbl[].vtbl.setPermissionsPermissionSpec = fcQFile_vtable_callback_setPermissionsPermissionSpec
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = fcQFile_vtable_callback_close
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = fcQFile_vtable_callback_isSequential
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = fcQFile_vtable_callback_pos
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = fcQFile_vtable_callback_seek
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = fcQFile_vtable_callback_atEnd
  if not isNil(vtbl[].readData):
    vtbl[].vtbl.readData = fcQFile_vtable_callback_readData
  if not isNil(vtbl[].writeData):
    vtbl[].vtbl.writeData = fcQFile_vtable_callback_writeData
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = fcQFile_vtable_callback_readLineData
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = fcQFile_vtable_callback_reset
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = fcQFile_vtable_callback_bytesAvailable
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = fcQFile_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = fcQFile_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = fcQFile_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = fcQFile_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = fcQFile_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQFile_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQFile_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQFile_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQFile_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQFile_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQFile_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQFile_vtable_callback_disconnectNotify
  let tmp = gen_qfile_types.QFile(h: fcQFile_new4(addr(vtbl[].vtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), parent.h), owned: true)
  fcQFile_vdata(tmp.h)[] = addr(vtbl[])
  tmp
const cQFile_mvtbl = cQFileVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFile()[])](self.fcQFile_vdata()[])
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQFile_method_callback_metaObject,
  metacast: fcQFile_method_callback_metacast,
  metacall: fcQFile_method_callback_metacall,
  fileName: fcQFile_method_callback_fileName,
  openFlags: fcQFile_method_callback_openFlags,
  size: fcQFile_method_callback_size,
  resizeSz: fcQFile_method_callback_resizeSz,
  permissions: fcQFile_method_callback_permissions,
  setPermissionsPermissionSpec: fcQFile_method_callback_setPermissionsPermissionSpec,
  close: fcQFile_method_callback_close,
  isSequential: fcQFile_method_callback_isSequential,
  pos: fcQFile_method_callback_pos,
  seek: fcQFile_method_callback_seek,
  atEnd: fcQFile_method_callback_atEnd,
  readData: fcQFile_method_callback_readData,
  writeData: fcQFile_method_callback_writeData,
  readLineData: fcQFile_method_callback_readLineData,
  reset: fcQFile_method_callback_reset,
  bytesAvailable: fcQFile_method_callback_bytesAvailable,
  bytesToWrite: fcQFile_method_callback_bytesToWrite,
  canReadLine: fcQFile_method_callback_canReadLine,
  waitForReadyRead: fcQFile_method_callback_waitForReadyRead,
  waitForBytesWritten: fcQFile_method_callback_waitForBytesWritten,
  skipData: fcQFile_method_callback_skipData,
  event: fcQFile_method_callback_event,
  eventFilter: fcQFile_method_callback_eventFilter,
  timerEvent: fcQFile_method_callback_timerEvent,
  childEvent: fcQFile_method_callback_childEvent,
  customEvent: fcQFile_method_callback_customEvent,
  connectNotify: fcQFile_method_callback_connectNotify,
  disconnectNotify: fcQFile_method_callback_disconnectNotify,
)
proc create*(T: type gen_qfile_types.QFile,
    inst: VirtualQFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFile_new(addr(cQFile_mvtbl), csize_t(sizeof(pointer)))
  fcQFile_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qfile_types.QFile,
    name: openArray[char],
    inst: VirtualQFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFile_new2(addr(cQFile_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))
  fcQFile_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qfile_types.QFile,
    parent: gen_qobject_types.QObject,
    inst: VirtualQFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFile_new3(addr(cQFile_mvtbl), csize_t(sizeof(pointer)), parent.h)
  fcQFile_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc create*(T: type gen_qfile_types.QFile,
    name: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQFile) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFile_new4(addr(cQFile_mvtbl), csize_t(sizeof(pointer)), struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), parent.h)
  fcQFile_vdata(inst[].h)[] = addr inst[]
  inst[].owned = true

proc staticMetaObject*(_: type gen_qfile_types.QFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFile_staticMetaObject())
