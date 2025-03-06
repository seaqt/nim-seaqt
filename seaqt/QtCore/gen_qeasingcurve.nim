import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qeasingcurve.cpp", cflags).}


type QEasingCurveTypeEnum* = distinct cint
template Linear*(_: type QEasingCurveTypeEnum): untyped = 0
template InQuad*(_: type QEasingCurveTypeEnum): untyped = 1
template OutQuad*(_: type QEasingCurveTypeEnum): untyped = 2
template InOutQuad*(_: type QEasingCurveTypeEnum): untyped = 3
template OutInQuad*(_: type QEasingCurveTypeEnum): untyped = 4
template InCubic*(_: type QEasingCurveTypeEnum): untyped = 5
template OutCubic*(_: type QEasingCurveTypeEnum): untyped = 6
template InOutCubic*(_: type QEasingCurveTypeEnum): untyped = 7
template OutInCubic*(_: type QEasingCurveTypeEnum): untyped = 8
template InQuart*(_: type QEasingCurveTypeEnum): untyped = 9
template OutQuart*(_: type QEasingCurveTypeEnum): untyped = 10
template InOutQuart*(_: type QEasingCurveTypeEnum): untyped = 11
template OutInQuart*(_: type QEasingCurveTypeEnum): untyped = 12
template InQuint*(_: type QEasingCurveTypeEnum): untyped = 13
template OutQuint*(_: type QEasingCurveTypeEnum): untyped = 14
template InOutQuint*(_: type QEasingCurveTypeEnum): untyped = 15
template OutInQuint*(_: type QEasingCurveTypeEnum): untyped = 16
template InSine*(_: type QEasingCurveTypeEnum): untyped = 17
template OutSine*(_: type QEasingCurveTypeEnum): untyped = 18
template InOutSine*(_: type QEasingCurveTypeEnum): untyped = 19
template OutInSine*(_: type QEasingCurveTypeEnum): untyped = 20
template InExpo*(_: type QEasingCurveTypeEnum): untyped = 21
template OutExpo*(_: type QEasingCurveTypeEnum): untyped = 22
template InOutExpo*(_: type QEasingCurveTypeEnum): untyped = 23
template OutInExpo*(_: type QEasingCurveTypeEnum): untyped = 24
template InCirc*(_: type QEasingCurveTypeEnum): untyped = 25
template OutCirc*(_: type QEasingCurveTypeEnum): untyped = 26
template InOutCirc*(_: type QEasingCurveTypeEnum): untyped = 27
template OutInCirc*(_: type QEasingCurveTypeEnum): untyped = 28
template InElastic*(_: type QEasingCurveTypeEnum): untyped = 29
template OutElastic*(_: type QEasingCurveTypeEnum): untyped = 30
template InOutElastic*(_: type QEasingCurveTypeEnum): untyped = 31
template OutInElastic*(_: type QEasingCurveTypeEnum): untyped = 32
template InBack*(_: type QEasingCurveTypeEnum): untyped = 33
template OutBack*(_: type QEasingCurveTypeEnum): untyped = 34
template InOutBack*(_: type QEasingCurveTypeEnum): untyped = 35
template OutInBack*(_: type QEasingCurveTypeEnum): untyped = 36
template InBounce*(_: type QEasingCurveTypeEnum): untyped = 37
template OutBounce*(_: type QEasingCurveTypeEnum): untyped = 38
template InOutBounce*(_: type QEasingCurveTypeEnum): untyped = 39
template OutInBounce*(_: type QEasingCurveTypeEnum): untyped = 40
template InCurve*(_: type QEasingCurveTypeEnum): untyped = 41
template OutCurve*(_: type QEasingCurveTypeEnum): untyped = 42
template SineCurve*(_: type QEasingCurveTypeEnum): untyped = 43
template CosineCurve*(_: type QEasingCurveTypeEnum): untyped = 44
template BezierSpline*(_: type QEasingCurveTypeEnum): untyped = 45
template TCBSpline*(_: type QEasingCurveTypeEnum): untyped = 46
template Custom*(_: type QEasingCurveTypeEnum): untyped = 47
template NCurveTypes*(_: type QEasingCurveTypeEnum): untyped = 48


import ./gen_qeasingcurve_types
export gen_qeasingcurve_types

import
  ./gen_qobjectdefs_types,
  ./gen_qpoint_types
export
  gen_qobjectdefs_types,
  gen_qpoint_types

type cQEasingCurve*{.exportc: "QEasingCurve", incompleteStruct.} = object

