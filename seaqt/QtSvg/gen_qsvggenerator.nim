import ./Qt6Svg_libs

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

const cflags = gorge("pkg-config --cflags Qt6Svg")  & " -fPIC"
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

proc fcQSvgGenerator_new(): ptr cQSvgGenerator {.importc: "QSvgGenerator_new".}
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
proc fQSvgGenerator_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QSvgGenerator_virtualbase_paintEngine".}
proc fcQSvgGenerator_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_paintEngine".}
proc fQSvgGenerator_virtualbase_metric(self: pointer, metric: cint): cint{.importc: "QSvgGenerator_virtualbase_metric".}
proc fcQSvgGenerator_override_virtual_metric(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_metric".}
proc fQSvgGenerator_virtualbase_devType(self: pointer, ): cint{.importc: "QSvgGenerator_virtualbase_devType".}
proc fcQSvgGenerator_override_virtual_devType(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_devType".}
proc fQSvgGenerator_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QSvgGenerator_virtualbase_initPainter".}
proc fcQSvgGenerator_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_initPainter".}
proc fQSvgGenerator_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QSvgGenerator_virtualbase_redirected".}
proc fcQSvgGenerator_override_virtual_redirected(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_redirected".}
proc fQSvgGenerator_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QSvgGenerator_virtualbase_sharedPainter".}
proc fcQSvgGenerator_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QSvgGenerator_override_virtual_sharedPainter".}
proc fcQSvgGenerator_delete(self: pointer) {.importc: "QSvgGenerator_delete".}


func init*(T: type gen_qsvggenerator_types.QSvgGenerator, h: ptr cQSvgGenerator): gen_qsvggenerator_types.QSvgGenerator =
  T(h: h)
proc create*(T: type gen_qsvggenerator_types.QSvgGenerator, ): gen_qsvggenerator_types.QSvgGenerator =
  gen_qsvggenerator_types.QSvgGenerator.init(fcQSvgGenerator_new())

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

proc QSvgGeneratorpaintEngine*(self: gen_qsvggenerator_types.QSvgGenerator, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fQSvgGenerator_virtualbase_paintEngine(self.h))

type QSvgGeneratorpaintEngineProc* = proc(): gen_qpaintengine_types.QPaintEngine
proc onpaintEngine*(self: gen_qsvggenerator_types.QSvgGenerator, slot: QSvgGeneratorpaintEngineProc) =
  # TODO check subclass
  var tmp = new QSvgGeneratorpaintEngineProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_paintEngine(self: ptr cQSvgGenerator, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgGenerator_paintEngine ".} =
  var nimfunc = cast[ptr QSvgGeneratorpaintEngineProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSvgGeneratormetric*(self: gen_qsvggenerator_types.QSvgGenerator, metric: cint): cint =
  fQSvgGenerator_virtualbase_metric(self.h, cint(metric))

type QSvgGeneratormetricProc* = proc(metric: cint): cint
proc onmetric*(self: gen_qsvggenerator_types.QSvgGenerator, slot: QSvgGeneratormetricProc) =
  # TODO check subclass
  var tmp = new QSvgGeneratormetricProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_metric(self: ptr cQSvgGenerator, slot: int, metric: cint): cint {.exportc: "miqt_exec_callback_QSvgGenerator_metric ".} =
  var nimfunc = cast[ptr QSvgGeneratormetricProc](cast[pointer](slot))
  let slotval1 = cint(metric)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSvgGeneratordevType*(self: gen_qsvggenerator_types.QSvgGenerator, ): cint =
  fQSvgGenerator_virtualbase_devType(self.h)

type QSvgGeneratordevTypeProc* = proc(): cint
proc ondevType*(self: gen_qsvggenerator_types.QSvgGenerator, slot: QSvgGeneratordevTypeProc) =
  # TODO check subclass
  var tmp = new QSvgGeneratordevTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_devType(self: ptr cQSvgGenerator, slot: int): cint {.exportc: "miqt_exec_callback_QSvgGenerator_devType ".} =
  var nimfunc = cast[ptr QSvgGeneratordevTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QSvgGeneratorinitPainter*(self: gen_qsvggenerator_types.QSvgGenerator, painter: gen_qpainter_types.QPainter): void =
  fQSvgGenerator_virtualbase_initPainter(self.h, painter.h)

type QSvgGeneratorinitPainterProc* = proc(painter: gen_qpainter_types.QPainter): void
proc oninitPainter*(self: gen_qsvggenerator_types.QSvgGenerator, slot: QSvgGeneratorinitPainterProc) =
  # TODO check subclass
  var tmp = new QSvgGeneratorinitPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_initPainter(self: ptr cQSvgGenerator, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QSvgGenerator_initPainter ".} =
  var nimfunc = cast[ptr QSvgGeneratorinitPainterProc](cast[pointer](slot))
  let slotval1 = gen_qpainter_types.QPainter(h: painter)


  nimfunc[](slotval1)
proc QSvgGeneratorredirected*(self: gen_qsvggenerator_types.QSvgGenerator, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fQSvgGenerator_virtualbase_redirected(self.h, offset.h))

type QSvgGeneratorredirectedProc* = proc(offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice
proc onredirected*(self: gen_qsvggenerator_types.QSvgGenerator, slot: QSvgGeneratorredirectedProc) =
  # TODO check subclass
  var tmp = new QSvgGeneratorredirectedProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_redirected(self: ptr cQSvgGenerator, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QSvgGenerator_redirected ".} =
  var nimfunc = cast[ptr QSvgGeneratorredirectedProc](cast[pointer](slot))
  let slotval1 = gen_qpoint_types.QPoint(h: offset)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QSvgGeneratorsharedPainter*(self: gen_qsvggenerator_types.QSvgGenerator, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fQSvgGenerator_virtualbase_sharedPainter(self.h))

type QSvgGeneratorsharedPainterProc* = proc(): gen_qpainter_types.QPainter
proc onsharedPainter*(self: gen_qsvggenerator_types.QSvgGenerator, slot: QSvgGeneratorsharedPainterProc) =
  # TODO check subclass
  var tmp = new QSvgGeneratorsharedPainterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSvgGenerator_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSvgGenerator_sharedPainter(self: ptr cQSvgGenerator, slot: int): pointer {.exportc: "miqt_exec_callback_QSvgGenerator_sharedPainter ".} =
  var nimfunc = cast[ptr QSvgGeneratorsharedPainterProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qsvggenerator_types.QSvgGenerator) =
  fcQSvgGenerator_delete(self.h)
