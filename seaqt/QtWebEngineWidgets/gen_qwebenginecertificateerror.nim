import ./qtwebenginewidgets_pkg

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


type QWebEngineCertificateErrorErrorEnum* = distinct cint
template SslPinnedKeyNotInCertificateChain*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -150
template CertificateCommonNameInvalid*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -200
template CertificateDateInvalid*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -201
template CertificateAuthorityInvalid*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -202
template CertificateContainsErrors*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -203
template CertificateNoRevocationMechanism*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -204
template CertificateUnableToCheckRevocation*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -205
template CertificateRevoked*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -206
template CertificateInvalid*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -207
template CertificateWeakSignatureAlgorithm*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -208
template CertificateNonUniqueName*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -210
template CertificateWeakKey*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -211
template CertificateNameConstraintViolation*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -212
template CertificateValidityTooLong*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -213
template CertificateTransparencyRequired*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -214
template CertificateKnownInterceptionBlocked*(_: type QWebEngineCertificateErrorErrorEnum): untyped = -217


import ./gen_qwebenginecertificateerror_types
export gen_qwebenginecertificateerror_types

import
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qsslcertificate_types
export
  gen_qurl_types,
  gen_qsslcertificate_types

type cQWebEngineCertificateError*{.exportc: "QWebEngineCertificateError", incompleteStruct.} = object

proc fcQWebEngineCertificateError_error(self: pointer): cint {.importc: "QWebEngineCertificateError_error".}
proc fcQWebEngineCertificateError_url(self: pointer): pointer {.importc: "QWebEngineCertificateError_url".}
proc fcQWebEngineCertificateError_isOverridable(self: pointer): bool {.importc: "QWebEngineCertificateError_isOverridable".}
proc fcQWebEngineCertificateError_errorDescription(self: pointer): struct_seaqt_string {.importc: "QWebEngineCertificateError_errorDescription".}
proc fcQWebEngineCertificateError_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineCertificateError_operatorAssign".}
proc fcQWebEngineCertificateError_deferX(self: pointer): void {.importc: "QWebEngineCertificateError_defer".}
proc fcQWebEngineCertificateError_deferred(self: pointer): bool {.importc: "QWebEngineCertificateError_deferred".}
proc fcQWebEngineCertificateError_rejectCertificate(self: pointer): void {.importc: "QWebEngineCertificateError_rejectCertificate".}
proc fcQWebEngineCertificateError_ignoreCertificateError(self: pointer): void {.importc: "QWebEngineCertificateError_ignoreCertificateError".}
proc fcQWebEngineCertificateError_answered(self: pointer): bool {.importc: "QWebEngineCertificateError_answered".}
proc fcQWebEngineCertificateError_certificateChain(self: pointer): struct_seaqt_array {.importc: "QWebEngineCertificateError_certificateChain".}
proc fcQWebEngineCertificateError_new(error: cint, url: pointer, overridable: bool, errorDescription: struct_seaqt_string): ptr cQWebEngineCertificateError {.importc: "QWebEngineCertificateError_new".}
proc fcQWebEngineCertificateError_new2(other: pointer): ptr cQWebEngineCertificateError {.importc: "QWebEngineCertificateError_new2".}

proc error*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): cint =
  cint(fcQWebEngineCertificateError_error(self.h))

proc url*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineCertificateError_url(self.h), owned: true)

proc isOverridable*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): bool =
  fcQWebEngineCertificateError_isOverridable(self.h)

proc errorDescription*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): string =
  let v_ms = fcQWebEngineCertificateError_errorDescription(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError, other: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =
  fcQWebEngineCertificateError_operatorAssign(self.h, other.h)

proc deferX*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =
  fcQWebEngineCertificateError_deferX(self.h)

proc deferred*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): bool =
  fcQWebEngineCertificateError_deferred(self.h)

proc rejectCertificate*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =
  fcQWebEngineCertificateError_rejectCertificate(self.h)

proc ignoreCertificateError*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): void =
  fcQWebEngineCertificateError_ignoreCertificateError(self.h)

proc answered*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): bool =
  fcQWebEngineCertificateError_answered(self.h)

proc certificateChain*(self: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQWebEngineCertificateError_certificateChain(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qwebenginecertificateerror_types.QWebEngineCertificateError,
    error: cint, url: gen_qurl_types.QUrl, overridable: bool, errorDescription: openArray[char]): gen_qwebenginecertificateerror_types.QWebEngineCertificateError =
  let tmp = gen_qwebenginecertificateerror_types.QWebEngineCertificateError(h: fcQWebEngineCertificateError_new(error, url.h, overridable, struct_seaqt_string(data: if len(errorDescription) > 0: addr errorDescription[0] else: nil, len: csize_t(len(errorDescription)))), owned: true)
  tmp
proc create*(T: type gen_qwebenginecertificateerror_types.QWebEngineCertificateError,
    other: gen_qwebenginecertificateerror_types.QWebEngineCertificateError): gen_qwebenginecertificateerror_types.QWebEngineCertificateError =
  let tmp = gen_qwebenginecertificateerror_types.QWebEngineCertificateError(h: fcQWebEngineCertificateError_new2(other.h), owned: true)
  tmp
