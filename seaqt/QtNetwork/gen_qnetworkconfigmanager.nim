import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
{.compile("gen_qnetworkconfigmanager.cpp", cflags).}


type QNetworkConfigurationManagerCapabilityEnum* = distinct cint
template CanStartAndStopInterfaces*(_: type QNetworkConfigurationManagerCapabilityEnum): untyped = 1
template DirectConnectionRouting*(_: type QNetworkConfigurationManagerCapabilityEnum): untyped = 2
template SystemSessionSupport*(_: type QNetworkConfigurationManagerCapabilityEnum): untyped = 4
template ApplicationLevelRoaming*(_: type QNetworkConfigurationManagerCapabilityEnum): untyped = 8
template ForcedRoaming*(_: type QNetworkConfigurationManagerCapabilityEnum): untyped = 16
template DataStatistics*(_: type QNetworkConfigurationManagerCapabilityEnum): untyped = 32
template NetworkSessionRequired*(_: type QNetworkConfigurationManagerCapabilityEnum): untyped = 64


import ./gen_qnetworkconfigmanager_types
export gen_qnetworkconfigmanager_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qnetworkconfiguration_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qnetworkconfiguration_types

type cQNetworkConfigurationManager*{.exportc: "QNetworkConfigurationManager", incompleteStruct.} = object

proc fcQNetworkConfigurationManager_new(): ptr cQNetworkConfigurationManager {.importc: "QNetworkConfigurationManager_new".}
proc fcQNetworkConfigurationManager_new2(parent: pointer): ptr cQNetworkConfigurationManager {.importc: "QNetworkConfigurationManager_new2".}
proc fcQNetworkConfigurationManager_metaObject(self: pointer, ): pointer {.importc: "QNetworkConfigurationManager_metaObject".}
proc fcQNetworkConfigurationManager_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkConfigurationManager_metacast".}
proc fcQNetworkConfigurationManager_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkConfigurationManager_metacall".}
proc fcQNetworkConfigurationManager_tr(s: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr".}
proc fcQNetworkConfigurationManager_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf8".}
proc fcQNetworkConfigurationManager_capabilities(self: pointer, ): cint {.importc: "QNetworkConfigurationManager_capabilities".}
proc fcQNetworkConfigurationManager_defaultConfiguration(self: pointer, ): pointer {.importc: "QNetworkConfigurationManager_defaultConfiguration".}
proc fcQNetworkConfigurationManager_allConfigurations(self: pointer, ): struct_miqt_array {.importc: "QNetworkConfigurationManager_allConfigurations".}
proc fcQNetworkConfigurationManager_configurationFromIdentifier(self: pointer, identifier: struct_miqt_string): pointer {.importc: "QNetworkConfigurationManager_configurationFromIdentifier".}
proc fcQNetworkConfigurationManager_isOnline(self: pointer, ): bool {.importc: "QNetworkConfigurationManager_isOnline".}
proc fcQNetworkConfigurationManager_updateConfigurations(self: pointer, ): void {.importc: "QNetworkConfigurationManager_updateConfigurations".}
proc fcQNetworkConfigurationManager_configurationAdded(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationAdded".}
proc fcQNetworkConfigurationManager_connect_configurationAdded(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_configurationAdded".}
proc fcQNetworkConfigurationManager_configurationRemoved(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationRemoved".}
proc fcQNetworkConfigurationManager_connect_configurationRemoved(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_configurationRemoved".}
proc fcQNetworkConfigurationManager_configurationChanged(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationChanged".}
proc fcQNetworkConfigurationManager_connect_configurationChanged(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_configurationChanged".}
proc fcQNetworkConfigurationManager_onlineStateChanged(self: pointer, isOnline: bool): void {.importc: "QNetworkConfigurationManager_onlineStateChanged".}
proc fcQNetworkConfigurationManager_connect_onlineStateChanged(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_onlineStateChanged".}
proc fcQNetworkConfigurationManager_updateCompleted(self: pointer, ): void {.importc: "QNetworkConfigurationManager_updateCompleted".}
proc fcQNetworkConfigurationManager_connect_updateCompleted(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_connect_updateCompleted".}
proc fcQNetworkConfigurationManager_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr2".}
proc fcQNetworkConfigurationManager_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr3".}
proc fcQNetworkConfigurationManager_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf82".}
proc fcQNetworkConfigurationManager_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf83".}
proc fcQNetworkConfigurationManager_allConfigurations1(self: pointer, flags: cint): struct_miqt_array {.importc: "QNetworkConfigurationManager_allConfigurations1".}
proc fQNetworkConfigurationManager_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QNetworkConfigurationManager_virtualbase_metaObject".}
proc fcQNetworkConfigurationManager_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_metaObject".}
proc fQNetworkConfigurationManager_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QNetworkConfigurationManager_virtualbase_metacast".}
proc fcQNetworkConfigurationManager_override_virtual_metacast(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_metacast".}
proc fQNetworkConfigurationManager_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QNetworkConfigurationManager_virtualbase_metacall".}
proc fcQNetworkConfigurationManager_override_virtual_metacall(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_metacall".}
proc fQNetworkConfigurationManager_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QNetworkConfigurationManager_virtualbase_event".}
proc fcQNetworkConfigurationManager_override_virtual_event(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_event".}
proc fQNetworkConfigurationManager_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QNetworkConfigurationManager_virtualbase_eventFilter".}
proc fcQNetworkConfigurationManager_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_eventFilter".}
proc fQNetworkConfigurationManager_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_timerEvent".}
proc fcQNetworkConfigurationManager_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_timerEvent".}
proc fQNetworkConfigurationManager_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_childEvent".}
proc fcQNetworkConfigurationManager_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_childEvent".}
proc fQNetworkConfigurationManager_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_customEvent".}
proc fcQNetworkConfigurationManager_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_customEvent".}
proc fQNetworkConfigurationManager_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_connectNotify".}
proc fcQNetworkConfigurationManager_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_connectNotify".}
proc fQNetworkConfigurationManager_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkConfigurationManager_virtualbase_disconnectNotify".}
proc fcQNetworkConfigurationManager_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QNetworkConfigurationManager_override_virtual_disconnectNotify".}
proc fcQNetworkConfigurationManager_staticMetaObject(): pointer {.importc: "QNetworkConfigurationManager_staticMetaObject".}
proc fcQNetworkConfigurationManager_delete(self: pointer) {.importc: "QNetworkConfigurationManager_delete".}


func init*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, h: ptr cQNetworkConfigurationManager): gen_qnetworkconfigmanager_types.QNetworkConfigurationManager =
  T(h: h)
proc create*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): gen_qnetworkconfigmanager_types.QNetworkConfigurationManager =
  gen_qnetworkconfigmanager_types.QNetworkConfigurationManager.init(fcQNetworkConfigurationManager_new())

proc create*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, parent: gen_qobject_types.QObject): gen_qnetworkconfigmanager_types.QNetworkConfigurationManager =
  gen_qnetworkconfigmanager_types.QNetworkConfigurationManager.init(fcQNetworkConfigurationManager_new2(parent.h))

proc metaObject*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkConfigurationManager_metaObject(self.h))

proc metacast*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cstring): pointer =
  fcQNetworkConfigurationManager_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkConfigurationManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring): string =
  let v_ms = fcQNetworkConfigurationManager_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring): string =
  let v_ms = fcQNetworkConfigurationManager_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capabilities*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): cint =
  cint(fcQNetworkConfigurationManager_capabilities(self.h))

proc defaultConfiguration*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkConfigurationManager_defaultConfiguration(self.h))

proc allConfigurations*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): seq[gen_qnetworkconfiguration_types.QNetworkConfiguration] =
  var v_ma = fcQNetworkConfigurationManager_allConfigurations(self.h)
  var vx_ret = newSeq[gen_qnetworkconfiguration_types.QNetworkConfiguration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: v_outCast[i])
  vx_ret

proc configurationFromIdentifier*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, identifier: string): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkConfigurationManager_configurationFromIdentifier(self.h, struct_miqt_string(data: identifier, len: csize_t(len(identifier)))))

