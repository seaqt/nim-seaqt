import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
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

proc fcQAbstractVideoSurface_new(): ptr cQAbstractVideoSurface {.importc: "QAbstractVideoSurface_new".}
proc fcQAbstractVideoSurface_new2(parent: pointer): ptr cQAbstractVideoSurface {.importc: "QAbstractVideoSurface_new2".}
proc fcQAbstractVideoSurface_metaObject(self: pointer, ): pointer {.importc: "QAbstractVideoSurface_metaObject".}
proc fcQAbstractVideoSurface_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractVideoSurface_metacast".}
proc fcQAbstractVideoSurface_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractVideoSurface_metacall".}
proc fcQAbstractVideoSurface_tr(s: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_tr".}
proc fcQAbstractVideoSurface_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf8".}
proc fcQAbstractVideoSurface_supportedPixelFormats(self: pointer, typeVal: cint): struct_miqt_array {.importc: "QAbstractVideoSurface_supportedPixelFormats".}
proc fcQAbstractVideoSurface_isFormatSupported(self: pointer, format: pointer): bool {.importc: "QAbstractVideoSurface_isFormatSupported".}
proc fcQAbstractVideoSurface_nearestFormat(self: pointer, format: pointer): pointer {.importc: "QAbstractVideoSurface_nearestFormat".}
proc fcQAbstractVideoSurface_surfaceFormat(self: pointer, ): pointer {.importc: "QAbstractVideoSurface_surfaceFormat".}
proc fcQAbstractVideoSurface_nativeResolution(self: pointer, ): pointer {.importc: "QAbstractVideoSurface_nativeResolution".}
proc fcQAbstractVideoSurface_start(self: pointer, format: pointer): bool {.importc: "QAbstractVideoSurface_start".}
proc fcQAbstractVideoSurface_stop(self: pointer, ): void {.importc: "QAbstractVideoSurface_stop".}
proc fcQAbstractVideoSurface_isActive(self: pointer, ): bool {.importc: "QAbstractVideoSurface_isActive".}
proc fcQAbstractVideoSurface_present(self: pointer, frame: pointer): bool {.importc: "QAbstractVideoSurface_present".}
proc fcQAbstractVideoSurface_error(self: pointer, ): cint {.importc: "QAbstractVideoSurface_error".}
proc fcQAbstractVideoSurface_activeChanged(self: pointer, active: bool): void {.importc: "QAbstractVideoSurface_activeChanged".}
proc fcQAbstractVideoSurface_connect_activeChanged(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_connect_activeChanged".}
proc fcQAbstractVideoSurface_surfaceFormatChanged(self: pointer, format: pointer): void {.importc: "QAbstractVideoSurface_surfaceFormatChanged".}
proc fcQAbstractVideoSurface_connect_surfaceFormatChanged(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_connect_surfaceFormatChanged".}
proc fcQAbstractVideoSurface_supportedFormatsChanged(self: pointer, ): void {.importc: "QAbstractVideoSurface_supportedFormatsChanged".}
proc fcQAbstractVideoSurface_connect_supportedFormatsChanged(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_connect_supportedFormatsChanged".}
proc fcQAbstractVideoSurface_nativeResolutionChanged(self: pointer, resolution: pointer): void {.importc: "QAbstractVideoSurface_nativeResolutionChanged".}
proc fcQAbstractVideoSurface_connect_nativeResolutionChanged(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_connect_nativeResolutionChanged".}
proc fcQAbstractVideoSurface_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_tr2".}
proc fcQAbstractVideoSurface_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoSurface_tr3".}
proc fcQAbstractVideoSurface_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf82".}
proc fcQAbstractVideoSurface_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractVideoSurface_trUtf83".}
proc fQAbstractVideoSurface_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractVideoSurface_virtualbase_metaObject".}
proc fcQAbstractVideoSurface_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_metaObject".}
proc fQAbstractVideoSurface_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractVideoSurface_virtualbase_metacast".}
proc fcQAbstractVideoSurface_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_metacast".}
proc fQAbstractVideoSurface_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractVideoSurface_virtualbase_metacall".}
proc fcQAbstractVideoSurface_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_metacall".}
proc fcQAbstractVideoSurface_override_virtual_supportedPixelFormats(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_supportedPixelFormats".}
proc fQAbstractVideoSurface_virtualbase_isFormatSupported(self: pointer, format: pointer): bool{.importc: "QAbstractVideoSurface_virtualbase_isFormatSupported".}
proc fcQAbstractVideoSurface_override_virtual_isFormatSupported(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_isFormatSupported".}
proc fQAbstractVideoSurface_virtualbase_nearestFormat(self: pointer, format: pointer): pointer{.importc: "QAbstractVideoSurface_virtualbase_nearestFormat".}
proc fcQAbstractVideoSurface_override_virtual_nearestFormat(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_nearestFormat".}
proc fQAbstractVideoSurface_virtualbase_start(self: pointer, format: pointer): bool{.importc: "QAbstractVideoSurface_virtualbase_start".}
proc fcQAbstractVideoSurface_override_virtual_start(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_start".}
proc fQAbstractVideoSurface_virtualbase_stop(self: pointer, ): void{.importc: "QAbstractVideoSurface_virtualbase_stop".}
proc fcQAbstractVideoSurface_override_virtual_stop(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_stop".}
proc fcQAbstractVideoSurface_override_virtual_present(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_present".}
proc fQAbstractVideoSurface_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractVideoSurface_virtualbase_event".}
proc fcQAbstractVideoSurface_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_event".}
proc fQAbstractVideoSurface_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractVideoSurface_virtualbase_eventFilter".}
proc fcQAbstractVideoSurface_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_eventFilter".}
proc fQAbstractVideoSurface_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_timerEvent".}
proc fcQAbstractVideoSurface_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_timerEvent".}
proc fQAbstractVideoSurface_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_childEvent".}
proc fcQAbstractVideoSurface_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_childEvent".}
proc fQAbstractVideoSurface_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_customEvent".}
proc fcQAbstractVideoSurface_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_customEvent".}
proc fQAbstractVideoSurface_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_connectNotify".}
proc fcQAbstractVideoSurface_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_connectNotify".}
proc fQAbstractVideoSurface_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractVideoSurface_virtualbase_disconnectNotify".}
proc fcQAbstractVideoSurface_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractVideoSurface_override_virtual_disconnectNotify".}
proc fcQAbstractVideoSurface_staticMetaObject(): pointer {.importc: "QAbstractVideoSurface_staticMetaObject".}
proc fcQAbstractVideoSurface_delete(self: pointer) {.importc: "QAbstractVideoSurface_delete".}


func init*(T: type gen_qabstractvideosurface_types.QAbstractVideoSurface, h: ptr cQAbstractVideoSurface): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  T(h: h)
proc create*(T: type gen_qabstractvideosurface_types.QAbstractVideoSurface, ): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  gen_qabstractvideosurface_types.QAbstractVideoSurface.init(fcQAbstractVideoSurface_new())

proc create*(T: type gen_qabstractvideosurface_types.QAbstractVideoSurface, parent: gen_qobject_types.QObject): gen_qabstractvideosurface_types.QAbstractVideoSurface =
  gen_qabstractvideosurface_types.QAbstractVideoSurface.init(fcQAbstractVideoSurface_new2(parent.h))

proc metaObject*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoSurface_metaObject(self.h))

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
  vx_ret

proc isFormatSupported*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fcQAbstractVideoSurface_isFormatSupported(self.h, format.h)

proc nearestFormat*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQAbstractVideoSurface_nearestFormat(self.h, format.h))

proc surfaceFormat*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fcQAbstractVideoSurface_surfaceFormat(self.h))

proc nativeResolution*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractVideoSurface_nativeResolution(self.h))

proc start*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fcQAbstractVideoSurface_start(self.h, format.h)

proc stop*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): void =
  fcQAbstractVideoSurface_stop(self.h)

proc isActive*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): bool =
  fcQAbstractVideoSurface_isActive(self.h)

proc present*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, frame: gen_qvideoframe_types.QVideoFrame): bool =
  fcQAbstractVideoSurface_present(self.h, frame.h)

proc error*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): cint =
  cint(fcQAbstractVideoSurface_error(self.h))

proc activeChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, active: bool): void =
  fcQAbstractVideoSurface_activeChanged(self.h, active)

type QAbstractVideoSurfaceactiveChangedSlot* = proc(active: bool)
proc miqt_exec_callback_QAbstractVideoSurface_activeChanged(slot: int, active: bool) {.exportc.} =
  let nimfunc = cast[ptr QAbstractVideoSurfaceactiveChangedSlot](cast[pointer](slot))
  let slotval1 = active

  nimfunc[](slotval1)

proc onactiveChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfaceactiveChangedSlot) =
  var tmp = new QAbstractVideoSurfaceactiveChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_connect_activeChanged(self.h, cast[int](addr tmp[]))

proc surfaceFormatChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): void =
  fcQAbstractVideoSurface_surfaceFormatChanged(self.h, format.h)

