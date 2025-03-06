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
{.compile("gen_qsslconfiguration.cpp", cflags).}


type QSslConfigurationNextProtocolNegotiationStatusEnum* = distinct cint
template NextProtocolNegotiationNone*(_: type QSslConfigurationNextProtocolNegotiationStatusEnum): untyped = 0
template NextProtocolNegotiationNegotiated*(_: type QSslConfigurationNextProtocolNegotiationStatusEnum): untyped = 1
template NextProtocolNegotiationUnsupported*(_: type QSslConfigurationNextProtocolNegotiationStatusEnum): untyped = 2


import ./gen_qsslconfiguration_types
export gen_qsslconfiguration_types

import
  ../QtCore/gen_qvariant_types,
  ./gen_qsslcertificate_types,
  ./gen_qsslcipher_types,
  ./gen_qssldiffiehellmanparameters_types,
  ./gen_qsslellipticcurve_types,
  ./gen_qsslkey_types
export
  gen_qvariant_types,
  gen_qsslcertificate_types,
  gen_qsslcipher_types,
  gen_qssldiffiehellmanparameters_types,
  gen_qsslellipticcurve_types,
  gen_qsslkey_types

type cQSslConfiguration*{.exportc: "QSslConfiguration", incompleteStruct.} = object

proc fcQSslConfiguration_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslConfiguration_operatorAssign".}
proc fcQSslConfiguration_swap(self: pointer, other: pointer): void {.importc: "QSslConfiguration_swap".}
proc fcQSslConfiguration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSslConfiguration_operatorEqual".}
proc fcQSslConfiguration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSslConfiguration_operatorNotEqual".}
proc fcQSslConfiguration_isNull(self: pointer, ): bool {.importc: "QSslConfiguration_isNull".}
proc fcQSslConfiguration_protocol(self: pointer, ): cint {.importc: "QSslConfiguration_protocol".}
proc fcQSslConfiguration_setProtocol(self: pointer, protocol: cint): void {.importc: "QSslConfiguration_setProtocol".}
proc fcQSslConfiguration_peerVerifyMode(self: pointer, ): cint {.importc: "QSslConfiguration_peerVerifyMode".}
proc fcQSslConfiguration_setPeerVerifyMode(self: pointer, mode: cint): void {.importc: "QSslConfiguration_setPeerVerifyMode".}
proc fcQSslConfiguration_peerVerifyDepth(self: pointer, ): cint {.importc: "QSslConfiguration_peerVerifyDepth".}
proc fcQSslConfiguration_setPeerVerifyDepth(self: pointer, depth: cint): void {.importc: "QSslConfiguration_setPeerVerifyDepth".}
proc fcQSslConfiguration_localCertificateChain(self: pointer, ): struct_miqt_array {.importc: "QSslConfiguration_localCertificateChain".}
proc fcQSslConfiguration_setLocalCertificateChain(self: pointer, localChain: struct_miqt_array): void {.importc: "QSslConfiguration_setLocalCertificateChain".}
proc fcQSslConfiguration_localCertificate(self: pointer, ): pointer {.importc: "QSslConfiguration_localCertificate".}
proc fcQSslConfiguration_setLocalCertificate(self: pointer, certificate: pointer): void {.importc: "QSslConfiguration_setLocalCertificate".}
proc fcQSslConfiguration_peerCertificate(self: pointer, ): pointer {.importc: "QSslConfiguration_peerCertificate".}
proc fcQSslConfiguration_peerCertificateChain(self: pointer, ): struct_miqt_array {.importc: "QSslConfiguration_peerCertificateChain".}
proc fcQSslConfiguration_sessionCipher(self: pointer, ): pointer {.importc: "QSslConfiguration_sessionCipher".}
proc fcQSslConfiguration_sessionProtocol(self: pointer, ): cint {.importc: "QSslConfiguration_sessionProtocol".}
proc fcQSslConfiguration_privateKey(self: pointer, ): pointer {.importc: "QSslConfiguration_privateKey".}
proc fcQSslConfiguration_setPrivateKey(self: pointer, key: pointer): void {.importc: "QSslConfiguration_setPrivateKey".}
proc fcQSslConfiguration_ciphers(self: pointer, ): struct_miqt_array {.importc: "QSslConfiguration_ciphers".}
proc fcQSslConfiguration_setCiphers(self: pointer, ciphers: struct_miqt_array): void {.importc: "QSslConfiguration_setCiphers".}
proc fcQSslConfiguration_setCiphersWithCiphers(self: pointer, ciphers: struct_miqt_string): void {.importc: "QSslConfiguration_setCiphersWithCiphers".}
proc fcQSslConfiguration_supportedCiphers(): struct_miqt_array {.importc: "QSslConfiguration_supportedCiphers".}
proc fcQSslConfiguration_caCertificates(self: pointer, ): struct_miqt_array {.importc: "QSslConfiguration_caCertificates".}
proc fcQSslConfiguration_setCaCertificates(self: pointer, certificates: struct_miqt_array): void {.importc: "QSslConfiguration_setCaCertificates".}
proc fcQSslConfiguration_addCaCertificates(self: pointer, path: struct_miqt_string): bool {.importc: "QSslConfiguration_addCaCertificates".}
proc fcQSslConfiguration_addCaCertificate(self: pointer, certificate: pointer): void {.importc: "QSslConfiguration_addCaCertificate".}
proc fcQSslConfiguration_addCaCertificatesWithCertificates(self: pointer, certificates: struct_miqt_array): void {.importc: "QSslConfiguration_addCaCertificatesWithCertificates".}
proc fcQSslConfiguration_systemCaCertificates(): struct_miqt_array {.importc: "QSslConfiguration_systemCaCertificates".}
proc fcQSslConfiguration_setSslOption(self: pointer, option: cint, on: bool): void {.importc: "QSslConfiguration_setSslOption".}
proc fcQSslConfiguration_testSslOption(self: pointer, option: cint): bool {.importc: "QSslConfiguration_testSslOption".}
proc fcQSslConfiguration_sessionTicket(self: pointer, ): struct_miqt_string {.importc: "QSslConfiguration_sessionTicket".}
proc fcQSslConfiguration_setSessionTicket(self: pointer, sessionTicket: struct_miqt_string): void {.importc: "QSslConfiguration_setSessionTicket".}
proc fcQSslConfiguration_sessionTicketLifeTimeHint(self: pointer, ): cint {.importc: "QSslConfiguration_sessionTicketLifeTimeHint".}
proc fcQSslConfiguration_ephemeralServerKey(self: pointer, ): pointer {.importc: "QSslConfiguration_ephemeralServerKey".}
proc fcQSslConfiguration_ellipticCurves(self: pointer, ): struct_miqt_array {.importc: "QSslConfiguration_ellipticCurves".}
proc fcQSslConfiguration_setEllipticCurves(self: pointer, curves: struct_miqt_array): void {.importc: "QSslConfiguration_setEllipticCurves".}
proc fcQSslConfiguration_supportedEllipticCurves(): struct_miqt_array {.importc: "QSslConfiguration_supportedEllipticCurves".}
proc fcQSslConfiguration_preSharedKeyIdentityHint(self: pointer, ): struct_miqt_string {.importc: "QSslConfiguration_preSharedKeyIdentityHint".}
proc fcQSslConfiguration_setPreSharedKeyIdentityHint(self: pointer, hint: struct_miqt_string): void {.importc: "QSslConfiguration_setPreSharedKeyIdentityHint".}
proc fcQSslConfiguration_diffieHellmanParameters(self: pointer, ): pointer {.importc: "QSslConfiguration_diffieHellmanParameters".}
proc fcQSslConfiguration_setDiffieHellmanParameters(self: pointer, dhparams: pointer): void {.importc: "QSslConfiguration_setDiffieHellmanParameters".}
proc fcQSslConfiguration_setBackendConfigurationOption(self: pointer, name: struct_miqt_string, value: pointer): void {.importc: "QSslConfiguration_setBackendConfigurationOption".}
proc fcQSslConfiguration_setBackendConfiguration(self: pointer, ): void {.importc: "QSslConfiguration_setBackendConfiguration".}
proc fcQSslConfiguration_defaultConfiguration(): pointer {.importc: "QSslConfiguration_defaultConfiguration".}
proc fcQSslConfiguration_setDefaultConfiguration(configuration: pointer): void {.importc: "QSslConfiguration_setDefaultConfiguration".}
proc fcQSslConfiguration_dtlsCookieVerificationEnabled(self: pointer, ): bool {.importc: "QSslConfiguration_dtlsCookieVerificationEnabled".}
proc fcQSslConfiguration_setDtlsCookieVerificationEnabled(self: pointer, enable: bool): void {.importc: "QSslConfiguration_setDtlsCookieVerificationEnabled".}
proc fcQSslConfiguration_defaultDtlsConfiguration(): pointer {.importc: "QSslConfiguration_defaultDtlsConfiguration".}
proc fcQSslConfiguration_setDefaultDtlsConfiguration(configuration: pointer): void {.importc: "QSslConfiguration_setDefaultDtlsConfiguration".}
proc fcQSslConfiguration_handshakeMustInterruptOnError(self: pointer, ): bool {.importc: "QSslConfiguration_handshakeMustInterruptOnError".}
proc fcQSslConfiguration_setHandshakeMustInterruptOnError(self: pointer, interrupt: bool): void {.importc: "QSslConfiguration_setHandshakeMustInterruptOnError".}
proc fcQSslConfiguration_missingCertificateIsFatal(self: pointer, ): bool {.importc: "QSslConfiguration_missingCertificateIsFatal".}
proc fcQSslConfiguration_setMissingCertificateIsFatal(self: pointer, cannotRecover: bool): void {.importc: "QSslConfiguration_setMissingCertificateIsFatal".}
proc fcQSslConfiguration_setOcspStaplingEnabled(self: pointer, enable: bool): void {.importc: "QSslConfiguration_setOcspStaplingEnabled".}
proc fcQSslConfiguration_ocspStaplingEnabled(self: pointer, ): bool {.importc: "QSslConfiguration_ocspStaplingEnabled".}
proc fcQSslConfiguration_setAllowedNextProtocols(self: pointer, protocols: struct_miqt_array): void {.importc: "QSslConfiguration_setAllowedNextProtocols".}
proc fcQSslConfiguration_allowedNextProtocols(self: pointer, ): struct_miqt_array {.importc: "QSslConfiguration_allowedNextProtocols".}
proc fcQSslConfiguration_nextNegotiatedProtocol(self: pointer, ): struct_miqt_string {.importc: "QSslConfiguration_nextNegotiatedProtocol".}
proc fcQSslConfiguration_nextProtocolNegotiationStatus(self: pointer, ): cint {.importc: "QSslConfiguration_nextProtocolNegotiationStatus".}
proc fcQSslConfiguration_addCaCertificates2(self: pointer, path: struct_miqt_string, format: cint): bool {.importc: "QSslConfiguration_addCaCertificates2".}
proc fcQSslConfiguration_addCaCertificates3(self: pointer, path: struct_miqt_string, format: cint, syntax: cint): bool {.importc: "QSslConfiguration_addCaCertificates3".}
proc fcQSslConfiguration_new(): ptr cQSslConfiguration {.importc: "QSslConfiguration_new".}
proc fcQSslConfiguration_new2(other: pointer): ptr cQSslConfiguration {.importc: "QSslConfiguration_new2".}
proc fcQSslConfiguration_delete(self: pointer) {.importc: "QSslConfiguration_delete".}

