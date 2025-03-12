import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qabstractvideosurface.cpp", cflags).}


type QAbstractVideoSurfaceErrorEnum* = distinct cint
template NoError*(_: type QAbstractVideoSurfaceErrorEnum): untyped = 0
template UnsupportedFormatError*(_: type QAbstractVideoSurfaceErrorEnum): untyped = 1
template IncorrectFormatError*(_: type QAbstractVideoSurfaceErrorEnum): untyped = 2
template StoppedError*(_: type QAbstractVideoSurfaceErrorEnum): untyped = 3
template ResourceError*(_: type QAbstractVideoSurfaceErrorEnum): untyped = 4


import ./gen_qabstractvideosurface_types
export gen_qabstractvideosurface_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ./gen_qvideoframe_types,
  ./gen_qvideosurfaceformat_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qvideoframe_types,
  gen_qvideosurfaceformat_types

type cQAbstractVideoSurface*{.exportc: "QAbstractVideoSurface", incompleteStruct.} = object

proc fcQAbstractVideoSurface_metaObject(self: pointer): pointer {.importc: "QAbstractVideoSurface_metaObject".}
proc fcQAbstractVideoSurface_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoSurface_metacast".}
proc fcQAbstractVideoSurface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoSurface_metacall".}
proc fcQAbstractVideoSurface_tr(s: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_tr".}
proc fcQAbstractVideoSurface_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf8".}
proc fcQAbstractVideoSurface_supportedPixelFormats(self: pointer, typeVal: cint): struct_miqt_array {.importc: "QAbstractVideoSurface_supportedPixelFormats".}
proc fcQAbstractVideoSurface_isFormatSupported(self: pointer, format: pointer): bool {.importc: "QAbstractVideoSurface_isFormatSupported".}
proc fcQAbstractVideoSurface_nearestFormat(self: pointer, format: pointer): pointer {.importc: "QAbstractVideoSurface_nearestFormat".}
proc fcQAbstractVideoSurface_surfaceFormat(self: pointer): pointer {.importc: "QAbstractVideoSurface_surfaceFormat".}
proc fcQAbstractVideoSurface_nativeResolution(self: pointer): pointer {.importc: "QAbstractVideoSurface_nativeResolution".}
proc fcQAbstractVideoSurface_start(self: pointer, format: pointer): bool {.importc: "QAbstractVideoSurface_start".}
proc fcQAbstractVideoSurface_stop(self: pointer): void {.importc: "QAbstractVideoSurface_stop".}
proc fcQAbstractVideoSurface_isActive(self: pointer): bool {.importc: "QAbstractVideoSurface_isActive".}
proc fcQAbstractVideoSurface_present(self: pointer, frame: pointer): bool {.importc: "QAbstractVideoSurface_present".}
proc fcQAbstractVideoSurface_error(self: pointer): cint {.importc: "QAbstractVideoSurface_error".}
proc fcQAbstractVideoSurface_activeChanged(self: pointer, active: bool): void {.importc: "QAbstractVideoSurface_activeChanged".}
proc fcQAbstractVideoSurface_connect_activeChanged(self: pointer, slot: int, callback: proc (slot: int, active: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractVideoSurface_connect_activeChanged".}
proc fcQAbstractVideoSurface_surfaceFormatChanged(self: pointer, format: pointer): void {.importc: "QAbstractVideoSurface_surfaceFormatChanged".}
proc fcQAbstractVideoSurface_connect_surfaceFormatChanged(self: pointer, slot: int, callback: proc (slot: int, format: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractVideoSurface_connect_surfaceFormatChanged".}
proc fcQAbstractVideoSurface_supportedFormatsChanged(self: pointer): void {.importc: "QAbstractVideoSurface_supportedFormatsChanged".}
proc fcQAbstractVideoSurface_connect_supportedFormatsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractVideoSurface_connect_supportedFormatsChanged".}
proc fcQAbstractVideoSurface_nativeResolutionChanged(self: pointer, resolution: pointer): void {.importc: "QAbstractVideoSurface_nativeResolutionChanged".}
proc fcQAbstractVideoSurface_connect_nativeResolutionChanged(self: pointer, slot: int, callback: proc (slot: int, resolution: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAbstractVideoSurface_connect_nativeResolutionChanged".}
proc fcQAbstractVideoSurface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_tr2".}
proc fcQAbstractVideoSurface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoSurface_tr3".}
proc fcQAbstractVideoSurface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf82".}
proc fcQAbstractVideoSurface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf83".}
proc fcQAbstractVideoSurface_vtbl(self: pointer): pointer {.importc: "QAbstractVideoSurface_vtbl".}
proc fcQAbstractVideoSurface_vdata(self: pointer): pointer {.importc: "QAbstractVideoSurface_vdata".}
type cQAbstractVideoSurfaceVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  supportedPixelFormats*: proc(self: pointer, typeVal: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  isFormatSupported*: proc(self: pointer, format: pointer): bool {.cdecl, raises: [], gcsafe.}
  nearestFormat*: proc(self: pointer, format: pointer): pointer {.cdecl, raises: [], gcsafe.}
  start*: proc(self: pointer, format: pointer): bool {.cdecl, raises: [], gcsafe.}
  stop*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  present*: proc(self: pointer, frame: pointer): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractVideoSurface_virtualbase_metaObject(self: pointer): pointer {.importc: "QAbstractVideoSurface_virtualbase_metaObject".}
proc fcQAbstractVideoSurface_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoSurface_virtualbase_metacast".}
proc fcQAbstractVideoSurface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoSurface_virtualbase_metacall".}
proc fcQAbstractVideoSurface_virtualbase_isFormatSupported(self: pointer, format: pointer): bool {.importc: "QAbstractVideoSurface_virtualbase_isFormatSupported".}
proc fcQAbstractVideoSurface_virtualbase_nearestFormat(self: pointer, format: pointer): pointer {.importc: "QAbstractVideoSurface_virtualbase_nearestFormat".}
proc fcQAbstractVideoSurface_virtualbase_start(self: pointer, format: pointer): bool {.importc: "QAbstractVideoSurface_virtualbase_start".}
proc fcQAbstractVideoSurface_virtualbase_stop(self: pointer): void {.importc: "QAbstractVideoSurface_virtualbase_stop".}
proc fcQAbstractVideoSurface_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractVideoSurface_virtualbase_event".}
proc fcQAbstractVideoSurface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAbstractVideoSurface_virtualbase_eventFilter".}
proc fcQAbstractVideoSurface_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoSurface_virtualbase_timerEvent".}
proc fcQAbstractVideoSurface_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoSurface_virtualbase_childEvent".}
proc fcQAbstractVideoSurface_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractVideoSurface_virtualbase_customEvent".}
proc fcQAbstractVideoSurface_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractVideoSurface_virtualbase_connectNotify".}
proc fcQAbstractVideoSurface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractVideoSurface_virtualbase_disconnectNotify".}
proc fcQAbstractVideoSurface_protectedbase_setError(self: pointer, error: cint): void {.importc: "QAbstractVideoSurface_protectedbase_setError".}
proc fcQAbstractVideoSurface_protectedbase_setNativeResolution(self: pointer, resolution: pointer): void {.importc: "QAbstractVideoSurface_protectedbase_setNativeResolution".}
proc fcQAbstractVideoSurface_protectedbase_sender(self: pointer): pointer {.importc: "QAbstractVideoSurface_protectedbase_sender".}
proc fcQAbstractVideoSurface_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAbstractVideoSurface_protectedbase_senderSignalIndex".}
proc fcQAbstractVideoSurface_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAbstractVideoSurface_protectedbase_receivers".}
proc fcQAbstractVideoSurface_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAbstractVideoSurface_protectedbase_isSignalConnected".}
proc fcQAbstractVideoSurface_new(vtbl, vdata: pointer): ptr cQAbstractVideoSurface {.importc: "QAbstractVideoSurface_new".}
proc fcQAbstractVideoSurface_new2(vtbl, vdata: pointer, parent: pointer): ptr cQAbstractVideoSurface {.importc: "QAbstractVideoSurface_new2".}
proc fcQAbstractVideoSurface_staticMetaObject(): pointer {.importc: "QAbstractVideoSurface_staticMetaObject".}

proc metaObject*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoSurface_metaObject(self.h), owned: false)

proc metacast*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, param1: cstring): pointer =
  fcQAbstractVideoSurface_metacast(self.h, param1)

proc metacall*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractVideoSurface_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractvideosurface_types.QAbstractVideoSurface, s: cstring): string =
  let v_ms = fcQAbstractVideoSurface_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideosurface_types.QAbstractVideoSurface, s: cstring): string =
  let v_ms = fcQAbstractVideoSurface_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedPixelFormats*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, typeVal: cint): seq[cint] =
  var v_ma = fcQAbstractVideoSurface_supportedPixelFormats(self.h, cint(typeVal))
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc isFormatSupported*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fcQAbstractVideoSurface_isFormatSupported(self.h, format.h)

proc nearestFormat*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQAbstractVideoSurface_nearestFormat(self.h, format.h), owned: true)

proc surfaceFormat*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQAbstractVideoSurface_surfaceFormat(self.h), owned: true)

proc nativeResolution*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractVideoSurface_nativeResolution(self.h), owned: true)

