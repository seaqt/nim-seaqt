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


type QHttpHeadersWellKnownHeaderEnum* = distinct cint
template AIM*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 0
template Accept*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 1
template AcceptAdditions*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 2
template AcceptCH*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 3
template AcceptDatetime*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 4
template AcceptEncoding*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 5
template AcceptFeatures*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 6
template AcceptLanguage*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 7
template AcceptPatch*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 8
template AcceptPost*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 9
template AcceptRanges*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 10
template AcceptSignature*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 11
template AccessControlAllowCredentials*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 12
template AccessControlAllowHeaders*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 13
template AccessControlAllowMethods*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 14
template AccessControlAllowOrigin*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 15
template AccessControlExposeHeaders*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 16
template AccessControlMaxAge*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 17
template AccessControlRequestHeaders*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 18
template AccessControlRequestMethod*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 19
template Age*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 20
template Allow*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 21
template ALPN*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 22
template AltSvc*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 23
template AltUsed*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 24
template Alternates*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 25
template ApplyToRedirectRef*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 26
template AuthenticationControl*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 27
template AuthenticationInfo*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 28
template Authorization*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 29
template CacheControl*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 30
template CacheStatus*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 31
template CalManagedID*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 32
template CalDAVTimezones*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 33
template CapsuleProtocol*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 34
template CDNCacheControl*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 35
template CDNLoop*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 36
template CertNotAfter*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 37
template CertNotBefore*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 38
template ClearSiteData*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 39
template ClientCert*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 40
template ClientCertChain*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 41
template Close*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 42
template Connection*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 43
template ContentDigest*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 44
template ContentDisposition*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 45
template ContentEncoding*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 46
template ContentID*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 47
template ContentLanguage*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 48
template ContentLength*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 49
template ContentLocation*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 50
template ContentRange*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 51
template ContentSecurityPolicy*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 52
template ContentSecurityPolicyReportOnly*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 53
template ContentType*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 54
template Cookie*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 55
template CrossOriginEmbedderPolicy*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 56
template CrossOriginEmbedderPolicyReportOnly*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 57
template CrossOriginOpenerPolicy*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 58
template CrossOriginOpenerPolicyReportOnly*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 59
template CrossOriginResourcePolicy*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 60
template DASL*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 61
template Date*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 62
template DAV*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 63
template DeltaBase*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 64
template Depth*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 65
template Destination*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 66
template DifferentialID*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 67
template DPoP*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 68
template DPoPNonce*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 69
template EarlyData*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 70
template ETag*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 71
template Expect*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 72
template ExpectCT*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 73
template Expires*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 74
template Forwarded*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 75
template From*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 76
template Hobareg*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 77
template Host*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 78
template If*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 79
template IfMatch*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 80
template IfModifiedSince*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 81
template IfNoneMatch*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 82
template IfRange*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 83
template IfScheduleTagMatch*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 84
template IfUnmodifiedSince*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 85
template IM*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 86
template IncludeReferredTokenBindingID*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 87
template KeepAlive*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 88
template Label*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 89
template LastEventID*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 90
template LastModified*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 91
template Link*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 92
template Location*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 93
template LockToken*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 94
template MaxForwards*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 95
template MementoDatetime*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 96
template Meter*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 97
template MIMEVersion*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 98
template Negotiate*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 99
template NEL*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 100
template ODataEntityId*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 101
template ODataIsolation*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 102
template ODataMaxVersion*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 103
template ODataVersion*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 104
template OptionalWWWAuthenticate*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 105
template OrderingType*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 106
template Origin*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 107
template OriginAgentCluster*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 108
template OSCORE*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 109
template OSLCCoreVersion*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 110
template Overwrite*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 111
template PingFrom*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 112
template PingTo*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 113
template Position*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 114
template Prefer*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 115
template PreferenceApplied*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 116
template Priority*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 117
template ProxyAuthenticate*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 118
template ProxyAuthenticationInfo*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 119
template ProxyAuthorization*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 120
template ProxyStatus*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 121
template PublicKeyPins*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 122
template PublicKeyPinsReportOnly*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 123
template Range*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 124
template RedirectRef*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 125
template Referer*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 126
template Refresh*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 127
template ReplayNonce*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 128
template ReprDigest*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 129
template RetryAfter*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 130
template ScheduleReply*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 131
template ScheduleTag*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 132
template SecPurpose*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 133
template SecTokenBinding*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 134
template SecWebSocketAccept*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 135
template SecWebSocketExtensions*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 136
template SecWebSocketKey*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 137
template SecWebSocketProtocol*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 138
template SecWebSocketVersion*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 139
template Server*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 140
template ServerTiming*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 141
template SetCookie*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 142
template Signature*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 143
template SignatureInput*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 144
template SLUG*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 145
template SoapAction*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 146
template StatusURI*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 147
template StrictTransportSecurity*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 148
template Sunset*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 149
template SurrogateCapability*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 150
template SurrogateControl*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 151
template TCN*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 152
template TE*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 153
template Timeout*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 154
template Topic*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 155
template Traceparent*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 156
template Tracestate*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 157
template Trailer*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 158
template TransferEncoding*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 159
template TTL*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 160
template Upgrade*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 161
template Urgency*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 162
template UserAgent*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 163
template VariantVary*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 164
template Vary*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 165
template Via*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 166
template WantContentDigest*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 167
template WantReprDigest*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 168
template WWWAuthenticate*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 169
template XContentTypeOptions*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 170
template XFrameOptions*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 171
template AcceptCharset*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 172
template CPEPInfo*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 173
template Pragma*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 174
template ProtocolInfo*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 175
template ProtocolQuery*(_: type QHttpHeadersWellKnownHeaderEnum): untyped = 176


