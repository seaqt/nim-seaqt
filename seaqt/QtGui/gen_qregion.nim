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


type QRegionRegionTypeEnum* = distinct cint
template Rectangle*(_: type QRegionRegionTypeEnum): untyped = 0
template Ellipse*(_: type QRegionRegionTypeEnum): untyped = 1


import ./gen_qregion_types
export gen_qregion_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qbitmap_types
export
  gen_qpoint_types,
  gen_qrect_types,
  gen_qvariant_types,
  gen_qbitmap_types

type cQRegion*{.exportc: "QRegion", incompleteStruct.} = object

proc fcQRegion_operatorAssign(self: pointer, param1: pointer): void {.importc: "QRegion_operatorAssign".}
proc fcQRegion_swap(self: pointer, other: pointer): void {.importc: "QRegion_swap".}
proc fcQRegion_isEmpty(self: pointer): bool {.importc: "QRegion_isEmpty".}
proc fcQRegion_isNull(self: pointer): bool {.importc: "QRegion_isNull".}
proc fcQRegion_begin(self: pointer): pointer {.importc: "QRegion_begin".}
proc fcQRegion_cbegin(self: pointer): pointer {.importc: "QRegion_cbegin".}
proc fcQRegion_endX(self: pointer): pointer {.importc: "QRegion_end".}
proc fcQRegion_cend(self: pointer): pointer {.importc: "QRegion_cend".}
proc fcQRegion_contains(self: pointer, p: pointer): bool {.importc: "QRegion_contains".}
proc fcQRegion_containsWithQRect(self: pointer, r: pointer): bool {.importc: "QRegion_containsWithQRect".}
proc fcQRegion_translate(self: pointer, dx: cint, dy: cint): void {.importc: "QRegion_translate".}
proc fcQRegion_translateWithQPoint(self: pointer, p: pointer): void {.importc: "QRegion_translateWithQPoint".}
proc fcQRegion_translated(self: pointer, dx: cint, dy: cint): pointer {.importc: "QRegion_translated".}
proc fcQRegion_translatedWithQPoint(self: pointer, p: pointer): pointer {.importc: "QRegion_translatedWithQPoint".}
proc fcQRegion_united(self: pointer, r: pointer): pointer {.importc: "QRegion_united".}
proc fcQRegion_unitedWithQRect(self: pointer, r: pointer): pointer {.importc: "QRegion_unitedWithQRect".}
proc fcQRegion_intersected(self: pointer, r: pointer): pointer {.importc: "QRegion_intersected".}
proc fcQRegion_intersectedWithQRect(self: pointer, r: pointer): pointer {.importc: "QRegion_intersectedWithQRect".}
proc fcQRegion_subtracted(self: pointer, r: pointer): pointer {.importc: "QRegion_subtracted".}
proc fcQRegion_xored(self: pointer, r: pointer): pointer {.importc: "QRegion_xored".}
proc fcQRegion_intersects(self: pointer, r: pointer): bool {.importc: "QRegion_intersects".}
proc fcQRegion_intersectsWithQRect(self: pointer, r: pointer): bool {.importc: "QRegion_intersectsWithQRect".}
proc fcQRegion_boundingRect(self: pointer): pointer {.importc: "QRegion_boundingRect".}
proc fcQRegion_setRects(self: pointer, rect: pointer, num: cint): void {.importc: "QRegion_setRects".}
proc fcQRegion_rectCount(self: pointer): cint {.importc: "QRegion_rectCount".}
proc fcQRegion_operatorBitwiseOr(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorBitwiseOr".}
proc fcQRegion_operatorPlus(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorPlus".}
proc fcQRegion_operatorPlusWithQRect(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorPlusWithQRect".}
proc fcQRegion_operatorBitwiseAnd(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorBitwiseAnd".}
proc fcQRegion_operatorBitwiseAndWithQRect(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorBitwiseAndWithQRect".}
proc fcQRegion_operatorMinus(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorMinus".}
proc fcQRegion_operatorBitwiseNot(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorBitwiseNot".}
proc fcQRegion_operatorBitwiseOrAssign(self: pointer, r: pointer): void {.importc: "QRegion_operatorBitwiseOrAssign".}
proc fcQRegion_operatorPlusAssign(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorPlusAssign".}
proc fcQRegion_operatorPlusAssignWithQRect(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorPlusAssignWithQRect".}
proc fcQRegion_operatorBitwiseAndAssign(self: pointer, r: pointer): void {.importc: "QRegion_operatorBitwiseAndAssign".}
proc fcQRegion_operatorBitwiseAndAssignWithQRect(self: pointer, r: pointer): void {.importc: "QRegion_operatorBitwiseAndAssignWithQRect".}
proc fcQRegion_operatorMinusAssign(self: pointer, r: pointer): pointer {.importc: "QRegion_operatorMinusAssign".}
proc fcQRegion_operatorBitwiseNotAssign(self: pointer, r: pointer): void {.importc: "QRegion_operatorBitwiseNotAssign".}
proc fcQRegion_operatorEqual(self: pointer, r: pointer): bool {.importc: "QRegion_operatorEqual".}
proc fcQRegion_operatorNotEqual(self: pointer, r: pointer): bool {.importc: "QRegion_operatorNotEqual".}
proc fcQRegion_ToQVariant(self: pointer): pointer {.importc: "QRegion_ToQVariant".}
proc fcQRegion_new(): ptr cQRegion {.importc: "QRegion_new".}
proc fcQRegion_new2(x: cint, y: cint, w: cint, h: cint): ptr cQRegion {.importc: "QRegion_new2".}
proc fcQRegion_new3(r: pointer): ptr cQRegion {.importc: "QRegion_new3".}
proc fcQRegion_new4(region: pointer): ptr cQRegion {.importc: "QRegion_new4".}
proc fcQRegion_new5(bitmap: pointer): ptr cQRegion {.importc: "QRegion_new5".}
proc fcQRegion_new6(x: cint, y: cint, w: cint, h: cint, t: cint): ptr cQRegion {.importc: "QRegion_new6".}
proc fcQRegion_new7(r: pointer, t: cint): ptr cQRegion {.importc: "QRegion_new7".}

proc operatorAssign*(self: gen_qregion_types.QRegion, param1: gen_qregion_types.QRegion): void =
  fcQRegion_operatorAssign(self.h, param1.h)

proc swap*(self: gen_qregion_types.QRegion, other: gen_qregion_types.QRegion): void =
  fcQRegion_swap(self.h, other.h)

proc isEmpty*(self: gen_qregion_types.QRegion): bool =
  fcQRegion_isEmpty(self.h)

proc isNull*(self: gen_qregion_types.QRegion): bool =
  fcQRegion_isNull(self.h)

proc begin*(self: gen_qregion_types.QRegion): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRegion_begin(self.h), owned: false)

proc cbegin*(self: gen_qregion_types.QRegion): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRegion_cbegin(self.h), owned: false)

proc endX*(self: gen_qregion_types.QRegion): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRegion_endX(self.h), owned: false)

proc cend*(self: gen_qregion_types.QRegion): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRegion_cend(self.h), owned: false)

proc contains*(self: gen_qregion_types.QRegion, p: gen_qpoint_types.QPoint): bool =
  fcQRegion_contains(self.h, p.h)

proc contains*(self: gen_qregion_types.QRegion, r: gen_qrect_types.QRect): bool =
  fcQRegion_containsWithQRect(self.h, r.h)

proc translate*(self: gen_qregion_types.QRegion, dx: cint, dy: cint): void =
  fcQRegion_translate(self.h, dx, dy)

proc translate*(self: gen_qregion_types.QRegion, p: gen_qpoint_types.QPoint): void =
  fcQRegion_translateWithQPoint(self.h, p.h)

proc translated*(self: gen_qregion_types.QRegion, dx: cint, dy: cint): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_translated(self.h, dx, dy), owned: true)

proc translated*(self: gen_qregion_types.QRegion, p: gen_qpoint_types.QPoint): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_translatedWithQPoint(self.h, p.h), owned: true)

proc united*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_united(self.h, r.h), owned: true)

proc united*(self: gen_qregion_types.QRegion, r: gen_qrect_types.QRect): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_unitedWithQRect(self.h, r.h), owned: true)

proc intersected*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_intersected(self.h, r.h), owned: true)

