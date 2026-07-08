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


import ./gen_qnetworkrequestfactory_types
export gen_qnetworkrequestfactory_types

import
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qurlquery_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qhttpheaders_types,
  ./gen_qnetworkrequest_types,
  ./gen_qsslconfiguration_types
export
  gen_qurl_types,
  gen_qurlquery_types,
  gen_qvariant_types,
  gen_qhttpheaders_types,
  gen_qnetworkrequest_types,
  gen_qsslconfiguration_types

type cQNetworkRequestFactory*{.exportc: "QNetworkRequestFactory", incompleteStruct.} = object

proc fcQNetworkRequestFactory_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QNetworkRequestFactory_operatorAssign".}
proc fcQNetworkRequestFactory_swap(self: pointer, other: pointer): void {.importc: "QNetworkRequestFactory_swap".}
proc fcQNetworkRequestFactory_baseUrl(self: pointer): pointer {.importc: "QNetworkRequestFactory_baseUrl".}
proc fcQNetworkRequestFactory_setBaseUrl(self: pointer, url: pointer): void {.importc: "QNetworkRequestFactory_setBaseUrl".}
proc fcQNetworkRequestFactory_sslConfiguration(self: pointer): pointer {.importc: "QNetworkRequestFactory_sslConfiguration".}
proc fcQNetworkRequestFactory_setSslConfiguration(self: pointer, configuration: pointer): void {.importc: "QNetworkRequestFactory_setSslConfiguration".}
proc fcQNetworkRequestFactory_createRequest(self: pointer): pointer {.importc: "QNetworkRequestFactory_createRequest".}
proc fcQNetworkRequestFactory_createRequestQuery(self: pointer, query: pointer): pointer {.importc: "QNetworkRequestFactory_createRequest_query".}
proc fcQNetworkRequestFactory_createRequestPath(self: pointer, path: struct_seaqt_string): pointer {.importc: "QNetworkRequestFactory_createRequest_path".}
proc fcQNetworkRequestFactory_createRequestPathQuery(self: pointer, path: struct_seaqt_string, query: pointer): pointer {.importc: "QNetworkRequestFactory_createRequest_path_query".}
proc fcQNetworkRequestFactory_setCommonHeaders(self: pointer, headers: pointer): void {.importc: "QNetworkRequestFactory_setCommonHeaders".}
proc fcQNetworkRequestFactory_commonHeaders(self: pointer): pointer {.importc: "QNetworkRequestFactory_commonHeaders".}
proc fcQNetworkRequestFactory_clearCommonHeaders(self: pointer): void {.importc: "QNetworkRequestFactory_clearCommonHeaders".}
proc fcQNetworkRequestFactory_bearerToken(self: pointer): struct_seaqt_string {.importc: "QNetworkRequestFactory_bearerToken".}
proc fcQNetworkRequestFactory_setBearerToken(self: pointer, token: struct_seaqt_string): void {.importc: "QNetworkRequestFactory_setBearerToken".}
proc fcQNetworkRequestFactory_clearBearerToken(self: pointer): void {.importc: "QNetworkRequestFactory_clearBearerToken".}
proc fcQNetworkRequestFactory_userName(self: pointer): struct_seaqt_string {.importc: "QNetworkRequestFactory_userName".}
proc fcQNetworkRequestFactory_setUserName(self: pointer, userName: struct_seaqt_string): void {.importc: "QNetworkRequestFactory_setUserName".}
proc fcQNetworkRequestFactory_clearUserName(self: pointer): void {.importc: "QNetworkRequestFactory_clearUserName".}
proc fcQNetworkRequestFactory_password(self: pointer): struct_seaqt_string {.importc: "QNetworkRequestFactory_password".}
proc fcQNetworkRequestFactory_setPassword(self: pointer, password: struct_seaqt_string): void {.importc: "QNetworkRequestFactory_setPassword".}
proc fcQNetworkRequestFactory_clearPassword(self: pointer): void {.importc: "QNetworkRequestFactory_clearPassword".}
proc fcQNetworkRequestFactory_queryParameters(self: pointer): pointer {.importc: "QNetworkRequestFactory_queryParameters".}
proc fcQNetworkRequestFactory_setQueryParameters(self: pointer, query: pointer): void {.importc: "QNetworkRequestFactory_setQueryParameters".}
proc fcQNetworkRequestFactory_clearQueryParameters(self: pointer): void {.importc: "QNetworkRequestFactory_clearQueryParameters".}
proc fcQNetworkRequestFactory_setPriority(self: pointer, priority: cint): void {.importc: "QNetworkRequestFactory_setPriority".}
proc fcQNetworkRequestFactory_priority(self: pointer): cint {.importc: "QNetworkRequestFactory_priority".}
proc fcQNetworkRequestFactory_attributeAttribute(self: pointer, attribute: cint): pointer {.importc: "QNetworkRequestFactory_attribute_attribute".}
proc fcQNetworkRequestFactory_attributeAttributeDefaultValue(self: pointer, attribute: cint, defaultValue: pointer): pointer {.importc: "QNetworkRequestFactory_attribute_attribute_defaultValue".}
proc fcQNetworkRequestFactory_setAttribute(self: pointer, attribute: cint, value: pointer): void {.importc: "QNetworkRequestFactory_setAttribute".}
proc fcQNetworkRequestFactory_clearAttribute(self: pointer, attribute: cint): void {.importc: "QNetworkRequestFactory_clearAttribute".}
proc fcQNetworkRequestFactory_clearAttributes(self: pointer): void {.importc: "QNetworkRequestFactory_clearAttributes".}
proc fcQNetworkRequestFactory_new(): ptr cQNetworkRequestFactory {.importc: "QNetworkRequestFactory_new".}
proc fcQNetworkRequestFactory_new2(baseUrl: pointer): ptr cQNetworkRequestFactory {.importc: "QNetworkRequestFactory_new_baseUrl".}
proc fcQNetworkRequestFactory_new3(fromVal: pointer): ptr cQNetworkRequestFactory {.importc: "QNetworkRequestFactory_new_from".}

