import ./qtgui_pkg

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


{.compile("gen_qinputdevice.cpp", QtGuiCFlags).}


type QInputDeviceDeviceTypeEnum* = distinct cint
template Unknown*(_: type QInputDeviceDeviceTypeEnum): untyped = 0
template Mouse*(_: type QInputDeviceDeviceTypeEnum): untyped = 1
template TouchScreen*(_: type QInputDeviceDeviceTypeEnum): untyped = 2
template TouchPad*(_: type QInputDeviceDeviceTypeEnum): untyped = 4
template Puck*(_: type QInputDeviceDeviceTypeEnum): untyped = 8
template Stylus*(_: type QInputDeviceDeviceTypeEnum): untyped = 16
template Airbrush*(_: type QInputDeviceDeviceTypeEnum): untyped = 32
template Keyboard*(_: type QInputDeviceDeviceTypeEnum): untyped = 4096
template AllDevices*(_: type QInputDeviceDeviceTypeEnum): untyped = 2147483647


type QInputDeviceCapabilityEnum* = distinct cint
template None*(_: type QInputDeviceCapabilityEnum): untyped = 0
template Position*(_: type QInputDeviceCapabilityEnum): untyped = 1
template Area*(_: type QInputDeviceCapabilityEnum): untyped = 2
template Pressure*(_: type QInputDeviceCapabilityEnum): untyped = 4
template Velocity*(_: type QInputDeviceCapabilityEnum): untyped = 8
template NormalizedPosition*(_: type QInputDeviceCapabilityEnum): untyped = 32
template MouseEmulation*(_: type QInputDeviceCapabilityEnum): untyped = 64
template PixelScroll*(_: type QInputDeviceCapabilityEnum): untyped = 128
template Scroll*(_: type QInputDeviceCapabilityEnum): untyped = 256
template Hover*(_: type QInputDeviceCapabilityEnum): untyped = 512
template Rotation*(_: type QInputDeviceCapabilityEnum): untyped = 1024
template XTilt*(_: type QInputDeviceCapabilityEnum): untyped = 2048
template YTilt*(_: type QInputDeviceCapabilityEnum): untyped = 4096
template TangentialPressure*(_: type QInputDeviceCapabilityEnum): untyped = 8192
template ZPosition*(_: type QInputDeviceCapabilityEnum): untyped = 16384
template All*(_: type QInputDeviceCapabilityEnum): untyped = 2147483647


import ./gen_qinputdevice_types
export gen_qinputdevice_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qrect_types

type cQInputDevice*{.exportc: "QInputDevice", incompleteStruct.} = object

