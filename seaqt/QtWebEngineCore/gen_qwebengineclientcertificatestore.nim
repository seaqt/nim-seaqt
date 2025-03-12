import ./Qt6WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt6WebEngineCore") & " -fPIC"
{.compile("gen_qwebengineclientcertificatestore.cpp", cflags).}


import ./gen_qwebengineclientcertificatestore_types
export gen_qwebengineclientcertificatestore_types

import
  ../QtNetwork/gen_qsslcertificate_types,
  ../QtNetwork/gen_qsslkey_types
export
  gen_qsslcertificate_types,
  gen_qsslkey_types

type cQWebEngineClientCertificateStore*{.exportc: "QWebEngineClientCertificateStore", incompleteStruct.} = object

proc fcQWebEngineClientCertificateStore_add(self: pointer, certificate: pointer, privateKey: pointer): void {.importc: "QWebEngineClientCertificateStore_add".}
proc fcQWebEngineClientCertificateStore_certificates(self: pointer): struct_miqt_array {.importc: "QWebEngineClientCertificateStore_certificates".}
proc fcQWebEngineClientCertificateStore_remove(self: pointer, certificate: pointer): void {.importc: "QWebEngineClientCertificateStore_remove".}
proc fcQWebEngineClientCertificateStore_clear(self: pointer): void {.importc: "QWebEngineClientCertificateStore_clear".}

proc add*(self: gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore, certificate: gen_qsslcertificate_types.QSslCertificate, privateKey: gen_qsslkey_types.QSslKey): void =
  fcQWebEngineClientCertificateStore_add(self.h, certificate.h, privateKey.h)

proc certificates*(self: gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQWebEngineClientCertificateStore_certificates(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc remove*(self: gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore, certificate: gen_qsslcertificate_types.QSslCertificate): void =
  fcQWebEngineClientCertificateStore_remove(self.h, certificate.h)

proc clear*(self: gen_qwebengineclientcertificatestore_types.QWebEngineClientCertificateStore): void =
  fcQWebEngineClientCertificateStore_clear(self.h)