proc intersected*(self: gen_qregion_types.QRegion, r: gen_qrect_types.QRect): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_intersectedWithQRect(self.h, r.h), owned: true)

proc subtracted*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_subtracted(self.h, r.h), owned: true)

proc xored*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_xored(self.h, r.h), owned: true)

proc intersects*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): bool =
  fcQRegion_intersects(self.h, r.h)

proc intersects*(self: gen_qregion_types.QRegion, r: gen_qrect_types.QRect): bool =
  fcQRegion_intersectsWithQRect(self.h, r.h)

proc boundingRect*(self: gen_qregion_types.QRegion): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQRegion_boundingRect(self.h), owned: true)

proc setRects*(self: gen_qregion_types.QRegion, rect: gen_qrect_types.QRect, num: cint): void =
  fcQRegion_setRects(self.h, rect.h, num)

proc rectCount*(self: gen_qregion_types.QRegion): cint =
  fcQRegion_rectCount(self.h)

proc operatorBitwiseOr*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorBitwiseOr(self.h, r.h), owned: true)

proc operatorPlus*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorPlus(self.h, r.h), owned: true)

proc operatorPlus*(self: gen_qregion_types.QRegion, r: gen_qrect_types.QRect): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorPlusWithQRect(self.h, r.h), owned: true)

