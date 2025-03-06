import ./Qt5Network_libs

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
{.compile("gen_qsslcertificateextension.cpp", cflags).}


import ./gen_qsslcertificateextension_types
export gen_qsslcertificateextension_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQSslCertificateExtension*{.exportc: "QSslCertificateExtension", incompleteStruct.} = object

proc fcQSslCertificateExtension_new(): ptr cQSslCertificateExtension {.importc: "QSslCertificateExtension_new".}
proc fcQSslCertificateExtension_new2(other: pointer): ptr cQSslCertificateExtension {.importc: "QSslCertificateExtension_new2".}
proc fcQSslCertificateExtension_operatorAssign(self: pointer, other: pointer): void {.importc: "QSslCertificateExtension_operatorAssign".}
proc fcQSslCertificateExtension_swap(self: pointer, other: pointer): void {.importc: "QSslCertificateExtension_swap".}
proc fcQSslCertificateExtension_oid(self: pointer, ): struct_miqt_string {.importc: "QSslCertificateExtension_oid".}
proc fcQSslCertificateExtension_name(self: pointer, ): struct_miqt_string {.importc: "QSslCertificateExtension_name".}
proc fcQSslCertificateExtension_value(self: pointer, ): pointer {.importc: "QSslCertificateExtension_value".}
proc fcQSslCertificateExtension_isCritical(self: pointer, ): bool {.importc: "QSslCertificateExtension_isCritical".}
proc fcQSslCertificateExtension_isSupported(self: pointer, ): bool {.importc: "QSslCertificateExtension_isSupported".}
proc fcQSslCertificateExtension_delete(self: pointer) {.importc: "QSslCertificateExtension_delete".}


func init*(T: type gen_qsslcertificateextension_types.QSslCertificateExtension, h: ptr cQSslCertificateExtension): gen_qsslcertificateextension_types.QSslCertificateExtension =
  T(h: h)
proc create*(T: type gen_qsslcertificateextension_types.QSslCertificateExtension, ): gen_qsslcertificateextension_types.QSslCertificateExtension =
  gen_qsslcertificateextension_types.QSslCertificateExtension.init(fcQSslCertificateExtension_new())

proc create*(T: type gen_qsslcertificateextension_types.QSslCertificateExtension, other: gen_qsslcertificateextension_types.QSslCertificateExtension): gen_qsslcertificateextension_types.QSslCertificateExtension =
  gen_qsslcertificateextension_types.QSslCertificateExtension.init(fcQSslCertificateExtension_new2(other.h))

proc operatorAssign*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, other: gen_qsslcertificateextension_types.QSslCertificateExtension): void =
  fcQSslCertificateExtension_operatorAssign(self.h, other.h)

proc swap*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, other: gen_qsslcertificateextension_types.QSslCertificateExtension): void =
  fcQSslCertificateExtension_swap(self.h, other.h)

proc oid*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, ): string =
  let v_ms = fcQSslCertificateExtension_oid(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, ): string =
  let v_ms = fcQSslCertificateExtension_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc value*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSslCertificateExtension_value(self.h))

proc isCritical*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, ): bool =
  fcQSslCertificateExtension_isCritical(self.h)

proc isSupported*(self: gen_qsslcertificateextension_types.QSslCertificateExtension, ): bool =
  fcQSslCertificateExtension_isSupported(self.h)

proc delete*(self: gen_qsslcertificateextension_types.QSslCertificateExtension) =
  fcQSslCertificateExtension_delete(self.h)
