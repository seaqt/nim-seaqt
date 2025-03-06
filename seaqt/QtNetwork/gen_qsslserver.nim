import ./Qt6Network_libs

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

const cflags = gorge("pkg-config --cflags Qt6Network")  & " -fPIC"
{.compile("gen_qsslserver.cpp", cflags).}


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

proc fcQSslServer_new(): ptr cQSslServer {.importc: "QSslServer_new".}
proc fcQSslServer_new2(parent: pointer): ptr cQSslServer {.importc: "QSslServer_new2".}
proc fcQSslServer_metaObject(self: pointer, ): pointer {.importc: "QSslServer_metaObject".}
proc fcQSslServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSslServer_metacast".}
proc fcQSslServer_tr(s: cstring): struct_miqt_string {.importc: "QSslServer_tr".}
proc fcQSslServer_setSslConfiguration(self: pointer, sslConfiguration: pointer): void {.importc: "QSslServer_setSslConfiguration".}
proc fcQSslServer_sslConfiguration(self: pointer, ): pointer {.importc: "QSslServer_sslConfiguration".}
proc fcQSslServer_setHandshakeTimeout(self: pointer, timeout: cint): void {.importc: "QSslServer_setHandshakeTimeout".}
proc fcQSslServer_handshakeTimeout(self: pointer, ): cint {.importc: "QSslServer_handshakeTimeout".}
proc fcQSslServer_sslErrors(self: pointer, socket: pointer, errors: struct_miqt_array): void {.importc: "QSslServer_sslErrors".}
proc fcQSslServer_connect_sslErrors(self: pointer, slot: int) {.importc: "QSslServer_connect_sslErrors".}
proc fcQSslServer_peerVerifyError(self: pointer, socket: pointer, error: pointer): void {.importc: "QSslServer_peerVerifyError".}
proc fcQSslServer_connect_peerVerifyError(self: pointer, slot: int) {.importc: "QSslServer_connect_peerVerifyError".}
proc fcQSslServer_errorOccurred(self: pointer, socket: pointer, error: cint): void {.importc: "QSslServer_errorOccurred".}
proc fcQSslServer_connect_errorOccurred(self: pointer, slot: int) {.importc: "QSslServer_connect_errorOccurred".}
proc fcQSslServer_preSharedKeyAuthenticationRequired(self: pointer, socket: pointer, authenticator: pointer): void {.importc: "QSslServer_preSharedKeyAuthenticationRequired".}
proc fcQSslServer_connect_preSharedKeyAuthenticationRequired(self: pointer, slot: int) {.importc: "QSslServer_connect_preSharedKeyAuthenticationRequired".}
proc fcQSslServer_alertSent(self: pointer, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string): void {.importc: "QSslServer_alertSent".}
proc fcQSslServer_connect_alertSent(self: pointer, slot: int) {.importc: "QSslServer_connect_alertSent".}
proc fcQSslServer_alertReceived(self: pointer, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string): void {.importc: "QSslServer_alertReceived".}
proc fcQSslServer_connect_alertReceived(self: pointer, slot: int) {.importc: "QSslServer_connect_alertReceived".}
proc fcQSslServer_handshakeInterruptedOnError(self: pointer, socket: pointer, error: pointer): void {.importc: "QSslServer_handshakeInterruptedOnError".}
proc fcQSslServer_connect_handshakeInterruptedOnError(self: pointer, slot: int) {.importc: "QSslServer_connect_handshakeInterruptedOnError".}
proc fcQSslServer_startedEncryptionHandshake(self: pointer, socket: pointer): void {.importc: "QSslServer_startedEncryptionHandshake".}
proc fcQSslServer_connect_startedEncryptionHandshake(self: pointer, slot: int) {.importc: "QSslServer_connect_startedEncryptionHandshake".}
proc fcQSslServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSslServer_tr2".}
proc fcQSslServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSslServer_tr3".}
proc fQSslServer_virtualbase_incomingConnection(self: pointer, socket: uint): void{.importc: "QSslServer_virtualbase_incomingConnection".}
proc fcQSslServer_override_virtual_incomingConnection(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_incomingConnection".}
proc fQSslServer_virtualbase_hasPendingConnections(self: pointer, ): bool{.importc: "QSslServer_virtualbase_hasPendingConnections".}
proc fcQSslServer_override_virtual_hasPendingConnections(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_hasPendingConnections".}
proc fQSslServer_virtualbase_nextPendingConnection(self: pointer, ): pointer{.importc: "QSslServer_virtualbase_nextPendingConnection".}
proc fcQSslServer_override_virtual_nextPendingConnection(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_nextPendingConnection".}
proc fQSslServer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSslServer_virtualbase_event".}
proc fcQSslServer_override_virtual_event(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_event".}
proc fQSslServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSslServer_virtualbase_eventFilter".}
proc fcQSslServer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_eventFilter".}
proc fQSslServer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSslServer_virtualbase_timerEvent".}
proc fcQSslServer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_timerEvent".}
proc fQSslServer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSslServer_virtualbase_childEvent".}
proc fcQSslServer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_childEvent".}
proc fQSslServer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSslServer_virtualbase_customEvent".}
proc fcQSslServer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_customEvent".}
proc fQSslServer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSslServer_virtualbase_connectNotify".}
proc fcQSslServer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_connectNotify".}
proc fQSslServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSslServer_virtualbase_disconnectNotify".}
proc fcQSslServer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSslServer_override_virtual_disconnectNotify".}
proc fcQSslServer_delete(self: pointer) {.importc: "QSslServer_delete".}


func init*(T: type gen_qsslserver_types.QSslServer, h: ptr cQSslServer): gen_qsslserver_types.QSslServer =
  T(h: h)
proc create*(T: type gen_qsslserver_types.QSslServer, ): gen_qsslserver_types.QSslServer =
  gen_qsslserver_types.QSslServer.init(fcQSslServer_new())

proc create*(T: type gen_qsslserver_types.QSslServer, parent: gen_qobject_types.QObject): gen_qsslserver_types.QSslServer =
  gen_qsslserver_types.QSslServer.init(fcQSslServer_new2(parent.h))

proc metaObject*(self: gen_qsslserver_types.QSslServer, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslServer_metaObject(self.h))

proc metacast*(self: gen_qsslserver_types.QSslServer, param1: cstring): pointer =
  fcQSslServer_metacast(self.h, param1)

proc tr*(_: type gen_qsslserver_types.QSslServer, s: cstring): string =
  let v_ms = fcQSslServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSslConfiguration*(self: gen_qsslserver_types.QSslServer, sslConfiguration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQSslServer_setSslConfiguration(self.h, sslConfiguration.h)

proc sslConfiguration*(self: gen_qsslserver_types.QSslServer, ): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQSslServer_sslConfiguration(self.h))

proc setHandshakeTimeout*(self: gen_qsslserver_types.QSslServer, timeout: cint): void =
  fcQSslServer_setHandshakeTimeout(self.h, timeout)

proc handshakeTimeout*(self: gen_qsslserver_types.QSslServer, ): cint =
  fcQSslServer_handshakeTimeout(self.h)

proc sslErrors*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, errors: seq[gen_qsslerror_types.QSslError]): void =
  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQSslServer_sslErrors(self.h, socket.h, struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

type QSslServersslErrorsSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, errors: seq[gen_qsslerror_types.QSslError])
proc miqt_exec_callback_QSslServer_sslErrors(slot: int, socket: pointer, errors: struct_miqt_array) {.exportc.} =
  let nimfunc = cast[ptr QSslServersslErrorsSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket)

  var verrors_ma = errors
  var verrorsx_ret = newSeq[gen_qsslerror_types.QSslError](int(verrors_ma.len))
  let verrors_outCast = cast[ptr UncheckedArray[pointer]](verrors_ma.data)
  for i in 0 ..< verrors_ma.len:
    verrorsx_ret[i] = gen_qsslerror_types.QSslError(h: verrors_outCast[i])
  let slotval2 = verrorsx_ret

  nimfunc[](slotval1, slotval2)

proc onsslErrors*(self: gen_qsslserver_types.QSslServer, slot: QSslServersslErrorsSlot) =
  var tmp = new QSslServersslErrorsSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_sslErrors(self.h, cast[int](addr tmp[]))

proc peerVerifyError*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError): void =
  fcQSslServer_peerVerifyError(self.h, socket.h, error.h)

type QSslServerpeerVerifyErrorSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError)
proc miqt_exec_callback_QSslServer_peerVerifyError(slot: int, socket: pointer, error: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSslServerpeerVerifyErrorSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket)

  let slotval2 = gen_qsslerror_types.QSslError(h: error)

  nimfunc[](slotval1, slotval2)

proc onpeerVerifyError*(self: gen_qsslserver_types.QSslServer, slot: QSslServerpeerVerifyErrorSlot) =
  var tmp = new QSslServerpeerVerifyErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_peerVerifyError(self.h, cast[int](addr tmp[]))

proc errorOccurred*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, error: cint): void =
  fcQSslServer_errorOccurred(self.h, socket.h, cint(error))

type QSslServererrorOccurredSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, error: cint)
proc miqt_exec_callback_QSslServer_errorOccurred(slot: int, socket: pointer, error: cint) {.exportc.} =
  let nimfunc = cast[ptr QSslServererrorOccurredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket)

  let slotval2 = cint(error)

  nimfunc[](slotval1, slotval2)

proc onerrorOccurred*(self: gen_qsslserver_types.QSslServer, slot: QSslServererrorOccurredSlot) =
  var tmp = new QSslServererrorOccurredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_errorOccurred(self.h, cast[int](addr tmp[]))

proc preSharedKeyAuthenticationRequired*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator): void =
  fcQSslServer_preSharedKeyAuthenticationRequired(self.h, socket.h, authenticator.h)

type QSslServerpreSharedKeyAuthenticationRequiredSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, authenticator: gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator)
proc miqt_exec_callback_QSslServer_preSharedKeyAuthenticationRequired(slot: int, socket: pointer, authenticator: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSslServerpreSharedKeyAuthenticationRequiredSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket)

  let slotval2 = gen_qsslpresharedkeyauthenticator_types.QSslPreSharedKeyAuthenticator(h: authenticator)

  nimfunc[](slotval1, slotval2)

proc onpreSharedKeyAuthenticationRequired*(self: gen_qsslserver_types.QSslServer, slot: QSslServerpreSharedKeyAuthenticationRequiredSlot) =
  var tmp = new QSslServerpreSharedKeyAuthenticationRequiredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_preSharedKeyAuthenticationRequired(self.h, cast[int](addr tmp[]))

