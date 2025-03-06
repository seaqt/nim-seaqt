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

proc fcQAudioDecoder_new(): ptr cQAudioDecoder {.importc: "QAudioDecoder_new".}
proc fcQAudioDecoder_new2(parent: pointer): ptr cQAudioDecoder {.importc: "QAudioDecoder_new2".}
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
proc fcQAudioDecoder_connect_bufferAvailableChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_bufferAvailableChanged".}
proc fcQAudioDecoder_bufferReady(self: pointer, ): void {.importc: "QAudioDecoder_bufferReady".}
proc fcQAudioDecoder_connect_bufferReady(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_bufferReady".}
proc fcQAudioDecoder_finished(self: pointer, ): void {.importc: "QAudioDecoder_finished".}
proc fcQAudioDecoder_connect_finished(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_finished".}
proc fcQAudioDecoder_isDecodingChanged(self: pointer, param1: bool): void {.importc: "QAudioDecoder_isDecodingChanged".}
proc fcQAudioDecoder_connect_isDecodingChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_isDecodingChanged".}
proc fcQAudioDecoder_formatChanged(self: pointer, format: pointer): void {.importc: "QAudioDecoder_formatChanged".}
proc fcQAudioDecoder_connect_formatChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_formatChanged".}
proc fcQAudioDecoder_errorWithError(self: pointer, error: cint): void {.importc: "QAudioDecoder_errorWithError".}
proc fcQAudioDecoder_connect_errorWithError(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_errorWithError".}
proc fcQAudioDecoder_sourceChanged(self: pointer, ): void {.importc: "QAudioDecoder_sourceChanged".}
proc fcQAudioDecoder_connect_sourceChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_sourceChanged".}
proc fcQAudioDecoder_positionChanged(self: pointer, position: clonglong): void {.importc: "QAudioDecoder_positionChanged".}
proc fcQAudioDecoder_connect_positionChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_positionChanged".}
proc fcQAudioDecoder_durationChanged(self: pointer, duration: clonglong): void {.importc: "QAudioDecoder_durationChanged".}
proc fcQAudioDecoder_connect_durationChanged(self: pointer, slot: int) {.importc: "QAudioDecoder_connect_durationChanged".}
proc fcQAudioDecoder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioDecoder_tr2".}
proc fcQAudioDecoder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioDecoder_tr3".}
proc fQAudioDecoder_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAudioDecoder_virtualbase_metaObject".}
proc fcQAudioDecoder_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_metaObject".}
proc fQAudioDecoder_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAudioDecoder_virtualbase_metacast".}
proc fcQAudioDecoder_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_metacast".}
proc fQAudioDecoder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioDecoder_virtualbase_metacall".}
proc fcQAudioDecoder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_metacall".}
proc fQAudioDecoder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioDecoder_virtualbase_event".}
proc fcQAudioDecoder_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_event".}
proc fQAudioDecoder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioDecoder_virtualbase_eventFilter".}
proc fcQAudioDecoder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_eventFilter".}
proc fQAudioDecoder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioDecoder_virtualbase_timerEvent".}
proc fcQAudioDecoder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_timerEvent".}
proc fQAudioDecoder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioDecoder_virtualbase_childEvent".}
proc fcQAudioDecoder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_childEvent".}
proc fQAudioDecoder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioDecoder_virtualbase_customEvent".}
proc fcQAudioDecoder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_customEvent".}
proc fQAudioDecoder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioDecoder_virtualbase_connectNotify".}
proc fcQAudioDecoder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_connectNotify".}
proc fQAudioDecoder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioDecoder_virtualbase_disconnectNotify".}
proc fcQAudioDecoder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioDecoder_override_virtual_disconnectNotify".}
proc fcQAudioDecoder_staticMetaObject(): pointer {.importc: "QAudioDecoder_staticMetaObject".}
proc fcQAudioDecoder_delete(self: pointer) {.importc: "QAudioDecoder_delete".}


func init*(T: type gen_qaudiodecoder_types.QAudioDecoder, h: ptr cQAudioDecoder): gen_qaudiodecoder_types.QAudioDecoder =
  T(h: h)
proc create*(T: type gen_qaudiodecoder_types.QAudioDecoder, ): gen_qaudiodecoder_types.QAudioDecoder =
  gen_qaudiodecoder_types.QAudioDecoder.init(fcQAudioDecoder_new())

proc create*(T: type gen_qaudiodecoder_types.QAudioDecoder, parent: gen_qobject_types.QObject): gen_qaudiodecoder_types.QAudioDecoder =
  gen_qaudiodecoder_types.QAudioDecoder.init(fcQAudioDecoder_new2(parent.h))

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
proc miqt_exec_callback_QAudioDecoder_bufferAvailableChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecoderbufferAvailableChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onbufferAvailableChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderbufferAvailableChangedSlot) =
  var tmp = new QAudioDecoderbufferAvailableChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_bufferAvailableChanged(self.h, cast[int](addr tmp[]))

proc bufferReady*(self: gen_qaudiodecoder_types.QAudioDecoder, ): void =
  fcQAudioDecoder_bufferReady(self.h)

type QAudioDecoderbufferReadySlot* = proc()
proc miqt_exec_callback_QAudioDecoder_bufferReady(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecoderbufferReadySlot](cast[pointer](slot))
  nimfunc[]()

proc onbufferReady*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderbufferReadySlot) =
  var tmp = new QAudioDecoderbufferReadySlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_bufferReady(self.h, cast[int](addr tmp[]))

proc finished*(self: gen_qaudiodecoder_types.QAudioDecoder, ): void =
  fcQAudioDecoder_finished(self.h)

type QAudioDecoderfinishedSlot* = proc()
proc miqt_exec_callback_QAudioDecoder_finished(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecoderfinishedSlot](cast[pointer](slot))
  nimfunc[]()

proc onfinished*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderfinishedSlot) =
  var tmp = new QAudioDecoderfinishedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_finished(self.h, cast[int](addr tmp[]))

