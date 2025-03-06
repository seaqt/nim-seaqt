import ./Qt6SpatialAudio_libs

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
proc fcQAmbientSound_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAmbientSound_connect_sourceChanged".}
proc fcQAmbientSound_loopsChanged(self: pointer, ): void {.importc: "QAmbientSound_loopsChanged".}
proc fcQAmbientSound_connect_loopsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAmbientSound_connect_loopsChanged".}
proc fcQAmbientSound_autoPlayChanged(self: pointer, ): void {.importc: "QAmbientSound_autoPlayChanged".}
proc fcQAmbientSound_connect_autoPlayChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAmbientSound_connect_autoPlayChanged".}
proc fcQAmbientSound_volumeChanged(self: pointer, ): void {.importc: "QAmbientSound_volumeChanged".}
proc fcQAmbientSound_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAmbientSound_connect_volumeChanged".}
proc fcQAmbientSound_play(self: pointer, ): void {.importc: "QAmbientSound_play".}
proc fcQAmbientSound_pause(self: pointer, ): void {.importc: "QAmbientSound_pause".}
proc fcQAmbientSound_stop(self: pointer, ): void {.importc: "QAmbientSound_stop".}
proc fcQAmbientSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAmbientSound_tr2".}
proc fcQAmbientSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAmbientSound_tr3".}
type cQAmbientSoundVTable = object
  destructor*: proc(vtbl: ptr cQAmbientSoundVTable, self: ptr cQAmbientSound) {.cdecl, raises:[], gcsafe.}
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
proc fcQAmbientSound_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAmbientSound_virtualbase_metaObject".}
proc fcQAmbientSound_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAmbientSound_virtualbase_metacast".}
proc fcQAmbientSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAmbientSound_virtualbase_metacall".}
proc fcQAmbientSound_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAmbientSound_virtualbase_event".}
proc fcQAmbientSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAmbientSound_virtualbase_eventFilter".}
proc fcQAmbientSound_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAmbientSound_virtualbase_timerEvent".}
proc fcQAmbientSound_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAmbientSound_virtualbase_childEvent".}
proc fcQAmbientSound_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAmbientSound_virtualbase_customEvent".}
proc fcQAmbientSound_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAmbientSound_virtualbase_connectNotify".}
proc fcQAmbientSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAmbientSound_virtualbase_disconnectNotify".}
proc fcQAmbientSound_protectedbase_sender(self: pointer, ): pointer {.importc: "QAmbientSound_protectedbase_sender".}
proc fcQAmbientSound_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QAmbientSound_protectedbase_senderSignalIndex".}
proc fcQAmbientSound_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAmbientSound_protectedbase_receivers".}
proc fcQAmbientSound_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAmbientSound_protectedbase_isSignalConnected".}
proc fcQAmbientSound_new(vtbl: pointer, engine: pointer): ptr cQAmbientSound {.importc: "QAmbientSound_new".}
proc fcQAmbientSound_staticMetaObject(): pointer {.importc: "QAmbientSound_staticMetaObject".}
proc fcQAmbientSound_delete(self: pointer) {.importc: "QAmbientSound_delete".}

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
proc miqt_exec_callback_cQAmbientSound_sourceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAmbientSoundsourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAmbientSound_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAmbientSoundsourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundsourceChangedSlot) =
  var tmp = new QAmbientSoundsourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_sourceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAmbientSound_sourceChanged, miqt_exec_callback_cQAmbientSound_sourceChanged_release)

proc loopsChanged*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_loopsChanged(self.h)

type QAmbientSoundloopsChangedSlot* = proc()
proc miqt_exec_callback_cQAmbientSound_loopsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAmbientSoundloopsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAmbientSound_loopsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAmbientSoundloopsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onloopsChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundloopsChangedSlot) =
  var tmp = new QAmbientSoundloopsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_loopsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAmbientSound_loopsChanged, miqt_exec_callback_cQAmbientSound_loopsChanged_release)

proc autoPlayChanged*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_autoPlayChanged(self.h)

type QAmbientSoundautoPlayChangedSlot* = proc()
proc miqt_exec_callback_cQAmbientSound_autoPlayChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAmbientSoundautoPlayChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAmbientSound_autoPlayChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAmbientSoundautoPlayChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onautoPlayChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundautoPlayChangedSlot) =
  var tmp = new QAmbientSoundautoPlayChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_autoPlayChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAmbientSound_autoPlayChanged, miqt_exec_callback_cQAmbientSound_autoPlayChanged_release)