proc alertSent*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: string): void =
  fcQSslServer_alertSent(self.h, socket.h, cint(level), cint(typeVal), struct_miqt_string(data: description, len: csize_t(len(description))))

type QSslServeralertSentSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: string)
proc miqt_exec_callback_QSslServer_alertSent(slot: int, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QSslServeralertSentSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket)

  let slotval2 = cint(level)

  let slotval3 = cint(typeVal)

  let vdescription_ms = description
  let vdescriptionx_ret = string.fromBytes(toOpenArrayByte(vdescription_ms.data, 0, int(vdescription_ms.len)-1))
  c_free(vdescription_ms.data)
  let slotval4 = vdescriptionx_ret

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc onalertSent*(self: gen_qsslserver_types.QSslServer, slot: QSslServeralertSentSlot) =
  var tmp = new QSslServeralertSentSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_alertSent(self.h, cast[int](addr tmp[]))

proc alertReceived*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: string): void =
  fcQSslServer_alertReceived(self.h, socket.h, cint(level), cint(typeVal), struct_miqt_string(data: description, len: csize_t(len(description))))

type QSslServeralertReceivedSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, level: cint, typeVal: cint, description: string)
proc miqt_exec_callback_QSslServer_alertReceived(slot: int, socket: pointer, level: cint, typeVal: cint, description: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QSslServeralertReceivedSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket)

  let slotval2 = cint(level)

  let slotval3 = cint(typeVal)

  let vdescription_ms = description
  let vdescriptionx_ret = string.fromBytes(toOpenArrayByte(vdescription_ms.data, 0, int(vdescription_ms.len)-1))
  c_free(vdescription_ms.data)
  let slotval4 = vdescriptionx_ret

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc onalertReceived*(self: gen_qsslserver_types.QSslServer, slot: QSslServeralertReceivedSlot) =
  var tmp = new QSslServeralertReceivedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_alertReceived(self.h, cast[int](addr tmp[]))

