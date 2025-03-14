import ./qtnetwork_pkg

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


{.compile("gen_qnetworkconfigmanager.cpp", QtNetworkCFlags).}


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

proc fcQNetworkConfigurationManager_metaObject(self: pointer): pointer {.importc: "QNetworkConfigurationManager_metaObject".}
proc fcQNetworkConfigurationManager_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkConfigurationManager_metacast".}
proc fcQNetworkConfigurationManager_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkConfigurationManager_metacall".}
proc fcQNetworkConfigurationManager_tr(s: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr".}
proc fcQNetworkConfigurationManager_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf8".}
proc fcQNetworkConfigurationManager_capabilities(self: pointer): cint {.importc: "QNetworkConfigurationManager_capabilities".}
proc fcQNetworkConfigurationManager_defaultConfiguration(self: pointer): pointer {.importc: "QNetworkConfigurationManager_defaultConfiguration".}
proc fcQNetworkConfigurationManager_allConfigurations(self: pointer): struct_miqt_array {.importc: "QNetworkConfigurationManager_allConfigurations".}
proc fcQNetworkConfigurationManager_configurationFromIdentifier(self: pointer, identifier: struct_miqt_string): pointer {.importc: "QNetworkConfigurationManager_configurationFromIdentifier".}
proc fcQNetworkConfigurationManager_isOnline(self: pointer): bool {.importc: "QNetworkConfigurationManager_isOnline".}
proc fcQNetworkConfigurationManager_updateConfigurations(self: pointer): void {.importc: "QNetworkConfigurationManager_updateConfigurations".}
proc fcQNetworkConfigurationManager_configurationAdded(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationAdded".}
proc fcQNetworkConfigurationManager_connect_configurationAdded(self: pointer, slot: int, callback: proc (slot: int, config: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_configurationAdded".}
proc fcQNetworkConfigurationManager_configurationRemoved(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationRemoved".}
proc fcQNetworkConfigurationManager_connect_configurationRemoved(self: pointer, slot: int, callback: proc (slot: int, config: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_configurationRemoved".}
proc fcQNetworkConfigurationManager_configurationChanged(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationChanged".}
proc fcQNetworkConfigurationManager_connect_configurationChanged(self: pointer, slot: int, callback: proc (slot: int, config: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_configurationChanged".}
proc fcQNetworkConfigurationManager_onlineStateChanged(self: pointer, isOnline: bool): void {.importc: "QNetworkConfigurationManager_onlineStateChanged".}
proc fcQNetworkConfigurationManager_connect_onlineStateChanged(self: pointer, slot: int, callback: proc (slot: int, isOnline: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_onlineStateChanged".}
proc fcQNetworkConfigurationManager_updateCompleted(self: pointer): void {.importc: "QNetworkConfigurationManager_updateCompleted".}
proc fcQNetworkConfigurationManager_connect_updateCompleted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_updateCompleted".}
proc fcQNetworkConfigurationManager_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr2".}
proc fcQNetworkConfigurationManager_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr3".}
proc fcQNetworkConfigurationManager_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf82".}
proc fcQNetworkConfigurationManager_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf83".}
proc fcQNetworkConfigurationManager_allConfigurations1(self: pointer, flags: cint): struct_miqt_array {.importc: "QNetworkConfigurationManager_allConfigurations1".}
proc fcQNetworkConfigurationManager_vtbl(self: pointer): pointer {.importc: "QNetworkConfigurationManager_vtbl".}
proc fcQNetworkConfigurationManager_vdata(self: pointer): pointer {.importc: "QNetworkConfigurationManager_vdata".}
type cQNetworkConfigurationManagerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNetworkConfigurationManager_virtualbase_metaObject(self: pointer): pointer {.importc: "QNetworkConfigurationManager_virtualbase_metaObject".}
proc fcQNetworkConfigurationManager_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkConfigurationManager_virtualbase_metacast".}
proc fcQNetworkConfigurationManager_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkConfigurationManager_virtualbase_metacall".}
proc fcQNetworkConfigurationManager_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNetworkConfigurationManager_virtualbase_event".}
proc fcQNetworkConfigurationManager_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNetworkConfigurationManager_virtualbase_eventFilter".}
proc fcQNetworkConfigurationManager_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_timerEvent".}
proc fcQNetworkConfigurationManager_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_childEvent".}
proc fcQNetworkConfigurationManager_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_customEvent".}
proc fcQNetworkConfigurationManager_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_connectNotify".}
proc fcQNetworkConfigurationManager_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_disconnectNotify".}
proc fcQNetworkConfigurationManager_protectedbase_sender(self: pointer): pointer {.importc: "QNetworkConfigurationManager_protectedbase_sender".}
proc fcQNetworkConfigurationManager_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QNetworkConfigurationManager_protectedbase_senderSignalIndex".}
proc fcQNetworkConfigurationManager_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNetworkConfigurationManager_protectedbase_receivers".}
proc fcQNetworkConfigurationManager_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNetworkConfigurationManager_protectedbase_isSignalConnected".}
proc fcQNetworkConfigurationManager_new(vtbl, vdata: pointer): ptr cQNetworkConfigurationManager {.importc: "QNetworkConfigurationManager_new".}
proc fcQNetworkConfigurationManager_new2(vtbl, vdata: pointer, parent: pointer): ptr cQNetworkConfigurationManager {.importc: "QNetworkConfigurationManager_new2".}
proc fcQNetworkConfigurationManager_staticMetaObject(): pointer {.importc: "QNetworkConfigurationManager_staticMetaObject".}

proc metaObject*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkConfigurationManager_metaObject(self.h), owned: false)

proc metacast*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cstring): pointer =
  fcQNetworkConfigurationManager_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkConfigurationManager_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring): string =
  let v_ms = fcQNetworkConfigurationManager_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring): string =
  let v_ms = fcQNetworkConfigurationManager_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc capabilities*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): cint =
  cint(fcQNetworkConfigurationManager_capabilities(self.h))

proc defaultConfiguration*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkConfigurationManager_defaultConfiguration(self.h), owned: true)

proc allConfigurations*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): seq[gen_qnetworkconfiguration_types.QNetworkConfiguration] =
  var v_ma = fcQNetworkConfigurationManager_allConfigurations(self.h)
  var vx_ret = newSeq[gen_qnetworkconfiguration_types.QNetworkConfiguration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc configurationFromIdentifier*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, identifier: openArray[char]): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkConfigurationManager_configurationFromIdentifier(self.h, struct_miqt_string(data: if len(identifier) > 0: addr identifier[0] else: nil, len: csize_t(len(identifier)))), owned: true)

proc isOnline*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): bool =
  fcQNetworkConfigurationManager_isOnline(self.h)

proc updateConfigurations*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): void =
  fcQNetworkConfigurationManager_updateConfigurations(self.h)

proc configurationAdded*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfigurationManager_configurationAdded(self.h, config.h)

type QNetworkConfigurationManagerconfigurationAddedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc cQNetworkConfigurationManager_slot_callback_configurationAdded(slot: int, config: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationAddedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config, owned: false)

  nimfunc[](slotval1)

proc cQNetworkConfigurationManager_slot_callback_configurationAdded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManagerconfigurationAddedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconfigurationAdded*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationAddedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationAdded(self.h, cast[int](addr tmp[]), cQNetworkConfigurationManager_slot_callback_configurationAdded, cQNetworkConfigurationManager_slot_callback_configurationAdded_release)

proc configurationRemoved*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfigurationManager_configurationRemoved(self.h, config.h)

type QNetworkConfigurationManagerconfigurationRemovedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc cQNetworkConfigurationManager_slot_callback_configurationRemoved(slot: int, config: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config, owned: false)

  nimfunc[](slotval1)

proc cQNetworkConfigurationManager_slot_callback_configurationRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManagerconfigurationRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconfigurationRemoved*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationRemovedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationRemoved(self.h, cast[int](addr tmp[]), cQNetworkConfigurationManager_slot_callback_configurationRemoved, cQNetworkConfigurationManager_slot_callback_configurationRemoved_release)

proc configurationChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfigurationManager_configurationChanged(self.h, config.h)

type QNetworkConfigurationManagerconfigurationChangedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc cQNetworkConfigurationManager_slot_callback_configurationChanged(slot: int, config: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config, owned: false)

  nimfunc[](slotval1)

proc cQNetworkConfigurationManager_slot_callback_configurationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManagerconfigurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconfigurationChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationChangedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationChanged(self.h, cast[int](addr tmp[]), cQNetworkConfigurationManager_slot_callback_configurationChanged, cQNetworkConfigurationManager_slot_callback_configurationChanged_release)

proc onlineStateChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, isOnline: bool): void =
  fcQNetworkConfigurationManager_onlineStateChanged(self.h, isOnline)

type QNetworkConfigurationManageronlineStateChangedSlot* = proc(isOnline: bool)
proc cQNetworkConfigurationManager_slot_callback_onlineStateChanged(slot: int, isOnline: bool) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManageronlineStateChangedSlot](cast[pointer](slot))
  let slotval1 = isOnline

  nimfunc[](slotval1)

