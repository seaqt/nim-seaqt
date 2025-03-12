import ./Qt6Network_libs

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


type QNetworkProxyQueryQueryTypeEnum* = distinct cint
template TcpSocket*(_: type QNetworkProxyQueryQueryTypeEnum): untyped = 0
template UdpSocket*(_: type QNetworkProxyQueryQueryTypeEnum): untyped = 1
template SctpSocket*(_: type QNetworkProxyQueryQueryTypeEnum): untyped = 2
template TcpServer*(_: type QNetworkProxyQueryQueryTypeEnum): untyped = 100
template UrlRequest*(_: type QNetworkProxyQueryQueryTypeEnum): untyped = 101
template SctpServer*(_: type QNetworkProxyQueryQueryTypeEnum): untyped = 102


type QNetworkProxyProxyTypeEnum* = distinct cint
template DefaultProxy*(_: type QNetworkProxyProxyTypeEnum): untyped = 0
template Socks5Proxy*(_: type QNetworkProxyProxyTypeEnum): untyped = 1
template NoProxy*(_: type QNetworkProxyProxyTypeEnum): untyped = 2
template HttpProxy*(_: type QNetworkProxyProxyTypeEnum): untyped = 3
template HttpCachingProxy*(_: type QNetworkProxyProxyTypeEnum): untyped = 4
template FtpCachingProxy*(_: type QNetworkProxyProxyTypeEnum): untyped = 5


type QNetworkProxyCapabilityEnum* = distinct cint
template TunnelingCapability*(_: type QNetworkProxyCapabilityEnum): untyped = 1
template ListeningCapability*(_: type QNetworkProxyCapabilityEnum): untyped = 2
template UdpTunnelingCapability*(_: type QNetworkProxyCapabilityEnum): untyped = 4
template CachingCapability*(_: type QNetworkProxyCapabilityEnum): untyped = 8
template HostNameLookupCapability*(_: type QNetworkProxyCapabilityEnum): untyped = 16
template SctpTunnelingCapability*(_: type QNetworkProxyCapabilityEnum): untyped = 32
template SctpListeningCapability*(_: type QNetworkProxyCapabilityEnum): untyped = 64


import ./gen_qnetworkproxy_types
export gen_qnetworkproxy_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ../QtCore/gen_qvariant_types
export
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qvariant_types

type cQNetworkProxyQuery*{.exportc: "QNetworkProxyQuery", incompleteStruct.} = object
type cQNetworkProxy*{.exportc: "QNetworkProxy", incompleteStruct.} = object
type cQNetworkProxyFactory*{.exportc: "QNetworkProxyFactory", incompleteStruct.} = object