proc isDecodingChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: bool): void =
  fcQAudioDecoder_isDecodingChanged(self.h, param1)

type QAudioDecoderisDecodingChangedSlot* = proc(param1: bool)
proc miqt_exec_callback_QAudioDecoder_isDecodingChanged(slot: int, param1: bool) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecoderisDecodingChangedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onisDecodingChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderisDecodingChangedSlot) =
  var tmp = new QAudioDecoderisDecodingChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_isDecodingChanged(self.h, cast[int](addr tmp[]))

proc formatChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, format: gen_qaudioformat_types.QAudioFormat): void =
  fcQAudioDecoder_formatChanged(self.h, format.h)

type QAudioDecoderformatChangedSlot* = proc(format: gen_qaudioformat_types.QAudioFormat)
proc miqt_exec_callback_QAudioDecoder_formatChanged(slot: int, format: pointer) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecoderformatChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qaudioformat_types.QAudioFormat(h: format)

  nimfunc[](slotval1)

proc onformatChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderformatChangedSlot) =
  var tmp = new QAudioDecoderformatChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_formatChanged(self.h, cast[int](addr tmp[]))

proc error*(self: gen_qaudiodecoder_types.QAudioDecoder, error: cint): void =
  fcQAudioDecoder_errorWithError(self.h, cint(error))

type QAudioDecodererrorWithErrorSlot* = proc(error: cint)
proc miqt_exec_callback_QAudioDecoder_errorWithError(slot: int, error: cint) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecodererrorWithErrorSlot](cast[pointer](slot))
  let slotval1 = cint(error)

  nimfunc[](slotval1)

proc onerror*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodererrorWithErrorSlot) =
  var tmp = new QAudioDecodererrorWithErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_errorWithError(self.h, cast[int](addr tmp[]))

proc sourceChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, ): void =
  fcQAudioDecoder_sourceChanged(self.h)

type QAudioDecodersourceChangedSlot* = proc()
proc miqt_exec_callback_QAudioDecoder_sourceChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecodersourceChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onsourceChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodersourceChangedSlot) =
  var tmp = new QAudioDecodersourceChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_sourceChanged(self.h, cast[int](addr tmp[]))

proc positionChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, position: clonglong): void =
  fcQAudioDecoder_positionChanged(self.h, position)

type QAudioDecoderpositionChangedSlot* = proc(position: clonglong)
proc miqt_exec_callback_QAudioDecoder_positionChanged(slot: int, position: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecoderpositionChangedSlot](cast[pointer](slot))
  let slotval1 = position

  nimfunc[](slotval1)

proc onpositionChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderpositionChangedSlot) =
  var tmp = new QAudioDecoderpositionChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_positionChanged(self.h, cast[int](addr tmp[]))

proc durationChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, duration: clonglong): void =
  fcQAudioDecoder_durationChanged(self.h, duration)

