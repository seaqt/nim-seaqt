import ./qtmultimedia_pkg

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


{.compile("gen_qwavedecoder.cpp", QtMultimediaCFlags).}


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

proc fcQWaveDecoder_metaObject(self: pointer): pointer {.importc: "QWaveDecoder_metaObject".}
proc fcQWaveDecoder_metacast(self: pointer, param1: cstring): pointer {.importc: "QWaveDecoder_metacast".}
proc fcQWaveDecoder_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWaveDecoder_metacall".}
proc fcQWaveDecoder_tr(s: cstring): struct_miqt_string {.importc: "QWaveDecoder_tr".}
proc fcQWaveDecoder_audioFormat(self: pointer): pointer {.importc: "QWaveDecoder_audioFormat".}
proc fcQWaveDecoder_getDevice(self: pointer): pointer {.importc: "QWaveDecoder_getDevice".}
proc fcQWaveDecoder_duration(self: pointer): cint {.importc: "QWaveDecoder_duration".}
proc fcQWaveDecoder_headerLength(): clonglong {.importc: "QWaveDecoder_headerLength".}
proc fcQWaveDecoder_open(self: pointer, mode: cint): bool {.importc: "QWaveDecoder_open".}
proc fcQWaveDecoder_close(self: pointer): void {.importc: "QWaveDecoder_close".}
proc fcQWaveDecoder_seek(self: pointer, pos: clonglong): bool {.importc: "QWaveDecoder_seek".}
proc fcQWaveDecoder_pos(self: pointer): clonglong {.importc: "QWaveDecoder_pos".}
proc fcQWaveDecoder_size(self: pointer): clonglong {.importc: "QWaveDecoder_size".}
proc fcQWaveDecoder_isSequential(self: pointer): bool {.importc: "QWaveDecoder_isSequential".}
proc fcQWaveDecoder_bytesAvailable(self: pointer): clonglong {.importc: "QWaveDecoder_bytesAvailable".}
proc fcQWaveDecoder_formatKnown(self: pointer): void {.importc: "QWaveDecoder_formatKnown".}
proc fcQWaveDecoder_connect_formatKnown(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWaveDecoder_connect_formatKnown".}
proc fcQWaveDecoder_parsingError(self: pointer): void {.importc: "QWaveDecoder_parsingError".}
proc fcQWaveDecoder_connect_parsingError(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QWaveDecoder_connect_parsingError".}
proc fcQWaveDecoder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWaveDecoder_tr2".}
proc fcQWaveDecoder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWaveDecoder_tr3".}
proc fcQWaveDecoder_vtbl(self: pointer): pointer {.importc: "QWaveDecoder_vtbl".}
proc fcQWaveDecoder_vdata(self: pointer): pointer {.importc: "QWaveDecoder_vdata".}
type cQWaveDecoderVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  open*: proc(self: pointer, mode: cint): bool {.cdecl, raises: [], gcsafe.}
  close*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  seek*: proc(self: pointer, pos: clonglong): bool {.cdecl, raises: [], gcsafe.}
  pos*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  size*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  isSequential*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesAvailable*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  atEnd*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  reset*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  bytesToWrite*: proc(self: pointer): clonglong {.cdecl, raises: [], gcsafe.}
  canReadLine*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  waitForReadyRead*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  waitForBytesWritten*: proc(self: pointer, msecs: cint): bool {.cdecl, raises: [], gcsafe.}
  readLineData*: proc(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  skipData*: proc(self: pointer, maxSize: clonglong): clonglong {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQWaveDecoder_virtualbase_metaObject(self: pointer): pointer {.importc: "QWaveDecoder_virtualbase_metaObject".}
proc fcQWaveDecoder_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QWaveDecoder_virtualbase_metacast".}
proc fcQWaveDecoder_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWaveDecoder_virtualbase_metacall".}
proc fcQWaveDecoder_virtualbase_open(self: pointer, mode: cint): bool {.importc: "QWaveDecoder_virtualbase_open".}
proc fcQWaveDecoder_virtualbase_close(self: pointer): void {.importc: "QWaveDecoder_virtualbase_close".}
proc fcQWaveDecoder_virtualbase_seek(self: pointer, pos: clonglong): bool {.importc: "QWaveDecoder_virtualbase_seek".}
proc fcQWaveDecoder_virtualbase_pos(self: pointer): clonglong {.importc: "QWaveDecoder_virtualbase_pos".}
proc fcQWaveDecoder_virtualbase_size(self: pointer): clonglong {.importc: "QWaveDecoder_virtualbase_size".}
proc fcQWaveDecoder_virtualbase_isSequential(self: pointer): bool {.importc: "QWaveDecoder_virtualbase_isSequential".}
proc fcQWaveDecoder_virtualbase_bytesAvailable(self: pointer): clonglong {.importc: "QWaveDecoder_virtualbase_bytesAvailable".}
proc fcQWaveDecoder_virtualbase_atEnd(self: pointer): bool {.importc: "QWaveDecoder_virtualbase_atEnd".}
proc fcQWaveDecoder_virtualbase_reset(self: pointer): bool {.importc: "QWaveDecoder_virtualbase_reset".}
proc fcQWaveDecoder_virtualbase_bytesToWrite(self: pointer): clonglong {.importc: "QWaveDecoder_virtualbase_bytesToWrite".}
proc fcQWaveDecoder_virtualbase_canReadLine(self: pointer): bool {.importc: "QWaveDecoder_virtualbase_canReadLine".}
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
proc fcQWaveDecoder_protectedbase_setOpenMode(self: pointer, openMode: cint): void {.importc: "QWaveDecoder_protectedbase_setOpenMode".}
proc fcQWaveDecoder_protectedbase_setErrorString(self: pointer, errorString: struct_miqt_string): void {.importc: "QWaveDecoder_protectedbase_setErrorString".}
proc fcQWaveDecoder_protectedbase_sender(self: pointer): pointer {.importc: "QWaveDecoder_protectedbase_sender".}
proc fcQWaveDecoder_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QWaveDecoder_protectedbase_senderSignalIndex".}
proc fcQWaveDecoder_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QWaveDecoder_protectedbase_receivers".}
proc fcQWaveDecoder_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QWaveDecoder_protectedbase_isSignalConnected".}
proc fcQWaveDecoder_new(vtbl, vdata: pointer, device: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new".}
proc fcQWaveDecoder_new2(vtbl, vdata: pointer, device: pointer, format: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new2".}
proc fcQWaveDecoder_new3(vtbl, vdata: pointer, device: pointer, parent: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new3".}
proc fcQWaveDecoder_new4(vtbl, vdata: pointer, device: pointer, format: pointer, parent: pointer): ptr cQWaveDecoder {.importc: "QWaveDecoder_new4".}
proc fcQWaveDecoder_staticMetaObject(): pointer {.importc: "QWaveDecoder_staticMetaObject".}

proc metaObject*(self: gen_qwavedecoder_types.QWaveDecoder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWaveDecoder_metaObject(self.h), owned: false)

proc metacast*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cstring): pointer =
  fcQWaveDecoder_metacast(self.h, param1)

proc metacall*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cint, param2: cint, param3: pointer): cint =
  fcQWaveDecoder_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwavedecoder_types.QWaveDecoder, s: cstring): string =
  let v_ms = fcQWaveDecoder_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc audioFormat*(self: gen_qwavedecoder_types.QWaveDecoder): gen_qaudioformat_types.QAudioFormat =
  gen_qaudioformat_types.QAudioFormat(h: fcQWaveDecoder_audioFormat(self.h), owned: true)

proc getDevice*(self: gen_qwavedecoder_types.QWaveDecoder): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQWaveDecoder_getDevice(self.h), owned: false)

proc duration*(self: gen_qwavedecoder_types.QWaveDecoder): cint =
  fcQWaveDecoder_duration(self.h)

proc headerLength*(_: type gen_qwavedecoder_types.QWaveDecoder): clonglong =
  fcQWaveDecoder_headerLength()

proc open*(self: gen_qwavedecoder_types.QWaveDecoder, mode: cint): bool =
  fcQWaveDecoder_open(self.h, cint(mode))

proc close*(self: gen_qwavedecoder_types.QWaveDecoder): void =
  fcQWaveDecoder_close(self.h)

proc seek*(self: gen_qwavedecoder_types.QWaveDecoder, pos: clonglong): bool =
  fcQWaveDecoder_seek(self.h, pos)

proc pos*(self: gen_qwavedecoder_types.QWaveDecoder): clonglong =
  fcQWaveDecoder_pos(self.h)

proc size*(self: gen_qwavedecoder_types.QWaveDecoder): clonglong =
  fcQWaveDecoder_size(self.h)

proc isSequential*(self: gen_qwavedecoder_types.QWaveDecoder): bool =
  fcQWaveDecoder_isSequential(self.h)

proc bytesAvailable*(self: gen_qwavedecoder_types.QWaveDecoder): clonglong =
  fcQWaveDecoder_bytesAvailable(self.h)

proc formatKnown*(self: gen_qwavedecoder_types.QWaveDecoder): void =
  fcQWaveDecoder_formatKnown(self.h)

type QWaveDecoderformatKnownSlot* = proc()
proc cQWaveDecoder_slot_callback_formatKnown(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWaveDecoderformatKnownSlot](cast[pointer](slot))
  nimfunc[]()

proc cQWaveDecoder_slot_callback_formatKnown_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWaveDecoderformatKnownSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onformatKnown*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderformatKnownSlot) =
  var tmp = new QWaveDecoderformatKnownSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_connect_formatKnown(self.h, cast[int](addr tmp[]), cQWaveDecoder_slot_callback_formatKnown, cQWaveDecoder_slot_callback_formatKnown_release)

proc parsingError*(self: gen_qwavedecoder_types.QWaveDecoder): void =
  fcQWaveDecoder_parsingError(self.h)

type QWaveDecoderparsingErrorSlot* = proc()
proc cQWaveDecoder_slot_callback_parsingError(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QWaveDecoderparsingErrorSlot](cast[pointer](slot))
  nimfunc[]()

proc cQWaveDecoder_slot_callback_parsingError_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QWaveDecoderparsingErrorSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onparsingError*(self: gen_qwavedecoder_types.QWaveDecoder, slot: QWaveDecoderparsingErrorSlot) =
  var tmp = new QWaveDecoderparsingErrorSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQWaveDecoder_connect_parsingError(self.h, cast[int](addr tmp[]), cQWaveDecoder_slot_callback_parsingError, cQWaveDecoder_slot_callback_parsingError_release)

proc tr*(_: type gen_qwavedecoder_types.QWaveDecoder, s: cstring, c: cstring): string =
  let v_ms = fcQWaveDecoder_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qwavedecoder_types.QWaveDecoder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQWaveDecoder_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
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
type QWaveDecoderVTable* {.inheritable, pure.} = object
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
proc QWaveDecodermetaObject*(self: gen_qwavedecoder_types.QWaveDecoder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWaveDecoder_virtualbase_metaObject(self.h), owned: false)

proc cQWaveDecoder_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QWaveDecodermetacast*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cstring): pointer =
  fcQWaveDecoder_virtualbase_metacast(self.h, param1)

proc cQWaveDecoder_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QWaveDecodermetacall*(self: gen_qwavedecoder_types.QWaveDecoder, param1: cint, param2: cint, param3: pointer): cint =
  fcQWaveDecoder_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQWaveDecoder_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QWaveDecoderopen*(self: gen_qwavedecoder_types.QWaveDecoder, mode: cint): bool =
  fcQWaveDecoder_virtualbase_open(self.h, cint(mode))

proc cQWaveDecoder_vtable_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = cint(mode)
  var virtualReturn = vtbl[].open(self, slotval1)
  virtualReturn

proc QWaveDecoderclose*(self: gen_qwavedecoder_types.QWaveDecoder): void =
  fcQWaveDecoder_virtualbase_close(self.h)

proc cQWaveDecoder_vtable_callback_close(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  vtbl[].close(self)

proc QWaveDecoderseek*(self: gen_qwavedecoder_types.QWaveDecoder, pos: clonglong): bool =
  fcQWaveDecoder_virtualbase_seek(self.h, pos)

proc cQWaveDecoder_vtable_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = pos
  var virtualReturn = vtbl[].seek(self, slotval1)
  virtualReturn

proc QWaveDecoderpos*(self: gen_qwavedecoder_types.QWaveDecoder): clonglong =
  fcQWaveDecoder_virtualbase_pos(self.h)

proc cQWaveDecoder_vtable_callback_pos(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].pos(self)
  virtualReturn

proc QWaveDecodersize*(self: gen_qwavedecoder_types.QWaveDecoder): clonglong =
  fcQWaveDecoder_virtualbase_size(self.h)

proc cQWaveDecoder_vtable_callback_size(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].size(self)
  virtualReturn

proc QWaveDecoderisSequential*(self: gen_qwavedecoder_types.QWaveDecoder): bool =
  fcQWaveDecoder_virtualbase_isSequential(self.h)

proc cQWaveDecoder_vtable_callback_isSequential(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].isSequential(self)
  virtualReturn

proc QWaveDecoderbytesAvailable*(self: gen_qwavedecoder_types.QWaveDecoder): clonglong =
  fcQWaveDecoder_virtualbase_bytesAvailable(self.h)

proc cQWaveDecoder_vtable_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].bytesAvailable(self)
  virtualReturn

proc QWaveDecoderatEnd*(self: gen_qwavedecoder_types.QWaveDecoder): bool =
  fcQWaveDecoder_virtualbase_atEnd(self.h)

proc cQWaveDecoder_vtable_callback_atEnd(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].atEnd(self)
  virtualReturn

proc QWaveDecoderreset*(self: gen_qwavedecoder_types.QWaveDecoder): bool =
  fcQWaveDecoder_virtualbase_reset(self.h)

proc cQWaveDecoder_vtable_callback_reset(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].reset(self)
  virtualReturn

proc QWaveDecoderbytesToWrite*(self: gen_qwavedecoder_types.QWaveDecoder): clonglong =
  fcQWaveDecoder_virtualbase_bytesToWrite(self.h)

proc cQWaveDecoder_vtable_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].bytesToWrite(self)
  virtualReturn

