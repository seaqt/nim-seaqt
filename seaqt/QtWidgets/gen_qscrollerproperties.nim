import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qscrollerproperties.cpp", cflags).}


type QScrollerPropertiesOvershootPolicyEnum* = distinct cint
template OvershootWhenScrollable*(_: type QScrollerPropertiesOvershootPolicyEnum): untyped = 0
template OvershootAlwaysOff*(_: type QScrollerPropertiesOvershootPolicyEnum): untyped = 1
template OvershootAlwaysOn*(_: type QScrollerPropertiesOvershootPolicyEnum): untyped = 2


type QScrollerPropertiesFrameRatesEnum* = distinct cint
template Standard*(_: type QScrollerPropertiesFrameRatesEnum): untyped = 0
template Fps60*(_: type QScrollerPropertiesFrameRatesEnum): untyped = 1
template Fps30*(_: type QScrollerPropertiesFrameRatesEnum): untyped = 2
template Fps20*(_: type QScrollerPropertiesFrameRatesEnum): untyped = 3


type QScrollerPropertiesScrollMetricEnum* = distinct cint
template MousePressEventDelay*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 0
template DragStartDistance*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 1
template DragVelocitySmoothingFactor*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 2
template AxisLockThreshold*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 3
template ScrollingCurve*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 4
template DecelerationFactor*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 5
template MinimumVelocity*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 6
template MaximumVelocity*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 7
template MaximumClickThroughVelocity*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 8
template AcceleratingFlickMaximumTime*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 9
template AcceleratingFlickSpeedupFactor*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 10
template SnapPositionRatio*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 11
template SnapTime*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 12
template OvershootDragResistanceFactor*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 13
template OvershootDragDistanceFactor*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 14
template OvershootScrollDistanceFactor*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 15
template OvershootScrollTime*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 16
template HorizontalOvershootPolicy*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 17
template VerticalOvershootPolicy*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 18
template FrameRate*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 19
template ScrollMetricCount*(_: type QScrollerPropertiesScrollMetricEnum): untyped = 20


import ./gen_qscrollerproperties_types
export gen_qscrollerproperties_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQScrollerProperties*{.exportc: "QScrollerProperties", incompleteStruct.} = object

proc fcQScrollerProperties_operatorAssign(self: pointer, sp: pointer): void {.importc: "QScrollerProperties_operatorAssign".}
proc fcQScrollerProperties_operatorEqual(self: pointer, sp: pointer): bool {.importc: "QScrollerProperties_operatorEqual".}
proc fcQScrollerProperties_operatorNotEqual(self: pointer, sp: pointer): bool {.importc: "QScrollerProperties_operatorNotEqual".}
proc fcQScrollerProperties_setDefaultScrollerProperties(sp: pointer): void {.importc: "QScrollerProperties_setDefaultScrollerProperties".}
proc fcQScrollerProperties_unsetDefaultScrollerProperties(): void {.importc: "QScrollerProperties_unsetDefaultScrollerProperties".}
proc fcQScrollerProperties_scrollMetric(self: pointer, metric: cint): pointer {.importc: "QScrollerProperties_scrollMetric".}
proc fcQScrollerProperties_setScrollMetric(self: pointer, metric: cint, value: pointer): void {.importc: "QScrollerProperties_setScrollMetric".}
proc fcQScrollerProperties_new(): ptr cQScrollerProperties {.importc: "QScrollerProperties_new".}
proc fcQScrollerProperties_new2(sp: pointer): ptr cQScrollerProperties {.importc: "QScrollerProperties_new2".}
proc fcQScrollerProperties_delete(self: pointer) {.importc: "QScrollerProperties_delete".}

proc operatorAssign*(self: gen_qscrollerproperties_types.QScrollerProperties, sp: gen_qscrollerproperties_types.QScrollerProperties): void =
  fcQScrollerProperties_operatorAssign(self.h, sp.h)

proc operatorEqual*(self: gen_qscrollerproperties_types.QScrollerProperties, sp: gen_qscrollerproperties_types.QScrollerProperties): bool =
  fcQScrollerProperties_operatorEqual(self.h, sp.h)

proc operatorNotEqual*(self: gen_qscrollerproperties_types.QScrollerProperties, sp: gen_qscrollerproperties_types.QScrollerProperties): bool =
  fcQScrollerProperties_operatorNotEqual(self.h, sp.h)

proc setDefaultScrollerProperties*(_: type gen_qscrollerproperties_types.QScrollerProperties, sp: gen_qscrollerproperties_types.QScrollerProperties): void =
  fcQScrollerProperties_setDefaultScrollerProperties(sp.h)

proc unsetDefaultScrollerProperties*(_: type gen_qscrollerproperties_types.QScrollerProperties, ): void =
  fcQScrollerProperties_unsetDefaultScrollerProperties()

proc scrollMetric*(self: gen_qscrollerproperties_types.QScrollerProperties, metric: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQScrollerProperties_scrollMetric(self.h, cint(metric)))

proc setScrollMetric*(self: gen_qscrollerproperties_types.QScrollerProperties, metric: cint, value: gen_qvariant_types.QVariant): void =
  fcQScrollerProperties_setScrollMetric(self.h, cint(metric), value.h)

proc create*(T: type gen_qscrollerproperties_types.QScrollerProperties): gen_qscrollerproperties_types.QScrollerProperties =
  gen_qscrollerproperties_types.QScrollerProperties(h: fcQScrollerProperties_new())

proc create*(T: type gen_qscrollerproperties_types.QScrollerProperties,
    sp: gen_qscrollerproperties_types.QScrollerProperties): gen_qscrollerproperties_types.QScrollerProperties =
  gen_qscrollerproperties_types.QScrollerProperties(h: fcQScrollerProperties_new2(sp.h))

proc delete*(self: gen_qscrollerproperties_types.QScrollerProperties) =
  fcQScrollerProperties_delete(self.h)
