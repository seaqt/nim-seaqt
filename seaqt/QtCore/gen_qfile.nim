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

proc fcQFile_new(): ptr cQFile {.importc: "QFile_new".}
proc fcQFile_new2(name: struct_miqt_string): ptr cQFile {.importc: "QFile_new2".}
proc fcQFile_new3(parent: pointer): ptr cQFile {.importc: "QFile_new3".}
proc fcQFile_new4(name: struct_miqt_string, parent: pointer): ptr cQFile {.importc: "QFile_new4".}
proc fcQFile_metaObject(self: pointer, ): pointer {.importc: "QFile_metaObject".}
proc fcQFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QFile_metacast".}
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
proc fQFile_virtualbase_fileName(self: pointer, ): struct_miqt_string{.importc: "QFile_virtualbase_fileName".}
proc fcQFile_override_virtual_fileName(self: pointer, slot: int) {.importc: "QFile_override_virtual_fileName".}
proc fQFile_virtualbase_open(self: pointer, flags: cint): bool{.importc: "QFile_virtualbase_open".}
proc fcQFile_override_virtual_open(self: pointer, slot: int) {.importc: "QFile_override_virtual_open".}
proc fQFile_virtualbase_size(self: pointer, ): clonglong{.importc: "QFile_virtualbase_size".}
proc fcQFile_override_virtual_size(self: pointer, slot: int) {.importc: "QFile_override_virtual_size".}
proc fQFile_virtualbase_resize(self: pointer, sz: clonglong): bool{.importc: "QFile_virtualbase_resize".}
proc fcQFile_override_virtual_resize(self: pointer, slot: int) {.importc: "QFile_override_virtual_resize".}
proc fQFile_virtualbase_permissions(self: pointer, ): cint{.importc: "QFile_virtualbase_permissions".}
proc fcQFile_override_virtual_permissions(self: pointer, slot: int) {.importc: "QFile_override_virtual_permissions".}
proc fQFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool{.importc: "QFile_virtualbase_setPermissions".}
proc fcQFile_override_virtual_setPermissions(self: pointer, slot: int) {.importc: "QFile_override_virtual_setPermissions".}
proc fQFile_virtualbase_close(self: pointer, ): void{.importc: "QFile_virtualbase_close".}
proc fcQFile_override_virtual_close(self: pointer, slot: int) {.importc: "QFile_override_virtual_close".}
proc fQFile_virtualbase_isSequential(self: pointer, ): bool{.importc: "QFile_virtualbase_isSequential".}
proc fcQFile_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QFile_override_virtual_isSequential".}
proc fQFile_virtualbase_pos(self: pointer, ): clonglong{.importc: "QFile_virtualbase_pos".}
proc fcQFile_override_virtual_pos(self: pointer, slot: int) {.importc: "QFile_override_virtual_pos".}
proc fQFile_virtualbase_seek(self: pointer, offset: clonglong): bool{.importc: "QFile_virtualbase_seek".}
proc fcQFile_override_virtual_seek(self: pointer, slot: int) {.importc: "QFile_override_virtual_seek".}
proc fQFile_virtualbase_atEnd(self: pointer, ): bool{.importc: "QFile_virtualbase_atEnd".}
proc fcQFile_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QFile_override_virtual_atEnd".}
proc fQFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QFile_virtualbase_readData".}
proc fcQFile_override_virtual_readData(self: pointer, slot: int) {.importc: "QFile_override_virtual_readData".}
proc fQFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QFile_virtualbase_writeData".}
proc fcQFile_override_virtual_writeData(self: pointer, slot: int) {.importc: "QFile_override_virtual_writeData".}
proc fQFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QFile_virtualbase_readLineData".}
proc fcQFile_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QFile_override_virtual_readLineData".}
proc fQFile_virtualbase_reset(self: pointer, ): bool{.importc: "QFile_virtualbase_reset".}
proc fcQFile_override_virtual_reset(self: pointer, slot: int) {.importc: "QFile_override_virtual_reset".}
proc fQFile_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QFile_virtualbase_bytesAvailable".}
proc fcQFile_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QFile_override_virtual_bytesAvailable".}
proc fQFile_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QFile_virtualbase_bytesToWrite".}
proc fcQFile_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QFile_override_virtual_bytesToWrite".}
proc fQFile_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QFile_virtualbase_canReadLine".}
proc fcQFile_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QFile_override_virtual_canReadLine".}
proc fQFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QFile_virtualbase_waitForReadyRead".}
proc fcQFile_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QFile_override_virtual_waitForReadyRead".}
proc fQFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QFile_virtualbase_waitForBytesWritten".}
proc fcQFile_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QFile_override_virtual_waitForBytesWritten".}
proc fQFile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFile_virtualbase_event".}
proc fcQFile_override_virtual_event(self: pointer, slot: int) {.importc: "QFile_override_virtual_event".}
proc fQFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFile_virtualbase_eventFilter".}
proc fcQFile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFile_override_virtual_eventFilter".}
proc fQFile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFile_virtualbase_timerEvent".}
proc fcQFile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFile_override_virtual_timerEvent".}
proc fQFile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFile_virtualbase_childEvent".}
proc fcQFile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFile_override_virtual_childEvent".}
proc fQFile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFile_virtualbase_customEvent".}
proc fcQFile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFile_override_virtual_customEvent".}
proc fQFile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFile_virtualbase_connectNotify".}
proc fcQFile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFile_override_virtual_connectNotify".}
proc fQFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFile_virtualbase_disconnectNotify".}
proc fcQFile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFile_override_virtual_disconnectNotify".}
proc fcQFile_delete(self: pointer) {.importc: "QFile_delete".}


