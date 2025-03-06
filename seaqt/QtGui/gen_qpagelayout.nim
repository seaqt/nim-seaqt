import ./Qt6Gui_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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


type QPageLayoutUnitEnum* = distinct cint
template Millimeter*(_: type QPageLayoutUnitEnum): untyped = 0
template Point*(_: type QPageLayoutUnitEnum): untyped = 1
template Inch*(_: type QPageLayoutUnitEnum): untyped = 2
template Pica*(_: type QPageLayoutUnitEnum): untyped = 3
template Didot*(_: type QPageLayoutUnitEnum): untyped = 4
template Cicero*(_: type QPageLayoutUnitEnum): untyped = 5


type QPageLayoutOrientationEnum* = distinct cint
template Portrait*(_: type QPageLayoutOrientationEnum): untyped = 0
template Landscape*(_: type QPageLayoutOrientationEnum): untyped = 1


type QPageLayoutModeEnum* = distinct cint
template StandardMode*(_: type QPageLayoutModeEnum): untyped = 0
template FullPageMode*(_: type QPageLayoutModeEnum): untyped = 1


import ./gen_qpagelayout_types
export gen_qpagelayout_types

import
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qrect_types,
  ./gen_qpagesize_types
export
  gen_qmargins_types,
  gen_qrect_types,
  gen_qpagesize_types

type cQPageLayout*{.exportc: "QPageLayout", incompleteStruct.} = object

proc fcQPageLayout_operatorAssign(self: pointer, other: pointer): void {.importc: "QPageLayout_operatorAssign".}
proc fcQPageLayout_swap(self: pointer, other: pointer): void {.importc: "QPageLayout_swap".}
proc fcQPageLayout_isEquivalentTo(self: pointer, other: pointer): bool {.importc: "QPageLayout_isEquivalentTo".}
proc fcQPageLayout_isValid(self: pointer, ): bool {.importc: "QPageLayout_isValid".}
proc fcQPageLayout_setMode(self: pointer, mode: cint): void {.importc: "QPageLayout_setMode".}
proc fcQPageLayout_mode(self: pointer, ): cint {.importc: "QPageLayout_mode".}
proc fcQPageLayout_setPageSize(self: pointer, pageSize: pointer): void {.importc: "QPageLayout_setPageSize".}
proc fcQPageLayout_pageSize(self: pointer, ): pointer {.importc: "QPageLayout_pageSize".}
proc fcQPageLayout_setOrientation(self: pointer, orientation: cint): void {.importc: "QPageLayout_setOrientation".}
proc fcQPageLayout_orientation(self: pointer, ): cint {.importc: "QPageLayout_orientation".}
proc fcQPageLayout_setUnits(self: pointer, units: cint): void {.importc: "QPageLayout_setUnits".}
proc fcQPageLayout_units(self: pointer, ): cint {.importc: "QPageLayout_units".}
proc fcQPageLayout_setMargins(self: pointer, margins: pointer): bool {.importc: "QPageLayout_setMargins".}
proc fcQPageLayout_setLeftMargin(self: pointer, leftMargin: float64): bool {.importc: "QPageLayout_setLeftMargin".}
proc fcQPageLayout_setRightMargin(self: pointer, rightMargin: float64): bool {.importc: "QPageLayout_setRightMargin".}
proc fcQPageLayout_setTopMargin(self: pointer, topMargin: float64): bool {.importc: "QPageLayout_setTopMargin".}
proc fcQPageLayout_setBottomMargin(self: pointer, bottomMargin: float64): bool {.importc: "QPageLayout_setBottomMargin".}
proc fcQPageLayout_margins(self: pointer, ): pointer {.importc: "QPageLayout_margins".}
proc fcQPageLayout_marginsWithUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_marginsWithUnits".}
proc fcQPageLayout_marginsPoints(self: pointer, ): pointer {.importc: "QPageLayout_marginsPoints".}
proc fcQPageLayout_marginsPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_marginsPixels".}
proc fcQPageLayout_setMinimumMargins(self: pointer, minMargins: pointer): void {.importc: "QPageLayout_setMinimumMargins".}
proc fcQPageLayout_minimumMargins(self: pointer, ): pointer {.importc: "QPageLayout_minimumMargins".}
proc fcQPageLayout_maximumMargins(self: pointer, ): pointer {.importc: "QPageLayout_maximumMargins".}
proc fcQPageLayout_fullRect(self: pointer, ): pointer {.importc: "QPageLayout_fullRect".}
proc fcQPageLayout_fullRectWithUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_fullRectWithUnits".}
proc fcQPageLayout_fullRectPoints(self: pointer, ): pointer {.importc: "QPageLayout_fullRectPoints".}
proc fcQPageLayout_fullRectPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_fullRectPixels".}
proc fcQPageLayout_paintRect(self: pointer, ): pointer {.importc: "QPageLayout_paintRect".}
proc fcQPageLayout_paintRectWithUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_paintRectWithUnits".}
proc fcQPageLayout_paintRectPoints(self: pointer, ): pointer {.importc: "QPageLayout_paintRectPoints".}
proc fcQPageLayout_paintRectPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_paintRectPixels".}
proc fcQPageLayout_setPageSize2(self: pointer, pageSize: pointer, minMargins: pointer): void {.importc: "QPageLayout_setPageSize2".}
proc fcQPageLayout_new(): ptr cQPageLayout {.importc: "QPageLayout_new".}
proc fcQPageLayout_new2(pageSize: pointer, orientation: cint, margins: pointer): ptr cQPageLayout {.importc: "QPageLayout_new2".}
proc fcQPageLayout_new3(other: pointer): ptr cQPageLayout {.importc: "QPageLayout_new3".}
proc fcQPageLayout_new4(pageSize: pointer, orientation: cint, margins: pointer, units: cint): ptr cQPageLayout {.importc: "QPageLayout_new4".}
proc fcQPageLayout_new5(pageSize: pointer, orientation: cint, margins: pointer, units: cint, minMargins: pointer): ptr cQPageLayout {.importc: "QPageLayout_new5".}