proc handshakeInterruptedOnError*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError): void =
  fcQSslServer_handshakeInterruptedOnError(self.h, socket.h, error.h)

type QSslServerhandshakeInterruptedOnErrorSlot* = proc(socket: gen_qsslsocket_types.QSslSocket, error: gen_qsslerror_types.QSslError)
proc miqt_exec_callback_QSslServer_handshakeInterruptedOnError(slot: int, socket: pointer, error: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSslServerhandshakeInterruptedOnErrorSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket)

  let slotval2 = gen_qsslerror_types.QSslError(h: error)

  nimfunc[](slotval1, slotval2)

proc onhandshakeInterruptedOnError*(self: gen_qsslserver_types.QSslServer, slot: QSslServerhandshakeInterruptedOnErrorSlot) =
  var tmp = new QSslServerhandshakeInterruptedOnErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_handshakeInterruptedOnError(self.h, cast[int](addr tmp[]))

proc startedEncryptionHandshake*(self: gen_qsslserver_types.QSslServer, socket: gen_qsslsocket_types.QSslSocket): void =
  fcQSslServer_startedEncryptionHandshake(self.h, socket.h)

type QSslServerstartedEncryptionHandshakeSlot* = proc(socket: gen_qsslsocket_types.QSslSocket)
proc miqt_exec_callback_QSslServer_startedEncryptionHandshake(slot: int, socket: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSslServerstartedEncryptionHandshakeSlot](cast[pointer](slot))
  let slotval1 = gen_qsslsocket_types.QSslSocket(h: socket)

  nimfunc[](slotval1)

proc onstartedEncryptionHandshake*(self: gen_qsslserver_types.QSslServer, slot: QSslServerstartedEncryptionHandshakeSlot) =
  var tmp = new QSslServerstartedEncryptionHandshakeSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_connect_startedEncryptionHandshake(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsslserver_types.QSslServer, s: cstring, c: cstring): string =
  let v_ms = fcQSslServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsslserver_types.QSslServer, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSslServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSslServerincomingConnection*(self: gen_qsslserver_types.QSslServer, socket: uint): void =
  fQSslServer_virtualbase_incomingConnection(self.h, socket)

type QSslServerincomingConnectionProc* = proc(socket: uint): void
proc onincomingConnection*(self: gen_qsslserver_types.QSslServer, slot: QSslServerincomingConnectionProc) =
  # TODO check subclass
  var tmp = new QSslServerincomingConnectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_incomingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_incomingConnection(self: ptr cQSslServer, slot: int, socket: uint): void {.exportc: "miqt_exec_callback_QSslServer_incomingConnection ".} =
  var nimfunc = cast[ptr QSslServerincomingConnectionProc](cast[pointer](slot))
  let slotval1 = socket


  nimfunc[](slotval1)
proc QSslServerhasPendingConnections*(self: gen_qsslserver_types.QSslServer, ): bool =
  fQSslServer_virtualbase_hasPendingConnections(self.h)