func init*(T: type gen_qfile_types.QFile, h: ptr cQFile): gen_qfile_types.QFile =
  T(h: h)
proc create*(T: type gen_qfile_types.QFile, ): gen_qfile_types.QFile =
  gen_qfile_types.QFile.init(fcQFile_new())

proc create*(T: type gen_qfile_types.QFile, name: string): gen_qfile_types.QFile =
  gen_qfile_types.QFile.init(fcQFile_new2(struct_miqt_string(data: name, len: csize_t(len(name)))))

proc create*(T: type gen_qfile_types.QFile, parent: gen_qobject_types.QObject): gen_qfile_types.QFile =
  gen_qfile_types.QFile.init(fcQFile_new3(parent.h))

proc create*(T: type gen_qfile_types.QFile, name: string, parent: gen_qobject_types.QObject): gen_qfile_types.QFile =
  gen_qfile_types.QFile.init(fcQFile_new4(struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))

proc metaObject*(self: gen_qfile_types.QFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFile_metaObject(self.h))

proc metacast*(self: gen_qfile_types.QFile, param1: cstring): pointer =
  fcQFile_metacast(self.h, param1)

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

proc QFilefileName*(self: gen_qfile_types.QFile, ): string =
  let v_ms = fQFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFilefileNameProc* = proc(): string
