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
{.compile("gen_qmediadevices.cpp", cflags).}


import ./gen_qmediadevices_types
export gen_qmediadevices_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qaudiodevice_types,
  ./gen_qcameradevice_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qaudiodevice_types,
  gen_qcameradevice_types

type cQMediaDevices*{.exportc: "QMediaDevices", incompleteStruct.} = object

proc fcQMediaDevices_new(): ptr cQMediaDevices {.importc: "QMediaDevices_new".}
proc fcQMediaDevices_new2(parent: pointer): ptr cQMediaDevices {.importc: "QMediaDevices_new2".}
proc fcQMediaDevices_metaObject(self: pointer, ): pointer {.importc: "QMediaDevices_metaObject".}
proc fcQMediaDevices_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaDevices_metacast".}
proc fcQMediaDevices_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaDevices_metacall".}
proc fcQMediaDevices_tr(s: cstring): struct_miqt_string {.importc: "QMediaDevices_tr".}
proc fcQMediaDevices_audioInputs(): struct_miqt_array {.importc: "QMediaDevices_audioInputs".}
proc fcQMediaDevices_audioOutputs(): struct_miqt_array {.importc: "QMediaDevices_audioOutputs".}
proc fcQMediaDevices_videoInputs(): struct_miqt_array {.importc: "QMediaDevices_videoInputs".}
proc fcQMediaDevices_defaultAudioInput(): pointer {.importc: "QMediaDevices_defaultAudioInput".}
proc fcQMediaDevices_defaultAudioOutput(): pointer {.importc: "QMediaDevices_defaultAudioOutput".}
proc fcQMediaDevices_defaultVideoInput(): pointer {.importc: "QMediaDevices_defaultVideoInput".}
proc fcQMediaDevices_audioInputsChanged(self: pointer, ): void {.importc: "QMediaDevices_audioInputsChanged".}
proc fcQMediaDevices_connect_audioInputsChanged(self: pointer, slot: int) {.importc: "QMediaDevices_connect_audioInputsChanged".}
proc fcQMediaDevices_audioOutputsChanged(self: pointer, ): void {.importc: "QMediaDevices_audioOutputsChanged".}
proc fcQMediaDevices_connect_audioOutputsChanged(self: pointer, slot: int) {.importc: "QMediaDevices_connect_audioOutputsChanged".}
proc fcQMediaDevices_videoInputsChanged(self: pointer, ): void {.importc: "QMediaDevices_videoInputsChanged".}
proc fcQMediaDevices_connect_videoInputsChanged(self: pointer, slot: int) {.importc: "QMediaDevices_connect_videoInputsChanged".}
proc fcQMediaDevices_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaDevices_tr2".}
proc fcQMediaDevices_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaDevices_tr3".}
proc fQMediaDevices_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMediaDevices_virtualbase_metaObject".}
proc fcQMediaDevices_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_metaObject".}
proc fQMediaDevices_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMediaDevices_virtualbase_metacast".}
proc fcQMediaDevices_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_metacast".}
proc fQMediaDevices_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaDevices_virtualbase_metacall".}
proc fcQMediaDevices_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_metacall".}
proc fQMediaDevices_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaDevices_virtualbase_event".}
proc fcQMediaDevices_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_event".}
proc fQMediaDevices_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaDevices_virtualbase_eventFilter".}
proc fcQMediaDevices_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_eventFilter".}
proc fQMediaDevices_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaDevices_virtualbase_timerEvent".}
proc fcQMediaDevices_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_timerEvent".}
proc fQMediaDevices_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaDevices_virtualbase_childEvent".}
proc fcQMediaDevices_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_childEvent".}
proc fQMediaDevices_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaDevices_virtualbase_customEvent".}
proc fcQMediaDevices_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_customEvent".}
proc fQMediaDevices_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaDevices_virtualbase_connectNotify".}
proc fcQMediaDevices_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_connectNotify".}
proc fQMediaDevices_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaDevices_virtualbase_disconnectNotify".}
proc fcQMediaDevices_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaDevices_override_virtual_disconnectNotify".}
proc fcQMediaDevices_staticMetaObject(): pointer {.importc: "QMediaDevices_staticMetaObject".}
proc fcQMediaDevices_delete(self: pointer) {.importc: "QMediaDevices_delete".}


