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


{.compile("gen_qnetworksession.cpp", QtNetworkCFlags).}


type QNetworkSessionStateEnum* = distinct cint
template Invalid*(_: type QNetworkSessionStateEnum): untyped = 0
template NotAvailable*(_: type QNetworkSessionStateEnum): untyped = 1
template Connecting*(_: type QNetworkSessionStateEnum): untyped = 2
template Connected*(_: type QNetworkSessionStateEnum): untyped = 3
template Closing*(_: type QNetworkSessionStateEnum): untyped = 4
template Disconnected*(_: type QNetworkSessionStateEnum): untyped = 5
template Roaming*(_: type QNetworkSessionStateEnum): untyped = 6


type QNetworkSessionSessionErrorEnum* = distinct cint
template UnknownSessionError*(_: type QNetworkSessionSessionErrorEnum): untyped = 0
template SessionAbortedError*(_: type QNetworkSessionSessionErrorEnum): untyped = 1
template RoamingError*(_: type QNetworkSessionSessionErrorEnum): untyped = 2
template OperationNotSupportedError*(_: type QNetworkSessionSessionErrorEnum): untyped = 3
template InvalidConfigurationError*(_: type QNetworkSessionSessionErrorEnum): untyped = 4


type QNetworkSessionUsagePolicyEnum* = distinct cint
template NoPolicy*(_: type QNetworkSessionUsagePolicyEnum): untyped = 0
template NoBackgroundTrafficPolicy*(_: type QNetworkSessionUsagePolicyEnum): untyped = 1


import ./gen_qnetworksession_types
export gen_qnetworksession_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qnetworkconfiguration_types,
  ./gen_qnetworkinterface_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qvariant_types,
  gen_qnetworkconfiguration_types,
  gen_qnetworkinterface_types

type cQNetworkSession*{.exportc: "QNetworkSession", incompleteStruct.} = object

