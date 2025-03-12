import ./Qt6Network_libs

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


type QSslErrorSslErrorEnum* = distinct cint
template NoError*(_: type QSslErrorSslErrorEnum): untyped = 0
template UnableToGetIssuerCertificate*(_: type QSslErrorSslErrorEnum): untyped = 1
template UnableToDecryptCertificateSignature*(_: type QSslErrorSslErrorEnum): untyped = 2
template UnableToDecodeIssuerPublicKey*(_: type QSslErrorSslErrorEnum): untyped = 3
template CertificateSignatureFailed*(_: type QSslErrorSslErrorEnum): untyped = 4
template CertificateNotYetValid*(_: type QSslErrorSslErrorEnum): untyped = 5
template CertificateExpired*(_: type QSslErrorSslErrorEnum): untyped = 6
template InvalidNotBeforeField*(_: type QSslErrorSslErrorEnum): untyped = 7
template InvalidNotAfterField*(_: type QSslErrorSslErrorEnum): untyped = 8
template SelfSignedCertificate*(_: type QSslErrorSslErrorEnum): untyped = 9
template SelfSignedCertificateInChain*(_: type QSslErrorSslErrorEnum): untyped = 10
template UnableToGetLocalIssuerCertificate*(_: type QSslErrorSslErrorEnum): untyped = 11
template UnableToVerifyFirstCertificate*(_: type QSslErrorSslErrorEnum): untyped = 12
template CertificateRevoked*(_: type QSslErrorSslErrorEnum): untyped = 13
template InvalidCaCertificate*(_: type QSslErrorSslErrorEnum): untyped = 14
template PathLengthExceeded*(_: type QSslErrorSslErrorEnum): untyped = 15
template InvalidPurpose*(_: type QSslErrorSslErrorEnum): untyped = 16
template CertificateUntrusted*(_: type QSslErrorSslErrorEnum): untyped = 17
template CertificateRejected*(_: type QSslErrorSslErrorEnum): untyped = 18
template SubjectIssuerMismatch*(_: type QSslErrorSslErrorEnum): untyped = 19
template AuthorityIssuerSerialNumberMismatch*(_: type QSslErrorSslErrorEnum): untyped = 20
template NoPeerCertificate*(_: type QSslErrorSslErrorEnum): untyped = 21
template HostNameMismatch*(_: type QSslErrorSslErrorEnum): untyped = 22
template NoSslSupport*(_: type QSslErrorSslErrorEnum): untyped = 23
template CertificateBlacklisted*(_: type QSslErrorSslErrorEnum): untyped = 24
template CertificateStatusUnknown*(_: type QSslErrorSslErrorEnum): untyped = 25
template OcspNoResponseFound*(_: type QSslErrorSslErrorEnum): untyped = 26
template OcspMalformedRequest*(_: type QSslErrorSslErrorEnum): untyped = 27
template OcspMalformedResponse*(_: type QSslErrorSslErrorEnum): untyped = 28
template OcspInternalError*(_: type QSslErrorSslErrorEnum): untyped = 29
template OcspTryLater*(_: type QSslErrorSslErrorEnum): untyped = 30
template OcspSigRequred*(_: type QSslErrorSslErrorEnum): untyped = 31
template OcspUnauthorized*(_: type QSslErrorSslErrorEnum): untyped = 32
template OcspResponseCannotBeTrusted*(_: type QSslErrorSslErrorEnum): untyped = 33
template OcspResponseCertIdUnknown*(_: type QSslErrorSslErrorEnum): untyped = 34
template OcspResponseExpired*(_: type QSslErrorSslErrorEnum): untyped = 35
template OcspStatusUnknown*(_: type QSslErrorSslErrorEnum): untyped = 36
template UnspecifiedError*(_: type QSslErrorSslErrorEnum): untyped = -1


import ./gen_qsslerror_types
export gen_qsslerror_types

import
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qsslcertificate_types
export
  gen_qobjectdefs_types,
  gen_qsslcertificate_types

type cQSslError*{.exportc: "QSslError", incompleteStruct.} = object

proc fcQSslError_swap(self: pointer, other: pointer): void {.importc: "QSslError_swap".}
proc fcQSslError_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslError_operatorAssign".}
proc fcQSslError_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSslError_operatorEqual".}
proc fcQSslError_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSslError_operatorNotEqual".}
proc fcQSslError_error(self: pointer): cint {.importc: "QSslError_error".}
proc fcQSslError_errorString(self: pointer): struct_miqt_string {.importc: "QSslError_errorString".}
proc fcQSslError_certificate(self: pointer): pointer {.importc: "QSslError_certificate".}
proc fcQSslError_new(): ptr cQSslError {.importc: "QSslError_new".}
proc fcQSslError_new2(error: cint): ptr cQSslError {.importc: "QSslError_new2".}
proc fcQSslError_new3(error: cint, certificate: pointer): ptr cQSslError {.importc: "QSslError_new3".}
proc fcQSslError_new4(other: pointer): ptr cQSslError {.importc: "QSslError_new4".}
proc fcQSslError_staticMetaObject(): pointer {.importc: "QSslError_staticMetaObject".}

proc swap*(self: gen_qsslerror_types.QSslError, other: gen_qsslerror_types.QSslError): void =
  fcQSslError_swap(self.h, other.h)

proc operatorAssign*(self: gen_qsslerror_types.QSslError, other: gen_qsslerror_types.QSslError): void =
  fcQSslError_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qsslerror_types.QSslError, other: gen_qsslerror_types.QSslError): bool =
  fcQSslError_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qsslerror_types.QSslError, other: gen_qsslerror_types.QSslError): bool =
  fcQSslError_operatorNotEqual(self.h, other.h)

proc error*(self: gen_qsslerror_types.QSslError): cint =
  cint(fcQSslError_error(self.h))

proc errorString*(self: gen_qsslerror_types.QSslError): string =
  let v_ms = fcQSslError_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc certificate*(self: gen_qsslerror_types.QSslError): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslError_certificate(self.h), owned: true)

proc create*(T: type gen_qsslerror_types.QSslError): gen_qsslerror_types.QSslError =
  gen_qsslerror_types.QSslError(h: fcQSslError_new(), owned: true)

proc create*(T: type gen_qsslerror_types.QSslError,
    error: cint): gen_qsslerror_types.QSslError =
  gen_qsslerror_types.QSslError(h: fcQSslError_new2(cint(error)), owned: true)

proc create*(T: type gen_qsslerror_types.QSslError,
    error: cint, certificate: gen_qsslcertificate_types.QSslCertificate): gen_qsslerror_types.QSslError =
  gen_qsslerror_types.QSslError(h: fcQSslError_new3(cint(error), certificate.h), owned: true)

proc create*(T: type gen_qsslerror_types.QSslError,
    other: gen_qsslerror_types.QSslError): gen_qsslerror_types.QSslError =
  gen_qsslerror_types.QSslError(h: fcQSslError_new4(other.h), owned: true)

proc staticMetaObject*(_: type gen_qsslerror_types.QSslError): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSslError_staticMetaObject())
