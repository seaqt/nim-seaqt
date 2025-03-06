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
{.compile("gen_qwavedecoder.cpp", cflags).}


import ./gen_qwavedecoder_types
export gen_qwavedecoder_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qiodevice,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudioformat_types
export
  gen_qcoreevent_types,
  gen_qiodevice,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qaudioformat_types

type cQWaveDecoder*{.exportc: "QWaveDecoder", incompleteStruct.} = object

proc fcQWaveDecoder_new(device: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new".}
proc fcQWaveDecoder_new2(device: pointer, format: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new2".}
proc fcQWaveDecoder_new3(device: pointer, parent: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new3".}
proc fcQWaveDecoder_new4(device: pointer, format: pointer, parent: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new4".}
proc fcQWaveDecoder_metaObject(self: pointer, ): pointer {.importc: "QWaveDecoder_metaObject".}
proc fcQWaveDecoder_metacast(self: pointer, param1: cstring): pointer {.importc: "QWaveDecoder_metacast".}
proc fcQWaveDecoder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWaveDecoder_metacall".}
proc fcQWaveDecoder_tr(s: cstring): struct_miqt_string {.importc: "QWaveDecoder_tr".}
proc fcQWaveDecoder_audioFormat(self: pointer, ): pointer {.importc: "QWaveDecoder_audioFormat".}
proc fcQWaveDecoder_getDevice(self: pointer, ): pointer {.importc: "QWaveDecoder_getDevice".}
proc fcQWaveDecoder_duration(self: pointer, ): cint {.importc: "QWaveDecoder_duration".}
proc fcQWaveDecoder_headerLength(): clonglong {.importc: "QWaveDecoder_headerLength".}
proc fcQWaveDecoder_open(self: pointer, mode: cint): bool {.importc: "QWaveDecoder_open".}
proc fcQWaveDecoder_close(self: pointer, ): void {.importc: "QWaveDecoder_close".}
proc fcQWaveDecoder_seek(self: pointer, pos: clonglong): bool {.importc: "QWaveDecoder_seek".}
proc fcQWaveDecoder_pos(self: pointer, ): clonglong {.importc: "QWaveDecoder_pos".}
proc fcQWaveDecoder_size(self: pointer, ): clonglong {.importc: "QWaveDecoder_size".}
proc fcQWaveDecoder_isSequential(self: pointer, ): bool {.importc: "QWaveDecoder_isSequential".}
proc fcQWaveDecoder_bytesAvailable(self: pointer, ): clonglong {.importc: "QWaveDecoder_bytesAvailable".}
proc fcQWaveDecoder_formatKnown(self: pointer, ): void {.importc: "QWaveDecoder_formatKnown".}
proc fcQWaveDecoder_connect_formatKnown(self: pointer, slot: int) {.importc: "QWaveDecoder_connect_formatKnown".}
proc fcQWaveDecoder_parsingError(self: pointer, ): void {.importc: "QWaveDecoder_parsingError".}
proc fcQWaveDecoder_connect_parsingError(self: pointer, slot: int) {.importc: "QWaveDecoder_connect_parsingError".}
proc fcQWaveDecoder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWaveDecoder_tr2".}
proc fcQWaveDecoder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWaveDecoder_tr3".}
proc fQWaveDecoder_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWaveDecoder_virtualbase_metaObject".}
proc fcQWaveDecoder_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_metaObject".}
proc fQWaveDecoder_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWaveDecoder_virtualbase_metacast".}
proc fcQWaveDecoder_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_metacast".}
proc fQWaveDecoder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWaveDecoder_virtualbase_metacall".}
proc fcQWaveDecoder_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_metacall".}
proc fQWaveDecoder_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QWaveDecoder_virtualbase_open".}
proc fcQWaveDecoder_override_virtual_open(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_open".}
proc fQWaveDecoder_virtualbase_close(self: pointer, ): void{.importc: "QWaveDecoder_virtualbase_close".}
proc fcQWaveDecoder_override_virtual_close(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_close".}
proc fQWaveDecoder_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QWaveDecoder_virtualbase_seek".}
proc fcQWaveDecoder_override_virtual_seek(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_seek".}
proc fQWaveDecoder_virtualbase_pos(self: pointer, ): clonglong{.importc: "QWaveDecoder_virtualbase_pos".}
proc fcQWaveDecoder_override_virtual_pos(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_pos".}
proc fQWaveDecoder_virtualbase_size(self: pointer, ): clonglong{.importc: "QWaveDecoder_virtualbase_size".}
proc fcQWaveDecoder_override_virtual_size(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_size".}
proc fQWaveDecoder_virtualbase_isSequential(self: pointer, ): bool{.importc: "QWaveDecoder_virtualbase_isSequential".}
proc fcQWaveDecoder_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_isSequential".}
proc fQWaveDecoder_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QWaveDecoder_virtualbase_bytesAvailable".}
proc fcQWaveDecoder_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_bytesAvailable".}
proc fQWaveDecoder_virtualbase_atEnd(self: pointer, ): bool{.importc: "QWaveDecoder_virtualbase_atEnd".}
proc fcQWaveDecoder_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_atEnd".}
proc fQWaveDecoder_virtualbase_reset(self: pointer, ): bool{.importc: "QWaveDecoder_virtualbase_reset".}
proc fcQWaveDecoder_override_virtual_reset(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_reset".}
proc fQWaveDecoder_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QWaveDecoder_virtualbase_bytesToWrite".}
proc fcQWaveDecoder_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_bytesToWrite".}
proc fQWaveDecoder_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QWaveDecoder_virtualbase_canReadLine".}
proc fcQWaveDecoder_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_canReadLine".}
proc fQWaveDecoder_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QWaveDecoder_virtualbase_waitForReadyRead".}
proc fcQWaveDecoder_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_waitForReadyRead".}
proc fQWaveDecoder_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QWaveDecoder_virtualbase_waitForBytesWritten".}
proc fcQWaveDecoder_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_waitForBytesWritten".}
proc fQWaveDecoder_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QWaveDecoder_virtualbase_readLineData".}
proc fcQWaveDecoder_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_readLineData".}
proc fQWaveDecoder_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QWaveDecoder_virtualbase_skipData".}
proc fcQWaveDecoder_override_virtual_skipData(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_skipData".}
proc fQWaveDecoder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWaveDecoder_virtualbase_event".}
proc fcQWaveDecoder_override_virtual_event(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_event".}
proc fQWaveDecoder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWaveDecoder_virtualbase_eventFilter".}
proc fcQWaveDecoder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_eventFilter".}
proc fQWaveDecoder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWaveDecoder_virtualbase_timerEvent".}
proc fcQWaveDecoder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_timerEvent".}
proc fQWaveDecoder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWaveDecoder_virtualbase_childEvent".}
proc fcQWaveDecoder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_childEvent".}
proc fQWaveDecoder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWaveDecoder_virtualbase_customEvent".}
proc fcQWaveDecoder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_customEvent".}
proc fQWaveDecoder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWaveDecoder_virtualbase_connectNotify".}
proc fcQWaveDecoder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_connectNotify".}
proc fQWaveDecoder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWaveDecoder_virtualbase_disconnectNotify".}
proc fcQWaveDecoder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWaveDecoder_override_virtual_disconnectNotify".}
proc fcQWaveDecoder_staticMetaObject(): pointer {.importc: "QWaveDecoder_staticMetaObject".}
proc fcQWaveDecoder_delete(self: pointer) {.importc: "QWaveDecoder_delete".}


func init*(T: type gen_qwavedecoder_types.QWaveDecoder, h: ptr cQWaveDecoder): gen_qwavedecoder_types.QWaveDecoder =
  T(h: h)
proc create*(T: type gen_qwavedecoder_types.QWaveDecoder, device: gen_qiodevice_types.QIODevice): gen_qwavedecoder_types.QWaveDecoder =
  gen_qwavedecoder_types.QWaveDecoder.init(fcQWaveDecoder_new(device.h))

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder, device: gen_qiodevice_types.QIODevice, format: gen_qaudioformat_types.QAudioFormat): gen_qwavedecoder_types.QWaveDecoder =
  gen_qwavedecoder_types.QWaveDecoder.init(fcQWaveDecoder_new2(device.h, format.h))

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder, device: gen_qiodevice_types.QIODevice, parent: gen_qobject_types.QObject): gen_qwavedecoder_types.QWaveDecoder =
  gen_qwavedecoder_types.QWaveDecoder.init(fcQWaveDecoder_new3(device.h, parent.h))

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder, device: gen_qiodevice_types.QIODevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject): gen_qwavedecoder_types.QWaveDecoder =
  gen_qwavedecoder_types.QWaveDecoder.init(fcQWaveDecoder_new4(device.h, format.h, parent.h))

proc metaObject*(self: gen_qwavedecoder_types.QWaveDecoder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWaveDecoder_metaObject(self.h))

proc metacast*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cstring): pointer =
  fcQWaveDecoder_metacast(self.h, param1)

proc metacall*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cint, param2: cint, param3: pointer): cint =
  fcQWaveDecoder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwavedecoder_types.QWaveDecoder, s: cstring): string =
  let v_ms = fcQWaveDecoder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioFormat*(self: gen_qwavedecoder_types.QWaveDecoder, ): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQWaveDecoder_audioFormat(self.h))

proc getDevice*(self: gen_qwavedecoder_types.QWaveDecoder, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQWaveDecoder_getDevice(self.h))

proc duration*(self: gen_qwavedecoder_types.QWaveDecoder, ): cint =
  fcQWaveDecoder_duration(self.h)

proc headerLength*(_: type gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fcQWaveDecoder_headerLength()

proc open*(self: gen_qwavedecoder_types.QWaveDecoder, mode: cint): bool =
  fcQWaveDecoder_open(self.h, cint(mode))

proc close*(self: gen_qwavedecoder_types.QWaveDecoder, ): void =
  fcQWaveDecoder_close(self.h)

proc seek*(self: gen_qwavedecoder_types.QWaveDecoder, pos: clonglong): bool =
  fcQWaveDecoder_seek(self.h, pos)

proc pos*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fcQWaveDecoder_pos(self.h)

proc size*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fcQWaveDecoder_size(self.h)

proc isSequential*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fcQWaveDecoder_isSequential(self.h)

proc bytesAvailable*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fcQWaveDecoder_bytesAvailable(self.h)

proc formatKnown*(self: gen_qwavedecoder_types.QWaveDecoder, ): void =
  fcQWaveDecoder_formatKnown(self.h)

type QWaveDecoderformatKnownSlot* = proc()
proc miqt_exec_callback_QWaveDecoder_formatKnown(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWaveDecoderformatKnownSlot](cast[pointer](slot))
  nimfunc[]()

proc onformatKnown*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderformatKnownSlot) =
  var tmp = new QWaveDecoderformatKnownSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_connect_formatKnown(self.h, cast[int](addr tmp[]))

proc parsingError*(self: gen_qwavedecoder_types.QWaveDecoder, ): void =
  fcQWaveDecoder_parsingError(self.h)

type QWaveDecoderparsingErrorSlot* = proc()
proc miqt_exec_callback_QWaveDecoder_parsingError(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QWaveDecoderparsingErrorSlot](cast[pointer](slot))
  nimfunc[]()

proc onparsingError*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderparsingErrorSlot) =
  var tmp = new QWaveDecoderparsingErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_connect_parsingError(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qwavedecoder_types.QWaveDecoder, s: cstring, c: cstring): string =
  let v_ms = fcQWaveDecoder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwavedecoder_types.QWaveDecoder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWaveDecoder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWaveDecodermetaObject*(self: gen_qwavedecoder_types.QWaveDecoder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQWaveDecoder_virtualbase_metaObject(self.h))

type QWaveDecodermetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodermetaObjectProc) =
  # TODO check subclass
  var tmp = new QWaveDecodermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_metaObject(self: ptr cQWaveDecoder, slot: int): pointer {.exportc: "miqt_exec_callback_QWaveDecoder_metaObject ".} =
  var nimfunc = cast[ptr QWaveDecodermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWaveDecodermetacast*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cstring): pointer =
  fQWaveDecoder_virtualbase_metacast(self.h, param1)

type QWaveDecodermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodermetacastProc) =
  # TODO check subclass
  var tmp = new QWaveDecodermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_metacast(self: ptr cQWaveDecoder, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWaveDecoder_metacast ".} =
  var nimfunc = cast[ptr QWaveDecodermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWaveDecodermetacall*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cint, param2: cint, param3: pointer): cint =
  fQWaveDecoder_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWaveDecodermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodermetacallProc) =
  # TODO check subclass
  var tmp = new QWaveDecodermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_metacall(self: ptr cQWaveDecoder, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWaveDecoder_metacall ".} =
  var nimfunc = cast[ptr QWaveDecodermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QWaveDecoderopen*(self: gen_qwavedecoder_types.QWaveDecoder, mode: cint): bool =
  fQWaveDecoder_virtualbase_open(self.h, cint(mode))

type QWaveDecoderopenProc* = proc(mode: cint): bool
proc onopen*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderopenProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderopenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_open(self: ptr cQWaveDecoder, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QWaveDecoder_open ".} =
  var nimfunc = cast[ptr QWaveDecoderopenProc](cast[pointer](slot))
  let slotval1 = cint(mode)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWaveDecoderclose*(self: gen_qwavedecoder_types.QWaveDecoder, ): void =
  fQWaveDecoder_virtualbase_close(self.h)

type QWaveDecodercloseProc* = proc(): void
proc onclose*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodercloseProc) =
  # TODO check subclass
  var tmp = new QWaveDecodercloseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_close(self: ptr cQWaveDecoder, slot: int): void {.exportc: "miqt_exec_callback_QWaveDecoder_close ".} =
  var nimfunc = cast[ptr QWaveDecodercloseProc](cast[pointer](slot))

  nimfunc[]()
proc QWaveDecoderseek*(self: gen_qwavedecoder_types.QWaveDecoder, pos: clonglong): bool =
  fQWaveDecoder_virtualbase_seek(self.h, pos)

type QWaveDecoderseekProc* = proc(pos: clonglong): bool
proc onseek*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderseekProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderseekProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_seek(self: ptr cQWaveDecoder, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QWaveDecoder_seek ".} =
  var nimfunc = cast[ptr QWaveDecoderseekProc](cast[pointer](slot))
  let slotval1 = pos


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWaveDecoderpos*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fQWaveDecoder_virtualbase_pos(self.h)

type QWaveDecoderposProc* = proc(): clonglong
proc onpos*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderposProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderposProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_pos(self: ptr cQWaveDecoder, slot: int): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_pos ".} =
  var nimfunc = cast[ptr QWaveDecoderposProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWaveDecodersize*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fQWaveDecoder_virtualbase_size(self.h)

type QWaveDecodersizeProc* = proc(): clonglong
proc onsize*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodersizeProc) =
  # TODO check subclass
  var tmp = new QWaveDecodersizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_size(self: ptr cQWaveDecoder, slot: int): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_size ".} =
  var nimfunc = cast[ptr QWaveDecodersizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWaveDecoderisSequential*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fQWaveDecoder_virtualbase_isSequential(self.h)

type QWaveDecoderisSequentialProc* = proc(): bool
proc onisSequential*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderisSequentialProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderisSequentialProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_isSequential(self: ptr cQWaveDecoder, slot: int): bool {.exportc: "miqt_exec_callback_QWaveDecoder_isSequential ".} =
  var nimfunc = cast[ptr QWaveDecoderisSequentialProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWaveDecoderbytesAvailable*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fQWaveDecoder_virtualbase_bytesAvailable(self.h)

type QWaveDecoderbytesAvailableProc* = proc(): clonglong
proc onbytesAvailable*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderbytesAvailableProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderbytesAvailableProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_bytesAvailable(self: ptr cQWaveDecoder, slot: int): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_bytesAvailable ".} =
  var nimfunc = cast[ptr QWaveDecoderbytesAvailableProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWaveDecoderatEnd*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fQWaveDecoder_virtualbase_atEnd(self.h)

type QWaveDecoderatEndProc* = proc(): bool
proc onatEnd*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderatEndProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderatEndProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_atEnd(self: ptr cQWaveDecoder, slot: int): bool {.exportc: "miqt_exec_callback_QWaveDecoder_atEnd ".} =
  var nimfunc = cast[ptr QWaveDecoderatEndProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWaveDecoderreset*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fQWaveDecoder_virtualbase_reset(self.h)

type QWaveDecoderresetProc* = proc(): bool
proc onreset*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderresetProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderresetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_reset(self: ptr cQWaveDecoder, slot: int): bool {.exportc: "miqt_exec_callback_QWaveDecoder_reset ".} =
  var nimfunc = cast[ptr QWaveDecoderresetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWaveDecoderbytesToWrite*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fQWaveDecoder_virtualbase_bytesToWrite(self.h)

type QWaveDecoderbytesToWriteProc* = proc(): clonglong
proc onbytesToWrite*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderbytesToWriteProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderbytesToWriteProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_bytesToWrite(self: ptr cQWaveDecoder, slot: int): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_bytesToWrite ".} =
  var nimfunc = cast[ptr QWaveDecoderbytesToWriteProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWaveDecodercanReadLine*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fQWaveDecoder_virtualbase_canReadLine(self.h)

type QWaveDecodercanReadLineProc* = proc(): bool
proc oncanReadLine*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodercanReadLineProc) =
  # TODO check subclass
  var tmp = new QWaveDecodercanReadLineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_canReadLine(self: ptr cQWaveDecoder, slot: int): bool {.exportc: "miqt_exec_callback_QWaveDecoder_canReadLine ".} =
  var nimfunc = cast[ptr QWaveDecodercanReadLineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QWaveDecoderwaitForReadyRead*(self: gen_qwavedecoder_types.QWaveDecoder, msecs: cint): bool =
  fQWaveDecoder_virtualbase_waitForReadyRead(self.h, msecs)

type QWaveDecoderwaitForReadyReadProc* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderwaitForReadyReadProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderwaitForReadyReadProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_waitForReadyRead(self: ptr cQWaveDecoder, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QWaveDecoder_waitForReadyRead ".} =
  var nimfunc = cast[ptr QWaveDecoderwaitForReadyReadProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWaveDecoderwaitForBytesWritten*(self: gen_qwavedecoder_types.QWaveDecoder, msecs: cint): bool =
  fQWaveDecoder_virtualbase_waitForBytesWritten(self.h, msecs)

type QWaveDecoderwaitForBytesWrittenProc* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderwaitForBytesWrittenProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderwaitForBytesWrittenProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_waitForBytesWritten(self: ptr cQWaveDecoder, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QWaveDecoder_waitForBytesWritten ".} =
  var nimfunc = cast[ptr QWaveDecoderwaitForBytesWrittenProc](cast[pointer](slot))
  let slotval1 = msecs


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWaveDecoderreadLineData*(self: gen_qwavedecoder_types.QWaveDecoder, data: cstring, maxlen: clonglong): clonglong =
  fQWaveDecoder_virtualbase_readLineData(self.h, data, maxlen)

type QWaveDecoderreadLineDataProc* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderreadLineDataProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderreadLineDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_readLineData(self: ptr cQWaveDecoder, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_readLineData ".} =
  var nimfunc = cast[ptr QWaveDecoderreadLineDataProc](cast[pointer](slot))
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWaveDecoderskipData*(self: gen_qwavedecoder_types.QWaveDecoder, maxSize: clonglong): clonglong =
  fQWaveDecoder_virtualbase_skipData(self.h, maxSize)

type QWaveDecoderskipDataProc* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderskipDataProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderskipDataProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_skipData(self: ptr cQWaveDecoder, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QWaveDecoder_skipData ".} =
  var nimfunc = cast[ptr QWaveDecoderskipDataProc](cast[pointer](slot))
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWaveDecoderevent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QEvent): bool =
  fQWaveDecoder_virtualbase_event(self.h, event.h)

type QWaveDecodereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodereventProc) =
  # TODO check subclass
  var tmp = new QWaveDecodereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_event(self: ptr cQWaveDecoder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWaveDecoder_event ".} =
  var nimfunc = cast[ptr QWaveDecodereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWaveDecodereventFilter*(self: gen_qwavedecoder_types.QWaveDecoder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQWaveDecoder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWaveDecodereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodereventFilterProc) =
  # TODO check subclass
  var tmp = new QWaveDecodereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_eventFilter(self: ptr cQWaveDecoder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWaveDecoder_eventFilter ".} =
  var nimfunc = cast[ptr QWaveDecodereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWaveDecodertimerEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QTimerEvent): void =
  fQWaveDecoder_virtualbase_timerEvent(self.h, event.h)

type QWaveDecodertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodertimerEventProc) =
  # TODO check subclass
  var tmp = new QWaveDecodertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_timerEvent(self: ptr cQWaveDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_timerEvent ".} =
  var nimfunc = cast[ptr QWaveDecodertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWaveDecoderchildEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QChildEvent): void =
  fQWaveDecoder_virtualbase_childEvent(self.h, event.h)

type QWaveDecoderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderchildEventProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_childEvent(self: ptr cQWaveDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_childEvent ".} =
  var nimfunc = cast[ptr QWaveDecoderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWaveDecodercustomEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QEvent): void =
  fQWaveDecoder_virtualbase_customEvent(self.h, event.h)

type QWaveDecodercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecodercustomEventProc) =
  # TODO check subclass
  var tmp = new QWaveDecodercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_customEvent(self: ptr cQWaveDecoder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_customEvent ".} =
  var nimfunc = cast[ptr QWaveDecodercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QWaveDecoderconnectNotify*(self: gen_qwavedecoder_types.QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWaveDecoder_virtualbase_connectNotify(self.h, signal.h)

type QWaveDecoderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_connectNotify(self: ptr cQWaveDecoder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_connectNotify ".} =
  var nimfunc = cast[ptr QWaveDecoderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWaveDecoderdisconnectNotify*(self: gen_qwavedecoder_types.QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQWaveDecoder_virtualbase_disconnectNotify(self.h, signal.h)

type QWaveDecoderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWaveDecoderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWaveDecoder_disconnectNotify(self: ptr cQWaveDecoder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWaveDecoder_disconnectNotify ".} =
  var nimfunc = cast[ptr QWaveDecoderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwavedecoder_types.QWaveDecoder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWaveDecoder_staticMetaObject())
proc delete*(self: gen_qwavedecoder_types.QWaveDecoder) =
  fcQWaveDecoder_delete(self.h)