proc QWaveDecodercanReadLine*(self: gen_qwavedecoder_types.QWaveDecoder): bool =
  fcQWaveDecoder_virtualbase_canReadLine(self.h)

proc cQWaveDecoder_vtable_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  var virtualReturn = vtbl[].canReadLine(self)
  virtualReturn

proc QWaveDecoderwaitForReadyRead*(self: gen_qwavedecoder_types.QWaveDecoder, msecs: cint): bool =
  fcQWaveDecoder_virtualbase_waitForReadyRead(self.h, msecs)

proc cQWaveDecoder_vtable_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForReadyRead(self, slotval1)
  virtualReturn

proc QWaveDecoderwaitForBytesWritten*(self: gen_qwavedecoder_types.QWaveDecoder, msecs: cint): bool =
  fcQWaveDecoder_virtualbase_waitForBytesWritten(self.h, msecs)

proc cQWaveDecoder_vtable_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = msecs
  var virtualReturn = vtbl[].waitForBytesWritten(self, slotval1)
  virtualReturn

proc QWaveDecoderreadLineData*(self: gen_qwavedecoder_types.QWaveDecoder, data: cstring, maxlen: clonglong): clonglong =
  fcQWaveDecoder_virtualbase_readLineData(self.h, data, maxlen)

proc cQWaveDecoder_vtable_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = vtbl[].readLineData(self, slotval1, slotval2)
  virtualReturn