proc fcQNetworkProxyQuery_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkProxyQuery_operatorAssign".}
proc fcQNetworkProxyQuery_swap(self: pointer, other: pointer): void {.importc: "QNetworkProxyQuery_swap".}
proc fcQNetworkProxyQuery_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkProxyQuery_operatorEqual".}
proc fcQNetworkProxyQuery_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkProxyQuery_operatorNotEqual".}
proc fcQNetworkProxyQuery_queryType(self: pointer): cint {.importc: "QNetworkProxyQuery_queryType".}
proc fcQNetworkProxyQuery_setQueryType(self: pointer, typeVal: cint): void {.importc: "QNetworkProxyQuery_setQueryType".}
proc fcQNetworkProxyQuery_peerPort(self: pointer): cint {.importc: "QNetworkProxyQuery_peerPort".}
proc fcQNetworkProxyQuery_setPeerPort(self: pointer, port: cint): void {.importc: "QNetworkProxyQuery_setPeerPort".}
proc fcQNetworkProxyQuery_peerHostName(self: pointer): struct_miqt_string {.importc: "QNetworkProxyQuery_peerHostName".}
proc fcQNetworkProxyQuery_setPeerHostName(self: pointer, hostname: struct_miqt_string): void {.importc: "QNetworkProxyQuery_setPeerHostName".}
proc fcQNetworkProxyQuery_localPort(self: pointer): cint {.importc: "QNetworkProxyQuery_localPort".}
proc fcQNetworkProxyQuery_setLocalPort(self: pointer, port: cint): void {.importc: "QNetworkProxyQuery_setLocalPort".}
proc fcQNetworkProxyQuery_protocolTag(self: pointer): struct_miqt_string {.importc: "QNetworkProxyQuery_protocolTag".}
proc fcQNetworkProxyQuery_setProtocolTag(self: pointer, protocolTag: struct_miqt_string): void {.importc: "QNetworkProxyQuery_setProtocolTag".}
proc fcQNetworkProxyQuery_url(self: pointer): pointer {.importc: "QNetworkProxyQuery_url".}
proc fcQNetworkProxyQuery_setUrl(self: pointer, url: pointer): void {.importc: "QNetworkProxyQuery_setUrl".}
proc fcQNetworkProxyQuery_new(): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new".}
proc fcQNetworkProxyQuery_new2(requestUrl: pointer): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new2".}
proc fcQNetworkProxyQuery_new3(hostname: struct_miqt_string, port: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new3".}
proc fcQNetworkProxyQuery_new4(bindPort: cushort): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new4".}
proc fcQNetworkProxyQuery_new5(other: pointer): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new5".}
proc fcQNetworkProxyQuery_new6(requestUrl: pointer, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new6".}
proc fcQNetworkProxyQuery_new7(hostname: struct_miqt_string, port: cint, protocolTag: struct_miqt_string): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new7".}
proc fcQNetworkProxyQuery_new8(hostname: struct_miqt_string, port: cint, protocolTag: struct_miqt_string, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new8".}
proc fcQNetworkProxyQuery_new9(bindPort: cushort, protocolTag: struct_miqt_string): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new9".}
proc fcQNetworkProxyQuery_new10(bindPort: cushort, protocolTag: struct_miqt_string, queryType: cint): ptr cQNetworkProxyQuery {.importc: "QNetworkProxyQuery_new10".}
proc fcQNetworkProxyQuery_staticMetaObject(): pointer {.importc: "QNetworkProxyQuery_staticMetaObject".}
proc fcQNetworkProxy_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkProxy_operatorAssign".}
proc fcQNetworkProxy_swap(self: pointer, other: pointer): void {.importc: "QNetworkProxy_swap".}
proc fcQNetworkProxy_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkProxy_operatorEqual".}
proc fcQNetworkProxy_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkProxy_operatorNotEqual".}
proc fcQNetworkProxy_setType(self: pointer, typeVal: cint): void {.importc: "QNetworkProxy_setType".}
proc fcQNetworkProxy_typeX(self: pointer): cint {.importc: "QNetworkProxy_type".}
proc fcQNetworkProxy_setCapabilities(self: pointer, capab: cint): void {.importc: "QNetworkProxy_setCapabilities".}
proc fcQNetworkProxy_capabilities(self: pointer): cint {.importc: "QNetworkProxy_capabilities".}
proc fcQNetworkProxy_isCachingProxy(self: pointer): bool {.importc: "QNetworkProxy_isCachingProxy".}
proc fcQNetworkProxy_isTransparentProxy(self: pointer): bool {.importc: "QNetworkProxy_isTransparentProxy".}
proc fcQNetworkProxy_setUser(self: pointer, userName: struct_miqt_string): void {.importc: "QNetworkProxy_setUser".}
proc fcQNetworkProxy_user(self: pointer): struct_miqt_string {.importc: "QNetworkProxy_user".}
proc fcQNetworkProxy_setPassword(self: pointer, password: struct_miqt_string): void {.importc: "QNetworkProxy_setPassword".}
proc fcQNetworkProxy_password(self: pointer): struct_miqt_string {.importc: "QNetworkProxy_password".}
proc fcQNetworkProxy_setHostName(self: pointer, hostName: struct_miqt_string): void {.importc: "QNetworkProxy_setHostName".}
proc fcQNetworkProxy_hostName(self: pointer): struct_miqt_string {.importc: "QNetworkProxy_hostName".}
proc fcQNetworkProxy_setPort(self: pointer, port: cushort): void {.importc: "QNetworkProxy_setPort".}
proc fcQNetworkProxy_port(self: pointer): cushort {.importc: "QNetworkProxy_port".}
proc fcQNetworkProxy_setApplicationProxy(proxy: pointer): void {.importc: "QNetworkProxy_setApplicationProxy".}
proc fcQNetworkProxy_applicationProxy(): pointer {.importc: "QNetworkProxy_applicationProxy".}
proc fcQNetworkProxy_header(self: pointer, header: cint): pointer {.importc: "QNetworkProxy_header".}
proc fcQNetworkProxy_setHeader(self: pointer, header: cint, value: pointer): void {.importc: "QNetworkProxy_setHeader".}
proc fcQNetworkProxy_hasRawHeader(self: pointer, headerName: struct_miqt_string): bool {.importc: "QNetworkProxy_hasRawHeader".}
proc fcQNetworkProxy_rawHeaderList(self: pointer): struct_miqt_array {.importc: "QNetworkProxy_rawHeaderList".}
proc fcQNetworkProxy_rawHeader(self: pointer, headerName: struct_miqt_string): struct_miqt_string {.importc: "QNetworkProxy_rawHeader".}
proc fcQNetworkProxy_setRawHeader(self: pointer, headerName: struct_miqt_string, value: struct_miqt_string): void {.importc: "QNetworkProxy_setRawHeader".}
proc fcQNetworkProxy_new(): ptr cQNetworkProxy {.importc: "QNetworkProxy_new".}
proc fcQNetworkProxy_new2(typeVal: cint): ptr cQNetworkProxy {.importc: "QNetworkProxy_new2".}
proc fcQNetworkProxy_new3(other: pointer): ptr cQNetworkProxy {.importc: "QNetworkProxy_new3".}
proc fcQNetworkProxy_new4(typeVal: cint, hostName: struct_miqt_string): ptr cQNetworkProxy {.importc: "QNetworkProxy_new4".}
proc fcQNetworkProxy_new5(typeVal: cint, hostName: struct_miqt_string, port: cushort): ptr cQNetworkProxy {.importc: "QNetworkProxy_new5".}
proc fcQNetworkProxy_new6(typeVal: cint, hostName: struct_miqt_string, port: cushort, user: struct_miqt_string): ptr cQNetworkProxy {.importc: "QNetworkProxy_new6".}
proc fcQNetworkProxy_new7(typeVal: cint, hostName: struct_miqt_string, port: cushort, user: struct_miqt_string, password: struct_miqt_string): ptr cQNetworkProxy {.importc: "QNetworkProxy_new7".}
proc fcQNetworkProxyFactory_queryProxy(self: pointer, query: pointer): struct_miqt_array {.importc: "QNetworkProxyFactory_queryProxy".}
proc fcQNetworkProxyFactory_usesSystemConfiguration(): bool {.importc: "QNetworkProxyFactory_usesSystemConfiguration".}
proc fcQNetworkProxyFactory_setUseSystemConfiguration(enable: bool): void {.importc: "QNetworkProxyFactory_setUseSystemConfiguration".}
proc fcQNetworkProxyFactory_setApplicationProxyFactory(factory: pointer): void {.importc: "QNetworkProxyFactory_setApplicationProxyFactory".}
proc fcQNetworkProxyFactory_proxyForQuery(query: pointer): struct_miqt_array {.importc: "QNetworkProxyFactory_proxyForQuery".}
proc fcQNetworkProxyFactory_systemProxyForQuery(): struct_miqt_array {.importc: "QNetworkProxyFactory_systemProxyForQuery".}
proc fcQNetworkProxyFactory_operatorAssign(self: pointer, param1: pointer): void {.importc: "QNetworkProxyFactory_operatorAssign".}
proc fcQNetworkProxyFactory_systemProxyForQuery1(query: pointer): struct_miqt_array {.importc: "QNetworkProxyFactory_systemProxyForQuery1".}
proc fcQNetworkProxyFactory_vtbl(self: pointer): pointer {.importc: "QNetworkProxyFactory_vtbl".}
proc fcQNetworkProxyFactory_vdata(self: pointer): pointer {.importc: "QNetworkProxyFactory_vdata".}
type cQNetworkProxyFactoryVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  queryProxy*: proc(self: pointer, query: pointer): struct_miqt_array {.cdecl, raises: [], gcsafe.}
proc fcQNetworkProxyFactory_new(vtbl, vdata: pointer): ptr cQNetworkProxyFactory {.importc: "QNetworkProxyFactory_new".}

proc operatorAssign*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, other: gen_qnetworkproxy_types.QNetworkProxyQuery): void =
  fcQNetworkProxyQuery_operatorAssign(self.h, other.h)

proc swap*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, other: gen_qnetworkproxy_types.QNetworkProxyQuery): void =
  fcQNetworkProxyQuery_swap(self.h, other.h)

proc operatorEqual*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, other: gen_qnetworkproxy_types.QNetworkProxyQuery): bool =
  fcQNetworkProxyQuery_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, other: gen_qnetworkproxy_types.QNetworkProxyQuery): bool =
  fcQNetworkProxyQuery_operatorNotEqual(self.h, other.h)

