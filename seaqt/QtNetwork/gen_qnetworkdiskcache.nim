import ./Qt5Network_libs

{.push raises: [].}

from system/ansi_c import c_free

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

const cflags = gorge("pkg-config --cflags Qt5Network")  & " -fPIC"
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

proc fcQNetworkDiskCache_metaObject(self: pointer, ): pointer {.importc: "QNetworkDiskCache_metaObject".}
proc fcQNetworkDiskCache_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkDiskCache_metacast".}
proc fcQNetworkDiskCache_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkDiskCache_metacall".}
proc fcQNetworkDiskCache_tr(s: cstring): struct_miqt_string {.importc: "QNetworkDiskCache_tr".}
proc fcQNetworkDiskCache_trUtf8(s: cstring): struct_miqt_string {.importc: "QNetworkDiskCache_trUtf8".}
proc fcQNetworkDiskCache_cacheDirectory(self: pointer, ): struct_miqt_string {.importc: "QNetworkDiskCache_cacheDirectory".}
proc fcQNetworkDiskCache_setCacheDirectory(self: pointer, cacheDir: struct_miqt_string): void {.importc: "QNetworkDiskCache_setCacheDirectory".}
proc fcQNetworkDiskCache_maximumCacheSize(self: pointer, ): clonglong {.importc: "QNetworkDiskCache_maximumCacheSize".}
proc fcQNetworkDiskCache_setMaximumCacheSize(self: pointer, size: clonglong): void {.importc: "QNetworkDiskCache_setMaximumCacheSize".}
proc fcQNetworkDiskCache_cacheSize(self: pointer, ): clonglong {.importc: "QNetworkDiskCache_cacheSize".}
proc fcQNetworkDiskCache_metaData(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_metaData".}
proc fcQNetworkDiskCache_updateMetaData(self: pointer, metaData: pointer): void {.importc: "QNetworkDiskCache_updateMetaData".}
proc fcQNetworkDiskCache_data(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_data".}
proc fcQNetworkDiskCache_remove(self: pointer, url: pointer): bool {.importc: "QNetworkDiskCache_remove".}
proc fcQNetworkDiskCache_prepare(self: pointer, metaData: pointer): pointer {.importc: "QNetworkDiskCache_prepare".}
proc fcQNetworkDiskCache_insert(self: pointer, device: pointer): void {.importc: "QNetworkDiskCache_insert".}
proc fcQNetworkDiskCache_fileMetaData(self: pointer, fileName: struct_miqt_string): pointer {.importc: "QNetworkDiskCache_fileMetaData".}
proc fcQNetworkDiskCache_clear(self: pointer, ): void {.importc: "QNetworkDiskCache_clear".}
proc fcQNetworkDiskCache_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkDiskCache_tr2".}
proc fcQNetworkDiskCache_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkDiskCache_tr3".}
proc fcQNetworkDiskCache_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QNetworkDiskCache_trUtf82".}
proc fcQNetworkDiskCache_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QNetworkDiskCache_trUtf83".}
type cQNetworkDiskCacheVTable = object
  destructor*: proc(vtbl: ptr cQNetworkDiskCacheVTable, self: ptr cQNetworkDiskCache) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  cacheSize*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  metaData*: proc(vtbl, self: pointer, url: pointer): pointer {.cdecl, raises: [], gcsafe.}
  updateMetaData*: proc(vtbl, self: pointer, metaData: pointer): void {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, url: pointer): pointer {.cdecl, raises: [], gcsafe.}
  remove*: proc(vtbl, self: pointer, url: pointer): bool {.cdecl, raises: [], gcsafe.}
  prepare*: proc(vtbl, self: pointer, metaData: pointer): pointer {.cdecl, raises: [], gcsafe.}
  insert*: proc(vtbl, self: pointer, device: pointer): void {.cdecl, raises: [], gcsafe.}
  clear*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  expire*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQNetworkDiskCache_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QNetworkDiskCache_virtualbase_metaObject".}
proc fcQNetworkDiskCache_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkDiskCache_virtualbase_metacast".}
proc fcQNetworkDiskCache_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QNetworkDiskCache_virtualbase_metacall".}
proc fcQNetworkDiskCache_virtualbase_cacheSize(self: pointer, ): clonglong {.importc: "QNetworkDiskCache_virtualbase_cacheSize".}
proc fcQNetworkDiskCache_virtualbase_metaData(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_virtualbase_metaData".}
proc fcQNetworkDiskCache_virtualbase_updateMetaData(self: pointer, metaData: pointer): void {.importc: "QNetworkDiskCache_virtualbase_updateMetaData".}
proc fcQNetworkDiskCache_virtualbase_data(self: pointer, url: pointer): pointer {.importc: "QNetworkDiskCache_virtualbase_data".}
proc fcQNetworkDiskCache_virtualbase_remove(self: pointer, url: pointer): bool {.importc: "QNetworkDiskCache_virtualbase_remove".}
proc fcQNetworkDiskCache_virtualbase_prepare(self: pointer, metaData: pointer): pointer {.importc: "QNetworkDiskCache_virtualbase_prepare".}
proc fcQNetworkDiskCache_virtualbase_insert(self: pointer, device: pointer): void {.importc: "QNetworkDiskCache_virtualbase_insert".}
proc fcQNetworkDiskCache_virtualbase_clear(self: pointer, ): void {.importc: "QNetworkDiskCache_virtualbase_clear".}
proc fcQNetworkDiskCache_virtualbase_expire(self: pointer, ): clonglong {.importc: "QNetworkDiskCache_virtualbase_expire".}
proc fcQNetworkDiskCache_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QNetworkDiskCache_virtualbase_event".}
proc fcQNetworkDiskCache_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QNetworkDiskCache_virtualbase_eventFilter".}
proc fcQNetworkDiskCache_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QNetworkDiskCache_virtualbase_timerEvent".}
proc fcQNetworkDiskCache_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QNetworkDiskCache_virtualbase_childEvent".}
proc fcQNetworkDiskCache_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QNetworkDiskCache_virtualbase_customEvent".}
proc fcQNetworkDiskCache_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkDiskCache_virtualbase_connectNotify".}
proc fcQNetworkDiskCache_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QNetworkDiskCache_virtualbase_disconnectNotify".}
proc fcQNetworkDiskCache_protectedbase_sender(self: pointer, ): pointer {.importc: "QNetworkDiskCache_protectedbase_sender".}
proc fcQNetworkDiskCache_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QNetworkDiskCache_protectedbase_senderSignalIndex".}
proc fcQNetworkDiskCache_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QNetworkDiskCache_protectedbase_receivers".}
proc fcQNetworkDiskCache_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QNetworkDiskCache_protectedbase_isSignalConnected".}
proc fcQNetworkDiskCache_new(vtbl: pointer, ): ptr cQNetworkDiskCache {.importc: "QNetworkDiskCache_new".}
proc fcQNetworkDiskCache_new2(vtbl: pointer, parent: pointer): ptr cQNetworkDiskCache {.importc: "QNetworkDiskCache_new2".}
proc fcQNetworkDiskCache_staticMetaObject(): pointer {.importc: "QNetworkDiskCache_staticMetaObject".}
proc fcQNetworkDiskCache_delete(self: pointer) {.importc: "QNetworkDiskCache_delete".}

proc metaObject*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkDiskCache_metaObject(self.h))

proc metacast*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cstring): pointer =
  fcQNetworkDiskCache_metacast(self.h, param1)

proc metacall*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkDiskCache_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache, s: cstring): string =
  let v_ms = fcQNetworkDiskCache_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache, s: cstring): string =
  let v_ms = fcQNetworkDiskCache_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cacheDirectory*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): string =
  let v_ms = fcQNetworkDiskCache_cacheDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCacheDirectory*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, cacheDir: string): void =
  fcQNetworkDiskCache_setCacheDirectory(self.h, struct_miqt_string(data: cacheDir, len: csize_t(len(cacheDir))))

