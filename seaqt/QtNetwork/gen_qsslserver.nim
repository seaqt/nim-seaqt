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


{.compile("gen_qsslserver.cpp", QtNetworkCFlags).}


import ./gen_qsslserver_types
export gen_qsslserver_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qsslconfiguration_types,
  ./gen_qsslerror_types,
  ./gen_qsslpresharedkeyauthenticator_types,
  ./gen_qsslsocket_types,
  ./gen_qtcpserver,
  ./gen_qtcpsocket_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qsslconfiguration_types,
  gen_qsslerror_types,
  gen_qsslpresharedkeyauthenticator_types,
  gen_qsslsocket_types,
  gen_qtcpserver,
  gen_qtcpsocket_types

type cQSslServer*{.exportc: "QSslServer", incompleteStruct.} = object

proc fcQSslServer_metaObject(self: pointer): pointer {.importc: "QSslServer_metaObject".}
proc fcQSslServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSslServer_metacast".}
proc fcQSslServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSslServer_metacall".}
proc fcQSslServer_tr(s: cstring): struct_miqt_string {.importc: "QSslServer_tr".}
proc fcQSslServer_setSslConfiguration(self: pointer, sslConfiguration: pointer): void {.importc: "QSslServer_setSslConfiguration".}
proc fcQSslServer_sslConfiguration(self: pointer): pointer {.importc: "QSslServer_sslConfiguration".}
proc fcQSslServer_setHandshakeTimeout(self: pointer, timeout: cint): void {.importc: "QSslServer_setHandshakeTimeout".}
proc fcQSslServer_handshakeTimeout(self: pointer): cint {.importc: "QSslServer_handshakeTimeout".}
proc fcQSslServer_sslErrors(self: pointer, socket: pointer, errors: struct_miqt_array): void {.importc: "QSslServer_sslErrors".}
proc fcQSslServer_connect_sslErrors(self: pointer, slot: int, callback: proc (slot: int, socket: pointer, errors: struct_miqt_array) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslServer_connect_sslErrors".}
proc fcQSslServer_peerVerifyError(self: pointer, socket: pointer, error: pointer): void {.importc: "QSslServer_peerVerifyError".}
proc fcQSslServer_connect_peerVerifyError(self: pointer, slot: int, callback: proc (slot: int, socket: pointer, error: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslServer_connect_peerVerifyError".}
proc fcQSslServer_errorOccurred(self: pointer, socket: pointer, error: cint): void {.importc: "QSslServer_errorOccurred".}
proc fcQSslServer_connect_errorOccurred(self: pointer, slot: int, callback: proc (slot: int, socket: pointer, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslServer_connect_errorOccurred".}
proc fcQSslServer_preSharedKeyAuthenticationRequired(self: pointer, socket: pointer, authenticator: pointer): void {.importc: "QSslServer_preSharedKeyAuthenticationRequired".}
proc fcQSslServer_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int, callback: proc (slot: int, socket: pointer, authenticator: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslServer_connect_preSharedKeyAuthenticationRequired".}
proc fcQSslServer_alertSent(self: pointer, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string): void {.importc: "QSslServer_alertSent".}
proc fcQSslServer_connect_alertSent(self: pointer, slot: int, callback: proc (slot: int, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslServer_connect_alertSent".}
proc fcQSslServer_alertReceived(self: pointer, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string): void {.importc: "QSslServer_alertReceived".}
proc fcQSslServer_connect_alertReceived(self: pointer, slot: int, callback: proc (slot: int, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslServer_connect_alertReceived".}
proc fcQSslServer_handshakeInterruptedOnError(self: pointer, socket: pointer, error: pointer): void {.importc: "QSslServer_handshakeInterruptedOnError".}
proc fcQSslServer_connect_handshakeInterruptedOnError(self: pointer, slot: int, callback: proc (slot: int, socket: pointer, error: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslServer_connect_handshakeInterruptedOnError".}
proc fcQSslServer_startedEncryptionHandshake(self: pointer, socket: pointer): void {.importc: "QSslServer_startedEncryptionHandshake".}
proc fcQSslServer_connect_startedEncryptionHandshake(self: pointer, slot: int, callback: proc (slot: int, socket: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QSslServer_connect_startedEncryptionHandshake".}
proc fcQSslServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSslServer_tr2".}
proc fcQSslServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSslServer_tr3".}
proc fcQSslServer_vtbl(self: pointer): pointer {.importc: "QSslServer_vtbl".}
proc fcQSslServer_vdata(self: pointer): pointer {.importc: "QSslServer_vdata".}

type cQSslServerVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  incomingConnection*: proc(self: pointer, socket: uint): void {.cdecl, raises: [], gcsafe.}
  hasPendingConnections*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  nextPendingConnection*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSslServer_virtualbase_metaObject(self: pointer): pointer {.importc: "QSslServer_virtualbase_metaObject".}
proc fcQSslServer_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSslServer_virtualbase_metacast".}
proc fcQSslServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSslServer_virtualbase_metacall".}
proc fcQSslServer_virtualbase_incomingConnection(self: pointer, socket: uint): void {.importc: "QSslServer_virtualbase_incomingConnection".}
proc fcQSslServer_virtualbase_hasPendingConnections(self: pointer): bool {.importc: "QSslServer_virtualbase_hasPendingConnections".}
proc fcQSslServer_virtualbase_nextPendingConnection(self: pointer): pointer {.importc: "QSslServer_virtualbase_nextPendingConnection".}
proc fcQSslServer_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSslServer_virtualbase_event".}
proc fcQSslServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSslServer_virtualbase_eventFilter".}
proc fcQSslServer_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSslServer_virtualbase_timerEvent".}
proc fcQSslServer_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSslServer_virtualbase_childEvent".}
proc fcQSslServer_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSslServer_virtualbase_customEvent".}
proc fcQSslServer_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSslServer_virtualbase_connectNotify".}
proc fcQSslServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSslServer_virtualbase_disconnectNotify".}
proc fcQSslServer_protectedbase_addPendingConnection(self: pointer, socket: pointer): void {.importc: "QSslServer_protectedbase_addPendingConnection".}
proc fcQSslServer_protectedbase_sender(self: pointer): pointer {.importc: "QSslServer_protectedbase_sender".}
proc fcQSslServer_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QSslServer_protectedbase_senderSignalIndex".}
proc fcQSslServer_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QSslServer_protectedbase_receivers".}
proc fcQSslServer_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QSslServer_protectedbase_isSignalConnected".}
proc fcQSslServer_new(vtbl, vdata: pointer): ptr cQSslServer {.importc: "QSslServer_new".}
proc fcQSslServer_new2(vtbl, vdata: pointer, parent: pointer): ptr cQSslServer {.importc: "QSslServer_new2".}
proc fcQSslServer_staticMetaObject(): pointer {.importc: "QSslServer_staticMetaObject".}

proc metaObject*(self: gen_qsslserver_types.QSslServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslServer_metaObject(self.h), owned: false)

proc metacast*(self: gen_qsslserver_types.QSslServer, param1: cstring): pointer =
  fcQSslServer_metacast(self.h, param1)

proc metacall*(self: gen_qsslserver_types.QSslServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSslServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsslserver_types.QSslServer, s: cstring): string =
  let v_ms = fcQSslServer_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSslConfiguration*(self: gen_qsslserver_types.QSslServer, sslConfiguration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQSslServer_setSslConfiguration(self.h, sslConfiguration.h)

proc sslConfiguration*(self: gen_qsslserver_types.QSslServer): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQSslServer_sslConfiguration(self.h), owned: true)

proc setHandshakeTimeout*(self: gen_qsslserver_types.QSslServer, timeout: cint): void =
  fcQSslServer_setHandshakeTimeout(self.h, timeout)

proc handshakeTimeout*(self: gen_qsslserver_types.QSslServer): cint =
  fcQSslServer_handshakeTimeout(self.h)

proc sslErrors*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, errors: openArray[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQSslServer_sslErrors(self.h, socket.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

type QSslServersslErrorsSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, errors: openArray[gen_qsslerror_types.QSslError])
proc fcQSslServer_slot_callback_sslErrors(slot: int, socket: pointer, errors: struct_miqt_array) {.cdecl.} =
  let nimfunc = cast[ptr QSslServersslErrorsSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket, owned: false)

  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror_types.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror_types.QSslError(h: verrors_outCast[i], owned: true)
  c_free(verrors_ma.data)
  let slotval2 = verrorsx_ret

  nimfunc[](slotval1, slotval2)

proc fcQSslServer_slot_callback_sslErrors_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslServersslErrorsSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSslErrors*(self: gen_qsslserver_types.QSslServer, slot: QSslServersslErrorsSlot) =
  var tmp = new QSslServersslErrorsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_sslErrors(self.h, cast[int](addr tmp[]), fcQSslServer_slot_callback_sslErrors, fcQSslServer_slot_callback_sslErrors_release)

proc peerVerifyError*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError): void =
  fcQSslServer_peerVerifyError(self.h, socket.h, error.h)

type QSslServerpeerVerifyErrorSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError)
proc fcQSslServer_slot_callback_peerVerifyError(slot: int, socket: pointer, error: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSslServerpeerVerifyErrorSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket, owned: false)

  let slotval2 = gen_qsslerror_types.QSslError(h: error, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQSslServer_slot_callback_peerVerifyError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslServerpeerVerifyErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPeerVerifyError*(self: gen_qsslserver_types.QSslServer, slot: QSslServerpeerVerifyErrorSlot) =
  var tmp = new QSslServerpeerVerifyErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_peerVerifyError(self.h, cast[int](addr tmp[]), fcQSslServer_slot_callback_peerVerifyError, fcQSslServer_slot_callback_peerVerifyError_release)

proc errorOccurred*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, error: cint): void =
  fcQSslServer_errorOccurred(self.h, socket.h, cint(error))

type QSslServererrorOccurredSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, error: cint)
proc fcQSslServer_slot_callback_errorOccurred(slot: int, socket: pointer, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QSslServererrorOccurredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket, owned: false)

  let slotval2 = cint(error)

  nimfunc[](slotval1, slotval2)

proc fcQSslServer_slot_callback_errorOccurred_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslServererrorOccurredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onErrorOccurred*(self: gen_qsslserver_types.QSslServer, slot: QSslServererrorOccurredSlot) =
  var tmp = new QSslServererrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_errorOccurred(self.h, cast[int](addr tmp[]), fcQSslServer_slot_callback_errorOccurred, fcQSslServer_slot_callback_errorOccurred_release)

proc preSharedKeyAuthenticationRequired*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQSslServer_preSharedKeyAuthenticationRequired(self.h, socket.h, authenticator.h)

type QSslServerpreSharedKeyAuthenticationRequiredSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc fcQSslServer_slot_callback_preSharedKeyAuthenticationRequired(slot: int, socket: pointer, authenticator: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSslServerpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket, owned: false)

  let slotval2 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQSslServer_slot_callback_preSharedKeyAuthenticationRequired_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslServerpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onPreSharedKeyAuthenticationRequired*(self: gen_qsslserver_types.QSslServer, slot: QSslServerpreSharedKeyAuthenticationRequiredSlot) =
  var tmp = new QSslServerpreSharedKeyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]), fcQSslServer_slot_callback_preSharedKeyAuthenticationRequired, fcQSslServer_slot_callback_preSharedKeyAuthenticationRequired_release)

proc alertSent*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: openArray[char]): void =
  fcQSslServer_alertSent(self.h, socket.h, cint(level), cint(typeVal), struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

type QSslServeralertSentSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: openArray[char])
proc fcQSslServer_slot_callback_alertSent(slot: int, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSslServeralertSentSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket, owned: false)

  let slotval2 = cint(level)

  let slotval3 = cint(typeVal)

  let vdescription_ms = description
  let vdescriptionx_ret = string.fromBytes(vdescription_ms)
  c_free(vdescription_ms.data)
  let slotval4 = vdescriptionx_ret

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc fcQSslServer_slot_callback_alertSent_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslServeralertSentSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAlertSent*(self: gen_qsslserver_types.QSslServer, slot: QSslServeralertSentSlot) =
  var tmp = new QSslServeralertSentSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_alertSent(self.h, cast[int](addr tmp[]), fcQSslServer_slot_callback_alertSent, fcQSslServer_slot_callback_alertSent_release)

proc alertReceived*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: openArray[char]): void =
  fcQSslServer_alertReceived(self.h, socket.h, cint(level), cint(typeVal), struct_miqt_string(data: if len(description) > 0: addr description[0] else: nil, len: csize_t(len(description))))

type QSslServeralertReceivedSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: openArray[char])
proc fcQSslServer_slot_callback_alertReceived(slot: int, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QSslServeralertReceivedSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket, owned: false)

  let slotval2 = cint(level)

  let slotval3 = cint(typeVal)

  let vdescription_ms = description
  let vdescriptionx_ret = string.fromBytes(vdescription_ms)
  c_free(vdescription_ms.data)
  let slotval4 = vdescriptionx_ret

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc fcQSslServer_slot_callback_alertReceived_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslServeralertReceivedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAlertReceived*(self: gen_qsslserver_types.QSslServer, slot: QSslServeralertReceivedSlot) =
  var tmp = new QSslServeralertReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_alertReceived(self.h, cast[int](addr tmp[]), fcQSslServer_slot_callback_alertReceived, fcQSslServer_slot_callback_alertReceived_release)

proc handshakeInterruptedOnError*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError): void =
  fcQSslServer_handshakeInterruptedOnError(self.h, socket.h, error.h)

type QSslServerhandshakeInterruptedOnErrorSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError)
proc fcQSslServer_slot_callback_handshakeInterruptedOnError(slot: int, socket: pointer, error: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSslServerhandshakeInterruptedOnErrorSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket, owned: false)

  let slotval2 = gen_qsslerror_types.QSslError(h: error, owned: false)

  nimfunc[](slotval1, slotval2)

proc fcQSslServer_slot_callback_handshakeInterruptedOnError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslServerhandshakeInterruptedOnErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onHandshakeInterruptedOnError*(self: gen_qsslserver_types.QSslServer, slot: QSslServerhandshakeInterruptedOnErrorSlot) =
  var tmp = new QSslServerhandshakeInterruptedOnErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_handshakeInterruptedOnError(self.h, cast[int](addr tmp[]), fcQSslServer_slot_callback_handshakeInterruptedOnError, fcQSslServer_slot_callback_handshakeInterruptedOnError_release)

proc startedEncryptionHandshake*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket): void =
  fcQSslServer_startedEncryptionHandshake(self.h, socket.h)

type QSslServerstartedEncryptionHandshakeSlot* = proc(socket: gen_qsslsocket_types.QSslSocket)
proc fcQSslServer_slot_callback_startedEncryptionHandshake(slot: int, socket: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QSslServerstartedEncryptionHandshakeSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket, owned: false)

  nimfunc[](slotval1)

proc fcQSslServer_slot_callback_startedEncryptionHandshake_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QSslServerstartedEncryptionHandshakeSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStartedEncryptionHandshake*(self: gen_qsslserver_types.QSslServer, slot: QSslServerstartedEncryptionHandshakeSlot) =
  var tmp = new QSslServerstartedEncryptionHandshakeSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_startedEncryptionHandshake(self.h, cast[int](addr tmp[]), fcQSslServer_slot_callback_startedEncryptionHandshake, fcQSslServer_slot_callback_startedEncryptionHandshake_release)

proc tr*(_: type gen_qsslserver_types.QSslServer, s: cstring, c: cstring): string =
  let v_ms = fcQSslServer_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsslserver_types.QSslServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSslServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QSslServermetaObjectProc* = proc(self: QSslServer): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSslServermetacastProc* = proc(self: QSslServer, param1: cstring): pointer {.raises: [], gcsafe.}
type QSslServermetacallProc* = proc(self: QSslServer, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSslServerincomingConnectionProc* = proc(self: QSslServer, socket: uint): void {.raises: [], gcsafe.}
type QSslServerhasPendingConnectionsProc* = proc(self: QSslServer): bool {.raises: [], gcsafe.}
type QSslServernextPendingConnectionProc* = proc(self: QSslServer): gen_qtcpsocket_types.QTcpSocket {.raises: [], gcsafe.}
type QSslServereventProc* = proc(self: QSslServer, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSslServereventFilterProc* = proc(self: QSslServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSslServertimerEventProc* = proc(self: QSslServer, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSslServerchildEventProc* = proc(self: QSslServer, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSslServercustomEventProc* = proc(self: QSslServer, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSslServerconnectNotifyProc* = proc(self: QSslServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSslServerdisconnectNotifyProc* = proc(self: QSslServer, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QSslServerVTable* {.inheritable, pure.} = object
  vtbl: cQSslServerVTable
  metaObject*: QSslServermetaObjectProc
  metacast*: QSslServermetacastProc
  metacall*: QSslServermetacallProc
  incomingConnection*: QSslServerincomingConnectionProc
  hasPendingConnections*: QSslServerhasPendingConnectionsProc
  nextPendingConnection*: QSslServernextPendingConnectionProc
  event*: QSslServereventProc
  eventFilter*: QSslServereventFilterProc
  timerEvent*: QSslServertimerEventProc
  childEvent*: QSslServerchildEventProc
  customEvent*: QSslServercustomEventProc
  connectNotify*: QSslServerconnectNotifyProc
  disconnectNotify*: QSslServerdisconnectNotifyProc

proc QSslServermetaObject*(self: gen_qsslserver_types.QSslServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslServer_virtualbase_metaObject(self.h), owned: false)

proc QSslServermetacast*(self: gen_qsslserver_types.QSslServer, param1: cstring): pointer =
  fcQSslServer_virtualbase_metacast(self.h, param1)

proc QSslServermetacall*(self: gen_qsslserver_types.QSslServer, param1: cint, param2: cint, param3: pointer): cint =
  fcQSslServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QSslServerincomingConnection*(self: gen_qsslserver_types.QSslServer, socket: uint): void =
  fcQSslServer_virtualbase_incomingConnection(self.h, socket)

proc QSslServerhasPendingConnections*(self: gen_qsslserver_types.QSslServer): bool =
  fcQSslServer_virtualbase_hasPendingConnections(self.h)

proc QSslServernextPendingConnection*(self: gen_qsslserver_types.QSslServer): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fcQSslServer_virtualbase_nextPendingConnection(self.h), owned: false)

proc QSslServerevent*(self: gen_qsslserver_types.QSslServer, event: gen_qcoreevent_types.QEvent): bool =
  fcQSslServer_virtualbase_event(self.h, event.h)

proc QSslServereventFilter*(self: gen_qsslserver_types.QSslServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSslServer_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QSslServertimerEvent*(self: gen_qsslserver_types.QSslServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSslServer_virtualbase_timerEvent(self.h, event.h)

proc QSslServerchildEvent*(self: gen_qsslserver_types.QSslServer, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSslServer_virtualbase_childEvent(self.h, event.h)

proc QSslServercustomEvent*(self: gen_qsslserver_types.QSslServer, event: gen_qcoreevent_types.QEvent): void =
  fcQSslServer_virtualbase_customEvent(self.h, event.h)

proc QSslServerconnectNotify*(self: gen_qsslserver_types.QSslServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSslServer_virtualbase_connectNotify(self.h, signal.h)

proc QSslServerdisconnectNotify*(self: gen_qsslserver_types.QSslServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSslServer_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQSslServer_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSslServer_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQSslServer_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSslServer_vtable_callback_incomingConnection(self: pointer, socket: uint): void {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = socket
  vtbl[].incomingConnection(self, slotval1)

proc fcQSslServer_vtable_callback_hasPendingConnections(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  var virtualReturn = vtbl[].hasPendingConnections(self)
  virtualReturn

proc fcQSslServer_vtable_callback_nextPendingConnection(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  var virtualReturn = vtbl[].nextPendingConnection(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSslServer_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQSslServer_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQSslServer_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQSslServer_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQSslServer_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQSslServer_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQSslServer_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSslServerVTable](fcQSslServer_vdata(self))
  let self = QSslServer(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQSslServer* {.inheritable.} = ref object of QSslServer
  vtbl*: cQSslServerVTable

method metaObject*(self: VirtualQSslServer): gen_qobjectdefs_types.QMetaObject {.base.} =
  QSslServermetaObject(self[])
method metacast*(self: VirtualQSslServer, param1: cstring): pointer {.base.} =
  QSslServermetacast(self[], param1)
method metacall*(self: VirtualQSslServer, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QSslServermetacall(self[], param1, param2, param3)
method incomingConnection*(self: VirtualQSslServer, socket: uint): void {.base.} =
  QSslServerincomingConnection(self[], socket)
method hasPendingConnections*(self: VirtualQSslServer): bool {.base.} =
  QSslServerhasPendingConnections(self[])
method nextPendingConnection*(self: VirtualQSslServer): gen_qtcpsocket_types.QTcpSocket {.base.} =
  QSslServernextPendingConnection(self[])
method event*(self: VirtualQSslServer, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSslServerevent(self[], event)
method eventFilter*(self: VirtualQSslServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QSslServereventFilter(self[], watched, event)
method timerEvent*(self: VirtualQSslServer, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QSslServertimerEvent(self[], event)
method childEvent*(self: VirtualQSslServer, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QSslServerchildEvent(self[], event)
method customEvent*(self: VirtualQSslServer, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QSslServercustomEvent(self[], event)
method connectNotify*(self: VirtualQSslServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSslServerconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQSslServer, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QSslServerdisconnectNotify(self[], signal)

proc fcQSslServer_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSslServer_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQSslServer_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQSslServer_method_callback_incomingConnection(self: pointer, socket: uint): void {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = socket
  inst.incomingConnection(slotval1)

proc fcQSslServer_method_callback_hasPendingConnections(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  var virtualReturn = inst.hasPendingConnections()
  virtualReturn

proc fcQSslServer_method_callback_nextPendingConnection(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  var virtualReturn = inst.nextPendingConnection()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSslServer_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQSslServer_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQSslServer_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQSslServer_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQSslServer_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQSslServer_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQSslServer_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSslServer](fcQSslServer_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc addPendingConnection*(self: gen_qsslserver_types.QSslServer, socket: gen_qtcpsocket_types.QTcpSocket): void =
  fcQSslServer_protectedbase_addPendingConnection(self.h, socket.h)

proc sender*(self: gen_qsslserver_types.QSslServer): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSslServer_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qsslserver_types.QSslServer): cint =
  fcQSslServer_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qsslserver_types.QSslServer, signal: cstring): cint =
  fcQSslServer_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qsslserver_types.QSslServer, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQSslServer_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qsslserver_types.QSslServer,
    vtbl: ref QSslServerVTable = nil): gen_qsslserver_types.QSslServer =
  let vtbl = if vtbl == nil: new QSslServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSslServerVTable](fcQSslServer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSslServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSslServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSslServer_vtable_callback_metacall
  if not isNil(vtbl[].incomingConnection):
    vtbl[].vtbl.incomingConnection = fcQSslServer_vtable_callback_incomingConnection
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = fcQSslServer_vtable_callback_hasPendingConnections
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = fcQSslServer_vtable_callback_nextPendingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSslServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSslServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSslServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSslServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSslServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSslServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSslServer_vtable_callback_disconnectNotify
  gen_qsslserver_types.QSslServer(h: fcQSslServer_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qsslserver_types.QSslServer,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSslServerVTable = nil): gen_qsslserver_types.QSslServer =
  let vtbl = if vtbl == nil: new QSslServerVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSslServerVTable](fcQSslServer_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQSslServer_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQSslServer_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQSslServer_vtable_callback_metacall
  if not isNil(vtbl[].incomingConnection):
    vtbl[].vtbl.incomingConnection = fcQSslServer_vtable_callback_incomingConnection
  if not isNil(vtbl[].hasPendingConnections):
    vtbl[].vtbl.hasPendingConnections = fcQSslServer_vtable_callback_hasPendingConnections
  if not isNil(vtbl[].nextPendingConnection):
    vtbl[].vtbl.nextPendingConnection = fcQSslServer_vtable_callback_nextPendingConnection
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQSslServer_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQSslServer_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQSslServer_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQSslServer_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQSslServer_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQSslServer_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQSslServer_vtable_callback_disconnectNotify
  gen_qsslserver_types.QSslServer(h: fcQSslServer_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQSslServer_mvtbl = cQSslServerVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSslServer()[])](self.fcQSslServer_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQSslServer_method_callback_metaObject,
  metacast: fcQSslServer_method_callback_metacast,
  metacall: fcQSslServer_method_callback_metacall,
  incomingConnection: fcQSslServer_method_callback_incomingConnection,
  hasPendingConnections: fcQSslServer_method_callback_hasPendingConnections,
  nextPendingConnection: fcQSslServer_method_callback_nextPendingConnection,
  event: fcQSslServer_method_callback_event,
  eventFilter: fcQSslServer_method_callback_eventFilter,
  timerEvent: fcQSslServer_method_callback_timerEvent,
  childEvent: fcQSslServer_method_callback_childEvent,
  customEvent: fcQSslServer_method_callback_customEvent,
  connectNotify: fcQSslServer_method_callback_connectNotify,
  disconnectNotify: fcQSslServer_method_callback_disconnectNotify,
)
proc create*(T: type gen_qsslserver_types.QSslServer,
    inst: VirtualQSslServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSslServer_new(addr(cQSslServer_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qsslserver_types.QSslServer,
    parent: gen_qobject_types.QObject,
    inst: VirtualQSslServer) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSslServer_new2(addr(cQSslServer_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qsslserver_types.QSslServer): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslServer_staticMetaObject())