proc queryType*(self: gen_qnetworkproxy_types.QNetworkProxyQuery): cint =
  cint(fcQNetworkProxyQuery_queryType(self.h))

proc setQueryType*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, typeVal: cint): void =
  fcQNetworkProxyQuery_setQueryType(self.h, cint(typeVal))

proc peerPort*(self: gen_qnetworkproxy_types.QNetworkProxyQuery): cint =
  fcQNetworkProxyQuery_peerPort(self.h)

proc setPeerPort*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, port: cint): void =
  fcQNetworkProxyQuery_setPeerPort(self.h, port)

proc peerHostName*(self: gen_qnetworkproxy_types.QNetworkProxyQuery): string =
  let v_ms = fcQNetworkProxyQuery_peerHostName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPeerHostName*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, hostname: string): void =
  fcQNetworkProxyQuery_setPeerHostName(self.h, struct_miqt_string(data: hostname, len: csize_t(len(hostname))))

proc localPort*(self: gen_qnetworkproxy_types.QNetworkProxyQuery): cint =
  fcQNetworkProxyQuery_localPort(self.h)

proc setLocalPort*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, port: cint): void =
  fcQNetworkProxyQuery_setLocalPort(self.h, port)

proc protocolTag*(self: gen_qnetworkproxy_types.QNetworkProxyQuery): string =
  let v_ms = fcQNetworkProxyQuery_protocolTag(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setProtocolTag*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, protocolTag: string): void =
  fcQNetworkProxyQuery_setProtocolTag(self.h, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag))))