proc maximumCacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): clonglong =
  fcQNetworkDiskCache_maximumCacheSize(self.h)

proc setMaximumCacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, size: clonglong): void =
  fcQNetworkDiskCache_setMaximumCacheSize(self.h, size)

proc cacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): clonglong =
  fcQNetworkDiskCache_cacheSize(self.h)

proc metaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQNetworkDiskCache_metaData(self.h, url.h))

proc updateMetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void =
  fcQNetworkDiskCache_updateMetaData(self.h, metaData.h)

proc data*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNetworkDiskCache_data(self.h, url.h))

proc remove*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): bool =
  fcQNetworkDiskCache_remove(self.h, url.h)

proc prepare*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNetworkDiskCache_prepare(self.h, metaData.h))

proc insert*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, device: gen_qiodevice_types.QIODevice): void =
  fcQNetworkDiskCache_insert(self.h, device.h)

proc fileMetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, fileName: string): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQNetworkDiskCache_fileMetaData(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc clear*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): void =
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

proc trUtf8*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache, s: cstring, c: cstring): string =
  let v_ms = fcQNetworkDiskCache_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQNetworkDiskCache_trUtf83(s, c, n)
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
type QNetworkDiskCacheVTable* = object
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
proc QNetworkDiskCachemetaObject*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkDiskCache_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQNetworkDiskCache_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QNetworkDiskCachemetacast*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cstring): pointer =
  fcQNetworkDiskCache_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQNetworkDiskCache_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QNetworkDiskCachemetacall*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cint, param2: cint, param3: pointer): cint =
  fcQNetworkDiskCache_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQNetworkDiskCache_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QNetworkDiskCachecacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): clonglong =
  fcQNetworkDiskCache_virtualbase_cacheSize(self.h)

