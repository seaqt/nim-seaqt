import ./qtspatialaudio_pkg

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


{.compile("gen_qambientsound.cpp", QtSpatialAudioCFlags).}


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

proc fcQAmbientSound_metaObject(self: pointer): pointer {.importc: "QAmbientSound_metaObject".}
proc fcQAmbientSound_metacast(self: pointer, param1: cstring): pointer {.importc: "QAmbientSound_metacast".}
proc fcQAmbientSound_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAmbientSound_metacall".}
proc fcQAmbientSound_tr(s: cstring): struct_miqt_string {.importc: "QAmbientSound_tr".}
proc fcQAmbientSound_setSource(self: pointer, url: pointer): void {.importc: "QAmbientSound_setSource".}
proc fcQAmbientSound_source(self: pointer): pointer {.importc: "QAmbientSound_source".}
proc fcQAmbientSound_loops(self: pointer): cint {.importc: "QAmbientSound_loops".}
proc fcQAmbientSound_setLoops(self: pointer, loops: cint): void {.importc: "QAmbientSound_setLoops".}
proc fcQAmbientSound_autoPlay(self: pointer): bool {.importc: "QAmbientSound_autoPlay".}
proc fcQAmbientSound_setAutoPlay(self: pointer, autoPlay: bool): void {.importc: "QAmbientSound_setAutoPlay".}
proc fcQAmbientSound_setVolume(self: pointer, volume: float32): void {.importc: "QAmbientSound_setVolume".}
proc fcQAmbientSound_volume(self: pointer): float32 {.importc: "QAmbientSound_volume".}
proc fcQAmbientSound_engine(self: pointer): pointer {.importc: "QAmbientSound_engine".}
proc fcQAmbientSound_sourceChanged(self: pointer): void {.importc: "QAmbientSound_sourceChanged".}
proc fcQAmbientSound_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAmbientSound_connect_sourceChanged".}
proc fcQAmbientSound_loopsChanged(self: pointer): void {.importc: "QAmbientSound_loopsChanged".}
proc fcQAmbientSound_connect_loopsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAmbientSound_connect_loopsChanged".}
proc fcQAmbientSound_autoPlayChanged(self: pointer): void {.importc: "QAmbientSound_autoPlayChanged".}
proc fcQAmbientSound_connect_autoPlayChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAmbientSound_connect_autoPlayChanged".}
proc fcQAmbientSound_volumeChanged(self: pointer): void {.importc: "QAmbientSound_volumeChanged".}
proc fcQAmbientSound_connect_volumeChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAmbientSound_connect_volumeChanged".}
proc fcQAmbientSound_play(self: pointer): void {.importc: "QAmbientSound_play".}
proc fcQAmbientSound_pause(self: pointer): void {.importc: "QAmbientSound_pause".}
proc fcQAmbientSound_stop(self: pointer): void {.importc: "QAmbientSound_stop".}
proc fcQAmbientSound_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAmbientSound_tr2".}
proc fcQAmbientSound_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAmbientSound_tr3".}
proc fcQAmbientSound_vtbl(self: pointer): pointer {.importc: "QAmbientSound_vtbl".}
proc fcQAmbientSound_vdata(self: pointer): pointer {.importc: "QAmbientSound_vdata".}

type cQAmbientSoundVTable {.pure.} = object
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
proc fcQAmbientSound_virtualbase_metaObject(self: pointer): pointer {.importc: "QAmbientSound_virtualbase_metaObject".}
proc fcQAmbientSound_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAmbientSound_virtualbase_metacast".}
proc fcQAmbientSound_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAmbientSound_virtualbase_metacall".}
proc fcQAmbientSound_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAmbientSound_virtualbase_event".}
proc fcQAmbientSound_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAmbientSound_virtualbase_eventFilter".}
proc fcQAmbientSound_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAmbientSound_virtualbase_timerEvent".}
proc fcQAmbientSound_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAmbientSound_virtualbase_childEvent".}
proc fcQAmbientSound_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAmbientSound_virtualbase_customEvent".}
proc fcQAmbientSound_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAmbientSound_virtualbase_connectNotify".}
proc fcQAmbientSound_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAmbientSound_virtualbase_disconnectNotify".}
proc fcQAmbientSound_protectedbase_sender(self: pointer): pointer {.importc: "QAmbientSound_protectedbase_sender".}
proc fcQAmbientSound_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAmbientSound_protectedbase_senderSignalIndex".}
proc fcQAmbientSound_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAmbientSound_protectedbase_receivers".}
proc fcQAmbientSound_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAmbientSound_protectedbase_isSignalConnected".}
proc fcQAmbientSound_new(vtbl, vdata: pointer, engine: pointer): ptr cQAmbientSound {.importc: "QAmbientSound_new".}
proc fcQAmbientSound_staticMetaObject(): pointer {.importc: "QAmbientSound_staticMetaObject".}

proc metaObject*(self: gen_qambientsound_types.QAmbientSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAmbientSound_metaObject(self.h), owned: false)

