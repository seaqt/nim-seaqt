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

proc fcQProcessEnvironment_new(): ptr cQProcessEnvironment {.importc: "QProcessEnvironment_new".}
proc fcQProcessEnvironment_new2(other: pointer): ptr cQProcessEnvironment {.importc: "QProcessEnvironment_new2".}
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
proc fcQProcessEnvironment_delete(self: pointer) {.importc: "QProcessEnvironment_delete".}
proc fcQProcess_new(): ptr cQProcess {.importc: "QProcess_new".}
proc fcQProcess_new2(parent: pointer): ptr cQProcess {.importc: "QProcess_new2".}
proc fcQProcess_metaObject(self: pointer, ): pointer {.importc: "QProcess_metaObject".}
proc fcQProcess_metacast(self: pointer, param1: cstring): pointer {.importc: "QProcess_metacast".}
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
proc fcQProcess_connect_finished(self: pointer, slot: int) {.importc: "QProcess_connect_finished".}
proc fcQProcess_finished2(self: pointer, exitCode: cint, exitStatus: cint): void {.importc: "QProcess_finished2".}
proc fcQProcess_connect_finished2(self: pointer, slot: int) {.importc: "QProcess_connect_finished2".}
proc fcQProcess_errorWithError(self: pointer, error: cint): void {.importc: "QProcess_errorWithError".}
proc fcQProcess_connect_errorWithError(self: pointer, slot: int) {.importc: "QProcess_connect_errorWithError".}
proc fcQProcess_errorOccurred(self: pointer, error: cint): void {.importc: "QProcess_errorOccurred".}
proc fcQProcess_connect_errorOccurred(self: pointer, slot: int) {.importc: "QProcess_connect_errorOccurred".}
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
proc fQProcess_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QProcess_virtualbase_open".}
proc fcQProcess_override_virtual_open(self: pointer, slot: int) {.importc: "QProcess_override_virtual_open".}
proc fQProcess_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QProcess_virtualbase_waitForReadyRead".}
proc fcQProcess_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QProcess_override_virtual_waitForReadyRead".}
proc fQProcess_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QProcess_virtualbase_waitForBytesWritten".}
proc fcQProcess_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QProcess_override_virtual_waitForBytesWritten".}
proc fQProcess_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QProcess_virtualbase_bytesAvailable".}
proc fcQProcess_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QProcess_override_virtual_bytesAvailable".}
proc fQProcess_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QProcess_virtualbase_bytesToWrite".}
proc fcQProcess_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QProcess_override_virtual_bytesToWrite".}
proc fQProcess_virtualbase_isSequential(self: pointer, ): bool{.importc: "QProcess_virtualbase_isSequential".}
proc fcQProcess_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QProcess_override_virtual_isSequential".}
proc fQProcess_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QProcess_virtualbase_canReadLine".}
proc fcQProcess_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QProcess_override_virtual_canReadLine".}
proc fQProcess_virtualbase_close(self: pointer, ): void{.importc: "QProcess_virtualbase_close".}
proc fcQProcess_override_virtual_close(self: pointer, slot: int) {.importc: "QProcess_override_virtual_close".}
proc fQProcess_virtualbase_atEnd(self: pointer, ): bool{.importc: "QProcess_virtualbase_atEnd".}
proc fcQProcess_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QProcess_override_virtual_atEnd".}
proc fQProcess_virtualbase_setupChildProcess(self: pointer, ): void{.importc: "QProcess_virtualbase_setupChildProcess".}
proc fcQProcess_override_virtual_setupChildProcess(self: pointer, slot: int) {.importc: "QProcess_override_virtual_setupChildProcess".}
proc fQProcess_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QProcess_virtualbase_readData".}
proc fcQProcess_override_virtual_readData(self: pointer, slot: int) {.importc: "QProcess_override_virtual_readData".}
proc fQProcess_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QProcess_virtualbase_writeData".}
proc fcQProcess_override_virtual_writeData(self: pointer, slot: int) {.importc: "QProcess_override_virtual_writeData".}
proc fQProcess_virtualbase_pos(self: pointer, ): clonglong{.importc: "QProcess_virtualbase_pos".}
proc fcQProcess_override_virtual_pos(self: pointer, slot: int) {.importc: "QProcess_override_virtual_pos".}
proc fQProcess_virtualbase_size(self: pointer, ): clonglong{.importc: "QProcess_virtualbase_size".}
proc fcQProcess_override_virtual_size(self: pointer, slot: int) {.importc: "QProcess_override_virtual_size".}
proc fQProcess_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QProcess_virtualbase_seek".}
proc fcQProcess_override_virtual_seek(self: pointer, slot: int) {.importc: "QProcess_override_virtual_seek".}
proc fQProcess_virtualbase_reset(self: pointer, ): bool{.importc: "QProcess_virtualbase_reset".}
proc fcQProcess_override_virtual_reset(self: pointer, slot: int) {.importc: "QProcess_override_virtual_reset".}
proc fQProcess_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QProcess_virtualbase_readLineData".}
proc fcQProcess_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QProcess_override_virtual_readLineData".}
proc fQProcess_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QProcess_virtualbase_event".}
proc fcQProcess_override_virtual_event(self: pointer, slot: int) {.importc: "QProcess_override_virtual_event".}
proc fQProcess_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QProcess_virtualbase_eventFilter".}
proc fcQProcess_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QProcess_override_virtual_eventFilter".}
proc fQProcess_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QProcess_virtualbase_timerEvent".}
proc fcQProcess_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QProcess_override_virtual_timerEvent".}
proc fQProcess_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QProcess_virtualbase_childEvent".}
proc fcQProcess_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QProcess_override_virtual_childEvent".}
proc fQProcess_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QProcess_virtualbase_customEvent".}
proc fcQProcess_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QProcess_override_virtual_customEvent".}
proc fQProcess_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QProcess_virtualbase_connectNotify".}
proc fcQProcess_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QProcess_override_virtual_connectNotify".}
proc fQProcess_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QProcess_virtualbase_disconnectNotify".}
proc fcQProcess_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QProcess_override_virtual_disconnectNotify".}
proc fcQProcess_delete(self: pointer) {.importc: "QProcess_delete".}