proc fcQEasingCurve_operatorAssign(self: pointer, other: pointer): void {.importc: "QEasingCurve_operatorAssign".}
proc fcQEasingCurve_swap(self: pointer, other: pointer): void {.importc: "QEasingCurve_swap".}
proc fcQEasingCurve_operatorEqual(self: pointer, other: pointer): bool {.importc: "QEasingCurve_operatorEqual".}
proc fcQEasingCurve_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QEasingCurve_operatorNotEqual".}
proc fcQEasingCurve_amplitude(self: pointer, ): float64 {.importc: "QEasingCurve_amplitude".}
proc fcQEasingCurve_setAmplitude(self: pointer, amplitude: float64): void {.importc: "QEasingCurve_setAmplitude".}
proc fcQEasingCurve_period(self: pointer, ): float64 {.importc: "QEasingCurve_period".}
proc fcQEasingCurve_setPeriod(self: pointer, period: float64): void {.importc: "QEasingCurve_setPeriod".}
proc fcQEasingCurve_overshoot(self: pointer, ): float64 {.importc: "QEasingCurve_overshoot".}
proc fcQEasingCurve_setOvershoot(self: pointer, overshoot: float64): void {.importc: "QEasingCurve_setOvershoot".}
proc fcQEasingCurve_addCubicBezierSegment(self: pointer, c1: pointer, c2: pointer, endPoint: pointer): void {.importc: "QEasingCurve_addCubicBezierSegment".}
proc fcQEasingCurve_addTCBSegment(self: pointer, nextPoint: pointer, t: float64, c: float64, b: float64): void {.importc: "QEasingCurve_addTCBSegment".}
proc fcQEasingCurve_toCubicSpline(self: pointer, ): struct_miqt_array {.importc: "QEasingCurve_toCubicSpline".}
proc fcQEasingCurve_typeX(self: pointer, ): cint {.importc: "QEasingCurve_type".}
proc fcQEasingCurve_setType(self: pointer, typeVal: cint): void {.importc: "QEasingCurve_setType".}
proc fcQEasingCurve_valueForProgress(self: pointer, progress: float64): float64 {.importc: "QEasingCurve_valueForProgress".}
proc fcQEasingCurve_new(): ptr cQEasingCurve {.importc: "QEasingCurve_new".}
proc fcQEasingCurve_new2(other: pointer): ptr cQEasingCurve {.importc: "QEasingCurve_new2".}
proc fcQEasingCurve_new3(typeVal: cint): ptr cQEasingCurve {.importc: "QEasingCurve_new3".}
proc fcQEasingCurve_staticMetaObject(): pointer {.importc: "QEasingCurve_staticMetaObject".}
proc fcQEasingCurve_delete(self: pointer) {.importc: "QEasingCurve_delete".}

proc operatorAssign*(self: gen_qeasingcurve_types.QEasingCurve, other: gen_qeasingcurve_types.QEasingCurve): void =
  fcQEasingCurve_operatorAssign(self.h, other.h)

proc swap*(self: gen_qeasingcurve_types.QEasingCurve, other: gen_qeasingcurve_types.QEasingCurve): void =
  fcQEasingCurve_swap(self.h, other.h)

proc operatorEqual*(self: gen_qeasingcurve_types.QEasingCurve, other: gen_qeasingcurve_types.QEasingCurve): bool =
  fcQEasingCurve_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qeasingcurve_types.QEasingCurve, other: gen_qeasingcurve_types.QEasingCurve): bool =
  fcQEasingCurve_operatorNotEqual(self.h, other.h)

proc amplitude*(self: gen_qeasingcurve_types.QEasingCurve, ): float64 =
  fcQEasingCurve_amplitude(self.h)

proc setAmplitude*(self: gen_qeasingcurve_types.QEasingCurve, amplitude: float64): void =
  fcQEasingCurve_setAmplitude(self.h, amplitude)

proc period*(self: gen_qeasingcurve_types.QEasingCurve, ): float64 =
  fcQEasingCurve_period(self.h)

proc setPeriod*(self: gen_qeasingcurve_types.QEasingCurve, period: float64): void =
  fcQEasingCurve_setPeriod(self.h, period)

proc overshoot*(self: gen_qeasingcurve_types.QEasingCurve, ): float64 =
  fcQEasingCurve_overshoot(self.h)

proc setOvershoot*(self: gen_qeasingcurve_types.QEasingCurve, overshoot: float64): void =
  fcQEasingCurve_setOvershoot(self.h, overshoot)

proc addCubicBezierSegment*(self: gen_qeasingcurve_types.QEasingCurve, c1: gen_qpoint_types.QPointF, c2: gen_qpoint_types.QPointF, endPoint: gen_qpoint_types.QPointF): void =
  fcQEasingCurve_addCubicBezierSegment(self.h, c1.h, c2.h, endPoint.h)

proc addTCBSegment*(self: gen_qeasingcurve_types.QEasingCurve, nextPoint: gen_qpoint_types.QPointF, t: float64, c: float64, b: float64): void =
  fcQEasingCurve_addTCBSegment(self.h, nextPoint.h, t, c, b)

proc toCubicSpline*(self: gen_qeasingcurve_types.QEasingCurve, ): seq[gen_qpoint_types.QPointF] =
  var v_ma = fcQEasingCurve_toCubicSpline(self.h)
  var vx_ret = newSeq[gen_qpoint_types.QPointF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpoint_types.QPointF(h: v_outCast[i])
  vx_ret

proc typeX*(self: gen_qeasingcurve_types.QEasingCurve, ): cint =
  cint(fcQEasingCurve_typeX(self.h))

proc setType*(self: gen_qeasingcurve_types.QEasingCurve, typeVal: cint): void =
  fcQEasingCurve_setType(self.h, cint(typeVal))

proc valueForProgress*(self: gen_qeasingcurve_types.QEasingCurve, progress: float64): float64 =
  fcQEasingCurve_valueForProgress(self.h, progress)

proc create*(T: type gen_qeasingcurve_types.QEasingCurve): gen_qeasingcurve_types.QEasingCurve =
  gen_qeasingcurve_types.QEasingCurve(h: fcQEasingCurve_new())

proc create*(T: type gen_qeasingcurve_types.QEasingCurve,
    other: gen_qeasingcurve_types.QEasingCurve): gen_qeasingcurve_types.QEasingCurve =
  gen_qeasingcurve_types.QEasingCurve(h: fcQEasingCurve_new2(other.h))

proc create*(T: type gen_qeasingcurve_types.QEasingCurve,
    typeVal: cint): gen_qeasingcurve_types.QEasingCurve =
  gen_qeasingcurve_types.QEasingCurve(h: fcQEasingCurve_new3(cint(typeVal)))

proc staticMetaObject*(_: type gen_qeasingcurve_types.QEasingCurve): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQEasingCurve_staticMetaObject())
proc delete*(self: gen_qeasingcurve_types.QEasingCurve) =
  fcQEasingCurve_delete(self.h)