proc fcQNetworkSession_metaObject(self: pointer): pointer {.importc: "QNetworkSession_metaObject".}
proc fcQNetworkSession_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkSession_metacast".}
proc fcQNetworkSession_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkSession_metacall".}
proc fcQNetworkSession_tr(s: cstring): struct_miqt_string {.importc: "QNetworkSession_tr".}
proc fcQNetworkSession_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkSession_trUtf8".}
proc fcQNetworkSession_isOpen(self: pointer): bool {.importc: "QNetworkSession_isOpen".}
proc fcQNetworkSession_configuration(self: pointer): pointer {.importc: "QNetworkSession_configuration".}
proc fcQNetworkSession_interfaceX(self: pointer): pointer {.importc: "QNetworkSession_interface".}
proc fcQNetworkSession_state(self: pointer): cint {.importc: "QNetworkSession_state".}
proc fcQNetworkSession_error(self: pointer): cint {.importc: "QNetworkSession_error".}
proc fcQNetworkSession_errorString(self: pointer): struct_miqt_string {.importc: "QNetworkSession_errorString".}
proc fcQNetworkSession_sessionProperty(self: pointer, key: struct_miqt_string): pointer {.importc: "QNetworkSession_sessionProperty".}
proc fcQNetworkSession_setSessionProperty(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QNetworkSession_setSessionProperty".}
proc fcQNetworkSession_bytesWritten(self: pointer): culonglong {.importc: "QNetworkSession_bytesWritten".}
proc fcQNetworkSession_bytesReceived(self: pointer): culonglong {.importc: "QNetworkSession_bytesReceived".}
proc fcQNetworkSession_activeTime(self: pointer): culonglong {.importc: "QNetworkSession_activeTime".}
proc fcQNetworkSession_usagePolicies(self: pointer): cint {.importc: "QNetworkSession_usagePolicies".}
proc fcQNetworkSession_waitForOpened(self: pointer): bool {.importc: "QNetworkSession_waitForOpened".}
proc fcQNetworkSession_open(self: pointer): void {.importc: "QNetworkSession_open".}
proc fcQNetworkSession_close(self: pointer): void {.importc: "QNetworkSession_close".}
proc fcQNetworkSession_stop(self: pointer): void {.importc: "QNetworkSession_stop".}
proc fcQNetworkSession_migrate(self: pointer): void {.importc: "QNetworkSession_migrate".}
proc fcQNetworkSession_ignore(self: pointer): void {.importc: "QNetworkSession_ignore".}
proc fcQNetworkSession_accept(self: pointer): void {.importc: "QNetworkSession_accept".}
proc fcQNetworkSession_reject(self: pointer): void {.importc: "QNetworkSession_reject".}
proc fcQNetworkSession_stateChanged(self: pointer, param1: cint): void {.importc: "QNetworkSession_stateChanged".}
proc fcQNetworkSession_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_stateChanged".}
proc fcQNetworkSession_opened(self: pointer): void {.importc: "QNetworkSession_opened".}
proc fcQNetworkSession_connect_opened(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_opened".}
proc fcQNetworkSession_closed(self: pointer): void {.importc: "QNetworkSession_closed".}
proc fcQNetworkSession_connect_closed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_closed".}
proc fcQNetworkSession_errorWithQNetworkSessionSessionError(self: pointer, param1: cint): void {.importc: "QNetworkSession_errorWithQNetworkSessionSessionError".}
proc fcQNetworkSession_connect_errorWithQNetworkSessionSessionError(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_errorWithQNetworkSessionSessionError".}
proc fcQNetworkSession_preferredConfigurationChanged(self: pointer, config: pointer, isSeamless: bool): void {.importc: "QNetworkSession_preferredConfigurationChanged".}
proc fcQNetworkSession_connect_preferredConfigurationChanged(self: pointer, slot: int, callback: proc (slot: int, config: pointer, isSeamless: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_preferredConfigurationChanged".}
proc fcQNetworkSession_newConfigurationActivated(self: pointer): void {.importc: "QNetworkSession_newConfigurationActivated".}
proc fcQNetworkSession_connect_newConfigurationActivated(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_newConfigurationActivated".}
proc fcQNetworkSession_usagePoliciesChanged(self: pointer, usagePolicies: cint): void {.importc: "QNetworkSession_usagePoliciesChanged".}
proc fcQNetworkSession_connect_usagePoliciesChanged(self: pointer, slot: int, callback: proc (slot: int, usagePolicies: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_usagePoliciesChanged".}
proc fcQNetworkSession_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkSession_tr2".}
proc fcQNetworkSession_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkSession_tr3".}
proc fcQNetworkSession_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkSession_trUtf82".}
proc fcQNetworkSession_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkSession_trUtf83".}
proc fcQNetworkSession_waitForOpened1(self: pointer, msecs: cint): bool {.importc: "QNetworkSession_waitForOpened1".}
proc fcQNetworkSession_vtbl(self: pointer): pointer {.importc: "QNetworkSession_vtbl".}
proc fcQNetworkSession_vdata(self: pointer): pointer {.importc: "QNetworkSession_vdata".}

type cQNetworkSessionVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNetworkSession_virtualbase_metaObject(self: pointer): pointer {.importc: "QNetworkSession_virtualbase_metaObject".}
proc fcQNetworkSession_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkSession_virtualbase_metacast".}
proc fcQNetworkSession_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkSession_virtualbase_metacall".}
proc fcQNetworkSession_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkSession_virtualbase_connectNotify".}
proc fcQNetworkSession_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkSession_virtualbase_disconnectNotify".}
proc fcQNetworkSession_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNetworkSession_virtualbase_event".}
proc fcQNetworkSession_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNetworkSession_virtualbase_eventFilter".}
proc fcQNetworkSession_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNetworkSession_virtualbase_timerEvent".}
proc fcQNetworkSession_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNetworkSession_virtualbase_childEvent".}
proc fcQNetworkSession_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNetworkSession_virtualbase_customEvent".}
proc fcQNetworkSession_protectedbase_sender(self: pointer): pointer {.importc: "QNetworkSession_protectedbase_sender".}
proc fcQNetworkSession_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QNetworkSession_protectedbase_senderSignalIndex".}
proc fcQNetworkSession_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNetworkSession_protectedbase_receivers".}
proc fcQNetworkSession_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNetworkSession_protectedbase_isSignalConnected".}
proc fcQNetworkSession_new(vtbl, vdata: pointer, connConfig: pointer): ptr cQNetworkSession {.importc: "QNetworkSession_new".}
proc fcQNetworkSession_new2(vtbl, vdata: pointer, connConfig: pointer, parent: pointer): ptr cQNetworkSession {.importc: "QNetworkSession_new2".}
proc fcQNetworkSession_staticMetaObject(): pointer {.importc: "QNetworkSession_staticMetaObject".}

proc metaObject*(self: gen_qnetworksession_types.QNetworkSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkSession_metaObject(self.h), owned: false)

proc metacast*(self: gen_qnetworksession_types.QNetworkSession, param1: cstring): pointer =
  fcQNetworkSession_metacast(self.h, param1)

proc metacall*(self: gen_qnetworksession_types.QNetworkSession, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkSession_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring): string =
  let v_ms = fcQNetworkSession_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring): string =
  let v_ms = fcQNetworkSession_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isOpen*(self: gen_qnetworksession_types.QNetworkSession): bool =
  fcQNetworkSession_isOpen(self.h)

proc configuration*(self: gen_qnetworksession_types.QNetworkSession): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkSession_configuration(self.h), owned: true)

proc interfaceX*(self: gen_qnetworksession_types.QNetworkSession): gen_qnetworkinterface_types.QNetworkInterface =
  gen_qnetworkinterface_types.QNetworkInterface(h: fcQNetworkSession_interfaceX(self.h), owned: true)

proc state*(self: gen_qnetworksession_types.QNetworkSession): cint =
  cint(fcQNetworkSession_state(self.h))

proc error*(self: gen_qnetworksession_types.QNetworkSession): cint =
  cint(fcQNetworkSession_error(self.h))

proc errorString*(self: gen_qnetworksession_types.QNetworkSession): string =
  let v_ms = fcQNetworkSession_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sessionProperty*(self: gen_qnetworksession_types.QNetworkSession, key: openArray[char]): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkSession_sessionProperty(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key)))), owned: true)

proc setSessionProperty*(self: gen_qnetworksession_types.QNetworkSession, key: openArray[char], value: gen_qvariant_types.QVariant): void =
  fcQNetworkSession_setSessionProperty(self.h, struct_miqt_string(data: if len(key) > 0: addr key[0] else: nil, len: csize_t(len(key))), value.h)

proc bytesWritten*(self: gen_qnetworksession_types.QNetworkSession): culonglong =
  fcQNetworkSession_bytesWritten(self.h)

proc bytesReceived*(self: gen_qnetworksession_types.QNetworkSession): culonglong =
  fcQNetworkSession_bytesReceived(self.h)

proc activeTime*(self: gen_qnetworksession_types.QNetworkSession): culonglong =
  fcQNetworkSession_activeTime(self.h)

proc usagePolicies*(self: gen_qnetworksession_types.QNetworkSession): cint =
  cint(fcQNetworkSession_usagePolicies(self.h))

proc waitForOpened*(self: gen_qnetworksession_types.QNetworkSession): bool =
  fcQNetworkSession_waitForOpened(self.h)

proc open*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_open(self.h)

proc close*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_close(self.h)

proc stop*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_stop(self.h)

proc migrate*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_migrate(self.h)

proc ignore*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_ignore(self.h)

proc accept*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_accept(self.h)

proc reject*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_reject(self.h)

proc stateChanged*(self: gen_qnetworksession_types.QNetworkSession, param1: cint): void =
  fcQNetworkSession_stateChanged(self.h, cint(param1))

type QNetworkSessionstateChangedSlot* = proc(param1: cint)
proc fcQNetworkSession_slot_callback_stateChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc fcQNetworkSession_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionstateChangedSlot) =
  var tmp = new QNetworkSessionstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQNetworkSession_slot_callback_stateChanged, fcQNetworkSession_slot_callback_stateChanged_release)

