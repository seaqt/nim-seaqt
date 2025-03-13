import ./Qt5Network_libs

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


import ./gen_qsslcertificateextension_types
export gen_qsslcertificateextension_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQSslCertificateExtension*{.exportc: "QSslCertificateExtension", incompleteStruct.} = object

proc fcQSslCertificateExtension_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslCertificateExtension_operatorAssign".}
proc fcQSslCertificateExtension_swap(self: pointer, other: pointer): void {.importc: "QSslCertificateExtension_swap".}
proc fcQSslCertificateExtension_oid(self: pointer): struct_miqt_string {.importc: "QSslCertificateExtension_oid".}
proc fcQSslCertificateExtension_name(self: pointer): struct_miqt_string {.importc: "QSslCertificateExtension_name".}
proc fcQSslCertificateExtension_value(self: pointer): pointer {.importc: "QSslCertificateExtension_value".}
proc fcQSslCertificateExtension_isCritical(self: pointer): bool {.importc: "QSslCertificateExtension_isCritical".}
proc fcQSslCertificateExtension_isSupported(self: pointer): bool {.importc: "QSslCertificateExtension_isSupported".}
proc fcQSslCertificateExtension_new(): ptr cQSslCertificateExtension {.importc: "QSslCertificateExtension_new".}
proc fcQSslCertificateExtension_new2(other: pointer): ptr cQSslCertificateExtension {.importc: "QSslCertificateExtension_new2".}

proc operatorAssign*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, other: gen_qsslcertificateextension_types.QSslCertificateExtension): void =
  fcQSslCertificateExtension_operatorAssign(self.h, other.h)

proc swap*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, other: gen_qsslcertificateextension_types.QSslCertificateExtension): void =
  fcQSslCertificateExtension_swap(self.h, other.h)

proc oid*(self: gen_qsslcertificateextension_types.QSslCertificateExtension): string =
  let v_ms = fcQSslCertificateExtension_oid(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qsslcertificateextension_types.QSslCertificateExtension): string =
  let v_ms = fcQSslCertificateExtension_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qsslcertificateextension_types.QSslCertificateExtension): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSslCertificateExtension_value(self.h), owned: true)

proc isCritical*(self: gen_qsslcertificateextension_types.QSslCertificateExtension): bool =
  fcQSslCertificateExtension_isCritical(self.h)

proc isSupported*(self: gen_qsslcertificateextension_types.QSslCertificateExtension): bool =
  fcQSslCertificateExtension_isSupported(self.h)

proc create*(T: type gen_qsslcertificateextension_types.QSslCertificateExtension): gen_qsslcertificateextension_types.QSslCertificateExtension =
  gen_qsslcertificateextension_types.QSslCertificateExtension(h: fcQSslCertificateExtension_new(), owned: true)

proc create*(T: type gen_qsslcertificateextension_types.QSslCertificateExtension,
    other: gen_qsslcertificateextension_types.QSslCertificateExtension): gen_qsslcertificateextension_types.QSslCertificateExtension =
  gen_qsslcertificateextension_types.QSslCertificateExtension(h: fcQSslCertificateExtension_new2(other.h), owned: true)

