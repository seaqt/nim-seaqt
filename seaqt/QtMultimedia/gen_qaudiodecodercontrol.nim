import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia") & " -fPIC"
{.compile("gen_qaudiodecodercontrol.cpp", cflags).}


import ./gen_qaudiodecodercontrol_types
export gen_qaudiodecodercontrol_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiobuffer_types,
  ./gen_qaudioformat_types,
  ./gen_qmediacontrol
export
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qaudiobuffer_types,
  gen_qaudioformat_types,
  gen_qmediacontrol

type cQAudioDecoderControl*{.exportc: "QAudioDecoderControl", incompleteStruct.} = object

proc fcQAudioDecoderControl_metaObject(self: pointer): pointer {.importc: "QAudioDecoderControl_metaObject".}
proc fcQAudioDecoderControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioDecoderControl_metacast".}
proc fcQAudioDecoderControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioDecoderControl_metacall".}
proc fcQAudioDecoderControl_tr(s: cstring): struct_miqt_string {.importc: "QAudioDecoderControl_tr".}
proc fcQAudioDecoderControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioDecoderControl_trUtf8".}
proc fcQAudioDecoderControl_state(self: pointer): cint {.importc: "QAudioDecoderControl_state".}
proc fcQAudioDecoderControl_sourceFilename(self: pointer): struct_miqt_string {.importc: "QAudioDecoderControl_sourceFilename".}
proc fcQAudioDecoderControl_setSourceFilename(self: pointer, fileName: struct_miqt_string): void {.importc: "QAudioDecoderControl_setSourceFilename".}
proc fcQAudioDecoderControl_sourceDevice(self: pointer): pointer {.importc: "QAudioDecoderControl_sourceDevice".}
proc fcQAudioDecoderControl_setSourceDevice(self: pointer, device: pointer): void {.importc: "QAudioDecoderControl_setSourceDevice".}
proc fcQAudioDecoderControl_start(self: pointer): void {.importc: "QAudioDecoderControl_start".}
proc fcQAudioDecoderControl_stop(self: pointer): void {.importc: "QAudioDecoderControl_stop".}
proc fcQAudioDecoderControl_audioFormat(self: pointer): pointer {.importc: "QAudioDecoderControl_audioFormat".}
proc fcQAudioDecoderControl_setAudioFormat(self: pointer, format: pointer): void {.importc: "QAudioDecoderControl_setAudioFormat".}
proc fcQAudioDecoderControl_read(self: pointer): pointer {.importc: "QAudioDecoderControl_read".}
proc fcQAudioDecoderControl_bufferAvailable(self: pointer): bool {.importc: "QAudioDecoderControl_bufferAvailable".}
proc fcQAudioDecoderControl_position(self: pointer): clonglong {.importc: "QAudioDecoderControl_position".}
proc fcQAudioDecoderControl_duration(self: pointer): clonglong {.importc: "QAudioDecoderControl_duration".}
proc fcQAudioDecoderControl_stateChanged(self: pointer, newState: cint): void {.importc: "QAudioDecoderControl_stateChanged".}
proc fcQAudioDecoderControl_connect_stateChanged(self: pointer, slot: int, callback: proc (slot: int, newState: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_stateChanged".}
proc fcQAudioDecoderControl_formatChanged(self: pointer, format: pointer): void {.importc: "QAudioDecoderControl_formatChanged".}
proc fcQAudioDecoderControl_connect_formatChanged(self: pointer, slot: int, callback: proc (slot: int, format: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_formatChanged".}
proc fcQAudioDecoderControl_sourceChanged(self: pointer): void {.importc: "QAudioDecoderControl_sourceChanged".}
proc fcQAudioDecoderControl_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_sourceChanged".}
proc fcQAudioDecoderControl_error(self: pointer, error: cint, errorString: struct_miqt_string): void {.importc: "QAudioDecoderControl_error".}
proc fcQAudioDecoderControl_connect_error(self: pointer, slot: int, callback: proc (slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_error".}
proc fcQAudioDecoderControl_bufferReady(self: pointer): void {.importc: "QAudioDecoderControl_bufferReady".}
proc fcQAudioDecoderControl_connect_bufferReady(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_bufferReady".}
proc fcQAudioDecoderControl_bufferAvailableChanged(self: pointer, available: bool): void {.importc: "QAudioDecoderControl_bufferAvailableChanged".}
proc fcQAudioDecoderControl_connect_bufferAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, available: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_bufferAvailableChanged".}
proc fcQAudioDecoderControl_finished(self: pointer): void {.importc: "QAudioDecoderControl_finished".}
proc fcQAudioDecoderControl_connect_finished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_finished".}
proc fcQAudioDecoderControl_positionChanged(self: pointer, position: clonglong): void {.importc: "QAudioDecoderControl_positionChanged".}
proc fcQAudioDecoderControl_connect_positionChanged(self: pointer, slot: int, callback: proc (slot: int, position: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_positionChanged".}
proc fcQAudioDecoderControl_durationChanged(self: pointer, duration: clonglong): void {.importc: "QAudioDecoderControl_durationChanged".}
proc fcQAudioDecoderControl_connect_durationChanged(self: pointer, slot: int, callback: proc (slot: int, duration: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoderControl_connect_durationChanged".}
proc fcQAudioDecoderControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioDecoderControl_tr2".}
proc fcQAudioDecoderControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioDecoderControl_tr3".}
proc fcQAudioDecoderControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioDecoderControl_trUtf82".}
proc fcQAudioDecoderControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioDecoderControl_trUtf83".}
proc fcQAudioDecoderControl_protectedbase_sender(self: pointer): pointer {.importc: "QAudioDecoderControl_protectedbase_sender".}
proc fcQAudioDecoderControl_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QAudioDecoderControl_protectedbase_senderSignalIndex".}
proc fcQAudioDecoderControl_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QAudioDecoderControl_protectedbase_receivers".}
proc fcQAudioDecoderControl_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QAudioDecoderControl_protectedbase_isSignalConnected".}
proc fcQAudioDecoderControl_staticMetaObject(): pointer {.importc: "QAudioDecoderControl_staticMetaObject".}

proc metaObject*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioDecoderControl_metaObject(self.h), owned: false)

proc metacast*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, param1: cstring): pointer =
  fcQAudioDecoderControl_metacast(self.h, param1)

proc metacall*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioDecoderControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiodecodercontrol_types.QAudioDecoderControl, s: cstring): string =
  let v_ms = fcQAudioDecoderControl_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiodecodercontrol_types.QAudioDecoderControl, s: cstring): string =
  let v_ms = fcQAudioDecoderControl_trUtf8(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc state*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): cint =
  cint(fcQAudioDecoderControl_state(self.h))

proc sourceFilename*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): string =
  let v_ms = fcQAudioDecoderControl_sourceFilename(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setSourceFilename*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, fileName: openArray[char]): void =
  fcQAudioDecoderControl_setSourceFilename(self.h, struct_miqt_string(data: if len(fileName) > 0: addr fileName[0] else: nil, len: csize_t(len(fileName))))

proc sourceDevice*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioDecoderControl_sourceDevice(self.h), owned: false)

proc setSourceDevice*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioDecoderControl_setSourceDevice(self.h, device.h)

proc start*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): void =
  fcQAudioDecoderControl_start(self.h)

proc stop*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): void =
  fcQAudioDecoderControl_stop(self.h)

proc audioFormat*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioDecoderControl_audioFormat(self.h), owned: true)

proc setAudioFormat*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, format: gen_qaudioformat_types.QAudioFormat): void =
  fcQAudioDecoderControl_setAudioFormat(self.h, format.h)

proc read*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): gen_qaudiobuffer_types.QAudioBuffer =
  gen_qaudiobuffer_types.QAudioBuffer(h: fcQAudioDecoderControl_read(self.h), owned: true)