proc miqt_exec_callback_cQNetworkDiskCache_cacheSize(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  var virtualReturn = vtbl[].cacheSize(self)
  virtualReturn

proc QNetworkDiskCachemetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fcQNetworkDiskCache_virtualbase_metaData(self.h, url.h))

proc miqt_exec_callback_cQNetworkDiskCache_metaData(vtbl: pointer, self: pointer, url: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url)
  var virtualReturn = vtbl[].metaData(self, slotval1)
  virtualReturn.h

proc QNetworkDiskCacheupdateMetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void =
  fcQNetworkDiskCache_virtualbase_updateMetaData(self.h, metaData.h)

proc miqt_exec_callback_cQNetworkDiskCache_updateMetaData(vtbl: pointer, self: pointer, metaData: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: metaData)
  vtbl[].updateMetaData(self, slotval1)

proc QNetworkDiskCachedata*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNetworkDiskCache_virtualbase_data(self.h, url.h))

proc miqt_exec_callback_cQNetworkDiskCache_data(vtbl: pointer, self: pointer, url: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url)
  var virtualReturn = vtbl[].data(self, slotval1)
  virtualReturn.h

proc QNetworkDiskCacheremove*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): bool =
  fcQNetworkDiskCache_virtualbase_remove(self.h, url.h)

proc miqt_exec_callback_cQNetworkDiskCache_remove(vtbl: pointer, self: pointer, url: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qurl_types.QUrl(h: url)
  var virtualReturn = vtbl[].remove(self, slotval1)
  virtualReturn

proc QNetworkDiskCacheprepare*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQNetworkDiskCache_virtualbase_prepare(self.h, metaData.h))

proc miqt_exec_callback_cQNetworkDiskCache_prepare(vtbl: pointer, self: pointer, metaData: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: metaData)
  var virtualReturn = vtbl[].prepare(self, slotval1)
  virtualReturn.h

proc QNetworkDiskCacheinsert*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, device: gen_qiodevice_types.QIODevice): void =
  fcQNetworkDiskCache_virtualbase_insert(self.h, device.h)

proc miqt_exec_callback_cQNetworkDiskCache_insert(vtbl: pointer, self: pointer, device: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qiodevice_types.QIODevice(h: device)
  vtbl[].insert(self, slotval1)

proc QNetworkDiskCacheclear*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): void =
  fcQNetworkDiskCache_virtualbase_clear(self.h)

proc miqt_exec_callback_cQNetworkDiskCache_clear(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  vtbl[].clear(self)

proc QNetworkDiskCacheexpire*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): clonglong =
  fcQNetworkDiskCache_virtualbase_expire(self.h)

