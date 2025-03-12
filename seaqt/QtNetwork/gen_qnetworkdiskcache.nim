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

const cflags = gorge("pkg-config --cflags Qt6Network") & " -fPIC"
{.compile("gen_qnetworkdiskcache.cpp", cflags).}


import ./gen_qnetworkdiskcache_types
export gen_qnetworkdiskcache_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qabstractnetworkcache
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qabstractnetworkcache

type cQNetworkDiskCache*{.exportc: "QNetworkDiskCache", incompleteStruct.} = object

proc fcQNetworkDiskCache_metaObject(self: pointer): pointer {.importc: "QNetworkDiskCache_metaObject".}
proc fcQNetworkDiskCache_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkDiskCache_metacast".}
proc fcQNetworkDiskCache_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkDiskCache_metacall".}
proc fcQNetworkDiskCache_tr(s: cstring): struct_miqt_string {.importc: "QNetworkDiskCache_tr".}
proc fcQNetworkDiskCache_cacheDirectory(self: pointer): struct_miqt_string {.importc: "QNetworkDiskCache_cacheDirectory".}
proc fcQNetworkDiskCache_setCacheDirectory(self: pointer, cacheDir: struct_miqt_string): void {.importc: "QNetworkDiskCache_setCacheDirectory".}
proc fcQNetworkDiskCache_maximumCacheSize(self: pointer): clonglong {.importc: "QNetworkDiskCache_maximumCacheSize".}
proc fcQNetworkDiskCache_setMaximumCacheSize(self: pointer, size: clonglong): void {.importc: "QNetworkDiskCache_setMaximumCacheSize".}
proc fcQNetworkDiskCache_cacheSize(self: pointer): clonglong {.importc: "QNetworkDiskCache_cacheSize".}
proc fcQNetworkDiskCache_metaData(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_metaData".}
proc fcQNetworkDiskCache_updateMetaData(self: pointer, metaData: pointer): void {.importc: "QNetworkDiskCache_updateMetaData".}
proc fcQNetworkDiskCache_data(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_data".}
proc fcQNetworkDiskCache_remove(self: pointer, url: pointer): bool {.importc: "QNetworkDiskCache_remove".}
proc fcQNetworkDiskCache_prepare(self: pointer, metaData: pointer): pointer {.importc: "QNetworkDiskCache_prepare".}
proc fcQNetworkDiskCache_insert(self: pointer, device: pointer): void {.importc: "QNetworkDiskCache_insert".}
proc fcQNetworkDiskCache_fileMetaData(self: pointer, fileName: struct_miqt_string): pointer {.importc: "QNetworkDiskCache_fileMetaData".}
proc fcQNetworkDiskCache_clear(self: pointer): void {.importc: "QNetworkDiskCache_clear".}
proc fcQNetworkDiskCache_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkDiskCache_tr2".}
proc fcQNetworkDiskCache_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkDiskCache_tr3".}
proc fcQNetworkDiskCache_vtbl(self: pointer): pointer {.importc: "QNetworkDiskCache_vtbl".}
proc fcQNetworkDiskCache_vdata(self: pointer): pointer {.importc: "QNetworkDiskCache_vdata".}
type cQNetworkDiskCacheVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  cacheSize*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  metaData*: proc(self: pointer, url: pointer): pointer {.cdecl, raises: [], gcsafe.}
  updateMetaData*: proc(self: pointer, metaData: pointer): void {.cdecl, raises: [], gcsafe.}
  data*: proc(self: pointer, url: pointer): pointer {.cdecl, raises: [], gcsafe.}
  remove*: proc(self: pointer, url: pointer): bool {.cdecl, raises: [], gcsafe.}
  prepare*: proc(self: pointer, metaData: pointer): pointer {.cdecl, raises: [], gcsafe.}
  insert*: proc(self: pointer, device: pointer): void {.cdecl, raises: [], gcsafe.}
  clear*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  expire*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNetworkDiskCache_virtualbase_metaObject(self: pointer): pointer {.importc: "QNetworkDiskCache_virtualbase_metaObject".}
proc fcQNetworkDiskCache_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkDiskCache_virtualbase_metacast".}
proc fcQNetworkDiskCache_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkDiskCache_virtualbase_metacall".}
proc fcQNetworkDiskCache_virtualbase_cacheSize(self: pointer): clonglong {.importc: "QNetworkDiskCache_virtualbase_cacheSize".}
proc fcQNetworkDiskCache_virtualbase_metaData(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_virtualbase_metaData".}
proc fcQNetworkDiskCache_virtualbase_updateMetaData(self: pointer, metaData: pointer): void {.importc: "QNetworkDiskCache_virtualbase_updateMetaData".}
proc fcQNetworkDiskCache_virtualbase_data(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_virtualbase_data".}
proc fcQNetworkDiskCache_virtualbase_remove(self: pointer, url: pointer): bool {.importc: "QNetworkDiskCache_virtualbase_remove".}
proc fcQNetworkDiskCache_virtualbase_prepare(self: pointer, metaData: pointer): pointer {.importc: "QNetworkDiskCache_virtualbase_prepare".}
proc fcQNetworkDiskCache_virtualbase_insert(self: pointer, device: pointer): void {.importc: "QNetworkDiskCache_virtualbase_insert".}
proc fcQNetworkDiskCache_virtualbase_clear(self: pointer): void {.importc: "QNetworkDiskCache_virtualbase_clear".}
proc fcQNetworkDiskCache_virtualbase_expire(self: pointer): clonglong {.importc: "QNetworkDiskCache_virtualbase_expire".}
proc fcQNetworkDiskCache_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNetworkDiskCache_virtualbase_event".}
proc fcQNetworkDiskCache_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNetworkDiskCache_virtualbase_eventFilter".}
proc fcQNetworkDiskCache_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNetworkDiskCache_virtualbase_timerEvent".}
proc fcQNetworkDiskCache_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNetworkDiskCache_virtualbase_childEvent".}
proc fcQNetworkDiskCache_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNetworkDiskCache_virtualbase_customEvent".}
proc fcQNetworkDiskCache_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkDiskCache_virtualbase_connectNotify".}
proc fcQNetworkDiskCache_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkDiskCache_virtualbase_disconnectNotify".}
proc fcQNetworkDiskCache_protectedbase_sender(self: pointer): pointer {.importc: "QNetworkDiskCache_protectedbase_sender".}
proc fcQNetworkDiskCache_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QNetworkDiskCache_protectedbase_senderSignalIndex".}
proc fcQNetworkDiskCache_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNetworkDiskCache_protectedbase_receivers".}
proc fcQNetworkDiskCache_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNetworkDiskCache_protectedbase_isSignalConnected".}
proc fcQNetworkDiskCache_new(vtbl, vdata: pointer): ptr cQNetworkDiskCache {.importc: "QNetworkDiskCache_new".}
proc fcQNetworkDiskCache_new2(vtbl, vdata: pointer, parent: pointer): ptr cQNetworkDiskCache {.importc: "QNetworkDiskCache_new2".}
proc fcQNetworkDiskCache_staticMetaObject(): pointer {.importc: "QNetworkDiskCache_staticMetaObject".}

proc metaObject*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkDiskCache_metaObject(self.h), owned: false)

proc metacast*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cstring): pointer =
  fcQNetworkDiskCache_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkDiskCache_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache, s: cstring): string =
  let v_ms = fcQNetworkDiskCache_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cacheDirectory*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): string =
  let v_ms = fcQNetworkDiskCache_cacheDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCacheDirectory*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, cacheDir: string): void =
  fcQNetworkDiskCache_setCacheDirectory(self.h, struct_miqt_string(data: cacheDir, len: csize_t(len(cacheDir))))