proc url*(self: gen_qnetworkproxy_types.QNetworkProxyQuery): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQNetworkProxyQuery_url(self.h), owned: true)

proc setUrl*(self: gen_qnetworkproxy_types.QNetworkProxyQuery, url: gen_qurl_types.QUrl): void =
  fcQNetworkProxyQuery_setUrl(self.h, url.h)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new(), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    requestUrl: gen_qurl_types.QUrl): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new2(requestUrl.h), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    hostname: string, port: cint): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new3(struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    bindPort: cushort): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new4(bindPort), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    other: gen_qnetworkproxy_types.QNetworkProxyQuery): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new5(other.h), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    requestUrl: gen_qurl_types.QUrl, queryType: cint): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new6(requestUrl.h, cint(queryType)), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    hostname: string, port: cint, protocolTag: string): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new7(struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag)))), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    hostname: string, port: cint, protocolTag: string, queryType: cint): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new8(struct_miqt_string(data: hostname, len: csize_t(len(hostname))), port, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag))), cint(queryType)), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    bindPort: cushort, protocolTag: string): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new9(bindPort, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag)))), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyQuery,
    bindPort: cushort, protocolTag: string, queryType: cint): gen_qnetworkproxy_types.QNetworkProxyQuery =
  gen_qnetworkproxy_types.QNetworkProxyQuery(h: fcQNetworkProxyQuery_new10(bindPort, struct_miqt_string(data: protocolTag, len: csize_t(len(protocolTag))), cint(queryType)), owned: true)

