import ./qtnetwork_pkg

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


type QNetworkRequestKnownHeadersEnum* = distinct cint
template ContentTypeHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 0
template ContentLengthHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 1
template LocationHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 2
template LastModifiedHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 3
template CookieHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 4
template SetCookieHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 5
template ContentDispositionHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 6
template UserAgentHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 7
template ServerHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 8
template IfModifiedSinceHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 9
template ETagHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 10
template IfMatchHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 11
template IfNoneMatchHeader*(_: type QNetworkRequestKnownHeadersEnum): untyped = 12
template NumKnownHeaders*(_: type QNetworkRequestKnownHeadersEnum): untyped = 13


type QNetworkRequestAttributeEnum* = distinct cint
template HttpStatusCodeAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 0
template HttpReasonPhraseAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 1
template RedirectionTargetAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 2
template ConnectionEncryptedAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 3
template CacheLoadControlAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 4
template CacheSaveControlAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 5
template SourceIsFromCacheAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 6
template DoNotBufferUploadDataAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 7
template HttpPipeliningAllowedAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 8
template HttpPipeliningWasUsedAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 9
template CustomVerbAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 10
template CookieLoadControlAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 11
template AuthenticationReuseAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 12
template CookieSaveControlAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 13
template MaximumDownloadBufferSizeAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 14
template DownloadBufferAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 15
template SynchronousRequestAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 16
template BackgroundRequestAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 17
template EmitAllUploadProgressSignalsAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 18
template Http2AllowedAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 19
template Http2WasUsedAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 20
template OriginalContentLengthAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 21
template RedirectPolicyAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 22
template Http2DirectAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 23
template ResourceTypeAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 24
template AutoDeleteReplyOnFinishAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 25
template ConnectionCacheExpiryTimeoutSecondsAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 26
template Http2CleartextAllowedAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 27
template UseCredentialsAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 28
template FullLocalServerNameAttribute*(_: type QNetworkRequestAttributeEnum): untyped = 29
template User*(_: type QNetworkRequestAttributeEnum): untyped = 1000
template UserMax*(_: type QNetworkRequestAttributeEnum): untyped = 32767


type QNetworkRequestCacheLoadControlEnum* = distinct cint
template AlwaysNetwork*(_: type QNetworkRequestCacheLoadControlEnum): untyped = 0
template PreferNetwork*(_: type QNetworkRequestCacheLoadControlEnum): untyped = 1
template PreferCache*(_: type QNetworkRequestCacheLoadControlEnum): untyped = 2
template AlwaysCache*(_: type QNetworkRequestCacheLoadControlEnum): untyped = 3


type QNetworkRequestLoadControlEnum* = distinct cint
template Automatic*(_: type QNetworkRequestLoadControlEnum): untyped = 0
template Manual*(_: type QNetworkRequestLoadControlEnum): untyped = 1


type QNetworkRequestPriorityEnum* = distinct cint
template HighPriority*(_: type QNetworkRequestPriorityEnum): untyped = 1
template NormalPriority*(_: type QNetworkRequestPriorityEnum): untyped = 3
template LowPriority*(_: type QNetworkRequestPriorityEnum): untyped = 5


type QNetworkRequestRedirectPolicyEnum* = distinct cint
template ManualRedirectPolicy*(_: type QNetworkRequestRedirectPolicyEnum): untyped = 0
template NoLessSafeRedirectPolicy*(_: type QNetworkRequestRedirectPolicyEnum): untyped = 1
template SameOriginRedirectPolicy*(_: type QNetworkRequestRedirectPolicyEnum): untyped = 2
template UserVerifiedRedirectPolicy*(_: type QNetworkRequestRedirectPolicyEnum): untyped = 3


type QNetworkRequestTransferTimeoutConstantEnum* = distinct cint
template DefaultTransferTimeoutConstant*(_: type QNetworkRequestTransferTimeoutConstantEnum): untyped = 30000


import ./gen_qnetworkrequest_types
export gen_qnetworkrequest_types

