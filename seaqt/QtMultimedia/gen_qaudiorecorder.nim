import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qaudiorecorder.cpp", cflags).}


import ./gen_qaudiorecorder_types
export gen_qaudiorecorder_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qmediaobject_types,
  ./gen_qmediarecorder
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qmediaobject_types,
  gen_qmediarecorder

type cQAudioRecorder*{.exportc: "QAudioRecorder", incompleteStruct.} = object

proc fcQAudioRecorder_new(): ptr cQAudioRecorder {.importc: "QAudioRecorder_new".}
proc fcQAudioRecorder_new2(parent: pointer): ptr cQAudioRecorder {.importc: "QAudioRecorder_new2".}
proc fcQAudioRecorder_metaObject(self: pointer, ): pointer {.importc: "QAudioRecorder_metaObject".}
proc fcQAudioRecorder_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioRecorder_metacast".}
proc fcQAudioRecorder_tr(s: cstring): struct_miqt_string {.importc: "QAudioRecorder_tr".}
proc fcQAudioRecorder_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioRecorder_trUtf8".}
proc fcQAudioRecorder_audioInputs(self: pointer, ): struct_miqt_array {.importc: "QAudioRecorder_audioInputs".}
proc fcQAudioRecorder_defaultAudioInput(self: pointer, ): struct_miqt_string {.importc: "QAudioRecorder_defaultAudioInput".}
proc fcQAudioRecorder_audioInputDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAudioRecorder_audioInputDescription".}
proc fcQAudioRecorder_audioInput(self: pointer, ): struct_miqt_string {.importc: "QAudioRecorder_audioInput".}
proc fcQAudioRecorder_setAudioInput(self: pointer, name: struct_miqt_string): void {.importc: "QAudioRecorder_setAudioInput".}
proc fcQAudioRecorder_audioInputChanged(self: pointer, name: struct_miqt_string): void {.importc: "QAudioRecorder_audioInputChanged".}
proc fcQAudioRecorder_connect_audioInputChanged(self: pointer, slot: int) {.importc: "QAudioRecorder_connect_audioInputChanged".}
proc fcQAudioRecorder_availableAudioInputsChanged(self: pointer, ): void {.importc: "QAudioRecorder_availableAudioInputsChanged".}
proc fcQAudioRecorder_connect_availableAudioInputsChanged(self: pointer, slot: int) {.importc: "QAudioRecorder_connect_availableAudioInputsChanged".}
proc fcQAudioRecorder_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRecorder_tr2".}
proc fcQAudioRecorder_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRecorder_tr3".}
proc fcQAudioRecorder_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioRecorder_trUtf82".}
proc fcQAudioRecorder_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioRecorder_trUtf83".}
proc fQAudioRecorder_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QAudioRecorder_virtualbase_mediaObject".}
proc fcQAudioRecorder_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_mediaObject".}
proc fQAudioRecorder_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QAudioRecorder_virtualbase_setMediaObject".}
proc fcQAudioRecorder_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_setMediaObject".}
proc fQAudioRecorder_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioRecorder_virtualbase_event".}
proc fcQAudioRecorder_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_event".}
proc fQAudioRecorder_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioRecorder_virtualbase_eventFilter".}
proc fcQAudioRecorder_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_eventFilter".}
proc fQAudioRecorder_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioRecorder_virtualbase_timerEvent".}
proc fcQAudioRecorder_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_timerEvent".}
proc fQAudioRecorder_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioRecorder_virtualbase_childEvent".}
proc fcQAudioRecorder_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_childEvent".}
proc fQAudioRecorder_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioRecorder_virtualbase_customEvent".}
proc fcQAudioRecorder_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_customEvent".}
proc fQAudioRecorder_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioRecorder_virtualbase_connectNotify".}
proc fcQAudioRecorder_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_connectNotify".}
proc fQAudioRecorder_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioRecorder_virtualbase_disconnectNotify".}
proc fcQAudioRecorder_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioRecorder_override_virtual_disconnectNotify".}
proc fcQAudioRecorder_delete(self: pointer) {.importc: "QAudioRecorder_delete".}


func init*(T: type gen_qaudiorecorder_types.QAudioRecorder, h: ptr cQAudioRecorder): gen_qaudiorecorder_types.QAudioRecorder =
  T(h: h)
proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder, ): gen_qaudiorecorder_types.QAudioRecorder =
  gen_qaudiorecorder_types.QAudioRecorder.init(fcQAudioRecorder_new())

proc create*(T: type gen_qaudiorecorder_types.QAudioRecorder, parent: gen_qobject_types.QObject): gen_qaudiorecorder_types.QAudioRecorder =
  gen_qaudiorecorder_types.QAudioRecorder.init(fcQAudioRecorder_new2(parent.h))

proc metaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAudioRecorder_metaObject(self.h))

