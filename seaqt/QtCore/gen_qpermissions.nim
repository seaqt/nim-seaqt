import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QLocationPermissionAccuracyEnum* = distinct uint8
template Approximate*(_: type QLocationPermissionAccuracyEnum): untyped = 0
template Precise*(_: type QLocationPermissionAccuracyEnum): untyped = 1


type QLocationPermissionAvailabilityEnum* = distinct uint8
template WhenInUse*(_: type QLocationPermissionAvailabilityEnum): untyped = 0
template Always*(_: type QLocationPermissionAvailabilityEnum): untyped = 1


type QCalendarPermissionAccessModeEnum* = distinct uint8
template ReadOnly*(_: type QCalendarPermissionAccessModeEnum): untyped = 0
template ReadWrite*(_: type QCalendarPermissionAccessModeEnum): untyped = 1


type QContactsPermissionAccessModeEnum* = distinct uint8
template ReadOnly*(_: type QContactsPermissionAccessModeEnum): untyped = 0
template ReadWrite*(_: type QContactsPermissionAccessModeEnum): untyped = 1


type QBluetoothPermissionCommunicationModeEnum* = distinct uint8
template Access*(_: type QBluetoothPermissionCommunicationModeEnum): untyped = 1
template Advertise*(_: type QBluetoothPermissionCommunicationModeEnum): untyped = 2
template Default*(_: type QBluetoothPermissionCommunicationModeEnum): untyped = 3


import ./gen_qpermissions_types
export gen_qpermissions_types

import
  ./gen_qmetatype_types
export
  gen_qmetatype_types

type cQPermission*{.exportc: "QPermission", incompleteStruct.} = object

proc fcQPermission_status(self: pointer): cint {.importc: "QPermission_status".}
proc fcQPermission_typeX(self: pointer): pointer {.importc: "QPermission_type".}
proc fcQPermission_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QPermission_operatorAssign".}
proc fcQPermission_new(): ptr cQPermission {.importc: "QPermission_new".}
proc fcQPermission_new2(fromVal: pointer): ptr cQPermission {.importc: "QPermission_new_from".}

proc status*(self: gen_qpermissions_types.QPermission): cint =
  cint(fcQPermission_status(self.h))

proc typeX*(self: gen_qpermissions_types.QPermission): gen_qmetatype_types.QMetaType =
  gen_qmetatype_types.QMetaType(h: fcQPermission_typeX(self.h), owned: true)

proc operatorAssign*(self: gen_qpermissions_types.QPermission, fromVal: gen_qpermissions_types.QPermission): void =
  fcQPermission_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qpermissions_types.QPermission): gen_qpermissions_types.QPermission =
  let tmp = gen_qpermissions_types.QPermission(h: fcQPermission_new(), owned: true)
  tmp
proc create*(T: type gen_qpermissions_types.QPermission,
    fromVal: gen_qpermissions_types.QPermission): gen_qpermissions_types.QPermission =
  let tmp = gen_qpermissions_types.QPermission(h: fcQPermission_new2(fromVal.h), owned: true)
  tmp