proc QWaveDecoderskipData*(self: gen_qwavedecoder_types.QWaveDecoder, maxSize: clonglong): clonglong =
  fcQWaveDecoder_virtualbase_skipData(self.h, maxSize)

proc cQWaveDecoder_vtable_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = maxSize
  var virtualReturn = vtbl[].skipData(self, slotval1)
  virtualReturn

proc QWaveDecoderevent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QEvent): bool =
  fcQWaveDecoder_virtualbase_event(self.h, event.h)

proc cQWaveDecoder_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QWaveDecodereventFilter*(self: gen_qwavedecoder_types.QWaveDecoder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQWaveDecoder_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQWaveDecoder_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QWaveDecodertimerEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQWaveDecoder_virtualbase_timerEvent(self.h, event.h)

proc cQWaveDecoder_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QWaveDecoderchildEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QChildEvent): void =
  fcQWaveDecoder_virtualbase_childEvent(self.h, event.h)

proc cQWaveDecoder_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QWaveDecodercustomEvent*(self: gen_qwavedecoder_types.QWaveDecoder, event: gen_qcoreevent_types.QEvent): void =
  fcQWaveDecoder_virtualbase_customEvent(self.h, event.h)

proc cQWaveDecoder_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QWaveDecoderconnectNotify*(self: gen_qwavedecoder_types.QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWaveDecoder_virtualbase_connectNotify(self.h, signal.h)

proc cQWaveDecoder_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QWaveDecoderdisconnectNotify*(self: gen_qwavedecoder_types.QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQWaveDecoder_virtualbase_disconnectNotify(self.h, signal.h)

proc cQWaveDecoder_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
  let self = QWaveDecoder(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQWaveDecoder* {.inheritable.} = ref object of QWaveDecoder
  vtbl*: cQWaveDecoderVTable
method metaObject*(self: VirtualQWaveDecoder): gen_qobjectdefs_types.QMetaObject {.base.} =
  QWaveDecodermetaObject(self[])
proc cQWaveDecoder_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQWaveDecoder, param1: cstring): pointer {.base.} =
  QWaveDecodermetacast(self[], param1)
proc cQWaveDecoder_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQWaveDecoder, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QWaveDecodermetacall(self[], param1, param2, param3)
proc cQWaveDecoder_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method open*(self: VirtualQWaveDecoder, mode: cint): bool {.base.} =
  QWaveDecoderopen(self[], mode)
proc cQWaveDecoder_method_callback_open(self: pointer, mode: cint): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = cint(mode)
  var virtualReturn = inst.open(slotval1)
  virtualReturn

method close*(self: VirtualQWaveDecoder): void {.base.} =
  QWaveDecoderclose(self[])
proc cQWaveDecoder_method_callback_close(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  inst.close()

method seek*(self: VirtualQWaveDecoder, pos: clonglong): bool {.base.} =
  QWaveDecoderseek(self[], pos)
proc cQWaveDecoder_method_callback_seek(self: pointer, pos: clonglong): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = pos
  var virtualReturn = inst.seek(slotval1)
  virtualReturn

method pos*(self: VirtualQWaveDecoder): clonglong {.base.} =
  QWaveDecoderpos(self[])
proc cQWaveDecoder_method_callback_pos(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.pos()
  virtualReturn

method size*(self: VirtualQWaveDecoder): clonglong {.base.} =
  QWaveDecodersize(self[])
proc cQWaveDecoder_method_callback_size(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.size()
  virtualReturn

method isSequential*(self: VirtualQWaveDecoder): bool {.base.} =
  QWaveDecoderisSequential(self[])
proc cQWaveDecoder_method_callback_isSequential(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.isSequential()
  virtualReturn

method bytesAvailable*(self: VirtualQWaveDecoder): clonglong {.base.} =
  QWaveDecoderbytesAvailable(self[])
proc cQWaveDecoder_method_callback_bytesAvailable(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.bytesAvailable()
  virtualReturn

method atEnd*(self: VirtualQWaveDecoder): bool {.base.} =
  QWaveDecoderatEnd(self[])
proc cQWaveDecoder_method_callback_atEnd(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.atEnd()
  virtualReturn

method reset*(self: VirtualQWaveDecoder): bool {.base.} =
  QWaveDecoderreset(self[])
proc cQWaveDecoder_method_callback_reset(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.reset()
  virtualReturn

method bytesToWrite*(self: VirtualQWaveDecoder): clonglong {.base.} =
  QWaveDecoderbytesToWrite(self[])
proc cQWaveDecoder_method_callback_bytesToWrite(self: pointer): clonglong {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.bytesToWrite()
  virtualReturn

method canReadLine*(self: VirtualQWaveDecoder): bool {.base.} =
  QWaveDecodercanReadLine(self[])
proc cQWaveDecoder_method_callback_canReadLine(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  var virtualReturn = inst.canReadLine()
  virtualReturn

method waitForReadyRead*(self: VirtualQWaveDecoder, msecs: cint): bool {.base.} =
  QWaveDecoderwaitForReadyRead(self[], msecs)
proc cQWaveDecoder_method_callback_waitForReadyRead(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForReadyRead(slotval1)
  virtualReturn

method waitForBytesWritten*(self: VirtualQWaveDecoder, msecs: cint): bool {.base.} =
  QWaveDecoderwaitForBytesWritten(self[], msecs)
proc cQWaveDecoder_method_callback_waitForBytesWritten(self: pointer, msecs: cint): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = msecs
  var virtualReturn = inst.waitForBytesWritten(slotval1)
  virtualReturn

method readLineData*(self: VirtualQWaveDecoder, data: cstring, maxlen: clonglong): clonglong {.base.} =
  QWaveDecoderreadLineData(self[], data, maxlen)
proc cQWaveDecoder_method_callback_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = (data)
  let slotval2 = maxlen
  var virtualReturn = inst.readLineData(slotval1, slotval2)
  virtualReturn

method skipData*(self: VirtualQWaveDecoder, maxSize: clonglong): clonglong {.base.} =
  QWaveDecoderskipData(self[], maxSize)
proc cQWaveDecoder_method_callback_skipData(self: pointer, maxSize: clonglong): clonglong {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = maxSize
  var virtualReturn = inst.skipData(slotval1)
  virtualReturn

method event*(self: VirtualQWaveDecoder, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWaveDecoderevent(self[], event)
proc cQWaveDecoder_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQWaveDecoder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QWaveDecodereventFilter(self[], watched, event)
proc cQWaveDecoder_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQWaveDecoder, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QWaveDecodertimerEvent(self[], event)
proc cQWaveDecoder_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQWaveDecoder, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QWaveDecoderchildEvent(self[], event)
proc cQWaveDecoder_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQWaveDecoder, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QWaveDecodercustomEvent(self[], event)
proc cQWaveDecoder_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWaveDecoderconnectNotify(self[], signal)
proc cQWaveDecoder_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QWaveDecoderdisconnectNotify(self[], signal)
proc cQWaveDecoder_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWaveDecoder](fcQWaveDecoder_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc setOpenMode*(self: gen_qwavedecoder_types.QWaveDecoder, openMode: cint): void =
  fcQWaveDecoder_protectedbase_setOpenMode(self.h, cint(openMode))

proc setErrorString*(self: gen_qwavedecoder_types.QWaveDecoder, errorString: openArray[char]): void =
  fcQWaveDecoder_protectedbase_setErrorString(self.h, struct_miqt_string(data: if len(errorString) > 0: addr errorString[0] else: nil, len: csize_t(len(errorString))))

proc sender*(self: gen_qwavedecoder_types.QWaveDecoder): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQWaveDecoder_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qwavedecoder_types.QWaveDecoder): cint =
  fcQWaveDecoder_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qwavedecoder_types.QWaveDecoder, signal: cstring): cint =
  fcQWaveDecoder_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qwavedecoder_types.QWaveDecoder, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQWaveDecoder_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice,
    vtbl: ref QWaveDecoderVTable = nil): gen_qwavedecoder_types.QWaveDecoder =
  let vtbl = if vtbl == nil: new QWaveDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWaveDecoder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWaveDecoder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWaveDecoder_vtable_callback_metacall
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQWaveDecoder_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQWaveDecoder_vtable_callback_close
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQWaveDecoder_vtable_callback_seek
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQWaveDecoder_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQWaveDecoder_vtable_callback_size
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQWaveDecoder_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQWaveDecoder_vtable_callback_bytesAvailable
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQWaveDecoder_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQWaveDecoder_vtable_callback_reset
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQWaveDecoder_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQWaveDecoder_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQWaveDecoder_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQWaveDecoder_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQWaveDecoder_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQWaveDecoder_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWaveDecoder_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWaveDecoder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWaveDecoder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWaveDecoder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWaveDecoder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWaveDecoder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWaveDecoder_vtable_callback_disconnectNotify
  gen_qwavedecoder_types.QWaveDecoder(h: fcQWaveDecoder_new(addr(vtbl[].vtbl), addr(vtbl[]), device.h), owned: true)

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, format: gen_qaudioformat_types.QAudioFormat,
    vtbl: ref QWaveDecoderVTable = nil): gen_qwavedecoder_types.QWaveDecoder =
  let vtbl = if vtbl == nil: new QWaveDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWaveDecoder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWaveDecoder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWaveDecoder_vtable_callback_metacall
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQWaveDecoder_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQWaveDecoder_vtable_callback_close
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQWaveDecoder_vtable_callback_seek
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQWaveDecoder_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQWaveDecoder_vtable_callback_size
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQWaveDecoder_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQWaveDecoder_vtable_callback_bytesAvailable
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQWaveDecoder_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQWaveDecoder_vtable_callback_reset
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQWaveDecoder_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQWaveDecoder_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQWaveDecoder_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQWaveDecoder_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQWaveDecoder_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQWaveDecoder_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWaveDecoder_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWaveDecoder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWaveDecoder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWaveDecoder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWaveDecoder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWaveDecoder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWaveDecoder_vtable_callback_disconnectNotify
  gen_qwavedecoder_types.QWaveDecoder(h: fcQWaveDecoder_new2(addr(vtbl[].vtbl), addr(vtbl[]), device.h, format.h), owned: true)

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, parent: gen_qobject_types.QObject,
    vtbl: ref QWaveDecoderVTable = nil): gen_qwavedecoder_types.QWaveDecoder =
  let vtbl = if vtbl == nil: new QWaveDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWaveDecoder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWaveDecoder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWaveDecoder_vtable_callback_metacall
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQWaveDecoder_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQWaveDecoder_vtable_callback_close
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQWaveDecoder_vtable_callback_seek
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQWaveDecoder_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQWaveDecoder_vtable_callback_size
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQWaveDecoder_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQWaveDecoder_vtable_callback_bytesAvailable
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQWaveDecoder_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQWaveDecoder_vtable_callback_reset
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQWaveDecoder_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQWaveDecoder_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQWaveDecoder_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQWaveDecoder_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQWaveDecoder_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQWaveDecoder_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWaveDecoder_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWaveDecoder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWaveDecoder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWaveDecoder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWaveDecoder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWaveDecoder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWaveDecoder_vtable_callback_disconnectNotify
  gen_qwavedecoder_types.QWaveDecoder(h: fcQWaveDecoder_new3(addr(vtbl[].vtbl), addr(vtbl[]), device.h, parent.h), owned: true)

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    vtbl: ref QWaveDecoderVTable = nil): gen_qwavedecoder_types.QWaveDecoder =
  let vtbl = if vtbl == nil: new QWaveDecoderVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWaveDecoderVTable](fcQWaveDecoder_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQWaveDecoder_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQWaveDecoder_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQWaveDecoder_vtable_callback_metacall
  if not isNil(vtbl[].open):
    vtbl[].vtbl.open = cQWaveDecoder_vtable_callback_open
  if not isNil(vtbl[].close):
    vtbl[].vtbl.close = cQWaveDecoder_vtable_callback_close
  if not isNil(vtbl[].seek):
    vtbl[].vtbl.seek = cQWaveDecoder_vtable_callback_seek
  if not isNil(vtbl[].pos):
    vtbl[].vtbl.pos = cQWaveDecoder_vtable_callback_pos
  if not isNil(vtbl[].size):
    vtbl[].vtbl.size = cQWaveDecoder_vtable_callback_size
  if not isNil(vtbl[].isSequential):
    vtbl[].vtbl.isSequential = cQWaveDecoder_vtable_callback_isSequential
  if not isNil(vtbl[].bytesAvailable):
    vtbl[].vtbl.bytesAvailable = cQWaveDecoder_vtable_callback_bytesAvailable
  if not isNil(vtbl[].atEnd):
    vtbl[].vtbl.atEnd = cQWaveDecoder_vtable_callback_atEnd
  if not isNil(vtbl[].reset):
    vtbl[].vtbl.reset = cQWaveDecoder_vtable_callback_reset
  if not isNil(vtbl[].bytesToWrite):
    vtbl[].vtbl.bytesToWrite = cQWaveDecoder_vtable_callback_bytesToWrite
  if not isNil(vtbl[].canReadLine):
    vtbl[].vtbl.canReadLine = cQWaveDecoder_vtable_callback_canReadLine
  if not isNil(vtbl[].waitForReadyRead):
    vtbl[].vtbl.waitForReadyRead = cQWaveDecoder_vtable_callback_waitForReadyRead
  if not isNil(vtbl[].waitForBytesWritten):
    vtbl[].vtbl.waitForBytesWritten = cQWaveDecoder_vtable_callback_waitForBytesWritten
  if not isNil(vtbl[].readLineData):
    vtbl[].vtbl.readLineData = cQWaveDecoder_vtable_callback_readLineData
  if not isNil(vtbl[].skipData):
    vtbl[].vtbl.skipData = cQWaveDecoder_vtable_callback_skipData
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQWaveDecoder_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQWaveDecoder_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQWaveDecoder_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQWaveDecoder_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQWaveDecoder_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQWaveDecoder_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQWaveDecoder_vtable_callback_disconnectNotify
  gen_qwavedecoder_types.QWaveDecoder(h: fcQWaveDecoder_new4(addr(vtbl[].vtbl), addr(vtbl[]), device.h, format.h, parent.h), owned: true)

const cQWaveDecoder_mvtbl = cQWaveDecoderVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWaveDecoder()[])](self.fcQWaveDecoder_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQWaveDecoder_method_callback_metaObject,
  metacast: cQWaveDecoder_method_callback_metacast,
  metacall: cQWaveDecoder_method_callback_metacall,
  open: cQWaveDecoder_method_callback_open,
  close: cQWaveDecoder_method_callback_close,
  seek: cQWaveDecoder_method_callback_seek,
  pos: cQWaveDecoder_method_callback_pos,
  size: cQWaveDecoder_method_callback_size,
  isSequential: cQWaveDecoder_method_callback_isSequential,
  bytesAvailable: cQWaveDecoder_method_callback_bytesAvailable,
  atEnd: cQWaveDecoder_method_callback_atEnd,
  reset: cQWaveDecoder_method_callback_reset,
  bytesToWrite: cQWaveDecoder_method_callback_bytesToWrite,
  canReadLine: cQWaveDecoder_method_callback_canReadLine,
  waitForReadyRead: cQWaveDecoder_method_callback_waitForReadyRead,
  waitForBytesWritten: cQWaveDecoder_method_callback_waitForBytesWritten,
  readLineData: cQWaveDecoder_method_callback_readLineData,
  skipData: cQWaveDecoder_method_callback_skipData,
  event: cQWaveDecoder_method_callback_event,
  eventFilter: cQWaveDecoder_method_callback_eventFilter,
  timerEvent: cQWaveDecoder_method_callback_timerEvent,
  childEvent: cQWaveDecoder_method_callback_childEvent,
  customEvent: cQWaveDecoder_method_callback_customEvent,
  connectNotify: cQWaveDecoder_method_callback_connectNotify,
  disconnectNotify: cQWaveDecoder_method_callback_disconnectNotify,
)
proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice,
    inst: VirtualQWaveDecoder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWaveDecoder_new(addr(cQWaveDecoder_mvtbl), addr(inst[]), device.h)
  inst[].owned = true

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, format: gen_qaudioformat_types.QAudioFormat,
    inst: VirtualQWaveDecoder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWaveDecoder_new2(addr(cQWaveDecoder_mvtbl), addr(inst[]), device.h, format.h)
  inst[].owned = true

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, parent: gen_qobject_types.QObject,
    inst: VirtualQWaveDecoder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWaveDecoder_new3(addr(cQWaveDecoder_mvtbl), addr(inst[]), device.h, parent.h)
  inst[].owned = true

proc create*(T: type gen_qwavedecoder_types.QWaveDecoder,
    device: gen_qiodevice_types.QIODevice, format: gen_qaudioformat_types.QAudioFormat, parent: gen_qobject_types.QObject,
    inst: VirtualQWaveDecoder) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWaveDecoder_new4(addr(cQWaveDecoder_mvtbl), addr(inst[]), device.h, format.h, parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qwavedecoder_types.QWaveDecoder): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWaveDecoder_staticMetaObject())
