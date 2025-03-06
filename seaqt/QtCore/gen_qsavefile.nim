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

proc fcQSaveFile_new(name: struct_miqt_string): ptr cQSaveFile {.importc: "QSaveFile_new".}
proc fcQSaveFile_new2(): ptr cQSaveFile {.importc: "QSaveFile_new2".}
proc fcQSaveFile_new3(name: struct_miqt_string, parent: pointer): ptr cQSaveFile {.importc: "QSaveFile_new3".}
proc fcQSaveFile_new4(parent: pointer): ptr cQSaveFile {.importc: "QSaveFile_new4".}
proc fcQSaveFile_metaObject(self: pointer, ): pointer {.importc: "QSaveFile_metaObject".}
proc fcQSaveFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QSaveFile_metacast".}
proc fcQSaveFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSaveFile_metacall".}
proc fcQSaveFile_tr(s: cstring): struct_miqt_string {.importc: "QSaveFile_tr".}
proc fcQSaveFile_trUtf8(s: cstring): struct_miqt_string {.importc: "QSaveFile_trUtf8".}
proc fcQSaveFile_fileName(self: pointer, ): struct_miqt_string {.importc: "QSaveFile_fileName".}
proc fcQSaveFile_setFileName(self: pointer, name: struct_miqt_string): void {.importc: "QSaveFile_setFileName".}
proc fcQSaveFile_open(self: pointer, flags: cint): bool {.importc: "QSaveFile_open".}
proc fcQSaveFile_commit(self: pointer, ): bool {.importc: "QSaveFile_commit".}
proc fcQSaveFile_cancelWriting(self: pointer, ): void {.importc: "QSaveFile_cancelWriting".}
proc fcQSaveFile_setDirectWriteFallback(self: pointer, enabled: bool): void {.importc: "QSaveFile_setDirectWriteFallback".}
proc fcQSaveFile_directWriteFallback(self: pointer, ): bool {.importc: "QSaveFile_directWriteFallback".}
proc fcQSaveFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSaveFile_tr2".}
proc fcQSaveFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSaveFile_tr3".}
proc fcQSaveFile_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSaveFile_trUtf82".}
proc fcQSaveFile_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSaveFile_trUtf83".}
proc fQSaveFile_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSaveFile_virtualbase_metaObject".}
proc fcQSaveFile_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_metaObject".}
proc fQSaveFile_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSaveFile_virtualbase_metacast".}
proc fcQSaveFile_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_metacast".}
proc fQSaveFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSaveFile_virtualbase_metacall".}
proc fcQSaveFile_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_metacall".}
proc fQSaveFile_virtualbase_fileName(self: pointer, ): struct_miqt_string{.importc: "QSaveFile_virtualbase_fileName".}
proc fcQSaveFile_override_virtual_fileName(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_fileName".}
proc fQSaveFile_virtualbase_open(self: pointer, flags: cint): bool{.importc: "QSaveFile_virtualbase_open".}
proc fcQSaveFile_override_virtual_open(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_open".}
proc fQSaveFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QSaveFile_virtualbase_writeData".}
proc fcQSaveFile_override_virtual_writeData(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_writeData".}
proc fQSaveFile_virtualbase_isSequential(self: pointer, ): bool{.importc: "QSaveFile_virtualbase_isSequential".}
proc fcQSaveFile_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_isSequential".}
proc fQSaveFile_virtualbase_pos(self: pointer, ): clonglong{.importc: "QSaveFile_virtualbase_pos".}
proc fcQSaveFile_override_virtual_pos(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_pos".}
proc fQSaveFile_virtualbase_seek(self: pointer, offset: clonglong): bool{.importc: "QSaveFile_virtualbase_seek".}
proc fcQSaveFile_override_virtual_seek(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_seek".}
proc fQSaveFile_virtualbase_atEnd(self: pointer, ): bool{.importc: "QSaveFile_virtualbase_atEnd".}
proc fcQSaveFile_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_atEnd".}
proc fQSaveFile_virtualbase_size(self: pointer, ): clonglong{.importc: "QSaveFile_virtualbase_size".}
proc fcQSaveFile_override_virtual_size(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_size".}
proc fQSaveFile_virtualbase_resize(self: pointer, sz: clonglong): bool{.importc: "QSaveFile_virtualbase_resize".}
proc fcQSaveFile_override_virtual_resize(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_resize".}
proc fQSaveFile_virtualbase_permissions(self: pointer, ): cint{.importc: "QSaveFile_virtualbase_permissions".}
proc fcQSaveFile_override_virtual_permissions(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_permissions".}
proc fQSaveFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool{.importc: "QSaveFile_virtualbase_setPermissions".}
proc fcQSaveFile_override_virtual_setPermissions(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_setPermissions".}
proc fQSaveFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSaveFile_virtualbase_readData".}
proc fcQSaveFile_override_virtual_readData(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_readData".}
proc fQSaveFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSaveFile_virtualbase_readLineData".}
proc fcQSaveFile_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_readLineData".}
proc fQSaveFile_virtualbase_reset(self: pointer, ): bool{.importc: "QSaveFile_virtualbase_reset".}
proc fcQSaveFile_override_virtual_reset(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_reset".}
proc fQSaveFile_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QSaveFile_virtualbase_bytesAvailable".}
proc fcQSaveFile_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_bytesAvailable".}
proc fQSaveFile_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QSaveFile_virtualbase_bytesToWrite".}
proc fcQSaveFile_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_bytesToWrite".}
proc fQSaveFile_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QSaveFile_virtualbase_canReadLine".}
proc fcQSaveFile_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_canReadLine".}
proc fQSaveFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QSaveFile_virtualbase_waitForReadyRead".}
proc fcQSaveFile_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_waitForReadyRead".}
proc fQSaveFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QSaveFile_virtualbase_waitForBytesWritten".}
proc fcQSaveFile_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_waitForBytesWritten".}
proc fQSaveFile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSaveFile_virtualbase_event".}
proc fcQSaveFile_override_virtual_event(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_event".}
proc fQSaveFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSaveFile_virtualbase_eventFilter".}
proc fcQSaveFile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_eventFilter".}
proc fQSaveFile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSaveFile_virtualbase_timerEvent".}
proc fcQSaveFile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_timerEvent".}
proc fQSaveFile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSaveFile_virtualbase_childEvent".}
proc fcQSaveFile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_childEvent".}
proc fQSaveFile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSaveFile_virtualbase_customEvent".}
proc fcQSaveFile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_customEvent".}
proc fQSaveFile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSaveFile_virtualbase_connectNotify".}
proc fcQSaveFile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_connectNotify".}
proc fQSaveFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSaveFile_virtualbase_disconnectNotify".}
proc fcQSaveFile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_disconnectNotify".}
proc fcQSaveFile_staticMetaObject(): pointer {.importc: "QSaveFile_staticMetaObject".}
proc fcQSaveFile_delete(self: pointer) {.importc: "QSaveFile_delete".}


func init*(T: type gen_qsavefile_types.QSaveFile, h: ptr cQSaveFile): gen_qsavefile_types.QSaveFile =
  T(h: h)
proc create*(T: type gen_qsavefile_types.QSaveFile, name: string): gen_qsavefile_types.QSaveFile =
  gen_qsavefile_types.QSaveFile.init(fcQSaveFile_new(struct_miqt_string(data: name, len: csize_t(len(name)))))

proc create*(T: type gen_qsavefile_types.QSaveFile, ): gen_qsavefile_types.QSaveFile =
  gen_qsavefile_types.QSaveFile.init(fcQSaveFile_new2())

proc create*(T: type gen_qsavefile_types.QSaveFile, name: string, parent: gen_qobject_types.QObject): gen_qsavefile_types.QSaveFile =
  gen_qsavefile_types.QSaveFile.init(fcQSaveFile_new3(struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))

proc create*(T: type gen_qsavefile_types.QSaveFile, parent: gen_qobject_types.QObject): gen_qsavefile_types.QSaveFile =
  gen_qsavefile_types.QSaveFile.init(fcQSaveFile_new4(parent.h))

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

proc trUtf8*(_: type gen_qsavefile_types.QSaveFile, s: cstring): string =
  let v_ms = fcQSaveFile_trUtf8(s)
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

proc trUtf8*(_: type gen_qsavefile_types.QSaveFile, s: cstring, c: cstring): string =
  let v_ms = fcQSaveFile_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsavefile_types.QSaveFile, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSaveFile_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSaveFilemetaObject*(self: gen_qsavefile_types.QSaveFile, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQSaveFile_virtualbase_metaObject(self.h))

type QSaveFilemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilemetaObjectProc) =
  # TODO check subclass
  var tmp = new QSaveFilemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_metaObject(self: ptr cQSaveFile, slot: int): pointer {.exportc: "miqt_exec_callback_QSaveFile_metaObject ".} =
  var nimfunc = cast[ptr QSaveFilemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSaveFilemetacast*(self: gen_qsavefile_types.QSaveFile, param1: cstring): pointer =
  fQSaveFile_virtualbase_metacast(self.h, param1)

type QSaveFilemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilemetacastProc) =
  # TODO check subclass
  var tmp = new QSaveFilemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_metacast(self: ptr cQSaveFile, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSaveFile_metacast ".} =
  var nimfunc = cast[ptr QSaveFilemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSaveFilemetacall*(self: gen_qsavefile_types.QSaveFile, param1: cint, param2: cint, param3: pointer): cint =
  fQSaveFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSaveFilemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilemetacallProc) =
  # TODO check subclass
  var tmp = new QSaveFilemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_metacall(self: ptr cQSaveFile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSaveFile_metacall ".} =
  var nimfunc = cast[ptr QSaveFilemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSaveFilefileName*(self: gen_qsavefile_types.QSaveFile, ): string =
  let v_ms = fQSaveFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSaveFilefileNameProc* = proc(): string
proc onfileName*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilefileNameProc) =
  # TODO check subclass
  var tmp = new QSaveFilefileNameProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_fileName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_fileName(self: ptr cQSaveFile, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QSaveFile_fileName ".} =
  var nimfunc = cast[ptr QSaveFilefileNameProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QSaveFileopen*(self: gen_qsavefile_types.QSaveFile, flags: cint): bool =
  fQSaveFile_virtualbase_open(self.h, cint(flags))

type QSaveFileopenProc* = proc(flags: cint): bool
proc onopen*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileopenProc) =
  # TODO check subclass
  var tmp = new QSaveFileopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_open(self: ptr cQSaveFile, slot: int, flags: cint): bool {.exportc: "miqt_exec_callback_QSaveFile_open ".} =
  var nimfunc = cast[ptr QSaveFileopenProc](cast[pointer](slot))
  let slotval1 = cint(flags)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSaveFilewriteData*(self: gen_qsavefile_types.QSaveFile, data: cstring, len: clonglong): clonglong =
  fQSaveFile_virtualbase_writeData(self.h, data, len)

type QSaveFilewriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilewriteDataProc) =
  # TODO check subclass
  var tmp = new QSaveFilewriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_writeData(self: ptr cQSaveFile, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QSaveFile_writeData ".} =
  var nimfunc = cast[ptr QSaveFilewriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSaveFileisSequential*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fQSaveFile_virtualbase_isSequential(self.h)

type QSaveFileisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileisSequentialProc) =
  # TODO check subclass
  var tmp = new QSaveFileisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_isSequential(self: ptr cQSaveFile, slot: int): bool {.exportc: "miqt_exec_callback_QSaveFile_isSequential ".} =
  var nimfunc = cast[ptr QSaveFileisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSaveFilepos*(self: gen_qsavefile_types.QSaveFile, ): clonglong =
  fQSaveFile_virtualbase_pos(self.h)

type QSaveFileposProc* = proc(): clonglong
proc onpos*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileposProc) =
  # TODO check subclass
  var tmp = new QSaveFileposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_pos(self: ptr cQSaveFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QSaveFile_pos ".} =
  var nimfunc = cast[ptr QSaveFileposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSaveFileseek*(self: gen_qsavefile_types.QSaveFile, offset: clonglong): bool =
  fQSaveFile_virtualbase_seek(self.h, offset)

type QSaveFileseekProc* = proc(offset: clonglong): bool
proc onseek*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileseekProc) =
  # TODO check subclass
  var tmp = new QSaveFileseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_seek(self: ptr cQSaveFile, slot: int, offset: clonglong): bool {.exportc: "miqt_exec_callback_QSaveFile_seek ".} =
  var nimfunc = cast[ptr QSaveFileseekProc](cast[pointer](slot))
  let slotval1 = offset


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSaveFileatEnd*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fQSaveFile_virtualbase_atEnd(self.h)

type QSaveFileatEndProc* = proc(): bool
proc onatEnd*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileatEndProc) =
  # TODO check subclass
  var tmp = new QSaveFileatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_atEnd(self: ptr cQSaveFile, slot: int): bool {.exportc: "miqt_exec_callback_QSaveFile_atEnd ".} =
  var nimfunc = cast[ptr QSaveFileatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSaveFilesize*(self: gen_qsavefile_types.QSaveFile, ): clonglong =
  fQSaveFile_virtualbase_size(self.h)

type QSaveFilesizeProc* = proc(): clonglong
proc onsize*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilesizeProc) =
  # TODO check subclass
  var tmp = new QSaveFilesizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_size(self: ptr cQSaveFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QSaveFile_size ".} =
  var nimfunc = cast[ptr QSaveFilesizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSaveFileresize*(self: gen_qsavefile_types.QSaveFile, sz: clonglong): bool =
  fQSaveFile_virtualbase_resize(self.h, sz)

type QSaveFileresizeProc* = proc(sz: clonglong): bool
proc onresize*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileresizeProc) =
  # TODO check subclass
  var tmp = new QSaveFileresizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_resize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_resize(self: ptr cQSaveFile, slot: int, sz: clonglong): bool {.exportc: "miqt_exec_callback_QSaveFile_resize ".} =
  var nimfunc = cast[ptr QSaveFileresizeProc](cast[pointer](slot))
  let slotval1 = sz


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSaveFilepermissions*(self: gen_qsavefile_types.QSaveFile, ): cint =
  cint(fQSaveFile_virtualbase_permissions(self.h))

type QSaveFilepermissionsProc* = proc(): cint
proc onpermissions*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilepermissionsProc) =
  # TODO check subclass
  var tmp = new QSaveFilepermissionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_permissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_permissions(self: ptr cQSaveFile, slot: int): cint {.exportc: "miqt_exec_callback_QSaveFile_permissions ".} =
  var nimfunc = cast[ptr QSaveFilepermissionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QSaveFilesetPermissions*(self: gen_qsavefile_types.QSaveFile, permissionSpec: cint): bool =
  fQSaveFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

type QSaveFilesetPermissionsProc* = proc(permissionSpec: cint): bool
proc onsetPermissions*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilesetPermissionsProc) =
  # TODO check subclass
  var tmp = new QSaveFilesetPermissionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_setPermissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_setPermissions(self: ptr cQSaveFile, slot: int, permissionSpec: cint): bool {.exportc: "miqt_exec_callback_QSaveFile_setPermissions ".} =
  var nimfunc = cast[ptr QSaveFilesetPermissionsProc](cast[pointer](slot))
  let slotval1 = cint(permissionSpec)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSaveFilereadData*(self: gen_qsavefile_types.QSaveFile, data: cstring, maxlen: clonglong): clonglong =
  fQSaveFile_virtualbase_readData(self.h, data, maxlen)

type QSaveFilereadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilereadDataProc) =
  # TODO check subclass
  var tmp = new QSaveFilereadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_readData(self: ptr cQSaveFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSaveFile_readData ".} =
  var nimfunc = cast[ptr QSaveFilereadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSaveFilereadLineData*(self: gen_qsavefile_types.QSaveFile, data: cstring, maxlen: clonglong): clonglong =
  fQSaveFile_virtualbase_readLineData(self.h, data, maxlen)

type QSaveFilereadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilereadLineDataProc) =
  # TODO check subclass
  var tmp = new QSaveFilereadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_readLineData(self: ptr cQSaveFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSaveFile_readLineData ".} =
  var nimfunc = cast[ptr QSaveFilereadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSaveFilereset*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fQSaveFile_virtualbase_reset(self.h)

type QSaveFileresetProc* = proc(): bool
proc onreset*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileresetProc) =
  # TODO check subclass
  var tmp = new QSaveFileresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_reset(self: ptr cQSaveFile, slot: int): bool {.exportc: "miqt_exec_callback_QSaveFile_reset ".} =
  var nimfunc = cast[ptr QSaveFileresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSaveFilebytesAvailable*(self: gen_qsavefile_types.QSaveFile, ): clonglong =
  fQSaveFile_virtualbase_bytesAvailable(self.h)

type QSaveFilebytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilebytesAvailableProc) =
  # TODO check subclass
  var tmp = new QSaveFilebytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_bytesAvailable(self: ptr cQSaveFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QSaveFile_bytesAvailable ".} =
  var nimfunc = cast[ptr QSaveFilebytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSaveFilebytesToWrite*(self: gen_qsavefile_types.QSaveFile, ): clonglong =
  fQSaveFile_virtualbase_bytesToWrite(self.h)

type QSaveFilebytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilebytesToWriteProc) =
  # TODO check subclass
  var tmp = new QSaveFilebytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_bytesToWrite(self: ptr cQSaveFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QSaveFile_bytesToWrite ".} =
  var nimfunc = cast[ptr QSaveFilebytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSaveFilecanReadLine*(self: gen_qsavefile_types.QSaveFile, ): bool =
  fQSaveFile_virtualbase_canReadLine(self.h)

type QSaveFilecanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilecanReadLineProc) =
  # TODO check subclass
  var tmp = new QSaveFilecanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_canReadLine(self: ptr cQSaveFile, slot: int): bool {.exportc: "miqt_exec_callback_QSaveFile_canReadLine ".} =
  var nimfunc = cast[ptr QSaveFilecanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSaveFilewaitForReadyRead*(self: gen_qsavefile_types.QSaveFile, msecs: cint): bool =
  fQSaveFile_virtualbase_waitForReadyRead(self.h, msecs)

type QSaveFilewaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilewaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QSaveFilewaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_waitForReadyRead(self: ptr cQSaveFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSaveFile_waitForReadyRead ".} =
  var nimfunc = cast[ptr QSaveFilewaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSaveFilewaitForBytesWritten*(self: gen_qsavefile_types.QSaveFile, msecs: cint): bool =
  fQSaveFile_virtualbase_waitForBytesWritten(self.h, msecs)

type QSaveFilewaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilewaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QSaveFilewaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_waitForBytesWritten(self: ptr cQSaveFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSaveFile_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QSaveFilewaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSaveFileevent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QEvent): bool =
  fQSaveFile_virtualbase_event(self.h, event.h)

type QSaveFileeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileeventProc) =
  # TODO check subclass
  var tmp = new QSaveFileeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_event(self: ptr cQSaveFile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSaveFile_event ".} =
  var nimfunc = cast[ptr QSaveFileeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSaveFileeventFilter*(self: gen_qsavefile_types.QSaveFile, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSaveFile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSaveFileeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileeventFilterProc) =
  # TODO check subclass
  var tmp = new QSaveFileeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_eventFilter(self: ptr cQSaveFile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSaveFile_eventFilter ".} =
  var nimfunc = cast[ptr QSaveFileeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSaveFiletimerEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSaveFile_virtualbase_timerEvent(self.h, event.h)

type QSaveFiletimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFiletimerEventProc) =
  # TODO check subclass
  var tmp = new QSaveFiletimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_timerEvent(self: ptr cQSaveFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_timerEvent ".} =
  var nimfunc = cast[ptr QSaveFiletimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSaveFilechildEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QChildEvent): void =
  fQSaveFile_virtualbase_childEvent(self.h, event.h)

type QSaveFilechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilechildEventProc) =
  # TODO check subclass
  var tmp = new QSaveFilechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_childEvent(self: ptr cQSaveFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_childEvent ".} =
  var nimfunc = cast[ptr QSaveFilechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSaveFilecustomEvent*(self: gen_qsavefile_types.QSaveFile, event: gen_qcoreevent_types.QEvent): void =
  fQSaveFile_virtualbase_customEvent(self.h, event.h)

type QSaveFilecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFilecustomEventProc) =
  # TODO check subclass
  var tmp = new QSaveFilecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_customEvent(self: ptr cQSaveFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_customEvent ".} =
  var nimfunc = cast[ptr QSaveFilecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSaveFileconnectNotify*(self: gen_qsavefile_types.QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSaveFile_virtualbase_connectNotify(self.h, signal.h)

type QSaveFileconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFileconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSaveFileconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_connectNotify(self: ptr cQSaveFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_connectNotify ".} =
  var nimfunc = cast[ptr QSaveFileconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSaveFiledisconnectNotify*(self: gen_qsavefile_types.QSaveFile, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSaveFile_virtualbase_disconnectNotify(self.h, signal.h)

type QSaveFiledisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsavefile_types.QSaveFile, slot: QSaveFiledisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSaveFiledisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_disconnectNotify(self: ptr cQSaveFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_disconnectNotify ".} =
  var nimfunc = cast[ptr QSaveFiledisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsavefile_types.QSaveFile): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSaveFile_staticMetaObject())
proc delete*(self: gen_qsavefile_types.QSaveFile) =
  fcQSaveFile_delete(self.h)