proc operatorBitwiseAnd*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorBitwiseAnd(self.h, r.h), owned: true)

proc operatorBitwiseAnd*(self: gen_qregion_types.QRegion, r: gen_qrect_types.QRect): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorBitwiseAndWithQRect(self.h, r.h), owned: true)

proc operatorMinus*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorMinus(self.h, r.h), owned: true)

proc operatorBitwiseNot*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorBitwiseNot(self.h, r.h), owned: true)

proc operatorBitwiseOrAssign*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): void =
  fcQRegion_operatorBitwiseOrAssign(self.h, r.h)

proc operatorPlusAssign*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorPlusAssign(self.h, r.h), owned: false)

proc operatorPlusAssign*(self: gen_qregion_types.QRegion, r: gen_qrect_types.QRect): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorPlusAssignWithQRect(self.h, r.h), owned: false)

proc operatorBitwiseAndAssign*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): void =
  fcQRegion_operatorBitwiseAndAssign(self.h, r.h)

proc operatorBitwiseAndAssign*(self: gen_qregion_types.QRegion, r: gen_qrect_types.QRect): void =
  fcQRegion_operatorBitwiseAndAssignWithQRect(self.h, r.h)

proc operatorMinusAssign*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_operatorMinusAssign(self.h, r.h), owned: false)

proc operatorBitwiseNotAssign*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): void =
  fcQRegion_operatorBitwiseNotAssign(self.h, r.h)

proc operatorEqual*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): bool =
  fcQRegion_operatorEqual(self.h, r.h)

proc operatorNotEqual*(self: gen_qregion_types.QRegion, r: gen_qregion_types.QRegion): bool =
  fcQRegion_operatorNotEqual(self.h, r.h)

proc ToQVariant*(self: gen_qregion_types.QRegion): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQRegion_ToQVariant(self.h), owned: true)

proc create*(T: type gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_new(), owned: true)

proc create*(T: type gen_qregion_types.QRegion,
    x: cint, y: cint, w: cint, h: cint): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_new2(x, y, w, h), owned: true)

proc create*(T: type gen_qregion_types.QRegion,
    r: gen_qrect_types.QRect): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_new3(r.h), owned: true)

proc create*(T: type gen_qregion_types.QRegion,
    region: gen_qregion_types.QRegion): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_new4(region.h), owned: true)

proc create*(T: type gen_qregion_types.QRegion,
    bitmap: gen_qbitmap_types.QBitmap): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_new5(bitmap.h), owned: true)

proc create*(T: type gen_qregion_types.QRegion,
    x: cint, y: cint, w: cint, h: cint, t: cint): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_new6(x, y, w, h, cint(t)), owned: true)

proc create*(T: type gen_qregion_types.QRegion,
    r: gen_qrect_types.QRect, t: cint): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQRegion_new7(r.h, cint(t)), owned: true)