proc onfileName*(self: gen_qfile_types.QFile, slot: QFilefileNameProc) =
  # TODO check subclass
  var tmp = new QFilefileNameProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_fileName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_fileName(self: ptr cQFile, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QFile_fileName ".} =
  var nimfunc = cast[ptr QFilefileNameProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QFileopen*(self: gen_qfile_types.QFile, flags: cint): bool =
  fQFile_virtualbase_open(self.h, cint(flags))

type QFileopenProc* = proc(flags: cint): bool
proc onopen*(self: gen_qfile_types.QFile, slot: QFileopenProc) =
  # TODO check subclass
  var tmp = new QFileopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_open(self: ptr cQFile, slot: int, flags: cint): bool {.exportc: "miqt_exec_callback_QFile_open ".} =
  var nimfunc = cast[ptr QFileopenProc](cast[pointer](slot))
  let slotval1 = cint(flags)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFilesize*(self: gen_qfile_types.QFile, ): clonglong =
  fQFile_virtualbase_size(self.h)

type QFilesizeProc* = proc(): clonglong
proc onsize*(self: gen_qfile_types.QFile, slot: QFilesizeProc) =
  # TODO check subclass
  var tmp = new QFilesizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_size(self: ptr cQFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QFile_size ".} =
  var nimfunc = cast[ptr QFilesizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFileresize*(self: gen_qfile_types.QFile, sz: clonglong): bool =
  fQFile_virtualbase_resize(self.h, sz)

type QFileresizeProc* = proc(sz: clonglong): bool
proc onresize*(self: gen_qfile_types.QFile, slot: QFileresizeProc) =
  # TODO check subclass
  var tmp = new QFileresizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_resize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_resize(self: ptr cQFile, slot: int, sz: clonglong): bool {.exportc: "miqt_exec_callback_QFile_resize ".} =
  var nimfunc = cast[ptr QFileresizeProc](cast[pointer](slot))
  let slotval1 = sz


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFilepermissions*(self: gen_qfile_types.QFile, ): cint =
  cint(fQFile_virtualbase_permissions(self.h))

type QFilepermissionsProc* = proc(): cint
proc onpermissions*(self: gen_qfile_types.QFile, slot: QFilepermissionsProc) =
  # TODO check subclass
  var tmp = new QFilepermissionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_permissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_permissions(self: ptr cQFile, slot: int): cint {.exportc: "miqt_exec_callback_QFile_permissions ".} =
  var nimfunc = cast[ptr QFilepermissionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QFilesetPermissions*(self: gen_qfile_types.QFile, permissionSpec: cint): bool =
  fQFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

type QFilesetPermissionsProc* = proc(permissionSpec: cint): bool
proc onsetPermissions*(self: gen_qfile_types.QFile, slot: QFilesetPermissionsProc) =
  # TODO check subclass
  var tmp = new QFilesetPermissionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_setPermissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_setPermissions(self: ptr cQFile, slot: int, permissionSpec: cint): bool {.exportc: "miqt_exec_callback_QFile_setPermissions ".} =
  var nimfunc = cast[ptr QFilesetPermissionsProc](cast[pointer](slot))
  let slotval1 = cint(permissionSpec)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileclose*(self: gen_qfile_types.QFile, ): void =
  fQFile_virtualbase_close(self.h)

type QFilecloseProc* = proc(): void
proc onclose*(self: gen_qfile_types.QFile, slot: QFilecloseProc) =
  # TODO check subclass
  var tmp = new QFilecloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_close(self: ptr cQFile, slot: int): void {.exportc: "miqt_exec_callback_QFile_close ".} =
  var nimfunc = cast[ptr QFilecloseProc](cast[pointer](slot))

  nimfunc[]()
proc QFileisSequential*(self: gen_qfile_types.QFile, ): bool =
  fQFile_virtualbase_isSequential(self.h)

type QFileisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qfile_types.QFile, slot: QFileisSequentialProc) =
  # TODO check subclass
  var tmp = new QFileisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_isSequential(self: ptr cQFile, slot: int): bool {.exportc: "miqt_exec_callback_QFile_isSequential ".} =
  var nimfunc = cast[ptr QFileisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFilepos*(self: gen_qfile_types.QFile, ): clonglong =
  fQFile_virtualbase_pos(self.h)

type QFileposProc* = proc(): clonglong
proc onpos*(self: gen_qfile_types.QFile, slot: QFileposProc) =
  # TODO check subclass
  var tmp = new QFileposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_pos(self: ptr cQFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QFile_pos ".} =
  var nimfunc = cast[ptr QFileposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFileseek*(self: gen_qfile_types.QFile, offset: clonglong): bool =
  fQFile_virtualbase_seek(self.h, offset)

type QFileseekProc* = proc(offset: clonglong): bool
proc onseek*(self: gen_qfile_types.QFile, slot: QFileseekProc) =
  # TODO check subclass
  var tmp = new QFileseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_seek(self: ptr cQFile, slot: int, offset: clonglong): bool {.exportc: "miqt_exec_callback_QFile_seek ".} =
  var nimfunc = cast[ptr QFileseekProc](cast[pointer](slot))
  let slotval1 = offset


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileatEnd*(self: gen_qfile_types.QFile, ): bool =
  fQFile_virtualbase_atEnd(self.h)

type QFileatEndProc* = proc(): bool
proc onatEnd*(self: gen_qfile_types.QFile, slot: QFileatEndProc) =
  # TODO check subclass
  var tmp = new QFileatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_atEnd(self: ptr cQFile, slot: int): bool {.exportc: "miqt_exec_callback_QFile_atEnd ".} =
  var nimfunc = cast[ptr QFileatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFilereadData*(self: gen_qfile_types.QFile, data: cstring, maxlen: clonglong): clonglong =
  fQFile_virtualbase_readData(self.h, data, maxlen)

type QFilereadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qfile_types.QFile, slot: QFilereadDataProc) =
  # TODO check subclass
  var tmp = new QFilereadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_readData(self: ptr cQFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QFile_readData ".} =
  var nimfunc = cast[ptr QFilereadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFilewriteData*(self: gen_qfile_types.QFile, data: cstring, len: clonglong): clonglong =
  fQFile_virtualbase_writeData(self.h, data, len)

type QFilewriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qfile_types.QFile, slot: QFilewriteDataProc) =
  # TODO check subclass
  var tmp = new QFilewriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_writeData(self: ptr cQFile, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QFile_writeData ".} =
  var nimfunc = cast[ptr QFilewriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFilereadLineData*(self: gen_qfile_types.QFile, data: cstring, maxlen: clonglong): clonglong =
  fQFile_virtualbase_readLineData(self.h, data, maxlen)

type QFilereadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qfile_types.QFile, slot: QFilereadLineDataProc) =
  # TODO check subclass
  var tmp = new QFilereadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_readLineData(self: ptr cQFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QFile_readLineData ".} =
  var nimfunc = cast[ptr QFilereadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFilereset*(self: gen_qfile_types.QFile, ): bool =
  fQFile_virtualbase_reset(self.h)

type QFileresetProc* = proc(): bool
proc onreset*(self: gen_qfile_types.QFile, slot: QFileresetProc) =
  # TODO check subclass
  var tmp = new QFileresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_reset(self: ptr cQFile, slot: int): bool {.exportc: "miqt_exec_callback_QFile_reset ".} =
  var nimfunc = cast[ptr QFileresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFilebytesAvailable*(self: gen_qfile_types.QFile, ): clonglong =
  fQFile_virtualbase_bytesAvailable(self.h)

type QFilebytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qfile_types.QFile, slot: QFilebytesAvailableProc) =
  # TODO check subclass
  var tmp = new QFilebytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_bytesAvailable(self: ptr cQFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QFile_bytesAvailable ".} =
  var nimfunc = cast[ptr QFilebytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFilebytesToWrite*(self: gen_qfile_types.QFile, ): clonglong =
  fQFile_virtualbase_bytesToWrite(self.h)

type QFilebytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qfile_types.QFile, slot: QFilebytesToWriteProc) =
  # TODO check subclass
  var tmp = new QFilebytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_bytesToWrite(self: ptr cQFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QFile_bytesToWrite ".} =
  var nimfunc = cast[ptr QFilebytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFilecanReadLine*(self: gen_qfile_types.QFile, ): bool =
  fQFile_virtualbase_canReadLine(self.h)

type QFilecanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qfile_types.QFile, slot: QFilecanReadLineProc) =
  # TODO check subclass
  var tmp = new QFilecanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_canReadLine(self: ptr cQFile, slot: int): bool {.exportc: "miqt_exec_callback_QFile_canReadLine ".} =
  var nimfunc = cast[ptr QFilecanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFilewaitForReadyRead*(self: gen_qfile_types.QFile, msecs: cint): bool =
  fQFile_virtualbase_waitForReadyRead(self.h, msecs)

type QFilewaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qfile_types.QFile, slot: QFilewaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QFilewaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_waitForReadyRead(self: ptr cQFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QFile_waitForReadyRead ".} =
  var nimfunc = cast[ptr QFilewaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFilewaitForBytesWritten*(self: gen_qfile_types.QFile, msecs: cint): bool =
  fQFile_virtualbase_waitForBytesWritten(self.h, msecs)

type QFilewaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qfile_types.QFile, slot: QFilewaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QFilewaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_waitForBytesWritten(self: ptr cQFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QFile_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QFilewaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileevent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QEvent): bool =
  fQFile_virtualbase_event(self.h, event.h)

type QFileeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qfile_types.QFile, slot: QFileeventProc) =
  # TODO check subclass
  var tmp = new QFileeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_event(self: ptr cQFile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFile_event ".} =
  var nimfunc = cast[ptr QFileeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFileeventFilter*(self: gen_qfile_types.QFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFileeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qfile_types.QFile, slot: QFileeventFilterProc) =
  # TODO check subclass
  var tmp = new QFileeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_eventFilter(self: ptr cQFile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFile_eventFilter ".} =
  var nimfunc = cast[ptr QFileeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFiletimerEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFile_virtualbase_timerEvent(self.h, event.h)

type QFiletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qfile_types.QFile, slot: QFiletimerEventProc) =
  # TODO check subclass
  var tmp = new QFiletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_timerEvent(self: ptr cQFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFile_timerEvent ".} =
  var nimfunc = cast[ptr QFiletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFilechildEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QChildEvent): void =
  fQFile_virtualbase_childEvent(self.h, event.h)

type QFilechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qfile_types.QFile, slot: QFilechildEventProc) =
  # TODO check subclass
  var tmp = new QFilechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_childEvent(self: ptr cQFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFile_childEvent ".} =
  var nimfunc = cast[ptr QFilechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QFilecustomEvent*(self: gen_qfile_types.QFile, event: gen_qcoreevent_types.QEvent): void =
  fQFile_virtualbase_customEvent(self.h, event.h)

type QFilecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qfile_types.QFile, slot: QFilecustomEventProc) =
  # TODO check subclass
  var tmp = new QFilecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_customEvent(self: ptr cQFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFile_customEvent ".} =
  var nimfunc = cast[ptr QFilecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFileconnectNotify*(self: gen_qfile_types.QFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFile_virtualbase_connectNotify(self.h, signal.h)

type QFileconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qfile_types.QFile, slot: QFileconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFileconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_connectNotify(self: ptr cQFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFile_connectNotify ".} =
  var nimfunc = cast[ptr QFileconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFiledisconnectNotify*(self: gen_qfile_types.QFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFile_virtualbase_disconnectNotify(self.h, signal.h)

type QFiledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qfile_types.QFile, slot: QFiledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFiledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_disconnectNotify(self: ptr cQFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFile_disconnectNotify ".} =
  var nimfunc = cast[ptr QFiledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qfile_types.QFile) =
  fcQFile_delete(self.h)