proc operatorAssign*(self: gen_qsslconfiguration_types.QSslConfiguration, other: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQSslConfiguration_operatorAssign(self.h, other.h)

proc swap*(self: gen_qsslconfiguration_types.QSslConfiguration, other: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQSslConfiguration_swap(self.h, other.h)

proc operatorEqual*(self: gen_qsslconfiguration_types.QSslConfiguration, other: gen_qsslconfiguration_types.QSslConfiguration): bool =
  fcQSslConfiguration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qsslconfiguration_types.QSslConfiguration, other: gen_qsslconfiguration_types.QSslConfiguration): bool =
  fcQSslConfiguration_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qsslconfiguration_types.QSslConfiguration, ): bool =
  fcQSslConfiguration_isNull(self.h)

proc protocol*(self: gen_qsslconfiguration_types.QSslConfiguration, ): cint =
  cint(fcQSslConfiguration_protocol(self.h))

proc setProtocol*(self: gen_qsslconfiguration_types.QSslConfiguration, protocol: cint): void =
  fcQSslConfiguration_setProtocol(self.h, cint(protocol))

proc peerVerifyMode*(self: gen_qsslconfiguration_types.QSslConfiguration, ): cint =
  cint(fcQSslConfiguration_peerVerifyMode(self.h))

proc setPeerVerifyMode*(self: gen_qsslconfiguration_types.QSslConfiguration, mode: cint): void =
  fcQSslConfiguration_setPeerVerifyMode(self.h, cint(mode))