import ./gen_qhttpheaders_types
export gen_qhttpheaders_types

import
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobjectdefs_types

type cQHttpHeaders*{.exportc: "QHttpHeaders", incompleteStruct.} = object

proc fcQHttpHeaders_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QHttpHeaders_operatorAssign".}
proc fcQHttpHeaders_swap(self: pointer, other: pointer): void {.importc: "QHttpHeaders_swap".}
proc fcQHttpHeaders_append_QAnyStringView_QAnyStringView(self: pointer, name: struct_seaqt_string, value: struct_seaqt_string): bool {.importc: "QHttpHeaders_append_QAnyStringView_QAnyStringView".}
proc fcQHttpHeaders_append_QHttpHeaders_WellKnownHeader_QAnyStringView(self: pointer, name: cint, value: struct_seaqt_string): bool {.importc: "QHttpHeaders_append_QHttpHeaders_WellKnownHeader_QAnyStringView".}
proc fcQHttpHeaders_insertQsizetype_QAnyStringView_QAnyStringView(self: pointer, i: int64, name: struct_seaqt_string, value: struct_seaqt_string): bool {.importc: "QHttpHeaders_insert_qsizetype_QAnyStringView_QAnyStringView".}
proc fcQHttpHeaders_insertQsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView(self: pointer, i: int64, name: cint, value: struct_seaqt_string): bool {.importc: "QHttpHeaders_insert_qsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView".}
proc fcQHttpHeaders_replaceQsizetype_QAnyStringView_QAnyStringView(self: pointer, i: int64, name: struct_seaqt_string, newValue: struct_seaqt_string): bool {.importc: "QHttpHeaders_replace_qsizetype_QAnyStringView_QAnyStringView".}
proc fcQHttpHeaders_replaceQsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView(self: pointer, i: int64, name: cint, newValue: struct_seaqt_string): bool {.importc: "QHttpHeaders_replace_qsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView".}
proc fcQHttpHeaders_replaceOrAppend_QAnyStringView_QAnyStringView(self: pointer, name: struct_seaqt_string, newValue: struct_seaqt_string): bool {.importc: "QHttpHeaders_replaceOrAppend_QAnyStringView_QAnyStringView".}
proc fcQHttpHeaders_replaceOrAppend_QHttpHeaders_WellKnownHeader_QAnyStringView(self: pointer, name: cint, newValue: struct_seaqt_string): bool {.importc: "QHttpHeaders_replaceOrAppend_QHttpHeaders_WellKnownHeader_QAnyStringView".}
proc fcQHttpHeaders_contains_QAnyStringView(self: pointer, name: struct_seaqt_string): bool {.importc: "QHttpHeaders_contains_QAnyStringView".}
proc fcQHttpHeaders_contains_QHttpHeaders_WellKnownHeader(self: pointer, name: cint): bool {.importc: "QHttpHeaders_contains_QHttpHeaders_WellKnownHeader".}
proc fcQHttpHeaders_clear(self: pointer): void {.importc: "QHttpHeaders_clear".}
proc fcQHttpHeaders_removeAll_QAnyStringView(self: pointer, name: struct_seaqt_string): void {.importc: "QHttpHeaders_removeAll_QAnyStringView".}
proc fcQHttpHeaders_removeAll_QHttpHeaders_WellKnownHeader(self: pointer, name: cint): void {.importc: "QHttpHeaders_removeAll_QHttpHeaders_WellKnownHeader".}
proc fcQHttpHeaders_removeAt(self: pointer, i: int64): void {.importc: "QHttpHeaders_removeAt".}
proc fcQHttpHeaders_value_QAnyStringView(self: pointer, name: struct_seaqt_string): struct_seaqt_string {.importc: "QHttpHeaders_value_QAnyStringView".}
proc fcQHttpHeaders_value_QHttpHeaders_WellKnownHeader(self: pointer, name: cint): struct_seaqt_string {.importc: "QHttpHeaders_value_QHttpHeaders_WellKnownHeader".}
proc fcQHttpHeaders_values_QAnyStringView(self: pointer, name: struct_seaqt_string): struct_seaqt_array {.importc: "QHttpHeaders_values_QAnyStringView".}
proc fcQHttpHeaders_values_QHttpHeaders_WellKnownHeader(self: pointer, name: cint): struct_seaqt_array {.importc: "QHttpHeaders_values_QHttpHeaders_WellKnownHeader".}
proc fcQHttpHeaders_valueAt(self: pointer, i: int64): struct_seaqt_string {.importc: "QHttpHeaders_valueAt".}
proc fcQHttpHeaders_combinedValue_QAnyStringView(self: pointer, name: struct_seaqt_string): struct_seaqt_string {.importc: "QHttpHeaders_combinedValue_QAnyStringView".}
proc fcQHttpHeaders_combinedValue_QHttpHeaders_WellKnownHeader(self: pointer, name: cint): struct_seaqt_string {.importc: "QHttpHeaders_combinedValue_QHttpHeaders_WellKnownHeader".}
proc fcQHttpHeaders_size(self: pointer): int64 {.importc: "QHttpHeaders_size".}
proc fcQHttpHeaders_reserve(self: pointer, size: int64): void {.importc: "QHttpHeaders_reserve".}
proc fcQHttpHeaders_isEmpty(self: pointer): bool {.importc: "QHttpHeaders_isEmpty".}
proc fcQHttpHeaders_wellKnownHeaderName(name: cint): struct_seaqt_string {.importc: "QHttpHeaders_wellKnownHeaderName".}
proc fcQHttpHeaders_value_QAnyStringView_QByteArrayView(self: pointer, name: struct_seaqt_string, defaultValue: struct_seaqt_string): struct_seaqt_string {.importc: "QHttpHeaders_value_QAnyStringView_QByteArrayView".}
proc fcQHttpHeaders_value_QHttpHeaders_WellKnownHeader_QByteArrayView(self: pointer, name: cint, defaultValue: struct_seaqt_string): struct_seaqt_string {.importc: "QHttpHeaders_value_QHttpHeaders_WellKnownHeader_QByteArrayView".}
proc fcQHttpHeaders_new(): ptr cQHttpHeaders {.importc: "QHttpHeaders_new".}
proc fcQHttpHeaders_new2(fromVal: pointer): ptr cQHttpHeaders {.importc: "QHttpHeaders_new_from".}
proc fcQHttpHeaders_staticMetaObject(): pointer {.importc: "QHttpHeaders_staticMetaObject".}

