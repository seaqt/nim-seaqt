import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qinputdevice.cpp", cflags).}


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

proc fcQInputDevice_metaObject(self: pointer, ): pointer {.importc: "QInputDevice_metaObject".}
proc fcQInputDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDevice_metacast".}
proc fcQInputDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDevice_metacall".}
proc fcQInputDevice_tr(s: cstring): struct_miqt_string {.importc: "QInputDevice_tr".}
proc fcQInputDevice_name(self: pointer, ): struct_miqt_string {.importc: "QInputDevice_name".}
proc fcQInputDevice_typeX(self: pointer, ): cint {.importc: "QInputDevice_type".}
proc fcQInputDevice_capabilities(self: pointer, ): cint {.importc: "QInputDevice_capabilities".}
proc fcQInputDevice_hasCapability(self: pointer, cap: cint): bool {.importc: "QInputDevice_hasCapability".}
proc fcQInputDevice_systemId(self: pointer, ): clonglong {.importc: "QInputDevice_systemId".}
proc fcQInputDevice_seatName(self: pointer, ): struct_miqt_string {.importc: "QInputDevice_seatName".}
proc fcQInputDevice_availableVirtualGeometry(self: pointer, ): pointer {.importc: "QInputDevice_availableVirtualGeometry".}
proc fcQInputDevice_seatNames(): struct_miqt_array {.importc: "QInputDevice_seatNames".}
proc fcQInputDevice_devices(): struct_miqt_array {.importc: "QInputDevice_devices".}
proc fcQInputDevice_primaryKeyboard(): pointer {.importc: "QInputDevice_primaryKeyboard".}
proc fcQInputDevice_operatorEqual(self: pointer, other: pointer): bool {.importc: "QInputDevice_operatorEqual".}
proc fcQInputDevice_availableVirtualGeometryChanged(self: pointer, area: pointer): void {.importc: "QInputDevice_availableVirtualGeometryChanged".}
proc fcQInputDevice_connect_availableVirtualGeometryChanged(self: pointer, slot: int, callback: proc (slot: int, area: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QInputDevice_connect_availableVirtualGeometryChanged".}
proc fcQInputDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputDevice_tr2".}
proc fcQInputDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputDevice_tr3".}
proc fcQInputDevice_primaryKeyboard1(seatName: struct_miqt_string): pointer {.importc: "QInputDevice_primaryKeyboard1".}
type cQInputDeviceVTable = object
  destructor*: proc(vtbl: ptr cQInputDeviceVTable, self: ptr cQInputDevice) {.cdecl, raises:[], gcsafe.}
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
proc fcQInputDevice_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QInputDevice_virtualbase_metaObject".}
proc fcQInputDevice_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QInputDevice_virtualbase_metacast".}
proc fcQInputDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QInputDevice_virtualbase_metacall".}
proc fcQInputDevice_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QInputDevice_virtualbase_event".}
proc fcQInputDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QInputDevice_virtualbase_eventFilter".}
proc fcQInputDevice_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QInputDevice_virtualbase_timerEvent".}
proc fcQInputDevice_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QInputDevice_virtualbase_childEvent".}
proc fcQInputDevice_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QInputDevice_virtualbase_customEvent".}
proc fcQInputDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QInputDevice_virtualbase_connectNotify".}
proc fcQInputDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QInputDevice_virtualbase_disconnectNotify".}
proc fcQInputDevice_new(vtbl: pointer, ): ptr cQInputDevice {.importc: "QInputDevice_new".}
proc fcQInputDevice_new2(vtbl: pointer, name: struct_miqt_string, systemId: clonglong, typeVal: cint): ptr cQInputDevice {.importc: "QInputDevice_new2".}
proc fcQInputDevice_new3(vtbl: pointer, parent: pointer): ptr cQInputDevice {.importc: "QInputDevice_new3".}
proc fcQInputDevice_new4(vtbl: pointer, name: struct_miqt_string, systemId: clonglong, typeVal: cint, seatName: struct_miqt_string): ptr cQInputDevice {.importc: "QInputDevice_new4".}
proc fcQInputDevice_new5(vtbl: pointer, name: struct_miqt_string, systemId: clonglong, typeVal: cint, seatName: struct_miqt_string, parent: pointer): ptr cQInputDevice {.importc: "QInputDevice_new5".}
proc fcQInputDevice_staticMetaObject(): pointer {.importc: "QInputDevice_staticMetaObject".}
proc fcQInputDevice_delete(self: pointer) {.importc: "QInputDevice_delete".}

proc metaObject*(self: gen_qinputdevice_types.QInputDevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDevice_metaObject(self.h))

proc metacast*(self: gen_qinputdevice_types.QInputDevice, param1: cstring): pointer =
  fcQInputDevice_metacast(self.h, param1)

proc metacall*(self: gen_qinputdevice_types.QInputDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qinputdevice_types.QInputDevice, s: cstring): string =
  let v_ms = fcQInputDevice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qinputdevice_types.QInputDevice, ): string =
  let v_ms = fcQInputDevice_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc typeX*(self: gen_qinputdevice_types.QInputDevice, ): cint =
  cint(fcQInputDevice_typeX(self.h))

proc capabilities*(self: gen_qinputdevice_types.QInputDevice, ): cint =
  cint(fcQInputDevice_capabilities(self.h))

proc hasCapability*(self: gen_qinputdevice_types.QInputDevice, cap: cint): bool =
  fcQInputDevice_hasCapability(self.h, cint(cap))

proc systemId*(self: gen_qinputdevice_types.QInputDevice, ): clonglong =
  fcQInputDevice_systemId(self.h)

proc seatName*(self: gen_qinputdevice_types.QInputDevice, ): string =
  let v_ms = fcQInputDevice_seatName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableVirtualGeometry*(self: gen_qinputdevice_types.QInputDevice, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQInputDevice_availableVirtualGeometry(self.h))

proc seatNames*(_: type gen_qinputdevice_types.QInputDevice, ): seq[string] =
  var v_ma = fcQInputDevice_seatNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc devices*(_: type gen_qinputdevice_types.QInputDevice, ): seq[gen_qinputdevice_types.QInputDevice] =
  var v_ma = fcQInputDevice_devices()
  var vx_ret = newSeq[gen_qinputdevice_types.QInputDevice](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qinputdevice_types.QInputDevice(h: v_outCast[i])
  vx_ret

proc primaryKeyboard*(_: type gen_qinputdevice_types.QInputDevice, ): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_primaryKeyboard())

proc operatorEqual*(self: gen_qinputdevice_types.QInputDevice, other: gen_qinputdevice_types.QInputDevice): bool =
  fcQInputDevice_operatorEqual(self.h, other.h)

proc availableVirtualGeometryChanged*(self: gen_qinputdevice_types.QInputDevice, area: gen_qrect_types.QRect): void =
  fcQInputDevice_availableVirtualGeometryChanged(self.h, area.h)

type QInputDeviceavailableVirtualGeometryChangedSlot* = proc(area: gen_qrect_types.QRect)
proc miqt_exec_callback_cQInputDevice_availableVirtualGeometryChanged(slot: int, area: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QInputDeviceavailableVirtualGeometryChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: area)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQInputDevice_availableVirtualGeometryChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QInputDeviceavailableVirtualGeometryChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onavailableVirtualGeometryChanged*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDeviceavailableVirtualGeometryChangedSlot) =
  var tmp = new QInputDeviceavailableVirtualGeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_connect_availableVirtualGeometryChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQInputDevice_availableVirtualGeometryChanged, miqt_exec_callback_cQInputDevice_availableVirtualGeometryChanged_release)

