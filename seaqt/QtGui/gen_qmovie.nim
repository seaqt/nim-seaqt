import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qmovie.cpp", cflags).}


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

proc fcQMovie_metaObject(self: pointer, ): pointer {.importc: "QMovie_metaObject".}
proc fcQMovie_metacast(self: pointer, param1: cstring): pointer {.importc: "QMovie_metacast".}
proc fcQMovie_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMovie_metacall".}
proc fcQMovie_tr(s: cstring): struct_miqt_string {.importc: "QMovie_tr".}
proc fcQMovie_trUtf8(s: cstring): struct_miqt_string {.importc: "QMovie_trUtf8".}
proc fcQMovie_supportedFormats(): struct_miqt_array {.importc: "QMovie_supportedFormats".}
proc fcQMovie_setDevice(self: pointer, device: pointer): void {.importc: "QMovie_setDevice".}
proc fcQMovie_device(self: pointer, ): pointer {.importc: "QMovie_device".}
proc fcQMovie_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QMovie_setFileName".}
proc fcQMovie_fileName(self: pointer, ): struct_miqt_string {.importc: "QMovie_fileName".}
proc fcQMovie_setFormat(self: pointer, format: struct_miqt_string): void {.importc: "QMovie_setFormat".}
proc fcQMovie_format(self: pointer, ): struct_miqt_string {.importc: "QMovie_format".}
proc fcQMovie_setBackgroundColor(self: pointer, color: pointer): void {.importc: "QMovie_setBackgroundColor".}
proc fcQMovie_backgroundColor(self: pointer, ): pointer {.importc: "QMovie_backgroundColor".}
proc fcQMovie_state(self: pointer, ): cint {.importc: "QMovie_state".}
proc fcQMovie_frameRect(self: pointer, ): pointer {.importc: "QMovie_frameRect".}
proc fcQMovie_currentImage(self: pointer, ): pointer {.importc: "QMovie_currentImage".}
proc fcQMovie_currentPixmap(self: pointer, ): pointer {.importc: "QMovie_currentPixmap".}
proc fcQMovie_isValid(self: pointer, ): bool {.importc: "QMovie_isValid".}
proc fcQMovie_lastError(self: pointer, ): cint {.importc: "QMovie_lastError".}
proc fcQMovie_lastErrorString(self: pointer, ): struct_miqt_string {.importc: "QMovie_lastErrorString".}
proc fcQMovie_jumpToFrame(self: pointer, frameNumber: cint): bool {.importc: "QMovie_jumpToFrame".}
proc fcQMovie_loopCount(self: pointer, ): cint {.importc: "QMovie_loopCount".}
proc fcQMovie_frameCount(self: pointer, ): cint {.importc: "QMovie_frameCount".}
proc fcQMovie_nextFrameDelay(self: pointer, ): cint {.importc: "QMovie_nextFrameDelay".}
proc fcQMovie_currentFrameNumber(self: pointer, ): cint {.importc: "QMovie_currentFrameNumber".}
proc fcQMovie_speed(self: pointer, ): cint {.importc: "QMovie_speed".}
proc fcQMovie_scaledSize(self: pointer, ): pointer {.importc: "QMovie_scaledSize".}
proc fcQMovie_setScaledSize(self: pointer, size: pointer): void {.importc: "QMovie_setScaledSize".}
proc fcQMovie_cacheMode(self: pointer, ): cint {.importc: "QMovie_cacheMode".}
proc fcQMovie_setCacheMode(self: pointer, mode: cint): void {.importc: "QMovie_setCacheMode".}
proc fcQMovie_started(self: pointer, ): void {.importc: "QMovie_started".}
proc fcQMovie_connect_started(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_started".}
proc fcQMovie_resized(self: pointer, size: pointer): void {.importc: "QMovie_resized".}
proc fcQMovie_connect_resized(self: pointer, slot: int, callback: proc (slot: int, size: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_resized".}
proc fcQMovie_updated(self: pointer, rect: pointer): void {.importc: "QMovie_updated".}
proc fcQMovie_connect_updated(self: pointer, slot: int, callback: proc (slot: int, rect: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_updated".}
proc fcQMovie_stateChanged(self: pointer, state: cint): void {.importc: "QMovie_stateChanged".}
proc fcQMovie_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, state: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_stateChanged".}
proc fcQMovie_error(self: pointer, error: cint): void {.importc: "QMovie_error".}
proc fcQMovie_connect_error(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_error".}
proc fcQMovie_finished(self: pointer, ): void {.importc: "QMovie_finished".}
proc fcQMovie_connect_finished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_finished".}
proc fcQMovie_frameChanged(self: pointer, frameNumber: cint): void {.importc: "QMovie_frameChanged".}
proc fcQMovie_connect_frameChanged(self: pointer, slot: int, callback: proc (slot: int, frameNumber: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMovie_connect_frameChanged".}
proc fcQMovie_start(self: pointer, ): void {.importc: "QMovie_start".}
proc fcQMovie_jumpToNextFrame(self: pointer, ): bool {.importc: "QMovie_jumpToNextFrame".}
proc fcQMovie_setPaused(self: pointer, paused: bool): void {.importc: "QMovie_setPaused".}
proc fcQMovie_stop(self: pointer, ): void {.importc: "QMovie_stop".}
proc fcQMovie_setSpeed(self: pointer, percentSpeed: cint): void {.importc: "QMovie_setSpeed".}
proc fcQMovie_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMovie_tr2".}
proc fcQMovie_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMovie_tr3".}
proc fcQMovie_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMovie_trUtf82".}
proc fcQMovie_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMovie_trUtf83".}
type cQMovieVTable = object
  destructor*: proc(vtbl: ptr cQMovieVTable, self: ptr cQMovie) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQMovie_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QMovie_virtualbase_metaObject".}
proc fcQMovie_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMovie_virtualbase_metacast".}
proc fcQMovie_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMovie_virtualbase_metacall".}
proc fcQMovie_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMovie_virtualbase_event".}
proc fcQMovie_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMovie_virtualbase_eventFilter".}
proc fcQMovie_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMovie_virtualbase_timerEvent".}
proc fcQMovie_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMovie_virtualbase_childEvent".}
proc fcQMovie_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMovie_virtualbase_customEvent".}
proc fcQMovie_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMovie_virtualbase_connectNotify".}
proc fcQMovie_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMovie_virtualbase_disconnectNotify".}
proc fcQMovie_protectedbase_sender(self: pointer, ): pointer {.importc: "QMovie_protectedbase_sender".}
proc fcQMovie_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QMovie_protectedbase_senderSignalIndex".}
proc fcQMovie_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMovie_protectedbase_receivers".}
proc fcQMovie_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMovie_protectedbase_isSignalConnected".}
proc fcQMovie_new(vtbl: pointer, ): ptr cQMovie {.importc: "QMovie_new".}
proc fcQMovie_new2(vtbl: pointer, device: pointer): ptr cQMovie {.importc: "QMovie_new2".}
proc fcQMovie_new3(vtbl: pointer, fileName: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new3".}
proc fcQMovie_new4(vtbl: pointer, parent: pointer): ptr cQMovie {.importc: "QMovie_new4".}
proc fcQMovie_new5(vtbl: pointer, device: pointer, format: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new5".}
proc fcQMovie_new6(vtbl: pointer, device: pointer, format: struct_miqt_string, parent: pointer): ptr cQMovie {.importc: "QMovie_new6".}
proc fcQMovie_new7(vtbl: pointer, fileName: struct_miqt_string, format: struct_miqt_string): ptr cQMovie {.importc: "QMovie_new7".}
proc fcQMovie_new8(vtbl: pointer, fileName: struct_miqt_string, format: struct_miqt_string, parent: pointer): ptr cQMovie {.importc: "QMovie_new8".}
proc fcQMovie_staticMetaObject(): pointer {.importc: "QMovie_staticMetaObject".}
proc fcQMovie_delete(self: pointer) {.importc: "QMovie_delete".}

proc metaObject*(self: gen_qmovie_types.QMovie, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMovie_metaObject(self.h))

proc metacast*(self: gen_qmovie_types.QMovie, param1: cstring): pointer =
  fcQMovie_metacast(self.h, param1)

proc metacall*(self: gen_qmovie_types.QMovie, param1: cint, param2: cint, param3: pointer): cint =
  fcQMovie_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmovie_types.QMovie, s: cstring): string =
  let v_ms = fcQMovie_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmovie_types.QMovie, s: cstring): string =
  let v_ms = fcQMovie_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc supportedFormats*(_: type gen_qmovie_types.QMovie, ): seq[seq[byte]] =
  var v_ma = fcQMovie_supportedFormats()
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setDevice*(self: gen_qmovie_types.QMovie, device: gen_qiodevice_types.QIODevice): void =
  fcQMovie_setDevice(self.h, device.h)

proc device*(self: gen_qmovie_types.QMovie, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQMovie_device(self.h))

proc setFileName*(self: gen_qmovie_types.QMovie, fileName: string): void =
  fcQMovie_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc fileName*(self: gen_qmovie_types.QMovie, ): string =
  let v_ms = fcQMovie_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFormat*(self: gen_qmovie_types.QMovie, format: seq[byte]): void =
  fcQMovie_setFormat(self.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))))

proc format*(self: gen_qmovie_types.QMovie, ): seq[byte] =
  var v_bytearray = fcQMovie_format(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setBackgroundColor*(self: gen_qmovie_types.QMovie, color: gen_qcolor_types.QColor): void =
  fcQMovie_setBackgroundColor(self.h, color.h)

proc backgroundColor*(self: gen_qmovie_types.QMovie, ): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQMovie_backgroundColor(self.h))

proc state*(self: gen_qmovie_types.QMovie, ): cint =
  cint(fcQMovie_state(self.h))

proc frameRect*(self: gen_qmovie_types.QMovie, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQMovie_frameRect(self.h))

proc currentImage*(self: gen_qmovie_types.QMovie, ): gen_qimage_types.QImage =
  gen_qimage_types.QImage(h: fcQMovie_currentImage(self.h))

proc currentPixmap*(self: gen_qmovie_types.QMovie, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQMovie_currentPixmap(self.h))

proc isValid*(self: gen_qmovie_types.QMovie, ): bool =
  fcQMovie_isValid(self.h)

proc lastError*(self: gen_qmovie_types.QMovie, ): cint =
  cint(fcQMovie_lastError(self.h))

proc lastErrorString*(self: gen_qmovie_types.QMovie, ): string =
  let v_ms = fcQMovie_lastErrorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc jumpToFrame*(self: gen_qmovie_types.QMovie, frameNumber: cint): bool =
  fcQMovie_jumpToFrame(self.h, frameNumber)

proc loopCount*(self: gen_qmovie_types.QMovie, ): cint =
  fcQMovie_loopCount(self.h)

proc frameCount*(self: gen_qmovie_types.QMovie, ): cint =
  fcQMovie_frameCount(self.h)

proc nextFrameDelay*(self: gen_qmovie_types.QMovie, ): cint =
  fcQMovie_nextFrameDelay(self.h)

proc currentFrameNumber*(self: gen_qmovie_types.QMovie, ): cint =
  fcQMovie_currentFrameNumber(self.h)

proc speed*(self: gen_qmovie_types.QMovie, ): cint =
  fcQMovie_speed(self.h)

proc scaledSize*(self: gen_qmovie_types.QMovie, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQMovie_scaledSize(self.h))

proc setScaledSize*(self: gen_qmovie_types.QMovie, size: gen_qsize_types.QSize): void =
  fcQMovie_setScaledSize(self.h, size.h)

proc cacheMode*(self: gen_qmovie_types.QMovie, ): cint =
  cint(fcQMovie_cacheMode(self.h))

proc setCacheMode*(self: gen_qmovie_types.QMovie, mode: cint): void =
  fcQMovie_setCacheMode(self.h, cint(mode))

proc started*(self: gen_qmovie_types.QMovie, ): void =
  fcQMovie_started(self.h)

type QMoviestartedSlot* = proc()
proc miqt_exec_callback_cQMovie_started(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMoviestartedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMovie_started_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMoviestartedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstarted*(self: gen_qmovie_types.QMovie, slot: QMoviestartedSlot) =
  var tmp = new QMoviestartedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_started(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMovie_started, miqt_exec_callback_cQMovie_started_release)

proc resized*(self: gen_qmovie_types.QMovie, size: gen_qsize_types.QSize): void =
  fcQMovie_resized(self.h, size.h)

type QMovieresizedSlot* = proc(size: gen_qsize_types.QSize)
proc miqt_exec_callback_cQMovie_resized(slot: int, size: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMovieresizedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMovie_resized_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMovieresizedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onresized*(self: gen_qmovie_types.QMovie, slot: QMovieresizedSlot) =
  var tmp = new QMovieresizedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_resized(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMovie_resized, miqt_exec_callback_cQMovie_resized_release)

proc updated*(self: gen_qmovie_types.QMovie, rect: gen_qrect_types.QRect): void =
  fcQMovie_updated(self.h, rect.h)

type QMovieupdatedSlot* = proc(rect: gen_qrect_types.QRect)
proc miqt_exec_callback_cQMovie_updated(slot: int, rect: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QMovieupdatedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMovie_updated_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMovieupdatedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onupdated*(self: gen_qmovie_types.QMovie, slot: QMovieupdatedSlot) =
  var tmp = new QMovieupdatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_updated(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMovie_updated, miqt_exec_callback_cQMovie_updated_release)

proc stateChanged*(self: gen_qmovie_types.QMovie, state: cint): void =
  fcQMovie_stateChanged(self.h, cint(state))

type QMoviestateChangedSlot* = proc(state: cint)
proc miqt_exec_callback_cQMovie_stateChanged(slot: int, state: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMoviestateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(state)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMovie_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMoviestateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qmovie_types.QMovie, slot: QMoviestateChangedSlot) =
  var tmp = new QMoviestateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_stateChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMovie_stateChanged, miqt_exec_callback_cQMovie_stateChanged_release)

proc error*(self: gen_qmovie_types.QMovie, error: cint): void =
  fcQMovie_error(self.h, cint(error))

type QMovieerrorSlot* = proc(error: cint)
proc miqt_exec_callback_cQMovie_error(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMovieerrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMovie_error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMovieerrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qmovie_types.QMovie, slot: QMovieerrorSlot) =
  var tmp = new QMovieerrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_error(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMovie_error, miqt_exec_callback_cQMovie_error_release)

proc finished*(self: gen_qmovie_types.QMovie, ): void =
  fcQMovie_finished(self.h)

type QMoviefinishedSlot* = proc()
proc miqt_exec_callback_cQMovie_finished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMoviefinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMovie_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMoviefinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfinished*(self: gen_qmovie_types.QMovie, slot: QMoviefinishedSlot) =
  var tmp = new QMoviefinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_finished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMovie_finished, miqt_exec_callback_cQMovie_finished_release)

proc frameChanged*(self: gen_qmovie_types.QMovie, frameNumber: cint): void =
  fcQMovie_frameChanged(self.h, frameNumber)

type QMovieframeChangedSlot* = proc(frameNumber: cint)
proc miqt_exec_callback_cQMovie_frameChanged(slot: int, frameNumber: cint) {.cdecl.} =
  let nimfunc = cast[ptr QMovieframeChangedSlot](cast[pointer](slot))
  let slotval1 = frameNumber

  nimfunc[](slotval1)

proc miqt_exec_callback_cQMovie_frameChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMovieframeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onframeChanged*(self: gen_qmovie_types.QMovie, slot: QMovieframeChangedSlot) =
  var tmp = new QMovieframeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMovie_connect_frameChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMovie_frameChanged, miqt_exec_callback_cQMovie_frameChanged_release)

proc start*(self: gen_qmovie_types.QMovie, ): void =
  fcQMovie_start(self.h)

proc jumpToNextFrame*(self: gen_qmovie_types.QMovie, ): bool =
  fcQMovie_jumpToNextFrame(self.h)

proc setPaused*(self: gen_qmovie_types.QMovie, paused: bool): void =
  fcQMovie_setPaused(self.h, paused)

proc stop*(self: gen_qmovie_types.QMovie, ): void =
  fcQMovie_stop(self.h)

proc setSpeed*(self: gen_qmovie_types.QMovie, percentSpeed: cint): void =
  fcQMovie_setSpeed(self.h, percentSpeed)

proc tr*(_: type gen_qmovie_types.QMovie, s: cstring, c: cstring): string =
  let v_ms = fcQMovie_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmovie_types.QMovie, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMovie_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmovie_types.QMovie, s: cstring, c: cstring): string =
  let v_ms = fcQMovie_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmovie_types.QMovie, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMovie_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
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
type QMovieVTable* = object
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
proc QMoviemetaObject*(self: gen_qmovie_types.QMovie, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMovie_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQMovie_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QMoviemetacast*(self: gen_qmovie_types.QMovie, param1: cstring): pointer =
  fcQMovie_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQMovie_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMoviemetacall*(self: gen_qmovie_types.QMovie, param1: cint, param2: cint, param3: pointer): cint =
  fcQMovie_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQMovie_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMovieevent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent_types.QEvent): bool =
  fcQMovie_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQMovie_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMovieeventFilter*(self: gen_qmovie_types.QMovie, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMovie_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQMovie_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMovietimerEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMovie_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQMovie_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QMoviechildEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMovie_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQMovie_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QMoviecustomEvent*(self: gen_qmovie_types.QMovie, event: gen_qcoreevent_types.QEvent): void =
  fcQMovie_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQMovie_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QMovieconnectNotify*(self: gen_qmovie_types.QMovie, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMovie_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMovie_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QMoviedisconnectNotify*(self: gen_qmovie_types.QMovie, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMovie_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMovie_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMovieVTable](vtbl)
  let self = QMovie(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qmovie_types.QMovie, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMovie_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qmovie_types.QMovie, ): cint =
  fcQMovie_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmovie_types.QMovie, signal: cstring): cint =
  fcQMovie_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmovie_types.QMovie, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMovie_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmovie_types.QMovie,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMovieVTable, _: ptr cQMovie) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMovie_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMovie_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMovie_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMovie_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMovie_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMovie_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMovie_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMovie_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMovie_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMovie_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new(addr(vtbl[]), ))

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMovieVTable, _: ptr cQMovie) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMovie_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMovie_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMovie_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMovie_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMovie_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMovie_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMovie_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMovie_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMovie_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMovie_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new2(addr(vtbl[]), device.h))

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: string,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMovieVTable, _: ptr cQMovie) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMovie_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMovie_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMovie_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMovie_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMovie_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMovie_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMovie_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMovie_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMovie_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMovie_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new3(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qmovie_types.QMovie,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMovieVTable, _: ptr cQMovie) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMovie_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMovie_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMovie_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMovie_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMovie_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMovie_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMovie_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMovie_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMovie_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMovie_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new4(addr(vtbl[]), parent.h))

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice, format: seq[byte],
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMovieVTable, _: ptr cQMovie) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMovie_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMovie_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMovie_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMovie_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMovie_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMovie_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMovie_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMovie_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMovie_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMovie_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new5(addr(vtbl[]), device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc create*(T: type gen_qmovie_types.QMovie,
    device: gen_qiodevice_types.QIODevice, format: seq[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMovieVTable, _: ptr cQMovie) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMovie_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMovie_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMovie_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMovie_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMovie_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMovie_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMovie_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMovie_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMovie_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMovie_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new6(addr(vtbl[]), device.h, struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))), parent.h))

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: string, format: seq[byte],
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMovieVTable, _: ptr cQMovie) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMovie_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMovie_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMovie_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMovie_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMovie_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMovie_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMovie_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMovie_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMovie_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMovie_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new7(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format)))))

proc create*(T: type gen_qmovie_types.QMovie,
    fileName: string, format: seq[byte], parent: gen_qobject_types.QObject,
    vtbl: ref QMovieVTable = nil): gen_qmovie_types.QMovie =
  let vtbl = if vtbl == nil: new QMovieVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMovieVTable, _: ptr cQMovie) {.cdecl.} =
    let vtbl = cast[ref QMovieVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMovie_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMovie_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMovie_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMovie_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMovie_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMovie_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMovie_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMovie_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMovie_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMovie_disconnectNotify
  gen_qmovie_types.QMovie(h: fcQMovie_new8(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: cast[cstring](if len(format) == 0: nil else: unsafeAddr format[0]), len: csize_t(len(format))), parent.h))

proc staticMetaObject*(_: type gen_qmovie_types.QMovie): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMovie_staticMetaObject())
proc delete*(self: gen_qmovie_types.QMovie) =
  fcQMovie_delete(self.h)