proc operatorAssign*(self: gen_qhttpheaders_types.QHttpHeaders, fromVal: gen_qhttpheaders_types.QHttpHeaders): void =
  fcQHttpHeaders_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qhttpheaders_types.QHttpHeaders, other: gen_qhttpheaders_types.QHttpHeaders): void =
  fcQHttpHeaders_swap(self.h, other.h)

proc append*(self: gen_qhttpheaders_types.QHttpHeaders, name: openArray[char], value: openArray[char]): bool =
  fcQHttpHeaders_append_QAnyStringView_QAnyStringView(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_string(data: if len(value) > 0: addr value[0] else: nil, len: csize_t(len(value))))

proc append*(self: gen_qhttpheaders_types.QHttpHeaders, name: cint, value: openArray[char]): bool =
  fcQHttpHeaders_append_QHttpHeaders_WellKnownHeader_QAnyStringView(self.h, cint(name), struct_seaqt_string(data: if len(value) > 0: addr value[0] else: nil, len: csize_t(len(value))))

proc insert*(self: gen_qhttpheaders_types.QHttpHeaders, i: int64, name: openArray[char], value: openArray[char]): bool =
  fcQHttpHeaders_insertQsizetype_QAnyStringView_QAnyStringView(self.h, i, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_string(data: if len(value) > 0: addr value[0] else: nil, len: csize_t(len(value))))