import
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qhttp1configuration_types,
  ./gen_qhttp2configuration_types,
  ./gen_qhttpheaders_types,
  ./gen_qsslconfiguration_types
export
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types,
  gen_qhttp1configuration_types,
  gen_qhttp2configuration_types,
  gen_qhttpheaders_types,
  gen_qsslconfiguration_types

type cQNetworkRequest*{.exportc: "QNetworkRequest", incompleteStruct.} = object

proc fcQNetworkRequest_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QNetworkRequest_operatorAssign".}
proc fcQNetworkRequest_swap(self: pointer, other: pointer): void {.importc: "QNetworkRequest_swap".}
proc fcQNetworkRequest_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkRequest_operatorEqual".}
proc fcQNetworkRequest_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkRequest_operatorNotEqual".}
proc fcQNetworkRequest_url(self: pointer): pointer {.importc: "QNetworkRequest_url".}
proc fcQNetworkRequest_setUrl(self: pointer, url: pointer): void {.importc: "QNetworkRequest_setUrl".}
proc fcQNetworkRequest_headers(self: pointer): pointer {.importc: "QNetworkRequest_headers".}
proc fcQNetworkRequest_setHeaders(self: pointer, newHeaders: pointer): void {.importc: "QNetworkRequest_setHeaders".}
proc fcQNetworkRequest_header(self: pointer, header: cint): pointer {.importc: "QNetworkRequest_header".}
proc fcQNetworkRequest_setHeader(self: pointer, header: cint, value: pointer): void {.importc: "QNetworkRequest_setHeader".}
proc fcQNetworkRequest_hasRawHeader(self: pointer, headerName: struct_seaqt_string): bool {.importc: "QNetworkRequest_hasRawHeader".}
proc fcQNetworkRequest_rawHeaderList(self: pointer): struct_seaqt_array {.importc: "QNetworkRequest_rawHeaderList".}
proc fcQNetworkRequest_rawHeader(self: pointer, headerName: struct_seaqt_string): struct_seaqt_string {.importc: "QNetworkRequest_rawHeader".}
proc fcQNetworkRequest_setRawHeader(self: pointer, headerName: struct_seaqt_string, value: struct_seaqt_string): void {.importc: "QNetworkRequest_setRawHeader".}
proc fcQNetworkRequest_attributeCode(self: pointer, code: cint): pointer {.importc: "QNetworkRequest_attribute_code".}
proc fcQNetworkRequest_setAttribute(self: pointer, code: cint, value: pointer): void {.importc: "QNetworkRequest_setAttribute".}
proc fcQNetworkRequest_sslConfiguration(self: pointer): pointer {.importc: "QNetworkRequest_sslConfiguration".}
proc fcQNetworkRequest_setSslConfiguration(self: pointer, configuration: pointer): void {.importc: "QNetworkRequest_setSslConfiguration".}
proc fcQNetworkRequest_setOriginatingObject(self: pointer, objectVal: pointer): void {.importc: "QNetworkRequest_setOriginatingObject".}
proc fcQNetworkRequest_originatingObject(self: pointer): pointer {.importc: "QNetworkRequest_originatingObject".}
proc fcQNetworkRequest_priority(self: pointer): cint {.importc: "QNetworkRequest_priority".}
proc fcQNetworkRequest_setPriority(self: pointer, priority: cint): void {.importc: "QNetworkRequest_setPriority".}
proc fcQNetworkRequest_maximumRedirectsAllowed(self: pointer): cint {.importc: "QNetworkRequest_maximumRedirectsAllowed".}
proc fcQNetworkRequest_setMaximumRedirectsAllowed(self: pointer, maximumRedirectsAllowed: cint): void {.importc: "QNetworkRequest_setMaximumRedirectsAllowed".}
proc fcQNetworkRequest_peerVerifyName(self: pointer): struct_seaqt_string {.importc: "QNetworkRequest_peerVerifyName".}
proc fcQNetworkRequest_setPeerVerifyName(self: pointer, peerName: struct_seaqt_string): void {.importc: "QNetworkRequest_setPeerVerifyName".}
proc fcQNetworkRequest_http1Configuration(self: pointer): pointer {.importc: "QNetworkRequest_http1Configuration".}
proc fcQNetworkRequest_setHttp1Configuration(self: pointer, configuration: pointer): void {.importc: "QNetworkRequest_setHttp1Configuration".}
proc fcQNetworkRequest_http2Configuration(self: pointer): pointer {.importc: "QNetworkRequest_http2Configuration".}
proc fcQNetworkRequest_setHttp2Configuration(self: pointer, configuration: pointer): void {.importc: "QNetworkRequest_setHttp2Configuration".}
proc fcQNetworkRequest_decompressedSafetyCheckThreshold(self: pointer): clonglong {.importc: "QNetworkRequest_decompressedSafetyCheckThreshold".}
proc fcQNetworkRequest_setDecompressedSafetyCheckThreshold(self: pointer, threshold: clonglong): void {.importc: "QNetworkRequest_setDecompressedSafetyCheckThreshold".}
proc fcQNetworkRequest_tcpKeepAliveProbeCount(self: pointer): cint {.importc: "QNetworkRequest_tcpKeepAliveProbeCount".}
proc fcQNetworkRequest_setTcpKeepAliveProbeCount(self: pointer, probes: cint): void {.importc: "QNetworkRequest_setTcpKeepAliveProbeCount".}
proc fcQNetworkRequest_transferTimeout(self: pointer): cint {.importc: "QNetworkRequest_transferTimeout".}
proc fcQNetworkRequest_setTransferTimeoutTimeout(self: pointer, timeout: cint): void {.importc: "QNetworkRequest_setTransferTimeout_timeout".}
proc fcQNetworkRequest_setTransferTimeout(self: pointer): void {.importc: "QNetworkRequest_setTransferTimeout".}
proc fcQNetworkRequest_attributeCodeDefaultValue(self: pointer, code: cint, defaultValue: pointer): pointer {.importc: "QNetworkRequest_attribute_code_defaultValue".}
proc fcQNetworkRequest_new(): ptr cQNetworkRequest {.importc: "QNetworkRequest_new".}
proc fcQNetworkRequest_new2(url: pointer): ptr cQNetworkRequest {.importc: "QNetworkRequest_new_url".}
proc fcQNetworkRequest_new3(fromVal: pointer): ptr cQNetworkRequest {.importc: "QNetworkRequest_new_from".}
proc fcQNetworkRequest_staticMetaObject(): pointer {.importc: "QNetworkRequest_staticMetaObject".}

