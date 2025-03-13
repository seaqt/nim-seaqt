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


import ./gen_qwebengineclientcertificateselection_types
export gen_qwebengineclientcertificateselection_types

import
  ../QtCore/gen_qurl_types,
  ../QtNetwork/gen_qsslcertificate_types
export
  gen_qurl_types,
  gen_qsslcertificate_types

type cQWebEngineClientCertificateSelection*{.exportc: "QWebEngineClientCertificateSelection", incompleteStruct.} = object

proc fcQWebEngineClientCertificateSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebEngineClientCertificateSelection_operatorAssign".}
proc fcQWebEngineClientCertificateSelection_host(self: pointer): pointer {.importc: "QWebEngineClientCertificateSelection_host".}
proc fcQWebEngineClientCertificateSelection_select(self: pointer, certificate: pointer): void {.importc: "QWebEngineClientCertificateSelection_select".}
proc fcQWebEngineClientCertificateSelection_selectNone(self: pointer): void {.importc: "QWebEngineClientCertificateSelection_selectNone".}
proc fcQWebEngineClientCertificateSelection_certificates(self: pointer): struct_miqt_array {.importc: "QWebEngineClientCertificateSelection_certificates".}
proc fcQWebEngineClientCertificateSelection_new(param1: pointer): ptr cQWebEngineClientCertificateSelection {.importc: "QWebEngineClientCertificateSelection_new".}

proc operatorAssign*(self: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection, param1: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection): void =
  fcQWebEngineClientCertificateSelection_operatorAssign(self.h, param1.h)

proc host*(self: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineClientCertificateSelection_host(self.h), owned: true)

proc select*(self: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection, certificate: gen_qsslcertificate_types.QSslCertificate): void =
  fcQWebEngineClientCertificateSelection_select(self.h, certificate.h)

proc selectNone*(self: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection): void =
  fcQWebEngineClientCertificateSelection_selectNone(self.h)

proc certificates*(self: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection): seq[gen_qsslcertificate_types.QSslCertificate] =
  var v_ma = fcQWebEngineClientCertificateSelection_certificates(self.h)
  var vx_ret = newSeq[gen_qsslcertificate_types.QSslCertificate](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qsslcertificate_types.QSslCertificate(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection,
    param1: gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection): gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection =
  gen_qwebengineclientcertificateselection_types.QWebEngineClientCertificateSelection(h: fcQWebEngineClientCertificateSelection_new(param1.h), owned: true)