proc insert*(self: gen_qhttpheaders_types.QHttpHeaders, i: int64, name: cint, value: openArray[char]): bool =
  fcQHttpHeaders_insertQsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView(self.h, i, cint(name), struct_seaqt_string(data: if len(value) > 0: addr value[0] else: nil, len: csize_t(len(value))))

proc replace*(self: gen_qhttpheaders_types.QHttpHeaders, i: int64, name: openArray[char], newValue: openArray[char]): bool =
  fcQHttpHeaders_replaceQsizetype_QAnyStringView_QAnyStringView(self.h, i, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_string(data: if len(newValue) > 0: addr newValue[0] else: nil, len: csize_t(len(newValue))))

proc replace*(self: gen_qhttpheaders_types.QHttpHeaders, i: int64, name: cint, newValue: openArray[char]): bool =
  fcQHttpHeaders_replaceQsizetype_QHttpHeaders_WellKnownHeader_QAnyStringView(self.h, i, cint(name), struct_seaqt_string(data: if len(newValue) > 0: addr newValue[0] else: nil, len: csize_t(len(newValue))))

proc replaceOrAppend*(self: gen_qhttpheaders_types.QHttpHeaders, name: openArray[char], newValue: openArray[char]): bool =
  fcQHttpHeaders_replaceOrAppend_QAnyStringView_QAnyStringView(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_string(data: if len(newValue) > 0: addr newValue[0] else: nil, len: csize_t(len(newValue))))

proc replaceOrAppend*(self: gen_qhttpheaders_types.QHttpHeaders, name: cint, newValue: openArray[char]): bool =
  fcQHttpHeaders_replaceOrAppend_QHttpHeaders_WellKnownHeader_QAnyStringView(self.h, cint(name), struct_seaqt_string(data: if len(newValue) > 0: addr newValue[0] else: nil, len: csize_t(len(newValue))))

