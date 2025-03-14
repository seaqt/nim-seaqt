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


{.compile("gen_qmediadevices.cpp", QtMultimediaCFlags).}


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

proc fcQMediaDevices_metaObject(self: pointer): pointer {.importc: "QMediaDevices_metaObject".}
proc fcQMediaDevices_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaDevices_metacast".}
proc fcQMediaDevices_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaDevices_metacall".}
proc fcQMediaDevices_tr(s: cstring): struct_miqt_string {.importc: "QMediaDevices_tr".}
proc fcQMediaDevices_audioInputs(): struct_miqt_array {.importc: "QMediaDevices_audioInputs".}
proc fcQMediaDevices_audioOutputs(): struct_miqt_array {.importc: "QMediaDevices_audioOutputs".}
proc fcQMediaDevices_videoInputs(): struct_miqt_array {.importc: "QMediaDevices_videoInputs".}
proc fcQMediaDevices_defaultAudioInput(): pointer {.importc: "QMediaDevices_defaultAudioInput".}
proc fcQMediaDevices_defaultAudioOutput(): pointer {.importc: "QMediaDevices_defaultAudioOutput".}
proc fcQMediaDevices_defaultVideoInput(): pointer {.importc: "QMediaDevices_defaultVideoInput".}
proc fcQMediaDevices_audioInputsChanged(self: pointer): void {.importc: "QMediaDevices_audioInputsChanged".}
proc fcQMediaDevices_connect_audioInputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaDevices_connect_audioInputsChanged".}
proc fcQMediaDevices_audioOutputsChanged(self: pointer): void {.importc: "QMediaDevices_audioOutputsChanged".}
proc fcQMediaDevices_connect_audioOutputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaDevices_connect_audioOutputsChanged".}
proc fcQMediaDevices_videoInputsChanged(self: pointer): void {.importc: "QMediaDevices_videoInputsChanged".}
proc fcQMediaDevices_connect_videoInputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaDevices_connect_videoInputsChanged".}
proc fcQMediaDevices_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaDevices_tr2".}
proc fcQMediaDevices_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaDevices_tr3".}
proc fcQMediaDevices_vtbl(self: pointer): pointer {.importc: "QMediaDevices_vtbl".}
proc fcQMediaDevices_vdata(self: pointer): pointer {.importc: "QMediaDevices_vdata".}
type cQMediaDevicesVTable {.pure.} = object
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
proc fcQMediaDevices_virtualbase_metaObject(self: pointer): pointer {.importc: "QMediaDevices_virtualbase_metaObject".}
proc fcQMediaDevices_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaDevices_virtualbase_metacast".}
proc fcQMediaDevices_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaDevices_virtualbase_metacall".}
proc fcQMediaDevices_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaDevices_virtualbase_event".}
proc fcQMediaDevices_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaDevices_virtualbase_eventFilter".}
proc fcQMediaDevices_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaDevices_virtualbase_timerEvent".}
proc fcQMediaDevices_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaDevices_virtualbase_childEvent".}
proc fcQMediaDevices_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaDevices_virtualbase_customEvent".}
proc fcQMediaDevices_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaDevices_virtualbase_connectNotify".}
proc fcQMediaDevices_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaDevices_virtualbase_disconnectNotify".}
proc fcQMediaDevices_protectedbase_sender(self: pointer): pointer {.importc: "QMediaDevices_protectedbase_sender".}
proc fcQMediaDevices_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QMediaDevices_protectedbase_senderSignalIndex".}
proc fcQMediaDevices_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QMediaDevices_protectedbase_receivers".}
proc fcQMediaDevices_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QMediaDevices_protectedbase_isSignalConnected".}
proc fcQMediaDevices_new(vtbl, vdata: pointer): ptr cQMediaDevices {.importc: "QMediaDevices_new".}
proc fcQMediaDevices_new2(vtbl, vdata: pointer, parent: pointer): ptr cQMediaDevices {.importc: "QMediaDevices_new2".}
proc fcQMediaDevices_staticMetaObject(): pointer {.importc: "QMediaDevices_staticMetaObject".}

