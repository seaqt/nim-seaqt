import ./qtcore_pkg

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


type QUrlParsingModeEnum* = distinct cint
template TolerantMode*(_: type QUrlParsingModeEnum): untyped = 0
template StrictMode*(_: type QUrlParsingModeEnum): untyped = 1
template DecodedMode*(_: type QUrlParsingModeEnum): untyped = 2


type QUrlUrlFormattingOptionEnum* = distinct cuint
template None*(_: type QUrlUrlFormattingOptionEnum): untyped = 0
template RemoveScheme*(_: type QUrlUrlFormattingOptionEnum): untyped = 1
template RemovePassword*(_: type QUrlUrlFormattingOptionEnum): untyped = 2
template RemoveUserInfo*(_: type QUrlUrlFormattingOptionEnum): untyped = 6
template RemovePort*(_: type QUrlUrlFormattingOptionEnum): untyped = 8
template RemoveAuthority*(_: type QUrlUrlFormattingOptionEnum): untyped = 30
template RemovePath*(_: type QUrlUrlFormattingOptionEnum): untyped = 32
template RemoveQuery*(_: type QUrlUrlFormattingOptionEnum): untyped = 64
template RemoveFragment*(_: type QUrlUrlFormattingOptionEnum): untyped = 128
template PreferLocalFile*(_: type QUrlUrlFormattingOptionEnum): untyped = 512
template StripTrailingSlash*(_: type QUrlUrlFormattingOptionEnum): untyped = 1024
template RemoveFilename*(_: type QUrlUrlFormattingOptionEnum): untyped = 2048
template NormalizePathSegments*(_: type QUrlUrlFormattingOptionEnum): untyped = 4096


type QUrlComponentFormattingOptionEnum* = distinct cuint
template PrettyDecoded*(_: type QUrlComponentFormattingOptionEnum): untyped = 0
template EncodeSpaces*(_: type QUrlComponentFormattingOptionEnum): untyped = 1048576
template EncodeUnicode*(_: type QUrlComponentFormattingOptionEnum): untyped = 2097152
template EncodeDelimiters*(_: type QUrlComponentFormattingOptionEnum): untyped = 12582912
template EncodeReserved*(_: type QUrlComponentFormattingOptionEnum): untyped = 16777216
template DecodeReserved*(_: type QUrlComponentFormattingOptionEnum): untyped = 33554432
template FullyEncoded*(_: type QUrlComponentFormattingOptionEnum): untyped = 32505856
template FullyDecoded*(_: type QUrlComponentFormattingOptionEnum): untyped = 133169152


type QUrlUserInputResolutionOptionEnum* = distinct cint
template DefaultResolution*(_: type QUrlUserInputResolutionOptionEnum): untyped = 0
template AssumeLocalFile*(_: type QUrlUserInputResolutionOptionEnum): untyped = 1


type QUrlAceProcessingOptionEnum* = distinct cuint
template IgnoreIDNWhitelist*(_: type QUrlAceProcessingOptionEnum): untyped = 1
template AceTransitionalProcessing*(_: type QUrlAceProcessingOptionEnum): untyped = 2


import ./gen_qurl_types
export gen_qurl_types

import
  ./gen_qurlquery_types
export
  gen_qurlquery_types

type cQUrl*{.exportc: "QUrl", incompleteStruct.} = object