proc start*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fcQAbstractVideoSurface_start(self.h, format.h)

proc stop*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): void =
  fcQAbstractVideoSurface_stop(self.h)

proc isActive*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): bool =
  fcQAbstractVideoSurface_isActive(self.h)

proc present*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, frame: gen_qvideoframe_types.QVideoFrame): bool =
  fcQAbstractVideoSurface_present(self.h, frame.h)

proc error*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): cint =
  cint(fcQAbstractVideoSurface_error(self.h))

proc activeChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, active: bool): void =
  fcQAbstractVideoSurface_activeChanged(self.h, active)

type QAbstractVideoSurfaceactiveChangedSlot* = proc(active: bool)
proc cQAbstractVideoSurface_slot_callback_activeChanged(slot: int, active: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractVideoSurfaceactiveChangedSlot](cast[pointer](slot))
  let slotval1 = active

  nimfunc[](slotval1)

proc cQAbstractVideoSurface_slot_callback_activeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractVideoSurfaceactiveChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onactiveChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfaceactiveChangedSlot) =
  var tmp = new QAbstractVideoSurfaceactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_connect_activeChanged(self.h, cast[int](addr tmp[]), cQAbstractVideoSurface_slot_callback_activeChanged, cQAbstractVideoSurface_slot_callback_activeChanged_release)