func init*(T: type gen_qmediadevices_types.QMediaDevices, h: ptr cQMediaDevices): gen_qmediadevices_types.QMediaDevices =
  T(h: h)
proc create*(T: type gen_qmediadevices_types.QMediaDevices, ): gen_qmediadevices_types.QMediaDevices =
  gen_qmediadevices_types.QMediaDevices.init(fcQMediaDevices_new())

proc create*(T: type gen_qmediadevices_types.QMediaDevices, parent: gen_qobject_types.QObject): gen_qmediadevices_types.QMediaDevices =
  gen_qmediadevices_types.QMediaDevices.init(fcQMediaDevices_new2(parent.h))

proc metaObject*(self: gen_qmediadevices_types.QMediaDevices, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaDevices_metaObject(self.h))

proc metacast*(self: gen_qmediadevices_types.QMediaDevices, param1: cstring): pointer =
  fcQMediaDevices_metacast(self.h, param1)

proc metacall*(self: gen_qmediadevices_types.QMediaDevices, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaDevices_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediadevices_types.QMediaDevices, s: cstring): string =
  let v_ms = fcQMediaDevices_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc audioInputs*(_: type gen_qmediadevices_types.QMediaDevices, ): seq[gen_qaudiodevice_types.QAudioDevice] =
  var v_ma = fcQMediaDevices_audioInputs()
  var vx_ret = newSeq[gen_qaudiodevice_types.QAudioDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudiodevice_types.QAudioDevice(h: v_outCast[i])
  vx_ret

proc audioOutputs*(_: type gen_qmediadevices_types.QMediaDevices, ): seq[gen_qaudiodevice_types.QAudioDevice] =
  var v_ma = fcQMediaDevices_audioOutputs()
  var vx_ret = newSeq[gen_qaudiodevice_types.QAudioDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudiodevice_types.QAudioDevice(h: v_outCast[i])
  vx_ret

proc videoInputs*(_: type gen_qmediadevices_types.QMediaDevices, ): seq[gen_qcameradevice_types.QCameraDevice] =
  var v_ma = fcQMediaDevices_videoInputs()
  var vx_ret = newSeq[gen_qcameradevice_types.QCameraDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameradevice_types.QCameraDevice(h: v_outCast[i])
  vx_ret

proc defaultAudioInput*(_: type gen_qmediadevices_types.QMediaDevices, ): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQMediaDevices_defaultAudioInput())

proc defaultAudioOutput*(_: type gen_qmediadevices_types.QMediaDevices, ): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQMediaDevices_defaultAudioOutput())

proc defaultVideoInput*(_: type gen_qmediadevices_types.QMediaDevices, ): gen_qcameradevice_types.QCameraDevice =
  gen_qcameradevice_types.QCameraDevice(h: fcQMediaDevices_defaultVideoInput())

proc audioInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, ): void =
  fcQMediaDevices_audioInputsChanged(self.h)

type QMediaDevicesaudioInputsChangedSlot* = proc()
proc miqt_exec_callback_QMediaDevices_audioInputsChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaDevicesaudioInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaudioInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesaudioInputsChangedSlot) =
  var tmp = new QMediaDevicesaudioInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_audioInputsChanged(self.h, cast[int](addr tmp[]))

proc audioOutputsChanged*(self: gen_qmediadevices_types.QMediaDevices, ): void =
  fcQMediaDevices_audioOutputsChanged(self.h)

type QMediaDevicesaudioOutputsChangedSlot* = proc()
proc miqt_exec_callback_QMediaDevices_audioOutputsChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaDevicesaudioOutputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onaudioOutputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesaudioOutputsChangedSlot) =
  var tmp = new QMediaDevicesaudioOutputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_audioOutputsChanged(self.h, cast[int](addr tmp[]))

proc videoInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, ): void =
  fcQMediaDevices_videoInputsChanged(self.h)

type QMediaDevicesvideoInputsChangedSlot* = proc()
proc miqt_exec_callback_QMediaDevices_videoInputsChanged(slot: int) {.exportc.} =
  let nimfunc = cast[ptr QMediaDevicesvideoInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc onvideoInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesvideoInputsChangedSlot) =
  var tmp = new QMediaDevicesvideoInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_videoInputsChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qmediadevices_types.QMediaDevices, s: cstring, c: cstring): string =
  let v_ms = fcQMediaDevices_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediadevices_types.QMediaDevices, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaDevices_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QMediaDevicesmetaObject*(self: gen_qmediadevices_types.QMediaDevices, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQMediaDevices_virtualbase_metaObject(self.h))

type QMediaDevicesmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesmetaObjectProc) =
  # TODO check subclass
  var tmp = new QMediaDevicesmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_metaObject(self: ptr cQMediaDevices, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaDevices_metaObject ".} =
  var nimfunc = cast[ptr QMediaDevicesmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QMediaDevicesmetacast*(self: gen_qmediadevices_types.QMediaDevices, param1: cstring): pointer =
  fQMediaDevices_virtualbase_metacast(self.h, param1)

type QMediaDevicesmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesmetacastProc) =
  # TODO check subclass
  var tmp = new QMediaDevicesmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_metacast(self: ptr cQMediaDevices, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMediaDevices_metacast ".} =
  var nimfunc = cast[ptr QMediaDevicesmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaDevicesmetacall*(self: gen_qmediadevices_types.QMediaDevices, param1: cint, param2: cint, param3: pointer): cint =
  fQMediaDevices_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaDevicesmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesmetacallProc) =
  # TODO check subclass
  var tmp = new QMediaDevicesmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_metacall(self: ptr cQMediaDevices, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaDevices_metacall ".} =
  var nimfunc = cast[ptr QMediaDevicesmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QMediaDevicesevent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaDevices_virtualbase_event(self.h, event.h)

type QMediaDeviceseventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDeviceseventProc) =
  # TODO check subclass
  var tmp = new QMediaDeviceseventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_event(self: ptr cQMediaDevices, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaDevices_event ".} =
  var nimfunc = cast[ptr QMediaDeviceseventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QMediaDeviceseventFilter*(self: gen_qmediadevices_types.QMediaDevices, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQMediaDevices_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaDeviceseventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDeviceseventFilterProc) =
  # TODO check subclass
  var tmp = new QMediaDeviceseventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_eventFilter(self: ptr cQMediaDevices, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaDevices_eventFilter ".} =
  var nimfunc = cast[ptr QMediaDeviceseventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QMediaDevicestimerEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QTimerEvent): void =
  fQMediaDevices_virtualbase_timerEvent(self.h, event.h)

type QMediaDevicestimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicestimerEventProc) =
  # TODO check subclass
  var tmp = new QMediaDevicestimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_timerEvent(self: ptr cQMediaDevices, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_timerEvent ".} =
  var nimfunc = cast[ptr QMediaDevicestimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QMediaDeviceschildEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QChildEvent): void =
  fQMediaDevices_virtualbase_childEvent(self.h, event.h)

type QMediaDeviceschildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDeviceschildEventProc) =
  # TODO check subclass
  var tmp = new QMediaDeviceschildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_childEvent(self: ptr cQMediaDevices, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_childEvent ".} =
  var nimfunc = cast[ptr QMediaDeviceschildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QMediaDevicescustomEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QEvent): void =
  fQMediaDevices_virtualbase_customEvent(self.h, event.h)

type QMediaDevicescustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicescustomEventProc) =
  # TODO check subclass
  var tmp = new QMediaDevicescustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_customEvent(self: ptr cQMediaDevices, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_customEvent ".} =
  var nimfunc = cast[ptr QMediaDevicescustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QMediaDevicesconnectNotify*(self: gen_qmediadevices_types.QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaDevices_virtualbase_connectNotify(self.h, signal.h)

type QMediaDevicesconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaDevicesconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_connectNotify(self: ptr cQMediaDevices, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_connectNotify ".} =
  var nimfunc = cast[ptr QMediaDevicesconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QMediaDevicesdisconnectNotify*(self: gen_qmediadevices_types.QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQMediaDevices_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaDevicesdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QMediaDevicesdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaDevices_disconnectNotify(self: ptr cQMediaDevices, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaDevices_disconnectNotify ".} =
  var nimfunc = cast[ptr QMediaDevicesdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qmediadevices_types.QMediaDevices): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaDevices_staticMetaObject())
proc delete*(self: gen_qmediadevices_types.QMediaDevices) =
  fcQMediaDevices_delete(self.h)