proc bufferAvailable*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): bool =
  fcQAudioDecoderControl_bufferAvailable(self.h)

proc position*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): clonglong =
  fcQAudioDecoderControl_position(self.h)

proc duration*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): clonglong =
  fcQAudioDecoderControl_duration(self.h)

proc stateChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, newState: cint): void =
  fcQAudioDecoderControl_stateChanged(self.h, cint(newState))

type QAudioDecoderControlstateChangedSlot* = proc(newState: cint)
proc cQAudioDecoderControl_slot_callback_stateChanged(slot: int, newState: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControlstateChangedSlot](cast[pointer](slot))
  let slotval1 = cint(newState)

  nimfunc[](slotval1)

proc cQAudioDecoderControl_slot_callback_stateChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControlstateChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onstateChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControlstateChangedSlot) =
  var tmp = new QAudioDecoderControlstateChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_stateChanged(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_stateChanged, cQAudioDecoderControl_slot_callback_stateChanged_release)

proc formatChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, format: gen_qaudioformat_types.QAudioFormat): void =
  fcQAudioDecoderControl_formatChanged(self.h, format.h)

type QAudioDecoderControlformatChangedSlot* = proc(format: gen_qaudioformat_types.QAudioFormat)
proc cQAudioDecoderControl_slot_callback_formatChanged(slot: int, format: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControlformatChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qaudioformat_types.QAudioFormat(h: format, owned: false)

  nimfunc[](slotval1)

proc cQAudioDecoderControl_slot_callback_formatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControlformatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onformatChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControlformatChangedSlot) =
  var tmp = new QAudioDecoderControlformatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_formatChanged(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_formatChanged, cQAudioDecoderControl_slot_callback_formatChanged_release)

proc sourceChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): void =
  fcQAudioDecoderControl_sourceChanged(self.h)