proc surfaceFormatChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): void =
  fcQAbstractVideoSurface_surfaceFormatChanged(self.h, format.h)

type QAbstractVideoSurfacesurfaceFormatChangedSlot* = proc(format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat)
proc cQAbstractVideoSurface_slot_callback_surfaceFormatChanged(slot: int, format: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractVideoSurfacesurfaceFormatChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format, owned: false)

  nimfunc[](slotval1)

proc cQAbstractVideoSurface_slot_callback_surfaceFormatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractVideoSurfacesurfaceFormatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsurfaceFormatChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacesurfaceFormatChangedSlot) =
  var tmp = new QAbstractVideoSurfacesurfaceFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_connect_surfaceFormatChanged(self.h, cast[int](addr tmp[]), cQAbstractVideoSurface_slot_callback_surfaceFormatChanged, cQAbstractVideoSurface_slot_callback_surfaceFormatChanged_release)

proc supportedFormatsChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): void =
  fcQAbstractVideoSurface_supportedFormatsChanged(self.h)

type QAbstractVideoSurfacesupportedFormatsChangedSlot* = proc()
proc cQAbstractVideoSurface_slot_callback_supportedFormatsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractVideoSurfacesupportedFormatsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAbstractVideoSurface_slot_callback_supportedFormatsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractVideoSurfacesupportedFormatsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsupportedFormatsChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacesupportedFormatsChangedSlot) =
  var tmp = new QAbstractVideoSurfacesupportedFormatsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_connect_supportedFormatsChanged(self.h, cast[int](addr tmp[]), cQAbstractVideoSurface_slot_callback_supportedFormatsChanged, cQAbstractVideoSurface_slot_callback_supportedFormatsChanged_release)

proc nativeResolutionChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, resolution: gen_qsize_types.QSize): void =
  fcQAbstractVideoSurface_nativeResolutionChanged(self.h, resolution.h)

