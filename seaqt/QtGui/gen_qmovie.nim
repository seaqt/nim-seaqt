import ./qtgui_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qmovie.cpp", QtGuiCFlags).}


type QMovieMovieStateEnum* = distinct cint
template NotRunning*(_: type QMovieMovieStateEnum): untyped = 0
template Paused*(_: type QMovieMovieStateEnum): untyped = 1
template Running*(_: type QMovieMovieStateEnum): untyped = 2


type QMovieCacheModeEnum* = distinct cint
template CacheNone*(_: type QMovieCacheModeEnum): untyped = 0
template CacheAll*(_: type QMovieCacheModeEnum): untyped = 1


import ./gen_qmovie_types
export gen_qmovie_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qcolor_types,
  ./gen_qimage_types,
  ./gen_qpixmap_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qcolor_types,
  gen_qimage_types,
  gen_qpixmap_types

type cQMovie*{.exportc: "QMovie", incompleteStruct.} = object

proc fcQMovie_metaObject(self: pointer): pointer {.importc: "QMovie_metaObject".}
proc fcQMovie_metacast(self: pointer, param1: cstring): pointer {.importc: "QMovie_metacast".}
proc fcQMovie_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMovie_metacall".}
proc fcQMovie_tr(s: cstring): struct_miqt_string {.importc: "QMovie_tr".}
proc fcQMovie_supportedFormats(): struct_miqt_array {.importc: "QMovie_supportedFormats".}
proc fcQMovie_setDevice(self: pointer, device: pointer): void {.importc: "QMovie_setDevice".}
proc fcQMovie_device(self: pointer): pointer {.importc: "QMovie_device".}
proc fcQMovie_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QMovie_setFileName".}
proc fcQMovie_fileName(self: pointer): struct_miqt_string {.importc: "QMovie_fileName".}
proc fcQMovie_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QMovie_setFormat".}
proc fcQMovie_format(self: pointer): struct_miqt_string {.importc: "QMovie_format".}
proc fcQMovie_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QMovie_setBackgroundColor".}
proc fcQMovie_backgroundColor(self: pointer): pointer {.importc: "QMovie_backgroundColor".}
proc fcQMovie_state(self: pointer): cint {.importc: "QMovie_state".}
proc fcQMovie_frameRect(self: pointer): pointer {.importc: "QMovie_frameRect".}
proc fcQMovie_currentImage(self: pointer): pointer {.importc: "QMovie_currentImage".}
proc fcQMovie_currentPixmap(self: pointer): pointer {.importc: "QMovie_currentPixmap".}
proc fcQMovie_isValid(self: pointer): bool {.importc: "QMovie_isValid".}
proc fcQMovie_lastError(self: pointer): cint {.importc: "QMovie_lastError".}
proc fcQMovie_lastErrorString(self: pointer): struct_miqt_string {.importc: "QMovie_lastErrorString".}
proc fcQMovie_jumpToFrame(self: pointer, frameNumber: cint): bool {.importc: "QMovie_jumpToFrame".}
proc fcQMovie_loopCount(self: pointer): cint {.importc: "QMovie_loopCount".}
proc fcQMovie_frameCount(self: pointer): cint {.importc: "QMovie_frameCount".}
proc fcQMovie_nextFrameDelay(self: pointer): cint {.importc: "QMovie_nextFrameDelay".}
proc fcQMovie_currentFrameNumber(self: pointer): cint {.importc: "QMovie_currentFrameNumber".}
proc fcQMovie_speed(self: pointer): cint {.importc: "QMovie_speed".}
proc fcQMovie_scaledSize(self: pointer): pointer {.importc: "QMovie_scaledSize".}
proc fcQMovie_setScaledSize(self: pointer, size: pointer): void {.importc: "QMovie_setScaledSize".}
proc fcQMovie_cacheMode(self: pointer): cint {.importc: "QMovie_cacheMode".}
proc fcQMovie_setCacheMode(self: pointer, mode: cint): void {.importc: "QMovie_setCacheMode".}
proc fcQMovie_started(self: pointer): void {.importc: "QMovie_started".}
proc fcQMovie_connect_started(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_started".}
proc fcQMovie_resized(self: pointer, size: pointer): void {.importc: "QMovie_resized".}
proc fcQMovie_connect_resized(self: pointer, slot: int, callback: proc (slot: int, size: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_resized".}
proc fcQMovie_updated(self: pointer, rect: pointer): void {.importc: "QMovie_updated".}
proc fcQMovie_connect_updated(self: pointer, slot: int, callback: proc (slot: int, rect: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_updated".}
proc fcQMovie_stateChanged(self: pointer, state: cint): void {.importc: "QMovie_stateChanged".}
proc fcQMovie_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_stateChanged".}
proc fcQMovie_error(self: pointer, error: cint): void {.importc: "QMovie_error".}
proc fcQMovie_connect_error(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_error".}
proc fcQMovie_finished(self: pointer): void {.importc: "QMovie_finished".}
proc fcQMovie_connect_finished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_finished".}
proc fcQMovie_frameChanged(self: pointer, frameNumber: cint): void {.importc: "QMovie_frameChanged".}
proc fcQMovie_connect_frameChanged(self: pointer, slot: int, callback: proc (slot: int, frameNumber: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_frameChanged".}
proc fcQMovie_start(self: pointer): void {.importc: "QMovie_start".}
proc fcQMovie_jumpToNextFrame(self: pointer): bool {.importc: "QMovie_jumpToNextFrame".}
proc fcQMovie_setPaused(self: pointer, paused: bool): void {.importc: "QMovie_setPaused".}
proc fcQMovie_stop(self: pointer): void {.importc: "QMovie_stop".}
proc fcQMovie_setSpeed(self: pointer, percentSpeed: cint): void {.importc: "QMovie_setSpeed".}
proc fcQMovie_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMovie_tr2".}
proc fcQMovie_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMovie_tr3".}
proc fcQMovie_vtbl(self: pointer): pointer {.importc: "QMovie_vtbl".}
proc fcQMovie_vdata(self: pointer): pointer {.importc: "QMovie_vdata".}

type cQMovieVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMovie_virtualbase_metaObject(self: pointer): pointer {.importc: "QMovie_virtualbase_metaObject".}
proc fcQMovie_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMovie_virtualbase_metacast".}
proc fcQMovie_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMovie_virtualbase_metacall".}
proc fcQMovie_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMovie_virtualbase_event".}
proc fcQMovie_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMovie_virtualbase_eventFilter".}
proc fcQMovie_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMovie_virtualbase_timerEvent".}
proc fcQMovie_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMovie_virtualbase_childEvent".}
proc fcQMovie_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMovie_virtualbase_customEvent".}
proc fcQMovie_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMovie_virtualbase_connectNotify".}
proc fcQMovie_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMovie_virtualbase_disconnectNotify".}
proc fcQMovie_protectedbase_sender(self: pointer): pointer {.importc: "QMovie_protectedbase_sender".}
proc fcQMovie_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMovie_protectedbase_senderSignalIndex".}
proc fcQMovie_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMovie_protectedbase_receivers".}
proc fcQMovie_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMovie_protectedbase_isSignalConnected".}
proc fcQMovie_new(vtbl, vdata: pointer): ptr cQMovie {.importc: "QMovie_new".}
proc fcQMovie_new2(vtbl, vdata: pointer, device: pointer): ptr cQMovie {.importc: "QMovie_new2".}
proc fcQMovie_new3(vtbl, vdata: pointer, fileName: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new3".}
proc fcQMovie_new4(vtbl, vdata: pointer, parent: pointer): ptr cQMovie {.importc: "QMovie_new4".}
proc fcQMovie_new5(vtbl, vdata: pointer, device: pointer, format: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new5".}
proc fcQMovie_new6(vtbl, vdata: pointer, device: pointer, format: struct_miqt_string, parent: pointer): ptr cQMovie {.importc: "QMovie_new6".}
proc fcQMovie_new7(vtbl, vdata: pointer, fileName: struct_miqt_string, format: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new7".}
proc fcQMovie_new8(vtbl, vdata: pointer, fileName: struct_miqt_string, format: struct_miqt_string, parent: pointer): ptr cQMovie {.importc: "QMovie_new8".}
proc fcQMovie_staticMetaObject(): pointer {.importc: "QMovie_staticMetaObject".}

proc metaObject*(self: gen_qmovie_types.QMovie): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMovie_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmovie_types.QMovie, param1: cstring): pointer =
  fcQMovie_metacast(self.h, param1)

proc metacall*(self: gen_qmovie_types.QMovie, param1: cint, param2: cint, param3: pointer): cint =
  fcQMovie_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmovie_types.QMovie, s: cstring): string =
  let v_ms = fcQMovie_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc supportedFormats*(_: type gen_qmovie_types.QMovie): seq[seq[byte]] =
  var v_ma = fcQMovie_supportedFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](vx_lv_bytearray.data), 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc setDevice*(self: gen_qmovie_types.QMovie, device: gen_qiodevice_types.QIODevice): void =
  fcQMovie_setDevice(self.h, device.h)

proc device*(self: gen_qmovie_types.QMovie): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQMovie_device(self.h), owned: false)

proc setFileName*(self: gen_qmovie_types.QMovie, fileName: openArray[char]): void =
  fcQMovie_setFileName(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc fileName*(self: gen_qmovie_types.QMovie): string =
  let v_ms = fcQMovie_fileName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFormat*(self: gen_qmovie_types.QMovie, format: openArray[byte]): void =
  fcQMovie_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: gen_qmovie_types.QMovie): seq[byte] =
  var v_bytearray = fcQMovie_format(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setBackgroundColor*(self: gen_qmovie_types.QMovie, color: gen_qcolor_types.QColor): void =
  fcQMovie_setBackgroundColor(self.h, color.h)

proc backgroundColor*(self: gen_qmovie_types.QMovie): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQMovie_backgroundColor(self.h), owned: true)

proc state*(self: gen_qmovie_types.QMovie): cint =
  cint(fcQMovie_state(self.h))

proc frameRect*(self: gen_qmovie_types.QMovie): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQMovie_frameRect(self.h), owned: true)

proc currentImage*(self: gen_qmovie_types.QMovie): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQMovie_currentImage(self.h), owned: true)

proc currentPixmap*(self: gen_qmovie_types.QMovie): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQMovie_currentPixmap(self.h), owned: true)

proc isValid*(self: gen_qmovie_types.QMovie): bool =
  fcQMovie_isValid(self.h)

proc lastError*(self: gen_qmovie_types.QMovie): cint =
  cint(fcQMovie_lastError(self.h))

proc lastErrorString*(self: gen_qmovie_types.QMovie): string =
  let v_ms = fcQMovie_lastErrorString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc jumpToFrame*(self: gen_qmovie_types.QMovie, frameNumber: cint): bool =
  fcQMovie_jumpToFrame(self.h, frameNumber)

proc loopCount*(self: gen_qmovie_types.QMovie): cint =
  fcQMovie_loopCount(self.h)

proc frameCount*(self: gen_qmovie_types.QMovie): cint =
  fcQMovie_frameCount(self.h)

proc nextFrameDelay*(self: gen_qmovie_types.QMovie): cint =
  fcQMovie_nextFrameDelay(self.h)

proc currentFrameNumber*(self: gen_qmovie_types.QMovie): cint =
  fcQMovie_currentFrameNumber(self.h)

proc speed*(self: gen_qmovie_types.QMovie): cint =
  fcQMovie_speed(self.h)

proc scaledSize*(self: gen_qmovie_types.QMovie): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMovie_scaledSize(self.h), owned: true)

proc setScaledSize*(self: gen_qmovie_types.QMovie, size: gen_qsize_types.QSize): void =
  fcQMovie_setScaledSize(self.h, size.h)

proc cacheMode*(self: gen_qmovie_types.QMovie): cint =
  cint(fcQMovie_cacheMode(self.h))

proc setCacheMode*(self: gen_qmovie_types.QMovie, mode: cint): void =
  fcQMovie_setCacheMode(self.h, cint(mode))

proc started*(self: gen_qmovie_types.QMovie): void =
  fcQMovie_started(self.h)

type QMoviestartedSlot* = proc()
proc fcQMovie_slot_callback_started(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMoviestartedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMovie_slot_callback_started_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMoviestartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStarted*(self: gen_qmovie_types.QMovie, slot: QMoviestartedSlot) =
  var tmp = new QMoviestartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_started(self.h, cast[int](addr tmp[]), fcQMovie_slot_callback_started, fcQMovie_slot_callback_started_release)

proc resized*(self: gen_qmovie_types.QMovie, size: gen_qsize_types.QSize): void =
  fcQMovie_resized(self.h, size.h)

type QMovieresizedSlot* = proc(size: gen_qsize_types.QSize)
proc fcQMovie_slot_callback_resized(slot: int, size: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMovieresizedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size, owned: false)

  nimfunc[](slotval1)

proc fcQMovie_slot_callback_resized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMovieresizedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onResized*(self: gen_qmovie_types.QMovie, slot: QMovieresizedSlot) =
  var tmp = new QMovieresizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_resized(self.h, cast[int](addr tmp[]), fcQMovie_slot_callback_resized, fcQMovie_slot_callback_resized_release)

proc updated*(self: gen_qmovie_types.QMovie, rect: gen_qrect_types.QRect): void =
  fcQMovie_updated(self.h, rect.h)

type QMovieupdatedSlot* = proc(rect: gen_qrect_types.QRect)
proc fcQMovie_slot_callback_updated(slot: int, rect: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMovieupdatedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)

  nimfunc[](slotval1)

proc fcQMovie_slot_callback_updated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMovieupdatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onUpdated*(self: gen_qmovie_types.QMovie, slot: QMovieupdatedSlot) =
  var tmp = new QMovieupdatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_updated(self.h, cast[int](addr tmp[]), fcQMovie_slot_callback_updated, fcQMovie_slot_callback_updated_release)

proc stateChanged*(self: gen_qmovie_types.QMovie, state: cint): void =
  fcQMovie_stateChanged(self.h, cint(state))

type QMoviestateChangedSlot* = proc(state: cint)
proc fcQMovie_slot_callback_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMoviestateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc fcQMovie_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMoviestateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onStateChanged*(self: gen_qmovie_types.QMovie, slot: QMoviestateChangedSlot) =
  var tmp = new QMoviestateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_stateChanged(self.h, cast[int](addr tmp[]), fcQMovie_slot_callback_stateChanged, fcQMovie_slot_callback_stateChanged_release)

proc error*(self: gen_qmovie_types.QMovie, error: cint): void =
  fcQMovie_error(self.h, cint(error))

type QMovieerrorSlot* = proc(error: cint)
proc fcQMovie_slot_callback_error(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMovieerrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc fcQMovie_slot_callback_error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMovieerrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onError*(self: gen_qmovie_types.QMovie, slot: QMovieerrorSlot) =
  var tmp = new QMovieerrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_error(self.h, cast[int](addr tmp[]), fcQMovie_slot_callback_error, fcQMovie_slot_callback_error_release)

proc finished*(self: gen_qmovie_types.QMovie): void =
  fcQMovie_finished(self.h)

type QMoviefinishedSlot* = proc()
proc fcQMovie_slot_callback_finished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMoviefinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQMovie_slot_callback_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMoviefinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFinished*(self: gen_qmovie_types.QMovie, slot: QMoviefinishedSlot) =
  var tmp = new QMoviefinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_finished(self.h, cast[int](addr tmp[]), fcQMovie_slot_callback_finished, fcQMovie_slot_callback_finished_release)

proc frameChanged*(self: gen_qmovie_types.QMovie, frameNumber: cint): void =
  fcQMovie_frameChanged(self.h, frameNumber)

type QMovieframeChangedSlot* = proc(frameNumber: cint)
proc fcQMovie_slot_callback_frameChanged(slot: int, frameNumber: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMovieframeChangedSlot](cast[pointer](slot))
  let slotval1 = frameNumber

  nimfunc[](slotval1)

proc fcQMovie_slot_callback_frameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMovieframeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onFrameChanged*(self: gen_qmovie_types.QMovie, slot: QMovieframeChangedSlot) =
  var tmp = new QMovieframeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_frameChanged(self.h, cast[int](addr tmp[]), fcQMovie_slot_callback_frameChanged, fcQMovie_slot_callback_frameChanged_release)

proc start*(self: gen_qmovie_types.QMovie): void =
  fcQMovie_start(self.h)

proc jumpToNextFrame*(self: gen_qmovie_types.QMovie): bool =
  fcQMovie_jumpToNextFrame(self.h)

proc setPaused*(self: gen_qmovie_types.QMovie, paused: bool): void =
  fcQMovie_setPaused(self.h, paused)

proc stop*(self: gen_qmovie_types.QMovie): void =
  fcQMovie_stop(self.h)

proc setSpeed*(self: gen_qmovie_types.QMovie, percentSpeed: cint): void =
  fcQMovie_setSpeed(self.h, percentSpeed)

proc tr*(_: type gen_qmovie_types.QMovie, s: cstring, c: cstring): string =
  let v_ms = fcQMovie_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmovie_types.QMovie, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMovie_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QMoviemetaObjectProc* = proc(self: QMovie): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMoviemetacastProc* = proc(self: QMovie, param1: cstring): pointer {.raises: [], gcsafe.}
type QMoviemetacallProc* = proc(self: QMovie, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMovieeventProc* = proc(self: QMovie, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMovieeventFilterProc* = proc(self: QMovie, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMovietimerEventProc* = proc(self: QMovie, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMoviechildEventProc* = proc(self: QMovie, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMoviecustomEventProc* = proc(self: QMovie, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMovieconnectNotifyProc* = proc(self: QMovie, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMoviedisconnectNotifyProc* = proc(self: QMovie, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QMovieVTable* {.inheritable, pure.} = object
  vtbl: cQMovieVTable
  metaObject*: QMoviemetaObjectProc
  metacast*: QMoviemetacastProc
  metacall*: QMoviemetacallProc
  event*: QMovieeventProc
  eventFilter*: QMovieeventFilterProc
  timerEvent*: QMovietimerEventProc
  childEvent*: QMoviechildEventProc
  customEvent*: QMoviecustomEventProc
  connectNotify*: QMovieconnectNotifyProc
  disconnectNotify*: QMoviedisconnectNotifyProc

proc QMoviemetaObject*(self: gen_qmovie_types.QMovie): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMovie_virtualbase_metaObject(self.h), owned: false)

proc QMoviemetacast*(self: gen_qmovie_types.QMovie, param1: cstring): pointer =
  fcQMovie_virtualbase_metacast(self.h, param1)

proc QMoviemetacall*(self: gen_qmovie_types.QMovie, param1: cint, param2: cint, param3: pointer): cint =
  fcQMovie_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QMovieevent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent_types.QEvent): bool =
  fcQMovie_virtualbase_event(self.h, event.h)

proc QMovieeventFilter*(self: gen_qmovie_types.QMovie, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMovie_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QMovietimerEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMovie_virtualbase_timerEvent(self.h, event.h)

proc QMoviechildEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMovie_virtualbase_childEvent(self.h, event.h)

proc QMoviecustomEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent_types.QEvent): void =
  fcQMovie_virtualbase_customEvent(self.h, event.h)

proc QMovieconnectNotify*(self: gen_qmovie_types.QMovie, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMovie_virtualbase_connectNotify(self.h, signal.h)

proc QMoviedisconnectNotify*(self: gen_qmovie_types.QMovie, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMovie_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQMovie_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMovie_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQMovie_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQMovie_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQMovie_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQMovie_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQMovie_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQMovie_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQMovie_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQMovie_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](fcQMovie_vdata(self))
  let self = QMovie(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMovie* {.inheritable.} = ref object of QMovie
  vtbl*: cQMovieVTable

method metaObject*(self: VirtualQMovie): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMoviemetaObject(self[])
method metacast*(self: VirtualQMovie, param1: cstring): pointer {.base.} =
  QMoviemetacast(self[], param1)
method metacall*(self: VirtualQMovie, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMoviemetacall(self[], param1, param2, param3)
method event*(self: VirtualQMovie, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMovieevent(self[], event)
method eventFilter*(self: VirtualQMovie, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMovieeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQMovie, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMovietimerEvent(self[], event)
method childEvent*(self: VirtualQMovie, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMoviechildEvent(self[], event)
method customEvent*(self: VirtualQMovie, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMoviecustomEvent(self[], event)
method connectNotify*(self: VirtualQMovie, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMovieconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQMovie, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMoviedisconnectNotify(self[], signal)

proc fcQMovie_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQMovie_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQMovie_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQMovie_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQMovie_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQMovie_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQMovie_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQMovie_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQMovie_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQMovie_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMovie](fcQMovie_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qmovie_types.QMovie): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMovie_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmovie_types.QMovie): cint =
  fcQMovie_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmovie_types.QMovie, signal: cstring): cint =
  fcQMovie_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmovie_types.QMovie, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMovie_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmovie_types.QMovie,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](fcQMovie_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMovie_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMovie_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMovie_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMovie_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMovie_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMovie_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMovie_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMovie_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMovie_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMovie_vtable_callback_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](fcQMovie_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMovie_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMovie_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMovie_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMovie_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMovie_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMovie_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMovie_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMovie_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMovie_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMovie_vtable_callback_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new2(addr(vtbl[].vtbl), addr(vtbl[]), device.h), owned: true)

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: openArray[char],
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](fcQMovie_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMovie_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMovie_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMovie_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMovie_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMovie_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMovie_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMovie_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMovie_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMovie_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMovie_vtable_callback_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new3(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName)))), owned: true)

proc create*(T: type gen_qmovie_types.QMovie,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](fcQMovie_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMovie_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMovie_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMovie_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMovie_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMovie_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMovie_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMovie_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMovie_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMovie_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMovie_vtable_callback_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new4(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice, format: openArray[byte],
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](fcQMovie_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMovie_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMovie_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMovie_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMovie_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMovie_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMovie_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMovie_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMovie_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMovie_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMovie_vtable_callback_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new5(addr(vtbl[].vtbl), addr(vtbl[]), device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))), owned: true)

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice, format: openArray[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](fcQMovie_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMovie_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMovie_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMovie_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMovie_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMovie_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMovie_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMovie_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMovie_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMovie_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMovie_vtable_callback_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new6(addr(vtbl[].vtbl), addr(vtbl[]), device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))), parent.h), owned: true)

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: openArray[char], format: openArray[byte],
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](fcQMovie_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMovie_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMovie_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMovie_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMovie_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMovie_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMovie_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMovie_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMovie_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMovie_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMovie_vtable_callback_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new7(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))), owned: true)

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: openArray[char], format: openArray[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](fcQMovie_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQMovie_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQMovie_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQMovie_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQMovie_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQMovie_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQMovie_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQMovie_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQMovie_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQMovie_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQMovie_vtable_callback_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new8(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))), parent.h), owned: true)

const cQMovie_mvtbl = cQMovieVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMovie()[])](self.fcQMovie_vdata())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQMovie_method_callback_metaObject,
  metacast: fcQMovie_method_callback_metacast,
  metacall: fcQMovie_method_callback_metacall,
  event: fcQMovie_method_callback_event,
  eventFilter: fcQMovie_method_callback_eventFilter,
  timerEvent: fcQMovie_method_callback_timerEvent,
  childEvent: fcQMovie_method_callback_childEvent,
  customEvent: fcQMovie_method_callback_customEvent,
  connectNotify: fcQMovie_method_callback_connectNotify,
  disconnectNotify: fcQMovie_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmovie_types.QMovie,
    inst: VirtualQMovie) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMovie_new(addr(cQMovie_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice,
    inst: VirtualQMovie) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMovie_new2(addr(cQMovie_mvtbl), addr(inst[]), device.h)
  inst[].owned = true

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: openArray[char],
    inst: VirtualQMovie) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMovie_new3(addr(cQMovie_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))
  inst[].owned = true

proc create*(T: type gen_qmovie_types.QMovie,
    parent: gen_qobject_types.QObject,
    inst: VirtualQMovie) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMovie_new4(addr(cQMovie_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice, format: openArray[byte],
    inst: VirtualQMovie) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMovie_new5(addr(cQMovie_mvtbl), addr(inst[]), device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))
  inst[].owned = true

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice, format: openArray[byte], parent: gen_qobject_types.QObject,
    inst: VirtualQMovie) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMovie_new6(addr(cQMovie_mvtbl), addr(inst[]), device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))), parent.h)
  inst[].owned = true

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: openArray[char], format: openArray[byte],
    inst: VirtualQMovie) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMovie_new7(addr(cQMovie_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))
  inst[].owned = true

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: openArray[char], format: openArray[byte], parent: gen_qobject_types.QObject,
    inst: VirtualQMovie) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMovie_new8(addr(cQMovie_mvtbl), addr(inst[]), struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmovie_types.QMovie): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMovie_staticMetaObject())
