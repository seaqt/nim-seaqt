import ./Qt6Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt6Multimedia")  & " -fPIC"
{.compile("gen_qaudiodecoder.cpp", cflags).}


type QAudioDecoderErrorEnum* = distinct cint
template NoError*(_: type QAudioDecoderErrorEnum): untyped = 0
template ResourceError*(_: type QAudioDecoderErrorEnum): untyped = 1
template FormatError*(_: type QAudioDecoderErrorEnum): untyped = 2
template AccessDeniedError*(_: type QAudioDecoderErrorEnum): untyped = 3
template NotSupportedError*(_: type QAudioDecoderErrorEnum): untyped = 4


import ./gen_qaudiodecoder_types
export gen_qaudiodecoder_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qurl_types,
  ./gen_qaudiobuffer_types,
  ./gen_qaudioformat_types
export
  gen_qcoreevent_types,
  gen_qiodevice_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types,
  gen_qaudiobuffer_types,
  gen_qaudioformat_types

type cQAudioDecoder*{.exportc: "QAudioDecoder", incompleteStruct.} = object

proc fcQAudioDecoder_metaObject(self: pointer, ): pointer {.importc: "QAudioDecoder_metaObject".}
proc fcQAudioDecoder_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioDecoder_metacast".}
proc fcQAudioDecoder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioDecoder_metacall".}
proc fcQAudioDecoder_tr(s: cstring): struct_miqt_string {.importc: "QAudioDecoder_tr".}
proc fcQAudioDecoder_isSupported(self: pointer, ): bool {.importc: "QAudioDecoder_isSupported".}
proc fcQAudioDecoder_isDecoding(self: pointer, ): bool {.importc: "QAudioDecoder_isDecoding".}
proc fcQAudioDecoder_source(self: pointer, ): pointer {.importc: "QAudioDecoder_source".}
proc fcQAudioDecoder_setSource(self: pointer, fileName: pointer): void {.importc: "QAudioDecoder_setSource".}
proc fcQAudioDecoder_sourceDevice(self: pointer, ): pointer {.importc: "QAudioDecoder_sourceDevice".}
proc fcQAudioDecoder_setSourceDevice(self: pointer, device: pointer): void {.importc: "QAudioDecoder_setSourceDevice".}
proc fcQAudioDecoder_audioFormat(self: pointer, ): pointer {.importc: "QAudioDecoder_audioFormat".}
proc fcQAudioDecoder_setAudioFormat(self: pointer, format: pointer): void {.importc: "QAudioDecoder_setAudioFormat".}
proc fcQAudioDecoder_error(self: pointer, ): cint {.importc: "QAudioDecoder_error".}
proc fcQAudioDecoder_errorString(self: pointer, ): struct_miqt_string {.importc: "QAudioDecoder_errorString".}
proc fcQAudioDecoder_read(self: pointer, ): pointer {.importc: "QAudioDecoder_read".}
proc fcQAudioDecoder_bufferAvailable(self: pointer, ): bool {.importc: "QAudioDecoder_bufferAvailable".}
proc fcQAudioDecoder_position(self: pointer, ): clonglong {.importc: "QAudioDecoder_position".}
proc fcQAudioDecoder_duration(self: pointer, ): clonglong {.importc: "QAudioDecoder_duration".}
proc fcQAudioDecoder_start(self: pointer, ): void {.importc: "QAudioDecoder_start".}
proc fcQAudioDecoder_stop(self: pointer, ): void {.importc: "QAudioDecoder_stop".}
proc fcQAudioDecoder_bufferAvailableChanged(self: pointer, param1: bool): void {.importc: "QAudioDecoder_bufferAvailableChanged".}
proc fcQAudioDecoder_connect_bufferAvailableChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_bufferAvailableChanged".}
proc fcQAudioDecoder_bufferReady(self: pointer, ): void {.importc: "QAudioDecoder_bufferReady".}
proc fcQAudioDecoder_connect_bufferReady(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_bufferReady".}
proc fcQAudioDecoder_finished(self: pointer, ): void {.importc: "QAudioDecoder_finished".}
proc fcQAudioDecoder_connect_finished(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_finished".}
proc fcQAudioDecoder_isDecodingChanged(self: pointer, param1: bool): void {.importc: "QAudioDecoder_isDecodingChanged".}
proc fcQAudioDecoder_connect_isDecodingChanged(self: pointer, slot: int, callback: proc (slot: int, param1: bool) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_isDecodingChanged".}
proc fcQAudioDecoder_formatChanged(self: pointer, format: pointer): void {.importc: "QAudioDecoder_formatChanged".}
proc fcQAudioDecoder_connect_formatChanged(self: pointer, slot: int, callback: proc (slot: int, format: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_formatChanged".}
proc fcQAudioDecoder_errorWithError(self: pointer, error: cint): void {.importc: "QAudioDecoder_errorWithError".}
proc fcQAudioDecoder_connect_errorWithError(self: pointer, slot: int, callback: proc (slot: int, error: cint) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_errorWithError".}
proc fcQAudioDecoder_sourceChanged(self: pointer, ): void {.importc: "QAudioDecoder_sourceChanged".}
proc fcQAudioDecoder_connect_sourceChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_sourceChanged".}
proc fcQAudioDecoder_positionChanged(self: pointer, position: clonglong): void {.importc: "QAudioDecoder_positionChanged".}
proc fcQAudioDecoder_connect_positionChanged(self: pointer, slot: int, callback: proc (slot: int, position: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_positionChanged".}
proc fcQAudioDecoder_durationChanged(self: pointer, duration: clonglong): void {.importc: "QAudioDecoder_durationChanged".}
proc fcQAudioDecoder_connect_durationChanged(self: pointer, slot: int, callback: proc (slot: int, duration: clonglong) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QAudioDecoder_connect_durationChanged".}
proc fcQAudioDecoder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioDecoder_tr2".}
proc fcQAudioDecoder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioDecoder_tr3".}
type cQAudioDecoderVTable = object
  destructor*: proc(vtbl: ptr cQAudioDecoderVTable, self: ptr cQAudioDecoder) {.cdecl, raises:[], gcsafe.}
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
proc fcQAudioDecoder_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAudioDecoder_virtualbase_metaObject".}
proc fcQAudioDecoder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioDecoder_virtualbase_metacast".}
proc fcQAudioDecoder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioDecoder_virtualbase_metacall".}
proc fcQAudioDecoder_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAudioDecoder_virtualbase_event".}
proc fcQAudioDecoder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QAudioDecoder_virtualbase_eventFilter".}
proc fcQAudioDecoder_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAudioDecoder_virtualbase_timerEvent".}
proc fcQAudioDecoder_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAudioDecoder_virtualbase_childEvent".}
proc fcQAudioDecoder_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAudioDecoder_virtualbase_customEvent".}
proc fcQAudioDecoder_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAudioDecoder_virtualbase_connectNotify".}
proc fcQAudioDecoder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAudioDecoder_virtualbase_disconnectNotify".}
proc fcQAudioDecoder_new(vtbl: pointer, ): ptr cQAudioDecoder {.importc: "QAudioDecoder_new".}
proc fcQAudioDecoder_new2(vtbl: pointer, parent: pointer): ptr cQAudioDecoder {.importc: "QAudioDecoder_new2".}
proc fcQAudioDecoder_staticMetaObject(): pointer {.importc: "QAudioDecoder_staticMetaObject".}
proc fcQAudioDecoder_delete(self: pointer) {.importc: "QAudioDecoder_delete".}

proc metaObject*(self: gen_qaudiodecoder_types.QAudioDecoder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioDecoder_metaObject(self.h))

proc metacast*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: cstring): pointer =
  fcQAudioDecoder_metacast(self.h, param1)

proc metacall*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioDecoder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qaudiodecoder_types.QAudioDecoder, s: cstring): string =
  let v_ms = fcQAudioDecoder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isSupported*(self: gen_qaudiodecoder_types.QAudioDecoder, ): bool =
  fcQAudioDecoder_isSupported(self.h)

proc isDecoding*(self: gen_qaudiodecoder_types.QAudioDecoder, ): bool =
  fcQAudioDecoder_isDecoding(self.h)

proc source*(self: gen_qaudiodecoder_types.QAudioDecoder, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQAudioDecoder_source(self.h))

proc setSource*(self: gen_qaudiodecoder_types.QAudioDecoder, fileName: gen_qurl_types.QUrl): void =
  fcQAudioDecoder_setSource(self.h, fileName.h)

proc sourceDevice*(self: gen_qaudiodecoder_types.QAudioDecoder, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQAudioDecoder_sourceDevice(self.h))

proc setSourceDevice*(self: gen_qaudiodecoder_types.QAudioDecoder, device: gen_qiodevice_types.QIODevice): void =
  fcQAudioDecoder_setSourceDevice(self.h, device.h)

proc audioFormat*(self: gen_qaudiodecoder_types.QAudioDecoder, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQAudioDecoder_audioFormat(self.h))

proc setAudioFormat*(self: gen_qaudiodecoder_types.QAudioDecoder, format: gen_qaudioformat_types.QAudioFormat): void =
  fcQAudioDecoder_setAudioFormat(self.h, format.h)

proc error*(self: gen_qaudiodecoder_types.QAudioDecoder, ): cint =
  cint(fcQAudioDecoder_error(self.h))

proc errorString*(self: gen_qaudiodecoder_types.QAudioDecoder, ): string =
  let v_ms = fcQAudioDecoder_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc read*(self: gen_qaudiodecoder_types.QAudioDecoder, ): gen_qaudiobuffer_types.QAudioBuffer =
  gen_qaudiobuffer_types.QAudioBuffer(h: fcQAudioDecoder_read(self.h))

proc bufferAvailable*(self: gen_qaudiodecoder_types.QAudioDecoder, ): bool =
  fcQAudioDecoder_bufferAvailable(self.h)

proc position*(self: gen_qaudiodecoder_types.QAudioDecoder, ): clonglong =
  fcQAudioDecoder_position(self.h)

proc duration*(self: gen_qaudiodecoder_types.QAudioDecoder, ): clonglong =
  fcQAudioDecoder_duration(self.h)

proc start*(self: gen_qaudiodecoder_types.QAudioDecoder, ): void =
  fcQAudioDecoder_start(self.h)

proc stop*(self: gen_qaudiodecoder_types.QAudioDecoder, ): void =
  fcQAudioDecoder_stop(self.h)

proc bufferAvailableChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: bool): void =
  fcQAudioDecoder_bufferAvailableChanged(self.h, param1)

type QAudioDecoderbufferAvailableChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQAudioDecoder_bufferAvailableChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderbufferAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioDecoder_bufferAvailableChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderbufferAvailableChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbufferAvailableChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderbufferAvailableChangedSlot) =
  var tmp = new QAudioDecoderbufferAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_bufferAvailableChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_bufferAvailableChanged, miqt_exec_callback_cQAudioDecoder_bufferAvailableChanged_release)

proc bufferReady*(self: gen_qaudiodecoder_types.QAudioDecoder, ): void =
  fcQAudioDecoder_bufferReady(self.h)

type QAudioDecoderbufferReadySlot* = proc()
proc miqt_exec_callback_cQAudioDecoder_bufferReady(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderbufferReadySlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioDecoder_bufferReady_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderbufferReadySlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onbufferReady*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderbufferReadySlot) =
  var tmp = new QAudioDecoderbufferReadySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_bufferReady(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_bufferReady, miqt_exec_callback_cQAudioDecoder_bufferReady_release)

proc finished*(self: gen_qaudiodecoder_types.QAudioDecoder, ): void =
  fcQAudioDecoder_finished(self.h)

type QAudioDecoderfinishedSlot* = proc()
proc miqt_exec_callback_cQAudioDecoder_finished(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderfinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioDecoder_finished_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderfinishedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfinished*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderfinishedSlot) =
  var tmp = new QAudioDecoderfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_finished(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_finished, miqt_exec_callback_cQAudioDecoder_finished_release)

proc isDecodingChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: bool): void =
  fcQAudioDecoder_isDecodingChanged(self.h, param1)

type QAudioDecoderisDecodingChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_cQAudioDecoder_isDecodingChanged(slot: int, param1: bool) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderisDecodingChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioDecoder_isDecodingChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderisDecodingChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onisDecodingChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderisDecodingChangedSlot) =
  var tmp = new QAudioDecoderisDecodingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_isDecodingChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_isDecodingChanged, miqt_exec_callback_cQAudioDecoder_isDecodingChanged_release)

proc formatChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, format: gen_qaudioformat_types.QAudioFormat): void =
  fcQAudioDecoder_formatChanged(self.h, format.h)

