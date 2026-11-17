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


import ./gen_qcursor_types
export gen_qcursor_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qbitmap_types,
  ./gen_qpixmap_types,
  ./gen_qscreen_types
export
  gen_qpoint_types,
  gen_qvariant_types,
  gen_qbitmap_types,
  gen_qpixmap_types,
  gen_qscreen_types

type cQCursor*{.exportc: "QCursor", incompleteStruct.} = object

proc fcQCursor_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QCursor_operatorAssign".}
proc fcQCursor_swap(self: pointer, other: pointer): void {.importc: "QCursor_swap".}
proc fcQCursor_ToQVariant(self: pointer): pointer {.importc: "QCursor_ToQVariant".}
proc fcQCursor_shape(self: pointer): cint {.importc: "QCursor_shape".}
proc fcQCursor_setShape(self: pointer, newShape: cint): void {.importc: "QCursor_setShape".}
proc fcQCursor_bitmap(self: pointer): pointer {.importc: "QCursor_bitmap".}
proc fcQCursor_mask(self: pointer): pointer {.importc: "QCursor_mask".}
proc fcQCursor_bitmap_Qt_ReturnByValueConstant(self: pointer, param1: cint): pointer {.importc: "QCursor_bitmap_Qt_ReturnByValueConstant".}
proc fcQCursor_mask_Qt_ReturnByValueConstant(self: pointer, param1: cint): pointer {.importc: "QCursor_mask_Qt_ReturnByValueConstant".}
proc fcQCursor_pixmap(self: pointer): pointer {.importc: "QCursor_pixmap".}
proc fcQCursor_hotSpot(self: pointer): pointer {.importc: "QCursor_hotSpot".}
proc fcQCursor_pos(): pointer {.importc: "QCursor_pos".}
proc fcQCursor_posScreen(screen: pointer): pointer {.importc: "QCursor_pos_screen".}
proc fcQCursor_setPosXY(x: cint, y: cint): void {.importc: "QCursor_setPos_x_y".}
proc fcQCursor_setPosScreenXY(screen: pointer, x: cint, y: cint): void {.importc: "QCursor_setPos_screen_x_y".}
proc fcQCursor_setPosP(p: pointer): void {.importc: "QCursor_setPos_p".}
proc fcQCursor_setPosScreenP(screen: pointer, p: pointer): void {.importc: "QCursor_setPos_screen_p".}
proc fcQCursor_new(): ptr cQCursor {.importc: "QCursor_new".}
proc fcQCursor_new2(shape: cint): ptr cQCursor {.importc: "QCursor_new_shape".}
proc fcQCursor_new3(bitmap: pointer, mask: pointer): ptr cQCursor {.importc: "QCursor_new_bitmap_mask".}
proc fcQCursor_new4(pixmap: pointer): ptr cQCursor {.importc: "QCursor_new_pixmap".}
proc fcQCursor_new5(fromVal: pointer): ptr cQCursor {.importc: "QCursor_new_from".}
proc fcQCursor_new6(bitmap: pointer, mask: pointer, hotX: cint): ptr cQCursor {.importc: "QCursor_new_bitmap_mask_hotX".}
proc fcQCursor_new7(bitmap: pointer, mask: pointer, hotX: cint, hotY: cint): ptr cQCursor {.importc: "QCursor_new_bitmap_mask_hotX_hotY".}
proc fcQCursor_new8(pixmap: pointer, hotX: cint): ptr cQCursor {.importc: "QCursor_new_pixmap_hotX".}
proc fcQCursor_new9(pixmap: pointer, hotX: cint, hotY: cint): ptr cQCursor {.importc: "QCursor_new_pixmap_hotX_hotY".}

proc operatorAssign*(self: gen_qcursor_types.QCursor, fromVal: gen_qcursor_types.QCursor): void =
  fcQCursor_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qcursor_types.QCursor, other: gen_qcursor_types.QCursor): void =
  fcQCursor_swap(self.h, other.h)

