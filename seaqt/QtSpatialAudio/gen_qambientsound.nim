import ./Qt6SpatialAudio_libs

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

const cflags = gorge("pkg-config --cflags Qt6SpatialAudio")  & " -fPIC"
{.compile("gen_qambientsound.cpp", cflags).}


type QAmbientSoundLoopsEnum* = distinct cint
template Infinite*(_: type QAmbientSoundLoopsEnum): untyped = -1
template Once*(_: type QAmbientSoundLoopsEnum): untyped = 1


import ./gen_qambientsound_types
export gen_qambientsound_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qaudioengine_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qaudioengine_types

type cQAmbientSound*{.exportc: "QAmbientSound", incompleteStruct.} = object

proc fcQAmbientSound_new(engine: pointer): ptr cQAmbientSound {.importc: "QAmbientSound_new".}
proc fcQAmbientSound_metaObject(self: pointer, ): pointer {.importc: "QAmbientSound_metaObject".}
proc fcQAmbientSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QAmbientSound_metacast".}
proc fcQAmbientSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAmbientSound_metacall".}
proc fcQAmbientSound_tr(s: cstring): struct_miqt_string {.importc: "QAmbientSound_tr".}
proc fcQAmbientSound_setSource(self: pointer, url: pointer): void {.importc: "QAmbientSound_setSource".}
proc fcQAmbientSound_source(self: pointer, ): pointer {.importc: "QAmbientSound_source".}
proc fcQAmbientSound_loops(self: pointer, ): cint {.importc: "QAmbientSound_loops".}
proc fcQAmbientSound_setLoops(self: pointer, loops: cint): void {.importc: "QAmbientSound_setLoops".}
proc fcQAmbientSound_autoPlay(self: pointer, ): bool {.importc: "QAmbientSound_autoPlay".}
proc fcQAmbientSound_setAutoPlay(self: pointer, autoPlay: bool): void {.importc: "QAmbientSound_setAutoPlay".}
proc fcQAmbientSound_setVolume(self: pointer, volume: float32): void {.importc: "QAmbientSound_setVolume".}
proc fcQAmbientSound_volume(self: pointer, ): float32 {.importc: "QAmbientSound_volume".}
proc fcQAmbientSound_engine(self: pointer, ): pointer {.importc: "QAmbientSound_engine".}
proc fcQAmbientSound_sourceChanged(self: pointer, ): void {.importc: "QAmbientSound_sourceChanged".}
proc fcQAmbientSound_connect_sourceChanged(self: pointer, slot: int) {.importc: "QAmbientSound_connect_sourceChanged".}
proc fcQAmbientSound_loopsChanged(self: pointer, ): void {.importc: "QAmbientSound_loopsChanged".}
proc fcQAmbientSound_connect_loopsChanged(self: pointer, slot: int) {.importc: "QAmbientSound_connect_loopsChanged".}
proc fcQAmbientSound_autoPlayChanged(self: pointer, ): void {.importc: "QAmbientSound_autoPlayChanged".}
proc fcQAmbientSound_connect_autoPlayChanged(self: pointer, slot: int) {.importc: "QAmbientSound_connect_autoPlayChanged".}
proc fcQAmbientSound_volumeChanged(self: pointer, ): void {.importc: "QAmbientSound_volumeChanged".}
proc fcQAmbientSound_connect_volumeChanged(self: pointer, slot: int) {.importc: "QAmbientSound_connect_volumeChanged".}
proc fcQAmbientSound_play(self: pointer, ): void {.importc: "QAmbientSound_play".}
proc fcQAmbientSound_pause(self: pointer, ): void {.importc: "QAmbientSound_pause".}
proc fcQAmbientSound_stop(self: pointer, ): void {.importc: "QAmbientSound_stop".}
proc fcQAmbientSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAmbientSound_tr2".}
proc fcQAmbientSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAmbientSound_tr3".}
proc fQAmbientSound_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAmbientSound_virtualbase_metaObject".}
proc fcQAmbientSound_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_metaObject".}
proc fQAmbientSound_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAmbientSound_virtualbase_metacast".}
proc fcQAmbientSound_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_metacast".}
proc fQAmbientSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAmbientSound_virtualbase_metacall".}
proc fcQAmbientSound_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_metacall".}
proc fQAmbientSound_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAmbientSound_virtualbase_event".}
proc fcQAmbientSound_override_virtual_event(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_event".}
proc fQAmbientSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAmbientSound_virtualbase_eventFilter".}
proc fcQAmbientSound_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_eventFilter".}
proc fQAmbientSound_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAmbientSound_virtualbase_timerEvent".}
proc fcQAmbientSound_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_timerEvent".}
proc fQAmbientSound_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAmbientSound_virtualbase_childEvent".}
proc fcQAmbientSound_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_childEvent".}
proc fQAmbientSound_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAmbientSound_virtualbase_customEvent".}
proc fcQAmbientSound_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_customEvent".}
proc fQAmbientSound_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAmbientSound_virtualbase_connectNotify".}
proc fcQAmbientSound_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_connectNotify".}
proc fQAmbientSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAmbientSound_virtualbase_disconnectNotify".}
proc fcQAmbientSound_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAmbientSound_override_virtual_disconnectNotify".}
proc fcQAmbientSound_staticMetaObject(): pointer {.importc: "QAmbientSound_staticMetaObject".}
proc fcQAmbientSound_delete(self: pointer) {.importc: "QAmbientSound_delete".}


func init*(T: type gen_qambientsound_types.QAmbientSound, h: ptr cQAmbientSound): gen_qambientsound_types.QAmbientSound =
  T(h: h)
proc create*(T: type gen_qambientsound_types.QAmbientSound, engine: gen_qaudioengine_types.QAudioEngine): gen_qambientsound_types.QAmbientSound =
  gen_qambientsound_types.QAmbientSound.init(fcQAmbientSound_new(engine.h))

proc metaObject*(self: gen_qambientsound_types.QAmbientSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAmbientSound_metaObject(self.h))

proc metacast*(self: gen_qambientsound_types.QAmbientSound, param1: cstring): pointer =
  fcQAmbientSound_metacast(self.h, param1)

proc metacall*(self: gen_qambientsound_types.QAmbientSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQAmbientSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qambientsound_types.QAmbientSound, s: cstring): string =
  let v_ms = fcQAmbientSound_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qambientsound_types.QAmbientSound, url: gen_qurl_types.QUrl): void =
  fcQAmbientSound_setSource(self.h, url.h)