proc metaObject*(self: gen_qmediadevices_types.QMediaDevices): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaDevices_metaObject(self.h), owned: false)

proc metacast*(self: gen_qmediadevices_types.QMediaDevices, param1: cstring): pointer =
  fcQMediaDevices_metacast(self.h, param1)

proc metacall*(self: gen_qmediadevices_types.QMediaDevices, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaDevices_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qmediadevices_types.QMediaDevices, s: cstring): string =
  let v_ms = fcQMediaDevices_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc audioInputs*(_: type gen_qmediadevices_types.QMediaDevices): seq[gen_qaudiodevice_types.QAudioDevice] =
  var v_ma = fcQMediaDevices_audioInputs()
  var vx_ret = newSeq[gen_qaudiodevice_types.QAudioDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudiodevice_types.QAudioDevice(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc audioOutputs*(_: type gen_qmediadevices_types.QMediaDevices): seq[gen_qaudiodevice_types.QAudioDevice] =
  var v_ma = fcQMediaDevices_audioOutputs()
  var vx_ret = newSeq[gen_qaudiodevice_types.QAudioDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qaudiodevice_types.QAudioDevice(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc videoInputs*(_: type gen_qmediadevices_types.QMediaDevices): seq[gen_qcameradevice_types.QCameraDevice] =
  var v_ma = fcQMediaDevices_videoInputs()
  var vx_ret = newSeq[gen_qcameradevice_types.QCameraDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qcameradevice_types.QCameraDevice(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc defaultAudioInput*(_: type gen_qmediadevices_types.QMediaDevices): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQMediaDevices_defaultAudioInput(), owned: true)

proc defaultAudioOutput*(_: type gen_qmediadevices_types.QMediaDevices): gen_qaudiodevice_types.QAudioDevice =
  gen_qaudiodevice_types.QAudioDevice(h: fcQMediaDevices_defaultAudioOutput(), owned: true)

proc defaultVideoInput*(_: type gen_qmediadevices_types.QMediaDevices): gen_qcameradevice_types.QCameraDevice =
  gen_qcameradevice_types.QCameraDevice(h: fcQMediaDevices_defaultVideoInput(), owned: true)

proc audioInputsChanged*(self: gen_qmediadevices_types.QMediaDevices): void =
  fcQMediaDevices_audioInputsChanged(self.h)

type QMediaDevicesaudioInputsChangedSlot* = proc()
proc cQMediaDevices_slot_callback_audioInputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaDevicesaudioInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaDevices_slot_callback_audioInputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaDevicesaudioInputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesaudioInputsChangedSlot) =
  var tmp = new QMediaDevicesaudioInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_audioInputsChanged(self.h, cast[int](addr tmp[]), cQMediaDevices_slot_callback_audioInputsChanged, cQMediaDevices_slot_callback_audioInputsChanged_release)

proc audioOutputsChanged*(self: gen_qmediadevices_types.QMediaDevices): void =
  fcQMediaDevices_audioOutputsChanged(self.h)

type QMediaDevicesaudioOutputsChangedSlot* = proc()
proc cQMediaDevices_slot_callback_audioOutputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaDevicesaudioOutputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaDevices_slot_callback_audioOutputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaDevicesaudioOutputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioOutputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesaudioOutputsChangedSlot) =
  var tmp = new QMediaDevicesaudioOutputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_audioOutputsChanged(self.h, cast[int](addr tmp[]), cQMediaDevices_slot_callback_audioOutputsChanged, cQMediaDevices_slot_callback_audioOutputsChanged_release)

proc videoInputsChanged*(self: gen_qmediadevices_types.QMediaDevices): void =
  fcQMediaDevices_videoInputsChanged(self.h)

type QMediaDevicesvideoInputsChangedSlot* = proc()
proc cQMediaDevices_slot_callback_videoInputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaDevicesvideoInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc cQMediaDevices_slot_callback_videoInputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaDevicesvideoInputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesvideoInputsChangedSlot) =
  var tmp = new QMediaDevicesvideoInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_videoInputsChanged(self.h, cast[int](addr tmp[]), cQMediaDevices_slot_callback_videoInputsChanged, cQMediaDevices_slot_callback_videoInputsChanged_release)

proc tr*(_: type gen_qmediadevices_types.QMediaDevices, s: cstring, c: cstring): string =
  let v_ms = fcQMediaDevices_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediadevices_types.QMediaDevices, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaDevices_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QMediaDevicesmetaObjectProc* = proc(self: QMediaDevices): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QMediaDevicesmetacastProc* = proc(self: QMediaDevices, param1: cstring): pointer {.raises: [], gcsafe.}
type QMediaDevicesmetacallProc* = proc(self: QMediaDevices, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QMediaDeviceseventProc* = proc(self: QMediaDevices, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaDeviceseventFilterProc* = proc(self: QMediaDevices, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QMediaDevicestimerEventProc* = proc(self: QMediaDevices, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QMediaDeviceschildEventProc* = proc(self: QMediaDevices, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QMediaDevicescustomEventProc* = proc(self: QMediaDevices, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QMediaDevicesconnectNotifyProc* = proc(self: QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaDevicesdisconnectNotifyProc* = proc(self: QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QMediaDevicesVTable* {.inheritable, pure.} = object
  vtbl: cQMediaDevicesVTable
  metaObject*: QMediaDevicesmetaObjectProc
  metacast*: QMediaDevicesmetacastProc
  metacall*: QMediaDevicesmetacallProc
  event*: QMediaDeviceseventProc
  eventFilter*: QMediaDeviceseventFilterProc
  timerEvent*: QMediaDevicestimerEventProc
  childEvent*: QMediaDeviceschildEventProc
  customEvent*: QMediaDevicescustomEventProc
  connectNotify*: QMediaDevicesconnectNotifyProc
  disconnectNotify*: QMediaDevicesdisconnectNotifyProc
proc QMediaDevicesmetaObject*(self: gen_qmediadevices_types.QMediaDevices): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaDevices_virtualbase_metaObject(self.h), owned: false)

proc cQMediaDevices_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QMediaDevicesmetacast*(self: gen_qmediadevices_types.QMediaDevices, param1: cstring): pointer =
  fcQMediaDevices_virtualbase_metacast(self.h, param1)

proc cQMediaDevices_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMediaDevicesmetacall*(self: gen_qmediadevices_types.QMediaDevices, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaDevices_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQMediaDevices_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMediaDevicesevent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaDevices_virtualbase_event(self.h, event.h)

proc cQMediaDevices_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMediaDeviceseventFilter*(self: gen_qmediadevices_types.QMediaDevices, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaDevices_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQMediaDevices_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMediaDevicestimerEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaDevices_virtualbase_timerEvent(self.h, event.h)

proc cQMediaDevices_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QMediaDeviceschildEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaDevices_virtualbase_childEvent(self.h, event.h)

proc cQMediaDevices_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QMediaDevicescustomEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaDevices_virtualbase_customEvent(self.h, event.h)

proc cQMediaDevices_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QMediaDevicesconnectNotify*(self: gen_qmediadevices_types.QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaDevices_virtualbase_connectNotify(self.h, signal.h)

proc cQMediaDevices_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QMediaDevicesdisconnectNotify*(self: gen_qmediadevices_types.QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaDevices_virtualbase_disconnectNotify(self.h, signal.h)

proc cQMediaDevices_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](fcQMediaDevices_vdata(self))
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQMediaDevices* {.inheritable.} = ref object of QMediaDevices
  vtbl*: cQMediaDevicesVTable
method metaObject*(self: VirtualQMediaDevices): gen_qobjectdefs_types.QMetaObject {.base.} =
  QMediaDevicesmetaObject(self[])
proc cQMediaDevices_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQMediaDevices, param1: cstring): pointer {.base.} =
  QMediaDevicesmetacast(self[], param1)
proc cQMediaDevices_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQMediaDevices, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QMediaDevicesmetacall(self[], param1, param2, param3)
proc cQMediaDevices_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method event*(self: VirtualQMediaDevices, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaDevicesevent(self[], event)
proc cQMediaDevices_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQMediaDevices, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QMediaDeviceseventFilter(self[], watched, event)
proc cQMediaDevices_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQMediaDevices, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QMediaDevicestimerEvent(self[], event)
proc cQMediaDevices_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method childEvent*(self: VirtualQMediaDevices, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QMediaDeviceschildEvent(self[], event)
proc cQMediaDevices_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

method customEvent*(self: VirtualQMediaDevices, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QMediaDevicescustomEvent(self[], event)
proc cQMediaDevices_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaDevicesconnectNotify(self[], signal)
proc cQMediaDevices_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QMediaDevicesdisconnectNotify(self[], signal)
proc cQMediaDevices_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQMediaDevices](fcQMediaDevices_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

proc sender*(self: gen_qmediadevices_types.QMediaDevices): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQMediaDevices_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qmediadevices_types.QMediaDevices): cint =
  fcQMediaDevices_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qmediadevices_types.QMediaDevices, signal: cstring): cint =
  fcQMediaDevices_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qmediadevices_types.QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQMediaDevices_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qmediadevices_types.QMediaDevices,
    vtbl: ref QMediaDevicesVTable = nil): gen_qmediadevices_types.QMediaDevices =
  let vtbl = if vtbl == nil: new QMediaDevicesVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaDevicesVTable](fcQMediaDevices_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMediaDevices_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMediaDevices_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMediaDevices_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMediaDevices_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMediaDevices_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMediaDevices_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMediaDevices_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMediaDevices_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMediaDevices_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMediaDevices_vtable_callback_disconnectNotify
  gen_qmediadevices_types.QMediaDevices(h: fcQMediaDevices_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qmediadevices_types.QMediaDevices,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMediaDevicesVTable = nil): gen_qmediadevices_types.QMediaDevices =
  let vtbl = if vtbl == nil: new QMediaDevicesVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QMediaDevicesVTable](fcQMediaDevices_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQMediaDevices_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQMediaDevices_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQMediaDevices_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQMediaDevices_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQMediaDevices_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQMediaDevices_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQMediaDevices_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQMediaDevices_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQMediaDevices_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQMediaDevices_vtable_callback_disconnectNotify
  gen_qmediadevices_types.QMediaDevices(h: fcQMediaDevices_new2(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

const cQMediaDevices_mvtbl = cQMediaDevicesVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQMediaDevices()[])](self.fcQMediaDevices_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQMediaDevices_method_callback_metaObject,
  metacast: cQMediaDevices_method_callback_metacast,
  metacall: cQMediaDevices_method_callback_metacall,
  event: cQMediaDevices_method_callback_event,
  eventFilter: cQMediaDevices_method_callback_eventFilter,
  timerEvent: cQMediaDevices_method_callback_timerEvent,
  childEvent: cQMediaDevices_method_callback_childEvent,
  customEvent: cQMediaDevices_method_callback_customEvent,
  connectNotify: cQMediaDevices_method_callback_connectNotify,
  disconnectNotify: cQMediaDevices_method_callback_disconnectNotify,
)
proc create*(T: type gen_qmediadevices_types.QMediaDevices,
    inst: VirtualQMediaDevices) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaDevices_new(addr(cQMediaDevices_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qmediadevices_types.QMediaDevices,
    parent: gen_qobject_types.QObject,
    inst: VirtualQMediaDevices) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQMediaDevices_new2(addr(cQMediaDevices_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qmediadevices_types.QMediaDevices): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaDevices_staticMetaObject())
