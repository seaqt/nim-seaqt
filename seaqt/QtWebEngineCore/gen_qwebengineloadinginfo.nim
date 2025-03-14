import ./qtwebenginecore_pkg

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


type QWebEngineLoadingInfoLoadStatusEnum* = distinct cint
template LoadStartedStatus*(_: type QWebEngineLoadingInfoLoadStatusEnum): untyped = 0
template LoadStoppedStatus*(_: type QWebEngineLoadingInfoLoadStatusEnum): untyped = 1
template LoadSucceededStatus*(_: type QWebEngineLoadingInfoLoadStatusEnum): untyped = 2
template LoadFailedStatus*(_: type QWebEngineLoadingInfoLoadStatusEnum): untyped = 3


type QWebEngineLoadingInfoErrorDomainEnum* = distinct cint
template NoErrorDomain*(_: type QWebEngineLoadingInfoErrorDomainEnum): untyped = 0
template InternalErrorDomain*(_: type QWebEngineLoadingInfoErrorDomainEnum): untyped = 1
template ConnectionErrorDomain*(_: type QWebEngineLoadingInfoErrorDomainEnum): untyped = 2
template CertificateErrorDomain*(_: type QWebEngineLoadingInfoErrorDomainEnum): untyped = 3
template HttpErrorDomain*(_: type QWebEngineLoadingInfoErrorDomainEnum): untyped = 4
template FtpErrorDomain*(_: type QWebEngineLoadingInfoErrorDomainEnum): untyped = 5
template DnsErrorDomain*(_: type QWebEngineLoadingInfoErrorDomainEnum): untyped = 6
template HttpStatusCodeDomain*(_: type QWebEngineLoadingInfoErrorDomainEnum): untyped = 7


import ./gen_qwebengineloadinginfo_types
export gen_qwebengineloadinginfo_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qurl_types

type cQWebEngineLoadingInfo*{.exportc: "QWebEngineLoadingInfo", incompleteStruct.} = object

proc fcQWebEngineLoadingInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineLoadingInfo_operatorAssign".}
proc fcQWebEngineLoadingInfo_url(self: pointer): pointer {.importc: "QWebEngineLoadingInfo_url".}
proc fcQWebEngineLoadingInfo_isErrorPage(self: pointer): bool {.importc: "QWebEngineLoadingInfo_isErrorPage".}
proc fcQWebEngineLoadingInfo_status(self: pointer): cint {.importc: "QWebEngineLoadingInfo_status".}
proc fcQWebEngineLoadingInfo_errorString(self: pointer): struct_miqt_string {.importc: "QWebEngineLoadingInfo_errorString".}
proc fcQWebEngineLoadingInfo_errorDomain(self: pointer): cint {.importc: "QWebEngineLoadingInfo_errorDomain".}
proc fcQWebEngineLoadingInfo_errorCode(self: pointer): cint {.importc: "QWebEngineLoadingInfo_errorCode".}
proc fcQWebEngineLoadingInfo_new(other: pointer): ptr cQWebEngineLoadingInfo {.importc: "QWebEngineLoadingInfo_new".}
proc fcQWebEngineLoadingInfo_staticMetaObject(): pointer {.importc: "QWebEngineLoadingInfo_staticMetaObject".}

proc operatorAssign*(self: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo, other: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): void =
  fcQWebEngineLoadingInfo_operatorAssign(self.h, other.h)

proc url*(self: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineLoadingInfo_url(self.h), owned: true)

proc isErrorPage*(self: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): bool =
  fcQWebEngineLoadingInfo_isErrorPage(self.h)

proc status*(self: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): cint =
  cint(fcQWebEngineLoadingInfo_status(self.h))

proc errorString*(self: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): string =
  let v_ms = fcQWebEngineLoadingInfo_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc errorDomain*(self: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): cint =
  cint(fcQWebEngineLoadingInfo_errorDomain(self.h))

proc errorCode*(self: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): cint =
  fcQWebEngineLoadingInfo_errorCode(self.h)

proc create*(T: type gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo,
    other: gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo =
  gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo(h: fcQWebEngineLoadingInfo_new(other.h), owned: true)

proc staticMetaObject*(_: type gen_qwebengineloadinginfo_types.QWebEngineLoadingInfo): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineLoadingInfo_staticMetaObject())