proc source*(self: gen_qambientsound_types.QAmbientSound, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQAmbientSound_source(self.h))

proc loops*(self: gen_qambientsound_types.QAmbientSound, ): cint =
  fcQAmbientSound_loops(self.h)

proc setLoops*(self: gen_qambientsound_types.QAmbientSound, loops: cint): void =
  fcQAmbientSound_setLoops(self.h, loops)

proc autoPlay*(self: gen_qambientsound_types.QAmbientSound, ): bool =
  fcQAmbientSound_autoPlay(self.h)

proc setAutoPlay*(self: gen_qambientsound_types.QAmbientSound, autoPlay: bool): void =
  fcQAmbientSound_setAutoPlay(self.h, autoPlay)

proc setVolume*(self: gen_qambientsound_types.QAmbientSound, volume: float32): void =
  fcQAmbientSound_setVolume(self.h, volume)

proc volume*(self: gen_qambientsound_types.QAmbientSound, ): float32 =
  fcQAmbientSound_volume(self.h)

proc engine*(self: gen_qambientsound_types.QAmbientSound, ): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine(h: fcQAmbientSound_engine(self.h))

proc sourceChanged*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_sourceChanged(self.h)

type QAmbientSoundsourceChangedSlot* = proc()
proc miqt_exec_callback_QAmbientSound_sourceChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAmbientSoundsourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsourceChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundsourceChangedSlot) =
  var tmp = new QAmbientSoundsourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_sourceChanged(self.h, cast[int](addr tmp[]))

proc loopsChanged*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_loopsChanged(self.h)

type QAmbientSoundloopsChangedSlot* = proc()
proc miqt_exec_callback_QAmbientSound_loopsChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAmbientSoundloopsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onloopsChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundloopsChangedSlot) =
  var tmp = new QAmbientSoundloopsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_loopsChanged(self.h, cast[int](addr tmp[]))

proc autoPlayChanged*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_autoPlayChanged(self.h)

type QAmbientSoundautoPlayChangedSlot* = proc()
proc miqt_exec_callback_QAmbientSound_autoPlayChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAmbientSoundautoPlayChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onautoPlayChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundautoPlayChangedSlot) =
  var tmp = new QAmbientSoundautoPlayChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_autoPlayChanged(self.h, cast[int](addr tmp[]))

