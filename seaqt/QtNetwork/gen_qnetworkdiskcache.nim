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

proc fcQNetworkDiskCache_new(): ptr cQNetworkDiskCache {.importc: "QNetworkDiskCache_new".}
proc fcQNetworkDiskCache_new2(parent: pointer): ptr cQNetworkDiskCache {.importc: "QNetworkDiskCache_new2".}
proc fcQNetworkDiskCache_metaObject(self: pointer, ): pointer {.importc: "QNetworkDiskCache_metaObject".}
proc fcQNetworkDiskCache_metacast(self: pointer, param1: cstring): pointer {.importc: "QNetworkDiskCache_metacast".}
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
proc fQNetworkDiskCache_virtualbase_cacheSize(self: pointer, ): clonglong{.importc: "QNetworkDiskCache_virtualbase_cacheSize".}
proc fcQNetworkDiskCache_override_virtual_cacheSize(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_cacheSize".}
proc fQNetworkDiskCache_virtualbase_metaData(self: pointer, url: pointer): pointer{.importc: "QNetworkDiskCache_virtualbase_metaData".}
proc fcQNetworkDiskCache_override_virtual_metaData(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_metaData".}
proc fQNetworkDiskCache_virtualbase_updateMetaData(self: pointer, metaData: pointer): void{.importc: "QNetworkDiskCache_virtualbase_updateMetaData".}
proc fcQNetworkDiskCache_override_virtual_updateMetaData(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_updateMetaData".}
proc fQNetworkDiskCache_virtualbase_data(self: pointer, url: pointer): pointer{.importc: "QNetworkDiskCache_virtualbase_data".}
proc fcQNetworkDiskCache_override_virtual_data(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_data".}
proc fQNetworkDiskCache_virtualbase_remove(self: pointer, url: pointer): bool{.importc: "QNetworkDiskCache_virtualbase_remove".}
proc fcQNetworkDiskCache_override_virtual_remove(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_remove".}
proc fQNetworkDiskCache_virtualbase_prepare(self: pointer, metaData: pointer): pointer{.importc: "QNetworkDiskCache_virtualbase_prepare".}
proc fcQNetworkDiskCache_override_virtual_prepare(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_prepare".}
proc fQNetworkDiskCache_virtualbase_insert(self: pointer, device: pointer): void{.importc: "QNetworkDiskCache_virtualbase_insert".}
proc fcQNetworkDiskCache_override_virtual_insert(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_insert".}
proc fQNetworkDiskCache_virtualbase_clear(self: pointer, ): void{.importc: "QNetworkDiskCache_virtualbase_clear".}
proc fcQNetworkDiskCache_override_virtual_clear(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_clear".}
proc fQNetworkDiskCache_virtualbase_expire(self: pointer, ): clonglong{.importc: "QNetworkDiskCache_virtualbase_expire".}
proc fcQNetworkDiskCache_override_virtual_expire(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_expire".}
proc fQNetworkDiskCache_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QNetworkDiskCache_virtualbase_event".}
proc fcQNetworkDiskCache_override_virtual_event(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_event".}
proc fQNetworkDiskCache_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QNetworkDiskCache_virtualbase_eventFilter".}
proc fcQNetworkDiskCache_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_eventFilter".}
proc fQNetworkDiskCache_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QNetworkDiskCache_virtualbase_timerEvent".}
proc fcQNetworkDiskCache_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_timerEvent".}
proc fQNetworkDiskCache_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QNetworkDiskCache_virtualbase_childEvent".}
proc fcQNetworkDiskCache_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_childEvent".}
proc fQNetworkDiskCache_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QNetworkDiskCache_virtualbase_customEvent".}
proc fcQNetworkDiskCache_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_customEvent".}
proc fQNetworkDiskCache_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkDiskCache_virtualbase_connectNotify".}
proc fcQNetworkDiskCache_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_connectNotify".}
proc fQNetworkDiskCache_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QNetworkDiskCache_virtualbase_disconnectNotify".}
proc fcQNetworkDiskCache_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QNetworkDiskCache_override_virtual_disconnectNotify".}
proc fcQNetworkDiskCache_delete(self: pointer) {.importc: "QNetworkDiskCache_delete".}


func init*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache, h: ptr cQNetworkDiskCache): gen_qnetworkdiskcache_types.QNetworkDiskCache =
  T(h: h)
proc create*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache, ): gen_qnetworkdiskcache_types.QNetworkDiskCache =
  gen_qnetworkdiskcache_types.QNetworkDiskCache.init(fcQNetworkDiskCache_new())

proc create*(T: type gen_qnetworkdiskcache_types.QNetworkDiskCache, parent: gen_qobject_types.QObject): gen_qnetworkdiskcache_types.QNetworkDiskCache =
  gen_qnetworkdiskcache_types.QNetworkDiskCache.init(fcQNetworkDiskCache_new2(parent.h))

proc metaObject*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQNetworkDiskCache_metaObject(self.h))

proc metacast*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, param1: cstring): pointer =
  fcQNetworkDiskCache_metacast(self.h, param1)

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

proc QNetworkDiskCachecacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): clonglong =
  fQNetworkDiskCache_virtualbase_cacheSize(self.h)

type QNetworkDiskCachecacheSizeProc* = proc(): clonglong
proc oncacheSize*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCachecacheSizeProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCachecacheSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_cacheSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_cacheSize(self: ptr cQNetworkDiskCache, slot: int): clonglong {.exportc: "miqt_exec_callback_QNetworkDiskCache_cacheSize ".} =
  var nimfunc = cast[ptr QNetworkDiskCachecacheSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QNetworkDiskCachemetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData =
  gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: fQNetworkDiskCache_virtualbase_metaData(self.h, url.h))

type QNetworkDiskCachemetaDataProc* = proc(url: gen_qurl_types.QUrl): gen_qabstractnetworkcache_types.QNetworkCacheMetaData
proc onmetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCachemetaDataProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCachemetaDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_metaData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_metaData(self: ptr cQNetworkDiskCache, slot: int, url: pointer): pointer {.exportc: "miqt_exec_callback_QNetworkDiskCache_metaData ".} =
  var nimfunc = cast[ptr QNetworkDiskCachemetaDataProc](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QNetworkDiskCacheupdateMetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void =
  fQNetworkDiskCache_virtualbase_updateMetaData(self.h, metaData.h)

type QNetworkDiskCacheupdateMetaDataProc* = proc(metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): void
proc onupdateMetaData*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheupdateMetaDataProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheupdateMetaDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_updateMetaData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_updateMetaData(self: ptr cQNetworkDiskCache, slot: int, metaData: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_updateMetaData ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheupdateMetaDataProc](cast[pointer](slot))
  let slotval1 = gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: metaData)


  nimfunc[](slotval1)
proc QNetworkDiskCachedata*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fQNetworkDiskCache_virtualbase_data(self.h, url.h))

type QNetworkDiskCachedataProc* = proc(url: gen_qurl_types.QUrl): gen_qiodevice_types.QIODevice
proc ondata*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCachedataProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCachedataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_data(self: ptr cQNetworkDiskCache, slot: int, url: pointer): pointer {.exportc: "miqt_exec_callback_QNetworkDiskCache_data ".} =
  var nimfunc = cast[ptr QNetworkDiskCachedataProc](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QNetworkDiskCacheremove*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, url: gen_qurl_types.QUrl): bool =
  fQNetworkDiskCache_virtualbase_remove(self.h, url.h)

type QNetworkDiskCacheremoveProc* = proc(url: gen_qurl_types.QUrl): bool
proc onremove*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheremoveProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheremoveProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_remove(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_remove(self: ptr cQNetworkDiskCache, slot: int, url: pointer): bool {.exportc: "miqt_exec_callback_QNetworkDiskCache_remove ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheremoveProc](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkDiskCacheprepare*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fQNetworkDiskCache_virtualbase_prepare(self.h, metaData.h))

type QNetworkDiskCacheprepareProc* = proc(metaData: gen_qabstractnetworkcache_types.QNetworkCacheMetaData): gen_qiodevice_types.QIODevice
proc onprepare*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheprepareProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheprepareProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_prepare(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_prepare(self: ptr cQNetworkDiskCache, slot: int, metaData: pointer): pointer {.exportc: "miqt_exec_callback_QNetworkDiskCache_prepare ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheprepareProc](cast[pointer](slot))
  let slotval1 = gen_qabstractnetworkcache_types.QNetworkCacheMetaData(h: metaData)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QNetworkDiskCacheinsert*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, device: gen_qiodevice_types.QIODevice): void =
  fQNetworkDiskCache_virtualbase_insert(self.h, device.h)

type QNetworkDiskCacheinsertProc* = proc(device: gen_qiodevice_types.QIODevice): void
proc oninsert*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheinsertProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheinsertProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_insert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_insert(self: ptr cQNetworkDiskCache, slot: int, device: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_insert ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheinsertProc](cast[pointer](slot))
  let slotval1 = gen_qiodevice_types.QIODevice(h: device)


  nimfunc[](slotval1)
proc QNetworkDiskCacheclear*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): void =
  fQNetworkDiskCache_virtualbase_clear(self.h)

type QNetworkDiskCacheclearProc* = proc(): void
proc onclear*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheclearProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheclearProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_clear(self: ptr cQNetworkDiskCache, slot: int): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_clear ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheclearProc](cast[pointer](slot))

  nimfunc[]()
proc QNetworkDiskCacheexpire*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, ): clonglong =
  fQNetworkDiskCache_virtualbase_expire(self.h)

type QNetworkDiskCacheexpireProc* = proc(): clonglong
proc onexpire*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheexpireProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheexpireProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_expire(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_expire(self: ptr cQNetworkDiskCache, slot: int): clonglong {.exportc: "miqt_exec_callback_QNetworkDiskCache_expire ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheexpireProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QNetworkDiskCacheevent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QEvent): bool =
  fQNetworkDiskCache_virtualbase_event(self.h, event.h)

type QNetworkDiskCacheeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheeventProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_event(self: ptr cQNetworkDiskCache, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkDiskCache_event ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QNetworkDiskCacheeventFilter*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQNetworkDiskCache_virtualbase_eventFilter(self.h, watched.h, event.h)

type QNetworkDiskCacheeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheeventFilterProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_eventFilter(self: ptr cQNetworkDiskCache, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QNetworkDiskCache_eventFilter ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QNetworkDiskCachetimerEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QTimerEvent): void =
  fQNetworkDiskCache_virtualbase_timerEvent(self.h, event.h)

type QNetworkDiskCachetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCachetimerEventProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCachetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_timerEvent(self: ptr cQNetworkDiskCache, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_timerEvent ".} =
  var nimfunc = cast[ptr QNetworkDiskCachetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkDiskCachechildEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QChildEvent): void =
  fQNetworkDiskCache_virtualbase_childEvent(self.h, event.h)

type QNetworkDiskCachechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCachechildEventProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCachechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_childEvent(self: ptr cQNetworkDiskCache, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_childEvent ".} =
  var nimfunc = cast[ptr QNetworkDiskCachechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkDiskCachecustomEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, event: gen_qcoreevent_types.QEvent): void =
  fQNetworkDiskCache_virtualbase_customEvent(self.h, event.h)

type QNetworkDiskCachecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCachecustomEventProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCachecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_customEvent(self: ptr cQNetworkDiskCache, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_customEvent ".} =
  var nimfunc = cast[ptr QNetworkDiskCachecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QNetworkDiskCacheconnectNotify*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQNetworkDiskCache_virtualbase_connectNotify(self.h, signal.h)

type QNetworkDiskCacheconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCacheconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCacheconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_connectNotify(self: ptr cQNetworkDiskCache, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_connectNotify ".} =
  var nimfunc = cast[ptr QNetworkDiskCacheconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QNetworkDiskCachedisconnectNotify*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQNetworkDiskCache_virtualbase_disconnectNotify(self.h, signal.h)

type QNetworkDiskCachedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache, slot: QNetworkDiskCachedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QNetworkDiskCachedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQNetworkDiskCache_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QNetworkDiskCache_disconnectNotify(self: ptr cQNetworkDiskCache, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QNetworkDiskCache_disconnectNotify ".} =
  var nimfunc = cast[ptr QNetworkDiskCachedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qnetworkdiskcache_types.QNetworkDiskCache) =
  fcQNetworkDiskCache_delete(self.h)
