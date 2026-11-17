import ./qtgui_pkg

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


type QPageLayoutOutOfBoundsPolicyEnum* = distinct cint
template Reject*(_: type QPageLayoutOutOfBoundsPolicyEnum): untyped = 0
template Clamp*(_: type QPageLayoutOutOfBoundsPolicyEnum): untyped = 1


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

proc fcQPageLayout_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QPageLayout_operatorAssign".}
proc fcQPageLayout_swap(self: pointer, other: pointer): void {.importc: "QPageLayout_swap".}
proc fcQPageLayout_isEquivalentTo(self: pointer, other: pointer): bool {.importc: "QPageLayout_isEquivalentTo".}
proc fcQPageLayout_isValid(self: pointer): bool {.importc: "QPageLayout_isValid".}
proc fcQPageLayout_setMode(self: pointer, mode: cint): void {.importc: "QPageLayout_setMode".}
proc fcQPageLayout_mode(self: pointer): cint {.importc: "QPageLayout_mode".}
proc fcQPageLayout_setPageSizePageSize(self: pointer, pageSize: pointer): void {.importc: "QPageLayout_setPageSize_pageSize".}
proc fcQPageLayout_pageSize(self: pointer): pointer {.importc: "QPageLayout_pageSize".}
proc fcQPageLayout_setOrientation(self: pointer, orientation: cint): void {.importc: "QPageLayout_setOrientation".}
proc fcQPageLayout_orientation(self: pointer): cint {.importc: "QPageLayout_orientation".}
proc fcQPageLayout_setUnits(self: pointer, units: cint): void {.importc: "QPageLayout_setUnits".}
proc fcQPageLayout_units(self: pointer): cint {.importc: "QPageLayout_units".}
proc fcQPageLayout_setMarginsMargins(self: pointer, margins: pointer): bool {.importc: "QPageLayout_setMargins_margins".}
proc fcQPageLayout_setLeftMarginLeftMargin(self: pointer, leftMargin: float64): bool {.importc: "QPageLayout_setLeftMargin_leftMargin".}
proc fcQPageLayout_setRightMarginRightMargin(self: pointer, rightMargin: float64): bool {.importc: "QPageLayout_setRightMargin_rightMargin".}
proc fcQPageLayout_setTopMarginTopMargin(self: pointer, topMargin: float64): bool {.importc: "QPageLayout_setTopMargin_topMargin".}
proc fcQPageLayout_setBottomMarginBottomMargin(self: pointer, bottomMargin: float64): bool {.importc: "QPageLayout_setBottomMargin_bottomMargin".}
proc fcQPageLayout_margins(self: pointer): pointer {.importc: "QPageLayout_margins".}
proc fcQPageLayout_marginsUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_margins_units".}
proc fcQPageLayout_marginsPoints(self: pointer): pointer {.importc: "QPageLayout_marginsPoints".}
proc fcQPageLayout_marginsPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_marginsPixels".}
proc fcQPageLayout_setMinimumMargins(self: pointer, minMargins: pointer): void {.importc: "QPageLayout_setMinimumMargins".}
proc fcQPageLayout_minimumMargins(self: pointer): pointer {.importc: "QPageLayout_minimumMargins".}
proc fcQPageLayout_maximumMargins(self: pointer): pointer {.importc: "QPageLayout_maximumMargins".}
proc fcQPageLayout_fullRect(self: pointer): pointer {.importc: "QPageLayout_fullRect".}
proc fcQPageLayout_fullRectUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_fullRect_units".}
proc fcQPageLayout_fullRectPoints(self: pointer): pointer {.importc: "QPageLayout_fullRectPoints".}
proc fcQPageLayout_fullRectPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_fullRectPixels".}
proc fcQPageLayout_paintRect(self: pointer): pointer {.importc: "QPageLayout_paintRect".}
proc fcQPageLayout_paintRectUnits(self: pointer, units: cint): pointer {.importc: "QPageLayout_paintRect_units".}
proc fcQPageLayout_paintRectPoints(self: pointer): pointer {.importc: "QPageLayout_paintRectPoints".}
proc fcQPageLayout_paintRectPixels(self: pointer, resolution: cint): pointer {.importc: "QPageLayout_paintRectPixels".}
proc fcQPageLayout_setPageSizePageSizeMinMargins(self: pointer, pageSize: pointer, minMargins: pointer): void {.importc: "QPageLayout_setPageSize_pageSize_minMargins".}
proc fcQPageLayout_setMarginsMarginsOutOfBoundsPolicy(self: pointer, margins: pointer, outOfBoundsPolicy: cint): bool {.importc: "QPageLayout_setMargins_margins_outOfBoundsPolicy".}
proc fcQPageLayout_setLeftMarginLeftMarginOutOfBoundsPolicy(self: pointer, leftMargin: float64, outOfBoundsPolicy: cint): bool {.importc: "QPageLayout_setLeftMargin_leftMargin_outOfBoundsPolicy".}
proc fcQPageLayout_setRightMarginRightMarginOutOfBoundsPolicy(self: pointer, rightMargin: float64, outOfBoundsPolicy: cint): bool {.importc: "QPageLayout_setRightMargin_rightMargin_outOfBoundsPolicy".}
proc fcQPageLayout_setTopMarginTopMarginOutOfBoundsPolicy(self: pointer, topMargin: float64, outOfBoundsPolicy: cint): bool {.importc: "QPageLayout_setTopMargin_topMargin_outOfBoundsPolicy".}
proc fcQPageLayout_setBottomMarginBottomMarginOutOfBoundsPolicy(self: pointer, bottomMargin: float64, outOfBoundsPolicy: cint): bool {.importc: "QPageLayout_setBottomMargin_bottomMargin_outOfBoundsPolicy".}
proc fcQPageLayout_new(): ptr cQPageLayout {.importc: "QPageLayout_new".}
proc fcQPageLayout_new2(pageSize: pointer, orientation: cint, margins: pointer): ptr cQPageLayout {.importc: "QPageLayout_new_pageSize_orientation_margins".}
proc fcQPageLayout_new3(fromVal: pointer): ptr cQPageLayout {.importc: "QPageLayout_new_from".}
proc fcQPageLayout_new4(pageSize: pointer, orientation: cint, margins: pointer, units: cint): ptr cQPageLayout {.importc: "QPageLayout_new_pageSize_orientation_margins_units".}
proc fcQPageLayout_new5(pageSize: pointer, orientation: cint, margins: pointer, units: cint, minMargins: pointer): ptr cQPageLayout {.importc: "QPageLayout_new_pageSize_orientation_margins_units_minMargins".}