proc tr*(_: type gen_qinputdevice_types.QInputDevice, s: cstring, c: cstring): string =
  let v_ms = fcQInputDevice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qinputdevice_types.QInputDevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQInputDevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc primaryKeyboard*(_: type gen_qinputdevice_types.QInputDevice, seatName: string): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_primaryKeyboard1(struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))

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
type QInputDeviceVTable* = object
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
proc QInputDevicemetaObject*(self: gen_qinputdevice_types.QInputDevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDevice_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQInputDevice_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QInputDevicemetacast*(self: gen_qinputdevice_types.QInputDevice, param1: cstring): pointer =
  fcQInputDevice_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQInputDevice_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QInputDevicemetacall*(self: gen_qinputdevice_types.QInputDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQInputDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQInputDevice_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QInputDeviceevent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QEvent): bool =
  fcQInputDevice_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQInputDevice_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QInputDeviceeventFilter*(self: gen_qinputdevice_types.QInputDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQInputDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQInputDevice_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QInputDevicetimerEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQInputDevice_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDevice_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QInputDevicechildEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QChildEvent): void =
  fcQInputDevice_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDevice_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QInputDevicecustomEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QEvent): void =
  fcQInputDevice_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQInputDevice_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QInputDeviceconnectNotify*(self: gen_qinputdevice_types.QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQInputDevice_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQInputDevice_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QInputDevicedisconnectNotify*(self: gen_qinputdevice_types.QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQInputDevice_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQInputDevice_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QInputDeviceVTable](vtbl)
  let self = QInputDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputDeviceVTable, _: ptr cQInputDevice) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQInputDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQInputDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQInputDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQInputDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQInputDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQInputDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQInputDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQInputDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQInputDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQInputDevice_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new(addr(vtbl[]), ))

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: string, systemId: clonglong, typeVal: cint,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputDeviceVTable, _: ptr cQInputDevice) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQInputDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQInputDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQInputDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQInputDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQInputDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQInputDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQInputDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQInputDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQInputDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQInputDevice_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new2(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal)))

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    parent: gen_qobject_types.QObject,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputDeviceVTable, _: ptr cQInputDevice) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQInputDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQInputDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQInputDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQInputDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQInputDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQInputDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQInputDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQInputDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQInputDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQInputDevice_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: string, systemId: clonglong, typeVal: cint, seatName: string,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputDeviceVTable, _: ptr cQInputDevice) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQInputDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQInputDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQInputDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQInputDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQInputDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQInputDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQInputDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQInputDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQInputDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQInputDevice_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new4(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))

proc create*(T: type gen_qinputdevice_types.QInputDevice,
    name: string, systemId: clonglong, typeVal: cint, seatName: string, parent: gen_qobject_types.QObject,
    vtbl: ref QInputDeviceVTable = nil): gen_qinputdevice_types.QInputDevice =
  let vtbl = if vtbl == nil: new QInputDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQInputDeviceVTable, _: ptr cQInputDevice) {.cdecl.} =
    let vtbl = cast[ref QInputDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQInputDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQInputDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQInputDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQInputDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQInputDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQInputDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQInputDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQInputDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQInputDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQInputDevice_disconnectNotify
  gen_qinputdevice_types.QInputDevice(h: fcQInputDevice_new5(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: seatName, len: csize_t(len(seatName))), parent.h))

proc staticMetaObject*(_: type gen_qinputdevice_types.QInputDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDevice_staticMetaObject())
proc delete*(self: gen_qinputdevice_types.QInputDevice) =
  fcQInputDevice_delete(self.h)