proc metacast*(self: gen_qambientsound_types.QAmbientSound, param1: cstring): pointer =
  fcQAmbientSound_metacast(self.h, param1)

proc metacall*(self: gen_qambientsound_types.QAmbientSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQAmbientSound_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qambientsound_types.QAmbientSound, s: cstring): string =
  let v_ms = fcQAmbientSound_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSource*(self: gen_qambientsound_types.QAmbientSound, url: gen_qurl_types.QUrl): void =
  fcQAmbientSound_setSource(self.h, url.h)

proc source*(self: gen_qambientsound_types.QAmbientSound): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQAmbientSound_source(self.h), owned: true)

proc loops*(self: gen_qambientsound_types.QAmbientSound): cint =
  fcQAmbientSound_loops(self.h)

proc setLoops*(self: gen_qambientsound_types.QAmbientSound, loops: cint): void =
  fcQAmbientSound_setLoops(self.h, loops)

proc autoPlay*(self: gen_qambientsound_types.QAmbientSound): bool =
  fcQAmbientSound_autoPlay(self.h)

proc setAutoPlay*(self: gen_qambientsound_types.QAmbientSound, autoPlay: bool): void =
  fcQAmbientSound_setAutoPlay(self.h, autoPlay)

proc setVolume*(self: gen_qambientsound_types.QAmbientSound, volume: float32): void =
  fcQAmbientSound_setVolume(self.h, volume)

proc volume*(self: gen_qambientsound_types.QAmbientSound): float32 =
  fcQAmbientSound_volume(self.h)

proc engine*(self: gen_qambientsound_types.QAmbientSound): gen_qaudioengine_types.QAudioEngine =
  gen_qaudioengine_types.QAudioEngine(h: fcQAmbientSound_engine(self.h), owned: false)

proc sourceChanged*(self: gen_qambientsound_types.QAmbientSound): void =
  fcQAmbientSound_sourceChanged(self.h)

type QAmbientSoundsourceChangedSlot* = proc()
proc fcQAmbientSound_slot_callback_sourceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAmbientSoundsourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAmbientSound_slot_callback_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAmbientSoundsourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onSourceChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundsourceChangedSlot) =
  var tmp = new QAmbientSoundsourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_sourceChanged(self.h, cast[int](addr tmp[]), fcQAmbientSound_slot_callback_sourceChanged, fcQAmbientSound_slot_callback_sourceChanged_release)

proc loopsChanged*(self: gen_qambientsound_types.QAmbientSound): void =
  fcQAmbientSound_loopsChanged(self.h)

type QAmbientSoundloopsChangedSlot* = proc()
proc fcQAmbientSound_slot_callback_loopsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAmbientSoundloopsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAmbientSound_slot_callback_loopsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAmbientSoundloopsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onLoopsChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundloopsChangedSlot) =
  var tmp = new QAmbientSoundloopsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_loopsChanged(self.h, cast[int](addr tmp[]), fcQAmbientSound_slot_callback_loopsChanged, fcQAmbientSound_slot_callback_loopsChanged_release)

proc autoPlayChanged*(self: gen_qambientsound_types.QAmbientSound): void =
  fcQAmbientSound_autoPlayChanged(self.h)

type QAmbientSoundautoPlayChangedSlot* = proc()
proc fcQAmbientSound_slot_callback_autoPlayChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAmbientSoundautoPlayChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAmbientSound_slot_callback_autoPlayChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAmbientSoundautoPlayChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAutoPlayChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundautoPlayChangedSlot) =
  var tmp = new QAmbientSoundautoPlayChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_autoPlayChanged(self.h, cast[int](addr tmp[]), fcQAmbientSound_slot_callback_autoPlayChanged, fcQAmbientSound_slot_callback_autoPlayChanged_release)

proc volumeChanged*(self: gen_qambientsound_types.QAmbientSound): void =
  fcQAmbientSound_volumeChanged(self.h)

type QAmbientSoundvolumeChangedSlot* = proc()
proc fcQAmbientSound_slot_callback_volumeChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAmbientSoundvolumeChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc fcQAmbientSound_slot_callback_volumeChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAmbientSoundvolumeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onVolumeChanged*(self: gen_qambientsound_types.QAmbientSound, slot: QAmbientSoundvolumeChangedSlot) =
  var tmp = new QAmbientSoundvolumeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAmbientSound_connect_volumeChanged(self.h, cast[int](addr tmp[]), fcQAmbientSound_slot_callback_volumeChanged, fcQAmbientSound_slot_callback_volumeChanged_release)

proc play*(self: gen_qambientsound_types.QAmbientSound): void =
  fcQAmbientSound_play(self.h)

proc pause*(self: gen_qambientsound_types.QAmbientSound): void =
  fcQAmbientSound_pause(self.h)

proc stop*(self: gen_qambientsound_types.QAmbientSound): void =
  fcQAmbientSound_stop(self.h)

proc tr*(_: type gen_qambientsound_types.QAmbientSound, s: cstring, c: cstring): string =
  let v_ms = fcQAmbientSound_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qambientsound_types.QAmbientSound, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAmbientSound_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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