proc contains*(self: gen_qhttpheaders_types.QHttpHeaders, name: openArray[char]): bool =
  fcQHttpHeaders_contains_QAnyStringView(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc contains*(self: gen_qhttpheaders_types.QHttpHeaders, name: cint): bool =
  fcQHttpHeaders_contains_QHttpHeaders_WellKnownHeader(self.h, cint(name))

proc clear*(self: gen_qhttpheaders_types.QHttpHeaders): void =
  fcQHttpHeaders_clear(self.h)

proc removeAll*(self: gen_qhttpheaders_types.QHttpHeaders, name: openArray[char]): void =
  fcQHttpHeaders_removeAll_QAnyStringView(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc removeAll*(self: gen_qhttpheaders_types.QHttpHeaders, name: cint): void =
  fcQHttpHeaders_removeAll_QHttpHeaders_WellKnownHeader(self.h, cint(name))

proc removeAt*(self: gen_qhttpheaders_types.QHttpHeaders, i: int64): void =
  fcQHttpHeaders_removeAt(self.h, i)

proc value*(self: gen_qhttpheaders_types.QHttpHeaders, name: openArray[char]): seq[byte] =
  var v_bytearray = fcQHttpHeaders_value_QAnyStringView(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc value*(self: gen_qhttpheaders_types.QHttpHeaders, name: cint): seq[byte] =
  var v_bytearray = fcQHttpHeaders_value_QHttpHeaders_WellKnownHeader(self.h, cint(name))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc values*(self: gen_qhttpheaders_types.QHttpHeaders, name: openArray[char]): seq[seq[byte]] =
  var v_ma = fcQHttpHeaders_values_QAnyStringView(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc values*(self: gen_qhttpheaders_types.QHttpHeaders, name: cint): seq[seq[byte]] =
  var v_ma = fcQHttpHeaders_values_QHttpHeaders_WellKnownHeader(self.h, cint(name))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc valueAt*(self: gen_qhttpheaders_types.QHttpHeaders, i: int64): seq[byte] =
  var v_bytearray = fcQHttpHeaders_valueAt(self.h, i)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc combinedValue*(self: gen_qhttpheaders_types.QHttpHeaders, name: openArray[char]): seq[byte] =
  var v_bytearray = fcQHttpHeaders_combinedValue_QAnyStringView(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc combinedValue*(self: gen_qhttpheaders_types.QHttpHeaders, name: cint): seq[byte] =
  var v_bytearray = fcQHttpHeaders_combinedValue_QHttpHeaders_WellKnownHeader(self.h, cint(name))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc size*(self: gen_qhttpheaders_types.QHttpHeaders): int64 =
  fcQHttpHeaders_size(self.h)

proc reserve*(self: gen_qhttpheaders_types.QHttpHeaders, size: int64): void =
  fcQHttpHeaders_reserve(self.h, size)

proc isEmpty*(self: gen_qhttpheaders_types.QHttpHeaders): bool =
  fcQHttpHeaders_isEmpty(self.h)

proc wellKnownHeaderName*(_: type gen_qhttpheaders_types.QHttpHeaders, name: cint): seq[byte] =
  var v_bytearray = fcQHttpHeaders_wellKnownHeaderName(cint(name))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc value*(self: gen_qhttpheaders_types.QHttpHeaders, name: openArray[char], defaultValue: openArray[byte]): seq[byte] =
  var v_bytearray = fcQHttpHeaders_value_QAnyStringView_QByteArrayView(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), struct_seaqt_string(data: if len(defaultValue) > 0: addr defaultValue[0] else: nil, len: csize_t(len(defaultValue))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc value*(self: gen_qhttpheaders_types.QHttpHeaders, name: cint, defaultValue: openArray[byte]): seq[byte] =
  var v_bytearray = fcQHttpHeaders_value_QHttpHeaders_WellKnownHeader_QByteArrayView(self.h, cint(name), struct_seaqt_string(data: if len(defaultValue) > 0: addr defaultValue[0] else: nil, len: csize_t(len(defaultValue))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc create*(T: type gen_qhttpheaders_types.QHttpHeaders): gen_qhttpheaders_types.QHttpHeaders =
  let tmp = gen_qhttpheaders_types.QHttpHeaders(h: fcQHttpHeaders_new(), owned: true)
  tmp
proc create*(T: type gen_qhttpheaders_types.QHttpHeaders,
    fromVal: gen_qhttpheaders_types.QHttpHeaders): gen_qhttpheaders_types.QHttpHeaders =
  let tmp = gen_qhttpheaders_types.QHttpHeaders(h: fcQHttpHeaders_new2(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qhttpheaders_types.QHttpHeaders): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQHttpHeaders_staticMetaObject())
