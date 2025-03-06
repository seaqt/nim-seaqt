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

proc fcQInputDevice_new(): ptr cQInputDevice {.importc: "QInputDevice_new".}
proc fcQInputDevice_new2(name: struct_miqt_string, systemId: clonglong, typeVal: cint): ptr cQInputDevice {.importc: "QInputDevice_new2".}
proc fcQInputDevice_new3(parent: pointer): ptr cQInputDevice {.importc: "QInputDevice_new3".}
proc fcQInputDevice_new4(name: struct_miqt_string, systemId: clonglong, typeVal: cint, seatName: struct_miqt_string): ptr cQInputDevice {.importc: "QInputDevice_new4".}
proc fcQInputDevice_new5(name: struct_miqt_string, systemId: clonglong, typeVal: cint, seatName: struct_miqt_string, parent: pointer): ptr cQInputDevice {.importc: "QInputDevice_new5".}
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
proc fcQInputDevice_connect_availableVirtualGeometryChanged(self: pointer, slot: int) {.importc: "QInputDevice_connect_availableVirtualGeometryChanged".}
proc fcQInputDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QInputDevice_tr2".}
proc fcQInputDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QInputDevice_tr3".}
proc fcQInputDevice_primaryKeyboard1(seatName: struct_miqt_string): pointer {.importc: "QInputDevice_primaryKeyboard1".}
proc fQInputDevice_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QInputDevice_virtualbase_metaObject".}
proc fcQInputDevice_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_metaObject".}
proc fQInputDevice_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QInputDevice_virtualbase_metacast".}
proc fcQInputDevice_override_virtual_metacast(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_metacast".}
proc fQInputDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QInputDevice_virtualbase_metacall".}
proc fcQInputDevice_override_virtual_metacall(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_metacall".}
proc fQInputDevice_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QInputDevice_virtualbase_event".}
proc fcQInputDevice_override_virtual_event(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_event".}
proc fQInputDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QInputDevice_virtualbase_eventFilter".}
proc fcQInputDevice_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_eventFilter".}
proc fQInputDevice_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QInputDevice_virtualbase_timerEvent".}
proc fcQInputDevice_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_timerEvent".}
proc fQInputDevice_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QInputDevice_virtualbase_childEvent".}
proc fcQInputDevice_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_childEvent".}
proc fQInputDevice_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QInputDevice_virtualbase_customEvent".}
proc fcQInputDevice_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_customEvent".}
proc fQInputDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QInputDevice_virtualbase_connectNotify".}
proc fcQInputDevice_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_connectNotify".}
proc fQInputDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QInputDevice_virtualbase_disconnectNotify".}
proc fcQInputDevice_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QInputDevice_override_virtual_disconnectNotify".}
proc fcQInputDevice_staticMetaObject(): pointer {.importc: "QInputDevice_staticMetaObject".}
proc fcQInputDevice_delete(self: pointer) {.importc: "QInputDevice_delete".}


func init*(T: type gen_qinputdevice_types.QInputDevice, h: ptr cQInputDevice): gen_qinputdevice_types.QInputDevice =
  T(h: h)
proc create*(T: type gen_qinputdevice_types.QInputDevice, ): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice.init(fcQInputDevice_new())

proc create*(T: type gen_qinputdevice_types.QInputDevice, name: string, systemId: clonglong, typeVal: cint): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice.init(fcQInputDevice_new2(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal)))

proc create*(T: type gen_qinputdevice_types.QInputDevice, parent: gen_qobject_types.QObject): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice.init(fcQInputDevice_new3(parent.h))

proc create*(T: type gen_qinputdevice_types.QInputDevice, name: string, systemId: clonglong, typeVal: cint, seatName: string): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice.init(fcQInputDevice_new4(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))

proc create*(T: type gen_qinputdevice_types.QInputDevice, name: string, systemId: clonglong, typeVal: cint, seatName: string, parent: gen_qobject_types.QObject): gen_qinputdevice_types.QInputDevice =
  gen_qinputdevice_types.QInputDevice.init(fcQInputDevice_new5(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(typeVal), struct_miqt_string(data: seatName, len: csize_t(len(seatName))), parent.h))

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
proc miqt_exec_callback_QInputDevice_availableVirtualGeometryChanged(slot: int, area: pointer) {.exportc.} =
  let nimfunc = cast[ptr QInputDeviceavailableVirtualGeometryChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: area)

  nimfunc[](slotval1)

proc onavailableVirtualGeometryChanged*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDeviceavailableVirtualGeometryChangedSlot) =
  var tmp = new QInputDeviceavailableVirtualGeometryChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_connect_availableVirtualGeometryChanged(self.h, cast[int](addr tmp[]))

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

proc QInputDevicemetaObject*(self: gen_qinputdevice_types.QInputDevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQInputDevice_virtualbase_metaObject(self.h))

type QInputDevicemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDevicemetaObjectProc) =
  # TODO check subclass
  var tmp = new QInputDevicemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_metaObject(self: ptr cQInputDevice, slot: int): pointer {.exportc: "miqt_exec_callback_QInputDevice_metaObject ".} =
  var nimfunc = cast[ptr QInputDevicemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QInputDevicemetacast*(self: gen_qinputdevice_types.QInputDevice, param1: cstring): pointer =
  fQInputDevice_virtualbase_metacast(self.h, param1)

type QInputDevicemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDevicemetacastProc) =
  # TODO check subclass
  var tmp = new QInputDevicemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_metacast(self: ptr cQInputDevice, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QInputDevice_metacast ".} =
  var nimfunc = cast[ptr QInputDevicemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QInputDevicemetacall*(self: gen_qinputdevice_types.QInputDevice, param1: cint, param2: cint, param3: pointer): cint =
  fQInputDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QInputDevicemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDevicemetacallProc) =
  # TODO check subclass
  var tmp = new QInputDevicemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_metacall(self: ptr cQInputDevice, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QInputDevice_metacall ".} =
  var nimfunc = cast[ptr QInputDevicemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QInputDeviceevent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QEvent): bool =
  fQInputDevice_virtualbase_event(self.h, event.h)

type QInputDeviceeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDeviceeventProc) =
  # TODO check subclass
  var tmp = new QInputDeviceeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_event(self: ptr cQInputDevice, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QInputDevice_event ".} =
  var nimfunc = cast[ptr QInputDeviceeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QInputDeviceeventFilter*(self: gen_qinputdevice_types.QInputDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQInputDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

type QInputDeviceeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDeviceeventFilterProc) =
  # TODO check subclass
  var tmp = new QInputDeviceeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_eventFilter(self: ptr cQInputDevice, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QInputDevice_eventFilter ".} =
  var nimfunc = cast[ptr QInputDeviceeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QInputDevicetimerEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fQInputDevice_virtualbase_timerEvent(self.h, event.h)

type QInputDevicetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDevicetimerEventProc) =
  # TODO check subclass
  var tmp = new QInputDevicetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_timerEvent(self: ptr cQInputDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_timerEvent ".} =
  var nimfunc = cast[ptr QInputDevicetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QInputDevicechildEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QChildEvent): void =
  fQInputDevice_virtualbase_childEvent(self.h, event.h)

type QInputDevicechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDevicechildEventProc) =
  # TODO check subclass
  var tmp = new QInputDevicechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_childEvent(self: ptr cQInputDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_childEvent ".} =
  var nimfunc = cast[ptr QInputDevicechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QInputDevicecustomEvent*(self: gen_qinputdevice_types.QInputDevice, event: gen_qcoreevent_types.QEvent): void =
  fQInputDevice_virtualbase_customEvent(self.h, event.h)

type QInputDevicecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDevicecustomEventProc) =
  # TODO check subclass
  var tmp = new QInputDevicecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_customEvent(self: ptr cQInputDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_customEvent ".} =
  var nimfunc = cast[ptr QInputDevicecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QInputDeviceconnectNotify*(self: gen_qinputdevice_types.QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQInputDevice_virtualbase_connectNotify(self.h, signal.h)

type QInputDeviceconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDeviceconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QInputDeviceconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_connectNotify(self: ptr cQInputDevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_connectNotify ".} =
  var nimfunc = cast[ptr QInputDeviceconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QInputDevicedisconnectNotify*(self: gen_qinputdevice_types.QInputDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQInputDevice_virtualbase_disconnectNotify(self.h, signal.h)

type QInputDevicedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qinputdevice_types.QInputDevice, slot: QInputDevicedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QInputDevicedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQInputDevice_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QInputDevice_disconnectNotify(self: ptr cQInputDevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QInputDevice_disconnectNotify ".} =
  var nimfunc = cast[ptr QInputDevicedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qinputdevice_types.QInputDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQInputDevice_staticMetaObject())
proc delete*(self: gen_qinputdevice_types.QInputDevice) =
  fcQInputDevice_delete(self.h)