proc staticMetaObject*(_: type gen_qnetworkproxy_types.QNetworkProxyQuery): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkProxyQuery_staticMetaObject())
proc operatorAssign*(self: gen_qnetworkproxy_types.QNetworkProxy, other: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQNetworkProxy_operatorAssign(self.h, other.h)

proc swap*(self: gen_qnetworkproxy_types.QNetworkProxy, other: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQNetworkProxy_swap(self.h, other.h)

proc operatorEqual*(self: gen_qnetworkproxy_types.QNetworkProxy, other: gen_qnetworkproxy_types.QNetworkProxy): bool =
  fcQNetworkProxy_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qnetworkproxy_types.QNetworkProxy, other: gen_qnetworkproxy_types.QNetworkProxy): bool =
  fcQNetworkProxy_operatorNotEqual(self.h, other.h)

proc setType*(self: gen_qnetworkproxy_types.QNetworkProxy, typeVal: cint): void =
  fcQNetworkProxy_setType(self.h, cint(typeVal))

proc typeX*(self: gen_qnetworkproxy_types.QNetworkProxy): cint =
  cint(fcQNetworkProxy_typeX(self.h))

proc setCapabilities*(self: gen_qnetworkproxy_types.QNetworkProxy, capab: cint): void =
  fcQNetworkProxy_setCapabilities(self.h, cint(capab))

proc capabilities*(self: gen_qnetworkproxy_types.QNetworkProxy): cint =
  cint(fcQNetworkProxy_capabilities(self.h))

proc isCachingProxy*(self: gen_qnetworkproxy_types.QNetworkProxy): bool =
  fcQNetworkProxy_isCachingProxy(self.h)

proc isTransparentProxy*(self: gen_qnetworkproxy_types.QNetworkProxy): bool =
  fcQNetworkProxy_isTransparentProxy(self.h)

proc setUser*(self: gen_qnetworkproxy_types.QNetworkProxy, userName: string): void =
  fcQNetworkProxy_setUser(self.h, struct_miqt_string(data: userName, len: csize_t(len(userName))))

proc user*(self: gen_qnetworkproxy_types.QNetworkProxy): string =
  let v_ms = fcQNetworkProxy_user(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPassword*(self: gen_qnetworkproxy_types.QNetworkProxy, password: string): void =
  fcQNetworkProxy_setPassword(self.h, struct_miqt_string(data: password, len: csize_t(len(password))))

proc password*(self: gen_qnetworkproxy_types.QNetworkProxy): string =
  let v_ms = fcQNetworkProxy_password(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setHostName*(self: gen_qnetworkproxy_types.QNetworkProxy, hostName: string): void =
  fcQNetworkProxy_setHostName(self.h, struct_miqt_string(data: hostName, len: csize_t(len(hostName))))

proc hostName*(self: gen_qnetworkproxy_types.QNetworkProxy): string =
  let v_ms = fcQNetworkProxy_hostName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPort*(self: gen_qnetworkproxy_types.QNetworkProxy, port: cushort): void =
  fcQNetworkProxy_setPort(self.h, port)

proc port*(self: gen_qnetworkproxy_types.QNetworkProxy): cushort =
  fcQNetworkProxy_port(self.h)

proc setApplicationProxy*(_: type gen_qnetworkproxy_types.QNetworkProxy, proxy: gen_qnetworkproxy_types.QNetworkProxy): void =
  fcQNetworkProxy_setApplicationProxy(proxy.h)

proc applicationProxy*(_: type gen_qnetworkproxy_types.QNetworkProxy): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkProxy_applicationProxy(), owned: true)

proc header*(self: gen_qnetworkproxy_types.QNetworkProxy, header: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQNetworkProxy_header(self.h, cint(header)), owned: true)

proc setHeader*(self: gen_qnetworkproxy_types.QNetworkProxy, header: cint, value: gen_qvariant_types.QVariant): void =
  fcQNetworkProxy_setHeader(self.h, cint(header), value.h)

proc hasRawHeader*(self: gen_qnetworkproxy_types.QNetworkProxy, headerName: seq[byte]): bool =
  fcQNetworkProxy_hasRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))

