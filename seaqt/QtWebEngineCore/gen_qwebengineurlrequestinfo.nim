import ./Qt5WebEngineCore_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebEngineCore") & " -fPIC"
{.compile("gen_qwebengineurlrequestinfo.cpp", cflags).}


type QWebEngineUrlRequestInfoResourceTypeEnum* = distinct cint
template ResourceTypeMainFrame*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 0
template ResourceTypeSubFrame*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 1
template ResourceTypeStylesheet*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 2
template ResourceTypeScript*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 3
template ResourceTypeImage*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 4
template ResourceTypeFontResource*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 5
template ResourceTypeSubResource*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 6
template ResourceTypeObject*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 7
template ResourceTypeMedia*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 8
template ResourceTypeWorker*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 9
template ResourceTypeSharedWorker*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 10
template ResourceTypePrefetch*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 11
template ResourceTypeFavicon*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 12
template ResourceTypeXhr*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 13
template ResourceTypePing*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 14
template ResourceTypeServiceWorker*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 15
template ResourceTypeCspReport*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 16
template ResourceTypePluginResource*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 17
template ResourceTypeNavigationPreloadMainFrame*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 19
template ResourceTypeNavigationPreloadSubFrame*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 20
template ResourceTypeLast*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 20
template ResourceTypeUnknown*(_: type QWebEngineUrlRequestInfoResourceTypeEnum): untyped = 255


type QWebEngineUrlRequestInfoNavigationTypeEnum* = distinct cint
template NavigationTypeLink*(_: type QWebEngineUrlRequestInfoNavigationTypeEnum): untyped = 0
template NavigationTypeTyped*(_: type QWebEngineUrlRequestInfoNavigationTypeEnum): untyped = 1
template NavigationTypeFormSubmitted*(_: type QWebEngineUrlRequestInfoNavigationTypeEnum): untyped = 2
template NavigationTypeBackForward*(_: type QWebEngineUrlRequestInfoNavigationTypeEnum): untyped = 3
template NavigationTypeReload*(_: type QWebEngineUrlRequestInfoNavigationTypeEnum): untyped = 4
template NavigationTypeOther*(_: type QWebEngineUrlRequestInfoNavigationTypeEnum): untyped = 5
template NavigationTypeRedirect*(_: type QWebEngineUrlRequestInfoNavigationTypeEnum): untyped = 6


import ./gen_qwebengineurlrequestinfo_types
export gen_qwebengineurlrequestinfo_types

import
  ../QtCore/gen_qurl_types
export
  gen_qurl_types

type cQWebEngineUrlRequestInfo*{.exportc: "QWebEngineUrlRequestInfo", incompleteStruct.} = object

proc fcQWebEngineUrlRequestInfo_resourceType(self: pointer): cint {.importc: "QWebEngineUrlRequestInfo_resourceType".}
proc fcQWebEngineUrlRequestInfo_navigationType(self: pointer): cint {.importc: "QWebEngineUrlRequestInfo_navigationType".}
proc fcQWebEngineUrlRequestInfo_requestUrl(self: pointer): pointer {.importc: "QWebEngineUrlRequestInfo_requestUrl".}
proc fcQWebEngineUrlRequestInfo_firstPartyUrl(self: pointer): pointer {.importc: "QWebEngineUrlRequestInfo_firstPartyUrl".}
proc fcQWebEngineUrlRequestInfo_initiator(self: pointer): pointer {.importc: "QWebEngineUrlRequestInfo_initiator".}
proc fcQWebEngineUrlRequestInfo_requestMethod(self: pointer): struct_miqt_string {.importc: "QWebEngineUrlRequestInfo_requestMethod".}
proc fcQWebEngineUrlRequestInfo_changed(self: pointer): bool {.importc: "QWebEngineUrlRequestInfo_changed".}
proc fcQWebEngineUrlRequestInfo_blockX(self: pointer, shouldBlock: bool): void {.importc: "QWebEngineUrlRequestInfo_block".}
proc fcQWebEngineUrlRequestInfo_redirect(self: pointer, url: pointer): void {.importc: "QWebEngineUrlRequestInfo_redirect".}
proc fcQWebEngineUrlRequestInfo_setHttpHeader(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebEngineUrlRequestInfo_setHttpHeader".}

proc resourceType*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): cint =
  cint(fcQWebEngineUrlRequestInfo_resourceType(self.h))

proc navigationType*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): cint =
  cint(fcQWebEngineUrlRequestInfo_navigationType(self.h))

proc requestUrl*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineUrlRequestInfo_requestUrl(self.h), owned: true)

proc firstPartyUrl*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineUrlRequestInfo_firstPartyUrl(self.h), owned: true)

proc initiator*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineUrlRequestInfo_initiator(self.h), owned: true)

proc requestMethod*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): seq[byte] =
  var v_bytearray = fcQWebEngineUrlRequestInfo_requestMethod(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc changed*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo): bool =
  fcQWebEngineUrlRequestInfo_changed(self.h)

proc blockX*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo, shouldBlock: bool): void =
  fcQWebEngineUrlRequestInfo_blockX(self.h, shouldBlock)

proc redirect*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo, url: gen_qurl_types.QUrl): void =
  fcQWebEngineUrlRequestInfo_redirect(self.h, url.h)

proc setHttpHeader*(self: gen_qwebengineurlrequestinfo_types.QWebEngineUrlRequestInfo, name: seq[byte], value: seq[byte]): void =
  fcQWebEngineUrlRequestInfo_setHttpHeader(self.h, struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name))), struct_miqt_string(data: cast[cstring](if len(value) == 0: nil else: unsafeAddr value[0]), len: csize_t(len(value))))