proc isOnline*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): bool =
  fcQNetworkConfigurationManager_isOnline(self.h)

proc updateConfigurations*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): void =
  fcQNetworkConfigurationManager_updateConfigurations(self.h)

proc configurationAdded*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfigurationManager_configurationAdded(self.h, config.h)

type QNetworkConfigurationManagerconfigurationAddedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc miqt_exec_callback_QNetworkConfigurationManager_configurationAdded(slot: int, config: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationAddedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config)

  nimfunc[](slotval1)

proc onconfigurationAdded*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationAddedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationAdded(self.h, cast[int](addr tmp[]))

proc configurationRemoved*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfigurationManager_configurationRemoved(self.h, config.h)

type QNetworkConfigurationManagerconfigurationRemovedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc miqt_exec_callback_QNetworkConfigurationManager_configurationRemoved(slot: int, config: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config)

  nimfunc[](slotval1)

proc onconfigurationRemoved*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationRemovedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationRemoved(self.h, cast[int](addr tmp[]))

proc configurationChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfigurationManager_configurationChanged(self.h, config.h)

type QNetworkConfigurationManagerconfigurationChangedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc miqt_exec_callback_QNetworkConfigurationManager_configurationChanged(slot: int, config: pointer) {.exportc.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config)

  nimfunc[](slotval1)