proc ToQVariant*(self: gen_qcursor_types.QCursor): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCursor_ToQVariant(self.h), owned: true)

proc shape*(self: gen_qcursor_types.QCursor): cint =
  cint(fcQCursor_shape(self.h))

proc setShape*(self: gen_qcursor_types.QCursor, newShape: cint): void =
  fcQCursor_setShape(self.h, cint(newShape))

proc bitmap*(self: gen_qcursor_types.QCursor): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQCursor_bitmap(self.h), owned: false)

proc mask*(self: gen_qcursor_types.QCursor): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQCursor_mask(self.h), owned: false)

proc bitmap*(self: gen_qcursor_types.QCursor, param1: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQCursor_bitmap_Qt_ReturnByValueConstant(self.h, cint(param1)), owned: true)

proc mask*(self: gen_qcursor_types.QCursor, param1: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQCursor_mask_Qt_ReturnByValueConstant(self.h, cint(param1)), owned: true)

proc pixmap*(self: gen_qcursor_types.QCursor): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCursor_pixmap(self.h), owned: true)

proc hotSpot*(self: gen_qcursor_types.QCursor): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQCursor_hotSpot(self.h), owned: true)

proc pos*(_: type gen_qcursor_types.QCursor): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQCursor_pos(), owned: true)

proc pos*(_: type gen_qcursor_types.QCursor, screen: gen_qscreen_types.QScreen): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQCursor_posScreen(screen.h), owned: true)

proc setPos*(_: type gen_qcursor_types.QCursor, x: cint, y: cint): void =
  fcQCursor_setPosXY(x, y)

proc setPos*(_: type gen_qcursor_types.QCursor, screen: gen_qscreen_types.QScreen, x: cint, y: cint): void =
  fcQCursor_setPosScreenXY(screen.h, x, y)

proc setPos*(_: type gen_qcursor_types.QCursor, p: gen_qpoint_types.QPoint): void =
  fcQCursor_setPosP(p.h)

proc setPos*(_: type gen_qcursor_types.QCursor, screen: gen_qscreen_types.QScreen, p: gen_qpoint_types.QPoint): void =
  fcQCursor_setPosScreenP(screen.h, p.h)

proc create*(T: type gen_qcursor_types.QCursor): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new(), owned: true)
  tmp
proc create*(T: type gen_qcursor_types.QCursor,
    shape: cint): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new2(cint(shape)), owned: true)
  tmp
proc create*(T: type gen_qcursor_types.QCursor,
    bitmap: gen_qbitmap_types.QBitmap, mask: gen_qbitmap_types.QBitmap): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new3(bitmap.h, mask.h), owned: true)
  tmp
proc create*(T: type gen_qcursor_types.QCursor,
    pixmap: gen_qpixmap_types.QPixmap): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new4(pixmap.h), owned: true)
  tmp
proc create*(T: type gen_qcursor_types.QCursor,
    fromVal: gen_qcursor_types.QCursor): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new5(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qcursor_types.QCursor,
    bitmap: gen_qbitmap_types.QBitmap, mask: gen_qbitmap_types.QBitmap, hotX: cint): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new6(bitmap.h, mask.h, hotX), owned: true)
  tmp
proc create*(T: type gen_qcursor_types.QCursor,
    bitmap: gen_qbitmap_types.QBitmap, mask: gen_qbitmap_types.QBitmap, hotX: cint, hotY: cint): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new7(bitmap.h, mask.h, hotX, hotY), owned: true)
  tmp
proc create*(T: type gen_qcursor_types.QCursor,
    pixmap: gen_qpixmap_types.QPixmap, hotX: cint): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new8(pixmap.h, hotX), owned: true)
  tmp
proc create*(T: type gen_qcursor_types.QCursor,
    pixmap: gen_qpixmap_types.QPixmap, hotX: cint, hotY: cint): gen_qcursor_types.QCursor =
  let tmp = gen_qcursor_types.QCursor(h: fcQCursor_new9(pixmap.h, hotX, hotY), owned: true)
  tmp
