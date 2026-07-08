import ./qtwebenginecore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QWebEngineWebAuthUxRequestWebAuthUxStateEnum* = distinct cint
template NotStarted*(_: type QWebEngineWebAuthUxRequestWebAuthUxStateEnum): untyped = 0
template SelectAccount*(_: type QWebEngineWebAuthUxRequestWebAuthUxStateEnum): untyped = 1
template CollectPin*(_: type QWebEngineWebAuthUxRequestWebAuthUxStateEnum): untyped = 2
template FinishTokenCollection*(_: type QWebEngineWebAuthUxRequestWebAuthUxStateEnum): untyped = 3
template RequestFailed*(_: type QWebEngineWebAuthUxRequestWebAuthUxStateEnum): untyped = 4
template Cancelled*(_: type QWebEngineWebAuthUxRequestWebAuthUxStateEnum): untyped = 5
template Completed*(_: type QWebEngineWebAuthUxRequestWebAuthUxStateEnum): untyped = 6


type QWebEngineWebAuthUxRequestPinEntryReasonEnum* = distinct cint
template Set*(_: type QWebEngineWebAuthUxRequestPinEntryReasonEnum): untyped = 0
template Change*(_: type QWebEngineWebAuthUxRequestPinEntryReasonEnum): untyped = 1
template Challenge*(_: type QWebEngineWebAuthUxRequestPinEntryReasonEnum): untyped = 2


type QWebEngineWebAuthUxRequestPinEntryErrorEnum* = distinct cint
template NoError*(_: type QWebEngineWebAuthUxRequestPinEntryErrorEnum): untyped = 0
template InternalUvLocked*(_: type QWebEngineWebAuthUxRequestPinEntryErrorEnum): untyped = 1
template WrongPin*(_: type QWebEngineWebAuthUxRequestPinEntryErrorEnum): untyped = 2
template TooShort*(_: type QWebEngineWebAuthUxRequestPinEntryErrorEnum): untyped = 3
template InvalidCharacters*(_: type QWebEngineWebAuthUxRequestPinEntryErrorEnum): untyped = 4
template SameAsCurrentPin*(_: type QWebEngineWebAuthUxRequestPinEntryErrorEnum): untyped = 5


type QWebEngineWebAuthUxRequestRequestFailureReasonEnum* = distinct cint
template Timeout*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 0
template KeyNotRegistered*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 1
template KeyAlreadyRegistered*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 2
template SoftPinBlock*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 3
template HardPinBlock*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 4
template AuthenticatorRemovedDuringPinEntry*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 5
template AuthenticatorMissingResidentKeys*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 6
template AuthenticatorMissingUserVerification*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 7
template AuthenticatorMissingLargeBlob*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 8
template NoCommonAlgorithms*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 9
template StorageFull*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 10
template UserConsentDenied*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 11
template WinUserCancelled*(_: type QWebEngineWebAuthUxRequestRequestFailureReasonEnum): untyped = 12


import ./gen_qwebenginewebauthuxrequest_types
export gen_qwebenginewebauthuxrequest_types

import
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types

type cQWebEngineWebAuthUxRequest*{.exportc: "QWebEngineWebAuthUxRequest", incompleteStruct.} = object
type cQWebEngineWebAuthPinRequest*{.exportc: "QWebEngineWebAuthPinRequest", incompleteStruct.} = object