proc fcQUrl_operatorAssignFrom(self: pointer, fromVal: pointer): void {.importc: "QUrl_operatorAssign_from".}
proc fcQUrl_operatorAssignUrl(self: pointer, url: struct_seaqt_string): void {.importc: "QUrl_operatorAssign_url".}
proc fcQUrl_swap(self: pointer, other: pointer): void {.importc: "QUrl_swap".}
proc fcQUrl_setUrlUrl(self: pointer, url: struct_seaqt_string): void {.importc: "QUrl_setUrl_url".}
proc fcQUrl_url(self: pointer): struct_seaqt_string {.importc: "QUrl_url".}
proc fcQUrl_toString(self: pointer): struct_seaqt_string {.importc: "QUrl_toString".}
proc fcQUrl_toDisplayString(self: pointer): struct_seaqt_string {.importc: "QUrl_toDisplayString".}
proc fcQUrl_toEncoded(self: pointer): struct_seaqt_string {.importc: "QUrl_toEncoded".}
proc fcQUrl_fromEncodedUrl(url: struct_seaqt_string): pointer {.importc: "QUrl_fromEncoded_url".}
proc fcQUrl_fromUserInputUserInput(userInput: struct_seaqt_string): pointer {.importc: "QUrl_fromUserInput_userInput".}
proc fcQUrl_isValid(self: pointer): bool {.importc: "QUrl_isValid".}
proc fcQUrl_errorString(self: pointer): struct_seaqt_string {.importc: "QUrl_errorString".}
proc fcQUrl_isEmpty(self: pointer): bool {.importc: "QUrl_isEmpty".}
proc fcQUrl_clear(self: pointer): void {.importc: "QUrl_clear".}
proc fcQUrl_setScheme(self: pointer, scheme: struct_seaqt_string): void {.importc: "QUrl_setScheme".}
proc fcQUrl_scheme(self: pointer): struct_seaqt_string {.importc: "QUrl_scheme".}
proc fcQUrl_setAuthorityAuthority(self: pointer, authority: struct_seaqt_string): void {.importc: "QUrl_setAuthority_authority".}
proc fcQUrl_authority(self: pointer): struct_seaqt_string {.importc: "QUrl_authority".}
proc fcQUrl_setUserInfoUserInfo(self: pointer, userInfo: struct_seaqt_string): void {.importc: "QUrl_setUserInfo_userInfo".}
proc fcQUrl_userInfo(self: pointer): struct_seaqt_string {.importc: "QUrl_userInfo".}
proc fcQUrl_setUserNameUserName(self: pointer, userName: struct_seaqt_string): void {.importc: "QUrl_setUserName_userName".}
proc fcQUrl_userName(self: pointer): struct_seaqt_string {.importc: "QUrl_userName".}
proc fcQUrl_setPasswordPassword(self: pointer, password: struct_seaqt_string): void {.importc: "QUrl_setPassword_password".}
proc fcQUrl_password(self: pointer): struct_seaqt_string {.importc: "QUrl_password".}
proc fcQUrl_setHostHost(self: pointer, host: struct_seaqt_string): void {.importc: "QUrl_setHost_host".}
proc fcQUrl_host(self: pointer): struct_seaqt_string {.importc: "QUrl_host".}
proc fcQUrl_setPort(self: pointer, port: cint): void {.importc: "QUrl_setPort".}
proc fcQUrl_port(self: pointer): cint {.importc: "QUrl_port".}
proc fcQUrl_setPathPath(self: pointer, path: struct_seaqt_string): void {.importc: "QUrl_setPath_path".}
proc fcQUrl_path(self: pointer): struct_seaqt_string {.importc: "QUrl_path".}
proc fcQUrl_fileName(self: pointer): struct_seaqt_string {.importc: "QUrl_fileName".}
proc fcQUrl_hasQuery(self: pointer): bool {.importc: "QUrl_hasQuery".}
proc fcQUrl_setQuery_QString(self: pointer, query: struct_seaqt_string): void {.importc: "QUrl_setQuery_QString".}
proc fcQUrl_setQuery_QUrlQuery(self: pointer, query: pointer): void {.importc: "QUrl_setQuery_QUrlQuery".}
proc fcQUrl_query(self: pointer): struct_seaqt_string {.importc: "QUrl_query".}
proc fcQUrl_hasFragment(self: pointer): bool {.importc: "QUrl_hasFragment".}
proc fcQUrl_fragment(self: pointer): struct_seaqt_string {.importc: "QUrl_fragment".}
proc fcQUrl_setFragmentFragment(self: pointer, fragment: struct_seaqt_string): void {.importc: "QUrl_setFragment_fragment".}
proc fcQUrl_resolved(self: pointer, relative: pointer): pointer {.importc: "QUrl_resolved".}
proc fcQUrl_isRelative(self: pointer): bool {.importc: "QUrl_isRelative".}
proc fcQUrl_isParentOf(self: pointer, url: pointer): bool {.importc: "QUrl_isParentOf".}
proc fcQUrl_isLocalFile(self: pointer): bool {.importc: "QUrl_isLocalFile".}
proc fcQUrl_fromLocalFile(localfile: struct_seaqt_string): pointer {.importc: "QUrl_fromLocalFile".}
proc fcQUrl_toLocalFile(self: pointer): struct_seaqt_string {.importc: "QUrl_toLocalFile".}
proc fcQUrl_detach(self: pointer): void {.importc: "QUrl_detach".}
proc fcQUrl_isDetached(self: pointer): bool {.importc: "QUrl_isDetached".}
proc fcQUrl_operatorLesser(self: pointer, url: pointer): bool {.importc: "QUrl_operatorLesser".}
proc fcQUrl_operatorEqual(self: pointer, url: pointer): bool {.importc: "QUrl_operatorEqual".}
proc fcQUrl_operatorNotEqual(self: pointer, url: pointer): bool {.importc: "QUrl_operatorNotEqual".}
proc fcQUrl_fromPercentEncoding(param1: struct_seaqt_string): struct_seaqt_string {.importc: "QUrl_fromPercentEncoding".}
proc fcQUrl_toPercentEncoding_QString(param1: struct_seaqt_string): struct_seaqt_string {.importc: "QUrl_toPercentEncoding_QString".}
proc fcQUrl_fromAceDomain(domain: struct_seaqt_string): struct_seaqt_string {.importc: "QUrl_fromAce_domain".}
proc fcQUrl_toAceDomain(domain: struct_seaqt_string): struct_seaqt_string {.importc: "QUrl_toAce_domain".}
proc fcQUrl_idnWhitelist(): struct_seaqt_array {.importc: "QUrl_idnWhitelist".}
proc fcQUrl_toStringListUris(uris: struct_seaqt_array): struct_seaqt_array {.importc: "QUrl_toStringList_uris".}
proc fcQUrl_fromStringListUris(uris: struct_seaqt_array): struct_seaqt_array {.importc: "QUrl_fromStringList_uris".}
proc fcQUrl_setIdnWhitelist(idnWhitelist: struct_seaqt_array): void {.importc: "QUrl_setIdnWhitelist".}
proc fcQUrl_setUrlUrlMode(self: pointer, url: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setUrl_url_mode".}
proc fcQUrl_fromEncodedUrlMode(url: struct_seaqt_string, mode: cint): pointer {.importc: "QUrl_fromEncoded_url_mode".}
proc fcQUrl_fromUserInputUserInputWorkingDirectory(userInput: struct_seaqt_string, workingDirectory: struct_seaqt_string): pointer {.importc: "QUrl_fromUserInput_userInput_workingDirectory".}
proc fcQUrl_fromUserInputUserInputWorkingDirectoryOptions(userInput: struct_seaqt_string, workingDirectory: struct_seaqt_string, options: cint): pointer {.importc: "QUrl_fromUserInput_userInput_workingDirectory_options".}
proc fcQUrl_setAuthorityAuthorityMode(self: pointer, authority: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setAuthority_authority_mode".}
proc fcQUrl_authorityOptions(self: pointer, options: cint): struct_seaqt_string {.importc: "QUrl_authority_options".}
proc fcQUrl_setUserInfoUserInfoMode(self: pointer, userInfo: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setUserInfo_userInfo_mode".}
proc fcQUrl_userInfoOptions(self: pointer, options: cint): struct_seaqt_string {.importc: "QUrl_userInfo_options".}
proc fcQUrl_setUserNameUserNameMode(self: pointer, userName: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setUserName_userName_mode".}
proc fcQUrl_userNameOptions(self: pointer, options: cint): struct_seaqt_string {.importc: "QUrl_userName_options".}
proc fcQUrl_setPasswordPasswordMode(self: pointer, password: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setPassword_password_mode".}
proc fcQUrl_password_QUrl_ComponentFormattingOptions(self: pointer, param1: cint): struct_seaqt_string {.importc: "QUrl_password_QUrl_ComponentFormattingOptions".}
proc fcQUrl_setHostHostMode(self: pointer, host: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setHost_host_mode".}
proc fcQUrl_host_QUrl_ComponentFormattingOptions(self: pointer, param1: cint): struct_seaqt_string {.importc: "QUrl_host_QUrl_ComponentFormattingOptions".}
proc fcQUrl_portDefaultPort(self: pointer, defaultPort: cint): cint {.importc: "QUrl_port_defaultPort".}
proc fcQUrl_setPathPathMode(self: pointer, path: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setPath_path_mode".}
proc fcQUrl_pathOptions(self: pointer, options: cint): struct_seaqt_string {.importc: "QUrl_path_options".}
proc fcQUrl_fileNameOptions(self: pointer, options: cint): struct_seaqt_string {.importc: "QUrl_fileName_options".}
proc fcQUrl_setQuery_QString_QUrl_ParsingMode(self: pointer, query: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setQuery_QString_QUrl_ParsingMode".}
proc fcQUrl_query_QUrl_ComponentFormattingOptions(self: pointer, param1: cint): struct_seaqt_string {.importc: "QUrl_query_QUrl_ComponentFormattingOptions".}
proc fcQUrl_fragmentOptions(self: pointer, options: cint): struct_seaqt_string {.importc: "QUrl_fragment_options".}
proc fcQUrl_setFragmentFragmentMode(self: pointer, fragment: struct_seaqt_string, mode: cint): void {.importc: "QUrl_setFragment_fragment_mode".}
proc fcQUrl_toPercentEncoding_QString_QByteArray(param1: struct_seaqt_string, exclude: struct_seaqt_string): struct_seaqt_string {.importc: "QUrl_toPercentEncoding_QString_QByteArray".}
proc fcQUrl_toPercentEncoding_QString_QByteArray_QByteArray(param1: struct_seaqt_string, exclude: struct_seaqt_string, includeVal: struct_seaqt_string): struct_seaqt_string {.importc: "QUrl_toPercentEncoding_QString_QByteArray_QByteArray".}
proc fcQUrl_fromAceDomainOptions(domain: struct_seaqt_string, options: cint): struct_seaqt_string {.importc: "QUrl_fromAce_domain_options".}
proc fcQUrl_toAceDomainOptions(domain: struct_seaqt_string, options: cint): struct_seaqt_string {.importc: "QUrl_toAce_domain_options".}
proc fcQUrl_fromStringListUrisMode(uris: struct_seaqt_array, mode: cint): struct_seaqt_array {.importc: "QUrl_fromStringList_uris_mode".}
proc fcQUrl_new(): ptr cQUrl {.importc: "QUrl_new".}
proc fcQUrl_new2(fromVal: pointer): ptr cQUrl {.importc: "QUrl_new_from".}
proc fcQUrl_new3(url: struct_seaqt_string): ptr cQUrl {.importc: "QUrl_new_url".}
proc fcQUrl_new4(url: struct_seaqt_string, mode: cint): ptr cQUrl {.importc: "QUrl_new_url_mode".}

proc operatorAssign*(self: gen_qurl_types.QUrl, fromVal: gen_qurl_types.QUrl): void =
  fcQUrl_operatorAssignFrom(self.h, fromVal.h)

proc operatorAssign*(self: gen_qurl_types.QUrl, url: openArray[char]): void =
  fcQUrl_operatorAssignUrl(self.h, struct_seaqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url))))

proc swap*(self: gen_qurl_types.QUrl, other: gen_qurl_types.QUrl): void =
  fcQUrl_swap(self.h, other.h)

proc setUrl*(self: gen_qurl_types.QUrl, url: openArray[char]): void =
  fcQUrl_setUrlUrl(self.h, struct_seaqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url))))

proc url*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_url(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toDisplayString*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_toDisplayString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toEncoded*(self: gen_qurl_types.QUrl): seq[byte] =
  var v_bytearray = fcQUrl_toEncoded(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromEncoded*(_: type gen_qurl_types.QUrl, url: openArray[byte]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQUrl_fromEncodedUrl(struct_seaqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url)))), owned: true)

proc fromUserInput*(_: type gen_qurl_types.QUrl, userInput: openArray[char]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQUrl_fromUserInputUserInput(struct_seaqt_string(data: if len(userInput) > 0: addr userInput[0] else: nil, len: csize_t(len(userInput)))), owned: true)

proc isValid*(self: gen_qurl_types.QUrl): bool =
  fcQUrl_isValid(self.h)

proc errorString*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_errorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isEmpty*(self: gen_qurl_types.QUrl): bool =
  fcQUrl_isEmpty(self.h)

proc clear*(self: gen_qurl_types.QUrl): void =
  fcQUrl_clear(self.h)

proc setScheme*(self: gen_qurl_types.QUrl, scheme: openArray[char]): void =
  fcQUrl_setScheme(self.h, struct_seaqt_string(data: if len(scheme) > 0: addr scheme[0] else: nil, len: csize_t(len(scheme))))

proc scheme*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_scheme(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setAuthority*(self: gen_qurl_types.QUrl, authority: openArray[char]): void =
  fcQUrl_setAuthorityAuthority(self.h, struct_seaqt_string(data: if len(authority) > 0: addr authority[0] else: nil, len: csize_t(len(authority))))

proc authority*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_authority(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUserInfo*(self: gen_qurl_types.QUrl, userInfo: openArray[char]): void =
  fcQUrl_setUserInfoUserInfo(self.h, struct_seaqt_string(data: if len(userInfo) > 0: addr userInfo[0] else: nil, len: csize_t(len(userInfo))))

proc userInfo*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_userInfo(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUserName*(self: gen_qurl_types.QUrl, userName: openArray[char]): void =
  fcQUrl_setUserNameUserName(self.h, struct_seaqt_string(data: if len(userName) > 0: addr userName[0] else: nil, len: csize_t(len(userName))))

proc userName*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_userName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPassword*(self: gen_qurl_types.QUrl, password: openArray[char]): void =
  fcQUrl_setPasswordPassword(self.h, struct_seaqt_string(data: if len(password) > 0: addr password[0] else: nil, len: csize_t(len(password))))

proc password*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_password(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHost*(self: gen_qurl_types.QUrl, host: openArray[char]): void =
  fcQUrl_setHostHost(self.h, struct_seaqt_string(data: if len(host) > 0: addr host[0] else: nil, len: csize_t(len(host))))

proc host*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_host(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPort*(self: gen_qurl_types.QUrl, port: cint): void =
  fcQUrl_setPort(self.h, port)

proc port*(self: gen_qurl_types.QUrl): cint =
  fcQUrl_port(self.h)

proc setPath*(self: gen_qurl_types.QUrl, path: openArray[char]): void =
  fcQUrl_setPathPath(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))))

proc path*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_path(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasQuery*(self: gen_qurl_types.QUrl): bool =
  fcQUrl_hasQuery(self.h)

proc setQuery*(self: gen_qurl_types.QUrl, query: openArray[char]): void =
  fcQUrl_setQuery_QString(self.h, struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query))))

proc setQuery*(self: gen_qurl_types.QUrl, query: gen_qurlquery_types.QUrlQuery): void =
  fcQUrl_setQuery_QUrlQuery(self.h, query.h)

proc query*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_query(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc hasFragment*(self: gen_qurl_types.QUrl): bool =
  fcQUrl_hasFragment(self.h)

proc fragment*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_fragment(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFragment*(self: gen_qurl_types.QUrl, fragment: openArray[char]): void =
  fcQUrl_setFragmentFragment(self.h, struct_seaqt_string(data: if len(fragment) > 0: addr fragment[0] else: nil, len: csize_t(len(fragment))))

proc resolved*(self: gen_qurl_types.QUrl, relative: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQUrl_resolved(self.h, relative.h), owned: true)

proc isRelative*(self: gen_qurl_types.QUrl): bool =
  fcQUrl_isRelative(self.h)

proc isParentOf*(self: gen_qurl_types.QUrl, url: gen_qurl_types.QUrl): bool =
  fcQUrl_isParentOf(self.h, url.h)

proc isLocalFile*(self: gen_qurl_types.QUrl): bool =
  fcQUrl_isLocalFile(self.h)

proc fromLocalFile*(_: type gen_qurl_types.QUrl, localfile: openArray[char]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQUrl_fromLocalFile(struct_seaqt_string(data: if len(localfile) > 0: addr localfile[0] else: nil, len: csize_t(len(localfile)))), owned: true)

proc toLocalFile*(self: gen_qurl_types.QUrl): string =
  let v_ms = fcQUrl_toLocalFile(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc detach*(self: gen_qurl_types.QUrl): void =
  fcQUrl_detach(self.h)

proc isDetached*(self: gen_qurl_types.QUrl): bool =
  fcQUrl_isDetached(self.h)

proc operatorLesser*(self: gen_qurl_types.QUrl, url: gen_qurl_types.QUrl): bool =
  fcQUrl_operatorLesser(self.h, url.h)

proc operatorEqual*(self: gen_qurl_types.QUrl, url: gen_qurl_types.QUrl): bool =
  fcQUrl_operatorEqual(self.h, url.h)

proc operatorNotEqual*(self: gen_qurl_types.QUrl, url: gen_qurl_types.QUrl): bool =
  fcQUrl_operatorNotEqual(self.h, url.h)

proc fromPercentEncoding*(_: type gen_qurl_types.QUrl, param1: openArray[byte]): string =
  let v_ms = fcQUrl_fromPercentEncoding(struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toPercentEncoding*(_: type gen_qurl_types.QUrl, param1: openArray[char]): seq[byte] =
  var v_bytearray = fcQUrl_toPercentEncoding_QString(struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromAce*(_: type gen_qurl_types.QUrl, domain: openArray[byte]): string =
  let v_ms = fcQUrl_fromAceDomain(struct_seaqt_string(data: if len(domain) > 0: addr domain[0] else: nil, len: csize_t(len(domain))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toAce*(_: type gen_qurl_types.QUrl, domain: openArray[char]): seq[byte] =
  var v_bytearray = fcQUrl_toAceDomain(struct_seaqt_string(data: if len(domain) > 0: addr domain[0] else: nil, len: csize_t(len(domain))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc idnWhitelist*(_: type gen_qurl_types.QUrl): seq[string] =
  var v_ma = fcQUrl_idnWhitelist()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc toStringList*(_: type gen_qurl_types.QUrl, uris: openArray[gen_qurl_types.QUrl]): seq[string] =
  var uris_CArray = newSeq[pointer](len(uris))
  for i in 0..<len(uris):
    uris_CArray[i] = uris[i].h

  var v_ma = fcQUrl_toStringListUris(struct_seaqt_array(len: csize_t(len(uris)), data: if len(uris) == 0: nil else: addr(uris_CArray[0])))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_seaqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc fromStringList*(_: type gen_qurl_types.QUrl, uris: openArray[string]): seq[gen_qurl_types.QUrl] =
  var uris_CArray = newSeq[struct_seaqt_string](len(uris))
  for i in 0..<len(uris):
    uris_CArray[i] = struct_seaqt_string(data: if len(uris[i]) > 0: addr uris[i][0] else: nil, len: csize_t(len(uris[i])))

  var v_ma = fcQUrl_fromStringListUris(struct_seaqt_array(len: csize_t(len(uris)), data: if len(uris) == 0: nil else: addr(uris_CArray[0])))
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setIdnWhitelist*(_: type gen_qurl_types.QUrl, idnWhitelist: openArray[string]): void =
  var idnWhitelist_CArray = newSeq[struct_seaqt_string](len(idnWhitelist))
  for i in 0..<len(idnWhitelist):
    idnWhitelist_CArray[i] = struct_seaqt_string(data: if len(idnWhitelist[i]) > 0: addr idnWhitelist[i][0] else: nil, len: csize_t(len(idnWhitelist[i])))

  fcQUrl_setIdnWhitelist(struct_seaqt_array(len: csize_t(len(idnWhitelist)), data: if len(idnWhitelist) == 0: nil else: addr(idnWhitelist_CArray[0])))

proc setUrl*(self: gen_qurl_types.QUrl, url: openArray[char], mode: cint): void =
  fcQUrl_setUrlUrlMode(self.h, struct_seaqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url))), cint(mode))

proc fromEncoded*(_: type gen_qurl_types.QUrl, url: openArray[byte], mode: cint): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQUrl_fromEncodedUrlMode(struct_seaqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url))), cint(mode)), owned: true)

proc fromUserInput*(_: type gen_qurl_types.QUrl, userInput: openArray[char], workingDirectory: openArray[char]): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQUrl_fromUserInputUserInputWorkingDirectory(struct_seaqt_string(data: if len(userInput) > 0: addr userInput[0] else: nil, len: csize_t(len(userInput))), struct_seaqt_string(data: if len(workingDirectory) > 0: addr workingDirectory[0] else: nil, len: csize_t(len(workingDirectory)))), owned: true)

proc fromUserInput*(_: type gen_qurl_types.QUrl, userInput: openArray[char], workingDirectory: openArray[char], options: cint): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQUrl_fromUserInputUserInputWorkingDirectoryOptions(struct_seaqt_string(data: if len(userInput) > 0: addr userInput[0] else: nil, len: csize_t(len(userInput))), struct_seaqt_string(data: if len(workingDirectory) > 0: addr workingDirectory[0] else: nil, len: csize_t(len(workingDirectory))), cint(options)), owned: true)

proc setAuthority*(self: gen_qurl_types.QUrl, authority: openArray[char], mode: cint): void =
  fcQUrl_setAuthorityAuthorityMode(self.h, struct_seaqt_string(data: if len(authority) > 0: addr authority[0] else: nil, len: csize_t(len(authority))), cint(mode))

proc authority*(self: gen_qurl_types.QUrl, options: cint): string =
  let v_ms = fcQUrl_authorityOptions(self.h, cint(options))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUserInfo*(self: gen_qurl_types.QUrl, userInfo: openArray[char], mode: cint): void =
  fcQUrl_setUserInfoUserInfoMode(self.h, struct_seaqt_string(data: if len(userInfo) > 0: addr userInfo[0] else: nil, len: csize_t(len(userInfo))), cint(mode))

proc userInfo*(self: gen_qurl_types.QUrl, options: cint): string =
  let v_ms = fcQUrl_userInfoOptions(self.h, cint(options))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUserName*(self: gen_qurl_types.QUrl, userName: openArray[char], mode: cint): void =
  fcQUrl_setUserNameUserNameMode(self.h, struct_seaqt_string(data: if len(userName) > 0: addr userName[0] else: nil, len: csize_t(len(userName))), cint(mode))

proc userName*(self: gen_qurl_types.QUrl, options: cint): string =
  let v_ms = fcQUrl_userNameOptions(self.h, cint(options))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPassword*(self: gen_qurl_types.QUrl, password: openArray[char], mode: cint): void =
  fcQUrl_setPasswordPasswordMode(self.h, struct_seaqt_string(data: if len(password) > 0: addr password[0] else: nil, len: csize_t(len(password))), cint(mode))

proc password*(self: gen_qurl_types.QUrl, param1: cint): string =
  let v_ms = fcQUrl_password_QUrl_ComponentFormattingOptions(self.h, cint(param1))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setHost*(self: gen_qurl_types.QUrl, host: openArray[char], mode: cint): void =
  fcQUrl_setHostHostMode(self.h, struct_seaqt_string(data: if len(host) > 0: addr host[0] else: nil, len: csize_t(len(host))), cint(mode))

proc host*(self: gen_qurl_types.QUrl, param1: cint): string =
  let v_ms = fcQUrl_host_QUrl_ComponentFormattingOptions(self.h, cint(param1))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc port*(self: gen_qurl_types.QUrl, defaultPort: cint): cint =
  fcQUrl_portDefaultPort(self.h, defaultPort)

proc setPath*(self: gen_qurl_types.QUrl, path: openArray[char], mode: cint): void =
  fcQUrl_setPathPathMode(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), cint(mode))