type QAbstractVideoSurfacenativeResolutionChangedSlot* = proc(resolution: gen_qsize_types.QSize)
proc cQAbstractVideoSurface_slot_callback_nativeResolutionChanged(slot: int, resolution: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAbstractVideoSurfacenativeResolutionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: resolution, owned: false)

  nimfunc[](slotval1)

proc cQAbstractVideoSurface_slot_callback_nativeResolutionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAbstractVideoSurfacenativeResolutionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnativeResolutionChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacenativeResolutionChangedSlot) =
  var tmp = new QAbstractVideoSurfacenativeResolutionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_connect_nativeResolutionChanged(self.h, cast[int](addr tmp[]), cQAbstractVideoSurface_slot_callback_nativeResolutionChanged, cQAbstractVideoSurface_slot_callback_nativeResolutionChanged_release)

proc tr*(_: type gen_qabstractvideosurface_types.QAbstractVideoSurface, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractVideoSurface_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractvideosurface_types.QAbstractVideoSurface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractVideoSurface_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideosurface_types.QAbstractVideoSurface, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractVideoSurface_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractvideosurface_types.QAbstractVideoSurface, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractVideoSurface_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractVideoSurfacemetaObjectProc* = proc(self: QAbstractVideoSurface): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractVideoSurfacemetacastProc* = proc(self: QAbstractVideoSurface, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractVideoSurfacemetacallProc* = proc(self: QAbstractVideoSurface, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractVideoSurfacesupportedPixelFormatsProc* = proc(self: QAbstractVideoSurface, typeVal: cint): seq[cint] {.raises: [], gcsafe.}
type QAbstractVideoSurfaceisFormatSupportedProc* = proc(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool {.raises: [], gcsafe.}
type QAbstractVideoSurfacenearestFormatProc* = proc(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat {.raises: [], gcsafe.}
type QAbstractVideoSurfacestartProc* = proc(self: QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool {.raises: [], gcsafe.}
type QAbstractVideoSurfacestopProc* = proc(self: QAbstractVideoSurface): void {.raises: [], gcsafe.}
type QAbstractVideoSurfacepresentProc* = proc(self: QAbstractVideoSurface, frame: gen_qvideoframe_types.QVideoFrame): bool {.raises: [], gcsafe.}
type QAbstractVideoSurfaceeventProc* = proc(self: QAbstractVideoSurface, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractVideoSurfaceeventFilterProc* = proc(self: QAbstractVideoSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractVideoSurfacetimerEventProc* = proc(self: QAbstractVideoSurface, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractVideoSurfacechildEventProc* = proc(self: QAbstractVideoSurface, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractVideoSurfacecustomEventProc* = proc(self: QAbstractVideoSurface, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractVideoSurfaceconnectNotifyProc* = proc(self: QAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractVideoSurfacedisconnectNotifyProc* = proc(self: QAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractVideoSurfaceVTable* {.inheritable, pure.} = object
  vtbl: cQAbstractVideoSurfaceVTable
  metaObject*: QAbstractVideoSurfacemetaObjectProc
  metacast*: QAbstractVideoSurfacemetacastProc
  metacall*: QAbstractVideoSurfacemetacallProc
  supportedPixelFormats*: QAbstractVideoSurfacesupportedPixelFormatsProc
  isFormatSupported*: QAbstractVideoSurfaceisFormatSupportedProc
  nearestFormat*: QAbstractVideoSurfacenearestFormatProc
  start*: QAbstractVideoSurfacestartProc
  stop*: QAbstractVideoSurfacestopProc
  present*: QAbstractVideoSurfacepresentProc
  event*: QAbstractVideoSurfaceeventProc
  eventFilter*: QAbstractVideoSurfaceeventFilterProc
  timerEvent*: QAbstractVideoSurfacetimerEventProc
  childEvent*: QAbstractVideoSurfacechildEventProc
  customEvent*: QAbstractVideoSurfacecustomEventProc
  connectNotify*: QAbstractVideoSurfaceconnectNotifyProc
  disconnectNotify*: QAbstractVideoSurfacedisconnectNotifyProc
proc QAbstractVideoSurfacemetaObject*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoSurface_virtualbase_metaObject(self.h), owned: false)

proc cQAbstractVideoSurface_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractVideoSurfacemetacast*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, param1: cstring): pointer =
  fcQAbstractVideoSurface_virtualbase_metacast(self.h, param1)

proc cQAbstractVideoSurface_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractVideoSurfacemetacall*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractVideoSurface_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQAbstractVideoSurface_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc cQAbstractVideoSurface_vtable_callback_supportedPixelFormats(self: pointer, typeVal: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = cint(typeVal)
  var virtualReturn = vtbl[].supportedPixelFormats(self, slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = cint(virtualReturn[i])

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractVideoSurfaceisFormatSupported*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fcQAbstractVideoSurface_virtualbase_isFormatSupported(self.h, format.h)

proc cQAbstractVideoSurface_vtable_callback_isFormatSupported(self: pointer, format: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format, owned: false)
  var virtualReturn = vtbl[].isFormatSupported(self, slotval1)
  virtualReturn

proc QAbstractVideoSurfacenearestFormat*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQAbstractVideoSurface_virtualbase_nearestFormat(self.h, format.h), owned: true)

proc cQAbstractVideoSurface_vtable_callback_nearestFormat(self: pointer, format: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format, owned: false)
  var virtualReturn = vtbl[].nearestFormat(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QAbstractVideoSurfacestart*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fcQAbstractVideoSurface_virtualbase_start(self.h, format.h)

proc cQAbstractVideoSurface_vtable_callback_start(self: pointer, format: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format, owned: false)
  var virtualReturn = vtbl[].start(self, slotval1)
  virtualReturn

proc QAbstractVideoSurfacestop*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): void =
  fcQAbstractVideoSurface_virtualbase_stop(self.h)

proc cQAbstractVideoSurface_vtable_callback_stop(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  vtbl[].stop(self)

proc cQAbstractVideoSurface_vtable_callback_present(self: pointer, frame: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame, owned: false)
  var virtualReturn = vtbl[].present(self, slotval1)
  virtualReturn

proc QAbstractVideoSurfaceevent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractVideoSurface_virtualbase_event(self.h, event.h)

proc cQAbstractVideoSurface_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractVideoSurfaceeventFilter*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractVideoSurface_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQAbstractVideoSurface_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractVideoSurfacetimerEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractVideoSurface_virtualbase_timerEvent(self.h, event.h)

proc cQAbstractVideoSurface_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractVideoSurfacechildEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractVideoSurface_virtualbase_childEvent(self.h, event.h)

proc cQAbstractVideoSurface_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QAbstractVideoSurfacecustomEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractVideoSurface_virtualbase_customEvent(self.h, event.h)

proc cQAbstractVideoSurface_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QAbstractVideoSurfaceconnectNotify*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractVideoSurface_virtualbase_connectNotify(self.h, signal.h)

proc cQAbstractVideoSurface_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractVideoSurfacedisconnectNotify*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractVideoSurface_virtualbase_disconnectNotify(self.h, signal.h)

proc cQAbstractVideoSurface_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
  let self = QAbstractVideoSurface(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAbstractVideoSurface* {.inheritable.} = ref object of QAbstractVideoSurface
  vtbl*: cQAbstractVideoSurfaceVTable
method metaObject*(self: VirtualQAbstractVideoSurface): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAbstractVideoSurfacemetaObject(self[])
proc cQAbstractVideoSurface_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQAbstractVideoSurface, param1: cstring): pointer {.base.} =
  QAbstractVideoSurfacemetacast(self[], param1)
proc cQAbstractVideoSurface_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQAbstractVideoSurface, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAbstractVideoSurfacemetacall(self[], param1, param2, param3)
proc cQAbstractVideoSurface_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method supportedPixelFormats*(self: VirtualQAbstractVideoSurface, typeVal: cint): seq[cint] {.base.} =
  raiseAssert("missing implementation of QAbstractVideoSurface_virtualbase_supportedPixelFormats")
proc cQAbstractVideoSurface_method_callback_supportedPixelFormats(self: pointer, typeVal: cint): struct_miqt_array {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = cint(typeVal)
  var virtualReturn = inst.supportedPixelFormats(slotval1)
  var virtualReturn_CArray = cast[ptr UncheckedArray[cint]](if len(virtualReturn) > 0: c_malloc(c_sizet(sizeof(cint) * len(virtualReturn))) else: nil)
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = cint(virtualReturn[i])

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

method isFormatSupported*(self: VirtualQAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool {.base.} =
  QAbstractVideoSurfaceisFormatSupported(self[], format)
proc cQAbstractVideoSurface_method_callback_isFormatSupported(self: pointer, format: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format, owned: false)
  var virtualReturn = inst.isFormatSupported(slotval1)
  virtualReturn

method nearestFormat*(self: VirtualQAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat {.base.} =
  QAbstractVideoSurfacenearestFormat(self[], format)
proc cQAbstractVideoSurface_method_callback_nearestFormat(self: pointer, format: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format, owned: false)
  var virtualReturn = inst.nearestFormat(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method start*(self: VirtualQAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool {.base.} =
  QAbstractVideoSurfacestart(self[], format)
proc cQAbstractVideoSurface_method_callback_start(self: pointer, format: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format, owned: false)
  var virtualReturn = inst.start(slotval1)
  virtualReturn

method stop*(self: VirtualQAbstractVideoSurface): void {.base.} =
  QAbstractVideoSurfacestop(self[])
proc cQAbstractVideoSurface_method_callback_stop(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  inst.stop()

method present*(self: VirtualQAbstractVideoSurface, frame: gen_qvideoframe_types.QVideoFrame): bool {.base.} =
  raiseAssert("missing implementation of QAbstractVideoSurface_virtualbase_present")
proc cQAbstractVideoSurface_method_callback_present(self: pointer, frame: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame, owned: false)
  var virtualReturn = inst.present(slotval1)
  virtualReturn

method event*(self: VirtualQAbstractVideoSurface, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractVideoSurfaceevent(self[], event)
proc cQAbstractVideoSurface_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQAbstractVideoSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAbstractVideoSurfaceeventFilter(self[], watched, event)
proc cQAbstractVideoSurface_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQAbstractVideoSurface, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAbstractVideoSurfacetimerEvent(self[], event)
proc cQAbstractVideoSurface_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQAbstractVideoSurface, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAbstractVideoSurfacechildEvent(self[], event)
proc cQAbstractVideoSurface_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQAbstractVideoSurface, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAbstractVideoSurfacecustomEvent(self[], event)
proc cQAbstractVideoSurface_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractVideoSurfaceconnectNotify(self[], signal)
proc cQAbstractVideoSurface_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAbstractVideoSurfacedisconnectNotify(self[], signal)
proc cQAbstractVideoSurface_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAbstractVideoSurface](fcQAbstractVideoSurface_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setError*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, error: cint): void =
  fcQAbstractVideoSurface_protectedbase_setError(self.h, cint(error))

proc setNativeResolution*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, resolution: gen_qsize_types.QSize): void =
  fcQAbstractVideoSurface_protectedbase_setNativeResolution(self.h, resolution.h)

proc sender*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAbstractVideoSurface_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface): cint =
  fcQAbstractVideoSurface_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, signal: cstring): cint =
  fcQAbstractVideoSurface_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAbstractVideoSurface_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qabstractvideosurface_types.QAbstractVideoSurface,
    vtbl: ref QAbstractVideoSurfaceVTable = nil): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  let vtbl = if vtbl == nil: new QAbstractVideoSurfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractVideoSurface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractVideoSurface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractVideoSurface_vtable_callback_metacall
  if not isNil(vtbl[].supportedPixelFormats):
    vtbl[].vtbl.supportedPixelFormats = cQAbstractVideoSurface_vtable_callback_supportedPixelFormats
  if not isNil(vtbl[].isFormatSupported):
    vtbl[].vtbl.isFormatSupported = cQAbstractVideoSurface_vtable_callback_isFormatSupported
  if not isNil(vtbl[].nearestFormat):
    vtbl[].vtbl.nearestFormat = cQAbstractVideoSurface_vtable_callback_nearestFormat
  if not isNil(vtbl[].start):
    vtbl[].vtbl.start = cQAbstractVideoSurface_vtable_callback_start
  if not isNil(vtbl[].stop):
    vtbl[].vtbl.stop = cQAbstractVideoSurface_vtable_callback_stop
  if not isNil(vtbl[].present):
    vtbl[].vtbl.present = cQAbstractVideoSurface_vtable_callback_present
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractVideoSurface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractVideoSurface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractVideoSurface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractVideoSurface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractVideoSurface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractVideoSurface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractVideoSurface_vtable_callback_disconnectNotify
  gen_qabstractvideosurface_types.QAbstractVideoSurface(h: fcQAbstractVideoSurface_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qabstractvideosurface_types.QAbstractVideoSurface,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAbstractVideoSurfaceVTable = nil): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  let vtbl = if vtbl == nil: new QAbstractVideoSurfaceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAbstractVideoSurfaceVTable](fcQAbstractVideoSurface_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQAbstractVideoSurface_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQAbstractVideoSurface_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQAbstractVideoSurface_vtable_callback_metacall
  if not isNil(vtbl[].supportedPixelFormats):
    vtbl[].vtbl.supportedPixelFormats = cQAbstractVideoSurface_vtable_callback_supportedPixelFormats
  if not isNil(vtbl[].isFormatSupported):
    vtbl[].vtbl.isFormatSupported = cQAbstractVideoSurface_vtable_callback_isFormatSupported
  if not isNil(vtbl[].nearestFormat):
    vtbl[].vtbl.nearestFormat = cQAbstractVideoSurface_vtable_callback_nearestFormat
  if not isNil(vtbl[].start):
    vtbl[].vtbl.start = cQAbstractVideoSurface_vtable_callback_start
  if not isNil(vtbl[].stop):
    vtbl[].vtbl.stop = cQAbstractVideoSurface_vtable_callback_stop
  if not isNil(vtbl[].present):
    vtbl[].vtbl.present = cQAbstractVideoSurface_vtable_callback_present
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQAbstractVideoSurface_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQAbstractVideoSurface_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQAbstractVideoSurface_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQAbstractVideoSurface_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQAbstractVideoSurface_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQAbstractVideoSurface_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQAbstractVideoSurface_vtable_callback_disconnectNotify
  gen_qabstractvideosurface_types.QAbstractVideoSurface(h: fcQAbstractVideoSurface_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQAbstractVideoSurface_mvtbl = cQAbstractVideoSurfaceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAbstractVideoSurface()[])](self.fcQAbstractVideoSurface_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQAbstractVideoSurface_method_callback_metaObject,
  metacast: cQAbstractVideoSurface_method_callback_metacast,
  metacall: cQAbstractVideoSurface_method_callback_metacall,
  supportedPixelFormats: cQAbstractVideoSurface_method_callback_supportedPixelFormats,
  isFormatSupported: cQAbstractVideoSurface_method_callback_isFormatSupported,
  nearestFormat: cQAbstractVideoSurface_method_callback_nearestFormat,
  start: cQAbstractVideoSurface_method_callback_start,
  stop: cQAbstractVideoSurface_method_callback_stop,
  present: cQAbstractVideoSurface_method_callback_present,
  event: cQAbstractVideoSurface_method_callback_event,
  eventFilter: cQAbstractVideoSurface_method_callback_eventFilter,
  timerEvent: cQAbstractVideoSurface_method_callback_timerEvent,
  childEvent: cQAbstractVideoSurface_method_callback_childEvent,
  customEvent: cQAbstractVideoSurface_method_callback_customEvent,
  connectNotify: cQAbstractVideoSurface_method_callback_connectNotify,
  disconnectNotify: cQAbstractVideoSurface_method_callback_disconnectNotify,
)
proc create*(T: type gen_qabstractvideosurface_types.QAbstractVideoSurface,
    inst: VirtualQAbstractVideoSurface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractVideoSurface_new(addr(cQAbstractVideoSurface_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qabstractvideosurface_types.QAbstractVideoSurface,
    parent: gen_qobject_types.QObject,
    inst: VirtualQAbstractVideoSurface) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAbstractVideoSurface_new2(addr(cQAbstractVideoSurface_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qabstractvideosurface_types.QAbstractVideoSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoSurface_staticMetaObject())
