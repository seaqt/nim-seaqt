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
{.compile("gen_qpointingdevice.cpp", cflags).}


type QPointingDevicePointerTypeEnum* = distinct cint
template Unknown*(_: type QPointingDevicePointerTypeEnum): untyped = 0
template Generic*(_: type QPointingDevicePointerTypeEnum): untyped = 1
template Finger*(_: type QPointingDevicePointerTypeEnum): untyped = 2
template Pen*(_: type QPointingDevicePointerTypeEnum): untyped = 4
template Eraser*(_: type QPointingDevicePointerTypeEnum): untyped = 8
template Cursor*(_: type QPointingDevicePointerTypeEnum): untyped = 16
template AllPointerTypes*(_: type QPointingDevicePointerTypeEnum): untyped = 32767


type QPointingDeviceGrabTransitionEnum* = distinct cint
template GrabPassive*(_: type QPointingDeviceGrabTransitionEnum): untyped = 1
template UngrabPassive*(_: type QPointingDeviceGrabTransitionEnum): untyped = 2
template CancelGrabPassive*(_: type QPointingDeviceGrabTransitionEnum): untyped = 3
template OverrideGrabPassive*(_: type QPointingDeviceGrabTransitionEnum): untyped = 4
template GrabExclusive*(_: type QPointingDeviceGrabTransitionEnum): untyped = 16
template UngrabExclusive*(_: type QPointingDeviceGrabTransitionEnum): untyped = 32
template CancelGrabExclusive*(_: type QPointingDeviceGrabTransitionEnum): untyped = 48


import ./gen_qpointingdevice_types
export gen_qpointingdevice_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ./gen_qevent_types,
  ./gen_qeventpoint_types,
  ./gen_qinputdevice
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qevent_types,
  gen_qeventpoint_types,
  gen_qinputdevice

type cQPointingDeviceUniqueId*{.exportc: "QPointingDeviceUniqueId", incompleteStruct.} = object
type cQPointingDevice*{.exportc: "QPointingDevice", incompleteStruct.} = object

