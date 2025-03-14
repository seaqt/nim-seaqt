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


type QSslCertificateSubjectInfoEnum* = distinct cint
template Organization*(_: type QSslCertificateSubjectInfoEnum): untyped = 0
template CommonName*(_: type QSslCertificateSubjectInfoEnum): untyped = 1
template LocalityName*(_: type QSslCertificateSubjectInfoEnum): untyped = 2
template OrganizationalUnitName*(_: type QSslCertificateSubjectInfoEnum): untyped = 3
template CountryName*(_: type QSslCertificateSubjectInfoEnum): untyped = 4
template StateOrProvinceName*(_: type QSslCertificateSubjectInfoEnum): untyped = 5
template DistinguishedNameQualifier*(_: type QSslCertificateSubjectInfoEnum): untyped = 6
template SerialNumber*(_: type QSslCertificateSubjectInfoEnum): untyped = 7
template EmailAddress*(_: type QSslCertificateSubjectInfoEnum): untyped = 8


type QSslCertificatePatternSyntaxEnum* = distinct cint
template RegularExpression*(_: type QSslCertificatePatternSyntaxEnum): untyped = 0
template Wildcard*(_: type QSslCertificatePatternSyntaxEnum): untyped = 1
template FixedString*(_: type QSslCertificatePatternSyntaxEnum): untyped = 2


import ./gen_qsslcertificate_types
export gen_qsslcertificate_types

import
  ../QtCore/gen_qdatetime_types,
  ../QtCore/gen_qiodevice_types,
  ./gen_qsslcertificateextension_types,
  ./gen_qsslerror_types,
  ./gen_qsslkey_types
export
  gen_qdatetime_types,
  gen_qiodevice_types,
  gen_qsslcertificateextension_types,
  gen_qsslerror_types,
  gen_qsslkey_types

type cQSslCertificate*{.exportc: "QSslCertificate", incompleteStruct.} = object