proc operatorAssign*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, fromVal: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): void =
  fcQNetworkRequestFactory_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, other: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): void =
  fcQNetworkRequestFactory_swap(self.h, other.h)

proc baseUrl*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQNetworkRequestFactory_baseUrl(self.h), owned: true)

proc setBaseUrl*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, url: gen_qurl_types.QUrl): void =
  fcQNetworkRequestFactory_setBaseUrl(self.h, url.h)

proc sslConfiguration*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): gen_qsslconfiguration_types.QSslConfiguration =
  gen_qsslconfiguration_types.QSslConfiguration(h: fcQNetworkRequestFactory_sslConfiguration(self.h), owned: true)

proc setSslConfiguration*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, configuration: gen_qsslconfiguration_types.QSslConfiguration): void =
  fcQNetworkRequestFactory_setSslConfiguration(self.h, configuration.h)

proc createRequest*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQNetworkRequestFactory_createRequest(self.h), owned: true)

proc createRequest*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, query: gen_qurlquery_types.QUrlQuery): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQNetworkRequestFactory_createRequestQuery(self.h, query.h), owned: true)

proc createRequest*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, path: openArray[char]): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQNetworkRequestFactory_createRequestPath(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path)))), owned: true)

proc createRequest*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, path: openArray[char], query: gen_qurlquery_types.QUrlQuery): gen_qnetworkrequest_types.QNetworkRequest =
  gen_qnetworkrequest_types.QNetworkRequest(h: fcQNetworkRequestFactory_createRequestPathQuery(self.h, struct_seaqt_string(data: if len(path) > 0: addr path[0] else: nil, len: csize_t(len(path))), query.h), owned: true)

proc setCommonHeaders*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, headers: gen_qhttpheaders_types.QHttpHeaders): void =
  fcQNetworkRequestFactory_setCommonHeaders(self.h, headers.h)

proc commonHeaders*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): gen_qhttpheaders_types.QHttpHeaders =
  gen_qhttpheaders_types.QHttpHeaders(h: fcQNetworkRequestFactory_commonHeaders(self.h), owned: true)