type QSslServerhasPendingConnectionsProc* = proc(): bool
proc onhasPendingConnections*(self: gen_qsslserver_types.QSslServer, slot: QSslServerhasPendingConnectionsProc) =
  # TODO check subclass
  var tmp = new QSslServerhasPendingConnectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_hasPendingConnections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_hasPendingConnections(self: ptr cQSslServer, slot: int): bool {.exportc: "miqt_exec_callback_QSslServer_hasPendingConnections ".} =
  var nimfunc = cast[ptr QSslServerhasPendingConnectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSslServernextPendingConnection*(self: gen_qsslserver_types.QSslServer, ): gen_qtcpsocket_types.QTcpSocket =
  gen_qtcpsocket_types.QTcpSocket(h: fQSslServer_virtualbase_nextPendingConnection(self.h))

type QSslServernextPendingConnectionProc* = proc(): gen_qtcpsocket_types.QTcpSocket
proc onnextPendingConnection*(self: gen_qsslserver_types.QSslServer, slot: QSslServernextPendingConnectionProc) =
  # TODO check subclass
  var tmp = new QSslServernextPendingConnectionProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_nextPendingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_nextPendingConnection(self: ptr cQSslServer, slot: int): pointer {.exportc: "miqt_exec_callback_QSslServer_nextPendingConnection ".} =
  var nimfunc = cast[ptr QSslServernextPendingConnectionProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSslServerevent*(self: gen_qsslserver_types.QSslServer, event: gen_qcoreevent_types.QEvent): bool =
  fQSslServer_virtualbase_event(self.h, event.h)

type QSslServereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsslserver_types.QSslServer, slot: QSslServereventProc) =
  # TODO check subclass
  var tmp = new QSslServereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_event(self: ptr cQSslServer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSslServer_event ".} =
  var nimfunc = cast[ptr QSslServereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSslServereventFilter*(self: gen_qsslserver_types.QSslServer, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSslServer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSslServereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsslserver_types.QSslServer, slot: QSslServereventFilterProc) =
  # TODO check subclass
  var tmp = new QSslServereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_eventFilter(self: ptr cQSslServer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSslServer_eventFilter ".} =
  var nimfunc = cast[ptr QSslServereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSslServertimerEvent*(self: gen_qsslserver_types.QSslServer, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSslServer_virtualbase_timerEvent(self.h, event.h)

type QSslServertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsslserver_types.QSslServer, slot: QSslServertimerEventProc) =
  # TODO check subclass
  var tmp = new QSslServertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_timerEvent(self: ptr cQSslServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslServer_timerEvent ".} =
  var nimfunc = cast[ptr QSslServertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSslServerchildEvent*(self: gen_qsslserver_types.QSslServer, event: gen_qcoreevent_types.QChildEvent): void =
  fQSslServer_virtualbase_childEvent(self.h, event.h)

type QSslServerchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsslserver_types.QSslServer, slot: QSslServerchildEventProc) =
  # TODO check subclass
  var tmp = new QSslServerchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_childEvent(self: ptr cQSslServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslServer_childEvent ".} =
  var nimfunc = cast[ptr QSslServerchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSslServercustomEvent*(self: gen_qsslserver_types.QSslServer, event: gen_qcoreevent_types.QEvent): void =
  fQSslServer_virtualbase_customEvent(self.h, event.h)

type QSslServercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsslserver_types.QSslServer, slot: QSslServercustomEventProc) =
  # TODO check subclass
  var tmp = new QSslServercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_customEvent(self: ptr cQSslServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSslServer_customEvent ".} =
  var nimfunc = cast[ptr QSslServercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSslServerconnectNotify*(self: gen_qsslserver_types.QSslServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSslServer_virtualbase_connectNotify(self.h, signal.h)

type QSslServerconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsslserver_types.QSslServer, slot: QSslServerconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSslServerconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_connectNotify(self: ptr cQSslServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSslServer_connectNotify ".} =
  var nimfunc = cast[ptr QSslServerconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSslServerdisconnectNotify*(self: gen_qsslserver_types.QSslServer, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSslServer_virtualbase_disconnectNotify(self.h, signal.h)

type QSslServerdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsslserver_types.QSslServer, slot: QSslServerdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSslServerdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSslServer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSslServer_disconnectNotify(self: ptr cQSslServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSslServer_disconnectNotify ".} =
  var nimfunc = cast[ptr QSslServerdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qsslserver_types.QSslServer) =
  fcQSslServer_delete(self.h)