proc fcQSslCertificate_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslCertificate_operatorAssign".}
proc fcQSslCertificate_swap(self: pointer, other: pointer): void {.importc: "QSslCertificate_swap".}
proc fcQSslCertificate_operatorEqual(self: pointer, other: pointer): bool {.importc: "QSslCertificate_operatorEqual".}
proc fcQSslCertificate_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QSslCertificate_operatorNotEqual".}
proc fcQSslCertificate_isNull(self: pointer): bool {.importc: "QSslCertificate_isNull".}
proc fcQSslCertificate_isBlacklisted(self: pointer): bool {.importc: "QSslCertificate_isBlacklisted".}
proc fcQSslCertificate_isSelfSigned(self: pointer): bool {.importc: "QSslCertificate_isSelfSigned".}
proc fcQSslCertificate_clear(self: pointer): void {.importc: "QSslCertificate_clear".}
proc fcQSslCertificate_version(self: pointer): struct_miqt_string {.importc: "QSslCertificate_version".}
proc fcQSslCertificate_serialNumber(self: pointer): struct_miqt_string {.importc: "QSslCertificate_serialNumber".}
proc fcQSslCertificate_digest(self: pointer): struct_miqt_string {.importc: "QSslCertificate_digest".}
proc fcQSslCertificate_issuerInfo(self: pointer, info: cint): struct_miqt_array {.importc: "QSslCertificate_issuerInfo".}
proc fcQSslCertificate_issuerInfoWithAttribute(self: pointer, attribute: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_issuerInfoWithAttribute".}
proc fcQSslCertificate_subjectInfo(self: pointer, info: cint): struct_miqt_array {.importc: "QSslCertificate_subjectInfo".}
proc fcQSslCertificate_subjectInfoWithAttribute(self: pointer, attribute: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_subjectInfoWithAttribute".}
proc fcQSslCertificate_issuerDisplayName(self: pointer): struct_miqt_string {.importc: "QSslCertificate_issuerDisplayName".}
proc fcQSslCertificate_subjectDisplayName(self: pointer): struct_miqt_string {.importc: "QSslCertificate_subjectDisplayName".}
proc fcQSslCertificate_subjectInfoAttributes(self: pointer): struct_miqt_array {.importc: "QSslCertificate_subjectInfoAttributes".}
proc fcQSslCertificate_issuerInfoAttributes(self: pointer): struct_miqt_array {.importc: "QSslCertificate_issuerInfoAttributes".}
proc fcQSslCertificate_effectiveDate(self: pointer): pointer {.importc: "QSslCertificate_effectiveDate".}
proc fcQSslCertificate_expiryDate(self: pointer): pointer {.importc: "QSslCertificate_expiryDate".}
proc fcQSslCertificate_publicKey(self: pointer): pointer {.importc: "QSslCertificate_publicKey".}
proc fcQSslCertificate_extensions(self: pointer): struct_miqt_array {.importc: "QSslCertificate_extensions".}
proc fcQSslCertificate_toPem(self: pointer): struct_miqt_string {.importc: "QSslCertificate_toPem".}
proc fcQSslCertificate_toDer(self: pointer): struct_miqt_string {.importc: "QSslCertificate_toDer".}
proc fcQSslCertificate_toText(self: pointer): struct_miqt_string {.importc: "QSslCertificate_toText".}
proc fcQSslCertificate_fromPath(path: struct_miqt_string, format: cint, syntax: cint): struct_miqt_array {.importc: "QSslCertificate_fromPath".}
proc fcQSslCertificate_fromPathWithPath(path: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_fromPathWithPath".}
proc fcQSslCertificate_fromDevice(device: pointer): struct_miqt_array {.importc: "QSslCertificate_fromDevice".}
proc fcQSslCertificate_fromData(data: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_fromData".}
proc fcQSslCertificate_verify(certificateChain: struct_miqt_array): struct_miqt_array {.importc: "QSslCertificate_verify".}
proc fcQSslCertificate_importPkcs12(device: pointer, key: pointer, cert: pointer): bool {.importc: "QSslCertificate_importPkcs12".}
proc fcQSslCertificate_handle(self: pointer): pointer {.importc: "QSslCertificate_handle".}
proc fcQSslCertificate_digest1(self: pointer, algorithm: cint): struct_miqt_string {.importc: "QSslCertificate_digest1".}
proc fcQSslCertificate_fromPath2(path: struct_miqt_string, format: cint): struct_miqt_array {.importc: "QSslCertificate_fromPath2".}
proc fcQSslCertificate_fromPath3(path: struct_miqt_string, format: cint, syntax: cint): struct_miqt_array {.importc: "QSslCertificate_fromPath3".}
proc fcQSslCertificate_fromDevice2(device: pointer, format: cint): struct_miqt_array {.importc: "QSslCertificate_fromDevice2".}
proc fcQSslCertificate_fromData2(data: struct_miqt_string, format: cint): struct_miqt_array {.importc: "QSslCertificate_fromData2".}
proc fcQSslCertificate_verify2(certificateChain: struct_miqt_array, hostName: struct_miqt_string): struct_miqt_array {.importc: "QSslCertificate_verify2".}
proc fcQSslCertificate_importPkcs124(device: pointer, key: pointer, cert: pointer, caCertificates: struct_miqt_array): bool {.importc: "QSslCertificate_importPkcs124".}
proc fcQSslCertificate_importPkcs125(device: pointer, key: pointer, cert: pointer, caCertificates: struct_miqt_array, passPhrase: struct_miqt_string): bool {.importc: "QSslCertificate_importPkcs125".}
proc fcQSslCertificate_new(device: pointer): ptr cQSslCertificate {.importc: "QSslCertificate_new".}
proc fcQSslCertificate_new2(): ptr cQSslCertificate {.importc: "QSslCertificate_new2".}
proc fcQSslCertificate_new3(other: pointer): ptr cQSslCertificate {.importc: "QSslCertificate_new3".}
proc fcQSslCertificate_new4(device: pointer, format: cint): ptr cQSslCertificate {.importc: "QSslCertificate_new4".}
proc fcQSslCertificate_new5(data: struct_miqt_string): ptr cQSslCertificate {.importc: "QSslCertificate_new5".}
proc fcQSslCertificate_new6(data: struct_miqt_string, format: cint): ptr cQSslCertificate {.importc: "QSslCertificate_new6".}

proc operatorAssign*(self: gen_qsslcertificate_types.QSslCertificate, other: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslCertificate_operatorAssign(self.h, other.h)

proc swap*(self: gen_qsslcertificate_types.QSslCertificate, other: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslCertificate_swap(self.h, other.h)

proc operatorEqual*(self: gen_qsslcertificate_types.QSslCertificate, other: gen_qsslcertificate_types.QSslCertificate): bool =
  fcQSslCertificate_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qsslcertificate_types.QSslCertificate, other: gen_qsslcertificate_types.QSslCertificate): bool =
  fcQSslCertificate_operatorNotEqual(self.h, other.h)

proc isNull*(self: gen_qsslcertificate_types.QSslCertificate): bool =
  fcQSslCertificate_isNull(self.h)

proc isBlacklisted*(self: gen_qsslcertificate_types.QSslCertificate): bool =
  fcQSslCertificate_isBlacklisted(self.h)

proc isSelfSigned*(self: gen_qsslcertificate_types.QSslCertificate): bool =
  fcQSslCertificate_isSelfSigned(self.h)

proc clear*(self: gen_qsslcertificate_types.QSslCertificate): void =
  fcQSslCertificate_clear(self.h)

proc version*(self: gen_qsslcertificate_types.QSslCertificate): seq[byte] =
  var v_bytearray = fcQSslCertificate_version(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc serialNumber*(self: gen_qsslcertificate_types.QSslCertificate): seq[byte] =
  var v_bytearray = fcQSslCertificate_serialNumber(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc digest*(self: gen_qsslcertificate_types.QSslCertificate): seq[byte] =
  var v_bytearray = fcQSslCertificate_digest(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc issuerInfo*(self: gen_qsslcertificate_types.QSslCertificate, info: cint): seq[string] =
  var v_ma = fcQSslCertificate_issuerInfo(self.h, cint(info))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc issuerInfo*(self: gen_qsslcertificate_types.QSslCertificate, attribute: openArray[byte]): seq[string] =
  var v_ma = fcQSslCertificate_issuerInfoWithAttribute(self.h, struct_miqt_string(data: cast[cstring](if len(attribute) == 0: nil else: unsafeAddr attribute[0]), len: csize_t(len(attribute))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc subjectInfo*(self: gen_qsslcertificate_types.QSslCertificate, info: cint): seq[string] =
  var v_ma = fcQSslCertificate_subjectInfo(self.h, cint(info))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc subjectInfo*(self: gen_qsslcertificate_types.QSslCertificate, attribute: openArray[byte]): seq[string] =
  var v_ma = fcQSslCertificate_subjectInfoWithAttribute(self.h, struct_miqt_string(data: cast[cstring](if len(attribute) == 0: nil else: unsafeAddr attribute[0]), len: csize_t(len(attribute))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc issuerDisplayName*(self: gen_qsslcertificate_types.QSslCertificate): string =
  let v_ms = fcQSslCertificate_issuerDisplayName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc subjectDisplayName*(self: gen_qsslcertificate_types.QSslCertificate): string =
  let v_ms = fcQSslCertificate_subjectDisplayName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc subjectInfoAttributes*(self: gen_qsslcertificate_types.QSslCertificate): seq[seq[byte]] =
  var v_ma = fcQSslCertificate_subjectInfoAttributes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc issuerInfoAttributes*(self: gen_qsslcertificate_types.QSslCertificate): seq[seq[byte]] =
  var v_ma = fcQSslCertificate_issuerInfoAttributes(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc effectiveDate*(self: gen_qsslcertificate_types.QSslCertificate): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQSslCertificate_effectiveDate(self.h), owned: true)

proc expiryDate*(self: gen_qsslcertificate_types.QSslCertificate): gen_qdatetime_types.QDateTime =
  gen_qdatetime_types.QDateTime(h: fcQSslCertificate_expiryDate(self.h), owned: true)

proc publicKey*(self: gen_qsslcertificate_types.QSslCertificate): gen_qsslkey_types.QSslKey =
  gen_qsslkey_types.QSslKey(h: fcQSslCertificate_publicKey(self.h), owned: true)

proc extensions*(self: gen_qsslcertificate_types.QSslCertificate): seq[gen_qsslcertificateextension_types.QSslCertificateExtension] =
  var v_ma = fcQSslCertificate_extensions(self.h)
  var vx_ret = newSeq[gen_qsslcertificateextension_types.QSslCertificateExtension](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificateextension_types.QSslCertificateExtension(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc toPem*(self: gen_qsslcertificate_types.QSslCertificate): seq[byte] =
  var v_bytearray = fcQSslCertificate_toPem(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toDer*(self: gen_qsslcertificate_types.QSslCertificate): seq[byte] =
  var v_bytearray = fcQSslCertificate_toDer(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toText*(self: gen_qsslcertificate_types.QSslCertificate): string =
  let v_ms = fcQSslCertificate_toText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromPath*(_: type gen_qsslcertificate_types.QSslCertificate, path: openArray[char], format: cint, syntax: cint): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslCertificate_fromPath(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), cint(format), cint(syntax))
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc fromPath*(_: type gen_qsslcertificate_types.QSslCertificate, path: openArray[char]): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslCertificate_fromPathWithPath(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc fromDevice*(_: type gen_qsslcertificate_types.QSslCertificate, device: gen_qiodevice_types.QIODevice): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslCertificate_fromDevice(device.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc fromData*(_: type gen_qsslcertificate_types.QSslCertificate, data: openArray[byte]): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslCertificate_fromData(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc verify*(_: type gen_qsslcertificate_types.QSslCertificate, certificateChain: openArray[gen_qsslcertificate_types.QSslCertificate]): seq[gen_qsslerror_types.QSslError] =
  var certificateChain_CArray = newSeq[pointer](len(certificateChain))
  for i in 0..<len(certificateChain):
    certificateChain_CArray[i] = certificateChain[i].h

  var v_ma = fcQSslCertificate_verify(struct_miqt_array(len: csize_t(len(certificateChain)), data: if len(certificateChain) == 0: nil else: addr(certificateChain_CArray[0])))
  var vx_ret = newSeq[gen_qsslerror_types.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror_types.QSslError(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc importPkcs12*(_: type gen_qsslcertificate_types.QSslCertificate, device: gen_qiodevice_types.QIODevice, key: gen_qsslkey_types.QSslKey, cert: gen_qsslcertificate_types.QSslCertificate): bool =
  fcQSslCertificate_importPkcs12(device.h, key.h, cert.h)

proc handle*(self: gen_qsslcertificate_types.QSslCertificate): pointer =
  fcQSslCertificate_handle(self.h)

proc digest*(self: gen_qsslcertificate_types.QSslCertificate, algorithm: cint): seq[byte] =
  var v_bytearray = fcQSslCertificate_digest1(self.h, cint(algorithm))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromPath*(_: type gen_qsslcertificate_types.QSslCertificate, path: openArray[char], format: cint): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslCertificate_fromPath2(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), cint(format))
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc fromPath2*(_: type gen_qsslcertificate_types.QSslCertificate, path: openArray[char], format: cint, syntax: cint): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslCertificate_fromPath3(struct_miqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), cint(format), cint(syntax))
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc fromDevice*(_: type gen_qsslcertificate_types.QSslCertificate, device: gen_qiodevice_types.QIODevice, format: cint): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslCertificate_fromDevice2(device.h, cint(format))
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc fromData*(_: type gen_qsslcertificate_types.QSslCertificate, data: openArray[byte], format: cint): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQSslCertificate_fromData2(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), cint(format))
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc verify*(_: type gen_qsslcertificate_types.QSslCertificate, certificateChain: openArray[gen_qsslcertificate_types.QSslCertificate], hostName: openArray[char]): seq[gen_qsslerror_types.QSslError] =
  var certificateChain_CArray = newSeq[pointer](len(certificateChain))
  for i in 0..<len(certificateChain):
    certificateChain_CArray[i] = certificateChain[i].h

  var v_ma = fcQSslCertificate_verify2(struct_miqt_array(len: csize_t(len(certificateChain)), data: if len(certificateChain) == 0: nil else: addr(certificateChain_CArray[0])), struct_miqt_string(data: if len(hostName) > 0: addr hostName[0] else: nil, len: csize_t(len(hostName))))
  var vx_ret = newSeq[gen_qsslerror_types.QSslError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslerror_types.QSslError(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc importPkcs12*(_: type gen_qsslcertificate_types.QSslCertificate, device: gen_qiodevice_types.QIODevice, key: gen_qsslkey_types.QSslKey, cert: gen_qsslcertificate_types.QSslCertificate, caCertificates: openArray[gen_qsslcertificate_types.QSslCertificate]): bool =
  var caCertificates_CArray = newSeq[pointer](len(caCertificates))
  for i in 0..<len(caCertificates):
    caCertificates_CArray[i] = caCertificates[i].h

  fcQSslCertificate_importPkcs124(device.h, key.h, cert.h, struct_miqt_array(len: csize_t(len(caCertificates)), data: if len(caCertificates) == 0: nil else: addr(caCertificates_CArray[0])))

proc importPkcs12*(_: type gen_qsslcertificate_types.QSslCertificate, device: gen_qiodevice_types.QIODevice, key: gen_qsslkey_types.QSslKey, cert: gen_qsslcertificate_types.QSslCertificate, caCertificates: openArray[gen_qsslcertificate_types.QSslCertificate], passPhrase: openArray[byte]): bool =
  var caCertificates_CArray = newSeq[pointer](len(caCertificates))
  for i in 0..<len(caCertificates):
    caCertificates_CArray[i] = caCertificates[i].h

  fcQSslCertificate_importPkcs125(device.h, key.h, cert.h, struct_miqt_array(len: csize_t(len(caCertificates)), data: if len(caCertificates) == 0: nil else: addr(caCertificates_CArray[0])), struct_miqt_string(data: cast[cstring](if len(passPhrase) == 0: nil else: unsafeAddr passPhrase[0]), len: csize_t(len(passPhrase))))

proc create*(T: type gen_qsslcertificate_types.QSslCertificate,
    device: gen_qiodevice_types.QIODevice): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslCertificate_new(device.h), owned: true)

proc create*(T: type gen_qsslcertificate_types.QSslCertificate): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslCertificate_new2(), owned: true)

proc create*(T: type gen_qsslcertificate_types.QSslCertificate,
    other: gen_qsslcertificate_types.QSslCertificate): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslCertificate_new3(other.h), owned: true)

proc create*(T: type gen_qsslcertificate_types.QSslCertificate,
    device: gen_qiodevice_types.QIODevice, format: cint): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslCertificate_new4(device.h, cint(format)), owned: true)

proc create*(T: type gen_qsslcertificate_types.QSslCertificate,
    data: openArray[byte]): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslCertificate_new5(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))), owned: true)

proc create*(T: type gen_qsslcertificate_types.QSslCertificate,
    data: openArray[byte], format: cint): gen_qsslcertificate_types.QSslCertificate =
  gen_qsslcertificate_types.QSslCertificate(h: fcQSslCertificate_new6(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))), cint(format)), owned: true)