proc miqt_exec_callback_cQNetworkDiskCache_expire(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  var virtualReturn = vtbl[].expire(self)
  virtualReturn

proc QNetworkDiskCacheevent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkDiskCache_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQNetworkDiskCache_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QNetworkDiskCacheeventFilter*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQNetworkDiskCache_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQNetworkDiskCache_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QNetworkDiskCachetimerEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQNetworkDiskCache_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkDiskCache_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QNetworkDiskCachechildEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QChildEvent): void =
  fcQNetworkDiskCache_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkDiskCache_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QNetworkDiskCachecustomEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QEvent): void =
  fcQNetworkDiskCache_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQNetworkDiskCache_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QNetworkDiskCacheconnectNotify*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkDiskCache_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQNetworkDiskCache_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QNetworkDiskCachedisconnectNotify*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQNetworkDiskCache_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQNetworkDiskCache_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QNetworkDiskCacheVTable](vtbl)
  let self = QNetworkDiskCache(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQNetworkDiskCache_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): cint =
  fcQNetworkDiskCache_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: cstring): cint =
  fcQNetworkDiskCache_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQNetworkDiskCache_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache,
    vtbl: ref QNetworkDiskCacheVTable = nil): gen_qnetworkdiskcache_types.QNetworkDiskCache =
  let vtbl = if vtbl == nil: new QNetworkDiskCacheVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNetworkDiskCacheVTable, _: ptr cQNetworkDiskCache) {.cdecl.} =
    let vtbl = cast[ref QNetworkDiskCacheVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQNetworkDiskCache_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQNetworkDiskCache_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQNetworkDiskCache_metacall
  if not isNil(vtbl.cacheSize):
    vtbl[].vtbl.cacheSize = miqt_exec_callback_cQNetworkDiskCache_cacheSize
  if not isNil(vtbl.metaData):
    vtbl[].vtbl.metaData = miqt_exec_callback_cQNetworkDiskCache_metaData
  if not isNil(vtbl.updateMetaData):
    vtbl[].vtbl.updateMetaData = miqt_exec_callback_cQNetworkDiskCache_updateMetaData
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQNetworkDiskCache_data
  if not isNil(vtbl.remove):
    vtbl[].vtbl.remove = miqt_exec_callback_cQNetworkDiskCache_remove
  if not isNil(vtbl.prepare):
    vtbl[].vtbl.prepare = miqt_exec_callback_cQNetworkDiskCache_prepare
  if not isNil(vtbl.insert):
    vtbl[].vtbl.insert = miqt_exec_callback_cQNetworkDiskCache_insert
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQNetworkDiskCache_clear
  if not isNil(vtbl.expire):
    vtbl[].vtbl.expire = miqt_exec_callback_cQNetworkDiskCache_expire
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQNetworkDiskCache_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQNetworkDiskCache_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQNetworkDiskCache_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQNetworkDiskCache_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQNetworkDiskCache_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQNetworkDiskCache_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQNetworkDiskCache_disconnectNotify
  gen_qnetworkdiskcache_types.QNetworkDiskCache(h: fcQNetworkDiskCache_new(addr(vtbl[]), ))

proc create*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache,
    parent: gen_qobject_types.QObject,
    vtbl: ref QNetworkDiskCacheVTable = nil): gen_qnetworkdiskcache_types.QNetworkDiskCache =
  let vtbl = if vtbl == nil: new QNetworkDiskCacheVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQNetworkDiskCacheVTable, _: ptr cQNetworkDiskCache) {.cdecl.} =
    let vtbl = cast[ref QNetworkDiskCacheVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQNetworkDiskCache_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQNetworkDiskCache_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQNetworkDiskCache_metacall
  if not isNil(vtbl.cacheSize):
    vtbl[].vtbl.cacheSize = miqt_exec_callback_cQNetworkDiskCache_cacheSize
  if not isNil(vtbl.metaData):
    vtbl[].vtbl.metaData = miqt_exec_callback_cQNetworkDiskCache_metaData
  if not isNil(vtbl.updateMetaData):
    vtbl[].vtbl.updateMetaData = miqt_exec_callback_cQNetworkDiskCache_updateMetaData
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQNetworkDiskCache_data
  if not isNil(vtbl.remove):
    vtbl[].vtbl.remove = miqt_exec_callback_cQNetworkDiskCache_remove
  if not isNil(vtbl.prepare):
    vtbl[].vtbl.prepare = miqt_exec_callback_cQNetworkDiskCache_prepare
  if not isNil(vtbl.insert):
    vtbl[].vtbl.insert = miqt_exec_callback_cQNetworkDiskCache_insert
  if not isNil(vtbl.clear):
    vtbl[].vtbl.clear = miqt_exec_callback_cQNetworkDiskCache_clear
  if not isNil(vtbl.expire):
    vtbl[].vtbl.expire = miqt_exec_callback_cQNetworkDiskCache_expire
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQNetworkDiskCache_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQNetworkDiskCache_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQNetworkDiskCache_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQNetworkDiskCache_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQNetworkDiskCache_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQNetworkDiskCache_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQNetworkDiskCache_disconnectNotify
  gen_qnetworkdiskcache_types.QNetworkDiskCache(h: fcQNetworkDiskCache_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qnetworkdiskcache_types.QNetworkDiskCache): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkDiskCache_staticMetaObject())
proc delete*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache) =
  fcQNetworkDiskCache_delete(self.h)
