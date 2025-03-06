import ./Qt5Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
{.compile("gen_qprocess.cpp", cflags).}


type QProcessProcessErrorEnum* = distinct cint
template FailedToStart*(_: type QProcessProcessErrorEnum): untyped = 0
template Crashed*(_: type QProcessProcessErrorEnum): untyped = 1
template Timedout*(_: type QProcessProcessErrorEnum): untyped = 2
template ReadError*(_: type QProcessProcessErrorEnum): untyped = 3
template WriteError*(_: type QProcessProcessErrorEnum): untyped = 4
template UnknownError*(_: type QProcessProcessErrorEnum): untyped = 5


type QProcessProcessStateEnum* = distinct cint
template NotRunning*(_: type QProcessProcessStateEnum): untyped = 0
template Starting*(_: type QProcessProcessStateEnum): untyped = 1
template Running*(_: type QProcessProcessStateEnum): untyped = 2


type QProcessProcessChannelEnum* = distinct cint
template StandardOutput*(_: type QProcessProcessChannelEnum): untyped = 0
template StandardError*(_: type QProcessProcessChannelEnum): untyped = 1


type QProcessProcessChannelModeEnum* = distinct cint
template SeparateChannels*(_: type QProcessProcessChannelModeEnum): untyped = 0
template MergedChannels*(_: type QProcessProcessChannelModeEnum): untyped = 1
template ForwardedChannels*(_: type QProcessProcessChannelModeEnum): untyped = 2
template ForwardedOutputChannel*(_: type QProcessProcessChannelModeEnum): untyped = 3
template ForwardedErrorChannel*(_: type QProcessProcessChannelModeEnum): untyped = 4


type QProcessInputChannelModeEnum* = distinct cint
template ManagedInputChannel*(_: type QProcessInputChannelModeEnum): untyped = 0
template ForwardedInputChannel*(_: type QProcessInputChannelModeEnum): untyped = 1


type QProcessExitStatusEnum* = distinct cint
template NormalExit*(_: type QProcessExitStatusEnum): untyped = 0
template CrashExit*(_: type QProcessExitStatusEnum): untyped = 1


import ./gen_qprocess_types
export gen_qprocess_types

import
  ./gen_qcoreevent_types,
  ./gen_qiodevice,
  ./gen_qmetaobject_types,
  ./gen_qobject_types,
  ./gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qiodevice,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types

type cQProcessEnvironment*{.exportc: "QProcessEnvironment", incompleteStruct.} = object
type cQProcess*{.exportc: "QProcess", incompleteStruct.} = object