type QAbstractVideoSurfacesurfaceFormatChangedSlot* = proc(format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat)
proc miqt_exec_callback_QAbstractVideoSurface_surfaceFormatChanged(slot: int, format: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractVideoSurfacesurfaceFormatChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format)

  nimfunc[](slotval1)

proc onsurfaceFormatChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacesurfaceFormatChangedSlot) =
  var tmp = new QAbstractVideoSurfacesurfaceFormatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_connect_surfaceFormatChanged(self.h, cast[int](addr tmp[]))

proc supportedFormatsChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): void =
  fcQAbstractVideoSurface_supportedFormatsChanged(self.h)

type QAbstractVideoSurfacesupportedFormatsChangedSlot* = proc()
proc miqt_exec_callback_QAbstractVideoSurface_supportedFormatsChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAbstractVideoSurfacesupportedFormatsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsupportedFormatsChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacesupportedFormatsChangedSlot) =
  var tmp = new QAbstractVideoSurfacesupportedFormatsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_connect_supportedFormatsChanged(self.h, cast[int](addr tmp[]))

proc nativeResolutionChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, resolution: gen_qsize_types.QSize): void =
  fcQAbstractVideoSurface_nativeResolutionChanged(self.h, resolution.h)

type QAbstractVideoSurfacenativeResolutionChangedSlot* = proc(resolution: gen_qsize_types.QSize)
proc miqt_exec_callback_QAbstractVideoSurface_nativeResolutionChanged(slot: int, resolution: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAbstractVideoSurfacenativeResolutionChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: resolution)

  nimfunc[](slotval1)