proc opened*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_opened(self.h)

type QNetworkSessionopenedSlot* = proc()
proc fcQNetworkSession_slot_callback_opened(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionopenedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQNetworkSession_slot_callback_opened_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionopenedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onOpened*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionopenedSlot) =
  var tmp = new QNetworkSessionopenedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_opened(self.h, cast[int](addr tmp[]), fcQNetworkSession_slot_callback_opened, fcQNetworkSession_slot_callback_opened_release)

proc closed*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_closed(self.h)

type QNetworkSessionclosedSlot* = proc()
proc fcQNetworkSession_slot_callback_closed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionclosedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQNetworkSession_slot_callback_closed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionclosedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onClosed*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionclosedSlot) =
  var tmp = new QNetworkSessionclosedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_closed(self.h, cast[int](addr tmp[]), fcQNetworkSession_slot_callback_closed, fcQNetworkSession_slot_callback_closed_release)

proc error*(self: gen_qnetworksession_types.QNetworkSession, param1: cint): void =
  fcQNetworkSession_errorWithQNetworkSessionSessionError(self.h, cint(param1))

type QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot* = proc(param1: cint)
proc fcQNetworkSession_slot_callback_errorWithQNetworkSessionSessionError(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc fcQNetworkSession_slot_callback_errorWithQNetworkSessionSessionError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot) =
  var tmp = new QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_errorWithQNetworkSessionSessionError(self.h, cast[int](addr tmp[]), fcQNetworkSession_slot_callback_errorWithQNetworkSessionSessionError, fcQNetworkSession_slot_callback_errorWithQNetworkSessionSessionError_release)

