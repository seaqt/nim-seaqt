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
{.compile("gen_qeventpoint.cpp", cflags).}


type QEventPointStateEnum* = distinct uint8
template Unknown*(_: type QEventPointStateEnum): untyped = 0
template Stationary*(_: type QEventPointStateEnum): untyped = 4
template Pressed*(_: type QEventPointStateEnum): untyped = 1
template Updated*(_: type QEventPointStateEnum): untyped = 2
template Released*(_: type QEventPointStateEnum): untyped = 8


import ./gen_qeventpoint_types
export gen_qeventpoint_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ./gen_qpointingdevice_types,
  ./gen_qvectornd_types
export
  gen_qpoint_types,
  gen_qsize_types,
  gen_qpointingdevice_types,
  gen_qvectornd_types

type cQEventPoint*{.exportc: "QEventPoint", incompleteStruct.} = object

proc fcQEventPoint_new(): ptr cQEventPoint {.importc: "QEventPoint_new".}
proc fcQEventPoint_new2(pointId: cint, state: cint, scenePosition: pointer, globalPosition: pointer): ptr cQEventPoint {.importc: "QEventPoint_new2".}
proc fcQEventPoint_new3(other: pointer): ptr cQEventPoint {.importc: "QEventPoint_new3".}
proc fcQEventPoint_new4(id: cint): ptr cQEventPoint {.importc: "QEventPoint_new4".}
proc fcQEventPoint_new5(id: cint, device: pointer): ptr cQEventPoint {.importc: "QEventPoint_new5".}
proc fcQEventPoint_operatorAssign(self: pointer, other: pointer): void {.importc: "QEventPoint_operatorAssign".}
proc fcQEventPoint_operatorEqual(self: pointer, other: pointer): bool {.importc: "QEventPoint_operatorEqual".}
proc fcQEventPoint_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QEventPoint_operatorNotEqual".}
proc fcQEventPoint_swap(self: pointer, other: pointer): void {.importc: "QEventPoint_swap".}
proc fcQEventPoint_position(self: pointer, ): pointer {.importc: "QEventPoint_position".}
proc fcQEventPoint_pressPosition(self: pointer, ): pointer {.importc: "QEventPoint_pressPosition".}
proc fcQEventPoint_grabPosition(self: pointer, ): pointer {.importc: "QEventPoint_grabPosition".}
proc fcQEventPoint_lastPosition(self: pointer, ): pointer {.importc: "QEventPoint_lastPosition".}
proc fcQEventPoint_scenePosition(self: pointer, ): pointer {.importc: "QEventPoint_scenePosition".}
proc fcQEventPoint_scenePressPosition(self: pointer, ): pointer {.importc: "QEventPoint_scenePressPosition".}
proc fcQEventPoint_sceneGrabPosition(self: pointer, ): pointer {.importc: "QEventPoint_sceneGrabPosition".}
proc fcQEventPoint_sceneLastPosition(self: pointer, ): pointer {.importc: "QEventPoint_sceneLastPosition".}
proc fcQEventPoint_globalPosition(self: pointer, ): pointer {.importc: "QEventPoint_globalPosition".}
proc fcQEventPoint_globalPressPosition(self: pointer, ): pointer {.importc: "QEventPoint_globalPressPosition".}
proc fcQEventPoint_globalGrabPosition(self: pointer, ): pointer {.importc: "QEventPoint_globalGrabPosition".}
proc fcQEventPoint_globalLastPosition(self: pointer, ): pointer {.importc: "QEventPoint_globalLastPosition".}
proc fcQEventPoint_normalizedPosition(self: pointer, ): pointer {.importc: "QEventPoint_normalizedPosition".}
proc fcQEventPoint_pos(self: pointer, ): pointer {.importc: "QEventPoint_pos".}
proc fcQEventPoint_startPos(self: pointer, ): pointer {.importc: "QEventPoint_startPos".}
proc fcQEventPoint_scenePos(self: pointer, ): pointer {.importc: "QEventPoint_scenePos".}
proc fcQEventPoint_startScenePos(self: pointer, ): pointer {.importc: "QEventPoint_startScenePos".}
proc fcQEventPoint_screenPos(self: pointer, ): pointer {.importc: "QEventPoint_screenPos".}
proc fcQEventPoint_startScreenPos(self: pointer, ): pointer {.importc: "QEventPoint_startScreenPos".}
proc fcQEventPoint_startNormalizedPos(self: pointer, ): pointer {.importc: "QEventPoint_startNormalizedPos".}
proc fcQEventPoint_normalizedPos(self: pointer, ): pointer {.importc: "QEventPoint_normalizedPos".}
proc fcQEventPoint_lastPos(self: pointer, ): pointer {.importc: "QEventPoint_lastPos".}
proc fcQEventPoint_lastScenePos(self: pointer, ): pointer {.importc: "QEventPoint_lastScenePos".}
proc fcQEventPoint_lastScreenPos(self: pointer, ): pointer {.importc: "QEventPoint_lastScreenPos".}
proc fcQEventPoint_lastNormalizedPos(self: pointer, ): pointer {.importc: "QEventPoint_lastNormalizedPos".}
proc fcQEventPoint_velocity(self: pointer, ): pointer {.importc: "QEventPoint_velocity".}
proc fcQEventPoint_state(self: pointer, ): cint {.importc: "QEventPoint_state".}
proc fcQEventPoint_device(self: pointer, ): pointer {.importc: "QEventPoint_device".}
proc fcQEventPoint_id(self: pointer, ): cint {.importc: "QEventPoint_id".}
proc fcQEventPoint_uniqueId(self: pointer, ): pointer {.importc: "QEventPoint_uniqueId".}
proc fcQEventPoint_timestamp(self: pointer, ): culong {.importc: "QEventPoint_timestamp".}
proc fcQEventPoint_lastTimestamp(self: pointer, ): culong {.importc: "QEventPoint_lastTimestamp".}
proc fcQEventPoint_pressTimestamp(self: pointer, ): culong {.importc: "QEventPoint_pressTimestamp".}
proc fcQEventPoint_timeHeld(self: pointer, ): float64 {.importc: "QEventPoint_timeHeld".}
proc fcQEventPoint_pressure(self: pointer, ): float64 {.importc: "QEventPoint_pressure".}
proc fcQEventPoint_rotation(self: pointer, ): float64 {.importc: "QEventPoint_rotation".}
proc fcQEventPoint_ellipseDiameters(self: pointer, ): pointer {.importc: "QEventPoint_ellipseDiameters".}
proc fcQEventPoint_isAccepted(self: pointer, ): bool {.importc: "QEventPoint_isAccepted".}
proc fcQEventPoint_setAccepted(self: pointer, ): void {.importc: "QEventPoint_setAccepted".}
proc fcQEventPoint_setAccepted1(self: pointer, accepted: bool): void {.importc: "QEventPoint_setAccepted1".}
proc fcQEventPoint_delete(self: pointer) {.importc: "QEventPoint_delete".}