proc cQNetworkConfigurationManager_slot_callback_onlineStateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManageronlineStateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ononlineStateChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManageronlineStateChangedSlot) =
  var tmp = new QNetworkConfigurationManageronlineStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_onlineStateChanged(self.h, cast[int](addr tmp[]), cQNetworkConfigurationManager_slot_callback_onlineStateChanged, cQNetworkConfigurationManager_slot_callback_onlineStateChanged_release)

proc updateCompleted*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): void =
  fcQNetworkConfigurationManager_updateCompleted(self.h)

type QNetworkConfigurationManagerupdateCompletedSlot* = proc()
proc cQNetworkConfigurationManager_slot_callback_updateCompleted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerupdateCompletedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQNetworkConfigurationManager_slot_callback_updateCompleted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManagerupdateCompletedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onupdateCompleted*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerupdateCompletedSlot) =
  var tmp = new QNetworkConfigurationManagerupdateCompletedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_updateCompleted(self.h, cast[int](addr tmp[]), cQNetworkConfigurationManager_slot_callback_updateCompleted, cQNetworkConfigurationManager_slot_callback_updateCompleted_release)

proc tr*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkConfigurationManager_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkConfigurationManager_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkConfigurationManager_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkConfigurationManager_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc allConfigurations*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, flags: cint): seq[gen_qnetworkconfiguration_types.QNetworkConfiguration] =
  var v_ma = fcQNetworkConfigurationManager_allConfigurations1(self.h, cint(flags))
  var vx_ret = newSeq[gen_qnetworkconfiguration_types.QNetworkConfiguration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

type QNetworkConfigurationManagermetaObjectProc* = proc(self: QNetworkConfigurationManager): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QNetworkConfigurationManagermetacastProc* = proc(self: QNetworkConfigurationManager, param1: cstring): pointer {.raises: [], gcsafe.}
type QNetworkConfigurationManagermetacallProc* = proc(self: QNetworkConfigurationManager, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QNetworkConfigurationManagereventProc* = proc(self: QNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNetworkConfigurationManagereventFilterProc* = proc(self: QNetworkConfigurationManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNetworkConfigurationManagertimerEventProc* = proc(self: QNetworkConfigurationManager, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QNetworkConfigurationManagerchildEventProc* = proc(self: QNetworkConfigurationManager, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QNetworkConfigurationManagercustomEventProc* = proc(self: QNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QNetworkConfigurationManagerconnectNotifyProc* = proc(self: QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNetworkConfigurationManagerdisconnectNotifyProc* = proc(self: QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNetworkConfigurationManagerVTable* {.inheritable, pure.} = object
  vtbl: cQNetworkConfigurationManagerVTable
  metaObject*: QNetworkConfigurationManagermetaObjectProc
  metacast*: QNetworkConfigurationManagermetacastProc
  metacall*: QNetworkConfigurationManagermetacallProc
  event*: QNetworkConfigurationManagereventProc
  eventFilter*: QNetworkConfigurationManagereventFilterProc
  timerEvent*: QNetworkConfigurationManagertimerEventProc
  childEvent*: QNetworkConfigurationManagerchildEventProc
  customEvent*: QNetworkConfigurationManagercustomEventProc
  connectNotify*: QNetworkConfigurationManagerconnectNotifyProc
  disconnectNotify*: QNetworkConfigurationManagerdisconnectNotifyProc
proc QNetworkConfigurationManagermetaObject*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkConfigurationManager_virtualbase_metaObject(self.h), owned: false)

proc cQNetworkConfigurationManager_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QNetworkConfigurationManagermetacast*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cstring): pointer =
  fcQNetworkConfigurationManager_virtualbase_metacast(self.h, param1)

proc cQNetworkConfigurationManager_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QNetworkConfigurationManagermetacall*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkConfigurationManager_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQNetworkConfigurationManager_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QNetworkConfigurationManagerevent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkConfigurationManager_virtualbase_event(self.h, event.h)

proc cQNetworkConfigurationManager_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QNetworkConfigurationManagereventFilter*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkConfigurationManager_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQNetworkConfigurationManager_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QNetworkConfigurationManagertimerEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNetworkConfigurationManager_virtualbase_timerEvent(self.h, event.h)

proc cQNetworkConfigurationManager_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QNetworkConfigurationManagerchildEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNetworkConfigurationManager_virtualbase_childEvent(self.h, event.h)

proc cQNetworkConfigurationManager_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QNetworkConfigurationManagercustomEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): void =
  fcQNetworkConfigurationManager_virtualbase_customEvent(self.h, event.h)

proc cQNetworkConfigurationManager_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QNetworkConfigurationManagerconnectNotify*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkConfigurationManager_virtualbase_connectNotify(self.h, signal.h)

proc cQNetworkConfigurationManager_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QNetworkConfigurationManagerdisconnectNotify*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkConfigurationManager_virtualbase_disconnectNotify(self.h, signal.h)

proc cQNetworkConfigurationManager_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQNetworkConfigurationManager* {.inheritable.} = ref object of QNetworkConfigurationManager
  vtbl*: cQNetworkConfigurationManagerVTable
method metaObject*(self: VirtualQNetworkConfigurationManager): gen_qobjectdefs_types.QMetaObject {.base.} =
  QNetworkConfigurationManagermetaObject(self[])
proc cQNetworkConfigurationManager_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQNetworkConfigurationManager, param1: cstring): pointer {.base.} =
  QNetworkConfigurationManagermetacast(self[], param1)
proc cQNetworkConfigurationManager_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQNetworkConfigurationManager, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QNetworkConfigurationManagermetacall(self[], param1, param2, param3)
proc cQNetworkConfigurationManager_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNetworkConfigurationManagerevent(self[], event)
proc cQNetworkConfigurationManager_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQNetworkConfigurationManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNetworkConfigurationManagereventFilter(self[], watched, event)
proc cQNetworkConfigurationManager_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQNetworkConfigurationManager, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QNetworkConfigurationManagertimerEvent(self[], event)
proc cQNetworkConfigurationManager_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQNetworkConfigurationManager, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QNetworkConfigurationManagerchildEvent(self[], event)
proc cQNetworkConfigurationManager_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QNetworkConfigurationManagercustomEvent(self[], event)
proc cQNetworkConfigurationManager_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNetworkConfigurationManagerconnectNotify(self[], signal)
proc cQNetworkConfigurationManager_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNetworkConfigurationManagerdisconnectNotify(self[], signal)
proc cQNetworkConfigurationManager_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkConfigurationManager](fcQNetworkConfigurationManager_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkConfigurationManager_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): cint =
  fcQNetworkConfigurationManager_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: cstring): cint =
  fcQNetworkConfigurationManager_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNetworkConfigurationManager_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager,
    vtbl: ref QNetworkConfigurationManagerVTable = nil): gen_qnetworkconfigmanager_types.QNetworkConfigurationManager =
  let vtbl = if vtbl == nil: new QNetworkConfigurationManagerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQNetworkConfigurationManager_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQNetworkConfigurationManager_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQNetworkConfigurationManager_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQNetworkConfigurationManager_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQNetworkConfigurationManager_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQNetworkConfigurationManager_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQNetworkConfigurationManager_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQNetworkConfigurationManager_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQNetworkConfigurationManager_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQNetworkConfigurationManager_vtable_callback_disconnectNotify
  gen_qnetworkconfigmanager_types.QNetworkConfigurationManager(h: fcQNetworkConfigurationManager_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager,
    parent: gen_qobject_types.QObject,
    vtbl: ref QNetworkConfigurationManagerVTable = nil): gen_qnetworkconfigmanager_types.QNetworkConfigurationManager =
  let vtbl = if vtbl == nil: new QNetworkConfigurationManagerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkConfigurationManagerVTable](fcQNetworkConfigurationManager_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQNetworkConfigurationManager_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQNetworkConfigurationManager_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQNetworkConfigurationManager_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQNetworkConfigurationManager_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQNetworkConfigurationManager_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQNetworkConfigurationManager_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQNetworkConfigurationManager_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQNetworkConfigurationManager_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQNetworkConfigurationManager_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQNetworkConfigurationManager_vtable_callback_disconnectNotify
  gen_qnetworkconfigmanager_types.QNetworkConfigurationManager(h: fcQNetworkConfigurationManager_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQNetworkConfigurationManager_mvtbl = cQNetworkConfigurationManagerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQNetworkConfigurationManager()[])](self.fcQNetworkConfigurationManager_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQNetworkConfigurationManager_method_callback_metaObject,
  metacast: cQNetworkConfigurationManager_method_callback_metacast,
  metacall: cQNetworkConfigurationManager_method_callback_metacall,
  event: cQNetworkConfigurationManager_method_callback_event,
  eventFilter: cQNetworkConfigurationManager_method_callback_eventFilter,
  timerEvent: cQNetworkConfigurationManager_method_callback_timerEvent,
  childEvent: cQNetworkConfigurationManager_method_callback_childEvent,
  customEvent: cQNetworkConfigurationManager_method_callback_customEvent,
  connectNotify: cQNetworkConfigurationManager_method_callback_connectNotify,
  disconnectNotify: cQNetworkConfigurationManager_method_callback_disconnectNotify,
)
proc create*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager,
    inst: VirtualQNetworkConfigurationManager) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkConfigurationManager_new(addr(cQNetworkConfigurationManager_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager,
    parent: gen_qobject_types.QObject,
    inst: VirtualQNetworkConfigurationManager) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkConfigurationManager_new2(addr(cQNetworkConfigurationManager_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkConfigurationManager_staticMetaObject())
