import ./Qt6Qml_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


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

proc fcQQmlDebuggingEnabler_enableDebugging(printWarning: bool): void {.importc: "QQmlDebuggingEnabler_enableDebugging".}
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
proc fcQQmlDebuggingEnabler_new(): ptr cQQmlDebuggingEnabler {.importc: "QQmlDebuggingEnabler_new".}
proc fcQQmlDebuggingEnabler_new2(printWarning: bool): ptr cQQmlDebuggingEnabler {.importc: "QQmlDebuggingEnabler_new2".}

proc enableDebugging*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, printWarning: bool): void =
  fcQQmlDebuggingEnabler_enableDebugging(printWarning)

proc debuggerServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler): seq[string] =
  var v_ma = fcQQmlDebuggingEnabler_debuggerServices()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc inspectorServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler): seq[string] =
  var v_ma = fcQQmlDebuggingEnabler_inspectorServices()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc profilerServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler): seq[string] =
  var v_ma = fcQQmlDebuggingEnabler_profilerServices()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc nativeDebuggerServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler): seq[string] =
  var v_ma = fcQQmlDebuggingEnabler_nativeDebuggerServices()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setServices*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, services: openArray[string]): void =
  var services_CArray = newSeq[struct_miqt_string](len(services))
  for i in 0..<len(services):
    services_CArray[i] = struct_miqt_string(data: if len(services[i]) > 0: addr services[i][0] else: nil, len: csize_t(len(services[i])))

  fcQQmlDebuggingEnabler_setServices(struct_miqt_array(len: csize_t(len(services)), data: if len(services) == 0: nil else: addr(services_CArray[0])))

proc startTcpDebugServer*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, port: cint): bool =
  fcQQmlDebuggingEnabler_startTcpDebugServer(port)

proc connectToLocalDebugger*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, socketFileName: openArray[char]): bool =
  fcQQmlDebuggingEnabler_connectToLocalDebugger(struct_miqt_string(data: if len(socketFileName) > 0: addr socketFileName[0] else: nil, len: csize_t(len(socketFileName))))

proc startDebugConnector*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, pluginName: openArray[char]): bool =
  fcQQmlDebuggingEnabler_startDebugConnector(struct_miqt_string(data: if len(pluginName) > 0: addr pluginName[0] else: nil, len: csize_t(len(pluginName))))

proc startTcpDebugServer*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, port: cint, mode: cint): bool =
  fcQQmlDebuggingEnabler_startTcpDebugServer2(port, cint(mode))

proc startTcpDebugServer*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, port: cint, mode: cint, hostName: openArray[char]): bool =
  fcQQmlDebuggingEnabler_startTcpDebugServer3(port, cint(mode), struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))))

proc connectToLocalDebugger*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, socketFileName: openArray[char], mode: cint): bool =
  fcQQmlDebuggingEnabler_connectToLocalDebugger2(struct_miqt_string(data: if len(socketFileName) > 0: addr socketFileName[0] else: nil, len: csize_t(len(socketFileName))), cint(mode))

proc startDebugConnector*(_: type gen_qqmldebug_types.QQmlDebuggingEnabler, pluginName: openArray[char], configuration: Table[string,gen_qvariant_types.QVariant]): bool =
  var configuration_Keys_CArray = newSeq[struct_miqt_string](len(configuration))
  var configuration_Values_CArray = newSeq[pointer](len(configuration))
  var configuration_ctr = 0
  for configuration_k in configuration.keys():
    configuration_Keys_CArray[configuration_ctr] = struct_miqt_string(data: if len(configuration_k) > 0: addr configuration_k[0] else: nil, len: csize_t(len(configuration_k)))
    configuration_ctr += 1
  configuration_ctr = 0
  for configuration_v in configuration.values():
    configuration_Values_CArray[configuration_ctr] = configuration_v.h
    configuration_ctr += 1

  fcQQmlDebuggingEnabler_startDebugConnector2(struct_miqt_string(data: if len(pluginName) > 0: addr pluginName[0] else: nil, len: csize_t(len(pluginName))), struct_miqt_map(len: csize_t(len(configuration)),keys: if len(configuration) == 0: nil else: addr(configuration_Keys_CArray[0]), values: if len(configuration) == 0: nil else: addr(configuration_Values_CArray[0]),))

proc create*(T: type gen_qqmldebug_types.QQmlDebuggingEnabler): gen_qqmldebug_types.QQmlDebuggingEnabler =
  gen_qqmldebug_types.QQmlDebuggingEnabler(h: fcQQmlDebuggingEnabler_new(), owned: true)

proc create*(T: type gen_qqmldebug_types.QQmlDebuggingEnabler,
    printWarning: bool): gen_qqmldebug_types.QQmlDebuggingEnabler =
  gen_qqmldebug_types.QQmlDebuggingEnabler(h: fcQQmlDebuggingEnabler_new2(printWarning), owned: true)

