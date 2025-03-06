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
{.compile("gen_qbitmap.cpp", cflags).}


import ./gen_qbitmap_types
export gen_qbitmap_types

import
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ./gen_qimage_types,
  ./gen_qmatrix_types,
  ./gen_qpaintdevice_types,
  ./gen_qpaintengine_types,
  ./gen_qpainter_types,
  ./gen_qpixmap,
  ./gen_qtransform_types
export
  gen_qpoint_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qimage_types,
  gen_qmatrix_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpixmap,
  gen_qtransform_types

type cQBitmap*{.exportc: "QBitmap", incompleteStruct.} = object

proc fcQBitmap_new(): ptr cQBitmap {.importc: "QBitmap_new".}
proc fcQBitmap_new2(param1: pointer): ptr cQBitmap {.importc: "QBitmap_new2".}
proc fcQBitmap_new3(w: cint, h: cint): ptr cQBitmap {.importc: "QBitmap_new3".}
proc fcQBitmap_new4(param1: pointer): ptr cQBitmap {.importc: "QBitmap_new4".}
proc fcQBitmap_new5(fileName: struct_miqt_string): ptr cQBitmap {.importc: "QBitmap_new5".}
proc fcQBitmap_new6(other: pointer): ptr cQBitmap {.importc: "QBitmap_new6".}
proc fcQBitmap_new7(fileName: struct_miqt_string, format: cstring): ptr cQBitmap {.importc: "QBitmap_new7".}
proc fcQBitmap_operatorAssign(self: pointer, other: pointer): void {.importc: "QBitmap_operatorAssign".}
proc fcQBitmap_operatorAssignWithQPixmap(self: pointer, param1: pointer): void {.importc: "QBitmap_operatorAssignWithQPixmap".}
proc fcQBitmap_swap(self: pointer, other: pointer): void {.importc: "QBitmap_swap".}
proc fcQBitmap_ToQVariant(self: pointer, ): pointer {.importc: "QBitmap_ToQVariant".}
proc fcQBitmap_clear(self: pointer, ): void {.importc: "QBitmap_clear".}
proc fcQBitmap_fromImage(image: pointer): pointer {.importc: "QBitmap_fromImage".}
proc fcQBitmap_fromData(size: pointer, bits: ptr uint8): pointer {.importc: "QBitmap_fromData".}
proc fcQBitmap_transformed(self: pointer, param1: pointer): pointer {.importc: "QBitmap_transformed".}
proc fcQBitmap_transformedWithMatrix(self: pointer, matrix: pointer): pointer {.importc: "QBitmap_transformedWithMatrix".}
proc fcQBitmap_fromImage2(image: pointer, flags: cint): pointer {.importc: "QBitmap_fromImage2".}
proc fcQBitmap_fromData3(size: pointer, bits: ptr uint8, monoFormat: cint): pointer {.importc: "QBitmap_fromData3".}
proc fQBitmap_virtualbase_devType(self: pointer, ): cint{.importc: "QBitmap_virtualbase_devType".}
proc fcQBitmap_override_virtual_devType(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_devType".}
proc fQBitmap_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QBitmap_virtualbase_paintEngine".}
proc fcQBitmap_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_paintEngine".}
proc fQBitmap_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QBitmap_virtualbase_metric".}
proc fcQBitmap_override_virtual_metric(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_metric".}
proc fQBitmap_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QBitmap_virtualbase_initPainter".}
proc fcQBitmap_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_initPainter".}
proc fQBitmap_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QBitmap_virtualbase_redirected".}
proc fcQBitmap_override_virtual_redirected(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_redirected".}
proc fQBitmap_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QBitmap_virtualbase_sharedPainter".}
proc fcQBitmap_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QBitmap_override_virtual_sharedPainter".}
proc fcQBitmap_delete(self: pointer) {.importc: "QBitmap_delete".}


func init*(T: type gen_qbitmap_types.QBitmap, h: ptr cQBitmap): gen_qbitmap_types.QBitmap =
  T(h: h)
proc create*(T: type gen_qbitmap_types.QBitmap, ): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap.init(fcQBitmap_new())

proc create*(T: type gen_qbitmap_types.QBitmap, param1: gen_qpixmap_types.QPixmap): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap.init(fcQBitmap_new2(param1.h))

proc create*(T: type gen_qbitmap_types.QBitmap, w: cint, h: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap.init(fcQBitmap_new3(w, h))

proc create*(T: type gen_qbitmap_types.QBitmap, param1: gen_qsize_types.QSize): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap.init(fcQBitmap_new4(param1.h))

proc create*(T: type gen_qbitmap_types.QBitmap, fileName: string): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap.init(fcQBitmap_new5(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qbitmap_types.QBitmap, other: gen_qbitmap_types.QBitmap): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap.init(fcQBitmap_new6(other.h))

proc create*(T: type gen_qbitmap_types.QBitmap, fileName: string, format: cstring): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap.init(fcQBitmap_new7(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format))

proc operatorAssign*(self: gen_qbitmap_types.QBitmap, other: gen_qbitmap_types.QBitmap): void =
  fcQBitmap_operatorAssign(self.h, other.h)

proc operatorAssign*(self: gen_qbitmap_types.QBitmap, param1: gen_qpixmap_types.QPixmap): void =
  fcQBitmap_operatorAssignWithQPixmap(self.h, param1.h)

proc swap*(self: gen_qbitmap_types.QBitmap, other: gen_qbitmap_types.QBitmap): void =
  fcQBitmap_swap(self.h, other.h)

proc ToQVariant*(self: gen_qbitmap_types.QBitmap, ): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQBitmap_ToQVariant(self.h))

proc clear*(self: gen_qbitmap_types.QBitmap, ): void =
  fcQBitmap_clear(self.h)

proc fromImage*(_: type gen_qbitmap_types.QBitmap, image: gen_qimage_types.QImage): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_fromImage(image.h))

proc fromData*(_: type gen_qbitmap_types.QBitmap, size: gen_qsize_types.QSize, bits: ptr uint8): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_fromData(size.h, bits))

proc transformed*(self: gen_qbitmap_types.QBitmap, param1: gen_qmatrix_types.QMatrix): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_transformed(self.h, param1.h))

proc transformed*(self: gen_qbitmap_types.QBitmap, matrix: gen_qtransform_types.QTransform): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_transformedWithMatrix(self.h, matrix.h))