proc operatorAssign*(self: gen_qnetworkrequest_types.QNetworkRequest, fromVal: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQNetworkRequest_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qnetworkrequest_types.QNetworkRequest, other: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQNetworkRequest_swap(self.h, other.h)

proc operatorEqual*(self: gen_qnetworkrequest_types.QNetworkRequest, other: gen_qnetworkrequest_types.QNetworkRequest): bool =
  fcQNetworkRequest_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qnetworkrequest_types.QNetworkRequest, other: gen_qnetworkrequest_types.QNetworkRequest): bool =
  fcQNetworkRequest_operatorNotEqual(self.h, other.h)

proc url*(self: gen_qnetworkrequest_types.QNetworkRequest): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQNetworkRequest_url(self.h), owned: true)

proc setUrl*(self: gen_qnetworkrequest_types.QNetworkRequest, url: gen_qurl_types.QUrl): void =
  fcQNetworkRequest_setUrl(self.h, url.h)

proc headers*(self: gen_qnetworkrequest_types.QNetworkRequest): gen_qhttpheaders_types.QHttpHeaders =
  gen_qhttpheaders_types.QHttpHeaders(h: fcQNetworkRequest_headers(self.h), owned: true)

proc setHeaders*(self: gen_qnetworkrequest_types.QNetworkRequest, newHeaders: gen_qhttpheaders_types.QHttpHeaders): void =
  fcQNetworkRequest_setHeaders(self.h, newHeaders.h)