proc peerVerifyDepth*(self: gen_qsslconfiguration_types.QSslConfiguration, ): cint =
  fcQSslConfiguration_peerVerifyDepth(self.h)

proc setPeerVerifyDepth*(self: gen_qsslconfiguration_types.QSslConfiguration, depth: cint): void =
  fcQSslConfiguration_setPeerVerifyDepth(self.h, depth)

proc localCertificateChain*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslConfiguration_localCertificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc setLocalCertificateChain*(self: gen_qsslconfiguration_types.QSslConfiguration, localChain: seq[gen_qsslcertificate_types.QSslCertificate]): void =
  var localChain_CArray = newSeq[pointer](len(localChain))
  for i in 0..<len(localChain):
    localChain_CArray[i] = localChain[i].h

  fcQSslConfiguration_setLocalCertificateChain(self.h, struct_miqt_array(len: csize_t(len(localChain)), data: if len(localChain) == 0: nil else: addr(localChain_CArray[0])))

proc localCertificate*(self: gen_qsslconfiguration_types.QSslConfiguration, ): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslConfiguration_localCertificate(self.h))

proc setLocalCertificate*(self: gen_qsslconfiguration_types.QSslConfiguration, certificate: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslConfiguration_setLocalCertificate(self.h, certificate.h)

proc peerCertificate*(self: gen_qsslconfiguration_types.QSslConfiguration, ): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslConfiguration_peerCertificate(self.h))