proc fcQPointingDeviceUniqueId_new(): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new".}
proc fcQPointingDeviceUniqueId_new2(param1: pointer): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new2".}
proc fcQPointingDeviceUniqueId_fromNumericId(id: clonglong): pointer {.importc: "QPointingDeviceUniqueId_fromNumericId".}
proc fcQPointingDeviceUniqueId_isValid(self: pointer, ): bool {.importc: "QPointingDeviceUniqueId_isValid".}
proc fcQPointingDeviceUniqueId_numericId(self: pointer, ): clonglong {.importc: "QPointingDeviceUniqueId_numericId".}
proc fcQPointingDeviceUniqueId_staticMetaObject(): pointer {.importc: "QPointingDeviceUniqueId_staticMetaObject".}
proc fcQPointingDeviceUniqueId_delete(self: pointer) {.importc: "QPointingDeviceUniqueId_delete".}
proc fcQPointingDevice_new(): ptr cQPointingDevice {.importc: "QPointingDevice_new".}
proc fcQPointingDevice_new2(name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint): ptr cQPointingDevice {.importc: "QPointingDevice_new2".}
proc fcQPointingDevice_new3(parent: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new3".}
proc fcQPointingDevice_new4(name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string): ptr cQPointingDevice {.importc: "QPointingDevice_new4".}
proc fcQPointingDevice_new5(name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string, uniqueId: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new5".}
proc fcQPointingDevice_new6(name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string, uniqueId: pointer, parent: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new6".}
proc fcQPointingDevice_metaObject(self: pointer, ): pointer {.importc: "QPointingDevice_metaObject".}
proc fcQPointingDevice_metacast(self: pointer, param1: cstring): pointer {.importc: "QPointingDevice_metacast".}
proc fcQPointingDevice_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPointingDevice_metacall".}
proc fcQPointingDevice_tr(s: cstring): struct_miqt_string {.importc: "QPointingDevice_tr".}
proc fcQPointingDevice_setType(self: pointer, devType: cint): void {.importc: "QPointingDevice_setType".}
proc fcQPointingDevice_setCapabilities(self: pointer, caps: cint): void {.importc: "QPointingDevice_setCapabilities".}
proc fcQPointingDevice_setMaximumTouchPoints(self: pointer, c: cint): void {.importc: "QPointingDevice_setMaximumTouchPoints".}
proc fcQPointingDevice_pointerType(self: pointer, ): cint {.importc: "QPointingDevice_pointerType".}
proc fcQPointingDevice_maximumPoints(self: pointer, ): cint {.importc: "QPointingDevice_maximumPoints".}
proc fcQPointingDevice_buttonCount(self: pointer, ): cint {.importc: "QPointingDevice_buttonCount".}
proc fcQPointingDevice_uniqueId(self: pointer, ): pointer {.importc: "QPointingDevice_uniqueId".}
proc fcQPointingDevice_primaryPointingDevice(): pointer {.importc: "QPointingDevice_primaryPointingDevice".}
proc fcQPointingDevice_operatorEqual(self: pointer, other: pointer): bool {.importc: "QPointingDevice_operatorEqual".}
proc fcQPointingDevice_grabChanged(self: pointer, grabber: pointer, transition: cint, event: pointer, point: pointer): void {.importc: "QPointingDevice_grabChanged".}
proc fcQPointingDevice_connect_grabChanged(self: pointer, slot: int) {.importc: "QPointingDevice_connect_grabChanged".}
proc fcQPointingDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPointingDevice_tr2".}
proc fcQPointingDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPointingDevice_tr3".}
proc fcQPointingDevice_primaryPointingDevice1(seatName: struct_miqt_string): pointer {.importc: "QPointingDevice_primaryPointingDevice1".}
proc fQPointingDevice_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPointingDevice_virtualbase_metaObject".}
proc fcQPointingDevice_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_metaObject".}
proc fQPointingDevice_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPointingDevice_virtualbase_metacast".}
proc fcQPointingDevice_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_metacast".}
proc fQPointingDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPointingDevice_virtualbase_metacall".}
proc fcQPointingDevice_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_metacall".}
proc fQPointingDevice_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPointingDevice_virtualbase_event".}
proc fcQPointingDevice_override_virtual_event(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_event".}
proc fQPointingDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPointingDevice_virtualbase_eventFilter".}
proc fcQPointingDevice_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_eventFilter".}
proc fQPointingDevice_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPointingDevice_virtualbase_timerEvent".}
proc fcQPointingDevice_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_timerEvent".}
proc fQPointingDevice_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPointingDevice_virtualbase_childEvent".}
proc fcQPointingDevice_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_childEvent".}
proc fQPointingDevice_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPointingDevice_virtualbase_customEvent".}
proc fcQPointingDevice_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_customEvent".}
proc fQPointingDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPointingDevice_virtualbase_connectNotify".}
proc fcQPointingDevice_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_connectNotify".}
proc fQPointingDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPointingDevice_virtualbase_disconnectNotify".}
proc fcQPointingDevice_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPointingDevice_override_virtual_disconnectNotify".}
proc fcQPointingDevice_staticMetaObject(): pointer {.importc: "QPointingDevice_staticMetaObject".}
proc fcQPointingDevice_delete(self: pointer) {.importc: "QPointingDevice_delete".}


func init*(T: type gen_qpointingdevice_types.QPointingDeviceUniqueId, h: ptr cQPointingDeviceUniqueId): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  T(h: h)
proc create*(T: type gen_qpointingdevice_types.QPointingDeviceUniqueId, ): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  gen_qpointingdevice_types.QPointingDeviceUniqueId.init(fcQPointingDeviceUniqueId_new())

proc create*(T: type gen_qpointingdevice_types.QPointingDeviceUniqueId, param1: gen_qpointingdevice_types.QPointingDeviceUniqueId): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  gen_qpointingdevice_types.QPointingDeviceUniqueId.init(fcQPointingDeviceUniqueId_new2(param1.h))

proc fromNumericId*(_: type gen_qpointingdevice_types.QPointingDeviceUniqueId, id: clonglong): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  gen_qpointingdevice_types.QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_fromNumericId(id))

proc isValid*(self: gen_qpointingdevice_types.QPointingDeviceUniqueId, ): bool =
  fcQPointingDeviceUniqueId_isValid(self.h)

proc numericId*(self: gen_qpointingdevice_types.QPointingDeviceUniqueId, ): clonglong =
  fcQPointingDeviceUniqueId_numericId(self.h)

proc staticMetaObject*(_: type gen_qpointingdevice_types.QPointingDeviceUniqueId): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPointingDeviceUniqueId_staticMetaObject())
proc delete*(self: gen_qpointingdevice_types.QPointingDeviceUniqueId) =
  fcQPointingDeviceUniqueId_delete(self.h)

func init*(T: type gen_qpointingdevice_types.QPointingDevice, h: ptr cQPointingDevice): gen_qpointingdevice_types.QPointingDevice =
  T(h: h)
proc create*(T: type gen_qpointingdevice_types.QPointingDevice, ): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice.init(fcQPointingDevice_new())

proc create*(T: type gen_qpointingdevice_types.QPointingDevice, name: string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice.init(fcQPointingDevice_new2(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice, parent: gen_qobject_types.QObject): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice.init(fcQPointingDevice_new3(parent.h))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice, name: string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: string): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice.init(fcQPointingDevice_new4(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice, name: string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: string, uniqueId: gen_qpointingdevice_types.QPointingDeviceUniqueId): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice.init(fcQPointingDevice_new5(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName))), uniqueId.h))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice, name: string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: string, uniqueId: gen_qpointingdevice_types.QPointingDeviceUniqueId, parent: gen_qobject_types.QObject): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice.init(fcQPointingDevice_new6(struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName))), uniqueId.h, parent.h))