proc fcQWebEngineWebAuthUxRequest_metaObject(self: pointer): pointer {.importc: "QWebEngineWebAuthUxRequest_metaObject".}
proc fcQWebEngineWebAuthUxRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineWebAuthUxRequest_metacast".}
proc fcQWebEngineWebAuthUxRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineWebAuthUxRequest_metacall".}
proc fcQWebEngineWebAuthUxRequest_trS(s: cstring): struct_seaqt_string {.importc: "QWebEngineWebAuthUxRequest_tr_s".}
proc fcQWebEngineWebAuthUxRequest_userNames(self: pointer): struct_seaqt_array {.importc: "QWebEngineWebAuthUxRequest_userNames".}
proc fcQWebEngineWebAuthUxRequest_relyingPartyId(self: pointer): struct_seaqt_string {.importc: "QWebEngineWebAuthUxRequest_relyingPartyId".}
proc fcQWebEngineWebAuthUxRequest_pinRequest(self: pointer): pointer {.importc: "QWebEngineWebAuthUxRequest_pinRequest".}
proc fcQWebEngineWebAuthUxRequest_state(self: pointer): cint {.importc: "QWebEngineWebAuthUxRequest_state".}
proc fcQWebEngineWebAuthUxRequest_requestFailureReason(self: pointer): cint {.importc: "QWebEngineWebAuthUxRequest_requestFailureReason".}
proc fcQWebEngineWebAuthUxRequest_stateChanged(self: pointer, state: cint): void {.importc: "QWebEngineWebAuthUxRequest_stateChanged".}
proc fcQWebEngineWebAuthUxRequest_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWebEngineWebAuthUxRequest_connect_stateChanged".}
proc fcQWebEngineWebAuthUxRequest_cancel(self: pointer): void {.importc: "QWebEngineWebAuthUxRequest_cancel".}
proc fcQWebEngineWebAuthUxRequest_retry(self: pointer): void {.importc: "QWebEngineWebAuthUxRequest_retry".}
proc fcQWebEngineWebAuthUxRequest_setSelectedAccount(self: pointer, selectedAccount: struct_seaqt_string): void {.importc: "QWebEngineWebAuthUxRequest_setSelectedAccount".}
proc fcQWebEngineWebAuthUxRequest_setPin(self: pointer, pin: struct_seaqt_string): void {.importc: "QWebEngineWebAuthUxRequest_setPin".}
proc fcQWebEngineWebAuthUxRequest_trSC(s: cstring, c: cstring): struct_seaqt_string {.importc: "QWebEngineWebAuthUxRequest_tr_s_c".}
proc fcQWebEngineWebAuthUxRequest_trSCN(s: cstring, c: cstring, n: cint): struct_seaqt_string {.importc: "QWebEngineWebAuthUxRequest_tr_s_c_n".}
proc fcQWebEngineWebAuthUxRequest_protectedbase_sender(self: pointer): pointer {.importc: "QWebEngineWebAuthUxRequest_protectedbase_sender".}
proc fcQWebEngineWebAuthUxRequest_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWebEngineWebAuthUxRequest_protectedbase_senderSignalIndex".}
proc fcQWebEngineWebAuthUxRequest_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWebEngineWebAuthUxRequest_protectedbase_receivers".}
proc fcQWebEngineWebAuthUxRequest_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWebEngineWebAuthUxRequest_protectedbase_isSignalConnected".}
proc fcQWebEngineWebAuthUxRequest_staticMetaObject(): pointer {.importc: "QWebEngineWebAuthUxRequest_staticMetaObject".}
proc fcQWebEngineWebAuthPinRequest_reason(self: pointer): cint {.importc: "QWebEngineWebAuthPinRequest_reason".}
proc fcQWebEngineWebAuthPinRequest_setReason(self: pointer, reason: cint): void {.importc: "QWebEngineWebAuthPinRequest_setReason".}
proc fcQWebEngineWebAuthPinRequest_error(self: pointer): cint {.importc: "QWebEngineWebAuthPinRequest_error".}
proc fcQWebEngineWebAuthPinRequest_setError(self: pointer, error: cint): void {.importc: "QWebEngineWebAuthPinRequest_setError".}
proc fcQWebEngineWebAuthPinRequest_minPinLength(self: pointer): cint {.importc: "QWebEngineWebAuthPinRequest_minPinLength".}
proc fcQWebEngineWebAuthPinRequest_setMinPinLength(self: pointer, minPinLength: cint): void {.importc: "QWebEngineWebAuthPinRequest_setMinPinLength".}
proc fcQWebEngineWebAuthPinRequest_remainingAttempts(self: pointer): cint {.importc: "QWebEngineWebAuthPinRequest_remainingAttempts".}
proc fcQWebEngineWebAuthPinRequest_setRemainingAttempts(self: pointer, remainingAttempts: cint): void {.importc: "QWebEngineWebAuthPinRequest_setRemainingAttempts".}
proc fcQWebEngineWebAuthPinRequest_staticMetaObject(): pointer {.importc: "QWebEngineWebAuthPinRequest_staticMetaObject".}