proc fcQInputDevice_metaObject(self: pointer): pointer {.importc: "QInputDevice_metaObject".}
proc fcQInputDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDevice_metacast".}
proc fcQInputDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDevice_metacall".}
proc fcQInputDevice_tr(s: cstring): struct_miqt_string {.importc: "QInputDevice_tr".}
proc fcQInputDevice_name(self: pointer): struct_miqt_string {.importc: "QInputDevice_name".}
proc fcQInputDevice_typeX(self: pointer): cint {.importc: "QInputDevice_type".}
proc fcQInputDevice_capabilities(self: pointer): cint {.importc: "QInputDevice_capabilities".}
proc fcQInputDevice_hasCapability(self: pointer, cap: cint): bool {.importc: "QInputDevice_hasCapability".}
proc fcQInputDevice_systemId(self: pointer): clonglong {.importc: "QInputDevice_systemId".}
proc fcQInputDevice_seatName(self: pointer): struct_miqt_string {.importc: "QInputDevice_seatName".}
proc fcQInputDevice_availableVirtualGeometry(self: pointer): pointer {.importc: "QInputDevice_availableVirtualGeometry".}
proc fcQInputDevice_seatNames(): struct_miqt_array {.importc: "QInputDevice_seatNames".}
proc fcQInputDevice_devices(): struct_miqt_array {.importc: "QInputDevice_devices".}
proc fcQInputDevice_primaryKeyboard(): pointer {.importc: "QInputDevice_primaryKeyboard".}
proc fcQInputDevice_operatorEqual(self: pointer, other: pointer): bool {.importc: "QInputDevice_operatorEqual".}
proc fcQInputDevice_availableVirtualGeometryChanged(self: pointer, area: pointer): void {.importc: "QInputDevice_availableVirtualGeometryChanged".}
proc fcQInputDevice_connect_availableVirtualGeometryChanged(self: pointer, slot: int, callback: proc (slot: int, area: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QInputDevice_connect_availableVirtualGeometryChanged".}
proc fcQInputDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputDevice_tr2".}
proc fcQInputDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputDevice_tr3".}
proc fcQInputDevice_primaryKeyboard1(seatName: struct_miqt_string): pointer {.importc: "QInputDevice_primaryKeyboard1".}
proc fcQInputDevice_vtbl(self: pointer): pointer {.importc: "QInputDevice_vtbl".}
proc fcQInputDevice_vdata(self: pointer): pointer {.importc: "QInputDevice_vdata".}

type cQInputDeviceVTable {.pure.} = object
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
proc fcQInputDevice_virtualbase_metaObject(self: pointer): pointer {.importc: "QInputDevice_virtualbase_metaObject".}
proc fcQInputDevice_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDevice_virtualbase_metacast".}
proc fcQInputDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDevice_virtualbase_metacall".}
proc fcQInputDevice_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QInputDevice_virtualbase_event".}
proc fcQInputDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QInputDevice_virtualbase_eventFilter".}
proc fcQInputDevice_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QInputDevice_virtualbase_timerEvent".}
proc fcQInputDevice_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QInputDevice_virtualbase_childEvent".}
proc fcQInputDevice_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QInputDevice_virtualbase_customEvent".}
proc fcQInputDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QInputDevice_virtualbase_connectNotify".}
proc fcQInputDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QInputDevice_virtualbase_disconnectNotify".}
proc fcQInputDevice_protectedbase_sender(self: pointer): pointer {.importc: "QInputDevice_protectedbase_sender".}
proc fcQInputDevice_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QInputDevice_protectedbase_senderSignalIndex".}
proc fcQInputDevice_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QInputDevice_protectedbase_receivers".}
proc fcQInputDevice_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QInputDevice_protectedbase_isSignalConnected".}
proc fcQInputDevice_new(vtbl, vdata: pointer): ptr cQInputDevice {.importc: "QInputDevice_new".}
proc fcQInputDevice_new2(vtbl, vdata: pointer, name: struct_miqt_string, systemId: clonglong, typeVal: cint): ptr cQInputDevice {.importc: "QInputDevice_new2".}
proc fcQInputDevice_new3(vtbl, vdata: pointer, parent: pointer): ptr cQInputDevice {.importc: "QInputDevice_new3".}
proc fcQInputDevice_new4(vtbl, vdata: pointer, name: struct_miqt_string, systemId: clonglong, typeVal: cint, seatName: struct_miqt_string): ptr cQInputDevice {.importc: "QInputDevice_new4".}
proc fcQInputDevice_new5(vtbl, vdata: pointer, name: struct_miqt_string, systemId: clonglong, typeVal: cint, seatName: struct_miqt_string, parent: pointer): ptr cQInputDevice {.importc: "QInputDevice_new5".}
proc fcQInputDevice_staticMetaObject(): pointer {.importc: "QInputDevice_staticMetaObject".}

proc metaObject*(self: gen_qinputdevice_types.QInputDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDevice_metaObject(self.h), owned: false)

proc metacast*(self: gen_qinputdevice_types.QInputDevice, param1: cstring): pointer =
  fcQInputDevice_metacast(self.h, param1)

proc metacall*(self: gen_qinputdevice_types.QInputDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qinputdevice_types.QInputDevice, s: cstring): string =
  let v_ms = fcQInputDevice_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qinputdevice_types.QInputDevice): string =
  let v_ms = fcQInputDevice_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc typeX*(self: gen_qinputdevice_types.QInputDevice): cint =
  cint(fcQInputDevice_typeX(self.h))

proc capabilities*(self: gen_qinputdevice_types.QInputDevice): cint =
  cint(fcQInputDevice_capabilities(self.h))

proc hasCapability*(self: gen_qinputdevice_types.QInputDevice, cap: cint): bool =
  fcQInputDevice_hasCapability(self.h, cint(cap))

proc systemId*(self: gen_qinputdevice_types.QInputDevice): clonglong =
  fcQInputDevice_systemId(self.h)

proc seatName*(self: gen_qinputdevice_types.QInputDevice): string =
  let v_ms = fcQInputDevice_seatName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc availableVirtualGeometry*(self: gen_qinputdevice_types.QInputDevice): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQInputDevice_availableVirtualGeometry(self.h), owned: true)