proc volumeChanged*(self: gen_qambientsound_types.QAmbientSound, ): void =
  fcQAmbientSound_volumeChanged(self.h)

type QAmbientSoundvolumeChangedSlot* = proc()
proc miqt_exec_callback_cQAmbientSound_volumeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAmbientSoundvolumeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAmbientSound_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAmbientSoundvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvolumeChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundvolumeChangedSlot) =
  var tmp = new QAmbientSoundvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_volumeChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAmbientSound_volumeChanged, miqt_exec_callback_cQAmbientSound_volumeChanged_release)

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

type QAmbientSoundmetaObjectProc* = proc(self: QAmbientSound): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAmbientSoundmetacastProc* = proc(self: QAmbientSound, param1: cstring): pointer {.raises: [], gcsafe.}
type QAmbientSoundmetacallProc* = proc(self: QAmbientSound, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAmbientSoundeventProc* = proc(self: QAmbientSound, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAmbientSoundeventFilterProc* = proc(self: QAmbientSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAmbientSoundtimerEventProc* = proc(self: QAmbientSound, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAmbientSoundchildEventProc* = proc(self: QAmbientSound, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAmbientSoundcustomEventProc* = proc(self: QAmbientSound, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAmbientSoundconnectNotifyProc* = proc(self: QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAmbientSounddisconnectNotifyProc* = proc(self: QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAmbientSoundVTable* = object
  vtbl: cQAmbientSoundVTable
  metaObject*: QAmbientSoundmetaObjectProc
  metacast*: QAmbientSoundmetacastProc
  metacall*: QAmbientSoundmetacallProc
  event*: QAmbientSoundeventProc
  eventFilter*: QAmbientSoundeventFilterProc
  timerEvent*: QAmbientSoundtimerEventProc
  childEvent*: QAmbientSoundchildEventProc
  customEvent*: QAmbientSoundcustomEventProc
  connectNotify*: QAmbientSoundconnectNotifyProc
  disconnectNotify*: QAmbientSounddisconnectNotifyProc
proc QAmbientSoundmetaObject*(self: gen_qambientsound_types.QAmbientSound, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAmbientSound_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAmbientSound_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAmbientSoundmetacast*(self: gen_qambientsound_types.QAmbientSound, param1: cstring): pointer =
  fcQAmbientSound_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAmbientSound_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAmbientSoundmetacall*(self: gen_qambientsound_types.QAmbientSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQAmbientSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAmbientSound_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAmbientSoundevent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QEvent): bool =
  fcQAmbientSound_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAmbientSound_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAmbientSoundeventFilter*(self: gen_qambientsound_types.QAmbientSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAmbientSound_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAmbientSound_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAmbientSoundtimerEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAmbientSound_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAmbientSound_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAmbientSoundchildEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAmbientSound_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAmbientSound_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAmbientSoundcustomEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QEvent): void =
  fcQAmbientSound_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAmbientSound_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAmbientSoundconnectNotify*(self: gen_qambientsound_types.QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAmbientSound_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAmbientSound_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAmbientSounddisconnectNotify*(self: gen_qambientsound_types.QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAmbientSound_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAmbientSound_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](vtbl)
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qambientsound_types.QAmbientSound, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAmbientSound_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qambientsound_types.QAmbientSound, ): cint =
  fcQAmbientSound_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qambientsound_types.QAmbientSound, signal: cstring): cint =
  fcQAmbientSound_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qambientsound_types.QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAmbientSound_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qambientsound_types.QAmbientSound,
    engine: gen_qaudioengine_types.QAudioEngine,
    vtbl: ref QAmbientSoundVTable = nil): gen_qambientsound_types.QAmbientSound =
  let vtbl = if vtbl == nil: new QAmbientSoundVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAmbientSoundVTable, _: ptr cQAmbientSound) {.cdecl.} =
    let vtbl = cast[ref QAmbientSoundVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAmbientSound_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAmbientSound_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAmbientSound_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAmbientSound_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAmbientSound_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAmbientSound_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAmbientSound_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAmbientSound_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAmbientSound_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAmbientSound_disconnectNotify
  gen_qambientsound_types.QAmbientSound(h: fcQAmbientSound_new(addr(vtbl[]), engine.h))

proc staticMetaObject*(_: type gen_qambientsound_types.QAmbientSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAmbientSound_staticMetaObject())
proc delete*(self: gen_qambientsound_types.QAmbientSound) =
  fcQAmbientSound_delete(self.h)