proc preferredConfigurationChanged*(self: gen_qnetworksession_types.QNetworkSession, config: gen_qnetworkconfiguration_types.QNetworkConfiguration, isSeamless: bool): void =
  fcQNetworkSession_preferredConfigurationChanged(self.h, config.h, isSeamless)

type QNetworkSessionpreferredConfigurationChangedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration, isSeamless: bool)
proc fcQNetworkSession_slot_callback_preferredConfigurationChanged(slot: int, config: pointer, isSeamless: bool) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionpreferredConfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config, owned: false)

  let slotval2 = isSeamless

  nimfunc[](slotval1, slotval2)

proc fcQNetworkSession_slot_callback_preferredConfigurationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionpreferredConfigurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPreferredConfigurationChanged*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionpreferredConfigurationChangedSlot) =
  var tmp = new QNetworkSessionpreferredConfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_preferredConfigurationChanged(self.h, cast[int](addr tmp[]), fcQNetworkSession_slot_callback_preferredConfigurationChanged, fcQNetworkSession_slot_callback_preferredConfigurationChanged_release)

proc newConfigurationActivated*(self: gen_qnetworksession_types.QNetworkSession): void =
  fcQNetworkSession_newConfigurationActivated(self.h)

type QNetworkSessionnewConfigurationActivatedSlot* = proc()
proc fcQNetworkSession_slot_callback_newConfigurationActivated(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionnewConfigurationActivatedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQNetworkSession_slot_callback_newConfigurationActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionnewConfigurationActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onNewConfigurationActivated*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionnewConfigurationActivatedSlot) =
  var tmp = new QNetworkSessionnewConfigurationActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_newConfigurationActivated(self.h, cast[int](addr tmp[]), fcQNetworkSession_slot_callback_newConfigurationActivated, fcQNetworkSession_slot_callback_newConfigurationActivated_release)

proc usagePoliciesChanged*(self: gen_qnetworksession_types.QNetworkSession, usagePolicies: cint): void =
  fcQNetworkSession_usagePoliciesChanged(self.h, cint(usagePolicies))

type QNetworkSessionusagePoliciesChangedSlot* = proc(usagePolicies: cint)
proc fcQNetworkSession_slot_callback_usagePoliciesChanged(slot: int, usagePolicies: cint) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionusagePoliciesChangedSlot](cast[pointer](slot))
  let slotval1 = cint(usagePolicies)

  nimfunc[](slotval1)

proc fcQNetworkSession_slot_callback_usagePoliciesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionusagePoliciesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onUsagePoliciesChanged*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionusagePoliciesChangedSlot) =
  var tmp = new QNetworkSessionusagePoliciesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_usagePoliciesChanged(self.h, cast[int](addr tmp[]), fcQNetworkSession_slot_callback_usagePoliciesChanged, fcQNetworkSession_slot_callback_usagePoliciesChanged_release)

proc tr*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkSession_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkSession_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkSession_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkSession_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc waitForOpened*(self: gen_qnetworksession_types.QNetworkSession, msecs: cint): bool =
  fcQNetworkSession_waitForOpened1(self.h, msecs)