proc metaObject*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineWebAuthUxRequest_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, param1: cstring): pointer =
  fcQWebEngineWebAuthUxRequest_metacast(self.h, param1)

proc metacall*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, param1: cint, param2: cint, param3: pointer): cint =
  fcQWebEngineWebAuthUxRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, s: cstring): string =
  let v_ms = fcQWebEngineWebAuthUxRequest_trS(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc userNames*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): seq[string] =
  var v_ma = fcQWebEngineWebAuthUxRequest_userNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc relyingPartyId*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): string =
  let v_ms = fcQWebEngineWebAuthUxRequest_relyingPartyId(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc pinRequest*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest =
  gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest(h: fcQWebEngineWebAuthUxRequest_pinRequest(self.h), owned: true)

proc state*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): cint =
  cint(fcQWebEngineWebAuthUxRequest_state(self.h))

proc requestFailureReason*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): cint =
  cint(fcQWebEngineWebAuthUxRequest_requestFailureReason(self.h))

proc stateChanged*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, state: cint): void =
  fcQWebEngineWebAuthUxRequest_stateChanged(self.h, cint(state))

type QWebEngineWebAuthUxRequeststateChangedSlot* = proc(state: cint)
proc fcQWebEngineWebAuthUxRequest_slot_callback_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QWebEngineWebAuthUxRequeststateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc fcQWebEngineWebAuthUxRequest_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWebEngineWebAuthUxRequeststateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, slot: QWebEngineWebAuthUxRequeststateChangedSlot) =
  var tmp = new QWebEngineWebAuthUxRequeststateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineWebAuthUxRequest_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQWebEngineWebAuthUxRequest_slot_callback_stateChanged, fcQWebEngineWebAuthUxRequest_slot_callback_stateChanged_release)

proc cancel*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): void =
  fcQWebEngineWebAuthUxRequest_cancel(self.h)

proc retry*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): void =
  fcQWebEngineWebAuthUxRequest_retry(self.h)

proc setSelectedAccount*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, selectedAccount: openArray[char]): void =
  fcQWebEngineWebAuthUxRequest_setSelectedAccount(self.h, struct_seaqt_string(data: if len(selectedAccount) > 0: addr selectedAccount[0] else: nil, len: csize_t(len(selectedAccount))))

proc setPin*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, pin: openArray[char]): void =
  fcQWebEngineWebAuthUxRequest_setPin(self.h, struct_seaqt_string(data: if len(pin) > 0: addr pin[0] else: nil, len: csize_t(len(pin))))

proc tr*(_: type gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, s: cstring, c: cstring): string =
  let v_ms = fcQWebEngineWebAuthUxRequest_trSC(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWebEngineWebAuthUxRequest_trSCN(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWebEngineWebAuthUxRequest_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): cint =
  fcQWebEngineWebAuthUxRequest_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, signal: cstring): cint =
  fcQWebEngineWebAuthUxRequest_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWebEngineWebAuthUxRequest_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthUxRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineWebAuthUxRequest_staticMetaObject())
proc reason*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest): cint =
  cint(fcQWebEngineWebAuthPinRequest_reason(self.h))

proc setReason*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest, reason: cint): void =
  fcQWebEngineWebAuthPinRequest_setReason(self.h, cint(reason))

proc error*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest): cint =
  cint(fcQWebEngineWebAuthPinRequest_error(self.h))

proc setError*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest, error: cint): void =
  fcQWebEngineWebAuthPinRequest_setError(self.h, cint(error))

proc minPinLength*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest): cint =
  fcQWebEngineWebAuthPinRequest_minPinLength(self.h)

proc setMinPinLength*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest, minPinLength: cint): void =
  fcQWebEngineWebAuthPinRequest_setMinPinLength(self.h, minPinLength)

proc remainingAttempts*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest): cint =
  fcQWebEngineWebAuthPinRequest_remainingAttempts(self.h)

proc setRemainingAttempts*(self: gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest, remainingAttempts: cint): void =
  fcQWebEngineWebAuthPinRequest_setRemainingAttempts(self.h, remainingAttempts)

proc staticMetaObject*(_: type gen_qwebenginewebauthuxrequest_types.QWebEngineWebAuthPinRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineWebAuthPinRequest_staticMetaObject())
