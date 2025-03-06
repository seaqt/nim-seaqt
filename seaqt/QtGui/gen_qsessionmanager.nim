import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qsessionmanager.cpp", cflags).}


type QSessionManagerRestartHintEnum* = distinct cint
template RestartIfRunning*(_: type QSessionManagerRestartHintEnum): untyped = 0
template RestartAnyway*(_: type QSessionManagerRestartHintEnum): untyped = 1
template RestartImmediately*(_: type QSessionManagerRestartHintEnum): untyped = 2
template RestartNever*(_: type QSessionManagerRestartHintEnum): untyped = 3


import ./gen_qsessionmanager_types
export gen_qsessionmanager_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQSessionManager*{.exportc: "QSessionManager", incompleteStruct.} = object

proc fcQSessionManager_metaObject(self: pointer, ): pointer {.importc: "QSessionManager_metaObject".}
proc fcQSessionManager_metacast(self: pointer, param1: cstring): pointer {.importc: "QSessionManager_metacast".}
proc fcQSessionManager_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSessionManager_metacall".}
proc fcQSessionManager_tr(s: cstring): struct_miqt_string {.importc: "QSessionManager_tr".}
proc fcQSessionManager_sessionId(self: pointer, ): struct_miqt_string {.importc: "QSessionManager_sessionId".}
proc fcQSessionManager_sessionKey(self: pointer, ): struct_miqt_string {.importc: "QSessionManager_sessionKey".}
proc fcQSessionManager_allowsInteraction(self: pointer, ): bool {.importc: "QSessionManager_allowsInteraction".}
proc fcQSessionManager_allowsErrorInteraction(self: pointer, ): bool {.importc: "QSessionManager_allowsErrorInteraction".}
proc fcQSessionManager_release(self: pointer, ): void {.importc: "QSessionManager_release".}
proc fcQSessionManager_cancel(self: pointer, ): void {.importc: "QSessionManager_cancel".}
proc fcQSessionManager_setRestartHint(self: pointer, restartHint: cint): void {.importc: "QSessionManager_setRestartHint".}
proc fcQSessionManager_restartHint(self: pointer, ): cint {.importc: "QSessionManager_restartHint".}
proc fcQSessionManager_setRestartCommand(self: pointer, restartCommand: struct_miqt_array): void {.importc: "QSessionManager_setRestartCommand".}
proc fcQSessionManager_restartCommand(self: pointer, ): struct_miqt_array {.importc: "QSessionManager_restartCommand".}
proc fcQSessionManager_setDiscardCommand(self: pointer, discardCommand: struct_miqt_array): void {.importc: "QSessionManager_setDiscardCommand".}
proc fcQSessionManager_discardCommand(self: pointer, ): struct_miqt_array {.importc: "QSessionManager_discardCommand".}
proc fcQSessionManager_setManagerProperty(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QSessionManager_setManagerProperty".}
proc fcQSessionManager_setManagerProperty2(self: pointer, name: struct_miqt_string, value: struct_miqt_array): void {.importc: "QSessionManager_setManagerProperty2".}
proc fcQSessionManager_isPhase2(self: pointer, ): bool {.importc: "QSessionManager_isPhase2".}
proc fcQSessionManager_requestPhase2(self: pointer, ): void {.importc: "QSessionManager_requestPhase2".}
proc fcQSessionManager_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSessionManager_tr2".}
proc fcQSessionManager_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSessionManager_tr3".}
proc fcQSessionManager_protectedbase_sender(self: pointer, ): pointer {.importc: "QSessionManager_protectedbase_sender".}
proc fcQSessionManager_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QSessionManager_protectedbase_senderSignalIndex".}
proc fcQSessionManager_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSessionManager_protectedbase_receivers".}
proc fcQSessionManager_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSessionManager_protectedbase_isSignalConnected".}
proc fcQSessionManager_staticMetaObject(): pointer {.importc: "QSessionManager_staticMetaObject".}

proc metaObject*(self: gen_qsessionmanager_types.QSessionManager, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSessionManager_metaObject(self.h))

proc metacast*(self: gen_qsessionmanager_types.QSessionManager, param1: cstring): pointer =
  fcQSessionManager_metacast(self.h, param1)

proc metacall*(self: gen_qsessionmanager_types.QSessionManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQSessionManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsessionmanager_types.QSessionManager, s: cstring): string =
  let v_ms = fcQSessionManager_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sessionId*(self: gen_qsessionmanager_types.QSessionManager, ): string =
  let v_ms = fcQSessionManager_sessionId(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sessionKey*(self: gen_qsessionmanager_types.QSessionManager, ): string =
  let v_ms = fcQSessionManager_sessionKey(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allowsInteraction*(self: gen_qsessionmanager_types.QSessionManager, ): bool =
  fcQSessionManager_allowsInteraction(self.h)

proc allowsErrorInteraction*(self: gen_qsessionmanager_types.QSessionManager, ): bool =
  fcQSessionManager_allowsErrorInteraction(self.h)

proc release*(self: gen_qsessionmanager_types.QSessionManager, ): void =
  fcQSessionManager_release(self.h)

proc cancel*(self: gen_qsessionmanager_types.QSessionManager, ): void =
  fcQSessionManager_cancel(self.h)

proc setRestartHint*(self: gen_qsessionmanager_types.QSessionManager, restartHint: cint): void =
  fcQSessionManager_setRestartHint(self.h, cint(restartHint))

proc restartHint*(self: gen_qsessionmanager_types.QSessionManager, ): cint =
  cint(fcQSessionManager_restartHint(self.h))

proc setRestartCommand*(self: gen_qsessionmanager_types.QSessionManager, restartCommand: seq[string]): void =
  var restartCommand_CArray = newSeq[struct_miqt_string](len(restartCommand))
  for i in 0..<len(restartCommand):
    restartCommand_CArray[i] = struct_miqt_string(data: restartCommand[i], len: csize_t(len(restartCommand[i])))

  fcQSessionManager_setRestartCommand(self.h, struct_miqt_array(len: csize_t(len(restartCommand)), data: if len(restartCommand) == 0: nil else: addr(restartCommand_CArray[0])))

proc restartCommand*(self: gen_qsessionmanager_types.QSessionManager, ): seq[string] =
  var v_ma = fcQSessionManager_restartCommand(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setDiscardCommand*(self: gen_qsessionmanager_types.QSessionManager, discardCommand: seq[string]): void =
  var discardCommand_CArray = newSeq[struct_miqt_string](len(discardCommand))
  for i in 0..<len(discardCommand):
    discardCommand_CArray[i] = struct_miqt_string(data: discardCommand[i], len: csize_t(len(discardCommand[i])))

  fcQSessionManager_setDiscardCommand(self.h, struct_miqt_array(len: csize_t(len(discardCommand)), data: if len(discardCommand) == 0: nil else: addr(discardCommand_CArray[0])))

proc discardCommand*(self: gen_qsessionmanager_types.QSessionManager, ): seq[string] =
  var v_ma = fcQSessionManager_discardCommand(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setManagerProperty*(self: gen_qsessionmanager_types.QSessionManager, name: string, value: string): void =
  fcQSessionManager_setManagerProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc setManagerProperty*(self: gen_qsessionmanager_types.QSessionManager, name: string, value: seq[string]): void =
  var value_CArray = newSeq[struct_miqt_string](len(value))
  for i in 0..<len(value):
    value_CArray[i] = struct_miqt_string(data: value[i], len: csize_t(len(value[i])))

  fcQSessionManager_setManagerProperty2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_array(len: csize_t(len(value)), data: if len(value) == 0: nil else: addr(value_CArray[0])))

proc isPhase2*(self: gen_qsessionmanager_types.QSessionManager, ): bool =
  fcQSessionManager_isPhase2(self.h)

proc requestPhase2*(self: gen_qsessionmanager_types.QSessionManager, ): void =
  fcQSessionManager_requestPhase2(self.h)

proc tr*(_: type gen_qsessionmanager_types.QSessionManager, s: cstring, c: cstring): string =
  let v_ms = fcQSessionManager_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsessionmanager_types.QSessionManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSessionManager_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qsessionmanager_types.QSessionManager, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSessionManager_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qsessionmanager_types.QSessionManager, ): cint =
  fcQSessionManager_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsessionmanager_types.QSessionManager, signal: cstring): cint =
  fcQSessionManager_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsessionmanager_types.QSessionManager, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSessionManager_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qsessionmanager_types.QSessionManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSessionManager_staticMetaObject())