proc seatNames*(_: type gen_qinputdevice_types.QInputDevice): seq[string] =
  var v_ma = fcQInputDevice_seatNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc devices*(_: type gen_qinputdevice_types.QInputDevice): seq[gen_qinputdevice_types.QInputDevice] =
  var v_ma = fcQInputDevice_devices()
  var vx_ret = newSeq[gen_qinputdevice_types.QInputDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qinputdevice_types.QInputDevice(h: v_outCast[i], owned: false)
  c_free(v_ma.data)
  vx_ret

proc primaryKeyboard*(_: type gen_qinputdevice_types.QInputDevice): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_primaryKeyboard(), owned: false)

proc operatorEqual*(self: gen_qinputdevice_types.QInputDevice, other: gen_qinputdevice_types.QInputDevice): bool =
  fcQInputDevice_operatorEqual(self.h, other.h)

proc availableVirtualGeometryChanged*(self: gen_qinputdevice_types.QInputDevice, area: gen_qrect_types.QRect): void =
  fcQInputDevice_availableVirtualGeometryChanged(self.h, area.h)

type QInputDeviceavailableVirtualGeometryChangedSlot* = proc(area: gen_qrect_types.QRect)
proc fcQInputDevice_slot_callback_availableVirtualGeometryChanged(slot: int, area: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QInputDeviceavailableVirtualGeometryChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: area, owned: true)

  nimfunc[](slotval1)

proc fcQInputDevice_slot_callback_availableVirtualGeometryChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDeviceavailableVirtualGeometryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onAvailableVirtualGeometryChanged*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDeviceavailableVirtualGeometryChangedSlot) =
  var tmp = new QInputDeviceavailableVirtualGeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_connect_availableVirtualGeometryChanged(self.h, cast[int](addr tmp[]), fcQInputDevice_slot_callback_availableVirtualGeometryChanged, fcQInputDevice_slot_callback_availableVirtualGeometryChanged_release)

proc tr*(_: type gen_qinputdevice_types.QInputDevice, s: cstring, c: cstring): string =
  let v_ms = fcQInputDevice_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qinputdevice_types.QInputDevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQInputDevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc primaryKeyboard*(_: type gen_qinputdevice_types.QInputDevice, seatName: openArray[char]): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_primaryKeyboard1(struct_miqt_string(data: if len(seatName) > 0: addr seatName[0] else: nil, len: csize_t(len(seatName)))), owned: false)

