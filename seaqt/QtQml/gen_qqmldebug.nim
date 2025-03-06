import ./Qt5Qml_libs

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

const cflags = gorge("pkg-config --cflags Qt5Qml")  & " -fPIC"
{.compile("gen_qqmldebug.cpp", cflags).}


type QQmlDebuggingEnablerStartModeEnum* = distinct cint
template DoNotWaitForClient*(_: type QQmlDebuggingEnablerStartModeEnum): untyped = 0
template WaitForClient*(_: type QQmlDebuggingEnablerStartModeEnum): untyped = 1


import ./gen_qqmldebug_types
export gen_qqmldebug_types

import
  ../QtCore/gen_qvariant_types,
  std/tables
export
  gen_qvariant_types

type cQQmlDebuggingEnabler*{.exportc: "QQmlDebuggingEnabler", incompleteStruct.} = object

proc fcQQmlDebuggingEnabler_new(): ptr cQQmlDebuggingEnabler {.importc: "QQmlDebuggingEnabler_new".}
proc fcQQmlDebuggingEnabler_new2(printWarning: bool): ptr cQQmlDebuggingEnabler {.importc: "QQmlDebuggingEnabler_new2".}
proc fcQQmlDebuggingEnabler_debuggerServices(): struct_miqt_array {.importc: "QQmlDebuggingEnabler_debuggerServices".}
proc fcQQmlDebuggingEnabler_inspectorServices(): struct_miqt_array {.importc: "QQmlDebuggingEnabler_inspectorServices".}
proc fcQQmlDebuggingEnabler_profilerServices(): struct_miqt_array {.importc: "QQmlDebuggingEnabler_profilerServices".}
proc fcQQmlDebuggingEnabler_nativeDebuggerServices(): struct_miqt_array {.importc: "QQmlDebuggingEnabler_nativeDebuggerServices".}
proc fcQQmlDebuggingEnabler_setServices(services: struct_miqt_array): void {.importc: "QQmlDebuggingEnabler_setServices".}
proc fcQQmlDebuggingEnabler_startTcpDebugServer(port: cint): bool {.importc: "QQmlDebuggingEnabler_startTcpDebugServer".}
proc fcQQmlDebuggingEnabler_connectToLocalDebugger(socketFileName: struct_miqt_string): bool {.importc: "QQmlDebuggingEnabler_connectToLocalDebugger".}
proc fcQQmlDebuggingEnabler_startDebugConnector(pluginName: struct_miqt_string): bool {.importc: "QQmlDebuggingEnabler_startDebugConnector".}
proc fcQQmlDebuggingEnabler_startTcpDebugServer2(port: cint, mode: cint): bool {.importc: "QQmlDebuggingEnabler_startTcpDebugServer2".}
proc fcQQmlDebuggingEnabler_startTcpDebugServer3(port: cint, mode: cint, hostName: struct_miqt_string): bool {.importc: "QQmlDebuggingEnabler_startTcpDebugServer3".}
proc fcQQmlDebuggingEnabler_connectToLocalDebugger2(socketFileName: struct_miqt_string, mode: cint): bool {.importc: "QQmlDebuggingEnabler_connectToLocalDebugger2".}
proc fcQQmlDebuggingEnabler_startDebugConnector2(pluginName: struct_miqt_string, configuration: struct_miqt_map): bool {.importc: "QQmlDebuggingEnabler_startDebugConnector2".}
proc fcQQmlDebuggingEnabler_delete(self: pointer) {.importc: "QQmlDebuggingEnabler_delete".}


func init*(T: type gen_qqmldebug_types.QQmlDebuggingEnabler, h: ptr cQQmlDebuggingEnabler): gen_qqmldebug_types.QQmlDebuggingEnabler =
  T(h: h)
proc create*(T: type gen_qqmldebug_types.QQmlDebuggingEnabler, ): gen_qqmldebug_types.QQmlDebuggingEnabler =
  gen_qqmldebug_types.QQmlDebuggingEnabler.init(fcQQmlDebuggingEnabler_new())

proc create*(T: type gen_qqmldebug_types.QQmlDebuggingEnabler, printWarning: bool): gen_qqmldebug_types.QQmlDebuggingEnabler =
  gen_qqmldebug_types.QQmlDebuggingEnabler.init(fcQQmlDebuggingEnabler_new2(printWarning))

proc debuggerServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, ): seq[string] =
  var v_ma = fcQQmlDebuggingEnabler_debuggerServices()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc inspectorServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, ): seq[string] =
  var v_ma = fcQQmlDebuggingEnabler_inspectorServices()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc profilerServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, ): seq[string] =
  var v_ma = fcQQmlDebuggingEnabler_profilerServices()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc nativeDebuggerServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, ): seq[string] =
  var v_ma = fcQQmlDebuggingEnabler_nativeDebuggerServices()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, services: seq[string]): void =
  var services_CArray = newSeq[struct_miqt_string](len(services))
  for i in 0..<len(services):
    services_CArray[i] = struct_miqt_string(data: services[i], len: csize_t(len(services[i])))

  fcQQmlDebuggingEnabler_setServices(struct_miqt_array(len: csize_t(len(services)), data: if len(services) == 0: nil else: addr(services_CArray[0])))

proc startTcpDebugServer*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, port: cint): bool =
  fcQQmlDebuggingEnabler_startTcpDebugServer(port)

proc connectToLocalDebugger*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, socketFileName: string): bool =
  fcQQmlDebuggingEnabler_connectToLocalDebugger(struct_miqt_string(data: socketFileName, len: csize_t(len(socketFileName))))

proc startDebugConnector*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, pluginName: string): bool =
  fcQQmlDebuggingEnabler_startDebugConnector(struct_miqt_string(data: pluginName, len: csize_t(len(pluginName))))

proc startTcpDebugServer*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, port: cint, mode: cint): bool =
  fcQQmlDebuggingEnabler_startTcpDebugServer2(port, cint(mode))

proc startTcpDebugServer*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, port: cint, mode: cint, hostName: string): bool =
  fcQQmlDebuggingEnabler_startTcpDebugServer3(port, cint(mode), struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc connectToLocalDebugger*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, socketFileName: string, mode: cint): bool =
  fcQQmlDebuggingEnabler_connectToLocalDebugger2(struct_miqt_string(data: socketFileName, len: csize_t(len(socketFileName))), cint(mode))

proc startDebugConnector*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, pluginName: string, configuration: Table[string,gen_qvariant_types.QVariant]): bool =
  var configuration_Keys_CArray = newSeq[struct_miqt_string](len(configuration))
  var configuration_Values_CArray = newSeq[pointer](len(configuration))
  var configuration_ctr = 0
  for configurationk, configurationv in configuration:
    configuration_Keys_CArray[configuration_ctr] = struct_miqt_string(data: configuration_k, len: csize_t(len(configuration_k)))
    configuration_Values_CArray[configuration_ctr] = configuration_v.h
    configuration_ctr += 1

  fcQQmlDebuggingEnabler_startDebugConnector2(struct_miqt_string(data: pluginName, len: csize_t(len(pluginName))), struct_miqt_map(len: csize_t(len(configuration)),keys: if len(configuration) == 0: nil else: addr(configuration_Keys_CArray[0]), values: if len(configuration) == 0: nil else: addr(configuration_Values_CArray[0]),))

proc delete*(self: gen_qqmldebug_types.QQmlDebuggingEnabler) =
  fcQQmlDebuggingEnabler_delete(self.h)
