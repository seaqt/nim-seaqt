import ./Qt6WebEngineCore_libs

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


type QWebEngineCertificateErrorTypeEnum* = distinct cint
template SslPinnedKeyNotInCertificateChain*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -150
template CertificateCommonNameInvalid*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -200
template CertificateDateInvalid*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -201
template CertificateAuthorityInvalid*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -202
template CertificateContainsErrors*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -203
template CertificateNoRevocationMechanism*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -204
template CertificateUnableToCheckRevocation*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -205
template CertificateRevoked*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -206
template CertificateInvalid*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -207
template CertificateWeakSignatureAlgorithm*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -208
template CertificateNonUniqueName*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -210
template CertificateWeakKey*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -211
template CertificateNameConstraintViolation*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -212
template CertificateValidityTooLong*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -213
template CertificateTransparencyRequired*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -214
template CertificateSymantecLegacy*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -215
template CertificateKnownInterceptionBlocked*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -217
template SslObsoleteVersion*(_: type QWebEngineCertificateErrorTypeEnum): untyped = -218


import ./gen_qwebenginecertificateerror_types
export gen_qwebenginecertificateerror_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qsslcertificate_types
export
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qsslcertificate_types

type cQWebEngineCertificateError*{.exportc: "QWebEngineCertificateError", incompleteStruct.} = object

proc fcQWebEngineCertificateError_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineCertificateError_operatorAssign".}
proc fcQWebEngineCertificateError_typeX(self: pointer): cint {.importc: "QWebEngineCertificateError_type".}
proc fcQWebEngineCertificateError_url(self: pointer): pointer {.importc: "QWebEngineCertificateError_url".}
proc fcQWebEngineCertificateError_isOverridable(self: pointer): bool {.importc: "QWebEngineCertificateError_isOverridable".}
proc fcQWebEngineCertificateError_description(self: pointer): struct_miqt_string {.importc: "QWebEngineCertificateError_description".}
proc fcQWebEngineCertificateError_deferX(self: pointer): void {.importc: "QWebEngineCertificateError_defer".}
proc fcQWebEngineCertificateError_rejectCertificate(self: pointer): void {.importc: "QWebEngineCertificateError_rejectCertificate".}
proc fcQWebEngineCertificateError_acceptCertificate(self: pointer): void {.importc: "QWebEngineCertificateError_acceptCertificate".}
proc fcQWebEngineCertificateError_certificateChain(self: pointer): struct_miqt_array {.importc: "QWebEngineCertificateError_certificateChain".}
proc fcQWebEngineCertificateError_new(other: pointer): ptr cQWebEngineCertificateError {.importc: "QWebEngineCertificateError_new".}
proc fcQWebEngineCertificateError_staticMetaObject(): pointer {.importc: "QWebEngineCertificateError_staticMetaObject".}

proc operatorAssign*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, other: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =
  fcQWebEngineCertificateError_operatorAssign(self.h, other.h)

proc typeX*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): cint =
  cint(fcQWebEngineCertificateError_typeX(self.h))

proc url*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineCertificateError_url(self.h), owned: true)

proc isOverridable*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): bool =
  fcQWebEngineCertificateError_isOverridable(self.h)

proc description*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): string =
  let v_ms = fcQWebEngineCertificateError_description(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc deferX*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =
  fcQWebEngineCertificateError_deferX(self.h)

proc rejectCertificate*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =
  fcQWebEngineCertificateError_rejectCertificate(self.h)

proc acceptCertificate*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =
  fcQWebEngineCertificateError_acceptCertificate(self.h)

proc certificateChain*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQWebEngineCertificateError_certificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qwebenginecertificateerror_types.QWebEngineCertificateError,
    other: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): gen_qwebenginecertificateerror_types.QWebEngineCertificateError =
  gen_qwebenginecertificateerror_types.QWebEngineCertificateError(h: fcQWebEngineCertificateError_new(other.h), owned: true)

proc staticMetaObject*(_: type gen_qwebenginecertificateerror_types.QWebEngineCertificateError): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineCertificateError_staticMetaObject())