proc maximumCacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): clonglong =
  fcQNetworkDiskCache_maximumCacheSize(self.h)

proc setMaximumCacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, size: clonglong): void =
  fcQNetworkDiskCache_setMaximumCacheSize(self.h, size)

proc cacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): clonglong =
  fcQNetworkDiskCache_cacheSize(self.h)

proc metaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQNetworkDiskCache_metaData(self.h, url.h), owned: true)

proc updateMetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void =
  fcQNetworkDiskCache_updateMetaData(self.h, metaData.h)

proc data*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNetworkDiskCache_data(self.h, url.h), owned: false)

proc remove*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): bool =
  fcQNetworkDiskCache_remove(self.h, url.h)

proc prepare*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNetworkDiskCache_prepare(self.h, metaData.h), owned: false)

proc insert*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, device: gen_qiodevice_types.QIODevice): void =
  fcQNetworkDiskCache_insert(self.h, device.h)

proc fileMetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, fileName: string): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQNetworkDiskCache_fileMetaData(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))), owned: true)

proc clear*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): void =
  fcQNetworkDiskCache_clear(self.h)

proc tr*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkDiskCache_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkDiskCache_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QNetworkDiskCachemetaObjectProc* = proc(self: QNetworkDiskCache): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QNetworkDiskCachemetacastProc* = proc(self: QNetworkDiskCache, param1: cstring): pointer {.raises: [], gcsafe.}
type QNetworkDiskCachemetacallProc* = proc(self: QNetworkDiskCache, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QNetworkDiskCachecacheSizeProc* = proc(self: QNetworkDiskCache): clonglong {.raises: [], gcsafe.}
type QNetworkDiskCachemetaDataProc* = proc(self: QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData {.raises: [], gcsafe.}
type QNetworkDiskCacheupdateMetaDataProc* = proc(self: QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void {.raises: [], gcsafe.}
type QNetworkDiskCachedataProc* = proc(self: QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice {.raises: [], gcsafe.}
type QNetworkDiskCacheremoveProc* = proc(self: QNetworkDiskCache, url: gen_qurl_types.QUrl): bool {.raises: [], gcsafe.}
type QNetworkDiskCacheprepareProc* = proc(self: QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice {.raises: [], gcsafe.}
type QNetworkDiskCacheinsertProc* = proc(self: QNetworkDiskCache, device: gen_qiodevice_types.QIODevice): void {.raises: [], gcsafe.}
type QNetworkDiskCacheclearProc* = proc(self: QNetworkDiskCache): void {.raises: [], gcsafe.}
type QNetworkDiskCacheexpireProc* = proc(self: QNetworkDiskCache): clonglong {.raises: [], gcsafe.}
type QNetworkDiskCacheeventProc* = proc(self: QNetworkDiskCache, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNetworkDiskCacheeventFilterProc* = proc(self: QNetworkDiskCache, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QNetworkDiskCachetimerEventProc* = proc(self: QNetworkDiskCache, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QNetworkDiskCachechildEventProc* = proc(self: QNetworkDiskCache, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QNetworkDiskCachecustomEventProc* = proc(self: QNetworkDiskCache, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QNetworkDiskCacheconnectNotifyProc* = proc(self: QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNetworkDiskCachedisconnectNotifyProc* = proc(self: QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QNetworkDiskCacheVTable* {.inheritable, pure.} = object
  vtbl: cQNetworkDiskCacheVTable
  metaObject*: QNetworkDiskCachemetaObjectProc
  metacast*: QNetworkDiskCachemetacastProc
  metacall*: QNetworkDiskCachemetacallProc
  cacheSize*: QNetworkDiskCachecacheSizeProc
  metaData*: QNetworkDiskCachemetaDataProc
  updateMetaData*: QNetworkDiskCacheupdateMetaDataProc
  data*: QNetworkDiskCachedataProc
  remove*: QNetworkDiskCacheremoveProc
  prepare*: QNetworkDiskCacheprepareProc
  insert*: QNetworkDiskCacheinsertProc
  clear*: QNetworkDiskCacheclearProc
  expire*: QNetworkDiskCacheexpireProc
  event*: QNetworkDiskCacheeventProc
  eventFilter*: QNetworkDiskCacheeventFilterProc
  timerEvent*: QNetworkDiskCachetimerEventProc
  childEvent*: QNetworkDiskCachechildEventProc
  customEvent*: QNetworkDiskCachecustomEventProc
  connectNotify*: QNetworkDiskCacheconnectNotifyProc
  disconnectNotify*: QNetworkDiskCachedisconnectNotifyProc
proc QNetworkDiskCachemetaObject*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkDiskCache_virtualbase_metaObject(self.h), owned: false)

proc cQNetworkDiskCache_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QNetworkDiskCachemetacast*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cstring): pointer =
  fcQNetworkDiskCache_virtualbase_metacast(self.h, param1)

proc cQNetworkDiskCache_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QNetworkDiskCachemetacall*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkDiskCache_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQNetworkDiskCache_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QNetworkDiskCachecacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): clonglong =
  fcQNetworkDiskCache_virtualbase_cacheSize(self.h)

proc cQNetworkDiskCache_vtable_callback_cacheSize(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  var virtualReturn = vtbl[].cacheSize(self)
  virtualReturn

proc QNetworkDiskCachemetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQNetworkDiskCache_virtualbase_metaData(self.h, url.h), owned: true)

proc cQNetworkDiskCache_vtable_callback_metaData(self: pointer, url: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = vtbl[].metaData(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QNetworkDiskCacheupdateMetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void =
  fcQNetworkDiskCache_virtualbase_updateMetaData(self.h, metaData.h)

proc cQNetworkDiskCache_vtable_callback_updateMetaData(self: pointer, metaData: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: metaData, owned: false)
  vtbl[].updateMetaData(self, slotval1)

proc QNetworkDiskCachedata*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNetworkDiskCache_virtualbase_data(self.h, url.h), owned: false)

proc cQNetworkDiskCache_vtable_callback_data(self: pointer, url: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = vtbl[].data(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QNetworkDiskCacheremove*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): bool =
  fcQNetworkDiskCache_virtualbase_remove(self.h, url.h)

proc cQNetworkDiskCache_vtable_callback_remove(self: pointer, url: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = vtbl[].remove(self, slotval1)
  virtualReturn

proc QNetworkDiskCacheprepare*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNetworkDiskCache_virtualbase_prepare(self.h, metaData.h), owned: false)

proc cQNetworkDiskCache_vtable_callback_prepare(self: pointer, metaData: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: metaData, owned: false)
  var virtualReturn = vtbl[].prepare(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QNetworkDiskCacheinsert*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, device: gen_qiodevice_types.QIODevice): void =
  fcQNetworkDiskCache_virtualbase_insert(self.h, device.h)

proc cQNetworkDiskCache_vtable_callback_insert(self: pointer, device: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: device, owned: false)
  vtbl[].insert(self, slotval1)

proc QNetworkDiskCacheclear*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): void =
  fcQNetworkDiskCache_virtualbase_clear(self.h)

proc cQNetworkDiskCache_vtable_callback_clear(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  vtbl[].clear(self)

proc QNetworkDiskCacheexpire*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): clonglong =
  fcQNetworkDiskCache_virtualbase_expire(self.h)

proc cQNetworkDiskCache_vtable_callback_expire(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  var virtualReturn = vtbl[].expire(self)
  virtualReturn

proc QNetworkDiskCacheevent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkDiskCache_virtualbase_event(self.h, event.h)

proc cQNetworkDiskCache_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QNetworkDiskCacheeventFilter*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkDiskCache_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQNetworkDiskCache_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QNetworkDiskCachetimerEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNetworkDiskCache_virtualbase_timerEvent(self.h, event.h)

proc cQNetworkDiskCache_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QNetworkDiskCachechildEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNetworkDiskCache_virtualbase_childEvent(self.h, event.h)

proc cQNetworkDiskCache_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QNetworkDiskCachecustomEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QEvent): void =
  fcQNetworkDiskCache_virtualbase_customEvent(self.h, event.h)

proc cQNetworkDiskCache_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QNetworkDiskCacheconnectNotify*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkDiskCache_virtualbase_connectNotify(self.h, signal.h)

proc cQNetworkDiskCache_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QNetworkDiskCachedisconnectNotify*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkDiskCache_virtualbase_disconnectNotify(self.h, signal.h)

proc cQNetworkDiskCache_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQNetworkDiskCache* {.inheritable.} = ref object of QNetworkDiskCache
  vtbl*: cQNetworkDiskCacheVTable
method metaObject*(self: VirtualQNetworkDiskCache): gen_qobjectdefs_types.QMetaObject {.base.} =
  QNetworkDiskCachemetaObject(self[])
proc cQNetworkDiskCache_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQNetworkDiskCache, param1: cstring): pointer {.base.} =
  QNetworkDiskCachemetacast(self[], param1)
proc cQNetworkDiskCache_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQNetworkDiskCache, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QNetworkDiskCachemetacall(self[], param1, param2, param3)
proc cQNetworkDiskCache_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method cacheSize*(self: VirtualQNetworkDiskCache): clonglong {.base.} =
  QNetworkDiskCachecacheSize(self[])
proc cQNetworkDiskCache_method_callback_cacheSize(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  var virtualReturn = inst.cacheSize()
  virtualReturn

method metaData*(self: VirtualQNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData {.base.} =
  QNetworkDiskCachemetaData(self[], url)
proc cQNetworkDiskCache_method_callback_metaData(self: pointer, url: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = inst.metaData(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method updateMetaData*(self: VirtualQNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void {.base.} =
  QNetworkDiskCacheupdateMetaData(self[], metaData)
proc cQNetworkDiskCache_method_callback_updateMetaData(self: pointer, metaData: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: metaData, owned: false)
  inst.updateMetaData(slotval1)

method data*(self: VirtualQNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice {.base.} =
  QNetworkDiskCachedata(self[], url)
proc cQNetworkDiskCache_method_callback_data(self: pointer, url: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = inst.data(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method remove*(self: VirtualQNetworkDiskCache, url: gen_qurl_types.QUrl): bool {.base.} =
  QNetworkDiskCacheremove(self[], url)
proc cQNetworkDiskCache_method_callback_remove(self: pointer, url: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qurl_types.QUrl(h: url, owned: false)
  var virtualReturn = inst.remove(slotval1)
  virtualReturn

method prepare*(self: VirtualQNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice {.base.} =
  QNetworkDiskCacheprepare(self[], metaData)
proc cQNetworkDiskCache_method_callback_prepare(self: pointer, metaData: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: metaData, owned: false)
  var virtualReturn = inst.prepare(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method insert*(self: VirtualQNetworkDiskCache, device: gen_qiodevice_types.QIODevice): void {.base.} =
  QNetworkDiskCacheinsert(self[], device)
proc cQNetworkDiskCache_method_callback_insert(self: pointer, device: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qiodevice_types.QIODevice(h: device, owned: false)
  inst.insert(slotval1)

method clear*(self: VirtualQNetworkDiskCache): void {.base.} =
  QNetworkDiskCacheclear(self[])
proc cQNetworkDiskCache_method_callback_clear(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  inst.clear()

method expire*(self: VirtualQNetworkDiskCache): clonglong {.base.} =
  QNetworkDiskCacheexpire(self[])
proc cQNetworkDiskCache_method_callback_expire(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  var virtualReturn = inst.expire()
  virtualReturn

method event*(self: VirtualQNetworkDiskCache, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNetworkDiskCacheevent(self[], event)
proc cQNetworkDiskCache_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQNetworkDiskCache, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QNetworkDiskCacheeventFilter(self[], watched, event)
proc cQNetworkDiskCache_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQNetworkDiskCache, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QNetworkDiskCachetimerEvent(self[], event)
proc cQNetworkDiskCache_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQNetworkDiskCache, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QNetworkDiskCachechildEvent(self[], event)
proc cQNetworkDiskCache_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQNetworkDiskCache, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QNetworkDiskCachecustomEvent(self[], event)
proc cQNetworkDiskCache_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNetworkDiskCacheconnectNotify(self[], signal)
proc cQNetworkDiskCache_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QNetworkDiskCachedisconnectNotify(self[], signal)
proc cQNetworkDiskCache_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQNetworkDiskCache](fcQNetworkDiskCache_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkDiskCache_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache): cint =
  fcQNetworkDiskCache_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: cstring): cint =
  fcQNetworkDiskCache_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNetworkDiskCache_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache,
    vtbl: ref QNetworkDiskCacheVTable = nil): gen_qnetworkdiskcache_types.QNetworkDiskCache =
  let vtbl = if vtbl == nil: new QNetworkDiskCacheVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQNetworkDiskCache_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQNetworkDiskCache_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQNetworkDiskCache_vtable_callback_metacall
  if not isNil(vtbl[].cacheSize):
    vtbl[].vtbl.cacheSize = cQNetworkDiskCache_vtable_callback_cacheSize
  if not isNil(vtbl[].metaData):
    vtbl[].vtbl.metaData = cQNetworkDiskCache_vtable_callback_metaData
  if not isNil(vtbl[].updateMetaData):
    vtbl[].vtbl.updateMetaData = cQNetworkDiskCache_vtable_callback_updateMetaData
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQNetworkDiskCache_vtable_callback_data
  if not isNil(vtbl[].remove):
    vtbl[].vtbl.remove = cQNetworkDiskCache_vtable_callback_remove
  if not isNil(vtbl[].prepare):
    vtbl[].vtbl.prepare = cQNetworkDiskCache_vtable_callback_prepare
  if not isNil(vtbl[].insert):
    vtbl[].vtbl.insert = cQNetworkDiskCache_vtable_callback_insert
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQNetworkDiskCache_vtable_callback_clear
  if not isNil(vtbl[].expire):
    vtbl[].vtbl.expire = cQNetworkDiskCache_vtable_callback_expire
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQNetworkDiskCache_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQNetworkDiskCache_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQNetworkDiskCache_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQNetworkDiskCache_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQNetworkDiskCache_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQNetworkDiskCache_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQNetworkDiskCache_vtable_callback_disconnectNotify
  gen_qnetworkdiskcache_types.QNetworkDiskCache(h: fcQNetworkDiskCache_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache,
    parent: gen_qobject_types.QObject,
    vtbl: ref QNetworkDiskCacheVTable = nil): gen_qnetworkdiskcache_types.QNetworkDiskCache =
  let vtbl = if vtbl == nil: new QNetworkDiskCacheVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QNetworkDiskCacheVTable](fcQNetworkDiskCache_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQNetworkDiskCache_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQNetworkDiskCache_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQNetworkDiskCache_vtable_callback_metacall
  if not isNil(vtbl[].cacheSize):
    vtbl[].vtbl.cacheSize = cQNetworkDiskCache_vtable_callback_cacheSize
  if not isNil(vtbl[].metaData):
    vtbl[].vtbl.metaData = cQNetworkDiskCache_vtable_callback_metaData
  if not isNil(vtbl[].updateMetaData):
    vtbl[].vtbl.updateMetaData = cQNetworkDiskCache_vtable_callback_updateMetaData
  if not isNil(vtbl[].data):
    vtbl[].vtbl.data = cQNetworkDiskCache_vtable_callback_data
  if not isNil(vtbl[].remove):
    vtbl[].vtbl.remove = cQNetworkDiskCache_vtable_callback_remove
  if not isNil(vtbl[].prepare):
    vtbl[].vtbl.prepare = cQNetworkDiskCache_vtable_callback_prepare
  if not isNil(vtbl[].insert):
    vtbl[].vtbl.insert = cQNetworkDiskCache_vtable_callback_insert
  if not isNil(vtbl[].clear):
    vtbl[].vtbl.clear = cQNetworkDiskCache_vtable_callback_clear
  if not isNil(vtbl[].expire):
    vtbl[].vtbl.expire = cQNetworkDiskCache_vtable_callback_expire
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQNetworkDiskCache_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQNetworkDiskCache_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQNetworkDiskCache_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQNetworkDiskCache_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQNetworkDiskCache_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQNetworkDiskCache_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQNetworkDiskCache_vtable_callback_disconnectNotify
  gen_qnetworkdiskcache_types.QNetworkDiskCache(h: fcQNetworkDiskCache_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQNetworkDiskCache_mvtbl = cQNetworkDiskCacheVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQNetworkDiskCache()[])](self.fcQNetworkDiskCache_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQNetworkDiskCache_method_callback_metaObject,
  metacast: cQNetworkDiskCache_method_callback_metacast,
  metacall: cQNetworkDiskCache_method_callback_metacall,
  cacheSize: cQNetworkDiskCache_method_callback_cacheSize,
  metaData: cQNetworkDiskCache_method_callback_metaData,
  updateMetaData: cQNetworkDiskCache_method_callback_updateMetaData,
  data: cQNetworkDiskCache_method_callback_data,
  remove: cQNetworkDiskCache_method_callback_remove,
  prepare: cQNetworkDiskCache_method_callback_prepare,
  insert: cQNetworkDiskCache_method_callback_insert,
  clear: cQNetworkDiskCache_method_callback_clear,
  expire: cQNetworkDiskCache_method_callback_expire,
  event: cQNetworkDiskCache_method_callback_event,
  eventFilter: cQNetworkDiskCache_method_callback_eventFilter,
  timerEvent: cQNetworkDiskCache_method_callback_timerEvent,
  childEvent: cQNetworkDiskCache_method_callback_childEvent,
  customEvent: cQNetworkDiskCache_method_callback_customEvent,
  connectNotify: cQNetworkDiskCache_method_callback_connectNotify,
  disconnectNotify: cQNetworkDiskCache_method_callback_disconnectNotify,
)
proc create*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache,
    inst: VirtualQNetworkDiskCache) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkDiskCache_new(addr(cQNetworkDiskCache_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache,
    parent: gen_qobject_types.QObject,
    inst: VirtualQNetworkDiskCache) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQNetworkDiskCache_new2(addr(cQNetworkDiskCache_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkDiskCache_staticMetaObject())