proc metaObject*(self: gen_qpointingdevice_types.QPointingDevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPointingDevice_metaObject(self.h))

proc metacast*(self: gen_qpointingdevice_types.QPointingDevice, param1: cstring): pointer =
  fcQPointingDevice_metacast(self.h, param1)

proc metacall*(self: gen_qpointingdevice_types.QPointingDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQPointingDevice_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qpointingdevice_types.QPointingDevice, s: cstring): string =
  let v_ms = fcQPointingDevice_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setType*(self: gen_qpointingdevice_types.QPointingDevice, devType: cint): void =
  fcQPointingDevice_setType(self.h, cint(devType))

proc setCapabilities*(self: gen_qpointingdevice_types.QPointingDevice, caps: cint): void =
  fcQPointingDevice_setCapabilities(self.h, cint(caps))

proc setMaximumTouchPoints*(self: gen_qpointingdevice_types.QPointingDevice, c: cint): void =
  fcQPointingDevice_setMaximumTouchPoints(self.h, c)

proc pointerType*(self: gen_qpointingdevice_types.QPointingDevice, ): cint =
  cint(fcQPointingDevice_pointerType(self.h))

proc maximumPoints*(self: gen_qpointingdevice_types.QPointingDevice, ): cint =
  fcQPointingDevice_maximumPoints(self.h)

proc buttonCount*(self: gen_qpointingdevice_types.QPointingDevice, ): cint =
  fcQPointingDevice_buttonCount(self.h)

proc uniqueId*(self: gen_qpointingdevice_types.QPointingDevice, ): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  gen_qpointingdevice_types.QPointingDeviceUniqueId(h: fcQPointingDevice_uniqueId(self.h))

proc primaryPointingDevice*(_: type gen_qpointingdevice_types.QPointingDevice, ): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointingDevice_primaryPointingDevice())

proc operatorEqual*(self: gen_qpointingdevice_types.QPointingDevice, other: gen_qpointingdevice_types.QPointingDevice): bool =
  fcQPointingDevice_operatorEqual(self.h, other.h)

proc grabChanged*(self: gen_qpointingdevice_types.QPointingDevice, grabber: gen_qobject_types.QObject, transition: cint, event: gen_qevent_types.QPointerEvent, point: gen_qeventpoint_types.QEventPoint): void =
  fcQPointingDevice_grabChanged(self.h, grabber.h, cint(transition), event.h, point.h)

type QPointingDevicegrabChangedSlot* = proc(grabber: gen_qobject_types.QObject, transition: cint, event: gen_qevent_types.QPointerEvent, point: gen_qeventpoint_types.QEventPoint)
proc miqt_exec_callback_QPointingDevice_grabChanged(slot: int, grabber: pointer, transition: cint, event: pointer, point: pointer) {.exportc.} =
  let nimfunc = cast[ptr QPointingDevicegrabChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: grabber)

  let slotval2 = cint(transition)

  let slotval3 = gen_qevent_types.QPointerEvent(h: event)

  let slotval4 = gen_qeventpoint_types.QEventPoint(h: point)

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc ongrabChanged*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicegrabChangedSlot) =
  var tmp = new QPointingDevicegrabChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_connect_grabChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qpointingdevice_types.QPointingDevice, s: cstring, c: cstring): string =
  let v_ms = fcQPointingDevice_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qpointingdevice_types.QPointingDevice, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQPointingDevice_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc primaryPointingDevice*(_: type gen_qpointingdevice_types.QPointingDevice, seatName: string): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointingDevice_primaryPointingDevice1(struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))