type QAudioDecoderformatChangedSlot* = proc(format: gen_qaudioformat_types.QAudioFormat)
proc miqt_exec_callback_cQAudioDecoder_formatChanged(slot: int, format: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderformatChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qaudioformat_types.QAudioFormat(h: format)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioDecoder_formatChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderformatChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onformatChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderformatChangedSlot) =
  var tmp = new QAudioDecoderformatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_formatChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_formatChanged, miqt_exec_callback_cQAudioDecoder_formatChanged_release)

proc error*(self: gen_qaudiodecoder_types.QAudioDecoder, error: cint): void =
  fcQAudioDecoder_errorWithError(self.h, cint(error))

type QAudioDecodererrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_cQAudioDecoder_errorWithError(slot: int, error: cint) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecodererrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioDecoder_errorWithError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecodererrorWithErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onerror*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodererrorWithErrorSlot) =
  var tmp = new QAudioDecodererrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_errorWithError(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_errorWithError, miqt_exec_callback_cQAudioDecoder_errorWithError_release)

proc sourceChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, ): void =
  fcQAudioDecoder_sourceChanged(self.h)

type QAudioDecodersourceChangedSlot* = proc()
proc miqt_exec_callback_cQAudioDecoder_sourceChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecodersourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQAudioDecoder_sourceChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecodersourceChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodersourceChangedSlot) =
  var tmp = new QAudioDecodersourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_sourceChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_sourceChanged, miqt_exec_callback_cQAudioDecoder_sourceChanged_release)