proc onnativeResolutionChanged*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacenativeResolutionChangedSlot) =
  var tmp = new QAbstractVideoSurfacenativeResolutionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_connect_nativeResolutionChanged(self.h, cast[int](addr tmp[]))

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

proc QAbstractVideoSurfacemetaObject*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAbstractVideoSurface_virtualbase_metaObject(self.h))

type QAbstractVideoSurfacemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacemetaObjectProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_metaObject(self: ptr cQAbstractVideoSurface, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractVideoSurface_metaObject ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAbstractVideoSurfacemetacast*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, param1: cstring): pointer =
  fQAbstractVideoSurface_virtualbase_metacast(self.h, param1)

type QAbstractVideoSurfacemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacemetacastProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_metacast(self: ptr cQAbstractVideoSurface, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractVideoSurface_metacast ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractVideoSurfacemetacall*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, param1: cint, param2: cint, param3: pointer): cint =
  fQAbstractVideoSurface_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractVideoSurfacemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacemetacallProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_metacall(self: ptr cQAbstractVideoSurface, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractVideoSurface_metacall ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractVideoSurfacesupportedPixelFormatsProc* = proc(typeVal: cint): seq[cint]
proc onsupportedPixelFormats*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacesupportedPixelFormatsProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacesupportedPixelFormatsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_supportedPixelFormats(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_supportedPixelFormats(self: ptr cQAbstractVideoSurface, slot: int, typeVal: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractVideoSurface_supportedPixelFormats ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacesupportedPixelFormatsProc](cast[pointer](slot))
  let slotval1 = cint(typeVal)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = cint(virtualReturn[i])


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc QAbstractVideoSurfaceisFormatSupported*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fQAbstractVideoSurface_virtualbase_isFormatSupported(self.h, format.h)

type QAbstractVideoSurfaceisFormatSupportedProc* = proc(format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool
proc onisFormatSupported*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfaceisFormatSupportedProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfaceisFormatSupportedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_isFormatSupported(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_isFormatSupported(self: ptr cQAbstractVideoSurface, slot: int, format: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_isFormatSupported ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfaceisFormatSupportedProc](cast[pointer](slot))
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractVideoSurfacenearestFormat*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat =
  gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: fQAbstractVideoSurface_virtualbase_nearestFormat(self.h, format.h))

type QAbstractVideoSurfacenearestFormatProc* = proc(format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): gen_qvideosurfaceformat_types.QVideoSurfaceFormat
proc onnearestFormat*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacenearestFormatProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacenearestFormatProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_nearestFormat(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_nearestFormat(self: ptr cQAbstractVideoSurface, slot: int, format: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractVideoSurface_nearestFormat ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacenearestFormatProc](cast[pointer](slot))
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QAbstractVideoSurfacestart*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool =
  fQAbstractVideoSurface_virtualbase_start(self.h, format.h)

type QAbstractVideoSurfacestartProc* = proc(format: gen_qvideosurfaceformat_types.QVideoSurfaceFormat): bool
proc onstart*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacestartProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacestartProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_start(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_start(self: ptr cQAbstractVideoSurface, slot: int, format: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_start ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacestartProc](cast[pointer](slot))
  let slotval1 = gen_qvideosurfaceformat_types.QVideoSurfaceFormat(h: format)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractVideoSurfacestop*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, ): void =
  fQAbstractVideoSurface_virtualbase_stop(self.h)

type QAbstractVideoSurfacestopProc* = proc(): void
proc onstop*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacestopProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacestopProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_stop(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_stop(self: ptr cQAbstractVideoSurface, slot: int): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_stop ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacestopProc](cast[pointer](slot))

  nimfunc[]()
type QAbstractVideoSurfacepresentProc* = proc(frame: gen_qvideoframe_types.QVideoFrame): bool
proc onpresent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacepresentProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacepresentProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_present(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_present(self: ptr cQAbstractVideoSurface, slot: int, frame: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_present ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacepresentProc](cast[pointer](slot))
  let slotval1 = gen_qvideoframe_types.QVideoFrame(h: frame)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractVideoSurfaceevent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractVideoSurface_virtualbase_event(self.h, event.h)

type QAbstractVideoSurfaceeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfaceeventProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfaceeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_event(self: ptr cQAbstractVideoSurface, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_event ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfaceeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAbstractVideoSurfaceeventFilter*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAbstractVideoSurface_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractVideoSurfaceeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfaceeventFilterProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfaceeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_eventFilter(self: ptr cQAbstractVideoSurface, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractVideoSurface_eventFilter ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfaceeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAbstractVideoSurfacetimerEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAbstractVideoSurface_virtualbase_timerEvent(self.h, event.h)

type QAbstractVideoSurfacetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacetimerEventProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_timerEvent(self: ptr cQAbstractVideoSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_timerEvent ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractVideoSurfacechildEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, event: gen_qcoreevent_types.QChildEvent): void =
  fQAbstractVideoSurface_virtualbase_childEvent(self.h, event.h)

type QAbstractVideoSurfacechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacechildEventProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_childEvent(self: ptr cQAbstractVideoSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_childEvent ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractVideoSurfacecustomEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, event: gen_qcoreevent_types.QEvent): void =
  fQAbstractVideoSurface_virtualbase_customEvent(self.h, event.h)

type QAbstractVideoSurfacecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacecustomEventProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_customEvent(self: ptr cQAbstractVideoSurface, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_customEvent ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAbstractVideoSurfaceconnectNotify*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractVideoSurface_virtualbase_connectNotify(self.h, signal.h)

type QAbstractVideoSurfaceconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfaceconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfaceconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_connectNotify(self: ptr cQAbstractVideoSurface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_connectNotify ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfaceconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAbstractVideoSurfacedisconnectNotify*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAbstractVideoSurface_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractVideoSurfacedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface, slot: QAbstractVideoSurfacedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAbstractVideoSurfacedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractVideoSurface_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractVideoSurface_disconnectNotify(self: ptr cQAbstractVideoSurface, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractVideoSurface_disconnectNotify ".} =
  var nimfunc = cast[ptr QAbstractVideoSurfacedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qabstractvideosurface_types.QAbstractVideoSurface): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractVideoSurface_staticMetaObject())
proc delete*(self: gen_qabstractvideosurface_types.QAbstractVideoSurface) =
  fcQAbstractVideoSurface_delete(self.h)