proc operatorAssign*(self: gen_qpagelayout_types.QPageLayout, other: gen_qpagelayout_types.QPageLayout): void =
  fcQPageLayout_operatorAssign(self.h, other.h)

proc swap*(self: gen_qpagelayout_types.QPageLayout, other: gen_qpagelayout_types.QPageLayout): void =
  fcQPageLayout_swap(self.h, other.h)

proc isEquivalentTo*(self: gen_qpagelayout_types.QPageLayout, other: gen_qpagelayout_types.QPageLayout): bool =
  fcQPageLayout_isEquivalentTo(self.h, other.h)

proc isValid*(self: gen_qpagelayout_types.QPageLayout, ): bool =
  fcQPageLayout_isValid(self.h)

proc setMode*(self: gen_qpagelayout_types.QPageLayout, mode: cint): void =
  fcQPageLayout_setMode(self.h, cint(mode))

proc mode*(self: gen_qpagelayout_types.QPageLayout, ): cint =
  cint(fcQPageLayout_mode(self.h))

proc setPageSize*(self: gen_qpagelayout_types.QPageLayout, pageSize: gen_qpagesize_types.QPageSize): void =
  fcQPageLayout_setPageSize(self.h, pageSize.h)

proc pageSize*(self: gen_qpagelayout_types.QPageLayout, ): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageLayout_pageSize(self.h), owned: true)

proc setOrientation*(self: gen_qpagelayout_types.QPageLayout, orientation: cint): void =
  fcQPageLayout_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qpagelayout_types.QPageLayout, ): cint =
  cint(fcQPageLayout_orientation(self.h))

proc setUnits*(self: gen_qpagelayout_types.QPageLayout, units: cint): void =
  fcQPageLayout_setUnits(self.h, cint(units))

proc units*(self: gen_qpagelayout_types.QPageLayout, ): cint =
  cint(fcQPageLayout_units(self.h))

proc setMargins*(self: gen_qpagelayout_types.QPageLayout, margins: gen_qmargins_types.QMarginsF): bool =
  fcQPageLayout_setMargins(self.h, margins.h)

proc setLeftMargin*(self: gen_qpagelayout_types.QPageLayout, leftMargin: float64): bool =
  fcQPageLayout_setLeftMargin(self.h, leftMargin)