proc operatorAssign*(self: gen_qpagelayout_types.QPageLayout, fromVal: gen_qpagelayout_types.QPageLayout): void =
  fcQPageLayout_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qpagelayout_types.QPageLayout, other: gen_qpagelayout_types.QPageLayout): void =
  fcQPageLayout_swap(self.h, other.h)

proc isEquivalentTo*(self: gen_qpagelayout_types.QPageLayout, other: gen_qpagelayout_types.QPageLayout): bool =
  fcQPageLayout_isEquivalentTo(self.h, other.h)

proc isValid*(self: gen_qpagelayout_types.QPageLayout): bool =
  fcQPageLayout_isValid(self.h)

proc setMode*(self: gen_qpagelayout_types.QPageLayout, mode: cint): void =
  fcQPageLayout_setMode(self.h, cint(mode))

proc mode*(self: gen_qpagelayout_types.QPageLayout): cint =
  cint(fcQPageLayout_mode(self.h))

proc setPageSize*(self: gen_qpagelayout_types.QPageLayout, pageSize: gen_qpagesize_types.QPageSize): void =
  fcQPageLayout_setPageSizePageSize(self.h, pageSize.h)

proc pageSize*(self: gen_qpagelayout_types.QPageLayout): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageLayout_pageSize(self.h), owned: true)

proc setOrientation*(self: gen_qpagelayout_types.QPageLayout, orientation: cint): void =
  fcQPageLayout_setOrientation(self.h, cint(orientation))

proc orientation*(self: gen_qpagelayout_types.QPageLayout): cint =
  cint(fcQPageLayout_orientation(self.h))

proc setUnits*(self: gen_qpagelayout_types.QPageLayout, units: cint): void =
  fcQPageLayout_setUnits(self.h, cint(units))

proc units*(self: gen_qpagelayout_types.QPageLayout): cint =
  cint(fcQPageLayout_units(self.h))

proc setMargins*(self: gen_qpagelayout_types.QPageLayout, margins: gen_qmargins_types.QMarginsF): bool =
  fcQPageLayout_setMarginsMargins(self.h, margins.h)

proc setLeftMargin*(self: gen_qpagelayout_types.QPageLayout, leftMargin: float64): bool =
  fcQPageLayout_setLeftMarginLeftMargin(self.h, leftMargin)

proc setRightMargin*(self: gen_qpagelayout_types.QPageLayout, rightMargin: float64): bool =
  fcQPageLayout_setRightMarginRightMargin(self.h, rightMargin)

proc setTopMargin*(self: gen_qpagelayout_types.QPageLayout, topMargin: float64): bool =
  fcQPageLayout_setTopMarginTopMargin(self.h, topMargin)

proc setBottomMargin*(self: gen_qpagelayout_types.QPageLayout, bottomMargin: float64): bool =
  fcQPageLayout_setBottomMarginBottomMargin(self.h, bottomMargin)

proc margins*(self: gen_qpagelayout_types.QPageLayout): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQPageLayout_margins(self.h), owned: true)

proc margins*(self: gen_qpagelayout_types.QPageLayout, units: cint): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQPageLayout_marginsUnits(self.h, cint(units)), owned: true)

proc marginsPoints*(self: gen_qpagelayout_types.QPageLayout): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQPageLayout_marginsPoints(self.h), owned: true)

proc marginsPixels*(self: gen_qpagelayout_types.QPageLayout, resolution: cint): gen_qmargins_types.QMargins =
  gen_qmargins_types.QMargins(h: fcQPageLayout_marginsPixels(self.h, resolution), owned: true)

