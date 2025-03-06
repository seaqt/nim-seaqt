import ./Qt5Svg_libs

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

const cflags = gorge("pkg-config --cflags Qt5Svg")  & " -fPIC"
{.compile("gen_qsvggenerator.cpp", cflags).}


import ./gen_qsvggenerator_types
export gen_qsvggenerator_types

import
  ../QtCore/gen_qiodevice_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qpaintdevice,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types
export
  gen_qiodevice_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qpaintdevice,
  gen_qpaintengine_types,
  gen_qpainter_types

type cQSvgGenerator*{.exportc: "QSvgGenerator", incompleteStruct.} = object

proc fcQSvgGenerator_title(self: pointer, ): struct_miqt_string {.importc: "QSvgGenerator_title".}
proc fcQSvgGenerator_setTitle(self: pointer, title: struct_miqt_string): void {.importc: "QSvgGenerator_setTitle".}
proc fcQSvgGenerator_description(self: pointer, ): struct_miqt_string {.importc: "QSvgGenerator_description".}
proc fcQSvgGenerator_setDescription(self: pointer, description: struct_miqt_string): void {.importc: "QSvgGenerator_setDescription".}
proc fcQSvgGenerator_size(self: pointer, ): pointer {.importc: "QSvgGenerator_size".}
proc fcQSvgGenerator_setSize(self: pointer, size: pointer): void {.importc: "QSvgGenerator_setSize".}
proc fcQSvgGenerator_viewBox(self: pointer, ): pointer {.importc: "QSvgGenerator_viewBox".}
proc fcQSvgGenerator_viewBoxF(self: pointer, ): pointer {.importc: "QSvgGenerator_viewBoxF".}
proc fcQSvgGenerator_setViewBox(self: pointer, viewBox: pointer): void {.importc: "QSvgGenerator_setViewBox".}
proc fcQSvgGenerator_setViewBoxWithViewBox(self: pointer, viewBox: pointer): void {.importc: "QSvgGenerator_setViewBoxWithViewBox".}
proc fcQSvgGenerator_fileName(self: pointer, ): struct_miqt_string {.importc: "QSvgGenerator_fileName".}
proc fcQSvgGenerator_setFileName(self: pointer, fileName: struct_miqt_string): void {.importc: "QSvgGenerator_setFileName".}
proc fcQSvgGenerator_outputDevice(self: pointer, ): pointer {.importc: "QSvgGenerator_outputDevice".}
proc fcQSvgGenerator_setOutputDevice(self: pointer, outputDevice: pointer): void {.importc: "QSvgGenerator_setOutputDevice".}
proc fcQSvgGenerator_setResolution(self: pointer, dpi: cint): void {.importc: "QSvgGenerator_setResolution".}
proc fcQSvgGenerator_resolution(self: pointer, ): cint {.importc: "QSvgGenerator_resolution".}
type cQSvgGeneratorVTable = object
  destructor*: proc(vtbl: ptr cQSvgGeneratorVTable, self: ptr cQSvgGenerator) {.cdecl, raises:[], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, metric: cint): cint {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQSvgGenerator_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QSvgGenerator_virtualbase_paintEngine".}
proc fcQSvgGenerator_virtualbase_metric(self: pointer, metric: cint): cint {.importc: "QSvgGenerator_virtualbase_metric".}
proc fcQSvgGenerator_virtualbase_devType(self: pointer, ): cint {.importc: "QSvgGenerator_virtualbase_devType".}
proc fcQSvgGenerator_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QSvgGenerator_virtualbase_initPainter".}
proc fcQSvgGenerator_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QSvgGenerator_virtualbase_redirected".}
proc fcQSvgGenerator_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QSvgGenerator_virtualbase_sharedPainter".}
proc fcQSvgGenerator_new(vtbl: pointer, ): ptr cQSvgGenerator {.importc: "QSvgGenerator_new".}
proc fcQSvgGenerator_delete(self: pointer) {.importc: "QSvgGenerator_delete".}

proc title*(self: gen_qsvggenerator_types.QSvgGenerator, ): string =
  let v_ms = fcQSvgGenerator_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setTitle*(self: gen_qsvggenerator_types.QSvgGenerator, title: string): void =
  fcQSvgGenerator_setTitle(self.h, struct_miqt_string(data: title, len: csize_t(len(title))))

proc description*(self: gen_qsvggenerator_types.QSvgGenerator, ): string =
  let v_ms = fcQSvgGenerator_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDescription*(self: gen_qsvggenerator_types.QSvgGenerator, description: string): void =
  fcQSvgGenerator_setDescription(self.h, struct_miqt_string(data: description, len: csize_t(len(description))))

proc size*(self: gen_qsvggenerator_types.QSvgGenerator, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSvgGenerator_size(self.h))

proc setSize*(self: gen_qsvggenerator_types.QSvgGenerator, size: gen_qsize_types.QSize): void =
  fcQSvgGenerator_setSize(self.h, size.h)

proc viewBox*(self: gen_qsvggenerator_types.QSvgGenerator, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSvgGenerator_viewBox(self.h))

proc viewBoxF*(self: gen_qsvggenerator_types.QSvgGenerator, ): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQSvgGenerator_viewBoxF(self.h))