proc setRightMargin*(self: gen_qpagelayout_types.QPageLayout, rightMargin: float64): bool =
  fcQPageLayout_setRightMargin(self.h, rightMargin)

proc setTopMargin*(self: gen_qpagelayout_types.QPageLayout, topMargin: float64): bool =
  fcQPageLayout_setTopMargin(self.h, topMargin)

proc setBottomMargin*(self: gen_qpagelayout_types.QPageLayout, bottomMargin: float64): bool =
  fcQPageLayout_setBottomMargin(self.h, bottomMargin)

proc margins*(self: gen_qpagelayout_types.QPageLayout, ): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQPageLayout_margins(self.h), owned: true)

proc margins*(self: gen_qpagelayout_types.QPageLayout, units: cint): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQPageLayout_marginsWithUnits(self.h, cint(units)), owned: true)

proc marginsPoints*(self: gen_qpagelayout_types.QPageLayout, ): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQPageLayout_marginsPoints(self.h), owned: true)

proc marginsPixels*(self: gen_qpagelayout_types.QPageLayout, resolution: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQPageLayout_marginsPixels(self.h, resolution), owned: true)

proc setMinimumMargins*(self: gen_qpagelayout_types.QPageLayout, minMargins: gen_qmargins_types.QMarginsF): void =
  fcQPageLayout_setMinimumMargins(self.h, minMargins.h)

proc minimumMargins*(self: gen_qpagelayout_types.QPageLayout, ): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQPageLayout_minimumMargins(self.h), owned: true)

proc maximumMargins*(self: gen_qpagelayout_types.QPageLayout, ): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQPageLayout_maximumMargins(self.h), owned: true)

proc fullRect*(self: gen_qpagelayout_types.QPageLayout, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageLayout_fullRect(self.h), owned: true)

proc fullRect*(self: gen_qpagelayout_types.QPageLayout, units: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageLayout_fullRectWithUnits(self.h, cint(units)), owned: true)

proc fullRectPoints*(self: gen_qpagelayout_types.QPageLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageLayout_fullRectPoints(self.h), owned: true)

proc fullRectPixels*(self: gen_qpagelayout_types.QPageLayout, resolution: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageLayout_fullRectPixels(self.h, resolution), owned: true)

proc paintRect*(self: gen_qpagelayout_types.QPageLayout, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageLayout_paintRect(self.h), owned: true)

proc paintRect*(self: gen_qpagelayout_types.QPageLayout, units: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageLayout_paintRectWithUnits(self.h, cint(units)), owned: true)

proc paintRectPoints*(self: gen_qpagelayout_types.QPageLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageLayout_paintRectPoints(self.h), owned: true)

proc paintRectPixels*(self: gen_qpagelayout_types.QPageLayout, resolution: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageLayout_paintRectPixels(self.h, resolution), owned: true)

proc setPageSize*(self: gen_qpagelayout_types.QPageLayout, pageSize: gen_qpagesize_types.QPageSize, minMargins: gen_qmargins_types.QMarginsF): void =
  fcQPageLayout_setPageSize2(self.h, pageSize.h, minMargins.h)

proc create*(T: type gen_qpagelayout_types.QPageLayout): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new(), owned: true)

proc create*(T: type gen_qpagelayout_types.QPageLayout,
    pageSize: gen_qpagesize_types.QPageSize, orientation: cint, margins: gen_qmargins_types.QMarginsF): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new2(pageSize.h, cint(orientation), margins.h), owned: true)

proc create*(T: type gen_qpagelayout_types.QPageLayout,
    other: gen_qpagelayout_types.QPageLayout): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new3(other.h), owned: true)

proc create*(T: type gen_qpagelayout_types.QPageLayout,
    pageSize: gen_qpagesize_types.QPageSize, orientation: cint, margins: gen_qmargins_types.QMarginsF, units: cint): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new4(pageSize.h, cint(orientation), margins.h, cint(units)), owned: true)

proc create*(T: type gen_qpagelayout_types.QPageLayout,
    pageSize: gen_qpagesize_types.QPageSize, orientation: cint, margins: gen_qmargins_types.QMarginsF, units: cint, minMargins: gen_qmargins_types.QMarginsF): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new5(pageSize.h, cint(orientation), margins.h, cint(units), minMargins.h), owned: true)