func init*(T: type gen_qeventpoint_types.QEventPoint, h: ptr cQEventPoint): gen_qeventpoint_types.QEventPoint =
  T(h: h)
proc create*(T: type gen_qeventpoint_types.QEventPoint, ): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint.init(fcQEventPoint_new())

proc create*(T: type gen_qeventpoint_types.QEventPoint, pointId: cint, state: cint, scenePosition: gen_qpoint_types.QPointF, globalPosition: gen_qpoint_types.QPointF): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint.init(fcQEventPoint_new2(pointId, cint(state), scenePosition.h, globalPosition.h))

proc create*(T: type gen_qeventpoint_types.QEventPoint, other: gen_qeventpoint_types.QEventPoint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint.init(fcQEventPoint_new3(other.h))

proc create*(T: type gen_qeventpoint_types.QEventPoint, id: cint): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint.init(fcQEventPoint_new4(id))

proc create*(T: type gen_qeventpoint_types.QEventPoint, id: cint, device: gen_qpointingdevice_types.QPointingDevice): gen_qeventpoint_types.QEventPoint =
  gen_qeventpoint_types.QEventPoint.init(fcQEventPoint_new5(id, device.h))

proc operatorAssign*(self: gen_qeventpoint_types.QEventPoint, other: gen_qeventpoint_types.QEventPoint): void =
  fcQEventPoint_operatorAssign(self.h, other.h)

proc operatorEqual*(self: gen_qeventpoint_types.QEventPoint, other: gen_qeventpoint_types.QEventPoint): bool =
  fcQEventPoint_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qeventpoint_types.QEventPoint, other: gen_qeventpoint_types.QEventPoint): bool =
  fcQEventPoint_operatorNotEqual(self.h, other.h)