proc setMinimumMargins*(self: gen_qpagelayout_types.QPageLayout, minMargins: gen_qmargins_types.QMarginsF): void =
  fcQPageLayout_setMinimumMargins(self.h, minMargins.h)

proc minimumMargins*(self: gen_qpagelayout_types.QPageLayout): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQPageLayout_minimumMargins(self.h), owned: true)

proc maximumMargins*(self: gen_qpagelayout_types.QPageLayout): gen_qmargins_types.QMarginsF =
  gen_qmargins_types.QMarginsF(h: fcQPageLayout_maximumMargins(self.h), owned: true)

proc fullRect*(self: gen_qpagelayout_types.QPageLayout): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageLayout_fullRect(self.h), owned: true)

proc fullRect*(self: gen_qpagelayout_types.QPageLayout, units: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageLayout_fullRectUnits(self.h, cint(units)), owned: true)

proc fullRectPoints*(self: gen_qpagelayout_types.QPageLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageLayout_fullRectPoints(self.h), owned: true)

proc fullRectPixels*(self: gen_qpagelayout_types.QPageLayout, resolution: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageLayout_fullRectPixels(self.h, resolution), owned: true)

proc paintRect*(self: gen_qpagelayout_types.QPageLayout): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageLayout_paintRect(self.h), owned: true)

proc paintRect*(self: gen_qpagelayout_types.QPageLayout, units: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageLayout_paintRectUnits(self.h, cint(units)), owned: true)

proc paintRectPoints*(self: gen_qpagelayout_types.QPageLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageLayout_paintRectPoints(self.h), owned: true)

proc paintRectPixels*(self: gen_qpagelayout_types.QPageLayout, resolution: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageLayout_paintRectPixels(self.h, resolution), owned: true)

proc setPageSize*(self: gen_qpagelayout_types.QPageLayout, pageSize: gen_qpagesize_types.QPageSize, minMargins: gen_qmargins_types.QMarginsF): void =
  fcQPageLayout_setPageSizePageSizeMinMargins(self.h, pageSize.h, minMargins.h)

proc setMargins*(self: gen_qpagelayout_types.QPageLayout, margins: gen_qmargins_types.QMarginsF, outOfBoundsPolicy: cint): bool =
  fcQPageLayout_setMarginsMarginsOutOfBoundsPolicy(self.h, margins.h, cint(outOfBoundsPolicy))

proc setLeftMargin*(self: gen_qpagelayout_types.QPageLayout, leftMargin: float64, outOfBoundsPolicy: cint): bool =
  fcQPageLayout_setLeftMarginLeftMarginOutOfBoundsPolicy(self.h, leftMargin, cint(outOfBoundsPolicy))

proc setRightMargin*(self: gen_qpagelayout_types.QPageLayout, rightMargin: float64, outOfBoundsPolicy: cint): bool =
  fcQPageLayout_setRightMarginRightMarginOutOfBoundsPolicy(self.h, rightMargin, cint(outOfBoundsPolicy))

proc setTopMargin*(self: gen_qpagelayout_types.QPageLayout, topMargin: float64, outOfBoundsPolicy: cint): bool =
  fcQPageLayout_setTopMarginTopMarginOutOfBoundsPolicy(self.h, topMargin, cint(outOfBoundsPolicy))

proc setBottomMargin*(self: gen_qpagelayout_types.QPageLayout, bottomMargin: float64, outOfBoundsPolicy: cint): bool =
  fcQPageLayout_setBottomMarginBottomMarginOutOfBoundsPolicy(self.h, bottomMargin, cint(outOfBoundsPolicy))

proc create*(T: type gen_qpagelayout_types.QPageLayout): gen_qpagelayout_types.QPageLayout =
  let tmp = gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new(), owned: true)
  tmp
proc create*(T: type gen_qpagelayout_types.QPageLayout,
    pageSize: gen_qpagesize_types.QPageSize, orientation: cint, margins: gen_qmargins_types.QMarginsF): gen_qpagelayout_types.QPageLayout =
  let tmp = gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new2(pageSize.h, cint(orientation), margins.h), owned: true)
  tmp
proc create*(T: type gen_qpagelayout_types.QPageLayout,
    fromVal: gen_qpagelayout_types.QPageLayout): gen_qpagelayout_types.QPageLayout =
  let tmp = gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new3(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qpagelayout_types.QPageLayout,
    pageSize: gen_qpagesize_types.QPageSize, orientation: cint, margins: gen_qmargins_types.QMarginsF, units: cint): gen_qpagelayout_types.QPageLayout =
  let tmp = gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new4(pageSize.h, cint(orientation), margins.h, cint(units)), owned: true)
  tmp
proc create*(T: type gen_qpagelayout_types.QPageLayout,
    pageSize: gen_qpagesize_types.QPageSize, orientation: cint, margins: gen_qmargins_types.QMarginsF, units: cint, minMargins: gen_qmargins_types.QMarginsF): gen_qpagelayout_types.QPageLayout =
  let tmp = gen_qpagelayout_types.QPageLayout(h: fcQPageLayout_new5(pageSize.h, cint(orientation), margins.h, cint(units), minMargins.h), owned: true)
  tmp