type QInputDevicemetaObjectProc* = proc(self: QInputDevice): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QInputDevicemetacastProc* = proc(self: QInputDevice, param1: cstring): pointer {.raises: [], gcsafe.}
type QInputDevicemetacallProc* = proc(self: QInputDevice, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QInputDeviceeventProc* = proc(self: QInputDevice, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QInputDeviceeventFilterProc* = proc(self: QInputDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QInputDevicetimerEventProc* = proc(self: QInputDevice, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QInputDevicechildEventProc* = proc(self: QInputDevice, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QInputDevicecustomEventProc* = proc(self: QInputDevice, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QInputDeviceconnectNotifyProc* = proc(self: QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QInputDevicedisconnectNotifyProc* = proc(self: QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}

type QInputDeviceVTable* {.inheritable, pure.} = object
  vtbl: cQInputDeviceVTable
  metaObject*: QInputDevicemetaObjectProc
  metacast*: QInputDevicemetacastProc
  metacall*: QInputDevicemetacallProc
  event*: QInputDeviceeventProc
  eventFilter*: QInputDeviceeventFilterProc
  timerEvent*: QInputDevicetimerEventProc
  childEvent*: QInputDevicechildEventProc
  customEvent*: QInputDevicecustomEventProc
  connectNotify*: QInputDeviceconnectNotifyProc
  disconnectNotify*: QInputDevicedisconnectNotifyProc

proc QInputDevicemetaObject*(self: gen_qinputdevice_types.QInputDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDevice_virtualbase_metaObject(self.h), owned: false)

proc QInputDevicemetacast*(self: gen_qinputdevice_types.QInputDevice, param1: cstring): pointer =
  fcQInputDevice_virtualbase_metacast(self.h, param1)

proc QInputDevicemetacall*(self: gen_qinputdevice_types.QInputDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc QInputDeviceevent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QEvent): bool =
  fcQInputDevice_virtualbase_event(self.h, event.h)

proc QInputDeviceeventFilter*(self: gen_qinputdevice_types.QInputDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQInputDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

proc QInputDevicetimerEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQInputDevice_virtualbase_timerEvent(self.h, event.h)

proc QInputDevicechildEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QChildEvent): void =
  fcQInputDevice_virtualbase_childEvent(self.h, event.h)

proc QInputDevicecustomEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QEvent): void =
  fcQInputDevice_virtualbase_customEvent(self.h, event.h)

proc QInputDeviceconnectNotify*(self: gen_qinputdevice_types.QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQInputDevice_virtualbase_connectNotify(self.h, signal.h)

proc QInputDevicedisconnectNotify*(self: gen_qinputdevice_types.QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQInputDevice_virtualbase_disconnectNotify(self.h, signal.h)


proc fcQInputDevice_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQInputDevice_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc fcQInputDevice_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc fcQInputDevice_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc fcQInputDevice_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc fcQInputDevice_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc fcQInputDevice_vtable_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  vtbl[].childEvent(self, slotval1)

proc fcQInputDevice_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc fcQInputDevice_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc fcQInputDevice_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](fcQInputDevice_vdata(self))
  let self = QInputDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

type VirtualQInputDevice* {.inheritable.} = ref object of QInputDevice
  vtbl*: cQInputDeviceVTable

method metaObject*(self: VirtualQInputDevice): gen_qobjectdefs_types.QMetaObject {.base.} =
  QInputDevicemetaObject(self[])
method metacast*(self: VirtualQInputDevice, param1: cstring): pointer {.base.} =
  QInputDevicemetacast(self[], param1)
method metacall*(self: VirtualQInputDevice, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QInputDevicemetacall(self[], param1, param2, param3)
method event*(self: VirtualQInputDevice, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QInputDeviceevent(self[], event)
method eventFilter*(self: VirtualQInputDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QInputDeviceeventFilter(self[], watched, event)
method timerEvent*(self: VirtualQInputDevice, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QInputDevicetimerEvent(self[], event)
method childEvent*(self: VirtualQInputDevice, event: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QInputDevicechildEvent(self[], event)
method customEvent*(self: VirtualQInputDevice, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QInputDevicecustomEvent(self[], event)
method connectNotify*(self: VirtualQInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QInputDeviceconnectNotify(self[], signal)
method disconnectNotify*(self: VirtualQInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QInputDevicedisconnectNotify(self[], signal)

proc fcQInputDevice_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQInputDevice_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

proc fcQInputDevice_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

proc fcQInputDevice_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

proc fcQInputDevice_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

proc fcQInputDevice_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

proc fcQInputDevice_method_callback_childEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event, owned: false)
  inst.childEvent(slotval1)

proc fcQInputDevice_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

proc fcQInputDevice_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

proc fcQInputDevice_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQInputDevice](fcQInputDevice_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)


proc sender*(self: gen_qinputdevice_types.QInputDevice): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQInputDevice_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qinputdevice_types.QInputDevice): cint =
  fcQInputDevice_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qinputdevice_types.QInputDevice, signal: cstring): cint =
  fcQInputDevice_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qinputdevice_types.QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQInputDevice_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](fcQInputDevice_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQInputDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQInputDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQInputDevice_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQInputDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQInputDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQInputDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQInputDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQInputDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQInputDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQInputDevice_vtable_callback_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: openArray[char], systemId: clonglong, typeVal: cint,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](fcQInputDevice_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQInputDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQInputDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQInputDevice_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQInputDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQInputDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQInputDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQInputDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQInputDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQInputDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQInputDevice_vtable_callback_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new2(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), systemId, cint(typeVal)), owned: true)

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    parent: gen_qobject_types.QObject,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](fcQInputDevice_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQInputDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQInputDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQInputDevice_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQInputDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQInputDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQInputDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQInputDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQInputDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQInputDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQInputDevice_vtable_callback_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new3(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: openArray[char], systemId: clonglong, typeVal: cint, seatName: openArray[char],
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](fcQInputDevice_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQInputDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQInputDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQInputDevice_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQInputDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQInputDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQInputDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQInputDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQInputDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQInputDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQInputDevice_vtable_callback_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new4(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: if len(seatName) > 0: addr seatName[0] else: nil, len: csize_t(len(seatName)))), owned: true)

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: openArray[char], systemId: clonglong, typeVal: cint, seatName: openArray[char], parent: gen_qobject_types.QObject,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](fcQInputDevice_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = fcQInputDevice_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = fcQInputDevice_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = fcQInputDevice_vtable_callback_metacall
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = fcQInputDevice_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = fcQInputDevice_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = fcQInputDevice_vtable_callback_timerEvent
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = fcQInputDevice_vtable_callback_childEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = fcQInputDevice_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = fcQInputDevice_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = fcQInputDevice_vtable_callback_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new5(addr(vtbl[].vtbl), addr(vtbl[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: if len(seatName) > 0: addr seatName[0] else: nil, len: csize_t(len(seatName))), parent.h), owned: true)

const cQInputDevice_mvtbl = cQInputDeviceVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQInputDevice()[])](self.fcQInputDevice_vtbl())
    inst[].h = nil
    inst[].owned = false,

  metaObject: fcQInputDevice_method_callback_metaObject,
  metacast: fcQInputDevice_method_callback_metacast,
  metacall: fcQInputDevice_method_callback_metacall,
  event: fcQInputDevice_method_callback_event,
  eventFilter: fcQInputDevice_method_callback_eventFilter,
  timerEvent: fcQInputDevice_method_callback_timerEvent,
  childEvent: fcQInputDevice_method_callback_childEvent,
  customEvent: fcQInputDevice_method_callback_customEvent,
  connectNotify: fcQInputDevice_method_callback_connectNotify,
  disconnectNotify: fcQInputDevice_method_callback_disconnectNotify,
)
proc create*(T: type gen_qinputdevice_types.QInputDevice,
    inst: VirtualQInputDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputDevice_new(addr(cQInputDevice_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: openArray[char], systemId: clonglong, typeVal: cint,
    inst: VirtualQInputDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputDevice_new2(addr(cQInputDevice_mvtbl), addr(inst[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), systemId, cint(typeVal))
  inst[].owned = true

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    parent: gen_qobject_types.QObject,
    inst: VirtualQInputDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputDevice_new3(addr(cQInputDevice_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: openArray[char], systemId: clonglong, typeVal: cint, seatName: openArray[char],
    inst: VirtualQInputDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputDevice_new4(addr(cQInputDevice_mvtbl), addr(inst[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: if len(seatName) > 0: addr seatName[0] else: nil, len: csize_t(len(seatName))))
  inst[].owned = true

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: openArray[char], systemId: clonglong, typeVal: cint, seatName: openArray[char], parent: gen_qobject_types.QObject,
    inst: VirtualQInputDevice) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQInputDevice_new5(addr(cQInputDevice_mvtbl), addr(inst[]), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: if len(seatName) > 0: addr seatName[0] else: nil, len: csize_t(len(seatName))), parent.h)
  inst[].owned = true

proc staticMetaObject*(_: type gen_qinputdevice_types.QInputDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDevice_staticMetaObject())