proc header*(self: gen_qnetworkrequest_types.QNetworkRequest, header: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkRequest_header(self.h, cint(header)), owned: true)

proc setHeader*(self: gen_qnetworkrequest_types.QNetworkRequest, header: cint, value: gen_qvariant_types.QVariant): void =
  fcQNetworkRequest_setHeader(self.h, cint(header), value.h)

proc hasRawHeader*(self: gen_qnetworkrequest_types.QNetworkRequest, headerName: openArray[char]): bool =
  fcQNetworkRequest_hasRawHeader(self.h, struct_seaqt_string(data: if len(headerName) > 0: addr headerName[0] else: nil, len: csize_t(len(headerName))))

proc rawHeaderList*(self: gen_qnetworkrequest_types.QNetworkRequest): seq[seq[byte]] =
  var v_ma = fcQNetworkRequest_rawHeaderList(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc rawHeader*(self: gen_qnetworkrequest_types.QNetworkRequest, headerName: openArray[char]): seq[byte] =
  var v_bytearray = fcQNetworkRequest_rawHeader(self.h, struct_seaqt_string(data: if len(headerName) > 0: addr headerName[0] else: nil, len: csize_t(len(headerName))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setRawHeader*(self: gen_qnetworkrequest_types.QNetworkRequest, headerName: openArray[byte], value: openArray[byte]): void =
  fcQNetworkRequest_setRawHeader(self.h, struct_seaqt_string(data: if len(headerName) > 0: addr headerName[0] else: nil, len: csize_t(len(headerName))), struct_seaqt_string(data: if len(value) > 0: addr value[0] else: nil, len: csize_t(len(value))))

proc attribute*(self: gen_qnetworkrequest_types.QNetworkRequest, code: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkRequest_attributeCode(self.h, cint(code)), owned: true)

proc setAttribute*(self: gen_qnetworkrequest_types.QNetworkRequest, code: cint, value: gen_qvariant_types.QVariant): void =
  fcQNetworkRequest_setAttribute(self.h, cint(code), value.h)

proc sslConfiguration*(self: gen_qnetworkrequest_types.QNetworkRequest): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQNetworkRequest_sslConfiguration(self.h), owned: true)

proc setSslConfiguration*(self: gen_qnetworkrequest_types.QNetworkRequest, configuration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQNetworkRequest_setSslConfiguration(self.h, configuration.h)

proc setOriginatingObject*(self: gen_qnetworkrequest_types.QNetworkRequest, objectVal: gen_qobject_types.QObject): void =
  fcQNetworkRequest_setOriginatingObject(self.h, objectVal.h)

proc originatingObject*(self: gen_qnetworkrequest_types.QNetworkRequest): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkRequest_originatingObject(self.h), owned: false)

proc priority*(self: gen_qnetworkrequest_types.QNetworkRequest): cint =
  cint(fcQNetworkRequest_priority(self.h))

proc setPriority*(self: gen_qnetworkrequest_types.QNetworkRequest, priority: cint): void =
  fcQNetworkRequest_setPriority(self.h, cint(priority))

proc maximumRedirectsAllowed*(self: gen_qnetworkrequest_types.QNetworkRequest): cint =
  fcQNetworkRequest_maximumRedirectsAllowed(self.h)

proc setMaximumRedirectsAllowed*(self: gen_qnetworkrequest_types.QNetworkRequest, maximumRedirectsAllowed: cint): void =
  fcQNetworkRequest_setMaximumRedirectsAllowed(self.h, maximumRedirectsAllowed)

proc peerVerifyName*(self: gen_qnetworkrequest_types.QNetworkRequest): string =
  let v_ms = fcQNetworkRequest_peerVerifyName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPeerVerifyName*(self: gen_qnetworkrequest_types.QNetworkRequest, peerName: openArray[char]): void =
  fcQNetworkRequest_setPeerVerifyName(self.h, struct_seaqt_string(data: if len(peerName) > 0: addr peerName[0] else: nil, len: csize_t(len(peerName))))

proc http1Configuration*(self: gen_qnetworkrequest_types.QNetworkRequest): gen_qhttp1configuration_types.QHttp1Configuration =
  gen_qhttp1configuration_types.QHttp1Configuration(h: fcQNetworkRequest_http1Configuration(self.h), owned: true)

proc setHttp1Configuration*(self: gen_qnetworkrequest_types.QNetworkRequest, configuration: gen_qhttp1configuration_types.QHttp1Configuration): void =
  fcQNetworkRequest_setHttp1Configuration(self.h, configuration.h)

proc http2Configuration*(self: gen_qnetworkrequest_types.QNetworkRequest): gen_qhttp2configuration_types.QHttp2Configuration =
  gen_qhttp2configuration_types.QHttp2Configuration(h: fcQNetworkRequest_http2Configuration(self.h), owned: true)

proc setHttp2Configuration*(self: gen_qnetworkrequest_types.QNetworkRequest, configuration: gen_qhttp2configuration_types.QHttp2Configuration): void =
  fcQNetworkRequest_setHttp2Configuration(self.h, configuration.h)

proc decompressedSafetyCheckThreshold*(self: gen_qnetworkrequest_types.QNetworkRequest): clonglong =
  fcQNetworkRequest_decompressedSafetyCheckThreshold(self.h)

proc setDecompressedSafetyCheckThreshold*(self: gen_qnetworkrequest_types.QNetworkRequest, threshold: clonglong): void =
  fcQNetworkRequest_setDecompressedSafetyCheckThreshold(self.h, threshold)

proc tcpKeepAliveProbeCount*(self: gen_qnetworkrequest_types.QNetworkRequest): cint =
  fcQNetworkRequest_tcpKeepAliveProbeCount(self.h)

proc setTcpKeepAliveProbeCount*(self: gen_qnetworkrequest_types.QNetworkRequest, probes: cint): void =
  fcQNetworkRequest_setTcpKeepAliveProbeCount(self.h, probes)

proc transferTimeout*(self: gen_qnetworkrequest_types.QNetworkRequest): cint =
  fcQNetworkRequest_transferTimeout(self.h)

proc setTransferTimeout*(self: gen_qnetworkrequest_types.QNetworkRequest, timeout: cint): void =
  fcQNetworkRequest_setTransferTimeoutTimeout(self.h, timeout)

proc setTransferTimeout*(self: gen_qnetworkrequest_types.QNetworkRequest): void =
  fcQNetworkRequest_setTransferTimeout(self.h)

proc attribute*(self: gen_qnetworkrequest_types.QNetworkRequest, code: cint, defaultValue: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkRequest_attributeCodeDefaultValue(self.h, cint(code), defaultValue.h), owned: true)

proc create*(T: type gen_qnetworkrequest_types.QNetworkRequest): gen_qnetworkrequest_types.QNetworkRequest =
  let tmp = gen_qnetworkrequest_types.QNetworkRequest(h: fcQNetworkRequest_new(), owned: true)
  tmp
proc create*(T: type gen_qnetworkrequest_types.QNetworkRequest,
    url: gen_qurl_types.QUrl): gen_qnetworkrequest_types.QNetworkRequest =
  let tmp = gen_qnetworkrequest_types.QNetworkRequest(h: fcQNetworkRequest_new2(url.h), owned: true)
  tmp
proc create*(T: type gen_qnetworkrequest_types.QNetworkRequest,
    fromVal: gen_qnetworkrequest_types.QNetworkRequest): gen_qnetworkrequest_types.QNetworkRequest =
  let tmp = gen_qnetworkrequest_types.QNetworkRequest(h: fcQNetworkRequest_new3(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qnetworkrequest_types.QNetworkRequest): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkRequest_staticMetaObject())