proc positionChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, position: clonglong): void =
  fcQAudioDecoder_positionChanged(self.h, position)

type QAudioDecoderpositionChangedSlot* = proc(position: clonglong)
proc miqt_exec_callback_cQAudioDecoder_positionChanged(slot: int, position: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderpositionChangedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioDecoder_positionChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderpositionChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onpositionChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderpositionChangedSlot) =
  var tmp = new QAudioDecoderpositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_positionChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_positionChanged, miqt_exec_callback_cQAudioDecoder_positionChanged_release)

proc durationChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, duration: clonglong): void =
  fcQAudioDecoder_durationChanged(self.h, duration)

type QAudioDecoderdurationChangedSlot* = proc(duration: clonglong)
proc miqt_exec_callback_cQAudioDecoder_durationChanged(slot: int, duration: clonglong) {.cdecl.} =
  let nimfunc = cast[ptr QAudioDecoderdurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc miqt_exec_callback_cQAudioDecoder_durationChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QAudioDecoderdurationChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondurationChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderdurationChangedSlot) =
  var tmp = new QAudioDecoderdurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_durationChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQAudioDecoder_durationChanged, miqt_exec_callback_cQAudioDecoder_durationChanged_release)

proc tr*(_: type gen_qaudiodecoder_types.QAudioDecoder, s: cstring, c: cstring): string =
  let v_ms = fcQAudioDecoder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiodecoder_types.QAudioDecoder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioDecoder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAudioDecodermetaObjectProc* = proc(self: QAudioDecoder): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAudioDecodermetacastProc* = proc(self: QAudioDecoder, param1: cstring): pointer {.raises: [], gcsafe.}
