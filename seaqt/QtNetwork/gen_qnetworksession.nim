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
{.compile("gen_qnetworksession.cpp", cflags).}


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

proc fcQNetworkSession_metaObject(self: pointer, ): pointer {.importc: "QNetworkSession_metaObject".}
proc fcQNetworkSession_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkSession_metacast".}
proc fcQNetworkSession_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkSession_metacall".}
proc fcQNetworkSession_tr(s: cstring): struct_miqt_string {.importc: "QNetworkSession_tr".}
proc fcQNetworkSession_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkSession_trUtf8".}
proc fcQNetworkSession_isOpen(self: pointer, ): bool {.importc: "QNetworkSession_isOpen".}
proc fcQNetworkSession_configuration(self: pointer, ): pointer {.importc: "QNetworkSession_configuration".}
proc fcQNetworkSession_interfaceX(self: pointer, ): pointer {.importc: "QNetworkSession_interface".}
proc fcQNetworkSession_state(self: pointer, ): cint {.importc: "QNetworkSession_state".}
proc fcQNetworkSession_error(self: pointer, ): cint {.importc: "QNetworkSession_error".}
proc fcQNetworkSession_errorString(self: pointer, ): struct_miqt_string {.importc: "QNetworkSession_errorString".}
proc fcQNetworkSession_sessionProperty(self: pointer, key: struct_miqt_string): pointer {.importc: "QNetworkSession_sessionProperty".}
proc fcQNetworkSession_setSessionProperty(self: pointer, key: struct_miqt_string, value: pointer): void {.importc: "QNetworkSession_setSessionProperty".}
proc fcQNetworkSession_bytesWritten(self: pointer, ): culonglong {.importc: "QNetworkSession_bytesWritten".}
proc fcQNetworkSession_bytesReceived(self: pointer, ): culonglong {.importc: "QNetworkSession_bytesReceived".}
proc fcQNetworkSession_activeTime(self: pointer, ): culonglong {.importc: "QNetworkSession_activeTime".}
proc fcQNetworkSession_usagePolicies(self: pointer, ): cint {.importc: "QNetworkSession_usagePolicies".}
proc fcQNetworkSession_waitForOpened(self: pointer, ): bool {.importc: "QNetworkSession_waitForOpened".}
proc fcQNetworkSession_open(self: pointer, ): void {.importc: "QNetworkSession_open".}
proc fcQNetworkSession_close(self: pointer, ): void {.importc: "QNetworkSession_close".}
proc fcQNetworkSession_stop(self: pointer, ): void {.importc: "QNetworkSession_stop".}
proc fcQNetworkSession_migrate(self: pointer, ): void {.importc: "QNetworkSession_migrate".}
proc fcQNetworkSession_ignore(self: pointer, ): void {.importc: "QNetworkSession_ignore".}
proc fcQNetworkSession_accept(self: pointer, ): void {.importc: "QNetworkSession_accept".}
proc fcQNetworkSession_reject(self: pointer, ): void {.importc: "QNetworkSession_reject".}
proc fcQNetworkSession_stateChanged(self: pointer, param1: cint): void {.importc: "QNetworkSession_stateChanged".}
proc fcQNetworkSession_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_stateChanged".}
proc fcQNetworkSession_opened(self: pointer, ): void {.importc: "QNetworkSession_opened".}
proc fcQNetworkSession_connect_opened(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_opened".}
proc fcQNetworkSession_closed(self: pointer, ): void {.importc: "QNetworkSession_closed".}
proc fcQNetworkSession_connect_closed(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_closed".}
proc fcQNetworkSession_errorWithQNetworkSessionSessionError(self: pointer, param1: cint): void {.importc: "QNetworkSession_errorWithQNetworkSessionSessionError".}
proc fcQNetworkSession_connect_errorWithQNetworkSessionSessionError(self: pointer, slot: int, callback: proc (slot: int, param1: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_errorWithQNetworkSessionSessionError".}
proc fcQNetworkSession_preferredConfigurationChanged(self: pointer, config: pointer, isSeamless: bool): void {.importc: "QNetworkSession_preferredConfigurationChanged".}
proc fcQNetworkSession_connect_preferredConfigurationChanged(self: pointer, slot: int, callback: proc (slot: int, config: pointer, isSeamless: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_preferredConfigurationChanged".}
proc fcQNetworkSession_newConfigurationActivated(self: pointer, ): void {.importc: "QNetworkSession_newConfigurationActivated".}
proc fcQNetworkSession_connect_newConfigurationActivated(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_newConfigurationActivated".}
proc fcQNetworkSession_usagePoliciesChanged(self: pointer, usagePolicies: cint): void {.importc: "QNetworkSession_usagePoliciesChanged".}
proc fcQNetworkSession_connect_usagePoliciesChanged(self: pointer, slot: int, callback: proc (slot: int, usagePolicies: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QNetworkSession_connect_usagePoliciesChanged".}
proc fcQNetworkSession_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkSession_tr2".}
proc fcQNetworkSession_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkSession_tr3".}
proc fcQNetworkSession_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkSession_trUtf82".}
proc fcQNetworkSession_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkSession_trUtf83".}
proc fcQNetworkSession_waitForOpened1(self: pointer, msecs: cint): bool {.importc: "QNetworkSession_waitForOpened1".}
type cQNetworkSessionVTable = object
  destructor*: proc(vtbl: ptr cQNetworkSessionVTable, self: ptr cQNetworkSession) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNetworkSession_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QNetworkSession_virtualbase_metaObject".}
proc fcQNetworkSession_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkSession_virtualbase_metacast".}
proc fcQNetworkSession_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkSession_virtualbase_metacall".}
proc fcQNetworkSession_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkSession_virtualbase_connectNotify".}
proc fcQNetworkSession_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkSession_virtualbase_disconnectNotify".}
proc fcQNetworkSession_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNetworkSession_virtualbase_event".}
proc fcQNetworkSession_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNetworkSession_virtualbase_eventFilter".}
proc fcQNetworkSession_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNetworkSession_virtualbase_timerEvent".}
proc fcQNetworkSession_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNetworkSession_virtualbase_childEvent".}
proc fcQNetworkSession_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNetworkSession_virtualbase_customEvent".}
proc fcQNetworkSession_new(vtbl: pointer, connConfig: pointer): ptr cQNetworkSession {.importc: "QNetworkSession_new".}
proc fcQNetworkSession_new2(vtbl: pointer, connConfig: pointer, parent: pointer): ptr cQNetworkSession {.importc: "QNetworkSession_new2".}
proc fcQNetworkSession_staticMetaObject(): pointer {.importc: "QNetworkSession_staticMetaObject".}
proc fcQNetworkSession_delete(self: pointer) {.importc: "QNetworkSession_delete".}

proc metaObject*(self: gen_qnetworksession_types.QNetworkSession, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkSession_metaObject(self.h))

proc metacast*(self: gen_qnetworksession_types.QNetworkSession, param1: cstring): pointer =
  fcQNetworkSession_metacast(self.h, param1)

proc metacall*(self: gen_qnetworksession_types.QNetworkSession, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkSession_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring): string =
  let v_ms = fcQNetworkSession_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring): string =
  let v_ms = fcQNetworkSession_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isOpen*(self: gen_qnetworksession_types.QNetworkSession, ): bool =
  fcQNetworkSession_isOpen(self.h)

proc configuration*(self: gen_qnetworksession_types.QNetworkSession, ): gen_qnetworkconfiguration_types.QNetworkConfiguration =
  gen_qnetworkconfiguration_types.QNetworkConfiguration(h: fcQNetworkSession_configuration(self.h))

proc interfaceX*(self: gen_qnetworksession_types.QNetworkSession, ): gen_qnetworkinterface_types.QNetworkInterface =
  gen_qnetworkinterface_types.QNetworkInterface(h: fcQNetworkSession_interfaceX(self.h))

proc state*(self: gen_qnetworksession_types.QNetworkSession, ): cint =
  cint(fcQNetworkSession_state(self.h))

proc error*(self: gen_qnetworksession_types.QNetworkSession, ): cint =
  cint(fcQNetworkSession_error(self.h))

proc errorString*(self: gen_qnetworksession_types.QNetworkSession, ): string =
  let v_ms = fcQNetworkSession_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sessionProperty*(self: gen_qnetworksession_types.QNetworkSession, key: string): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkSession_sessionProperty(self.h, struct_miqt_string(data: key, len: csize_t(len(key)))))

proc setSessionProperty*(self: gen_qnetworksession_types.QNetworkSession, key: string, value: gen_qvariant_types.QVariant): void =
  fcQNetworkSession_setSessionProperty(self.h, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc bytesWritten*(self: gen_qnetworksession_types.QNetworkSession, ): culonglong =
  fcQNetworkSession_bytesWritten(self.h)

proc bytesReceived*(self: gen_qnetworksession_types.QNetworkSession, ): culonglong =
  fcQNetworkSession_bytesReceived(self.h)

proc activeTime*(self: gen_qnetworksession_types.QNetworkSession, ): culonglong =
  fcQNetworkSession_activeTime(self.h)

proc usagePolicies*(self: gen_qnetworksession_types.QNetworkSession, ): cint =
  cint(fcQNetworkSession_usagePolicies(self.h))

proc waitForOpened*(self: gen_qnetworksession_types.QNetworkSession, ): bool =
  fcQNetworkSession_waitForOpened(self.h)

proc open*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_open(self.h)

proc close*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_close(self.h)

proc stop*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_stop(self.h)

proc migrate*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_migrate(self.h)

proc ignore*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_ignore(self.h)

proc accept*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_accept(self.h)

proc reject*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_reject(self.h)

proc stateChanged*(self: gen_qnetworksession_types.QNetworkSession, param1: cint): void =
  fcQNetworkSession_stateChanged(self.h, cint(param1))

type QNetworkSessionstateChangedSlot* = proc(param1: cint)
proc miqt_exec_callback_cQNetworkSession_stateChanged(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQNetworkSession_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionstateChangedSlot) =
  var tmp = new QNetworkSessionstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkSession_stateChanged, miqt_exec_callback_cQNetworkSession_stateChanged_release)

proc opened*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_opened(self.h)

type QNetworkSessionopenedSlot* = proc()
proc miqt_exec_callback_cQNetworkSession_opened(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionopenedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQNetworkSession_opened_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionopenedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onopened*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionopenedSlot) =
  var tmp = new QNetworkSessionopenedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_opened(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkSession_opened, miqt_exec_callback_cQNetworkSession_opened_release)

proc closed*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_closed(self.h)

type QNetworkSessionclosedSlot* = proc()
proc miqt_exec_callback_cQNetworkSession_closed(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionclosedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQNetworkSession_closed_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionclosedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onclosed*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionclosedSlot) =
  var tmp = new QNetworkSessionclosedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_closed(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkSession_closed, miqt_exec_callback_cQNetworkSession_closed_release)

proc error*(self: gen_qnetworksession_types.QNetworkSession, param1: cint): void =
  fcQNetworkSession_errorWithQNetworkSessionSessionError(self.h, cint(param1))

type QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot* = proc(param1: cint)
proc miqt_exec_callback_cQNetworkSession_errorWithQNetworkSessionSessionError(slot: int, param1: cint) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot](cast[pointer](slot))
  let slotval1 = cint(param1)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQNetworkSession_errorWithQNetworkSessionSessionError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot) =
  var tmp = new QNetworkSessionerrorWithQNetworkSessionSessionErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_errorWithQNetworkSessionSessionError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkSession_errorWithQNetworkSessionSessionError, miqt_exec_callback_cQNetworkSession_errorWithQNetworkSessionSessionError_release)

proc preferredConfigurationChanged*(self: gen_qnetworksession_types.QNetworkSession, config: gen_qnetworkconfiguration_types.QNetworkConfiguration, isSeamless: bool): void =
  fcQNetworkSession_preferredConfigurationChanged(self.h, config.h, isSeamless)

type QNetworkSessionpreferredConfigurationChangedSlot* = proc(config: gen_qnetworkconfiguration_types.QNetworkConfiguration, isSeamless: bool)
proc miqt_exec_callback_cQNetworkSession_preferredConfigurationChanged(slot: int, config: pointer, isSeamless: bool) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionpreferredConfigurationChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qnetworkconfiguration_types.QNetworkConfiguration(h: config)

  let slotval2 = isSeamless

  nimfunc[](slotval1, slotval2)

proc miqt_exec_callback_cQNetworkSession_preferredConfigurationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionpreferredConfigurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpreferredConfigurationChanged*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionpreferredConfigurationChangedSlot) =
  var tmp = new QNetworkSessionpreferredConfigurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_preferredConfigurationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkSession_preferredConfigurationChanged, miqt_exec_callback_cQNetworkSession_preferredConfigurationChanged_release)

proc newConfigurationActivated*(self: gen_qnetworksession_types.QNetworkSession, ): void =
  fcQNetworkSession_newConfigurationActivated(self.h)

type QNetworkSessionnewConfigurationActivatedSlot* = proc()
proc miqt_exec_callback_cQNetworkSession_newConfigurationActivated(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionnewConfigurationActivatedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQNetworkSession_newConfigurationActivated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionnewConfigurationActivatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnewConfigurationActivated*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionnewConfigurationActivatedSlot) =
  var tmp = new QNetworkSessionnewConfigurationActivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_newConfigurationActivated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkSession_newConfigurationActivated, miqt_exec_callback_cQNetworkSession_newConfigurationActivated_release)

proc usagePoliciesChanged*(self: gen_qnetworksession_types.QNetworkSession, usagePolicies: cint): void =
  fcQNetworkSession_usagePoliciesChanged(self.h, cint(usagePolicies))

type QNetworkSessionusagePoliciesChangedSlot* = proc(usagePolicies: cint)
proc miqt_exec_callback_cQNetworkSession_usagePoliciesChanged(slot: int, usagePolicies: cint) {.cdecl.} =
  let nimfunc = cast[ptr QNetworkSessionusagePoliciesChangedSlot](cast[pointer](slot))
  let slotval1 = cint(usagePolicies)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQNetworkSession_usagePoliciesChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QNetworkSessionusagePoliciesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onusagePoliciesChanged*(self: gen_qnetworksession_types.QNetworkSession, slot: QNetworkSessionusagePoliciesChangedSlot) =
  var tmp = new QNetworkSessionusagePoliciesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkSession_connect_usagePoliciesChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQNetworkSession_usagePoliciesChanged, miqt_exec_callback_cQNetworkSession_usagePoliciesChanged_release)