type QNetworkSessionmetaObjectProc* = proc(self: QNetworkSession): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QNetworkSessionmetacastProc* = proc(self: QNetworkSession, param1: cstring): pointer {.raises: [], gcsafe.}
type QNetworkSessionmetacallProc* = proc(self: QNetworkSession, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QNetworkSessionconnectNotifyProc* = proc(self: QNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNetworkSessiondisconnectNotifyProc* = proc(self: QNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNetworkSessioneventProc* = proc(self: QNetworkSession, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNetworkSessioneventFilterProc* = proc(self: QNetworkSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNetworkSessiontimerEventProc* = proc(self: QNetworkSession, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QNetworkSessionchildEventProc* = proc(self: QNetworkSession, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QNetworkSessioncustomEventProc* = proc(self: QNetworkSession, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}

type QNetworkSessionVTable* {.inheritable, pure.} = object
  vtbl: cQNetworkSessionVTable
  metaObject*: QNetworkSessionmetaObjectProc
  metacast*: QNetworkSessionmetacastProc
  metacall*: QNetworkSessionmetacallProc
  connectNotify*: QNetworkSessionconnectNotifyProc
  disconnectNotify*: QNetworkSessiondisconnectNotifyProc
  event*: QNetworkSessioneventProc
  eventFilter*: QNetworkSessioneventFilterProc
  timerEvent*: QNetworkSessiontimerEventProc
  childEvent*: QNetworkSessionchildEventProc
  customEvent*: QNetworkSessioncustomEventProc

proc QNetworkSessionmetaObject*(self: gen_qnetworksession_types.QNetworkSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkSession_virtualbase_metaObject(self.h), owned: false)

proc QNetworkSessionmetacast*(self: gen_qnetworksession_types.QNetworkSession, param1: cstring): pointer =
  fcQNetworkSession_virtualbase_metacast(self.h, param1)

proc QNetworkSessionmetacall*(self: gen_qnetworksession_types.QNetworkSession, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkSession_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QNetworkSessionconnectNotify*(self: gen_qnetworksession_types.QNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkSession_virtualbase_connectNotify(self.h, signal.h)

proc QNetworkSessiondisconnectNotify*(self: gen_qnetworksession_types.QNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkSession_virtualbase_disconnectNotify(self.h, signal.h)

proc QNetworkSessionevent*(self: gen_qnetworksession_types.QNetworkSession, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkSession_virtualbase_event(self.h, event.h)

proc QNetworkSessioneventFilter*(self: gen_qnetworksession_types.QNetworkSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkSession_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QNetworkSessiontimerEvent*(self: gen_qnetworksession_types.QNetworkSession, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNetworkSession_virtualbase_timerEvent(self.h, event.h)

proc QNetworkSessionchildEvent*(self: gen_qnetworksession_types.QNetworkSession, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNetworkSession_virtualbase_childEvent(self.h, event.h)

proc QNetworkSessioncustomEvent*(self: gen_qnetworksession_types.QNetworkSession, event: gen_qcoreevent_types.QEvent): void =
  fcQNetworkSession_virtualbase_customEvent(self.h, event.h)


proc fcQNetworkSession_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQNetworkSession_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQNetworkSession_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQNetworkSession_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQNetworkSession_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc fcQNetworkSession_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQNetworkSession_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQNetworkSession_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQNetworkSession_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQNetworkSession_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](fcQNetworkSession_vdata(self))
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

type VirtualQNetworkSession* {.inheritable.} = ref object of QNetworkSession
  vtbl*: cQNetworkSessionVTable

method metaObject*(self: VirtualQNetworkSession): gen_qobjectdefs_types.QMetaObject {.base.} =
  QNetworkSessionmetaObject(self[])
method metacast*(self: VirtualQNetworkSession, param1: cstring): pointer {.base.} =
  QNetworkSessionmetacast(self[], param1)
method metacall*(self: VirtualQNetworkSession, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QNetworkSessionmetacall(self[], param1, param2, param3)
method connectNotify*(self: VirtualQNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNetworkSessionconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNetworkSessiondisconnectNotify(self[], signal)
method event*(self: VirtualQNetworkSession, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNetworkSessionevent(self[], event)
method eventFilter*(self: VirtualQNetworkSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNetworkSessioneventFilter(self[], watched, event)
method timerEvent*(self: VirtualQNetworkSession, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QNetworkSessiontimerEvent(self[], event)
method childEvent*(self: VirtualQNetworkSession, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QNetworkSessionchildEvent(self[], event)
method customEvent*(self: VirtualQNetworkSession, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QNetworkSessioncustomEvent(self[], event)

proc fcQNetworkSession_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQNetworkSession_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQNetworkSession_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQNetworkSession_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQNetworkSession_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc fcQNetworkSession_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQNetworkSession_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQNetworkSession_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQNetworkSession_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQNetworkSession_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkSession](fcQNetworkSession_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)


proc sender*(self: gen_qnetworksession_types.QNetworkSession): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkSession_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qnetworksession_types.QNetworkSession): cint =
  fcQNetworkSession_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnetworksession_types.QNetworkSession, signal: cstring): cint =
  fcQNetworkSession_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnetworksession_types.QNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNetworkSession_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnetworksession_types.QNetworkSession,
    connConfig: gen_qnetworkconfiguration_types.QNetworkConfiguration,
    vtbl: ref QNetworkSessionVTable = nil): gen_qnetworksession_types.QNetworkSession =
  let vtbl = if vtbl == nil: new QNetworkSessionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkSessionVTable](fcQNetworkSession_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQNetworkSession_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQNetworkSession_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQNetworkSession_vtable_callback_metacall
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQNetworkSession_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQNetworkSession_vtable_callback_disconnectNotify
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQNetworkSession_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQNetworkSession_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQNetworkSession_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQNetworkSession_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQNetworkSession_vtable_callback_customEvent
  gen_qnetworksession_types.QNetworkSession(h: fcQNetworkSession_new(addr(vtbl[].vtbl), addr(vtbl[]), connConfig.h), owned: true)

proc create*(T: type gen_qnetworksession_types.QNetworkSession,
    connConfig: gen_qnetworkconfiguration_types.QNetworkConfiguration, parent: gen_qobject_types.QObject,
    vtbl: ref QNetworkSessionVTable = nil): gen_qnetworksession_types.QNetworkSession =
  let vtbl = if vtbl == nil: new QNetworkSessionVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkSessionVTable](fcQNetworkSession_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQNetworkSession_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQNetworkSession_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQNetworkSession_vtable_callback_metacall
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQNetworkSession_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQNetworkSession_vtable_callback_disconnectNotify
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQNetworkSession_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQNetworkSession_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQNetworkSession_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQNetworkSession_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQNetworkSession_vtable_callback_customEvent
  gen_qnetworksession_types.QNetworkSession(h: fcQNetworkSession_new2(addr(vtbl[].vtbl), addr(vtbl[]), connConfig.h, parent.h), owned: true)

const cQNetworkSession_mvtbl = cQNetworkSessionVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQNetworkSession()[])](self.fcQNetworkSession_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQNetworkSession_method_callback_metaObject,
  metacast: fcQNetworkSession_method_callback_metacast,
  metacall: fcQNetworkSession_method_callback_metacall,
  connectNotify: fcQNetworkSession_method_callback_connectNotify,
  disconnectNotify: fcQNetworkSession_method_callback_disconnectNotify,
  event: fcQNetworkSession_method_callback_event,
  eventFilter: fcQNetworkSession_method_callback_eventFilter,
  timerEvent: fcQNetworkSession_method_callback_timerEvent,
  childEvent: fcQNetworkSession_method_callback_childEvent,
  customEvent: fcQNetworkSession_method_callback_customEvent,
)
proc create*(T: type gen_qnetworksession_types.QNetworkSession,
    connConfig: gen_qnetworkconfiguration_types.QNetworkConfiguration,
    inst: VirtualQNetworkSession) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkSession_new(addr(cQNetworkSession_mvtbl), addr(inst[]), connConfig.h)
  inst[].owned = true

proc create*(T: type gen_qnetworksession_types.QNetworkSession,
    connConfig: gen_qnetworkconfiguration_types.QNetworkConfiguration, parent: gen_qobject_types.QObject,
    inst: VirtualQNetworkSession) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkSession_new2(addr(cQNetworkSession_mvtbl), addr(inst[]), connConfig.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qnetworksession_types.QNetworkSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkSession_staticMetaObject())