type QAudioDecoderControlsourceChangedSlot* = proc()
proc cQAudioDecoderControl_slot_callback_sourceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControlsourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAudioDecoderControl_slot_callback_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControlsourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControlsourceChangedSlot) =
  var tmp = new QAudioDecoderControlsourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_sourceChanged(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_sourceChanged, cQAudioDecoderControl_slot_callback_sourceChanged_release)

proc error*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, error: cint, errorString: openArray[char]): void =
  fcQAudioDecoderControl_error(self.h, error, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

type QAudioDecoderControlerrorSlot* = proc(error: cint, errorString: openArray[char])
proc cQAudioDecoderControl_slot_callback_error(slot: int, error: cint, errorString: struct_miqt_string) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControlerrorSlot](cast[pointer](slot))
  let slotval1 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(verrorString_ms)
  c_free(verrorString_ms.data)
  let slotval2 = verrorStringx_ret

  nimfunc[](slotval1, slotval2)

proc cQAudioDecoderControl_slot_callback_error_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControlerrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControlerrorSlot) =
  var tmp = new QAudioDecoderControlerrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_error(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_error, cQAudioDecoderControl_slot_callback_error_release)

proc bufferReady*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): void =
  fcQAudioDecoderControl_bufferReady(self.h)

type QAudioDecoderControlbufferReadySlot* = proc()
proc cQAudioDecoderControl_slot_callback_bufferReady(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControlbufferReadySlot](cast[pointer](slot))
  nimfunc[]()

proc cQAudioDecoderControl_slot_callback_bufferReady_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControlbufferReadySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbufferReady*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControlbufferReadySlot) =
  var tmp = new QAudioDecoderControlbufferReadySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_bufferReady(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_bufferReady, cQAudioDecoderControl_slot_callback_bufferReady_release)

proc bufferAvailableChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, available: bool): void =
  fcQAudioDecoderControl_bufferAvailableChanged(self.h, available)

type QAudioDecoderControlbufferAvailableChangedSlot* = proc(available: bool)
proc cQAudioDecoderControl_slot_callback_bufferAvailableChanged(slot: int, available: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControlbufferAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = available

  nimfunc[](slotval1)

proc cQAudioDecoderControl_slot_callback_bufferAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControlbufferAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbufferAvailableChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControlbufferAvailableChangedSlot) =
  var tmp = new QAudioDecoderControlbufferAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_bufferAvailableChanged(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_bufferAvailableChanged, cQAudioDecoderControl_slot_callback_bufferAvailableChanged_release)

proc finished*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): void =
  fcQAudioDecoderControl_finished(self.h)

type QAudioDecoderControlfinishedSlot* = proc()
proc cQAudioDecoderControl_slot_callback_finished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControlfinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQAudioDecoderControl_slot_callback_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControlfinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfinished*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControlfinishedSlot) =
  var tmp = new QAudioDecoderControlfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_finished(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_finished, cQAudioDecoderControl_slot_callback_finished_release)

proc positionChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, position: clonglong): void =
  fcQAudioDecoderControl_positionChanged(self.h, position)

type QAudioDecoderControlpositionChangedSlot* = proc(position: clonglong)
proc cQAudioDecoderControl_slot_callback_positionChanged(slot: int, position: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControlpositionChangedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc cQAudioDecoderControl_slot_callback_positionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControlpositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpositionChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControlpositionChangedSlot) =
  var tmp = new QAudioDecoderControlpositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_positionChanged(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_positionChanged, cQAudioDecoderControl_slot_callback_positionChanged_release)

proc durationChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, duration: clonglong): void =
  fcQAudioDecoderControl_durationChanged(self.h, duration)

type QAudioDecoderControldurationChangedSlot* = proc(duration: clonglong)
proc cQAudioDecoderControl_slot_callback_durationChanged(slot: int, duration: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderControldurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc cQAudioDecoderControl_slot_callback_durationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderControldurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondurationChanged*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, slot: QAudioDecoderControldurationChangedSlot) =
  var tmp = new QAudioDecoderControldurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoderControl_connect_durationChanged(self.h, cast[int](addr tmp[]), cQAudioDecoderControl_slot_callback_durationChanged, cQAudioDecoderControl_slot_callback_durationChanged_release)

proc tr*(_: type gen_qaudiodecodercontrol_types.QAudioDecoderControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioDecoderControl_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiodecodercontrol_types.QAudioDecoderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioDecoderControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiodecodercontrol_types.QAudioDecoderControl, s: cstring, c: cstring): string =
  let v_ms = fcQAudioDecoderControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiodecodercontrol_types.QAudioDecoderControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioDecoderControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc sender*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQAudioDecoderControl_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl): cint =
  fcQAudioDecoderControl_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, signal: cstring): cint =
  fcQAudioDecoderControl_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qaudiodecodercontrol_types.QAudioDecoderControl, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQAudioDecoderControl_protectedbase_isSignalConnected(self.h, signal.h)

proc staticMetaObject*(_: type gen_qaudiodecodercontrol_types.QAudioDecoderControl): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioDecoderControl_staticMetaObject())