proc path*(self: gen_qurl_types.QUrl, options: cint): string =
  let v_ms = fcQUrl_pathOptions(self.h, cint(options))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: gen_qurl_types.QUrl, options: cint): string =
  let v_ms = fcQUrl_fileNameOptions(self.h, cint(options))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setQuery*(self: gen_qurl_types.QUrl, query: openArray[char], mode: cint): void =
  fcQUrl_setQuery_QString_QUrl_ParsingMode(self.h, struct_seaqt_string(data: if len(query) > 0: addr query[0] else: nil, len: csize_t(len(query))), cint(mode))

proc query*(self: gen_qurl_types.QUrl, param1: cint): string =
  let v_ms = fcQUrl_query_QUrl_ComponentFormattingOptions(self.h, cint(param1))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fragment*(self: gen_qurl_types.QUrl, options: cint): string =
  let v_ms = fcQUrl_fragmentOptions(self.h, cint(options))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFragment*(self: gen_qurl_types.QUrl, fragment: openArray[char], mode: cint): void =
  fcQUrl_setFragmentFragmentMode(self.h, struct_seaqt_string(data: if len(fragment) > 0: addr fragment[0] else: nil, len: csize_t(len(fragment))), cint(mode))

proc toPercentEncoding*(_: type gen_qurl_types.QUrl, param1: openArray[char], exclude: openArray[byte]): seq[byte] =
  var v_bytearray = fcQUrl_toPercentEncoding_QString_QByteArray(struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), struct_seaqt_string(data: if len(exclude) > 0: addr exclude[0] else: nil, len: csize_t(len(exclude))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc toPercentEncoding*(_: type gen_qurl_types.QUrl, param1: openArray[char], exclude: openArray[byte], includeVal: openArray[byte]): seq[byte] =
  var v_bytearray = fcQUrl_toPercentEncoding_QString_QByteArray_QByteArray(struct_seaqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), struct_seaqt_string(data: if len(exclude) > 0: addr exclude[0] else: nil, len: csize_t(len(exclude))), struct_seaqt_string(data: if len(includeVal) > 0: addr includeVal[0] else: nil, len: csize_t(len(includeVal))))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromAce*(_: type gen_qurl_types.QUrl, domain: openArray[byte], options: cint): string =
  let v_ms = fcQUrl_fromAceDomainOptions(struct_seaqt_string(data: if len(domain) > 0: addr domain[0] else: nil, len: csize_t(len(domain))), cint(options))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toAce*(_: type gen_qurl_types.QUrl, domain: openArray[char], options: cint): seq[byte] =
  var v_bytearray = fcQUrl_toAceDomainOptions(struct_seaqt_string(data: if len(domain) > 0: addr domain[0] else: nil, len: csize_t(len(domain))), cint(options))
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc fromStringList*(_: type gen_qurl_types.QUrl, uris: openArray[string], mode: cint): seq[gen_qurl_types.QUrl] =
  var uris_CArray = newSeq[struct_seaqt_string](len(uris))
  for i in 0..<len(uris):
    uris_CArray[i] = struct_seaqt_string(data: if len(uris[i]) > 0: addr uris[i][0] else: nil, len: csize_t(len(uris[i])))

  var v_ma = fcQUrl_fromStringListUrisMode(struct_seaqt_array(len: csize_t(len(uris)), data: if len(uris) == 0: nil else: addr(uris_CArray[0])), cint(mode))
  var vx_ret = newSeq[gen_qurl_types.QUrl](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qurl_types.QUrl(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc create*(T: type gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  let tmp = gen_qurl_types.QUrl(h: fcQUrl_new(), owned: true)
  tmp
proc create*(T: type gen_qurl_types.QUrl,
    fromVal: gen_qurl_types.QUrl): gen_qurl_types.QUrl =
  let tmp = gen_qurl_types.QUrl(h: fcQUrl_new2(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qurl_types.QUrl,
    url: openArray[char]): gen_qurl_types.QUrl =
  let tmp = gen_qurl_types.QUrl(h: fcQUrl_new3(struct_seaqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url)))), owned: true)
  tmp
proc create*(T: type gen_qurl_types.QUrl,
    url: openArray[char], mode: cint): gen_qurl_types.QUrl =
  let tmp = gen_qurl_types.QUrl(h: fcQUrl_new4(struct_seaqt_string(data: if len(url) > 0: addr url[0] else: nil, len: csize_t(len(url))), cint(mode)), owned: true)
  tmp