func init*(T: type gen_qprocess_types.QProcessEnvironment, h: ptr cQProcessEnvironment): gen_qprocess_types.QProcessEnvironment =
  T(h: h)
proc create*(T: type gen_qprocess_types.QProcessEnvironment, ): gen_qprocess_types.QProcessEnvironment =
  gen_qprocess_types.QProcessEnvironment.init(fcQProcessEnvironment_new())

proc create*(T: type gen_qprocess_types.QProcessEnvironment, other: gen_qprocess_types.QProcessEnvironment): gen_qprocess_types.QProcessEnvironment =
  gen_qprocess_types.QProcessEnvironment.init(fcQProcessEnvironment_new2(other.h))

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

proc delete*(self: gen_qprocess_types.QProcessEnvironment) =
  fcQProcessEnvironment_delete(self.h)

func init*(T: type gen_qprocess_types.QProcess, h: ptr cQProcess): gen_qprocess_types.QProcess =
  T(h: h)
proc create*(T: type gen_qprocess_types.QProcess, ): gen_qprocess_types.QProcess =
  gen_qprocess_types.QProcess.init(fcQProcess_new())

proc create*(T: type gen_qprocess_types.QProcess, parent: gen_qobject_types.QObject): gen_qprocess_types.QProcess =
  gen_qprocess_types.QProcess.init(fcQProcess_new2(parent.h))

proc metaObject*(self: gen_qprocess_types.QProcess, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQProcess_metaObject(self.h))

proc metacast*(self: gen_qprocess_types.QProcess, param1: cstring): pointer =
  fcQProcess_metacast(self.h, param1)

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
proc miqt_exec_callback_QProcess_finished(slot: int, exitCode: cint) {.exportc.} =
  let nimfunc = cast[ptr QProcessfinishedSlot](cast[pointer](slot))
  let slotval1 = exitCode

  nimfunc[](slotval1)

proc onfinished*(self: gen_qprocess_types.QProcess, slot: QProcessfinishedSlot) =
  var tmp = new QProcessfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_connect_finished(self.h, cast[int](addr tmp[]))

proc finished*(self: gen_qprocess_types.QProcess, exitCode: cint, exitStatus: cint): void =
  fcQProcess_finished2(self.h, exitCode, cint(exitStatus))

type QProcessfinished2Slot* = proc(exitCode: cint, exitStatus: cint)
proc miqt_exec_callback_QProcess_finished2(slot: int, exitCode: cint, exitStatus: cint) {.exportc.} =
  let nimfunc = cast[ptr QProcessfinished2Slot](cast[pointer](slot))
  let slotval1 = exitCode

  let slotval2 = cint(exitStatus)

  nimfunc[](slotval1, slotval2)

