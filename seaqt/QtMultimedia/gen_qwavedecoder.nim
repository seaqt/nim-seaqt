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
type cQWaveDecoderVTable = object
  destructor*: proc(vtbl: ptr cQWaveDecoderVTable, self: ptr cQWaveDecoder) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  open*: proc(vtbl, self: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  seek*: proc(vtbl, self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(vtbl, self: pointer, ): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(vtbl, self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(vtbl, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  skipData*: proc(vtbl, self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWaveDecoder_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QWaveDecoder_virtualbase_metaObject".}
proc fcQWaveDecoder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWaveDecoder_virtualbase_metacast".}
proc fcQWaveDecoder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWaveDecoder_virtualbase_metacall".}
proc fcQWaveDecoder_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QWaveDecoder_virtualbase_open".}
proc fcQWaveDecoder_virtualbase_close(self: pointer, ): void {.importc: "QWaveDecoder_virtualbase_close".}
proc fcQWaveDecoder_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QWaveDecoder_virtualbase_seek".}
proc fcQWaveDecoder_virtualbase_pos(self: pointer, ): clonglong {.importc: "QWaveDecoder_virtualbase_pos".}
proc fcQWaveDecoder_virtualbase_size(self: pointer, ): clonglong {.importc: "QWaveDecoder_virtualbase_size".}
proc fcQWaveDecoder_virtualbase_isSequential(self: pointer, ): bool {.importc: "QWaveDecoder_virtualbase_isSequential".}
proc fcQWaveDecoder_virtualbase_bytesAvailable(self: pointer, ): clonglong {.importc: "QWaveDecoder_virtualbase_bytesAvailable".}
proc fcQWaveDecoder_virtualbase_atEnd(self: pointer, ): bool {.importc: "QWaveDecoder_virtualbase_atEnd".}
proc fcQWaveDecoder_virtualbase_reset(self: pointer, ): bool {.importc: "QWaveDecoder_virtualbase_reset".}
proc fcQWaveDecoder_virtualbase_bytesToWrite(self: pointer, ): clonglong {.importc: "QWaveDecoder_virtualbase_bytesToWrite".}
proc fcQWaveDecoder_virtualbase_canReadLine(self: pointer, ): bool {.importc: "QWaveDecoder_virtualbase_canReadLine".}
proc fcQWaveDecoder_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QWaveDecoder_virtualbase_waitForReadyRead".}
proc fcQWaveDecoder_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QWaveDecoder_virtualbase_waitForBytesWritten".}
proc fcQWaveDecoder_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.importc: "QWaveDecoder_virtualbase_readLineData".}
proc fcQWaveDecoder_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong {.importc: "QWaveDecoder_virtualbase_skipData".}
proc fcQWaveDecoder_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QWaveDecoder_virtualbase_event".}
proc fcQWaveDecoder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QWaveDecoder_virtualbase_eventFilter".}
proc fcQWaveDecoder_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QWaveDecoder_virtualbase_timerEvent".}
proc fcQWaveDecoder_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QWaveDecoder_virtualbase_childEvent".}
proc fcQWaveDecoder_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QWaveDecoder_virtualbase_customEvent".}
proc fcQWaveDecoder_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QWaveDecoder_virtualbase_connectNotify".}
proc fcQWaveDecoder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QWaveDecoder_virtualbase_disconnectNotify".}
proc fcQWaveDecoder_new(vtbl: pointer, device: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new".}
proc fcQWaveDecoder_new2(vtbl: pointer, device: pointer, format: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new2".}
proc fcQWaveDecoder_new3(vtbl: pointer, device: pointer, parent: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new3".}
proc fcQWaveDecoder_new4(vtbl: pointer, device: pointer, format: pointer, parent: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new4".}
proc fcQWaveDecoder_staticMetaObject(): pointer {.importc: "QWaveDecoder_staticMetaObject".}
proc fcQWaveDecoder_delete(self: pointer) {.importc: "QWaveDecoder_delete".}

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
proc miqt_exec_callback_cQWaveDecoder_formatKnown(slot: int) {.exportc: "miqt_exec_callback_QWaveDecoder_formatKnown".} =
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
proc miqt_exec_callback_cQWaveDecoder_parsingError(slot: int) {.exportc: "miqt_exec_callback_QWaveDecoder_parsingError".} =
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

type QWaveDecodermetaObjectProc* = proc(self: QWaveDecoder): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QWaveDecodermetacastProc* = proc(self: QWaveDecoder, param1: cstring): pointer {.raises: [], gcsafe.}
type QWaveDecodermetacallProc* = proc(self: QWaveDecoder, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QWaveDecoderopenProc* = proc(self: QWaveDecoder, mode: cint): bool {.raises: [], gcsafe.}
type QWaveDecodercloseProc* = proc(self: QWaveDecoder): void {.raises: [], gcsafe.}
type QWaveDecoderseekProc* = proc(self: QWaveDecoder, pos: clonglong): bool {.raises: [], gcsafe.}
type QWaveDecoderposProc* = proc(self: QWaveDecoder): clonglong {.raises: [], gcsafe.}
type QWaveDecodersizeProc* = proc(self: QWaveDecoder): clonglong {.raises: [], gcsafe.}
type QWaveDecoderisSequentialProc* = proc(self: QWaveDecoder): bool {.raises: [], gcsafe.}
type QWaveDecoderbytesAvailableProc* = proc(self: QWaveDecoder): clonglong {.raises: [], gcsafe.}
type QWaveDecoderatEndProc* = proc(self: QWaveDecoder): bool {.raises: [], gcsafe.}
type QWaveDecoderresetProc* = proc(self: QWaveDecoder): bool {.raises: [], gcsafe.}
type QWaveDecoderbytesToWriteProc* = proc(self: QWaveDecoder): clonglong {.raises: [], gcsafe.}
type QWaveDecodercanReadLineProc* = proc(self: QWaveDecoder): bool {.raises: [], gcsafe.}
type QWaveDecoderwaitForReadyReadProc* = proc(self: QWaveDecoder, msecs: cint): bool {.raises: [], gcsafe.}
type QWaveDecoderwaitForBytesWrittenProc* = proc(self: QWaveDecoder, msecs: cint): bool {.raises: [], gcsafe.}
type QWaveDecoderreadLineDataProc* = proc(self: QWaveDecoder, data: cstring, maxlen: clonglong): clonglong {.raises: [], gcsafe.}
type QWaveDecoderskipDataProc* = proc(self: QWaveDecoder, maxSize: clonglong): clonglong {.raises: [], gcsafe.}
type QWaveDecodereventProc* = proc(self: QWaveDecoder, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWaveDecodereventFilterProc* = proc(self: QWaveDecoder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QWaveDecodertimerEventProc* = proc(self: QWaveDecoder, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QWaveDecoderchildEventProc* = proc(self: QWaveDecoder, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QWaveDecodercustomEventProc* = proc(self: QWaveDecoder, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QWaveDecoderconnectNotifyProc* = proc(self: QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWaveDecoderdisconnectNotifyProc* = proc(self: QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QWaveDecoderVTable* = object
  vtbl: cQWaveDecoderVTable
  metaObject*: QWaveDecodermetaObjectProc
  metacast*: QWaveDecodermetacastProc
  metacall*: QWaveDecodermetacallProc
  open*: QWaveDecoderopenProc
  close*: QWaveDecodercloseProc
  seek*: QWaveDecoderseekProc
  pos*: QWaveDecoderposProc
  size*: QWaveDecodersizeProc
  isSequential*: QWaveDecoderisSequentialProc
  bytesAvailable*: QWaveDecoderbytesAvailableProc
  atEnd*: QWaveDecoderatEndProc
  reset*: QWaveDecoderresetProc
  bytesToWrite*: QWaveDecoderbytesToWriteProc
  canReadLine*: QWaveDecodercanReadLineProc
  waitForReadyRead*: QWaveDecoderwaitForReadyReadProc
  waitForBytesWritten*: QWaveDecoderwaitForBytesWrittenProc
  readLineData*: QWaveDecoderreadLineDataProc
  skipData*: QWaveDecoderskipDataProc
  event*: QWaveDecodereventProc
  eventFilter*: QWaveDecodereventFilterProc
  timerEvent*: QWaveDecodertimerEventProc
  childEvent*: QWaveDecoderchildEventProc
  customEvent*: QWaveDecodercustomEventProc
  connectNotify*: QWaveDecoderconnectNotifyProc
  disconnectNotify*: QWaveDecoderdisconnectNotifyProc
proc QWaveDecodermetaObject*(self: gen_qwavedecoder_types.QWaveDecoder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWaveDecoder_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQWaveDecoder_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QWaveDecodermetacast*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cstring): pointer =
  fcQWaveDecoder_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQWaveDecoder_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWaveDecodermetacall*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cint, param2: cint, param3: pointer): cint =
  fcQWaveDecoder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQWaveDecoder_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWaveDecoderopen*(self: gen_qwavedecoder_types.QWaveDecoder, mode: cint): bool =
  fcQWaveDecoder_virtualbase_open(self.h, cint(mode))

proc miqt_exec_callback_cQWaveDecoder_open(vtbl: pointer, self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QWaveDecoderclose*(self: gen_qwavedecoder_types.QWaveDecoder, ): void =
  fcQWaveDecoder_virtualbase_close(self.h)

proc miqt_exec_callback_cQWaveDecoder_close(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  vtbl[].close(self)

proc QWaveDecoderseek*(self: gen_qwavedecoder_types.QWaveDecoder, pos: clonglong): bool =
  fcQWaveDecoder_virtualbase_seek(self.h, pos)

proc miqt_exec_callback_cQWaveDecoder_seek(vtbl: pointer, self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QWaveDecoderpos*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fcQWaveDecoder_virtualbase_pos(self.h)

proc miqt_exec_callback_cQWaveDecoder_pos(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QWaveDecodersize*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fcQWaveDecoder_virtualbase_size(self.h)

proc miqt_exec_callback_cQWaveDecoder_size(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QWaveDecoderisSequential*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fcQWaveDecoder_virtualbase_isSequential(self.h)

proc miqt_exec_callback_cQWaveDecoder_isSequential(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QWaveDecoderbytesAvailable*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fcQWaveDecoder_virtualbase_bytesAvailable(self.h)

proc miqt_exec_callback_cQWaveDecoder_bytesAvailable(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QWaveDecoderatEnd*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fcQWaveDecoder_virtualbase_atEnd(self.h)

proc miqt_exec_callback_cQWaveDecoder_atEnd(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QWaveDecoderreset*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fcQWaveDecoder_virtualbase_reset(self.h)

proc miqt_exec_callback_cQWaveDecoder_reset(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QWaveDecoderbytesToWrite*(self: gen_qwavedecoder_types.QWaveDecoder, ): clonglong =
  fcQWaveDecoder_virtualbase_bytesToWrite(self.h)

proc miqt_exec_callback_cQWaveDecoder_bytesToWrite(vtbl: pointer, self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QWaveDecodercanReadLine*(self: gen_qwavedecoder_types.QWaveDecoder, ): bool =
  fcQWaveDecoder_virtualbase_canReadLine(self.h)

proc miqt_exec_callback_cQWaveDecoder_canReadLine(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QWaveDecoderwaitForReadyRead*(self: gen_qwavedecoder_types.QWaveDecoder, msecs: cint): bool =
  fcQWaveDecoder_virtualbase_waitForReadyRead(self.h, msecs)

proc miqt_exec_callback_cQWaveDecoder_waitForReadyRead(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QWaveDecoderwaitForBytesWritten*(self: gen_qwavedecoder_types.QWaveDecoder, msecs: cint): bool =
  fcQWaveDecoder_virtualbase_waitForBytesWritten(self.h, msecs)

proc miqt_exec_callback_cQWaveDecoder_waitForBytesWritten(vtbl: pointer, self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QWaveDecoderreadLineData*(self: gen_qwavedecoder_types.QWaveDecoder, data: cstring, maxlen: clonglong): clonglong =
  fcQWaveDecoder_virtualbase_readLineData(self.h, data, maxlen)

proc miqt_exec_callback_cQWaveDecoder_readLineData(vtbl: pointer, self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QWaveDecoderskipData*(self: gen_qwavedecoder_types.QWaveDecoder, maxSize: clonglong): clonglong =
  fcQWaveDecoder_virtualbase_skipData(self.h, maxSize)

proc miqt_exec_callback_cQWaveDecoder_skipData(vtbl: pointer, self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QWaveDecoderevent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QEvent): bool =
  fcQWaveDecoder_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQWaveDecoder_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWaveDecodereventFilter*(self: gen_qwavedecoder_types.QWaveDecoder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWaveDecoder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQWaveDecoder_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWaveDecodertimerEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWaveDecoder_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQWaveDecoder_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QWaveDecoderchildEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWaveDecoder_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQWaveDecoder_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QWaveDecodercustomEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QEvent): void =
  fcQWaveDecoder_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQWaveDecoder_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QWaveDecoderconnectNotify*(self: gen_qwavedecoder_types.QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWaveDecoder_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWaveDecoder_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QWaveDecoderdisconnectNotify*(self: gen_qwavedecoder_types.QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWaveDecoder_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQWaveDecoder_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](vtbl)
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice,
    vtbl: ref QWaveDecoderVTable = nil): gen_qwavedecoder_types.QWaveDecoder =
  let vtbl = if vtbl == nil: new QWaveDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWaveDecoderVTable, _: ptr cQWaveDecoder) {.cdecl.} =
    let vtbl = cast[ref QWaveDecoderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWaveDecoder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWaveDecoder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWaveDecoder_metacall
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQWaveDecoder_open
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQWaveDecoder_close
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQWaveDecoder_seek
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQWaveDecoder_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQWaveDecoder_size
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQWaveDecoder_isSequential
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQWaveDecoder_bytesAvailable
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQWaveDecoder_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQWaveDecoder_reset
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQWaveDecoder_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQWaveDecoder_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQWaveDecoder_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQWaveDecoder_waitForBytesWritten
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQWaveDecoder_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQWaveDecoder_skipData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWaveDecoder_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWaveDecoder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWaveDecoder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWaveDecoder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWaveDecoder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWaveDecoder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWaveDecoder_disconnectNotify
  gen_qwavedecoder_types.QWaveDecoder(h: fcQWaveDecoder_new(addr(vtbl[]), device.h))

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QWaveDecoderVTable = nil): gen_qwavedecoder_types.QWaveDecoder =
  let vtbl = if vtbl == nil: new QWaveDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWaveDecoderVTable, _: ptr cQWaveDecoder) {.cdecl.} =
    let vtbl = cast[ref QWaveDecoderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWaveDecoder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWaveDecoder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWaveDecoder_metacall
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQWaveDecoder_open
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQWaveDecoder_close
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQWaveDecoder_seek
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQWaveDecoder_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQWaveDecoder_size
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQWaveDecoder_isSequential
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQWaveDecoder_bytesAvailable
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQWaveDecoder_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQWaveDecoder_reset
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQWaveDecoder_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQWaveDecoder_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQWaveDecoder_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQWaveDecoder_waitForBytesWritten
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQWaveDecoder_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQWaveDecoder_skipData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWaveDecoder_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWaveDecoder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWaveDecoder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWaveDecoder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWaveDecoder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWaveDecoder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWaveDecoder_disconnectNotify
  gen_qwavedecoder_types.QWaveDecoder(h: fcQWaveDecoder_new2(addr(vtbl[]), device.h, format.h))

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, parent: gen_qobject_types.QObject,
    vtbl: ref QWaveDecoderVTable = nil): gen_qwavedecoder_types.QWaveDecoder =
  let vtbl = if vtbl == nil: new QWaveDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWaveDecoderVTable, _: ptr cQWaveDecoder) {.cdecl.} =
    let vtbl = cast[ref QWaveDecoderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWaveDecoder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWaveDecoder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWaveDecoder_metacall
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQWaveDecoder_open
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQWaveDecoder_close
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQWaveDecoder_seek
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQWaveDecoder_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQWaveDecoder_size
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQWaveDecoder_isSequential
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQWaveDecoder_bytesAvailable
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQWaveDecoder_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQWaveDecoder_reset
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQWaveDecoder_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQWaveDecoder_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQWaveDecoder_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQWaveDecoder_waitForBytesWritten
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQWaveDecoder_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQWaveDecoder_skipData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWaveDecoder_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWaveDecoder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWaveDecoder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWaveDecoder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWaveDecoder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWaveDecoder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWaveDecoder_disconnectNotify
  gen_qwavedecoder_types.QWaveDecoder(h: fcQWaveDecoder_new3(addr(vtbl[]), device.h, parent.h))

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QWaveDecoderVTable = nil): gen_qwavedecoder_types.QWaveDecoder =
  let vtbl = if vtbl == nil: new QWaveDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWaveDecoderVTable, _: ptr cQWaveDecoder) {.cdecl.} =
    let vtbl = cast[ref QWaveDecoderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQWaveDecoder_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQWaveDecoder_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQWaveDecoder_metacall
  if not isNil(vtbl.open):
    vtbl[].vtbl.open = miqt_exec_callback_cQWaveDecoder_open
  if not isNil(vtbl.close):
    vtbl[].vtbl.close = miqt_exec_callback_cQWaveDecoder_close
  if not isNil(vtbl.seek):
    vtbl[].vtbl.seek = miqt_exec_callback_cQWaveDecoder_seek
  if not isNil(vtbl.pos):
    vtbl[].vtbl.pos = miqt_exec_callback_cQWaveDecoder_pos
  if not isNil(vtbl.size):
    vtbl[].vtbl.size = miqt_exec_callback_cQWaveDecoder_size
  if not isNil(vtbl.isSequential):
    vtbl[].vtbl.isSequential = miqt_exec_callback_cQWaveDecoder_isSequential
  if not isNil(vtbl.bytesAvailable):
    vtbl[].vtbl.bytesAvailable = miqt_exec_callback_cQWaveDecoder_bytesAvailable
  if not isNil(vtbl.atEnd):
    vtbl[].vtbl.atEnd = miqt_exec_callback_cQWaveDecoder_atEnd
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQWaveDecoder_reset
  if not isNil(vtbl.bytesToWrite):
    vtbl[].vtbl.bytesToWrite = miqt_exec_callback_cQWaveDecoder_bytesToWrite
  if not isNil(vtbl.canReadLine):
    vtbl[].vtbl.canReadLine = miqt_exec_callback_cQWaveDecoder_canReadLine
  if not isNil(vtbl.waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = miqt_exec_callback_cQWaveDecoder_waitForReadyRead
  if not isNil(vtbl.waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = miqt_exec_callback_cQWaveDecoder_waitForBytesWritten
  if not isNil(vtbl.readLineData):
    vtbl[].vtbl.readLineData = miqt_exec_callback_cQWaveDecoder_readLineData
  if not isNil(vtbl.skipData):
    vtbl[].vtbl.skipData = miqt_exec_callback_cQWaveDecoder_skipData
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQWaveDecoder_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQWaveDecoder_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQWaveDecoder_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQWaveDecoder_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQWaveDecoder_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQWaveDecoder_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQWaveDecoder_disconnectNotify
  gen_qwavedecoder_types.QWaveDecoder(h: fcQWaveDecoder_new4(addr(vtbl[]), device.h, format.h, parent.h))

proc staticMetaObject*(_: type gen_qwavedecoder_types.QWaveDecoder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWaveDecoder_staticMetaObject())
proc delete*(self: gen_qwavedecoder_types.QWaveDecoder) =
  fcQWaveDecoder_delete(self.h)
