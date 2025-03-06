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

proc fcQTemporaryFile_new(): ptr cQTemporaryFile {.importc: "QTemporaryFile_new".}
proc fcQTemporaryFile_new2(templateName: struct_miqt_string): ptr cQTemporaryFile {.importc: "QTemporaryFile_new2".}
proc fcQTemporaryFile_new3(parent: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new3".}
proc fcQTemporaryFile_new4(templateName: struct_miqt_string, parent: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new4".}
proc fcQTemporaryFile_metaObject(self: pointer, ): pointer {.importc: "QTemporaryFile_metaObject".}
proc fcQTemporaryFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QTemporaryFile_metacast".}
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
proc fQTemporaryFile_virtualbase_fileName(self: pointer, ): struct_miqt_string{.importc: "QTemporaryFile_virtualbase_fileName".}
proc fcQTemporaryFile_override_virtual_fileName(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_fileName".}
proc fQTemporaryFile_virtualbase_openWithFlags(self: pointer, flags: cint): bool{.importc: "QTemporaryFile_virtualbase_openWithFlags".}
proc fcQTemporaryFile_override_virtual_openWithFlags(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_openWithFlags".}
proc fQTemporaryFile_virtualbase_size(self: pointer, ): clonglong{.importc: "QTemporaryFile_virtualbase_size".}
proc fcQTemporaryFile_override_virtual_size(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_size".}
proc fQTemporaryFile_virtualbase_resize(self: pointer, sz: clonglong): bool{.importc: "QTemporaryFile_virtualbase_resize".}
proc fcQTemporaryFile_override_virtual_resize(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_resize".}
proc fQTemporaryFile_virtualbase_permissions(self: pointer, ): cint{.importc: "QTemporaryFile_virtualbase_permissions".}
proc fcQTemporaryFile_override_virtual_permissions(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_permissions".}
proc fQTemporaryFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool{.importc: "QTemporaryFile_virtualbase_setPermissions".}
proc fcQTemporaryFile_override_virtual_setPermissions(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_setPermissions".}
proc fQTemporaryFile_virtualbase_close(self: pointer, ): void{.importc: "QTemporaryFile_virtualbase_close".}
proc fcQTemporaryFile_override_virtual_close(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_close".}
proc fQTemporaryFile_virtualbase_isSequential(self: pointer, ): bool{.importc: "QTemporaryFile_virtualbase_isSequential".}
proc fcQTemporaryFile_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_isSequential".}
proc fQTemporaryFile_virtualbase_pos(self: pointer, ): clonglong{.importc: "QTemporaryFile_virtualbase_pos".}
proc fcQTemporaryFile_override_virtual_pos(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_pos".}
proc fQTemporaryFile_virtualbase_seek(self: pointer, offset: clonglong): bool{.importc: "QTemporaryFile_virtualbase_seek".}
proc fcQTemporaryFile_override_virtual_seek(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_seek".}
proc fQTemporaryFile_virtualbase_atEnd(self: pointer, ): bool{.importc: "QTemporaryFile_virtualbase_atEnd".}
proc fcQTemporaryFile_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_atEnd".}
proc fQTemporaryFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QTemporaryFile_virtualbase_readData".}
proc fcQTemporaryFile_override_virtual_readData(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_readData".}
proc fQTemporaryFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QTemporaryFile_virtualbase_writeData".}
proc fcQTemporaryFile_override_virtual_writeData(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_writeData".}
proc fQTemporaryFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QTemporaryFile_virtualbase_readLineData".}
proc fcQTemporaryFile_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_readLineData".}
proc fQTemporaryFile_virtualbase_reset(self: pointer, ): bool{.importc: "QTemporaryFile_virtualbase_reset".}
proc fcQTemporaryFile_override_virtual_reset(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_reset".}
proc fQTemporaryFile_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QTemporaryFile_virtualbase_bytesAvailable".}
proc fcQTemporaryFile_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_bytesAvailable".}
proc fQTemporaryFile_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QTemporaryFile_virtualbase_bytesToWrite".}
proc fcQTemporaryFile_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_bytesToWrite".}
proc fQTemporaryFile_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QTemporaryFile_virtualbase_canReadLine".}
proc fcQTemporaryFile_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_canReadLine".}
proc fQTemporaryFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QTemporaryFile_virtualbase_waitForReadyRead".}
proc fcQTemporaryFile_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_waitForReadyRead".}
proc fQTemporaryFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QTemporaryFile_virtualbase_waitForBytesWritten".}
proc fcQTemporaryFile_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_waitForBytesWritten".}
proc fQTemporaryFile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTemporaryFile_virtualbase_event".}
proc fcQTemporaryFile_override_virtual_event(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_event".}
proc fQTemporaryFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTemporaryFile_virtualbase_eventFilter".}
proc fcQTemporaryFile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_eventFilter".}
proc fQTemporaryFile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTemporaryFile_virtualbase_timerEvent".}
proc fcQTemporaryFile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_timerEvent".}
proc fQTemporaryFile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTemporaryFile_virtualbase_childEvent".}
proc fcQTemporaryFile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_childEvent".}
proc fQTemporaryFile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTemporaryFile_virtualbase_customEvent".}
proc fcQTemporaryFile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_customEvent".}
proc fQTemporaryFile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTemporaryFile_virtualbase_connectNotify".}
proc fcQTemporaryFile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_connectNotify".}
proc fQTemporaryFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTemporaryFile_virtualbase_disconnectNotify".}
proc fcQTemporaryFile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_disconnectNotify".}
proc fcQTemporaryFile_delete(self: pointer) {.importc: "QTemporaryFile_delete".}


func init*(T: type gen_qtemporaryfile_types.QTemporaryFile, h: ptr cQTemporaryFile): gen_qtemporaryfile_types.QTemporaryFile =
  T(h: h)
proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile, ): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile.init(fcQTemporaryFile_new())

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile, templateName: string): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile.init(fcQTemporaryFile_new2(struct_miqt_string(data: templateName, len: csize_t(len(templateName)))))

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile, parent: gen_qobject_types.QObject): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile.init(fcQTemporaryFile_new3(parent.h))

proc create*(T: type gen_qtemporaryfile_types.QTemporaryFile, templateName: string, parent: gen_qobject_types.QObject): gen_qtemporaryfile_types.QTemporaryFile =
  gen_qtemporaryfile_types.QTemporaryFile.init(fcQTemporaryFile_new4(struct_miqt_string(data: templateName, len: csize_t(len(templateName))), parent.h))

proc metaObject*(self: gen_qtemporaryfile_types.QTemporaryFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQTemporaryFile_metaObject(self.h))

proc metacast*(self: gen_qtemporaryfile_types.QTemporaryFile, param1: cstring): pointer =
  fcQTemporaryFile_metacast(self.h, param1)

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

proc QTemporaryFilefileName*(self: gen_qtemporaryfile_types.QTemporaryFile, ): string =
  let v_ms = fQTemporaryFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTemporaryFilefileNameProc* = proc(): string
proc onfileName*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilefileNameProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilefileNameProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_fileName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_fileName(self: ptr cQTemporaryFile, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QTemporaryFile_fileName ".} =
  var nimfunc = cast[ptr QTemporaryFilefileNameProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QTemporaryFileopen*(self: gen_qtemporaryfile_types.QTemporaryFile, flags: cint): bool =
  fQTemporaryFile_virtualbase_openWithFlags(self.h, cint(flags))

type QTemporaryFileopenWithFlagsProc* = proc(flags: cint): bool
proc onopen*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileopenWithFlagsProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileopenWithFlagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_openWithFlags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_openWithFlags(self: ptr cQTemporaryFile, slot: int, flags: cint): bool {.exportc: "miqt_exec_callback_QTemporaryFile_openWithFlags ".} =
  var nimfunc = cast[ptr QTemporaryFileopenWithFlagsProc](cast[pointer](slot))
  let slotval1 = cint(flags)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTemporaryFilesize*(self: gen_qtemporaryfile_types.QTemporaryFile, ): clonglong =
  fQTemporaryFile_virtualbase_size(self.h)

type QTemporaryFilesizeProc* = proc(): clonglong
proc onsize*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilesizeProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilesizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_size(self: ptr cQTemporaryFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_size ".} =
  var nimfunc = cast[ptr QTemporaryFilesizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTemporaryFileresize*(self: gen_qtemporaryfile_types.QTemporaryFile, sz: clonglong): bool =
  fQTemporaryFile_virtualbase_resize(self.h, sz)

type QTemporaryFileresizeProc* = proc(sz: clonglong): bool
proc onresize*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileresizeProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileresizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_resize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_resize(self: ptr cQTemporaryFile, slot: int, sz: clonglong): bool {.exportc: "miqt_exec_callback_QTemporaryFile_resize ".} =
  var nimfunc = cast[ptr QTemporaryFileresizeProc](cast[pointer](slot))
  let slotval1 = sz


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTemporaryFilepermissions*(self: gen_qtemporaryfile_types.QTemporaryFile, ): cint =
  cint(fQTemporaryFile_virtualbase_permissions(self.h))

type QTemporaryFilepermissionsProc* = proc(): cint
proc onpermissions*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilepermissionsProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilepermissionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_permissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_permissions(self: ptr cQTemporaryFile, slot: int): cint {.exportc: "miqt_exec_callback_QTemporaryFile_permissions ".} =
  var nimfunc = cast[ptr QTemporaryFilepermissionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QTemporaryFilesetPermissions*(self: gen_qtemporaryfile_types.QTemporaryFile, permissionSpec: cint): bool =
  fQTemporaryFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

type QTemporaryFilesetPermissionsProc* = proc(permissionSpec: cint): bool
proc onsetPermissions*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilesetPermissionsProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilesetPermissionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_setPermissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_setPermissions(self: ptr cQTemporaryFile, slot: int, permissionSpec: cint): bool {.exportc: "miqt_exec_callback_QTemporaryFile_setPermissions ".} =
  var nimfunc = cast[ptr QTemporaryFilesetPermissionsProc](cast[pointer](slot))
  let slotval1 = cint(permissionSpec)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTemporaryFileclose*(self: gen_qtemporaryfile_types.QTemporaryFile, ): void =
  fQTemporaryFile_virtualbase_close(self.h)

type QTemporaryFilecloseProc* = proc(): void
proc onclose*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilecloseProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilecloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_close(self: ptr cQTemporaryFile, slot: int): void {.exportc: "miqt_exec_callback_QTemporaryFile_close ".} =
  var nimfunc = cast[ptr QTemporaryFilecloseProc](cast[pointer](slot))

  nimfunc[]()
proc QTemporaryFileisSequential*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fQTemporaryFile_virtualbase_isSequential(self.h)

type QTemporaryFileisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileisSequentialProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_isSequential(self: ptr cQTemporaryFile, slot: int): bool {.exportc: "miqt_exec_callback_QTemporaryFile_isSequential ".} =
  var nimfunc = cast[ptr QTemporaryFileisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTemporaryFilepos*(self: gen_qtemporaryfile_types.QTemporaryFile, ): clonglong =
  fQTemporaryFile_virtualbase_pos(self.h)

type QTemporaryFileposProc* = proc(): clonglong
proc onpos*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileposProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_pos(self: ptr cQTemporaryFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_pos ".} =
  var nimfunc = cast[ptr QTemporaryFileposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTemporaryFileseek*(self: gen_qtemporaryfile_types.QTemporaryFile, offset: clonglong): bool =
  fQTemporaryFile_virtualbase_seek(self.h, offset)

type QTemporaryFileseekProc* = proc(offset: clonglong): bool
proc onseek*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileseekProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_seek(self: ptr cQTemporaryFile, slot: int, offset: clonglong): bool {.exportc: "miqt_exec_callback_QTemporaryFile_seek ".} =
  var nimfunc = cast[ptr QTemporaryFileseekProc](cast[pointer](slot))
  let slotval1 = offset


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTemporaryFileatEnd*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fQTemporaryFile_virtualbase_atEnd(self.h)

type QTemporaryFileatEndProc* = proc(): bool
proc onatEnd*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileatEndProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_atEnd(self: ptr cQTemporaryFile, slot: int): bool {.exportc: "miqt_exec_callback_QTemporaryFile_atEnd ".} =
  var nimfunc = cast[ptr QTemporaryFileatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTemporaryFilereadData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, maxlen: clonglong): clonglong =
  fQTemporaryFile_virtualbase_readData(self.h, data, maxlen)

type QTemporaryFilereadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilereadDataProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilereadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_readData(self: ptr cQTemporaryFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_readData ".} =
  var nimfunc = cast[ptr QTemporaryFilereadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTemporaryFilewriteData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, len: clonglong): clonglong =
  fQTemporaryFile_virtualbase_writeData(self.h, data, len)

type QTemporaryFilewriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilewriteDataProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilewriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_writeData(self: ptr cQTemporaryFile, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_writeData ".} =
  var nimfunc = cast[ptr QTemporaryFilewriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTemporaryFilereadLineData*(self: gen_qtemporaryfile_types.QTemporaryFile, data: cstring, maxlen: clonglong): clonglong =
  fQTemporaryFile_virtualbase_readLineData(self.h, data, maxlen)

type QTemporaryFilereadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilereadLineDataProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilereadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_readLineData(self: ptr cQTemporaryFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_readLineData ".} =
  var nimfunc = cast[ptr QTemporaryFilereadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTemporaryFilereset*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fQTemporaryFile_virtualbase_reset(self.h)

type QTemporaryFileresetProc* = proc(): bool
proc onreset*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileresetProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_reset(self: ptr cQTemporaryFile, slot: int): bool {.exportc: "miqt_exec_callback_QTemporaryFile_reset ".} =
  var nimfunc = cast[ptr QTemporaryFileresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTemporaryFilebytesAvailable*(self: gen_qtemporaryfile_types.QTemporaryFile, ): clonglong =
  fQTemporaryFile_virtualbase_bytesAvailable(self.h)

type QTemporaryFilebytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilebytesAvailableProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilebytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_bytesAvailable(self: ptr cQTemporaryFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_bytesAvailable ".} =
  var nimfunc = cast[ptr QTemporaryFilebytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTemporaryFilebytesToWrite*(self: gen_qtemporaryfile_types.QTemporaryFile, ): clonglong =
  fQTemporaryFile_virtualbase_bytesToWrite(self.h)

type QTemporaryFilebytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilebytesToWriteProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilebytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_bytesToWrite(self: ptr cQTemporaryFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_bytesToWrite ".} =
  var nimfunc = cast[ptr QTemporaryFilebytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTemporaryFilecanReadLine*(self: gen_qtemporaryfile_types.QTemporaryFile, ): bool =
  fQTemporaryFile_virtualbase_canReadLine(self.h)

type QTemporaryFilecanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilecanReadLineProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilecanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_canReadLine(self: ptr cQTemporaryFile, slot: int): bool {.exportc: "miqt_exec_callback_QTemporaryFile_canReadLine ".} =
  var nimfunc = cast[ptr QTemporaryFilecanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QTemporaryFilewaitForReadyRead*(self: gen_qtemporaryfile_types.QTemporaryFile, msecs: cint): bool =
  fQTemporaryFile_virtualbase_waitForReadyRead(self.h, msecs)

type QTemporaryFilewaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilewaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilewaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_waitForReadyRead(self: ptr cQTemporaryFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTemporaryFile_waitForReadyRead ".} =
  var nimfunc = cast[ptr QTemporaryFilewaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTemporaryFilewaitForBytesWritten*(self: gen_qtemporaryfile_types.QTemporaryFile, msecs: cint): bool =
  fQTemporaryFile_virtualbase_waitForBytesWritten(self.h, msecs)

type QTemporaryFilewaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilewaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilewaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_waitForBytesWritten(self: ptr cQTemporaryFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTemporaryFile_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QTemporaryFilewaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTemporaryFileevent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QEvent): bool =
  fQTemporaryFile_virtualbase_event(self.h, event.h)

type QTemporaryFileeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileeventProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_event(self: ptr cQTemporaryFile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTemporaryFile_event ".} =
  var nimfunc = cast[ptr QTemporaryFileeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QTemporaryFileeventFilter*(self: gen_qtemporaryfile_types.QTemporaryFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQTemporaryFile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTemporaryFileeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileeventFilterProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_eventFilter(self: ptr cQTemporaryFile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTemporaryFile_eventFilter ".} =
  var nimfunc = cast[ptr QTemporaryFileeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QTemporaryFiletimerEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fQTemporaryFile_virtualbase_timerEvent(self.h, event.h)

type QTemporaryFiletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFiletimerEventProc) =
  # TODO check subclass
  var tmp = new QTemporaryFiletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_timerEvent(self: ptr cQTemporaryFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_timerEvent ".} =
  var nimfunc = cast[ptr QTemporaryFiletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QTemporaryFilechildEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QChildEvent): void =
  fQTemporaryFile_virtualbase_childEvent(self.h, event.h)

type QTemporaryFilechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilechildEventProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_childEvent(self: ptr cQTemporaryFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_childEvent ".} =
  var nimfunc = cast[ptr QTemporaryFilechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QTemporaryFilecustomEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, event: gen_qcoreevent_types.QEvent): void =
  fQTemporaryFile_virtualbase_customEvent(self.h, event.h)

type QTemporaryFilecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFilecustomEventProc) =
  # TODO check subclass
  var tmp = new QTemporaryFilecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_customEvent(self: ptr cQTemporaryFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_customEvent ".} =
  var nimfunc = cast[ptr QTemporaryFilecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QTemporaryFileconnectNotify*(self: gen_qtemporaryfile_types.QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTemporaryFile_virtualbase_connectNotify(self.h, signal.h)

type QTemporaryFileconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFileconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTemporaryFileconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_connectNotify(self: ptr cQTemporaryFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_connectNotify ".} =
  var nimfunc = cast[ptr QTemporaryFileconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QTemporaryFiledisconnectNotify*(self: gen_qtemporaryfile_types.QTemporaryFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQTemporaryFile_virtualbase_disconnectNotify(self.h, signal.h)

type QTemporaryFiledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qtemporaryfile_types.QTemporaryFile, slot: QTemporaryFiledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QTemporaryFiledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_disconnectNotify(self: ptr cQTemporaryFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_disconnectNotify ".} =
  var nimfunc = cast[ptr QTemporaryFiledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qtemporaryfile_types.QTemporaryFile) =
  fcQTemporaryFile_delete(self.h)