proc setViewBox*(self: gen_qsvggenerator_types.QSvgGenerator, viewBox: gen_qrect_types.QRect): void =
  fcQSvgGenerator_setViewBox(self.h, viewBox.h)

proc setViewBox*(self: gen_qsvggenerator_types.QSvgGenerator, viewBox: gen_qrect_types.QRectF): void =
  fcQSvgGenerator_setViewBoxWithViewBox(self.h, viewBox.h)

proc fileName*(self: gen_qsvggenerator_types.QSvgGenerator, ): string =
  let v_ms = fcQSvgGenerator_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileName*(self: gen_qsvggenerator_types.QSvgGenerator, fileName: string): void =
  fcQSvgGenerator_setFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc outputDevice*(self: gen_qsvggenerator_types.QSvgGenerator, ): gen_qiodevice_types.QIODevice =
  gen_qiodevice_types.QIODevice(h: fcQSvgGenerator_outputDevice(self.h))

proc setOutputDevice*(self: gen_qsvggenerator_types.QSvgGenerator, outputDevice: gen_qiodevice_types.QIODevice): void =
  fcQSvgGenerator_setOutputDevice(self.h, outputDevice.h)

proc setResolution*(self: gen_qsvggenerator_types.QSvgGenerator, dpi: cint): void =
  fcQSvgGenerator_setResolution(self.h, dpi)

proc resolution*(self: gen_qsvggenerator_types.QSvgGenerator, ): cint =
  fcQSvgGenerator_resolution(self.h)

type QSvgGeneratorpaintEngineProc* = proc(self: QSvgGenerator): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QSvgGeneratormetricProc* = proc(self: QSvgGenerator, metric: cint): cint {.raises: [], gcsafe.}
type QSvgGeneratordevTypeProc* = proc(self: QSvgGenerator): cint {.raises: [], gcsafe.}
type QSvgGeneratorinitPainterProc* = proc(self: QSvgGenerator, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QSvgGeneratorredirectedProc* = proc(self: QSvgGenerator, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QSvgGeneratorsharedPainterProc* = proc(self: QSvgGenerator): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QSvgGeneratorVTable* = object
  vtbl: cQSvgGeneratorVTable
  paintEngine*: QSvgGeneratorpaintEngineProc
  metric*: QSvgGeneratormetricProc
  devType*: QSvgGeneratordevTypeProc
  initPainter*: QSvgGeneratorinitPainterProc
  redirected*: QSvgGeneratorredirectedProc
  sharedPainter*: QSvgGeneratorsharedPainterProc
proc QSvgGeneratorpaintEngine*(self: gen_qsvggenerator_types.QSvgGenerator, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQSvgGenerator_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQSvgGenerator_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgGeneratorVTable](vtbl)
  let self = QSvgGenerator(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QSvgGeneratormetric*(self: gen_qsvggenerator_types.QSvgGenerator, metric: cint): cint =
  fcQSvgGenerator_virtualbase_metric(self.h, cint(metric))

proc miqt_exec_callback_cQSvgGenerator_metric(vtbl: pointer, self: pointer, metric: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgGeneratorVTable](vtbl)
  let self = QSvgGenerator(h: self)
  let slotval1 = cint(metric)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QSvgGeneratordevType*(self: gen_qsvggenerator_types.QSvgGenerator, ): cint =
  fcQSvgGenerator_virtualbase_devType(self.h)

proc miqt_exec_callback_cQSvgGenerator_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSvgGeneratorVTable](vtbl)
  let self = QSvgGenerator(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QSvgGeneratorinitPainter*(self: gen_qsvggenerator_types.QSvgGenerator, painter: gen_qpainter_types.QPainter): void =
  fcQSvgGenerator_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQSvgGenerator_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSvgGeneratorVTable](vtbl)
  let self = QSvgGenerator(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QSvgGeneratorredirected*(self: gen_qsvggenerator_types.QSvgGenerator, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQSvgGenerator_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQSvgGenerator_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgGeneratorVTable](vtbl)
  let self = QSvgGenerator(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QSvgGeneratorsharedPainter*(self: gen_qsvggenerator_types.QSvgGenerator, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQSvgGenerator_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQSvgGenerator_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSvgGeneratorVTable](vtbl)
  let self = QSvgGenerator(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc create*(T: type gen_qsvggenerator_types.QSvgGenerator,
    vtbl: ref QSvgGeneratorVTable = nil): gen_qsvggenerator_types.QSvgGenerator =
  let vtbl = if vtbl == nil: new QSvgGeneratorVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSvgGeneratorVTable, _: ptr cQSvgGenerator) {.cdecl.} =
    let vtbl = cast[ref QSvgGeneratorVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQSvgGenerator_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQSvgGenerator_metric
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQSvgGenerator_devType
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQSvgGenerator_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQSvgGenerator_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQSvgGenerator_sharedPainter
  gen_qsvggenerator_types.QSvgGenerator(h: fcQSvgGenerator_new(addr(vtbl[]), ))

proc delete*(self: gen_qsvggenerator_types.QSvgGenerator) =
  fcQSvgGenerator_delete(self.h)