proc volumeChanged*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_volumeChanged(self.h)

type QAmbientSoundvolumeChangedSlot* = proc()
proc miqt_exec_callback_QAmbientSound_volumeChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAmbientSoundvolumeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvolumeChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundvolumeChangedSlot) =
  var tmp = new QAmbientSoundvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_volumeChanged(self.h, cast[int](addr tmp[]))

proc play*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_play(self.h)

proc pause*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_pause(self.h)

proc stop*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_stop(self.h)

proc tr*(_: type gen_qambientsound_types.QAmbientSound, s: cstring, c: cstring): string =
  let v_ms = fcQAmbientSound_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qambientsound_types.QAmbientSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAmbientSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAmbientSoundmetaObject*(self: gen_qambientsound_types.QAmbientSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAmbientSound_virtualbase_metaObject(self.h))

type QAmbientSoundmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundmetaObjectProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_metaObject(self: ptr cQAmbientSound, slot: int): pointer {.exportc: "miqt_exec_callback_QAmbientSound_metaObject ".} =
  var nimfunc = cast[ptr QAmbientSoundmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAmbientSoundmetacast*(self: gen_qambientsound_types.QAmbientSound, param1: cstring): pointer =
  fQAmbientSound_virtualbase_metacast(self.h, param1)

type QAmbientSoundmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundmetacastProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_metacast(self: ptr cQAmbientSound, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAmbientSound_metacast ".} =
  var nimfunc = cast[ptr QAmbientSoundmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAmbientSoundmetacall*(self: gen_qambientsound_types.QAmbientSound, param1: cint, param2: cint, param3: pointer): cint =
  fQAmbientSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAmbientSoundmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundmetacallProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_metacall(self: ptr cQAmbientSound, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAmbientSound_metacall ".} =
  var nimfunc = cast[ptr QAmbientSoundmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAmbientSoundevent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QEvent): bool =
  fQAmbientSound_virtualbase_event(self.h, event.h)

type QAmbientSoundeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundeventProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_event(self: ptr cQAmbientSound, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAmbientSound_event ".} =
  var nimfunc = cast[ptr QAmbientSoundeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAmbientSoundeventFilter*(self: gen_qambientsound_types.QAmbientSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAmbientSound_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAmbientSoundeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundeventFilterProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_eventFilter(self: ptr cQAmbientSound, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAmbientSound_eventFilter ".} =
  var nimfunc = cast[ptr QAmbientSoundeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAmbientSoundtimerEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAmbientSound_virtualbase_timerEvent(self.h, event.h)

type QAmbientSoundtimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundtimerEventProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundtimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_timerEvent(self: ptr cQAmbientSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_timerEvent ".} =
  var nimfunc = cast[ptr QAmbientSoundtimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAmbientSoundchildEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QChildEvent): void =
  fQAmbientSound_virtualbase_childEvent(self.h, event.h)

type QAmbientSoundchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundchildEventProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_childEvent(self: ptr cQAmbientSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_childEvent ".} =
  var nimfunc = cast[ptr QAmbientSoundchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAmbientSoundcustomEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QEvent): void =
  fQAmbientSound_virtualbase_customEvent(self.h, event.h)

type QAmbientSoundcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundcustomEventProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_customEvent(self: ptr cQAmbientSound, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_customEvent ".} =
  var nimfunc = cast[ptr QAmbientSoundcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAmbientSoundconnectNotify*(self: gen_qambientsound_types.QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAmbientSound_virtualbase_connectNotify(self.h, signal.h)

type QAmbientSoundconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAmbientSoundconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_connectNotify(self: ptr cQAmbientSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_connectNotify ".} =
  var nimfunc = cast[ptr QAmbientSoundconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAmbientSounddisconnectNotify*(self: gen_qambientsound_types.QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAmbientSound_virtualbase_disconnectNotify(self.h, signal.h)

type QAmbientSounddisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSounddisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAmbientSounddisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAmbientSound_disconnectNotify(self: ptr cQAmbientSound, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAmbientSound_disconnectNotify ".} =
  var nimfunc = cast[ptr QAmbientSounddisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qambientsound_types.QAmbientSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAmbientSound_staticMetaObject())
proc delete*(self: gen_qambientsound_types.QAmbientSound) =
  fcQAmbientSound_delete(self.h)