proc rawHeaderList*(self: gen_qnetworkproxy_types.QNetworkProxy): seq[seq[byte]] =
  var v_ma = fcQNetworkProxy_rawHeaderList(self.h)
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc rawHeader*(self: gen_qnetworkproxy_types.QNetworkProxy, headerName: seq[byte]): seq[byte] =
  var v_bytearray = fcQNetworkProxy_rawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setRawHeader*(self: gen_qnetworkproxy_types.QNetworkProxy, headerName: seq[byte], value: seq[byte]): void =
  fcQNetworkProxy_setRawHeader(self.h, struct_miqt_string(data: cast[cstring](if len(headerName) == 0: nil else: unsafeAddr headerName[0]), len: csize_t(len(headerName))), struct_miqt_string(data: cast[cstring](if len(value) == 0: nil else: unsafeAddr value[0]), len: csize_t(len(value))))

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxy): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkProxy_new(), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxy,
    typeVal: cint): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkProxy_new2(cint(typeVal)), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxy,
    other: gen_qnetworkproxy_types.QNetworkProxy): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkProxy_new3(other.h), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxy,
    typeVal: cint, hostName: string): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkProxy_new4(cint(typeVal), struct_miqt_string(data: hostName, len: csize_t(len(hostName)))), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxy,
    typeVal: cint, hostName: string, port: cushort): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkProxy_new5(cint(typeVal), struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxy,
    typeVal: cint, hostName: string, port: cushort, user: string): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkProxy_new6(cint(typeVal), struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: user, len: csize_t(len(user)))), owned: true)

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxy,
    typeVal: cint, hostName: string, port: cushort, user: string, password: string): gen_qnetworkproxy_types.QNetworkProxy =
  gen_qnetworkproxy_types.QNetworkProxy(h: fcQNetworkProxy_new7(cint(typeVal), struct_miqt_string(data: hostName, len: csize_t(len(hostName))), port, struct_miqt_string(data: user, len: csize_t(len(user))), struct_miqt_string(data: password, len: csize_t(len(password)))), owned: true)