proc fcQProcessEnvironment_operatorAssign(self: pointer, other: pointer): void {.importc: "QProcessEnvironment_operatorAssign".}
proc fcQProcessEnvironment_swap(self: pointer, other: pointer): void {.importc: "QProcessEnvironment_swap".}
proc fcQProcessEnvironment_operatorEqual(self: pointer, other: pointer): bool {.importc: "QProcessEnvironment_operatorEqual".}
proc fcQProcessEnvironment_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QProcessEnvironment_operatorNotEqual".}
proc fcQProcessEnvironment_isEmpty(self: pointer, ): bool {.importc: "QProcessEnvironment_isEmpty".}
proc fcQProcessEnvironment_clear(self: pointer, ): void {.importc: "QProcessEnvironment_clear".}
proc fcQProcessEnvironment_contains(self: pointer, name: struct_miqt_string): bool {.importc: "QProcessEnvironment_contains".}
proc fcQProcessEnvironment_insert(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QProcessEnvironment_insert".}
proc fcQProcessEnvironment_remove(self: pointer, name: struct_miqt_string): void {.importc: "QProcessEnvironment_remove".}
proc fcQProcessEnvironment_value(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QProcessEnvironment_value".}
proc fcQProcessEnvironment_toStringList(self: pointer, ): struct_miqt_array {.importc: "QProcessEnvironment_toStringList".}
proc fcQProcessEnvironment_keys(self: pointer, ): struct_miqt_array {.importc: "QProcessEnvironment_keys".}
proc fcQProcessEnvironment_insertWithQProcessEnvironment(self: pointer, e: pointer): void {.importc: "QProcessEnvironment_insertWithQProcessEnvironment".}
proc fcQProcessEnvironment_systemEnvironment(): pointer {.importc: "QProcessEnvironment_systemEnvironment".}
proc fcQProcessEnvironment_value2(self: pointer, name: struct_miqt_string, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QProcessEnvironment_value2".}
proc fcQProcessEnvironment_new(): ptr cQProcessEnvironment {.importc: "QProcessEnvironment_new".}
proc fcQProcessEnvironment_new2(other: pointer): ptr cQProcessEnvironment {.importc: "QProcessEnvironment_new2".}
proc fcQProcessEnvironment_delete(self: pointer) {.importc: "QProcessEnvironment_delete".}
proc fcQProcess_metaObject(self: pointer, ): pointer {.importc: "QProcess_metaObject".}
proc fcQProcess_metacast(self: pointer, param1: cstring): pointer {.importc: "QProcess_metacast".}
proc fcQProcess_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProcess_metacall".}
proc fcQProcess_tr(s: cstring): struct_miqt_string {.importc: "QProcess_tr".}
proc fcQProcess_trUtf8(s: cstring): struct_miqt_string {.importc: "QProcess_trUtf8".}
proc fcQProcess_start(self: pointer, program: struct_miqt_string, arguments: struct_miqt_array): void {.importc: "QProcess_start".}
proc fcQProcess_startWithCommand(self: pointer, command: struct_miqt_string): void {.importc: "QProcess_startWithCommand".}
proc fcQProcess_start2(self: pointer, ): void {.importc: "QProcess_start2".}
proc fcQProcess_startDetached(self: pointer, ): bool {.importc: "QProcess_startDetached".}
proc fcQProcess_open(self: pointer, mode: cint): bool {.importc: "QProcess_open".}
proc fcQProcess_program(self: pointer, ): struct_miqt_string {.importc: "QProcess_program".}
proc fcQProcess_setProgram(self: pointer, program: struct_miqt_string): void {.importc: "QProcess_setProgram".}
proc fcQProcess_arguments(self: pointer, ): struct_miqt_array {.importc: "QProcess_arguments".}
proc fcQProcess_setArguments(self: pointer, arguments: struct_miqt_array): void {.importc: "QProcess_setArguments".}
proc fcQProcess_readChannelMode(self: pointer, ): cint {.importc: "QProcess_readChannelMode".}
proc fcQProcess_setReadChannelMode(self: pointer, mode: cint): void {.importc: "QProcess_setReadChannelMode".}
proc fcQProcess_processChannelMode(self: pointer, ): cint {.importc: "QProcess_processChannelMode".}
proc fcQProcess_setProcessChannelMode(self: pointer, mode: cint): void {.importc: "QProcess_setProcessChannelMode".}
proc fcQProcess_inputChannelMode(self: pointer, ): cint {.importc: "QProcess_inputChannelMode".}
proc fcQProcess_setInputChannelMode(self: pointer, mode: cint): void {.importc: "QProcess_setInputChannelMode".}
proc fcQProcess_readChannel(self: pointer, ): cint {.importc: "QProcess_readChannel".}
proc fcQProcess_setReadChannel(self: pointer, channel: cint): void {.importc: "QProcess_setReadChannel".}
proc fcQProcess_closeReadChannel(self: pointer, channel: cint): void {.importc: "QProcess_closeReadChannel".}
proc fcQProcess_closeWriteChannel(self: pointer, ): void {.importc: "QProcess_closeWriteChannel".}
proc fcQProcess_setStandardInputFile(self: pointer, fileName: struct_miqt_string): void {.importc: "QProcess_setStandardInputFile".}
proc fcQProcess_setStandardOutputFile(self: pointer, fileName: struct_miqt_string): void {.importc: "QProcess_setStandardOutputFile".}
proc fcQProcess_setStandardErrorFile(self: pointer, fileName: struct_miqt_string): void {.importc: "QProcess_setStandardErrorFile".}
proc fcQProcess_setStandardOutputProcess(self: pointer, destination: pointer): void {.importc: "QProcess_setStandardOutputProcess".}
proc fcQProcess_workingDirectory(self: pointer, ): struct_miqt_string {.importc: "QProcess_workingDirectory".}
proc fcQProcess_setWorkingDirectory(self: pointer, dir: struct_miqt_string): void {.importc: "QProcess_setWorkingDirectory".}
proc fcQProcess_setEnvironment(self: pointer, environment: struct_miqt_array): void {.importc: "QProcess_setEnvironment".}
proc fcQProcess_environment(self: pointer, ): struct_miqt_array {.importc: "QProcess_environment".}
proc fcQProcess_setProcessEnvironment(self: pointer, environment: pointer): void {.importc: "QProcess_setProcessEnvironment".}
proc fcQProcess_processEnvironment(self: pointer, ): pointer {.importc: "QProcess_processEnvironment".}
proc fcQProcess_error(self: pointer, ): cint {.importc: "QProcess_error".}
proc fcQProcess_state(self: pointer, ): cint {.importc: "QProcess_state".}
proc fcQProcess_pid(self: pointer, ): clonglong {.importc: "QProcess_pid".}
proc fcQProcess_processId(self: pointer, ): clonglong {.importc: "QProcess_processId".}
proc fcQProcess_waitForStarted(self: pointer, ): bool {.importc: "QProcess_waitForStarted".}
proc fcQProcess_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QProcess_waitForReadyRead".}
proc fcQProcess_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QProcess_waitForBytesWritten".}
proc fcQProcess_waitForFinished(self: pointer, ): bool {.importc: "QProcess_waitForFinished".}
proc fcQProcess_readAllStandardOutput(self: pointer, ): struct_miqt_string {.importc: "QProcess_readAllStandardOutput".}
proc fcQProcess_readAllStandardError(self: pointer, ): struct_miqt_string {.importc: "QProcess_readAllStandardError".}
proc fcQProcess_exitCode(self: pointer, ): cint {.importc: "QProcess_exitCode".}
proc fcQProcess_exitStatus(self: pointer, ): cint {.importc: "QProcess_exitStatus".}
proc fcQProcess_bytesAvailable(self: pointer, ): clonglong {.importc: "QProcess_bytesAvailable".}
proc fcQProcess_bytesToWrite(self: pointer, ): clonglong {.importc: "QProcess_bytesToWrite".}
proc fcQProcess_isSequential(self: pointer, ): bool {.importc: "QProcess_isSequential".}
proc fcQProcess_canReadLine(self: pointer, ): bool {.importc: "QProcess_canReadLine".}
proc fcQProcess_close(self: pointer, ): void {.importc: "QProcess_close".}
proc fcQProcess_atEnd(self: pointer, ): bool {.importc: "QProcess_atEnd".}
proc fcQProcess_execute(program: struct_miqt_string, arguments: struct_miqt_array): cint {.importc: "QProcess_execute".}
proc fcQProcess_executeWithCommand(command: struct_miqt_string): cint {.importc: "QProcess_executeWithCommand".}
proc fcQProcess_startDetached2(program: struct_miqt_string, arguments: struct_miqt_array, workingDirectory: struct_miqt_string): bool {.importc: "QProcess_startDetached2".}
proc fcQProcess_startDetached3(program: struct_miqt_string, arguments: struct_miqt_array): bool {.importc: "QProcess_startDetached3".}
proc fcQProcess_startDetachedWithCommand(command: struct_miqt_string): bool {.importc: "QProcess_startDetachedWithCommand".}
proc fcQProcess_systemEnvironment(): struct_miqt_array {.importc: "QProcess_systemEnvironment".}
proc fcQProcess_nullDevice(): struct_miqt_string {.importc: "QProcess_nullDevice".}
proc fcQProcess_terminate(self: pointer, ): void {.importc: "QProcess_terminate".}
proc fcQProcess_kill(self: pointer, ): void {.importc: "QProcess_kill".}
proc fcQProcess_finished(self: pointer, exitCode: cint): void {.importc: "QProcess_finished".}
proc fcQProcess_connect_finished(self: pointer, slot: int, callback: proc (slot: int, exitCode: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QProcess_connect_finished".}
proc fcQProcess_finished2(self: pointer, exitCode: cint, exitStatus: cint): void {.importc: "QProcess_finished2".}
proc fcQProcess_connect_finished2(self: pointer, slot: int, callback: proc (slot: int, exitCode: cint, exitStatus: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QProcess_connect_finished2".}
proc fcQProcess_errorWithError(self: pointer, error: cint): void {.importc: "QProcess_errorWithError".}
proc fcQProcess_connect_errorWithError(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QProcess_connect_errorWithError".}
proc fcQProcess_errorOccurred(self: pointer, error: cint): void {.importc: "QProcess_errorOccurred".}
proc fcQProcess_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QProcess_connect_errorOccurred".}
proc fcQProcess_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProcess_tr2".}
proc fcQProcess_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProcess_tr3".}
proc fcQProcess_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QProcess_trUtf82".}
proc fcQProcess_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProcess_trUtf83".}
proc fcQProcess_start3(self: pointer, program: struct_miqt_string, arguments: struct_miqt_array, mode: cint): void {.importc: "QProcess_start3".}
proc fcQProcess_start22(self: pointer, command: struct_miqt_string, mode: cint): void {.importc: "QProcess_start22".}
proc fcQProcess_start1(self: pointer, mode: cint): void {.importc: "QProcess_start1".}
proc fcQProcess_startDetached1(self: pointer, pid: ptr clonglong): bool {.importc: "QProcess_startDetached1".}
proc fcQProcess_setStandardOutputFile2(self: pointer, fileName: struct_miqt_string, mode: cint): void {.importc: "QProcess_setStandardOutputFile2".}
proc fcQProcess_setStandardErrorFile2(self: pointer, fileName: struct_miqt_string, mode: cint): void {.importc: "QProcess_setStandardErrorFile2".}
proc fcQProcess_waitForStarted1(self: pointer, msecs: cint): bool {.importc: "QProcess_waitForStarted1".}
proc fcQProcess_waitForFinished1(self: pointer, msecs: cint): bool {.importc: "QProcess_waitForFinished1".}
proc fcQProcess_startDetached4(program: struct_miqt_string, arguments: struct_miqt_array, workingDirectory: struct_miqt_string, pid: ptr clonglong): bool {.importc: "QProcess_startDetached4".}
type cQProcessVTable = object
  destructor*: proc(vtbl: ptr cQProcessVTable, self: ptr cQProcess) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setupChildProcess*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  readData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  writeData*: proc(vtbl, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  pos*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  seek*: proc(vtbl, self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQProcess_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QProcess_virtualbase_metaObject".}
proc fcQProcess_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QProcess_virtualbase_metacast".}
proc fcQProcess_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProcess_virtualbase_metacall".}
proc fcQProcess_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QProcess_virtualbase_open".}
proc fcQProcess_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QProcess_virtualbase_waitForReadyRead".}
proc fcQProcess_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QProcess_virtualbase_waitForBytesWritten".}
proc fcQProcess_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QProcess_virtualbase_bytesAvailable".}
proc fcQProcess_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QProcess_virtualbase_bytesToWrite".}
proc fcQProcess_virtualbase_isSequential(self: pointer, ): bool {.importc: "QProcess_virtualbase_isSequential".}
proc fcQProcess_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QProcess_virtualbase_canReadLine".}
proc fcQProcess_virtualbase_close(self: pointer, ): void {.importc: "QProcess_virtualbase_close".}
proc fcQProcess_virtualbase_atEnd(self: pointer, ): bool {.importc: "QProcess_virtualbase_atEnd".}
proc fcQProcess_virtualbase_setupChildProcess(self: pointer, ): void {.importc: "QProcess_virtualbase_setupChildProcess".}
proc fcQProcess_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QProcess_virtualbase_readData".}
proc fcQProcess_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong {.importc: "QProcess_virtualbase_writeData".}
proc fcQProcess_virtualbase_pos(self: pointer, ): clonglong {.importc: "QProcess_virtualbase_pos".}
proc fcQProcess_virtualbase_size(self: pointer, ): clonglong {.importc: "QProcess_virtualbase_size".}
proc fcQProcess_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QProcess_virtualbase_seek".}
proc fcQProcess_virtualbase_reset(self: pointer, ): bool {.importc: "QProcess_virtualbase_reset".}
proc fcQProcess_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QProcess_virtualbase_readLineData".}
proc fcQProcess_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QProcess_virtualbase_event".}
proc fcQProcess_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QProcess_virtualbase_eventFilter".}
proc fcQProcess_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QProcess_virtualbase_timerEvent".}
proc fcQProcess_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QProcess_virtualbase_childEvent".}
proc fcQProcess_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QProcess_virtualbase_customEvent".}
proc fcQProcess_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QProcess_virtualbase_connectNotify".}
proc fcQProcess_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QProcess_virtualbase_disconnectNotify".}
proc fcQProcess_protectedbase_setProcessState(self: pointer, state: cint): void {.importc: "QProcess_protectedbase_setProcessState".}
proc fcQProcess_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QProcess_protectedbase_setOpenMode".}
proc fcQProcess_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QProcess_protectedbase_setErrorString".}
proc fcQProcess_protectedbase_sender(self: pointer, ): pointer {.importc: "QProcess_protectedbase_sender".}
proc fcQProcess_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QProcess_protectedbase_senderSignalIndex".}
proc fcQProcess_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QProcess_protectedbase_receivers".}
proc fcQProcess_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QProcess_protectedbase_isSignalConnected".}
proc fcQProcess_new(vtbl: pointer, ): ptr cQProcess {.importc: "QProcess_new".}
proc fcQProcess_new2(vtbl: pointer, parent: pointer): ptr cQProcess {.importc: "QProcess_new2".}
proc fcQProcess_staticMetaObject(): pointer {.importc: "QProcess_staticMetaObject".}
proc fcQProcess_delete(self: pointer) {.importc: "QProcess_delete".}

proc operatorAssign*(self: gen_qprocess_types.QProcessEnvironment, other: gen_qprocess_types.QProcessEnvironment): void =
  fcQProcessEnvironment_operatorAssign(self.h, other.h)

proc swap*(self: gen_qprocess_types.QProcessEnvironment, other: gen_qprocess_types.QProcessEnvironment): void =
  fcQProcessEnvironment_swap(self.h, other.h)

proc operatorEqual*(self: gen_qprocess_types.QProcessEnvironment, other: gen_qprocess_types.QProcessEnvironment): bool =
  fcQProcessEnvironment_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qprocess_types.QProcessEnvironment, other: gen_qprocess_types.QProcessEnvironment): bool =
  fcQProcessEnvironment_operatorNotEqual(self.h, other.h)

proc isEmpty*(self: gen_qprocess_types.QProcessEnvironment, ): bool =
  fcQProcessEnvironment_isEmpty(self.h)

proc clear*(self: gen_qprocess_types.QProcessEnvironment, ): void =
  fcQProcessEnvironment_clear(self.h)

proc contains*(self: gen_qprocess_types.QProcessEnvironment, name: string): bool =
  fcQProcessEnvironment_contains(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc insert*(self: gen_qprocess_types.QProcessEnvironment, name: string, value: string): void =
  fcQProcessEnvironment_insert(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc remove*(self: gen_qprocess_types.QProcessEnvironment, name: string): void =
  fcQProcessEnvironment_remove(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc value*(self: gen_qprocess_types.QProcessEnvironment, name: string): string =
  let v_ms = fcQProcessEnvironment_value(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringList*(self: gen_qprocess_types.QProcessEnvironment, ): seq[string] =
  var v_ma = fcQProcessEnvironment_toStringList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc keys*(self: gen_qprocess_types.QProcessEnvironment, ): seq[string] =
  var v_ma = fcQProcessEnvironment_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc insert*(self: gen_qprocess_types.QProcessEnvironment, e: gen_qprocess_types.QProcessEnvironment): void =
  fcQProcessEnvironment_insertWithQProcessEnvironment(self.h, e.h)

proc systemEnvironment*(_: type gen_qprocess_types.QProcessEnvironment, ): gen_qprocess_types.QProcessEnvironment =
  gen_qprocess_types.QProcessEnvironment(h: fcQProcessEnvironment_systemEnvironment())

proc value*(self: gen_qprocess_types.QProcessEnvironment, name: string, defaultValue: string): string =
  let v_ms = fcQProcessEnvironment_value2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qprocess_types.QProcessEnvironment): gen_qprocess_types.QProcessEnvironment =
  gen_qprocess_types.QProcessEnvironment(h: fcQProcessEnvironment_new())

proc create*(T: type gen_qprocess_types.QProcessEnvironment,
    other: gen_qprocess_types.QProcessEnvironment): gen_qprocess_types.QProcessEnvironment =
  gen_qprocess_types.QProcessEnvironment(h: fcQProcessEnvironment_new2(other.h))

proc delete*(self: gen_qprocess_types.QProcessEnvironment) =
  fcQProcessEnvironment_delete(self.h)
proc metaObject*(self: gen_qprocess_types.QProcess, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProcess_metaObject(self.h))

proc metacast*(self: gen_qprocess_types.QProcess, param1: cstring): pointer =
  fcQProcess_metacast(self.h, param1)

proc metacall*(self: gen_qprocess_types.QProcess, param1: cint, param2: cint, param3: pointer): cint =
  fcQProcess_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qprocess_types.QProcess, s: cstring): string =
  let v_ms = fcQProcess_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprocess_types.QProcess, s: cstring): string =
  let v_ms = fcQProcess_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qprocess_types.QProcess, program: string, arguments: seq[string]): void =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_start(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc start*(self: gen_qprocess_types.QProcess, command: string): void =
  fcQProcess_startWithCommand(self.h, struct_miqt_string(data: command, len: csize_t(len(command))))

proc start*(self: gen_qprocess_types.QProcess, ): void =
  fcQProcess_start2(self.h)

proc startDetached*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_startDetached(self.h)

proc open*(self: gen_qprocess_types.QProcess, mode: cint): bool =
  fcQProcess_open(self.h, cint(mode))

proc program*(self: gen_qprocess_types.QProcess, ): string =
  let v_ms = fcQProcess_program(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setProgram*(self: gen_qprocess_types.QProcess, program: string): void =
  fcQProcess_setProgram(self.h, struct_miqt_string(data: program, len: csize_t(len(program))))

proc arguments*(self: gen_qprocess_types.QProcess, ): seq[string] =
  var v_ma = fcQProcess_arguments(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setArguments*(self: gen_qprocess_types.QProcess, arguments: seq[string]): void =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_setArguments(self.h, struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc readChannelMode*(self: gen_qprocess_types.QProcess, ): cint =
  cint(fcQProcess_readChannelMode(self.h))

proc setReadChannelMode*(self: gen_qprocess_types.QProcess, mode: cint): void =
  fcQProcess_setReadChannelMode(self.h, cint(mode))

proc processChannelMode*(self: gen_qprocess_types.QProcess, ): cint =
  cint(fcQProcess_processChannelMode(self.h))

proc setProcessChannelMode*(self: gen_qprocess_types.QProcess, mode: cint): void =
  fcQProcess_setProcessChannelMode(self.h, cint(mode))

proc inputChannelMode*(self: gen_qprocess_types.QProcess, ): cint =
  cint(fcQProcess_inputChannelMode(self.h))

proc setInputChannelMode*(self: gen_qprocess_types.QProcess, mode: cint): void =
  fcQProcess_setInputChannelMode(self.h, cint(mode))

proc readChannel*(self: gen_qprocess_types.QProcess, ): cint =
  cint(fcQProcess_readChannel(self.h))

proc setReadChannel*(self: gen_qprocess_types.QProcess, channel: cint): void =
  fcQProcess_setReadChannel(self.h, cint(channel))

proc closeReadChannel*(self: gen_qprocess_types.QProcess, channel: cint): void =
  fcQProcess_closeReadChannel(self.h, cint(channel))

proc closeWriteChannel*(self: gen_qprocess_types.QProcess, ): void =
  fcQProcess_closeWriteChannel(self.h)

proc setStandardInputFile*(self: gen_qprocess_types.QProcess, fileName: string): void =
  fcQProcess_setStandardInputFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setStandardOutputFile*(self: gen_qprocess_types.QProcess, fileName: string): void =
  fcQProcess_setStandardOutputFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setStandardErrorFile*(self: gen_qprocess_types.QProcess, fileName: string): void =
  fcQProcess_setStandardErrorFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setStandardOutputProcess*(self: gen_qprocess_types.QProcess, destination: gen_qprocess_types.QProcess): void =
  fcQProcess_setStandardOutputProcess(self.h, destination.h)

proc workingDirectory*(self: gen_qprocess_types.QProcess, ): string =
  let v_ms = fcQProcess_workingDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWorkingDirectory*(self: gen_qprocess_types.QProcess, dir: string): void =
  fcQProcess_setWorkingDirectory(self.h, struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc setEnvironment*(self: gen_qprocess_types.QProcess, environment: seq[string]): void =
  var environment_CArray = newSeq[struct_miqt_string](len(environment))
  for i in 0..<len(environment):
    environment_CArray[i] = struct_miqt_string(data: environment[i], len: csize_t(len(environment[i])))

  fcQProcess_setEnvironment(self.h, struct_miqt_array(len: csize_t(len(environment)), data: if len(environment) == 0: nil else: addr(environment_CArray[0])))

proc environment*(self: gen_qprocess_types.QProcess, ): seq[string] =
  var v_ma = fcQProcess_environment(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setProcessEnvironment*(self: gen_qprocess_types.QProcess, environment: gen_qprocess_types.QProcessEnvironment): void =
  fcQProcess_setProcessEnvironment(self.h, environment.h)

proc processEnvironment*(self: gen_qprocess_types.QProcess, ): gen_qprocess_types.QProcessEnvironment =
  gen_qprocess_types.QProcessEnvironment(h: fcQProcess_processEnvironment(self.h))

proc error*(self: gen_qprocess_types.QProcess, ): cint =
  cint(fcQProcess_error(self.h))

proc state*(self: gen_qprocess_types.QProcess, ): cint =
  cint(fcQProcess_state(self.h))

proc pid*(self: gen_qprocess_types.QProcess, ): clonglong =
  fcQProcess_pid(self.h)

proc processId*(self: gen_qprocess_types.QProcess, ): clonglong =
  fcQProcess_processId(self.h)

proc waitForStarted*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_waitForStarted(self.h)

proc waitForReadyRead*(self: gen_qprocess_types.QProcess, msecs: cint): bool =
  fcQProcess_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: gen_qprocess_types.QProcess, msecs: cint): bool =
  fcQProcess_waitForBytesWritten(self.h, msecs)

proc waitForFinished*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_waitForFinished(self.h)

proc readAllStandardOutput*(self: gen_qprocess_types.QProcess, ): seq[byte] =
  var v_bytearray = fcQProcess_readAllStandardOutput(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readAllStandardError*(self: gen_qprocess_types.QProcess, ): seq[byte] =
  var v_bytearray = fcQProcess_readAllStandardError(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc exitCode*(self: gen_qprocess_types.QProcess, ): cint =
  fcQProcess_exitCode(self.h)

proc exitStatus*(self: gen_qprocess_types.QProcess, ): cint =
  cint(fcQProcess_exitStatus(self.h))

proc bytesAvailable*(self: gen_qprocess_types.QProcess, ): clonglong =
  fcQProcess_bytesAvailable(self.h)

proc bytesToWrite*(self: gen_qprocess_types.QProcess, ): clonglong =
  fcQProcess_bytesToWrite(self.h)

proc isSequential*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_isSequential(self.h)

proc canReadLine*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_canReadLine(self.h)

proc close*(self: gen_qprocess_types.QProcess, ): void =
  fcQProcess_close(self.h)

proc atEnd*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_atEnd(self.h)

proc execute*(_: type gen_qprocess_types.QProcess, program: string, arguments: seq[string]): cint =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_execute(struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc execute*(_: type gen_qprocess_types.QProcess, command: string): cint =
  fcQProcess_executeWithCommand(struct_miqt_string(data: command, len: csize_t(len(command))))

proc startDetached*(_: type gen_qprocess_types.QProcess, program: string, arguments: seq[string], workingDirectory: string): bool =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_startDetached2(struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])), struct_miqt_string(data: workingDirectory, len: csize_t(len(workingDirectory))))

proc startDetached*(_: type gen_qprocess_types.QProcess, program: string, arguments: seq[string]): bool =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_startDetached3(struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc startDetached*(_: type gen_qprocess_types.QProcess, command: string): bool =
  fcQProcess_startDetachedWithCommand(struct_miqt_string(data: command, len: csize_t(len(command))))

proc systemEnvironment*(_: type gen_qprocess_types.QProcess, ): seq[string] =
  var v_ma = fcQProcess_systemEnvironment()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc nullDevice*(_: type gen_qprocess_types.QProcess, ): string =
  let v_ms = fcQProcess_nullDevice()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc terminate*(self: gen_qprocess_types.QProcess, ): void =
  fcQProcess_terminate(self.h)

proc kill*(self: gen_qprocess_types.QProcess, ): void =
  fcQProcess_kill(self.h)

proc finished*(self: gen_qprocess_types.QProcess, exitCode: cint): void =
  fcQProcess_finished(self.h, exitCode)

type QProcessfinishedSlot* = proc(exitCode: cint)
proc miqt_exec_callback_cQProcess_finished(slot: int, exitCode: cint) {.cdecl.} =
  let nimfunc = cast[ptr QProcessfinishedSlot](cast[pointer](slot))
  let slotval1 = exitCode

  nimfunc[](slotval1)

proc miqt_exec_callback_cQProcess_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QProcessfinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfinished*(self: gen_qprocess_types.QProcess, slot: QProcessfinishedSlot) =
  var tmp = new QProcessfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_connect_finished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQProcess_finished, miqt_exec_callback_cQProcess_finished_release)

proc finished*(self: gen_qprocess_types.QProcess, exitCode: cint, exitStatus: cint): void =
  fcQProcess_finished2(self.h, exitCode, cint(exitStatus))

type QProcessfinished2Slot* = proc(exitCode: cint, exitStatus: cint)
proc miqt_exec_callback_cQProcess_finished2(slot: int, exitCode: cint, exitStatus: cint) {.cdecl.} =
  let nimfunc = cast[ptr QProcessfinished2Slot](cast[pointer](slot))
  let slotval1 = exitCode

  let slotval2 = cint(exitStatus)

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQProcess_finished2_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QProcessfinished2Slot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfinished*(self: gen_qprocess_types.QProcess, slot: QProcessfinished2Slot) =
  var tmp = new QProcessfinished2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_connect_finished2(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQProcess_finished2, miqt_exec_callback_cQProcess_finished2_release)

proc error*(self: gen_qprocess_types.QProcess, error: cint): void =
  fcQProcess_errorWithError(self.h, cint(error))

type QProcesserrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_cQProcess_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QProcesserrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQProcess_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QProcesserrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qprocess_types.QProcess, slot: QProcesserrorWithErrorSlot) =
  var tmp = new QProcesserrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_connect_errorWithError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQProcess_errorWithError, miqt_exec_callback_cQProcess_errorWithError_release)

proc errorOccurred*(self: gen_qprocess_types.QProcess, error: cint): void =
  fcQProcess_errorOccurred(self.h, cint(error))

type QProcesserrorOccurredSlot* = proc(error: cint)
proc miqt_exec_callback_cQProcess_errorOccurred(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QProcesserrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQProcess_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QProcesserrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerrorOccurred*(self: gen_qprocess_types.QProcess, slot: QProcesserrorOccurredSlot) =
  var tmp = new QProcesserrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_connect_errorOccurred(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQProcess_errorOccurred, miqt_exec_callback_cQProcess_errorOccurred_release)

proc tr*(_: type gen_qprocess_types.QProcess, s: cstring, c: cstring): string =
  let v_ms = fcQProcess_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qprocess_types.QProcess, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProcess_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprocess_types.QProcess, s: cstring, c: cstring): string =
  let v_ms = fcQProcess_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qprocess_types.QProcess, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQProcess_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: gen_qprocess_types.QProcess, program: string, arguments: seq[string], mode: cint): void =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_start3(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])), cint(mode))

proc start*(self: gen_qprocess_types.QProcess, command: string, mode: cint): void =
  fcQProcess_start22(self.h, struct_miqt_string(data: command, len: csize_t(len(command))), cint(mode))

proc start*(self: gen_qprocess_types.QProcess, mode: cint): void =
  fcQProcess_start1(self.h, cint(mode))

proc startDetached*(self: gen_qprocess_types.QProcess, pid: ptr clonglong): bool =
  fcQProcess_startDetached1(self.h, pid)

proc setStandardOutputFile*(self: gen_qprocess_types.QProcess, fileName: string, mode: cint): void =
  fcQProcess_setStandardOutputFile2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode))

proc setStandardErrorFile*(self: gen_qprocess_types.QProcess, fileName: string, mode: cint): void =
  fcQProcess_setStandardErrorFile2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode))

proc waitForStarted*(self: gen_qprocess_types.QProcess, msecs: cint): bool =
  fcQProcess_waitForStarted1(self.h, msecs)

proc waitForFinished*(self: gen_qprocess_types.QProcess, msecs: cint): bool =
  fcQProcess_waitForFinished1(self.h, msecs)

proc startDetached*(_: type gen_qprocess_types.QProcess, program: string, arguments: seq[string], workingDirectory: string, pid: ptr clonglong): bool =
  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_startDetached4(struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])), struct_miqt_string(data: workingDirectory, len: csize_t(len(workingDirectory))), pid)

type QProcessmetaObjectProc* = proc(self: QProcess): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QProcessmetacastProc* = proc(self: QProcess, param1: cstring): pointer {.raises: [], gcsafe.}
type QProcessmetacallProc* = proc(self: QProcess, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QProcessopenProc* = proc(self: QProcess, mode: cint): bool {.raises: [], gcsafe.}
type QProcesswaitForReadyReadProc* = proc(self: QProcess, msecs: cint): bool {.raises: [], gcsafe.}
type QProcesswaitForBytesWrittenProc* = proc(self: QProcess, msecs: cint): bool {.raises: [], gcsafe.}
type QProcessbytesAvailableProc* = proc(self: QProcess): clonglong {.raises: [], gcsafe.}
type QProcessbytesToWriteProc* = proc(self: QProcess): clonglong {.raises: [], gcsafe.}
type QProcessisSequentialProc* = proc(self: QProcess): bool {.raises: [], gcsafe.}
type QProcesscanReadLineProc* = proc(self: QProcess): bool {.raises: [], gcsafe.}
type QProcesscloseProc* = proc(self: QProcess): void {.raises: [], gcsafe.}
type QProcessatEndProc* = proc(self: QProcess): bool {.raises: [], gcsafe.}
type QProcesssetupChildProcessProc* = proc(self: QProcess): void {.raises: [], gcsafe.}
type QProcessreadDataProc* = proc(self: QProcess, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QProcesswriteDataProc* = proc(self: QProcess, data: cstring, len: clonglong): clonglong {.raises: [], gcsafe.}
type QProcessposProc* = proc(self: QProcess): clonglong {.raises: [], gcsafe.}
type QProcesssizeProc* = proc(self: QProcess): clonglong {.raises: [], gcsafe.}
type QProcessseekProc* = proc(self: QProcess, pos: clonglong): bool {.raises: [], gcsafe.}
type QProcessresetProc* = proc(self: QProcess): bool {.raises: [], gcsafe.}
type QProcessreadLineDataProc* = proc(self: QProcess, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QProcesseventProc* = proc(self: QProcess, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QProcesseventFilterProc* = proc(self: QProcess, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QProcesstimerEventProc* = proc(self: QProcess, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QProcesschildEventProc* = proc(self: QProcess, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QProcesscustomEventProc* = proc(self: QProcess, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QProcessconnectNotifyProc* = proc(self: QProcess, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QProcessdisconnectNotifyProc* = proc(self: QProcess, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QProcessVTable* = object
  vtbl: cQProcessVTable
  metaObject*: QProcessmetaObjectProc
  metacast*: QProcessmetacastProc
  metacall*: QProcessmetacallProc
  open*: QProcessopenProc
  waitForReadyRead*: QProcesswaitForReadyReadProc
  waitForBytesWritten*: QProcesswaitForBytesWrittenProc
  bytesAvailable*: QProcessbytesAvailableProc
  bytesToWrite*: QProcessbytesToWriteProc
  isSequential*: QProcessisSequentialProc
  canReadLine*: QProcesscanReadLineProc
  close*: QProcesscloseProc
  atEnd*: QProcessatEndProc
  setupChildProcess*: QProcesssetupChildProcessProc
  readData*: QProcessreadDataProc
  writeData*: QProcesswriteDataProc
  pos*: QProcessposProc
  size*: QProcesssizeProc
  seek*: QProcessseekProc
  reset*: QProcessresetProc
  readLineData*: QProcessreadLineDataProc
  event*: QProcesseventProc
  eventFilter*: QProcesseventFilterProc
  timerEvent*: QProcesstimerEventProc
  childEvent*: QProcesschildEventProc
  customEvent*: QProcesscustomEventProc
  connectNotify*: QProcessconnectNotifyProc
  disconnectNotify*: QProcessdisconnectNotifyProc
proc QProcessmetaObject*(self: gen_qprocess_types.QProcess, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProcess_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQProcess_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QProcessmetacast*(self: gen_qprocess_types.QProcess, param1: cstring): pointer =
  fcQProcess_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQProcess_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QProcessmetacall*(self: gen_qprocess_types.QProcess, param1: cint, param2: cint, param3: pointer): cint =
  fcQProcess_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQProcess_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QProcessopen*(self: gen_qprocess_types.QProcess, mode: cint): bool =
  fcQProcess_virtualbase_open(self.h, cint(mode))

proc miqt_exec_callback_cQProcess_open(vtbl: pointer, self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QProcesswaitForReadyRead*(self: gen_qprocess_types.QProcess, msecs: cint): bool =
  fcQProcess_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQProcess_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QProcesswaitForBytesWritten*(self: gen_qprocess_types.QProcess, msecs: cint): bool =
  fcQProcess_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQProcess_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QProcessbytesAvailable*(self: gen_qprocess_types.QProcess, ): clonglong =
  fcQProcess_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQProcess_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QProcessbytesToWrite*(self: gen_qprocess_types.QProcess, ): clonglong =
  fcQProcess_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQProcess_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QProcessisSequential*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQProcess_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QProcesscanReadLine*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQProcess_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QProcessclose*(self: gen_qprocess_types.QProcess, ): void =
  fcQProcess_virtualbase_close(self.h)

proc miqt_exec_callback_cQProcess_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  vtbl[].close(self)

proc QProcessatEnd*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQProcess_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QProcesssetupChildProcess*(self: gen_qprocess_types.QProcess, ): void =
  fcQProcess_virtualbase_setupChildProcess(self.h)

proc miqt_exec_callback_cQProcess_setupChildProcess(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  vtbl[].setupChildProcess(self)

proc QProcessreadData*(self: gen_qprocess_types.QProcess, data: cstring, maxlen: clonglong): clonglong =
  fcQProcess_virtualbase_readData(self.h, data, maxlen)

proc miqt_exec_callback_cQProcess_readData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readData(self, slotval1, slotval2)
  virtualReturn

proc QProcesswriteData*(self: gen_qprocess_types.QProcess, data: cstring, len: clonglong): clonglong =
  fcQProcess_virtualbase_writeData(self.h, data, len)

proc miqt_exec_callback_cQProcess_writeData(vtbl: pointer, self: pointer, data: cstring, len: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = (data)
  let slotval2 = len
  var virtualReturn = vtbl[].writeData(self, slotval1, slotval2)
  virtualReturn

proc QProcesspos*(self: gen_qprocess_types.QProcess, ): clonglong =
  fcQProcess_virtualbase_pos(self.h)

proc miqt_exec_callback_cQProcess_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QProcesssize*(self: gen_qprocess_types.QProcess, ): clonglong =
  fcQProcess_virtualbase_size(self.h)

proc miqt_exec_callback_cQProcess_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QProcessseek*(self: gen_qprocess_types.QProcess, pos: clonglong): bool =
  fcQProcess_virtualbase_seek(self.h, pos)

proc miqt_exec_callback_cQProcess_seek(vtbl: pointer, self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QProcessreset*(self: gen_qprocess_types.QProcess, ): bool =
  fcQProcess_virtualbase_reset(self.h)

proc miqt_exec_callback_cQProcess_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QProcessreadLineData*(self: gen_qprocess_types.QProcess, data: cstring, maxlen: clonglong): clonglong =
  fcQProcess_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQProcess_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QProcessevent*(self: gen_qprocess_types.QProcess, event: gen_qcoreevent_types.QEvent): bool =
  fcQProcess_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQProcess_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QProcesseventFilter*(self: gen_qprocess_types.QProcess, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQProcess_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQProcess_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QProcesstimerEvent*(self: gen_qprocess_types.QProcess, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQProcess_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQProcess_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QProcesschildEvent*(self: gen_qprocess_types.QProcess, event: gen_qcoreevent_types.QChildEvent): void =
  fcQProcess_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQProcess_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QProcesscustomEvent*(self: gen_qprocess_types.QProcess, event: gen_qcoreevent_types.QEvent): void =
  fcQProcess_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQProcess_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QProcessconnectNotify*(self: gen_qprocess_types.QProcess, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProcess_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQProcess_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QProcessdisconnectNotify*(self: gen_qprocess_types.QProcess, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQProcess_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQProcess_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QProcessVTable](vtbl)
  let self = QProcess(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc setProcessState*(self: gen_qprocess_types.QProcess, state: cint): void =
  fcQProcess_protectedbase_setProcessState(self.h, cint(state))

proc setOpenMode*(self: gen_qprocess_types.QProcess, openMode: cint): void =
  fcQProcess_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qprocess_types.QProcess, errorString: string): void =
  fcQProcess_protectedbase_setErrorString(self.h, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc sender*(self: gen_qprocess_types.QProcess, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQProcess_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qprocess_types.QProcess, ): cint =
  fcQProcess_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qprocess_types.QProcess, signal: cstring): cint =
  fcQProcess_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qprocess_types.QProcess, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQProcess_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qprocess_types.QProcess,
    vtbl: ref QProcessVTable = nil): gen_qprocess_types.QProcess =
  let vtbl = if vtbl == nil: new QProcessVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProcessVTable, _: ptr cQProcess) {.cdecl.} =
    let vtbl = cast[ref QProcessVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProcess_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProcess_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProcess_metacall
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQProcess_open
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQProcess_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQProcess_waitForBytesWritten
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQProcess_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQProcess_bytesToWrite
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQProcess_isSequential
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQProcess_canReadLine
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQProcess_close
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQProcess_atEnd
  if not isNil(vtbl.setupChildProcess):
    vtbl[].vtbl.setupChildProcess = miqt_exec_callback_cQProcess_setupChildProcess
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQProcess_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQProcess_writeData
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQProcess_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQProcess_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQProcess_seek
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQProcess_reset
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQProcess_readLineData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProcess_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProcess_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProcess_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProcess_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProcess_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProcess_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProcess_disconnectNotify
  gen_qprocess_types.QProcess(h: fcQProcess_new(addr(vtbl[]), ))

proc create*(T: type gen_qprocess_types.QProcess,
    parent: gen_qobject_types.QObject,
    vtbl: ref QProcessVTable = nil): gen_qprocess_types.QProcess =
  let vtbl = if vtbl == nil: new QProcessVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQProcessVTable, _: ptr cQProcess) {.cdecl.} =
    let vtbl = cast[ref QProcessVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQProcess_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQProcess_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQProcess_metacall
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQProcess_open
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQProcess_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQProcess_waitForBytesWritten
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQProcess_bytesAvailable
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQProcess_bytesToWrite
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQProcess_isSequential
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQProcess_canReadLine
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQProcess_close
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQProcess_atEnd
  if not isNil(vtbl.setupChildProcess):
    vtbl[].vtbl.setupChildProcess = miqt_exec_callback_cQProcess_setupChildProcess
  if not isNil(vtbl.readData):
    vtbl[].vtbl.readData = miqt_exec_callback_cQProcess_readData
  if not isNil(vtbl.writeData):
    vtbl[].vtbl.writeData = miqt_exec_callback_cQProcess_writeData
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQProcess_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQProcess_size
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQProcess_seek
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQProcess_reset
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQProcess_readLineData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQProcess_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQProcess_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQProcess_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQProcess_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQProcess_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQProcess_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQProcess_disconnectNotify
  gen_qprocess_types.QProcess(h: fcQProcess_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qprocess_types.QProcess): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProcess_staticMetaObject())
proc delete*(self: gen_qprocess_types.QProcess) =
  fcQProcess_delete(self.h)