proc onfinished*(self: gen_qprocess_types.QProcess, slot: QProcessfinished2Slot) =
  var tmp = new QProcessfinished2Slot
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_connect_finished2(self.h, cast[int](addr tmp[]))

proc error*(self: gen_qprocess_types.QProcess, error: cint): void =
  fcQProcess_errorWithError(self.h, cint(error))

type QProcesserrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_QProcess_errorWithError(slot: int, error: cint) {.exportc.} =
  let nimfunc = cast[ptr QProcesserrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc onerror*(self: gen_qprocess_types.QProcess, slot: QProcesserrorWithErrorSlot) =
  var tmp = new QProcesserrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_connect_errorWithError(self.h, cast[int](addr tmp[]))

proc errorOccurred*(self: gen_qprocess_types.QProcess, error: cint): void =
  fcQProcess_errorOccurred(self.h, cint(error))

type QProcesserrorOccurredSlot* = proc(error: cint)
proc miqt_exec_callback_QProcess_errorOccurred(slot: int, error: cint) {.exportc.} =
  let nimfunc = cast[ptr QProcesserrorOccurredSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc onerrorOccurred*(self: gen_qprocess_types.QProcess, slot: QProcesserrorOccurredSlot) =
  var tmp = new QProcesserrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_connect_errorOccurred(self.h, cast[int](addr tmp[]))

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

proc QProcessopen*(self: gen_qprocess_types.QProcess, mode: cint): bool =
  fQProcess_virtualbase_open(self.h, cint(mode))

type QProcessopenProc* = proc(mode: cint): bool
proc onopen*(self: gen_qprocess_types.QProcess, slot: QProcessopenProc) =
  # TODO check subclass
  var tmp = new QProcessopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_open(self: ptr cQProcess, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QProcess_open ".} =
  var nimfunc = cast[ptr QProcessopenProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProcesswaitForReadyRead*(self: gen_qprocess_types.QProcess, msecs: cint): bool =
  fQProcess_virtualbase_waitForReadyRead(self.h, msecs)

type QProcesswaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qprocess_types.QProcess, slot: QProcesswaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QProcesswaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_waitForReadyRead(self: ptr cQProcess, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QProcess_waitForReadyRead ".} =
  var nimfunc = cast[ptr QProcesswaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProcesswaitForBytesWritten*(self: gen_qprocess_types.QProcess, msecs: cint): bool =
  fQProcess_virtualbase_waitForBytesWritten(self.h, msecs)

type QProcesswaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qprocess_types.QProcess, slot: QProcesswaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QProcesswaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_waitForBytesWritten(self: ptr cQProcess, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QProcess_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QProcesswaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProcessbytesAvailable*(self: gen_qprocess_types.QProcess, ): clonglong =
  fQProcess_virtualbase_bytesAvailable(self.h)

type QProcessbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qprocess_types.QProcess, slot: QProcessbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QProcessbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_bytesAvailable(self: ptr cQProcess, slot: int): clonglong {.exportc: "miqt_exec_callback_QProcess_bytesAvailable ".} =
  var nimfunc = cast[ptr QProcessbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProcessbytesToWrite*(self: gen_qprocess_types.QProcess, ): clonglong =
  fQProcess_virtualbase_bytesToWrite(self.h)

type QProcessbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qprocess_types.QProcess, slot: QProcessbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QProcessbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_bytesToWrite(self: ptr cQProcess, slot: int): clonglong {.exportc: "miqt_exec_callback_QProcess_bytesToWrite ".} =
  var nimfunc = cast[ptr QProcessbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProcessisSequential*(self: gen_qprocess_types.QProcess, ): bool =
  fQProcess_virtualbase_isSequential(self.h)

type QProcessisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qprocess_types.QProcess, slot: QProcessisSequentialProc) =
  # TODO check subclass
  var tmp = new QProcessisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_isSequential(self: ptr cQProcess, slot: int): bool {.exportc: "miqt_exec_callback_QProcess_isSequential ".} =
  var nimfunc = cast[ptr QProcessisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProcesscanReadLine*(self: gen_qprocess_types.QProcess, ): bool =
  fQProcess_virtualbase_canReadLine(self.h)

type QProcesscanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qprocess_types.QProcess, slot: QProcesscanReadLineProc) =
  # TODO check subclass
  var tmp = new QProcesscanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_canReadLine(self: ptr cQProcess, slot: int): bool {.exportc: "miqt_exec_callback_QProcess_canReadLine ".} =
  var nimfunc = cast[ptr QProcesscanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProcessclose*(self: gen_qprocess_types.QProcess, ): void =
  fQProcess_virtualbase_close(self.h)

type QProcesscloseProc* = proc(): void
proc onclose*(self: gen_qprocess_types.QProcess, slot: QProcesscloseProc) =
  # TODO check subclass
  var tmp = new QProcesscloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_close(self: ptr cQProcess, slot: int): void {.exportc: "miqt_exec_callback_QProcess_close ".} =
  var nimfunc = cast[ptr QProcesscloseProc](cast[pointer](slot))

  nimfunc[]()
proc QProcessatEnd*(self: gen_qprocess_types.QProcess, ): bool =
  fQProcess_virtualbase_atEnd(self.h)

type QProcessatEndProc* = proc(): bool
proc onatEnd*(self: gen_qprocess_types.QProcess, slot: QProcessatEndProc) =
  # TODO check subclass
  var tmp = new QProcessatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_atEnd(self: ptr cQProcess, slot: int): bool {.exportc: "miqt_exec_callback_QProcess_atEnd ".} =
  var nimfunc = cast[ptr QProcessatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProcesssetupChildProcess*(self: gen_qprocess_types.QProcess, ): void =
  fQProcess_virtualbase_setupChildProcess(self.h)

type QProcesssetupChildProcessProc* = proc(): void
proc onsetupChildProcess*(self: gen_qprocess_types.QProcess, slot: QProcesssetupChildProcessProc) =
  # TODO check subclass
  var tmp = new QProcesssetupChildProcessProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_setupChildProcess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_setupChildProcess(self: ptr cQProcess, slot: int): void {.exportc: "miqt_exec_callback_QProcess_setupChildProcess ".} =
  var nimfunc = cast[ptr QProcesssetupChildProcessProc](cast[pointer](slot))

  nimfunc[]()
proc QProcessreadData*(self: gen_qprocess_types.QProcess, data: cstring, maxlen: clonglong): clonglong =
  fQProcess_virtualbase_readData(self.h, data, maxlen)

type QProcessreadDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: gen_qprocess_types.QProcess, slot: QProcessreadDataProc) =
  # TODO check subclass
  var tmp = new QProcessreadDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_readData(self: ptr cQProcess, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QProcess_readData ".} =
  var nimfunc = cast[ptr QProcessreadDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QProcesswriteData*(self: gen_qprocess_types.QProcess, data: cstring, len: clonglong): clonglong =
  fQProcess_virtualbase_writeData(self.h, data, len)

type QProcesswriteDataProc* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: gen_qprocess_types.QProcess, slot: QProcesswriteDataProc) =
  # TODO check subclass
  var tmp = new QProcesswriteDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_writeData(self: ptr cQProcess, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QProcess_writeData ".} =
  var nimfunc = cast[ptr QProcesswriteDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QProcesspos*(self: gen_qprocess_types.QProcess, ): clonglong =
  fQProcess_virtualbase_pos(self.h)

type QProcessposProc* = proc(): clonglong
proc onpos*(self: gen_qprocess_types.QProcess, slot: QProcessposProc) =
  # TODO check subclass
  var tmp = new QProcessposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_pos(self: ptr cQProcess, slot: int): clonglong {.exportc: "miqt_exec_callback_QProcess_pos ".} =
  var nimfunc = cast[ptr QProcessposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProcesssize*(self: gen_qprocess_types.QProcess, ): clonglong =
  fQProcess_virtualbase_size(self.h)

type QProcesssizeProc* = proc(): clonglong
proc onsize*(self: gen_qprocess_types.QProcess, slot: QProcesssizeProc) =
  # TODO check subclass
  var tmp = new QProcesssizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_size(self: ptr cQProcess, slot: int): clonglong {.exportc: "miqt_exec_callback_QProcess_size ".} =
  var nimfunc = cast[ptr QProcesssizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProcessseek*(self: gen_qprocess_types.QProcess, pos: clonglong): bool =
  fQProcess_virtualbase_seek(self.h, pos)

type QProcessseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qprocess_types.QProcess, slot: QProcessseekProc) =
  # TODO check subclass
  var tmp = new QProcessseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_seek(self: ptr cQProcess, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QProcess_seek ".} =
  var nimfunc = cast[ptr QProcessseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProcessreset*(self: gen_qprocess_types.QProcess, ): bool =
  fQProcess_virtualbase_reset(self.h)

type QProcessresetProc* = proc(): bool
proc onreset*(self: gen_qprocess_types.QProcess, slot: QProcessresetProc) =
  # TODO check subclass
  var tmp = new QProcessresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_reset(self: ptr cQProcess, slot: int): bool {.exportc: "miqt_exec_callback_QProcess_reset ".} =
  var nimfunc = cast[ptr QProcessresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QProcessreadLineData*(self: gen_qprocess_types.QProcess, data: cstring, maxlen: clonglong): clonglong =
  fQProcess_virtualbase_readLineData(self.h, data, maxlen)

type QProcessreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qprocess_types.QProcess, slot: QProcessreadLineDataProc) =
  # TODO check subclass
  var tmp = new QProcessreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_readLineData(self: ptr cQProcess, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QProcess_readLineData ".} =
  var nimfunc = cast[ptr QProcessreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QProcessevent*(self: gen_qprocess_types.QProcess, event: gen_qcoreevent_types.QEvent): bool =
  fQProcess_virtualbase_event(self.h, event.h)

type QProcesseventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qprocess_types.QProcess, slot: QProcesseventProc) =
  # TODO check subclass
  var tmp = new QProcesseventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_event(self: ptr cQProcess, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QProcess_event ".} =
  var nimfunc = cast[ptr QProcesseventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QProcesseventFilter*(self: gen_qprocess_types.QProcess, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQProcess_virtualbase_eventFilter(self.h, watched.h, event.h)

type QProcesseventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qprocess_types.QProcess, slot: QProcesseventFilterProc) =
  # TODO check subclass
  var tmp = new QProcesseventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_eventFilter(self: ptr cQProcess, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QProcess_eventFilter ".} =
  var nimfunc = cast[ptr QProcesseventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QProcesstimerEvent*(self: gen_qprocess_types.QProcess, event: gen_qcoreevent_types.QTimerEvent): void =
  fQProcess_virtualbase_timerEvent(self.h, event.h)

type QProcesstimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qprocess_types.QProcess, slot: QProcesstimerEventProc) =
  # TODO check subclass
  var tmp = new QProcesstimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_timerEvent(self: ptr cQProcess, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProcess_timerEvent ".} =
  var nimfunc = cast[ptr QProcesstimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QProcesschildEvent*(self: gen_qprocess_types.QProcess, event: gen_qcoreevent_types.QChildEvent): void =
  fQProcess_virtualbase_childEvent(self.h, event.h)

type QProcesschildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qprocess_types.QProcess, slot: QProcesschildEventProc) =
  # TODO check subclass
  var tmp = new QProcesschildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_childEvent(self: ptr cQProcess, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProcess_childEvent ".} =
  var nimfunc = cast[ptr QProcesschildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QProcesscustomEvent*(self: gen_qprocess_types.QProcess, event: gen_qcoreevent_types.QEvent): void =
  fQProcess_virtualbase_customEvent(self.h, event.h)

type QProcesscustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qprocess_types.QProcess, slot: QProcesscustomEventProc) =
  # TODO check subclass
  var tmp = new QProcesscustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_customEvent(self: ptr cQProcess, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProcess_customEvent ".} =
  var nimfunc = cast[ptr QProcesscustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QProcessconnectNotify*(self: gen_qprocess_types.QProcess, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQProcess_virtualbase_connectNotify(self.h, signal.h)

type QProcessconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qprocess_types.QProcess, slot: QProcessconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QProcessconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_connectNotify(self: ptr cQProcess, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProcess_connectNotify ".} =
  var nimfunc = cast[ptr QProcessconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QProcessdisconnectNotify*(self: gen_qprocess_types.QProcess, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQProcess_virtualbase_disconnectNotify(self.h, signal.h)

type QProcessdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qprocess_types.QProcess, slot: QProcessdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QProcessdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_disconnectNotify(self: ptr cQProcess, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProcess_disconnectNotify ".} =
  var nimfunc = cast[ptr QProcessdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qprocess_types.QProcess) =
  fcQProcess_delete(self.h)