type QAmbientSoundVTable* {.inheritable, pure.} = object
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

proc QAmbientSoundmetaObject*(self: gen_qambientsound_types.QAmbientSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAmbientSound_virtualbase_metaObject(self.h), owned: false)

proc QAmbientSoundmetacast*(self: gen_qambientsound_types.QAmbientSound, param1: cstring): pointer =
  fcQAmbientSound_virtualbase_metacast(self.h, param1)

proc QAmbientSoundmetacall*(self: gen_qambientsound_types.QAmbientSound, param1: cint, param2: cint, param3: pointer): cint =
  fcQAmbientSound_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QAmbientSoundevent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QEvent): bool =
  fcQAmbientSound_virtualbase_event(self.h, event.h)

proc QAmbientSoundeventFilter*(self: gen_qambientsound_types.QAmbientSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAmbientSound_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QAmbientSoundtimerEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAmbientSound_virtualbase_timerEvent(self.h, event.h)

proc QAmbientSoundchildEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAmbientSound_virtualbase_childEvent(self.h, event.h)

proc QAmbientSoundcustomEvent*(self: gen_qambientsound_types.QAmbientSound, event: gen_qcoreevent_types.QEvent): void =
  fcQAmbientSound_virtualbase_customEvent(self.h, event.h)

proc QAmbientSoundconnectNotify*(self: gen_qambientsound_types.QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAmbientSound_virtualbase_connectNotify(self.h, signal.h)

proc QAmbientSounddisconnectNotify*(self: gen_qambientsound_types.QAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAmbientSound_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQAmbientSound_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAmbientSound_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQAmbientSound_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAmbientSound_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQAmbientSound_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQAmbientSound_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQAmbientSound_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQAmbientSound_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQAmbientSound_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQAmbientSound_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAmbientSoundVTable](fcQAmbientSound_vdata(self))
  let self = QAmbientSound(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQAmbientSound* {.inheritable.} = ref object of QAmbientSound
  vtbl*: cQAmbientSoundVTable

method metaObject*(self: VirtualQAmbientSound): gen_qobjectdefs_types.QMetaObject {.base.} =
  QAmbientSoundmetaObject(self[])
method metacast*(self: VirtualQAmbientSound, param1: cstring): pointer {.base.} =
  QAmbientSoundmetacast(self[], param1)
method metacall*(self: VirtualQAmbientSound, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QAmbientSoundmetacall(self[], param1, param2, param3)
method event*(self: VirtualQAmbientSound, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAmbientSoundevent(self[], event)
method eventFilter*(self: VirtualQAmbientSound, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QAmbientSoundeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQAmbientSound, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QAmbientSoundtimerEvent(self[], event)
method childEvent*(self: VirtualQAmbientSound, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QAmbientSoundchildEvent(self[], event)
method customEvent*(self: VirtualQAmbientSound, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QAmbientSoundcustomEvent(self[], event)
method connectNotify*(self: VirtualQAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAmbientSoundconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQAmbientSound, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QAmbientSounddisconnectNotify(self[], signal)

proc fcQAmbientSound_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQAmbientSound_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQAmbientSound_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQAmbientSound_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQAmbientSound_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQAmbientSound_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQAmbientSound_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQAmbientSound_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQAmbientSound_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQAmbientSound_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQAmbientSound](fcQAmbientSound_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qambientsound_types.QAmbientSound): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAmbientSound_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qambientsound_types.QAmbientSound): cint =
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
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QAmbientSoundVTable](fcQAmbientSound_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQAmbientSound_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQAmbientSound_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQAmbientSound_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQAmbientSound_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQAmbientSound_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQAmbientSound_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQAmbientSound_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQAmbientSound_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQAmbientSound_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQAmbientSound_vtable_callback_disconnectNotify
  gen_qambientsound_types.QAmbientSound(h: fcQAmbientSound_new(addr(vtbl[].vtbl), addr(vtbl[]), engine.h), owned: true)

const cQAmbientSound_mvtbl = cQAmbientSoundVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQAmbientSound()[])](self.fcQAmbientSound_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQAmbientSound_method_callback_metaObject,
  metacast: fcQAmbientSound_method_callback_metacast,
  metacall: fcQAmbientSound_method_callback_metacall,
  event: fcQAmbientSound_method_callback_event,
  eventFilter: fcQAmbientSound_method_callback_eventFilter,
  timerEvent: fcQAmbientSound_method_callback_timerEvent,
  childEvent: fcQAmbientSound_method_callback_childEvent,
  customEvent: fcQAmbientSound_method_callback_customEvent,
  connectNotify: fcQAmbientSound_method_callback_connectNotify,
  disconnectNotify: fcQAmbientSound_method_callback_disconnectNotify,
)
proc create*(T: type gen_qambientsound_types.QAmbientSound,
    engine: gen_qaudioengine_types.QAudioEngine,
    inst: VirtualQAmbientSound) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQAmbientSound_new(addr(cQAmbientSound_mvtbl), addr(inst[]), engine.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qambientsound_types.QAmbientSound): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAmbientSound_staticMetaObject())