type QAudioDecoderdurationChangedSlot* = proc(duration: clonglong)
proc miqt_exec_callback_QAudioDecoder_durationChanged(slot: int, duration: clonglong) {.exportc.} =
  let nimfunc = cast[ptr QAudioDecoderdurationChangedSlot](cast[pointer](slot))
  let slotval1 = duration

  nimfunc[](slotval1)

proc ondurationChanged*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderdurationChangedSlot) =
  var tmp = new QAudioDecoderdurationChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_connect_durationChanged(self.h, cast[int](addr tmp[]))

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

proc QAudioDecodermetaObject*(self: gen_qaudiodecoder_types.QAudioDecoder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQAudioDecoder_virtualbase_metaObject(self.h))

type QAudioDecodermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodermetaObjectProc) =
  # TODO check subclass
  var tmp = new QAudioDecodermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_metaObject(self: ptr cQAudioDecoder, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioDecoder_metaObject ".} =
  var nimfunc = cast[ptr QAudioDecodermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAudioDecodermetacast*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: cstring): pointer =
  fQAudioDecoder_virtualbase_metacast(self.h, param1)

type QAudioDecodermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodermetacastProc) =
  # TODO check subclass
  var tmp = new QAudioDecodermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_metacast(self: ptr cQAudioDecoder, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAudioDecoder_metacast ".} =
  var nimfunc = cast[ptr QAudioDecodermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioDecodermetacall*(self: gen_qaudiodecoder_types.QAudioDecoder, param1: cint, param2: cint, param3: pointer): cint =
  fQAudioDecoder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioDecodermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodermetacallProc) =
  # TODO check subclass
  var tmp = new QAudioDecodermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_metacall(self: ptr cQAudioDecoder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioDecoder_metacall ".} =
  var nimfunc = cast[ptr QAudioDecodermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QAudioDecoderevent*(self: gen_qaudiodecoder_types.QAudioDecoder, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioDecoder_virtualbase_event(self.h, event.h)

type QAudioDecodereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodereventProc) =
  # TODO check subclass
  var tmp = new QAudioDecodereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_event(self: ptr cQAudioDecoder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioDecoder_event ".} =
  var nimfunc = cast[ptr QAudioDecodereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioDecodereventFilter*(self: gen_qaudiodecoder_types.QAudioDecoder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioDecoder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioDecodereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodereventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioDecodereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_eventFilter(self: ptr cQAudioDecoder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioDecoder_eventFilter ".} =
  var nimfunc = cast[ptr QAudioDecodereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioDecodertimerEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioDecoder_virtualbase_timerEvent(self.h, event.h)

type QAudioDecodertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodertimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioDecodertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_timerEvent(self: ptr cQAudioDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_timerEvent ".} =
  var nimfunc = cast[ptr QAudioDecodertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioDecoderchildEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioDecoder_virtualbase_childEvent(self.h, event.h)

type QAudioDecoderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderchildEventProc) =
  # TODO check subclass
  var tmp = new QAudioDecoderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_childEvent(self: ptr cQAudioDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_childEvent ".} =
  var nimfunc = cast[ptr QAudioDecoderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioDecodercustomEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, event: gen_qcoreevent_types.QEvent): void =
  fQAudioDecoder_virtualbase_customEvent(self.h, event.h)

type QAudioDecodercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecodercustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioDecodercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_customEvent(self: ptr cQAudioDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_customEvent ".} =
  var nimfunc = cast[ptr QAudioDecodercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioDecoderconnectNotify*(self: gen_qaudiodecoder_types.QAudioDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioDecoder_virtualbase_connectNotify(self.h, signal.h)

type QAudioDecoderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioDecoderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_connectNotify(self: ptr cQAudioDecoder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_connectNotify ".} =
  var nimfunc = cast[ptr QAudioDecoderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioDecoderdisconnectNotify*(self: gen_qaudiodecoder_types.QAudioDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioDecoder_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioDecoderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudiodecoder_types.QAudioDecoder, slot: QAudioDecoderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioDecoderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioDecoder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioDecoder_disconnectNotify(self: ptr cQAudioDecoder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioDecoder_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioDecoderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qaudiodecoder_types.QAudioDecoder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioDecoder_staticMetaObject())
proc delete*(self: gen_qaudiodecoder_types.QAudioDecoder) =
  fcQAudioDecoder_delete(self.h)
