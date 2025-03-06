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

proc fcQPointingDeviceUniqueId_fromNumericId(id: clonglong): pointer {.importc: "QPointingDeviceUniqueId_fromNumericId".}
proc fcQPointingDeviceUniqueId_isValid(self: pointer, ): bool {.importc: "QPointingDeviceUniqueId_isValid".}
proc fcQPointingDeviceUniqueId_numericId(self: pointer, ): clonglong {.importc: "QPointingDeviceUniqueId_numericId".}
proc fcQPointingDeviceUniqueId_new(): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new".}
proc fcQPointingDeviceUniqueId_new2(param1: pointer): ptr cQPointingDeviceUniqueId {.importc: "QPointingDeviceUniqueId_new2".}
proc fcQPointingDeviceUniqueId_staticMetaObject(): pointer {.importc: "QPointingDeviceUniqueId_staticMetaObject".}
proc fcQPointingDeviceUniqueId_delete(self: pointer) {.importc: "QPointingDeviceUniqueId_delete".}
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
proc fcQPointingDevice_connect_grabChanged(self: pointer, slot: int, callback: proc (slot: int, grabber: pointer, transition: cint, event: pointer, point: pointer) {.cdecl.}, release: proc(slot: int) {.cdecl.}) {.importc: "QPointingDevice_connect_grabChanged".}
proc fcQPointingDevice_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPointingDevice_tr2".}
proc fcQPointingDevice_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPointingDevice_tr3".}
proc fcQPointingDevice_primaryPointingDevice1(seatName: struct_miqt_string): pointer {.importc: "QPointingDevice_primaryPointingDevice1".}
type cQPointingDeviceVTable = object
  destructor*: proc(vtbl: ptr cQPointingDeviceVTable, self: ptr cQPointingDevice) {.cdecl, raises:[], gcsafe.}
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
proc fcQPointingDevice_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QPointingDevice_virtualbase_metaObject".}
proc fcQPointingDevice_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QPointingDevice_virtualbase_metacast".}
proc fcQPointingDevice_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPointingDevice_virtualbase_metacall".}
proc fcQPointingDevice_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QPointingDevice_virtualbase_event".}
proc fcQPointingDevice_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QPointingDevice_virtualbase_eventFilter".}
proc fcQPointingDevice_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QPointingDevice_virtualbase_timerEvent".}
proc fcQPointingDevice_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QPointingDevice_virtualbase_childEvent".}
proc fcQPointingDevice_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QPointingDevice_virtualbase_customEvent".}
proc fcQPointingDevice_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QPointingDevice_virtualbase_connectNotify".}
proc fcQPointingDevice_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QPointingDevice_virtualbase_disconnectNotify".}
proc fcQPointingDevice_protectedbase_sender(self: pointer, ): pointer {.importc: "QPointingDevice_protectedbase_sender".}
proc fcQPointingDevice_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QPointingDevice_protectedbase_senderSignalIndex".}
proc fcQPointingDevice_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QPointingDevice_protectedbase_receivers".}
proc fcQPointingDevice_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QPointingDevice_protectedbase_isSignalConnected".}
proc fcQPointingDevice_new(vtbl: pointer, ): ptr cQPointingDevice {.importc: "QPointingDevice_new".}
proc fcQPointingDevice_new2(vtbl: pointer, name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint): ptr cQPointingDevice {.importc: "QPointingDevice_new2".}
proc fcQPointingDevice_new3(vtbl: pointer, parent: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new3".}
proc fcQPointingDevice_new4(vtbl: pointer, name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string): ptr cQPointingDevice {.importc: "QPointingDevice_new4".}
proc fcQPointingDevice_new5(vtbl: pointer, name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string, uniqueId: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new5".}
proc fcQPointingDevice_new6(vtbl: pointer, name: struct_miqt_string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: struct_miqt_string, uniqueId: pointer, parent: pointer): ptr cQPointingDevice {.importc: "QPointingDevice_new6".}
proc fcQPointingDevice_staticMetaObject(): pointer {.importc: "QPointingDevice_staticMetaObject".}
proc fcQPointingDevice_delete(self: pointer) {.importc: "QPointingDevice_delete".}

proc fromNumericId*(_: type gen_qpointingdevice_types.QPointingDeviceUniqueId, id: clonglong): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  gen_qpointingdevice_types.QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_fromNumericId(id))

proc isValid*(self: gen_qpointingdevice_types.QPointingDeviceUniqueId, ): bool =
  fcQPointingDeviceUniqueId_isValid(self.h)

proc numericId*(self: gen_qpointingdevice_types.QPointingDeviceUniqueId, ): clonglong =
  fcQPointingDeviceUniqueId_numericId(self.h)

proc create*(T: type gen_qpointingdevice_types.QPointingDeviceUniqueId): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  gen_qpointingdevice_types.QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_new())