proc fromImage*(_: type gen_qbitmap_types.QBitmap, image: gen_qimage_types.QImage, flags: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_fromImage2(image.h, cint(flags)))

proc fromData*(_: type gen_qbitmap_types.QBitmap, size: gen_qsize_types.QSize, bits: ptr uint8, monoFormat: cint): gen_qbitmap_types.QBitmap =
  gen_qbitmap_types.QBitmap(h: fcQBitmap_fromData3(size.h, bits, cint(monoFormat)))

proc QBitmapdevType*(self: gen_qbitmap_types.QBitmap, ): cint =
  fQBitmap_virtualbase_devType(self.h)

type QBitmapdevTypeProc* = proc(): cint
proc ondevType*(self: gen_qbitmap_types.QBitmap, slot: QBitmapdevTypeProc) =
  # TODO check subclass
  var tmp = new QBitmapdevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_devType(self: ptr cQBitmap, slot: int): cint {.exportc: "miqt_exec_callback_QBitmap_devType ".} =
  var nimfunc = cast[ptr QBitmapdevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QBitmappaintEngine*(self: gen_qbitmap_types.QBitmap, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQBitmap_virtualbase_paintEngine(self.h))

type QBitmappaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qbitmap_types.QBitmap, slot: QBitmappaintEngineProc) =
  # TODO check subclass
  var tmp = new QBitmappaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_paintEngine(self: ptr cQBitmap, slot: int): pointer {.exportc: "miqt_exec_callback_QBitmap_paintEngine ".} =
  var nimfunc = cast[ptr QBitmappaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QBitmapmetric*(self: gen_qbitmap_types.QBitmap, param1: cint): cint =
  fQBitmap_virtualbase_metric(self.h, cint(param1))

type QBitmapmetricProc* = proc(param1: cint): cint
proc onmetric*(self: gen_qbitmap_types.QBitmap, slot: QBitmapmetricProc) =
  # TODO check subclass
  var tmp = new QBitmapmetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_metric(self: ptr cQBitmap, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QBitmap_metric ".} =
  var nimfunc = cast[ptr QBitmapmetricProc](cast[pointer](slot))
  let slotval1 = cint(param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QBitmapinitPainter*(self: gen_qbitmap_types.QBitmap, painter: gen_qpainter_types.QPainter): void =
  fQBitmap_virtualbase_initPainter(self.h, painter.h)

type QBitmapinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qbitmap_types.QBitmap, slot: QBitmapinitPainterProc) =
  # TODO check subclass
  var tmp = new QBitmapinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_initPainter(self: ptr cQBitmap, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QBitmap_initPainter ".} =
  var nimfunc = cast[ptr QBitmapinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QBitmapredirected*(self: gen_qbitmap_types.QBitmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQBitmap_virtualbase_redirected(self.h, offset.h))

type QBitmapredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qbitmap_types.QBitmap, slot: QBitmapredirectedProc) =
  # TODO check subclass
  var tmp = new QBitmapredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_redirected(self: ptr cQBitmap, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QBitmap_redirected ".} =
  var nimfunc = cast[ptr QBitmapredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QBitmapsharedPainter*(self: gen_qbitmap_types.QBitmap, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQBitmap_virtualbase_sharedPainter(self.h))

type QBitmapsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qbitmap_types.QBitmap, slot: QBitmapsharedPainterProc) =
  # TODO check subclass
  var tmp = new QBitmapsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQBitmap_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QBitmap_sharedPainter(self: ptr cQBitmap, slot: int): pointer {.exportc: "miqt_exec_callback_QBitmap_sharedPainter ".} =
  var nimfunc = cast[ptr QBitmapsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qbitmap_types.QBitmap) =
  fcQBitmap_delete(self.h)