proc QPointingDevicemetaObject*(self: gen_qpointingdevice_types.QPointingDevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQPointingDevice_virtualbase_metaObject(self.h))

type QPointingDevicemetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicemetaObjectProc) =
  # TODO check subclass
  var tmp = new QPointingDevicemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_metaObject(self: ptr cQPointingDevice, slot: int): pointer {.exportc: "miqt_exec_callback_QPointingDevice_metaObject ".} =
  var nimfunc = cast[ptr QPointingDevicemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QPointingDevicemetacast*(self: gen_qpointingdevice_types.QPointingDevice, param1: cstring): pointer =
  fQPointingDevice_virtualbase_metacast(self.h, param1)

type QPointingDevicemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicemetacastProc) =
  # TODO check subclass
  var tmp = new QPointingDevicemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_metacast(self: ptr cQPointingDevice, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPointingDevice_metacast ".} =
  var nimfunc = cast[ptr QPointingDevicemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPointingDevicemetacall*(self: gen_qpointingdevice_types.QPointingDevice, param1: cint, param2: cint, param3: pointer): cint =
  fQPointingDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPointingDevicemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicemetacallProc) =
  # TODO check subclass
  var tmp = new QPointingDevicemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_metacall(self: ptr cQPointingDevice, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPointingDevice_metacall ".} =
  var nimfunc = cast[ptr QPointingDevicemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QPointingDeviceevent*(self: gen_qpointingdevice_types.QPointingDevice, event: gen_qcoreevent_types.QEvent): bool =
  fQPointingDevice_virtualbase_event(self.h, event.h)

type QPointingDeviceeventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDeviceeventProc) =
  # TODO check subclass
  var tmp = new QPointingDeviceeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_event(self: ptr cQPointingDevice, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPointingDevice_event ".} =
  var nimfunc = cast[ptr QPointingDeviceeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QPointingDeviceeventFilter*(self: gen_qpointingdevice_types.QPointingDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQPointingDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPointingDeviceeventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDeviceeventFilterProc) =
  # TODO check subclass
  var tmp = new QPointingDeviceeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_eventFilter(self: ptr cQPointingDevice, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPointingDevice_eventFilter ".} =
  var nimfunc = cast[ptr QPointingDeviceeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QPointingDevicetimerEvent*(self: gen_qpointingdevice_types.QPointingDevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fQPointingDevice_virtualbase_timerEvent(self.h, event.h)

type QPointingDevicetimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicetimerEventProc) =
  # TODO check subclass
  var tmp = new QPointingDevicetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_timerEvent(self: ptr cQPointingDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_timerEvent ".} =
  var nimfunc = cast[ptr QPointingDevicetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QPointingDevicechildEvent*(self: gen_qpointingdevice_types.QPointingDevice, event: gen_qcoreevent_types.QChildEvent): void =
  fQPointingDevice_virtualbase_childEvent(self.h, event.h)

type QPointingDevicechildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicechildEventProc) =
  # TODO check subclass
  var tmp = new QPointingDevicechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_childEvent(self: ptr cQPointingDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_childEvent ".} =
  var nimfunc = cast[ptr QPointingDevicechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QPointingDevicecustomEvent*(self: gen_qpointingdevice_types.QPointingDevice, event: gen_qcoreevent_types.QEvent): void =
  fQPointingDevice_virtualbase_customEvent(self.h, event.h)

type QPointingDevicecustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicecustomEventProc) =
  # TODO check subclass
  var tmp = new QPointingDevicecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_customEvent(self: ptr cQPointingDevice, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_customEvent ".} =
  var nimfunc = cast[ptr QPointingDevicecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QPointingDeviceconnectNotify*(self: gen_qpointingdevice_types.QPointingDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPointingDevice_virtualbase_connectNotify(self.h, signal.h)

type QPointingDeviceconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDeviceconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPointingDeviceconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_connectNotify(self: ptr cQPointingDevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_connectNotify ".} =
  var nimfunc = cast[ptr QPointingDeviceconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QPointingDevicedisconnectNotify*(self: gen_qpointingdevice_types.QPointingDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQPointingDevice_virtualbase_disconnectNotify(self.h, signal.h)

type QPointingDevicedisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QPointingDevicedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPointingDevice_disconnectNotify(self: ptr cQPointingDevice, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPointingDevice_disconnectNotify ".} =
  var nimfunc = cast[ptr QPointingDevicedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qpointingdevice_types.QPointingDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPointingDevice_staticMetaObject())
proc delete*(self: gen_qpointingdevice_types.QPointingDevice) =
  fcQPointingDevice_delete(self.h)