proc create*(T: type gen_qpointingdevice_types.QPointingDeviceUniqueId,
    param1: gen_qpointingdevice_types.QPointingDeviceUniqueId): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  gen_qpointingdevice_types.QPointingDeviceUniqueId(h: fcQPointingDeviceUniqueId_new2(param1.h))

proc staticMetaObject*(_: type gen_qpointingdevice_types.QPointingDeviceUniqueId): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPointingDeviceUniqueId_staticMetaObject())
proc delete*(self: gen_qpointingdevice_types.QPointingDeviceUniqueId) =
  fcQPointingDeviceUniqueId_delete(self.h)
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
proc miqt_exec_callback_cQPointingDevice_grabChanged(slot: int, grabber: pointer, transition: cint, event: pointer, point: pointer) {.cdecl.} =
  let nimfunc = cast[ptr QPointingDevicegrabChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: grabber)

  let slotval2 = cint(transition)

  let slotval3 = gen_qevent_types.QPointerEvent(h: event)

  let slotval4 = gen_qeventpoint_types.QEventPoint(h: point)

  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc miqt_exec_callback_cQPointingDevice_grabChanged_release(slot: int) {.cdecl.} =
  let nimfunc = cast[ref QPointingDevicegrabChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ongrabChanged*(self: gen_qpointingdevice_types.QPointingDevice, slot: QPointingDevicegrabChangedSlot) =
  var tmp = new QPointingDevicegrabChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQPointingDevice_connect_grabChanged(self.h, cast[int](addr tmp[]), miqt_exec_callback_cQPointingDevice_grabChanged, miqt_exec_callback_cQPointingDevice_grabChanged_release)

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

type QPointingDevicemetaObjectProc* = proc(self: QPointingDevice): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QPointingDevicemetacastProc* = proc(self: QPointingDevice, param1: cstring): pointer {.raises: [], gcsafe.}
type QPointingDevicemetacallProc* = proc(self: QPointingDevice, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QPointingDeviceeventProc* = proc(self: QPointingDevice, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPointingDeviceeventFilterProc* = proc(self: QPointingDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QPointingDevicetimerEventProc* = proc(self: QPointingDevice, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QPointingDevicechildEventProc* = proc(self: QPointingDevice, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QPointingDevicecustomEventProc* = proc(self: QPointingDevice, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QPointingDeviceconnectNotifyProc* = proc(self: QPointingDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPointingDevicedisconnectNotifyProc* = proc(self: QPointingDevice, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QPointingDeviceVTable* = object
  vtbl: cQPointingDeviceVTable
  metaObject*: QPointingDevicemetaObjectProc
  metacast*: QPointingDevicemetacastProc
  metacall*: QPointingDevicemetacallProc
  event*: QPointingDeviceeventProc
  eventFilter*: QPointingDeviceeventFilterProc
  timerEvent*: QPointingDevicetimerEventProc
  childEvent*: QPointingDevicechildEventProc
  customEvent*: QPointingDevicecustomEventProc
  connectNotify*: QPointingDeviceconnectNotifyProc
  disconnectNotify*: QPointingDevicedisconnectNotifyProc
proc QPointingDevicemetaObject*(self: gen_qpointingdevice_types.QPointingDevice, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPointingDevice_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQPointingDevice_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QPointingDevicemetacast*(self: gen_qpointingdevice_types.QPointingDevice, param1: cstring): pointer =
  fcQPointingDevice_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQPointingDevice_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QPointingDevicemetacall*(self: gen_qpointingdevice_types.QPointingDevice, param1: cint, param2: cint, param3: pointer): cint =
  fcQPointingDevice_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQPointingDevice_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QPointingDeviceevent*(self: gen_qpointingdevice_types.QPointingDevice, event: gen_qcoreevent_types.QEvent): bool =
  fcQPointingDevice_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQPointingDevice_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QPointingDeviceeventFilter*(self: gen_qpointingdevice_types.QPointingDevice, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQPointingDevice_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQPointingDevice_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QPointingDevicetimerEvent*(self: gen_qpointingdevice_types.QPointingDevice, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQPointingDevice_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQPointingDevice_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QPointingDevicechildEvent*(self: gen_qpointingdevice_types.QPointingDevice, event: gen_qcoreevent_types.QChildEvent): void =
  fcQPointingDevice_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQPointingDevice_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QPointingDevicecustomEvent*(self: gen_qpointingdevice_types.QPointingDevice, event: gen_qcoreevent_types.QEvent): void =
  fcQPointingDevice_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQPointingDevice_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QPointingDeviceconnectNotify*(self: gen_qpointingdevice_types.QPointingDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPointingDevice_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPointingDevice_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QPointingDevicedisconnectNotify*(self: gen_qpointingdevice_types.QPointingDevice, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQPointingDevice_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQPointingDevice_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPointingDeviceVTable](vtbl)
  let self = QPointingDevice(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qpointingdevice_types.QPointingDevice, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQPointingDevice_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qpointingdevice_types.QPointingDevice, ): cint =
  fcQPointingDevice_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qpointingdevice_types.QPointingDevice, signal: cstring): cint =
  fcQPointingDevice_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qpointingdevice_types.QPointingDevice, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQPointingDevice_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qpointingdevice_types.QPointingDevice,
    vtbl: ref QPointingDeviceVTable = nil): gen_qpointingdevice_types.QPointingDevice =
  let vtbl = if vtbl == nil: new QPointingDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointingDeviceVTable, _: ptr cQPointingDevice) {.cdecl.} =
    let vtbl = cast[ref QPointingDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPointingDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPointingDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPointingDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPointingDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPointingDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPointingDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPointingDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPointingDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPointingDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPointingDevice_disconnectNotify
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointingDevice_new(addr(vtbl[]), ))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice,
    name: string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint,
    vtbl: ref QPointingDeviceVTable = nil): gen_qpointingdevice_types.QPointingDevice =
  let vtbl = if vtbl == nil: new QPointingDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointingDeviceVTable, _: ptr cQPointingDevice) {.cdecl.} =
    let vtbl = cast[ref QPointingDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPointingDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPointingDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPointingDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPointingDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPointingDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPointingDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPointingDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPointingDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPointingDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPointingDevice_disconnectNotify
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointingDevice_new2(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice,
    parent: gen_qobject_types.QObject,
    vtbl: ref QPointingDeviceVTable = nil): gen_qpointingdevice_types.QPointingDevice =
  let vtbl = if vtbl == nil: new QPointingDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointingDeviceVTable, _: ptr cQPointingDevice) {.cdecl.} =
    let vtbl = cast[ref QPointingDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPointingDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPointingDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPointingDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPointingDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPointingDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPointingDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPointingDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPointingDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPointingDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPointingDevice_disconnectNotify
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointingDevice_new3(addr(vtbl[]), parent.h))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice,
    name: string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: string,
    vtbl: ref QPointingDeviceVTable = nil): gen_qpointingdevice_types.QPointingDevice =
  let vtbl = if vtbl == nil: new QPointingDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointingDeviceVTable, _: ptr cQPointingDevice) {.cdecl.} =
    let vtbl = cast[ref QPointingDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPointingDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPointingDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPointingDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPointingDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPointingDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPointingDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPointingDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPointingDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPointingDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPointingDevice_disconnectNotify
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointingDevice_new4(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName)))))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice,
    name: string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: string, uniqueId: gen_qpointingdevice_types.QPointingDeviceUniqueId,
    vtbl: ref QPointingDeviceVTable = nil): gen_qpointingdevice_types.QPointingDevice =
  let vtbl = if vtbl == nil: new QPointingDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointingDeviceVTable, _: ptr cQPointingDevice) {.cdecl.} =
    let vtbl = cast[ref QPointingDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPointingDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPointingDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPointingDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPointingDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPointingDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPointingDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPointingDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPointingDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPointingDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPointingDevice_disconnectNotify
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointingDevice_new5(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName))), uniqueId.h))

