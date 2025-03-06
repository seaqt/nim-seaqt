import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qcursor.cpp", cflags).}


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

proc fcQCursor_operatorAssign(self: pointer, cursor: pointer): void {.importc: "QCursor_operatorAssign".}
proc fcQCursor_swap(self: pointer, other: pointer): void {.importc: "QCursor_swap".}
proc fcQCursor_ToQVariant(self: pointer, ): pointer {.importc: "QCursor_ToQVariant".}
proc fcQCursor_shape(self: pointer, ): cint {.importc: "QCursor_shape".}
proc fcQCursor_setShape(self: pointer, newShape: cint): void {.importc: "QCursor_setShape".}
proc fcQCursor_bitmap(self: pointer, ): pointer {.importc: "QCursor_bitmap".}
proc fcQCursor_mask(self: pointer, ): pointer {.importc: "QCursor_mask".}
proc fcQCursor_bitmapWithQtReturnByValueConstant(self: pointer, param1: cint): pointer {.importc: "QCursor_bitmapWithQtReturnByValueConstant".}
proc fcQCursor_maskWithQtReturnByValueConstant(self: pointer, param1: cint): pointer {.importc: "QCursor_maskWithQtReturnByValueConstant".}
proc fcQCursor_pixmap(self: pointer, ): pointer {.importc: "QCursor_pixmap".}
proc fcQCursor_hotSpot(self: pointer, ): pointer {.importc: "QCursor_hotSpot".}
proc fcQCursor_pos(): pointer {.importc: "QCursor_pos".}
proc fcQCursor_posWithScreen(screen: pointer): pointer {.importc: "QCursor_posWithScreen".}
proc fcQCursor_setPos(x: cint, y: cint): void {.importc: "QCursor_setPos".}
proc fcQCursor_setPos2(screen: pointer, x: cint, y: cint): void {.importc: "QCursor_setPos2".}
proc fcQCursor_setPosWithQPoint(p: pointer): void {.importc: "QCursor_setPosWithQPoint".}
proc fcQCursor_setPos3(screen: pointer, p: pointer): void {.importc: "QCursor_setPos3".}
proc fcQCursor_new(): ptr cQCursor {.importc: "QCursor_new".}
proc fcQCursor_new2(shape: cint): ptr cQCursor {.importc: "QCursor_new2".}
proc fcQCursor_new3(bitmap: pointer, mask: pointer): ptr cQCursor {.importc: "QCursor_new3".}
proc fcQCursor_new4(pixmap: pointer): ptr cQCursor {.importc: "QCursor_new4".}
proc fcQCursor_new5(cursor: pointer): ptr cQCursor {.importc: "QCursor_new5".}
proc fcQCursor_new6(bitmap: pointer, mask: pointer, hotX: cint): ptr cQCursor {.importc: "QCursor_new6".}
proc fcQCursor_new7(bitmap: pointer, mask: pointer, hotX: cint, hotY: cint): ptr cQCursor {.importc: "QCursor_new7".}
proc fcQCursor_new8(pixmap: pointer, hotX: cint): ptr cQCursor {.importc: "QCursor_new8".}
proc fcQCursor_new9(pixmap: pointer, hotX: cint, hotY: cint): ptr cQCursor {.importc: "QCursor_new9".}
proc fcQCursor_delete(self: pointer) {.importc: "QCursor_delete".}

proc operatorAssign*(self: gen_qcursor_types.QCursor, cursor: gen_qcursor_types.QCursor): void =
  fcQCursor_operatorAssign(self.h, cursor.h)

proc swap*(self: gen_qcursor_types.QCursor, other: gen_qcursor_types.QCursor): void =
  fcQCursor_swap(self.h, other.h)

proc ToQVariant*(self: gen_qcursor_types.QCursor, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQCursor_ToQVariant(self.h))

proc shape*(self: gen_qcursor_types.QCursor, ): cint =
  cint(fcQCursor_shape(self.h))

proc setShape*(self: gen_qcursor_types.QCursor, newShape: cint): void =
  fcQCursor_setShape(self.h, cint(newShape))

proc bitmap*(self: gen_qcursor_types.QCursor, ): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQCursor_bitmap(self.h))

proc mask*(self: gen_qcursor_types.QCursor, ): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQCursor_mask(self.h))

proc bitmap*(self: gen_qcursor_types.QCursor, param1: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQCursor_bitmapWithQtReturnByValueConstant(self.h, cint(param1)))

proc mask*(self: gen_qcursor_types.QCursor, param1: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQCursor_maskWithQtReturnByValueConstant(self.h, cint(param1)))

proc pixmap*(self: gen_qcursor_types.QCursor, ): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQCursor_pixmap(self.h))

proc hotSpot*(self: gen_qcursor_types.QCursor, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQCursor_hotSpot(self.h))

proc pos*(_: type gen_qcursor_types.QCursor, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQCursor_pos())

proc pos*(_: type gen_qcursor_types.QCursor, screen: gen_qscreen_types.QScreen): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQCursor_posWithScreen(screen.h))

proc setPos*(_: type gen_qcursor_types.QCursor, x: cint, y: cint): void =
  fcQCursor_setPos(x, y)

proc setPos*(_: type gen_qcursor_types.QCursor, screen: gen_qscreen_types.QScreen, x: cint, y: cint): void =
  fcQCursor_setPos2(screen.h, x, y)

proc setPos*(_: type gen_qcursor_types.QCursor, p: gen_qpoint_types.QPoint): void =
  fcQCursor_setPosWithQPoint(p.h)

proc setPos*(_: type gen_qcursor_types.QCursor, screen: gen_qscreen_types.QScreen, p: gen_qpoint_types.QPoint): void =
  fcQCursor_setPos3(screen.h, p.h)

proc create*(T: type gen_qcursor_types.QCursor): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new())

proc create*(T: type gen_qcursor_types.QCursor,
    shape: cint): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new2(cint(shape)))

proc create*(T: type gen_qcursor_types.QCursor,
    bitmap: gen_qbitmap_types.QBitmap, mask: gen_qbitmap_types.QBitmap): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new3(bitmap.h, mask.h))

proc create*(T: type gen_qcursor_types.QCursor,
    pixmap: gen_qpixmap_types.QPixmap): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new4(pixmap.h))

proc create*(T: type gen_qcursor_types.QCursor,
    cursor: gen_qcursor_types.QCursor): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new5(cursor.h))

proc create*(T: type gen_qcursor_types.QCursor,
    bitmap: gen_qbitmap_types.QBitmap, mask: gen_qbitmap_types.QBitmap, hotX: cint): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new6(bitmap.h, mask.h, hotX))

proc create*(T: type gen_qcursor_types.QCursor,
    bitmap: gen_qbitmap_types.QBitmap, mask: gen_qbitmap_types.QBitmap, hotX: cint, hotY: cint): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new7(bitmap.h, mask.h, hotX, hotY))

proc create*(T: type gen_qcursor_types.QCursor,
    pixmap: gen_qpixmap_types.QPixmap, hotX: cint): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new8(pixmap.h, hotX))

proc create*(T: type gen_qcursor_types.QCursor,
    pixmap: gen_qpixmap_types.QPixmap, hotX: cint, hotY: cint): gen_qcursor_types.QCursor =
  gen_qcursor_types.QCursor(h: fcQCursor_new9(pixmap.h, hotX, hotY))

proc delete*(self: gen_qcursor_types.QCursor) =
  fcQCursor_delete(self.h)
