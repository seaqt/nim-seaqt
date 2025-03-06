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


type QOcspCertificateStatusEnum* = distinct cint
template Good*(_: type QOcspCertificateStatusEnum): untyped = 0
template Revoked*(_: type QOcspCertificateStatusEnum): untyped = 1
template Unknown*(_: type QOcspCertificateStatusEnum): untyped = 2


type QOcspRevocationReasonEnum* = distinct cint
template None*(_: type QOcspRevocationReasonEnum): untyped = -1
template Unspecified*(_: type QOcspRevocationReasonEnum): untyped = 0
template KeyCompromise*(_: type QOcspRevocationReasonEnum): untyped = 1
template CACompromise*(_: type QOcspRevocationReasonEnum): untyped = 2
template AffiliationChanged*(_: type QOcspRevocationReasonEnum): untyped = 3
template Superseded*(_: type QOcspRevocationReasonEnum): untyped = 4
template CessationOfOperation*(_: type QOcspRevocationReasonEnum): untyped = 5
template CertificateHold*(_: type QOcspRevocationReasonEnum): untyped = 6
template RemoveFromCRL*(_: type QOcspRevocationReasonEnum): untyped = 7


import ./gen_qocspresponse_types
export gen_qocspresponse_types

import
  ./gen_qsslcertificate_types
export
  gen_qsslcertificate_types

type cQOcspResponse*{.exportc: "QOcspResponse", incompleteStruct.} = object

proc fcQOcspResponse_operatorAssign(self: pointer, other: pointer): void {.importc: "QOcspResponse_operatorAssign".}
proc fcQOcspResponse_certificateStatus(self: pointer, ): cint {.importc: "QOcspResponse_certificateStatus".}
proc fcQOcspResponse_revocationReason(self: pointer, ): cint {.importc: "QOcspResponse_revocationReason".}
proc fcQOcspResponse_responder(self: pointer, ): pointer {.importc: "QOcspResponse_responder".}
proc fcQOcspResponse_subject(self: pointer, ): pointer {.importc: "QOcspResponse_subject".}
proc fcQOcspResponse_swap(self: pointer, other: pointer): void {.importc: "QOcspResponse_swap".}
proc fcQOcspResponse_new(): ptr cQOcspResponse {.importc: "QOcspResponse_new".}
proc fcQOcspResponse_new2(other: pointer): ptr cQOcspResponse {.importc: "QOcspResponse_new2".}

proc operatorAssign*(self: gen_qocspresponse_types.QOcspResponse, other: gen_qocspresponse_types.QOcspResponse): void =
  fcQOcspResponse_operatorAssign(self.h, other.h)

proc certificateStatus*(self: gen_qocspresponse_types.QOcspResponse, ): cint =
  cint(fcQOcspResponse_certificateStatus(self.h))

proc revocationReason*(self: gen_qocspresponse_types.QOcspResponse, ): cint =
  cint(fcQOcspResponse_revocationReason(self.h))

proc responder*(self: gen_qocspresponse_types.QOcspResponse, ): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQOcspResponse_responder(self.h), owned: true)

proc subject*(self: gen_qocspresponse_types.QOcspResponse, ): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQOcspResponse_subject(self.h), owned: true)

proc swap*(self: gen_qocspresponse_types.QOcspResponse, other: gen_qocspresponse_types.QOcspResponse): void =
  fcQOcspResponse_swap(self.h, other.h)

proc create*(T: type gen_qocspresponse_types.QOcspResponse): gen_qocspresponse_types.QOcspResponse =
  gen_qocspresponse_types.QOcspResponse(h: fcQOcspResponse_new(), owned: true)

proc create*(T: type gen_qocspresponse_types.QOcspResponse,
    other: gen_qocspresponse_types.QOcspResponse): gen_qocspresponse_types.QOcspResponse =
  gen_qocspresponse_types.QOcspResponse(h: fcQOcspResponse_new2(other.h), owned: true)