proc onconfigurationChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationChangedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationChanged(self.h, cast[int](addr tmp[]))

proc onlineStateChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, isOnline: bool): void =
  fcQNetworkConfigurationManager_onlineStateChanged(self.h, isOnline)

type QNetworkConfigurationManageronlineStateChangedSlot* = proc(isOnline: bool)
proc miqt_exec_callback_QNetworkConfigurationManager_onlineStateChanged(slot: int, isOnline: bool) {.exportc.} =
  let nimfunc = cast[ptr QNetworkConfigurationManageronlineStateChangedSlot](cast[pointer](slot))
  let slotval1 = isOnline

  nimfunc[](slotval1)

proc ononlineStateChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManageronlineStateChangedSlot) =
  var tmp = new QNetworkConfigurationManageronlineStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_onlineStateChanged(self.h, cast[int](addr tmp[]))

proc updateCompleted*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): void =
  fcQNetworkConfigurationManager_updateCompleted(self.h)

type QNetworkConfigurationManagerupdateCompletedSlot* = proc()
proc miqt_exec_callback_QNetworkConfigurationManager_updateCompleted(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerupdateCompletedSlot](cast[pointer](slot))
  nimfunc[]()

proc onupdateCompleted*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerupdateCompletedSlot) =
  var tmp = new QNetworkConfigurationManagerupdateCompletedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_updateCompleted(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkConfigurationManager_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkConfigurationManager_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkConfigurationManager_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkConfigurationManager_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc allConfigurations*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, flags: cint): seq[gen_qnetworkconfiguration_types.QNetworkConfiguration] =
  var v_ma = fcQNetworkConfigurationManager_allConfigurations1(self.h, cint(flags))
  var vx_ret = newSeq[gen_qnetworkconfiguration_types.QNetworkConfiguration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: v_outCast[i])
  vx_ret

proc QNetworkConfigurationManagermetaObject*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQNetworkConfigurationManager_virtualbase_metaObject(self.h))

type QNetworkConfigurationManagermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagermetaObjectProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_metaObject(self: ptr cQNetworkConfigurationManager, slot: int): pointer {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_metaObject ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QNetworkConfigurationManagermetacast*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cstring): pointer =
  fQNetworkConfigurationManager_virtualbase_metacast(self.h, param1)

type QNetworkConfigurationManagermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagermetacastProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_metacast(self: ptr cQNetworkConfigurationManager, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_metacast ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkConfigurationManagermetacall*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cint, param2: cint, param3: pointer): cint =
  fQNetworkConfigurationManager_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QNetworkConfigurationManagermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagermetacallProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_metacall(self: ptr cQNetworkConfigurationManager, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_metacall ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QNetworkConfigurationManagerevent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): bool =
  fQNetworkConfigurationManager_virtualbase_event(self.h, event.h)

type QNetworkConfigurationManagereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagereventProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_event(self: ptr cQNetworkConfigurationManager, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_event ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkConfigurationManagereventFilter*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQNetworkConfigurationManager_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkConfigurationManagereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagereventFilterProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_eventFilter(self: ptr cQNetworkConfigurationManager, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_eventFilter ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QNetworkConfigurationManagertimerEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QTimerEvent): void =
  fQNetworkConfigurationManager_virtualbase_timerEvent(self.h, event.h)

type QNetworkConfigurationManagertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagertimerEventProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_timerEvent(self: ptr cQNetworkConfigurationManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_timerEvent ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkConfigurationManagerchildEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QChildEvent): void =
  fQNetworkConfigurationManager_virtualbase_childEvent(self.h, event.h)

type QNetworkConfigurationManagerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerchildEventProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_childEvent(self: ptr cQNetworkConfigurationManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_childEvent ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkConfigurationManagercustomEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): void =
  fQNetworkConfigurationManager_virtualbase_customEvent(self.h, event.h)

type QNetworkConfigurationManagercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagercustomEventProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_customEvent(self: ptr cQNetworkConfigurationManager, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_customEvent ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkConfigurationManagerconnectNotify*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQNetworkConfigurationManager_virtualbase_connectNotify(self.h, signal.h)

type QNetworkConfigurationManagerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_connectNotify(self: ptr cQNetworkConfigurationManager, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_connectNotify ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QNetworkConfigurationManagerdisconnectNotify*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQNetworkConfigurationManager_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkConfigurationManagerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QNetworkConfigurationManagerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkConfigurationManager_disconnectNotify(self: ptr cQNetworkConfigurationManager, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkConfigurationManager_disconnectNotify ".} =
  var nimfunc = cast[ptr QNetworkConfigurationManagerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkConfigurationManager_staticMetaObject())
proc delete*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager) =
  fcQNetworkConfigurationManager_delete(self.h)