proc swap*(self: gen_qeventpoint_types.QEventPoint, other: gen_qeventpoint_types.QEventPoint): void =
  fcQEventPoint_swap(self.h, other.h)

proc position*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_position(self.h))

proc pressPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_pressPosition(self.h))

proc grabPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_grabPosition(self.h))

proc lastPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_lastPosition(self.h))

proc scenePosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_scenePosition(self.h))

proc scenePressPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_scenePressPosition(self.h))

proc sceneGrabPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_sceneGrabPosition(self.h))

proc sceneLastPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_sceneLastPosition(self.h))

proc globalPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_globalPosition(self.h))

proc globalPressPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_globalPressPosition(self.h))

proc globalGrabPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_globalGrabPosition(self.h))

proc globalLastPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_globalLastPosition(self.h))

proc normalizedPosition*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_normalizedPosition(self.h))

proc pos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_pos(self.h))

proc startPos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_startPos(self.h))

proc scenePos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_scenePos(self.h))

proc startScenePos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_startScenePos(self.h))

proc screenPos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_screenPos(self.h))

proc startScreenPos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_startScreenPos(self.h))

proc startNormalizedPos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_startNormalizedPos(self.h))

proc normalizedPos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_normalizedPos(self.h))

proc lastPos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_lastPos(self.h))

proc lastScenePos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_lastScenePos(self.h))

proc lastScreenPos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_lastScreenPos(self.h))

proc lastNormalizedPos*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQEventPoint_lastNormalizedPos(self.h))

proc velocity*(self: gen_qeventpoint_types.QEventPoint, ): gen_qvectornd_types.QVector2D =
  gen_qvectornd_types.QVector2D(h: fcQEventPoint_velocity(self.h))

proc state*(self: gen_qeventpoint_types.QEventPoint, ): cint =
  cint(fcQEventPoint_state(self.h))

proc device*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpointingdevice_types.QPointingDevice =
  gen_qpointingdevice_types.QPointingDevice(h: fcQEventPoint_device(self.h))

proc id*(self: gen_qeventpoint_types.QEventPoint, ): cint =
  fcQEventPoint_id(self.h)

proc uniqueId*(self: gen_qeventpoint_types.QEventPoint, ): gen_qpointingdevice_types.QPointingDeviceUniqueId =
  gen_qpointingdevice_types.QPointingDeviceUniqueId(h: fcQEventPoint_uniqueId(self.h))

proc timestamp*(self: gen_qeventpoint_types.QEventPoint, ): culong =
  fcQEventPoint_timestamp(self.h)

proc lastTimestamp*(self: gen_qeventpoint_types.QEventPoint, ): culong =
  fcQEventPoint_lastTimestamp(self.h)

proc pressTimestamp*(self: gen_qeventpoint_types.QEventPoint, ): culong =
  fcQEventPoint_pressTimestamp(self.h)

proc timeHeld*(self: gen_qeventpoint_types.QEventPoint, ): float64 =
  fcQEventPoint_timeHeld(self.h)

proc pressure*(self: gen_qeventpoint_types.QEventPoint, ): float64 =
  fcQEventPoint_pressure(self.h)

proc rotation*(self: gen_qeventpoint_types.QEventPoint, ): float64 =
  fcQEventPoint_rotation(self.h)

proc ellipseDiameters*(self: gen_qeventpoint_types.QEventPoint, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQEventPoint_ellipseDiameters(self.h))

proc isAccepted*(self: gen_qeventpoint_types.QEventPoint, ): bool =
  fcQEventPoint_isAccepted(self.h)

proc setAccepted*(self: gen_qeventpoint_types.QEventPoint, ): void =
  fcQEventPoint_setAccepted(self.h)

proc setAccepted*(self: gen_qeventpoint_types.QEventPoint, accepted: bool): void =
  fcQEventPoint_setAccepted1(self.h, accepted)

proc delete*(self: gen_qeventpoint_types.QEventPoint) =
  fcQEventPoint_delete(self.h)