proc metacast*(self: gen_qaudiorecorder_types.QAudioRecorder, param1: cstring): pointer =
  fcQAudioRecorder_metacast(self.h, param1)

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring): string =
  let v_ms = fcQAudioRecorder_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring): string =
  let v_ms = fcQAudioRecorder_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInputs*(self: gen_qaudiorecorder_types.QAudioRecorder, ): seq[string] =
  var v_ma = fcQAudioRecorder_audioInputs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc defaultAudioInput*(self: gen_qaudiorecorder_types.QAudioRecorder, ): string =
  let v_ms = fcQAudioRecorder_defaultAudioInput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInputDescription*(self: gen_qaudiorecorder_types.QAudioRecorder, name: string): string =
  let v_ms = fcQAudioRecorder_audioInputDescription(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInput*(self: gen_qaudiorecorder_types.QAudioRecorder, ): string =
  let v_ms = fcQAudioRecorder_audioInput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAudioInput*(self: gen_qaudiorecorder_types.QAudioRecorder, name: string): void =
  fcQAudioRecorder_setAudioInput(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc audioInputChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, name: string): void =
  fcQAudioRecorder_audioInputChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

type QAudioRecorderaudioInputChangedSlot* = proc(name: string)
proc miqt_exec_callback_QAudioRecorder_audioInputChanged(slot: int, name: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QAudioRecorderaudioInputChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc onaudioInputChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderaudioInputChangedSlot) =
  var tmp = new QAudioRecorderaudioInputChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_connect_audioInputChanged(self.h, cast[int](addr tmp[]))

proc availableAudioInputsChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, ): void =
  fcQAudioRecorder_availableAudioInputsChanged(self.h)

type QAudioRecorderavailableAudioInputsChangedSlot* = proc()
proc miqt_exec_callback_QAudioRecorder_availableAudioInputsChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QAudioRecorderavailableAudioInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onavailableAudioInputsChanged*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderavailableAudioInputsChangedSlot) =
  var tmp = new QAudioRecorderavailableAudioInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_connect_availableAudioInputsChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRecorder_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRecorder_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring): string =
  let v_ms = fcQAudioRecorder_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qaudiorecorder_types.QAudioRecorder, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAudioRecorder_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QAudioRecordermediaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, ): gen_qmediaobject_types.QMediaObject =
  gen_qmediaobject_types.QMediaObject(h: fQAudioRecorder_virtualbase_mediaObject(self.h))

type QAudioRecordermediaObjectProc* = proc(): gen_qmediaobject_types.QMediaObject
proc onmediaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecordermediaObjectProc) =
  # TODO check subclass
  var tmp = new QAudioRecordermediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_mediaObject(self: ptr cQAudioRecorder, slot: int): pointer {.exportc: "miqt_exec_callback_QAudioRecorder_mediaObject ".} =
  var nimfunc = cast[ptr QAudioRecordermediaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QAudioRecordersetMediaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, objectVal: gen_qmediaobject_types.QMediaObject): bool =
  fQAudioRecorder_virtualbase_setMediaObject(self.h, objectVal.h)

type QAudioRecordersetMediaObjectProc* = proc(objectVal: gen_qmediaobject_types.QMediaObject): bool
proc onsetMediaObject*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecordersetMediaObjectProc) =
  # TODO check subclass
  var tmp = new QAudioRecordersetMediaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_setMediaObject(self: ptr cQAudioRecorder, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QAudioRecorder_setMediaObject ".} =
  var nimfunc = cast[ptr QAudioRecordersetMediaObjectProc](cast[pointer](slot))
  let slotval1 = gen_qmediaobject_types.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioRecorderevent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioRecorder_virtualbase_event(self.h, event.h)

type QAudioRecordereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecordereventProc) =
  # TODO check subclass
  var tmp = new QAudioRecordereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_event(self: ptr cQAudioRecorder, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioRecorder_event ".} =
  var nimfunc = cast[ptr QAudioRecordereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QAudioRecordereventFilter*(self: gen_qaudiorecorder_types.QAudioRecorder, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQAudioRecorder_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioRecordereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecordereventFilterProc) =
  # TODO check subclass
  var tmp = new QAudioRecordereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_eventFilter(self: ptr cQAudioRecorder, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioRecorder_eventFilter ".} =
  var nimfunc = cast[ptr QAudioRecordereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QAudioRecordertimerEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QTimerEvent): void =
  fQAudioRecorder_virtualbase_timerEvent(self.h, event.h)

type QAudioRecordertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecordertimerEventProc) =
  # TODO check subclass
  var tmp = new QAudioRecordertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_timerEvent(self: ptr cQAudioRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_timerEvent ".} =
  var nimfunc = cast[ptr QAudioRecordertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QAudioRecorderchildEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QChildEvent): void =
  fQAudioRecorder_virtualbase_childEvent(self.h, event.h)

type QAudioRecorderchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderchildEventProc) =
  # TODO check subclass
  var tmp = new QAudioRecorderchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_childEvent(self: ptr cQAudioRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_childEvent ".} =
  var nimfunc = cast[ptr QAudioRecorderchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QAudioRecordercustomEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, event: gen_qcoreevent_types.QEvent): void =
  fQAudioRecorder_virtualbase_customEvent(self.h, event.h)

type QAudioRecordercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecordercustomEventProc) =
  # TODO check subclass
  var tmp = new QAudioRecordercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_customEvent(self: ptr cQAudioRecorder, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_customEvent ".} =
  var nimfunc = cast[ptr QAudioRecordercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QAudioRecorderconnectNotify*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioRecorder_virtualbase_connectNotify(self.h, signal.h)

type QAudioRecorderconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioRecorderconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_connectNotify(self: ptr cQAudioRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_connectNotify ".} =
  var nimfunc = cast[ptr QAudioRecorderconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QAudioRecorderdisconnectNotify*(self: gen_qaudiorecorder_types.QAudioRecorder, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQAudioRecorder_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioRecorderdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qaudiorecorder_types.QAudioRecorder, slot: QAudioRecorderdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QAudioRecorderdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioRecorder_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioRecorder_disconnectNotify(self: ptr cQAudioRecorder, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioRecorder_disconnectNotify ".} =
  var nimfunc = cast[ptr QAudioRecorderdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc delete*(self: gen_qaudiorecorder_types.QAudioRecorder) =
  fcQAudioRecorder_delete(self.h)