proc clearCommonHeaders*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): void =
  fcQNetworkRequestFactory_clearCommonHeaders(self.h)

proc bearerToken*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): seq[byte] =
  var v_bytearray = fcQNetworkRequestFactory_bearerToken(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setBearerToken*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, token: openArray[byte]): void =
  fcQNetworkRequestFactory_setBearerToken(self.h, struct_seaqt_string(data: if len(token) > 0: addr token[0] else: nil, len: csize_t(len(token))))

proc clearBearerToken*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): void =
  fcQNetworkRequestFactory_clearBearerToken(self.h)

proc userName*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): string =
  let v_ms = fcQNetworkRequestFactory_userName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setUserName*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, userName: openArray[char]): void =
  fcQNetworkRequestFactory_setUserName(self.h, struct_seaqt_string(data: if len(userName) > 0: addr userName[0] else: nil, len: csize_t(len(userName))))

proc clearUserName*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): void =
  fcQNetworkRequestFactory_clearUserName(self.h)

proc password*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): string =
  let v_ms = fcQNetworkRequestFactory_password(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setPassword*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, password: openArray[char]): void =
  fcQNetworkRequestFactory_setPassword(self.h, struct_seaqt_string(data: if len(password) > 0: addr password[0] else: nil, len: csize_t(len(password))))

proc clearPassword*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): void =
  fcQNetworkRequestFactory_clearPassword(self.h)

proc queryParameters*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): gen_qurlquery_types.QUrlQuery =
  gen_qurlquery_types.QUrlQuery(h: fcQNetworkRequestFactory_queryParameters(self.h), owned: true)

proc setQueryParameters*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, query: gen_qurlquery_types.QUrlQuery): void =
  fcQNetworkRequestFactory_setQueryParameters(self.h, query.h)

proc clearQueryParameters*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): void =
  fcQNetworkRequestFactory_clearQueryParameters(self.h)

proc setPriority*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, priority: cint): void =
  fcQNetworkRequestFactory_setPriority(self.h, cint(priority))

proc priority*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): cint =
  cint(fcQNetworkRequestFactory_priority(self.h))

proc attribute*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, attribute: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkRequestFactory_attributeAttribute(self.h, cint(attribute)), owned: true)

proc attribute*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, attribute: cint, defaultValue: gen_qvariant_types.QVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkRequestFactory_attributeAttributeDefaultValue(self.h, cint(attribute), defaultValue.h), owned: true)

proc setAttribute*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, attribute: cint, value: gen_qvariant_types.QVariant): void =
  fcQNetworkRequestFactory_setAttribute(self.h, cint(attribute), value.h)

proc clearAttribute*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory, attribute: cint): void =
  fcQNetworkRequestFactory_clearAttribute(self.h, cint(attribute))

proc clearAttributes*(self: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): void =
  fcQNetworkRequestFactory_clearAttributes(self.h)

proc create*(T: type gen_qnetworkrequestfactory_types.QNetworkRequestFactory): gen_qnetworkrequestfactory_types.QNetworkRequestFactory =
  let tmp = gen_qnetworkrequestfactory_types.QNetworkRequestFactory(h: fcQNetworkRequestFactory_new(), owned: true)
  tmp
proc create*(T: type gen_qnetworkrequestfactory_types.QNetworkRequestFactory,
    baseUrl: gen_qurl_types.QUrl): gen_qnetworkrequestfactory_types.QNetworkRequestFactory =
  let tmp = gen_qnetworkrequestfactory_types.QNetworkRequestFactory(h: fcQNetworkRequestFactory_new2(baseUrl.h), owned: true)
  tmp
proc create*(T: type gen_qnetworkrequestfactory_types.QNetworkRequestFactory,
    fromVal: gen_qnetworkrequestfactory_types.QNetworkRequestFactory): gen_qnetworkrequestfactory_types.QNetworkRequestFactory =
  let tmp = gen_qnetworkrequestfactory_types.QNetworkRequestFactory(h: fcQNetworkRequestFactory_new3(fromVal.h), owned: true)
  tmp