proc create*(T: type gen_qpointingdevice_types.QPointingDevice,
    name: string, systemId: clonglong, devType: cint, pType: cint, caps: cint, maxPoints: cint, buttonCount: cint, seatName: string, uniqueId: gen_qpointingdevice_types.QPointingDeviceUniqueId, parent: gen_qobject_types.QObject,
    vtbl: ref QPointingDeviceVTable = nil): gen_qpointingdevice_types.QPointingDevice =
  let vtbl = if vtbl == nil: new QPointingDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPointingDeviceVTable, _: ptr cQPointingDevice) {.cdecl.} =
    let vtbl = cast[ref QPointingDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQPointingDevice_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQPointingDevice_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQPointingDevice_metacall
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQPointingDevice_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQPointingDevice_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQPointingDevice_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQPointingDevice_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQPointingDevice_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQPointingDevice_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQPointingDevice_disconnectNotify
  gen_qpointingdevice_types.QPointingDevice(h: fcQPointingDevice_new6(addr(vtbl[]), struct_miqt_string(data: name, len: csize_t(len(name))), systemId, cint(devType), cint(pType), cint(caps), maxPoints, buttonCount, struct_miqt_string(data: seatName, len: csize_t(len(seatName))), uniqueId.h, parent.h))

proc staticMetaObject*(_: type gen_qpointingdevice_types.QPointingDevice): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPointingDevice_staticMetaObject())
proc delete*(self: gen_qpointingdevice_types.QPointingDevice) =
  fcQPointingDevice_delete(self.h)
