import ./Qt5Network_libs

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
proc fcQNetworkConfigurationManager_connect_configurationAdded(self: pointer, slot: int, callback: proc (slot: int, config: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_configurationAdded".}
proc fcQNetworkConfigurationManager_configurationRemoved(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationRemoved".}
proc fcQNetworkConfigurationManager_connect_configurationRemoved(self: pointer, slot: int, callback: proc (slot: int, config: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_configurationRemoved".}
proc fcQNetworkConfigurationManager_configurationChanged(self: pointer, config: pointer): void {.importc: "QNetworkConfigurationManager_configurationChanged".}
proc fcQNetworkConfigurationManager_connect_configurationChanged(self: pointer, slot: int, callback: proc (slot: int, config: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_configurationChanged".}
proc fcQNetworkConfigurationManager_onlineStateChanged(self: pointer, isOnline: bool): void {.importc: "QNetworkConfigurationManager_onlineStateChanged".}
proc fcQNetworkConfigurationManager_connect_onlineStateChanged(self: pointer, slot: int, callback: proc (slot: int, isOnline: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_onlineStateChanged".}
proc fcQNetworkConfigurationManager_updateCompleted(self: pointer, ): void {.importc: "QNetworkConfigurationManager_updateCompleted".}
proc fcQNetworkConfigurationManager_connect_updateCompleted(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkConfigurationManager_connect_updateCompleted".}
proc fcQNetworkConfigurationManager_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr2".}
proc fcQNetworkConfigurationManager_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkConfigurationManager_tr3".}
proc fcQNetworkConfigurationManager_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf82".}
proc fcQNetworkConfigurationManager_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkConfigurationManager_trUtf83".}
proc fcQNetworkConfigurationManager_allConfigurations1(self: pointer, flags: cint): struct_miqt_array {.importc: "QNetworkConfigurationManager_allConfigurations1".}
type cQNetworkConfigurationManagerVTable = object
  destructor*: proc(vtbl: ptr cQNetworkConfigurationManagerVTable, self: ptr cQNetworkConfigurationManager) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNetworkConfigurationManager_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QNetworkConfigurationManager_virtualbase_metaObject".}
proc fcQNetworkConfigurationManager_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkConfigurationManager_virtualbase_metacast".}
proc fcQNetworkConfigurationManager_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkConfigurationManager_virtualbase_metacall".}
proc fcQNetworkConfigurationManager_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNetworkConfigurationManager_virtualbase_event".}
proc fcQNetworkConfigurationManager_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNetworkConfigurationManager_virtualbase_eventFilter".}
proc fcQNetworkConfigurationManager_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_timerEvent".}
proc fcQNetworkConfigurationManager_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_childEvent".}
proc fcQNetworkConfigurationManager_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_customEvent".}
proc fcQNetworkConfigurationManager_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_connectNotify".}
proc fcQNetworkConfigurationManager_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkConfigurationManager_virtualbase_disconnectNotify".}
proc fcQNetworkConfigurationManager_protectedbase_sender(self: pointer, ): pointer {.importc: "QNetworkConfigurationManager_protectedbase_sender".}
proc fcQNetworkConfigurationManager_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QNetworkConfigurationManager_protectedbase_senderSignalIndex".}
proc fcQNetworkConfigurationManager_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNetworkConfigurationManager_protectedbase_receivers".}
proc fcQNetworkConfigurationManager_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNetworkConfigurationManager_protectedbase_isSignalConnected".}
proc fcQNetworkConfigurationManager_new(vtbl: pointer, ): ptr cQNetworkConfigurationManager {.importc: "QNetworkConfigurationManager_new".}
proc fcQNetworkConfigurationManager_new2(vtbl: pointer, parent: pointer): ptr cQNetworkConfigurationManager {.importc: "QNetworkConfigurationManager_new2".}
proc fcQNetworkConfigurationManager_staticMetaObject(): pointer {.importc: "QNetworkConfigurationManager_staticMetaObject".}
proc fcQNetworkConfigurationManager_delete(self: pointer) {.importc: "QNetworkConfigurationManager_delete".}

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
  c_free(v_ma.data)
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
proc miqt_exec_callback_cQNetworkConfigurationManager_configurationAdded(slot: int, config: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationAddedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQNetworkConfigurationManager_configurationAdded_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManagerconfigurationAddedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconfigurationAdded*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationAddedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationAddedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationAdded(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkConfigurationManager_configurationAdded, miqt_exec_callback_cQNetworkConfigurationManager_configurationAdded_release)

proc configurationRemoved*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfigurationManager_configurationRemoved(self.h, config.h)

type QNetworkConfigurationManagerconfigurationRemovedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc miqt_exec_callback_cQNetworkConfigurationManager_configurationRemoved(slot: int, config: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationRemovedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQNetworkConfigurationManager_configurationRemoved_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManagerconfigurationRemovedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconfigurationRemoved*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationRemovedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationRemovedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationRemoved(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkConfigurationManager_configurationRemoved, miqt_exec_callback_cQNetworkConfigurationManager_configurationRemoved_release)

proc configurationChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, config: gen_qnetworkconfiguration_types.QNetworkConfiguration): void =
  fcQNetworkConfigurationManager_configurationChanged(self.h, config.h)

type QNetworkConfigurationManagerconfigurationChangedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration)
proc miqt_exec_callback_cQNetworkConfigurationManager_configurationChanged(slot: int, config: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerconfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQNetworkConfigurationManager_configurationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManagerconfigurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onconfigurationChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerconfigurationChangedSlot) =
  var tmp = new QNetworkConfigurationManagerconfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_configurationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkConfigurationManager_configurationChanged, miqt_exec_callback_cQNetworkConfigurationManager_configurationChanged_release)

proc onlineStateChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, isOnline: bool): void =
  fcQNetworkConfigurationManager_onlineStateChanged(self.h, isOnline)

type QNetworkConfigurationManageronlineStateChangedSlot* = proc(isOnline: bool)
proc miqt_exec_callback_cQNetworkConfigurationManager_onlineStateChanged(slot: int, isOnline: bool) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManageronlineStateChangedSlot](cast[pointer](slot))
  let slotval1 = isOnline

  nimfunc[](slotval1)

proc miqt_exec_callback_cQNetworkConfigurationManager_onlineStateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManageronlineStateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ononlineStateChanged*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManageronlineStateChangedSlot) =
  var tmp = new QNetworkConfigurationManageronlineStateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_onlineStateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkConfigurationManager_onlineStateChanged, miqt_exec_callback_cQNetworkConfigurationManager_onlineStateChanged_release)

proc updateCompleted*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): void =
  fcQNetworkConfigurationManager_updateCompleted(self.h)

type QNetworkConfigurationManagerupdateCompletedSlot* = proc()
proc miqt_exec_callback_cQNetworkConfigurationManager_updateCompleted(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkConfigurationManagerupdateCompletedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQNetworkConfigurationManager_updateCompleted_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkConfigurationManagerupdateCompletedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onupdateCompleted*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, slot: QNetworkConfigurationManagerupdateCompletedSlot) =
  var tmp = new QNetworkConfigurationManagerupdateCompletedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkConfigurationManager_connect_updateCompleted(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkConfigurationManager_updateCompleted, miqt_exec_callback_cQNetworkConfigurationManager_updateCompleted_release)

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
type QNetworkConfigurationManagerVTable* = object
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
proc QNetworkConfigurationManagermetaObject*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkConfigurationManager_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQNetworkConfigurationManager_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QNetworkConfigurationManagermetacast*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cstring): pointer =
  fcQNetworkConfigurationManager_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQNetworkConfigurationManager_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QNetworkConfigurationManagermetacall*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkConfigurationManager_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQNetworkConfigurationManager_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QNetworkConfigurationManagerevent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkConfigurationManager_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQNetworkConfigurationManager_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QNetworkConfigurationManagereventFilter*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkConfigurationManager_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQNetworkConfigurationManager_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QNetworkConfigurationManagertimerEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNetworkConfigurationManager_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkConfigurationManager_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QNetworkConfigurationManagerchildEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNetworkConfigurationManager_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkConfigurationManager_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QNetworkConfigurationManagercustomEvent*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, event: gen_qcoreevent_types.QEvent): void =
  fcQNetworkConfigurationManager_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkConfigurationManager_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QNetworkConfigurationManagerconnectNotify*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkConfigurationManager_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQNetworkConfigurationManager_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QNetworkConfigurationManagerdisconnectNotify*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkConfigurationManager_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQNetworkConfigurationManager_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkConfigurationManagerVTable](vtbl)
  let self = QNetworkConfigurationManager(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkConfigurationManager_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, ): cint =
  fcQNetworkConfigurationManager_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: cstring): cint =
  fcQNetworkConfigurationManager_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNetworkConfigurationManager_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager,
    vtbl: ref QNetworkConfigurationManagerVTable = nil): gen_qnetworkconfigmanager_types.QNetworkConfigurationManager =
  let vtbl = if vtbl == nil: new QNetworkConfigurationManagerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNetworkConfigurationManagerVTable, _: ptr cQNetworkConfigurationManager) {.cdecl.} =
    let vtbl = cast[ref QNetworkConfigurationManagerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQNetworkConfigurationManager_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQNetworkConfigurationManager_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQNetworkConfigurationManager_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQNetworkConfigurationManager_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQNetworkConfigurationManager_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQNetworkConfigurationManager_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQNetworkConfigurationManager_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQNetworkConfigurationManager_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQNetworkConfigurationManager_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQNetworkConfigurationManager_disconnectNotify
  gen_qnetworkconfigmanager_types.QNetworkConfigurationManager(h: fcQNetworkConfigurationManager_new(addr(vtbl[]), ))

proc create*(T: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager,
    parent: gen_qobject_types.QObject,
    vtbl: ref QNetworkConfigurationManagerVTable = nil): gen_qnetworkconfigmanager_types.QNetworkConfigurationManager =
  let vtbl = if vtbl == nil: new QNetworkConfigurationManagerVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNetworkConfigurationManagerVTable, _: ptr cQNetworkConfigurationManager) {.cdecl.} =
    let vtbl = cast[ref QNetworkConfigurationManagerVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQNetworkConfigurationManager_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQNetworkConfigurationManager_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQNetworkConfigurationManager_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQNetworkConfigurationManager_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQNetworkConfigurationManager_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQNetworkConfigurationManager_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQNetworkConfigurationManager_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQNetworkConfigurationManager_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQNetworkConfigurationManager_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQNetworkConfigurationManager_disconnectNotify
  gen_qnetworkconfigmanager_types.QNetworkConfigurationManager(h: fcQNetworkConfigurationManager_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qnetworkconfigmanager_types.QNetworkConfigurationManager): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkConfigurationManager_staticMetaObject())
proc delete*(self: gen_qnetworkconfigmanager_types.QNetworkConfigurationManager) =
  fcQNetworkConfigurationManager_delete(self.h)