type QAudioDecodermetacallProc* = proc(self: QAudioDecoder, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAudioDecodereventProc* = proc(self: QAudioDecoder, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioDecodereventFilterProc* = proc(self: QAudioDecoder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAudioDecodertimerEventProc* = proc(self: QAudioDecoder, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAudioDecoderchildEventProc* = proc(self: QAudioDecoder, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAudioDecodercustomEventProc* = proc(self: QAudioDecoder, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAudioDecoderconnectNotifyProc* = proc(self: QAudioDecoder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioDecoderdisconnectNotifyProc* = proc(self: QAudioDecoder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAudioDecoderVTable* = object
  vtbl: cQAudioDecoderVTable
  metaObject*: QAudioDecodermetaObjectProc
  metacast*: QAudioDecodermetacastProc
  metacall*: QAudioDecodermetacallProc
  event*: QAudioDecodereventProc
  eventFilter*: QAudioDecodereventFilterProc
  timerEvent*: QAudioDecodertimerEventProc
  childEvent*: QAudioDecoderchildEventProc
  customEvent*: QAudioDecodercustomEventProc
  connectNotify*: QAudioDecoderconnectNotifyProc
  disconnectNotify*: QAudioDecoderdisconnectNotifyProc
proc QAudioDecodermetaObject*(self: gen_qaudiodecoder_types.QAudioDecoder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioDecoder_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAudioDecoder_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAudioDecodermetacast*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: cstring): pointer =
  fcQAudioDecoder_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAudioDecoder_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAudioDecodermetacall*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: cint, param2: cint, param3: pointer): cint =
  fcQAudioDecoder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAudioDecoder_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAudioDecoderevent*(self: gen_qaudiodecoder_types.QAudioDecoder, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioDecoder_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAudioDecoder_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAudioDecodereventFilter*(self: gen_qaudiodecoder_types.QAudioDecoder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAudioDecoder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQAudioDecoder_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAudioDecodertimerEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAudioDecoder_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioDecoder_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAudioDecoderchildEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAudioDecoder_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioDecoder_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAudioDecodercustomEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, event: gen_qcoreevent_types.QEvent): void =
  fcQAudioDecoder_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAudioDecoder_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAudioDecoderconnectNotify*(self: gen_qaudiodecoder_types.QAudioDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioDecoder_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioDecoder_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAudioDecoderdisconnectNotify*(self: gen_qaudiodecoder_types.QAudioDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAudioDecoder_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAudioDecoder_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAudioDecoderVTable](vtbl)
  let self = QAudioDecoder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qaudiodecoder_types.QAudioDecoder,
    vtbl: ref QAudioDecoderVTable = nil): gen_qaudiodecoder_types.QAudioDecoder =
  let vtbl = if vtbl == nil: new QAudioDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioDecoderVTable, _: ptr cQAudioDecoder) {.cdecl.} =
    let vtbl = cast[ref QAudioDecoderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioDecoder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioDecoder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioDecoder_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioDecoder_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioDecoder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioDecoder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioDecoder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioDecoder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioDecoder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioDecoder_disconnectNotify
  gen_qaudiodecoder_types.QAudioDecoder(h: fcQAudioDecoder_new(addr(vtbl[]), ))

proc create*(T: type gen_qaudiodecoder_types.QAudioDecoder,
    parent: gen_qobject_types.QObject,
    vtbl: ref QAudioDecoderVTable = nil): gen_qaudiodecoder_types.QAudioDecoder =
  let vtbl = if vtbl == nil: new QAudioDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAudioDecoderVTable, _: ptr cQAudioDecoder) {.cdecl.} =
    let vtbl = cast[ref QAudioDecoderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAudioDecoder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAudioDecoder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAudioDecoder_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAudioDecoder_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAudioDecoder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAudioDecoder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAudioDecoder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAudioDecoder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAudioDecoder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAudioDecoder_disconnectNotify
  gen_qaudiodecoder_types.QAudioDecoder(h: fcQAudioDecoder_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qaudiodecoder_types.QAudioDecoder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioDecoder_staticMetaObject())
proc delete*(self: gen_qaudiodecoder_types.QAudioDecoder) =
  fcQAudioDecoder_delete(self.h)