proc queryProxy*(self: gen_qnetworkproxy_types.QNetworkProxyFactory, query: gen_qnetworkproxy_types.QNetworkProxyQuery): seq[gen_qnetworkproxy_types.QNetworkProxy] =
  var v_ma = fcQNetworkProxyFactory_queryProxy(self.h, query.h)
  var vx_ret = newSeq[gen_qnetworkproxy_types.QNetworkProxy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkproxy_types.QNetworkProxy(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc usesSystemConfiguration*(_: type gen_qnetworkproxy_types.QNetworkProxyFactory): bool =
  fcQNetworkProxyFactory_usesSystemConfiguration()

proc setUseSystemConfiguration*(_: type gen_qnetworkproxy_types.QNetworkProxyFactory, enable: bool): void =
  fcQNetworkProxyFactory_setUseSystemConfiguration(enable)

proc setApplicationProxyFactory*(_: type gen_qnetworkproxy_types.QNetworkProxyFactory, factory: gen_qnetworkproxy_types.QNetworkProxyFactory): void =
  fcQNetworkProxyFactory_setApplicationProxyFactory(factory.h)

proc proxyForQuery*(_: type gen_qnetworkproxy_types.QNetworkProxyFactory, query: gen_qnetworkproxy_types.QNetworkProxyQuery): seq[gen_qnetworkproxy_types.QNetworkProxy] =
  var v_ma = fcQNetworkProxyFactory_proxyForQuery(query.h)
  var vx_ret = newSeq[gen_qnetworkproxy_types.QNetworkProxy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkproxy_types.QNetworkProxy(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc systemProxyForQuery*(_: type gen_qnetworkproxy_types.QNetworkProxyFactory): seq[gen_qnetworkproxy_types.QNetworkProxy] =
  var v_ma = fcQNetworkProxyFactory_systemProxyForQuery()
  var vx_ret = newSeq[gen_qnetworkproxy_types.QNetworkProxy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkproxy_types.QNetworkProxy(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc operatorAssign*(self: gen_qnetworkproxy_types.QNetworkProxyFactory, param1: gen_qnetworkproxy_types.QNetworkProxyFactory): void =
  fcQNetworkProxyFactory_operatorAssign(self.h, param1.h)

proc systemProxyForQuery*(_: type gen_qnetworkproxy_types.QNetworkProxyFactory, query: gen_qnetworkproxy_types.QNetworkProxyQuery): seq[gen_qnetworkproxy_types.QNetworkProxy] =
  var v_ma = fcQNetworkProxyFactory_systemProxyForQuery1(query.h)
  var vx_ret = newSeq[gen_qnetworkproxy_types.QNetworkProxy](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qnetworkproxy_types.QNetworkProxy(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

type QNetworkProxyFactoryqueryProxyProc* = proc(self: QNetworkProxyFactory, query: gen_qnetworkproxy_types.QNetworkProxyQuery): seq[gen_qnetworkproxy_types.QNetworkProxy] {.raises: [], gcsafe.}
type QNetworkProxyFactoryVTable* {.inheritable, pure.} = object
  vtbl: cQNetworkProxyFactoryVTable
  queryProxy*: QNetworkProxyFactoryqueryProxyProc
proc cQNetworkProxyFactory_vtable_callback_queryProxy(self: pointer, query: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QNetworkProxyFactoryVTable](fcQNetworkProxyFactory_vdata(self))
  let self = QNetworkProxyFactory(h: self)
  let slotval1 = gen_qnetworkproxy_types.QNetworkProxyQuery(h: query, owned: false)
  var virtualReturn = vtbl[].queryProxy(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

type VirtualQNetworkProxyFactory* {.inheritable.} = ref object of QNetworkProxyFactory
  vtbl*: cQNetworkProxyFactoryVTable
method queryProxy*(self: VirtualQNetworkProxyFactory, query: gen_qnetworkproxy_types.QNetworkProxyQuery): seq[gen_qnetworkproxy_types.QNetworkProxy] {.base.} =
  raiseAssert("missing implementation of QNetworkProxyFactory_virtualbase_queryProxy")
proc cQNetworkProxyFactory_method_callback_queryProxy(self: pointer, query: pointer): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQNetworkProxyFactory](fcQNetworkProxyFactory_vdata(self))
  let slotval1 = gen_qnetworkproxy_types.QNetworkProxyQuery(h: query, owned: false)
  var virtualReturn = inst.queryProxy(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[pointer]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(pointer) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn[i].owned = false # TODO move?
    let virtualReturn_i_h = virtualReturn[i].h
    virtualReturn[i].h = nil
    virtualReturn_CArray[i] = virtualReturn_i_h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyFactory,
    vtbl: ref QNetworkProxyFactoryVTable = nil): gen_qnetworkproxy_types.QNetworkProxyFactory =
  let vtbl = if vtbl == nil: new QNetworkProxyFactoryVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkProxyFactoryVTable](fcQNetworkProxyFactory_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].queryProxy):
    vtbl[].vtbl.queryProxy = cQNetworkProxyFactory_vtable_callback_queryProxy
  gen_qnetworkproxy_types.QNetworkProxyFactory(h: fcQNetworkProxyFactory_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQNetworkProxyFactory_mvtbl = cQNetworkProxyFactoryVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQNetworkProxyFactory()[])](self.fcQNetworkProxyFactory_vtbl())
    inst[].h = nil
    inst[].owned = false,
  queryProxy: cQNetworkProxyFactory_method_callback_queryProxy,
)
proc create*(T: type gen_qnetworkproxy_types.QNetworkProxyFactory,
    inst: VirtualQNetworkProxyFactory) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkProxyFactory_new(addr(cQNetworkProxyFactory_mvtbl), addr(inst[]))
  inst[].owned = true

