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
type cQBitmapVTable = object
  destructor*: proc(vtbl: ptr cQBitmapVTable, self: ptr cQBitmap) {.cdecl, raises:[], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQBitmap_virtualbase_devType(self: pointer, ): cint {.importc: "QBitmap_virtualbase_devType".}
proc fcQBitmap_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QBitmap_virtualbase_paintEngine".}
proc fcQBitmap_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QBitmap_virtualbase_metric".}
proc fcQBitmap_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QBitmap_virtualbase_initPainter".}
proc fcQBitmap_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QBitmap_virtualbase_redirected".}
proc fcQBitmap_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QBitmap_virtualbase_sharedPainter".}
proc fcQBitmap_new(vtbl: pointer, ): ptr cQBitmap {.importc: "QBitmap_new".}
proc fcQBitmap_new2(vtbl: pointer, param1: pointer): ptr cQBitmap {.importc: "QBitmap_new2".}
proc fcQBitmap_new3(vtbl: pointer, w: cint, h: cint): ptr cQBitmap {.importc: "QBitmap_new3".}
proc fcQBitmap_new4(vtbl: pointer, param1: pointer): ptr cQBitmap {.importc: "QBitmap_new4".}
proc fcQBitmap_new5(vtbl: pointer, fileName: struct_miqt_string): ptr cQBitmap {.importc: "QBitmap_new5".}
proc fcQBitmap_new6(vtbl: pointer, other: pointer): ptr cQBitmap {.importc: "QBitmap_new6".}
proc fcQBitmap_new7(vtbl: pointer, fileName: struct_miqt_string, format: cstring): ptr cQBitmap {.importc: "QBitmap_new7".}
proc fcQBitmap_delete(self: pointer) {.importc: "QBitmap_delete".}

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

type QBitmapdevTypeProc* = proc(self: QBitmap): cint {.raises: [], gcsafe.}
type QBitmappaintEngineProc* = proc(self: QBitmap): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QBitmapmetricProc* = proc(self: QBitmap, param1: cint): cint {.raises: [], gcsafe.}
type QBitmapinitPainterProc* = proc(self: QBitmap, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QBitmapredirectedProc* = proc(self: QBitmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QBitmapsharedPainterProc* = proc(self: QBitmap): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QBitmapVTable* = object
  vtbl: cQBitmapVTable
  devType*: QBitmapdevTypeProc
  paintEngine*: QBitmappaintEngineProc
  metric*: QBitmapmetricProc
  initPainter*: QBitmapinitPainterProc
  redirected*: QBitmapredirectedProc
  sharedPainter*: QBitmapsharedPainterProc
proc QBitmapdevType*(self: gen_qbitmap_types.QBitmap, ): cint =
  fcQBitmap_virtualbase_devType(self.h)

proc miqt_exec_callback_cQBitmap_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QBitmappaintEngine*(self: gen_qbitmap_types.QBitmap, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQBitmap_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQBitmap_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QBitmapmetric*(self: gen_qbitmap_types.QBitmap, param1: cint): cint =
  fcQBitmap_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQBitmap_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QBitmapinitPainter*(self: gen_qbitmap_types.QBitmap, painter: gen_qpainter_types.QPainter): void =
  fcQBitmap_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQBitmap_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QBitmapredirected*(self: gen_qbitmap_types.QBitmap, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQBitmap_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQBitmap_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QBitmapsharedPainter*(self: gen_qbitmap_types.QBitmap, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQBitmap_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQBitmap_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QBitmapVTable](vtbl)
  let self = QBitmap(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc create*(T: type gen_qbitmap_types.QBitmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new(addr(vtbl[]), ))

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qpixmap_types.QPixmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new2(addr(vtbl[]), param1.h))

proc create*(T: type gen_qbitmap_types.QBitmap,
    w: cint, h: cint,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new3(addr(vtbl[]), w, h))

proc create*(T: type gen_qbitmap_types.QBitmap,
    param1: gen_qsize_types.QSize,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new4(addr(vtbl[]), param1.h))

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: string,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new5(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc create*(T: type gen_qbitmap_types.QBitmap,
    other: gen_qbitmap_types.QBitmap,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new6(addr(vtbl[]), other.h))

proc create*(T: type gen_qbitmap_types.QBitmap,
    fileName: string, format: cstring,
    vtbl: ref QBitmapVTable = nil): gen_qbitmap_types.QBitmap =
  let vtbl = if vtbl == nil: new QBitmapVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQBitmapVTable, _: ptr cQBitmap) {.cdecl.} =
    let vtbl = cast[ref QBitmapVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQBitmap_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQBitmap_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQBitmap_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQBitmap_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQBitmap_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQBitmap_sharedPainter
  gen_qbitmap_types.QBitmap(h: fcQBitmap_new7(addr(vtbl[]), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), format))

proc delete*(self: gen_qbitmap_types.QBitmap) =
  fcQBitmap_delete(self.h)