proc tr*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkSession_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkSession_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkSession_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworksession_types.QNetworkSession, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkSession_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QNetworkSessionVTable* = object
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
proc QNetworkSessionmetaObject*(self: gen_qnetworksession_types.QNetworkSession, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkSession_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQNetworkSession_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QNetworkSessionmetacast*(self: gen_qnetworksession_types.QNetworkSession, param1: cstring): pointer =
  fcQNetworkSession_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQNetworkSession_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QNetworkSessionmetacall*(self: gen_qnetworksession_types.QNetworkSession, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkSession_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQNetworkSession_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QNetworkSessionconnectNotify*(self: gen_qnetworksession_types.QNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkSession_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQNetworkSession_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QNetworkSessiondisconnectNotify*(self: gen_qnetworksession_types.QNetworkSession, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkSession_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQNetworkSession_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc QNetworkSessionevent*(self: gen_qnetworksession_types.QNetworkSession, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkSession_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQNetworkSession_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QNetworkSessioneventFilter*(self: gen_qnetworksession_types.QNetworkSession, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkSession_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQNetworkSession_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QNetworkSessiontimerEvent*(self: gen_qnetworksession_types.QNetworkSession, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNetworkSession_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkSession_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QNetworkSessionchildEvent*(self: gen_qnetworksession_types.QNetworkSession, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNetworkSession_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkSession_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QNetworkSessioncustomEvent*(self: gen_qnetworksession_types.QNetworkSession, event: gen_qcoreevent_types.QEvent): void =
  fcQNetworkSession_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkSession_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkSessionVTable](vtbl)
  let self = QNetworkSession(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc create*(T: type gen_qnetworksession_types.QNetworkSession,
    connConfig: gen_qnetworkconfiguration_types.QNetworkConfiguration,
    vtbl: ref QNetworkSessionVTable = nil): gen_qnetworksession_types.QNetworkSession =
  let vtbl = if vtbl == nil: new QNetworkSessionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNetworkSessionVTable, _: ptr cQNetworkSession) {.cdecl.} =
    let vtbl = cast[ref QNetworkSessionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQNetworkSession_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQNetworkSession_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQNetworkSession_metacall
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQNetworkSession_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQNetworkSession_disconnectNotify
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQNetworkSession_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQNetworkSession_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQNetworkSession_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQNetworkSession_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQNetworkSession_customEvent
  gen_qnetworksession_types.QNetworkSession(h: fcQNetworkSession_new(addr(vtbl[]), connConfig.h))

proc create*(T: type gen_qnetworksession_types.QNetworkSession,
    connConfig: gen_qnetworkconfiguration_types.QNetworkConfiguration, parent: gen_qobject_types.QObject,
    vtbl: ref QNetworkSessionVTable = nil): gen_qnetworksession_types.QNetworkSession =
  let vtbl = if vtbl == nil: new QNetworkSessionVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNetworkSessionVTable, _: ptr cQNetworkSession) {.cdecl.} =
    let vtbl = cast[ref QNetworkSessionVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQNetworkSession_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQNetworkSession_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQNetworkSession_metacall
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQNetworkSession_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQNetworkSession_disconnectNotify
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQNetworkSession_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQNetworkSession_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQNetworkSession_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQNetworkSession_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQNetworkSession_customEvent
  gen_qnetworksession_types.QNetworkSession(h: fcQNetworkSession_new2(addr(vtbl[]), connConfig.h, parent.h))

proc staticMetaObject*(_: type gen_qnetworksession_types.QNetworkSession): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkSession_staticMetaObject())
proc delete*(self: gen_qnetworksession_types.QNetworkSession) =
  fcQNetworkSession_delete(self.h)
