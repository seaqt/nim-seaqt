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
proc fcQMediaDevices_connect_audioInputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaDevices_connect_audioInputsChanged".}
proc fcQMediaDevices_audioOutputsChanged(self: pointer, ): void {.importc: "QMediaDevices_audioOutputsChanged".}
proc fcQMediaDevices_connect_audioOutputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaDevices_connect_audioOutputsChanged".}
proc fcQMediaDevices_videoInputsChanged(self: pointer, ): void {.importc: "QMediaDevices_videoInputsChanged".}
proc fcQMediaDevices_connect_videoInputsChanged(self: pointer, slot: int, callback: proc (slot: int) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QMediaDevices_connect_videoInputsChanged".}
proc fcQMediaDevices_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaDevices_tr2".}
proc fcQMediaDevices_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaDevices_tr3".}
type cQMediaDevicesVTable = object
  destructor*: proc(vtbl: ptr cQMediaDevicesVTable, self: ptr cQMediaDevices) {.cdecl, raises:[], gcsafe.}
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
proc fcQMediaDevices_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QMediaDevices_virtualbase_metaObject".}
proc fcQMediaDevices_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaDevices_virtualbase_metacast".}
proc fcQMediaDevices_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaDevices_virtualbase_metacall".}
proc fcQMediaDevices_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QMediaDevices_virtualbase_event".}
proc fcQMediaDevices_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QMediaDevices_virtualbase_eventFilter".}
proc fcQMediaDevices_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QMediaDevices_virtualbase_timerEvent".}
proc fcQMediaDevices_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QMediaDevices_virtualbase_childEvent".}
proc fcQMediaDevices_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QMediaDevices_virtualbase_customEvent".}
proc fcQMediaDevices_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QMediaDevices_virtualbase_connectNotify".}
proc fcQMediaDevices_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QMediaDevices_virtualbase_disconnectNotify".}
proc fcQMediaDevices_new(vtbl: pointer, ): ptr cQMediaDevices {.importc: "QMediaDevices_new".}
proc fcQMediaDevices_new2(vtbl: pointer, parent: pointer): ptr cQMediaDevices {.importc: "QMediaDevices_new2".}
proc fcQMediaDevices_staticMetaObject(): pointer {.importc: "QMediaDevices_staticMetaObject".}
proc fcQMediaDevices_delete(self: pointer) {.importc: "QMediaDevices_delete".}

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
proc miqt_exec_callback_cQMediaDevices_audioInputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaDevicesaudioInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaDevices_audioInputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaDevicesaudioInputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesaudioInputsChangedSlot) =
  var tmp = new QMediaDevicesaudioInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_audioInputsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaDevices_audioInputsChanged, miqt_exec_callback_cQMediaDevices_audioInputsChanged_release)

proc audioOutputsChanged*(self: gen_qmediadevices_types.QMediaDevices, ): void =
  fcQMediaDevices_audioOutputsChanged(self.h)

type QMediaDevicesaudioOutputsChangedSlot* = proc()
proc miqt_exec_callback_cQMediaDevices_audioOutputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaDevicesaudioOutputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaDevices_audioOutputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaDevicesaudioOutputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onaudioOutputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesaudioOutputsChangedSlot) =
  var tmp = new QMediaDevicesaudioOutputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_audioOutputsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaDevices_audioOutputsChanged, miqt_exec_callback_cQMediaDevices_audioOutputsChanged_release)

proc videoInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, ): void =
  fcQMediaDevices_videoInputsChanged(self.h)

type QMediaDevicesvideoInputsChangedSlot* = proc()
proc miqt_exec_callback_cQMediaDevices_videoInputsChanged(slot: int) {.cdecl.} =
  let nimfunc = cast[ptr QMediaDevicesvideoInputsChangedSlot](cast[pointer](slot))
  nimfunc[]()

proc miqt_exec_callback_cQMediaDevices_videoInputsChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QMediaDevicesvideoInputsChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onvideoInputsChanged*(self: gen_qmediadevices_types.QMediaDevices, slot: QMediaDevicesvideoInputsChangedSlot) =
  var tmp = new QMediaDevicesvideoInputsChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaDevices_connect_videoInputsChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQMediaDevices_videoInputsChanged, miqt_exec_callback_cQMediaDevices_videoInputsChanged_release)

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
type QMediaDevicesVTable* = object
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
proc QMediaDevicesmetaObject*(self: gen_qmediadevices_types.QMediaDevices, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaDevices_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQMediaDevices_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QMediaDevicesmetacast*(self: gen_qmediadevices_types.QMediaDevices, param1: cstring): pointer =
  fcQMediaDevices_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQMediaDevices_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QMediaDevicesmetacall*(self: gen_qmediadevices_types.QMediaDevices, param1: cint, param2: cint, param3: pointer): cint =
  fcQMediaDevices_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQMediaDevices_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QMediaDevicesevent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaDevices_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQMediaDevices_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QMediaDeviceseventFilter*(self: gen_qmediadevices_types.QMediaDevices, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQMediaDevices_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQMediaDevices_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QMediaDevicestimerEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQMediaDevices_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaDevices_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QMediaDeviceschildEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QChildEvent): void =
  fcQMediaDevices_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaDevices_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QMediaDevicescustomEvent*(self: gen_qmediadevices_types.QMediaDevices, event: gen_qcoreevent_types.QEvent): void =
  fcQMediaDevices_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQMediaDevices_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QMediaDevicesconnectNotify*(self: gen_qmediadevices_types.QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaDevices_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMediaDevices_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QMediaDevicesdisconnectNotify*(self: gen_qmediadevices_types.QMediaDevices, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQMediaDevices_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQMediaDevices_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QMediaDevicesVTable](vtbl)
  let self = QMediaDevices(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qmediadevices_types.QMediaDevices,
    vtbl: ref QMediaDevicesVTable = nil): gen_qmediadevices_types.QMediaDevices =
  let vtbl = if vtbl == nil: new QMediaDevicesVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMediaDevicesVTable, _: ptr cQMediaDevices) {.cdecl.} =
    let vtbl = cast[ref QMediaDevicesVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMediaDevices_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMediaDevices_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMediaDevices_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMediaDevices_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMediaDevices_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMediaDevices_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMediaDevices_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMediaDevices_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMediaDevices_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMediaDevices_disconnectNotify
  gen_qmediadevices_types.QMediaDevices(h: fcQMediaDevices_new(addr(vtbl[]), ))

proc create*(T: type gen_qmediadevices_types.QMediaDevices,
    parent: gen_qobject_types.QObject,
    vtbl: ref QMediaDevicesVTable = nil): gen_qmediadevices_types.QMediaDevices =
  let vtbl = if vtbl == nil: new QMediaDevicesVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQMediaDevicesVTable, _: ptr cQMediaDevices) {.cdecl.} =
    let vtbl = cast[ref QMediaDevicesVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQMediaDevices_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQMediaDevices_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQMediaDevices_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQMediaDevices_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQMediaDevices_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQMediaDevices_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQMediaDevices_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQMediaDevices_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQMediaDevices_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQMediaDevices_disconnectNotify
  gen_qmediadevices_types.QMediaDevices(h: fcQMediaDevices_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qmediadevices_types.QMediaDevices): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaDevices_staticMetaObject())
proc delete*(self: gen_qmediadevices_types.QMediaDevices) =
  fcQMediaDevices_delete(self.h)