proc peerCertificateChain*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslConfiguration_peerCertificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc sessionCipher*(self: gen_qsslconfiguration_types.QSslConfiguration, ): gen_qsslcipher_types.QSslCipher =
  gen_qsslcipher_types.QSslCipher(h: fcQSslConfiguration_sessionCipher(self.h))

proc sessionProtocol*(self: gen_qsslconfiguration_types.QSslConfiguration, ): cint =
  cint(fcQSslConfiguration_sessionProtocol(self.h))

proc privateKey*(self: gen_qsslconfiguration_types.QSslConfiguration, ): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslConfiguration_privateKey(self.h))

proc setPrivateKey*(self: gen_qsslconfiguration_types.QSslConfiguration, key: gen_qsslkey_types.QSslKey): void =
  fcQSslConfiguration_setPrivateKey(self.h, key.h)

proc ciphers*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[gen_qsslcipher_types.QSslCipher] =
  var v_ma = fcQSslConfiguration_ciphers(self.h)
  var vx_ret = newSeq[gen_qsslcipher_types.QSslCipher](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcipher_types.QSslCipher(h: v_outCast[i])
  vx_ret

proc setCiphers*(self: gen_qsslconfiguration_types.QSslConfiguration, ciphers: seq[gen_qsslcipher_types.QSslCipher]): void =
  var ciphers_CArray = newSeq[pointer](len(ciphers))
  for i in 0..<len(ciphers):
    ciphers_CArray[i] = ciphers[i].h

  fcQSslConfiguration_setCiphers(self.h, struct_miqt_array(len: csize_t(len(ciphers)), data: if len(ciphers) == 0: nil else: addr(ciphers_CArray[0])))

proc setCiphers*(self: gen_qsslconfiguration_types.QSslConfiguration, ciphers: string): void =
  fcQSslConfiguration_setCiphersWithCiphers(self.h, struct_miqt_string(data: ciphers, len: csize_t(len(ciphers))))

proc supportedCiphers*(_: type gen_qsslconfiguration_types.QSslConfiguration, ): seq[gen_qsslcipher_types.QSslCipher] =
  var v_ma = fcQSslConfiguration_supportedCiphers()
  var vx_ret = newSeq[gen_qsslcipher_types.QSslCipher](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcipher_types.QSslCipher(h: v_outCast[i])
  vx_ret

proc caCertificates*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslConfiguration_caCertificates(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc setCaCertificates*(self: gen_qsslconfiguration_types.QSslConfiguration, certificates: seq[gen_qsslcertificate_types.QSslCertificate]): void =
  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslConfiguration_setCaCertificates(self.h, struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc addCaCertificates*(self: gen_qsslconfiguration_types.QSslConfiguration, path: string): bool =
  fcQSslConfiguration_addCaCertificates(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc addCaCertificate*(self: gen_qsslconfiguration_types.QSslConfiguration, certificate: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslConfiguration_addCaCertificate(self.h, certificate.h)

proc addCaCertificates*(self: gen_qsslconfiguration_types.QSslConfiguration, certificates: seq[gen_qsslcertificate_types.QSslCertificate]): void =
  var certificates_CArray = newSeq[pointer](len(certificates))
  for i in 0..<len(certificates):
    certificates_CArray[i] = certificates[i].h

  fcQSslConfiguration_addCaCertificatesWithCertificates(self.h, struct_miqt_array(len: csize_t(len(certificates)), data: if len(certificates) == 0: nil else: addr(certificates_CArray[0])))

proc systemCaCertificates*(_: type gen_qsslconfiguration_types.QSslConfiguration, ): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslConfiguration_systemCaCertificates()
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i])
  vx_ret

proc setSslOption*(self: gen_qsslconfiguration_types.QSslConfiguration, option: cint, on: bool): void =
  fcQSslConfiguration_setSslOption(self.h, cint(option), on)

proc testSslOption*(self: gen_qsslconfiguration_types.QSslConfiguration, option: cint): bool =
  fcQSslConfiguration_testSslOption(self.h, cint(option))

proc sessionTicket*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[byte] =
  var v_bytearray = fcQSslConfiguration_sessionTicket(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setSessionTicket*(self: gen_qsslconfiguration_types.QSslConfiguration, sessionTicket: seq[byte]): void =
  fcQSslConfiguration_setSessionTicket(self.h, struct_miqt_string(data: cast[cstring](if len(sessionTicket) == 0: nil else: unsafeAddr sessionTicket[0]), len: csize_t(len(sessionTicket))))

proc sessionTicketLifeTimeHint*(self: gen_qsslconfiguration_types.QSslConfiguration, ): cint =
  fcQSslConfiguration_sessionTicketLifeTimeHint(self.h)

proc ephemeralServerKey*(self: gen_qsslconfiguration_types.QSslConfiguration, ): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslConfiguration_ephemeralServerKey(self.h))

proc ellipticCurves*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[gen_qsslellipticcurve_types.QSslEllipticCurve] =
  var v_ma = fcQSslConfiguration_ellipticCurves(self.h)
  var vx_ret = newSeq[gen_qsslellipticcurve_types.QSslEllipticCurve](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslellipticcurve_types.QSslEllipticCurve(h: v_outCast[i])
  vx_ret

proc setEllipticCurves*(self: gen_qsslconfiguration_types.QSslConfiguration, curves: seq[gen_qsslellipticcurve_types.QSslEllipticCurve]): void =
  var curves_CArray = newSeq[pointer](len(curves))
  for i in 0..<len(curves):
    curves_CArray[i] = curves[i].h

  fcQSslConfiguration_setEllipticCurves(self.h, struct_miqt_array(len: csize_t(len(curves)), data: if len(curves) == 0: nil else: addr(curves_CArray[0])))

proc supportedEllipticCurves*(_: type gen_qsslconfiguration_types.QSslConfiguration, ): seq[gen_qsslellipticcurve_types.QSslEllipticCurve] =
  var v_ma = fcQSslConfiguration_supportedEllipticCurves()
  var vx_ret = newSeq[gen_qsslellipticcurve_types.QSslEllipticCurve](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslellipticcurve_types.QSslEllipticCurve(h: v_outCast[i])
  vx_ret

proc preSharedKeyIdentityHint*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[byte] =
  var v_bytearray = fcQSslConfiguration_preSharedKeyIdentityHint(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setPreSharedKeyIdentityHint*(self: gen_qsslconfiguration_types.QSslConfiguration, hint: seq[byte]): void =
  fcQSslConfiguration_setPreSharedKeyIdentityHint(self.h, struct_miqt_string(data: cast[cstring](if len(hint) == 0: nil else: unsafeAddr hint[0]), len: csize_t(len(hint))))

proc diffieHellmanParameters*(self: gen_qsslconfiguration_types.QSslConfiguration, ): gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters =
  gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters(h: fcQSslConfiguration_diffieHellmanParameters(self.h))

proc setDiffieHellmanParameters*(self: gen_qsslconfiguration_types.QSslConfiguration, dhparams: gen_qssldiffiehellmanparameters_types.QSslDiffieHellmanParameters): void =
  fcQSslConfiguration_setDiffieHellmanParameters(self.h, dhparams.h)

proc setBackendConfigurationOption*(self: gen_qsslconfiguration_types.QSslConfiguration, name: seq[byte], value: gen_qvariant_types.QVariant): void =
  fcQSslConfiguration_setBackendConfigurationOption(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))), value.h)

proc setBackendConfiguration*(self: gen_qsslconfiguration_types.QSslConfiguration, ): void =
  fcQSslConfiguration_setBackendConfiguration(self.h)

proc defaultConfiguration*(_: type gen_qsslconfiguration_types.QSslConfiguration, ): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQSslConfiguration_defaultConfiguration())

proc setDefaultConfiguration*(_: type gen_qsslconfiguration_types.QSslConfiguration, configuration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQSslConfiguration_setDefaultConfiguration(configuration.h)

proc dtlsCookieVerificationEnabled*(self: gen_qsslconfiguration_types.QSslConfiguration, ): bool =
  fcQSslConfiguration_dtlsCookieVerificationEnabled(self.h)

proc setDtlsCookieVerificationEnabled*(self: gen_qsslconfiguration_types.QSslConfiguration, enable: bool): void =
  fcQSslConfiguration_setDtlsCookieVerificationEnabled(self.h, enable)

proc defaultDtlsConfiguration*(_: type gen_qsslconfiguration_types.QSslConfiguration, ): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQSslConfiguration_defaultDtlsConfiguration())

proc setDefaultDtlsConfiguration*(_: type gen_qsslconfiguration_types.QSslConfiguration, configuration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQSslConfiguration_setDefaultDtlsConfiguration(configuration.h)

proc handshakeMustInterruptOnError*(self: gen_qsslconfiguration_types.QSslConfiguration, ): bool =
  fcQSslConfiguration_handshakeMustInterruptOnError(self.h)

proc setHandshakeMustInterruptOnError*(self: gen_qsslconfiguration_types.QSslConfiguration, interrupt: bool): void =
  fcQSslConfiguration_setHandshakeMustInterruptOnError(self.h, interrupt)

proc missingCertificateIsFatal*(self: gen_qsslconfiguration_types.QSslConfiguration, ): bool =
  fcQSslConfiguration_missingCertificateIsFatal(self.h)

proc setMissingCertificateIsFatal*(self: gen_qsslconfiguration_types.QSslConfiguration, cannotRecover: bool): void =
  fcQSslConfiguration_setMissingCertificateIsFatal(self.h, cannotRecover)

proc setOcspStaplingEnabled*(self: gen_qsslconfiguration_types.QSslConfiguration, enable: bool): void =
  fcQSslConfiguration_setOcspStaplingEnabled(self.h, enable)

proc ocspStaplingEnabled*(self: gen_qsslconfiguration_types.QSslConfiguration, ): bool =
  fcQSslConfiguration_ocspStaplingEnabled(self.h)

proc setAllowedNextProtocols*(self: gen_qsslconfiguration_types.QSslConfiguration, protocols: seq[seq[byte]]): void =
  var protocols_CArray = newSeq[struct_miqt_string](len(protocols))
  for i in 0..<len(protocols):
    protocols_CArray[i] = struct_miqt_string(data: cast[cstring](if len(protocols[i]) == 0: nil else: unsafeAddr protocols[i][0]), len: csize_t(len(protocols[i])))

  fcQSslConfiguration_setAllowedNextProtocols(self.h, struct_miqt_array(len: csize_t(len(protocols)), data: if len(protocols) == 0: nil else: addr(protocols_CArray[0])))

proc allowedNextProtocols*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[seq[byte]] =
  var v_ma = fcQSslConfiguration_allowedNextProtocols(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc nextNegotiatedProtocol*(self: gen_qsslconfiguration_types.QSslConfiguration, ): seq[byte] =
  var v_bytearray = fcQSslConfiguration_nextNegotiatedProtocol(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc nextProtocolNegotiationStatus*(self: gen_qsslconfiguration_types.QSslConfiguration, ): cint =
  cint(fcQSslConfiguration_nextProtocolNegotiationStatus(self.h))

proc addCaCertificates*(self: gen_qsslconfiguration_types.QSslConfiguration, path: string, format: cint): bool =
  fcQSslConfiguration_addCaCertificates2(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), cint(format))

proc addCaCertificates*(self: gen_qsslconfiguration_types.QSslConfiguration, path: string, format: cint, syntax: cint): bool =
  fcQSslConfiguration_addCaCertificates3(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), cint(format), cint(syntax))

proc create*(T: type gen_qsslconfiguration_types.QSslConfiguration): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQSslConfiguration_new())

proc create*(T: type gen_qsslconfiguration_types.QSslConfiguration,
    other: gen_qsslconfiguration_types.QSslConfiguration): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQSslConfiguration_new2(other.h))

proc delete*(self: gen_qsslconfiguration_types.QSslConfiguration) =
  fcQSslConfiguration_delete(self.h)
