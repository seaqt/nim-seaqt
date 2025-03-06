import ./Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config --cflags Qt6PrintSupport")  & " -fPIC"
{.compile("gen_qprinter.cpp", cflags).}


type QPrinterPrinterModeEnum* = distinct cint
template ScreenResolution*(_: type QPrinterPrinterModeEnum): untyped = 0
template PrinterResolution*(_: type QPrinterPrinterModeEnum): untyped = 1
template HighResolution*(_: type QPrinterPrinterModeEnum): untyped = 2


type QPrinterPageOrderEnum* = distinct cint
template FirstPageFirst*(_: type QPrinterPageOrderEnum): untyped = 0
template LastPageFirst*(_: type QPrinterPageOrderEnum): untyped = 1


type QPrinterColorModeEnum* = distinct cint
template GrayScale*(_: type QPrinterColorModeEnum): untyped = 0
template Color*(_: type QPrinterColorModeEnum): untyped = 1


type QPrinterPaperSourceEnum* = distinct cint
template OnlyOne*(_: type QPrinterPaperSourceEnum): untyped = 0
template Lower*(_: type QPrinterPaperSourceEnum): untyped = 1
template Middle*(_: type QPrinterPaperSourceEnum): untyped = 2
template Manual*(_: type QPrinterPaperSourceEnum): untyped = 3
template Envelope*(_: type QPrinterPaperSourceEnum): untyped = 4
template EnvelopeManual*(_: type QPrinterPaperSourceEnum): untyped = 5
template Auto*(_: type QPrinterPaperSourceEnum): untyped = 6
template Tractor*(_: type QPrinterPaperSourceEnum): untyped = 7
template SmallFormat*(_: type QPrinterPaperSourceEnum): untyped = 8
template LargeFormat*(_: type QPrinterPaperSourceEnum): untyped = 9
template LargeCapacity*(_: type QPrinterPaperSourceEnum): untyped = 10
template Cassette*(_: type QPrinterPaperSourceEnum): untyped = 11
template FormSource*(_: type QPrinterPaperSourceEnum): untyped = 12
template MaxPageSource*(_: type QPrinterPaperSourceEnum): untyped = 13
template CustomSource*(_: type QPrinterPaperSourceEnum): untyped = 14
template LastPaperSource*(_: type QPrinterPaperSourceEnum): untyped = 14
template Upper*(_: type QPrinterPaperSourceEnum): untyped = 0


type QPrinterPrinterStateEnum* = distinct cint
template Idle*(_: type QPrinterPrinterStateEnum): untyped = 0
template Active*(_: type QPrinterPrinterStateEnum): untyped = 1
template Aborted*(_: type QPrinterPrinterStateEnum): untyped = 2
template Error*(_: type QPrinterPrinterStateEnum): untyped = 3


type QPrinterOutputFormatEnum* = distinct cint
template NativeFormat*(_: type QPrinterOutputFormatEnum): untyped = 0
template PdfFormat*(_: type QPrinterOutputFormatEnum): untyped = 1


type QPrinterPrintRangeEnum* = distinct cint
template AllPages*(_: type QPrinterPrintRangeEnum): untyped = 0
template Selection*(_: type QPrinterPrintRangeEnum): untyped = 1
template PageRange*(_: type QPrinterPrintRangeEnum): untyped = 2
template CurrentPage*(_: type QPrinterPrintRangeEnum): untyped = 3


type QPrinterUnitEnum* = distinct cint
template Millimeter*(_: type QPrinterUnitEnum): untyped = 0
template Point*(_: type QPrinterUnitEnum): untyped = 1
template Inch*(_: type QPrinterUnitEnum): untyped = 2
template Pica*(_: type QPrinterUnitEnum): untyped = 3
template Didot*(_: type QPrinterUnitEnum): untyped = 4
template Cicero*(_: type QPrinterUnitEnum): untyped = 5
template DevicePixel*(_: type QPrinterUnitEnum): untyped = 6


type QPrinterDuplexModeEnum* = distinct cint
template DuplexNone*(_: type QPrinterDuplexModeEnum): untyped = 0
template DuplexAuto*(_: type QPrinterDuplexModeEnum): untyped = 1
template DuplexLongSide*(_: type QPrinterDuplexModeEnum): untyped = 2
template DuplexShortSide*(_: type QPrinterDuplexModeEnum): untyped = 3


import ./gen_qprinter_types
export gen_qprinter_types

import
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtGui/gen_qpagedpaintdevice,
  ../QtGui/gen_qpagelayout_types,
  ../QtGui/gen_qpageranges_types,
  ../QtGui/gen_qpagesize_types,
  ../QtGui/gen_qpaintdevice_types,
  ../QtGui/gen_qpaintengine_types,
  ../QtGui/gen_qpainter_types,
  ./gen_qprintengine_types,
  ./gen_qprinterinfo_types
export
  gen_qmargins_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qpagedpaintdevice,
  gen_qpagelayout_types,
  gen_qpageranges_types,
  gen_qpagesize_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qprintengine_types,
  gen_qprinterinfo_types

type cQPrinter*{.exportc: "QPrinter", incompleteStruct.} = object

proc fcQPrinter_devType(self: pointer, ): cint {.importc: "QPrinter_devType".}
proc fcQPrinter_setOutputFormat(self: pointer, format: cint): void {.importc: "QPrinter_setOutputFormat".}
proc fcQPrinter_outputFormat(self: pointer, ): cint {.importc: "QPrinter_outputFormat".}
proc fcQPrinter_setPdfVersion(self: pointer, version: cint): void {.importc: "QPrinter_setPdfVersion".}
proc fcQPrinter_pdfVersion(self: pointer, ): cint {.importc: "QPrinter_pdfVersion".}
proc fcQPrinter_setPrinterName(self: pointer, printerName: struct_miqt_string): void {.importc: "QPrinter_setPrinterName".}
proc fcQPrinter_printerName(self: pointer, ): struct_miqt_string {.importc: "QPrinter_printerName".}
proc fcQPrinter_isValid(self: pointer, ): bool {.importc: "QPrinter_isValid".}
proc fcQPrinter_setOutputFileName(self: pointer, outputFileName: struct_miqt_string): void {.importc: "QPrinter_setOutputFileName".}
proc fcQPrinter_outputFileName(self: pointer, ): struct_miqt_string {.importc: "QPrinter_outputFileName".}
proc fcQPrinter_setPrintProgram(self: pointer, printProgram: struct_miqt_string): void {.importc: "QPrinter_setPrintProgram".}
proc fcQPrinter_printProgram(self: pointer, ): struct_miqt_string {.importc: "QPrinter_printProgram".}
proc fcQPrinter_setDocName(self: pointer, docName: struct_miqt_string): void {.importc: "QPrinter_setDocName".}
proc fcQPrinter_docName(self: pointer, ): struct_miqt_string {.importc: "QPrinter_docName".}
proc fcQPrinter_setCreator(self: pointer, creator: struct_miqt_string): void {.importc: "QPrinter_setCreator".}
proc fcQPrinter_creator(self: pointer, ): struct_miqt_string {.importc: "QPrinter_creator".}
proc fcQPrinter_setPageOrder(self: pointer, pageOrder: cint): void {.importc: "QPrinter_setPageOrder".}
proc fcQPrinter_pageOrder(self: pointer, ): cint {.importc: "QPrinter_pageOrder".}
proc fcQPrinter_setResolution(self: pointer, resolution: cint): void {.importc: "QPrinter_setResolution".}
proc fcQPrinter_resolution(self: pointer, ): cint {.importc: "QPrinter_resolution".}
proc fcQPrinter_setColorMode(self: pointer, colorMode: cint): void {.importc: "QPrinter_setColorMode".}
proc fcQPrinter_colorMode(self: pointer, ): cint {.importc: "QPrinter_colorMode".}
proc fcQPrinter_setCollateCopies(self: pointer, collate: bool): void {.importc: "QPrinter_setCollateCopies".}
proc fcQPrinter_collateCopies(self: pointer, ): bool {.importc: "QPrinter_collateCopies".}
proc fcQPrinter_setFullPage(self: pointer, fullPage: bool): void {.importc: "QPrinter_setFullPage".}
proc fcQPrinter_fullPage(self: pointer, ): bool {.importc: "QPrinter_fullPage".}
proc fcQPrinter_setCopyCount(self: pointer, copyCount: cint): void {.importc: "QPrinter_setCopyCount".}
proc fcQPrinter_copyCount(self: pointer, ): cint {.importc: "QPrinter_copyCount".}
proc fcQPrinter_supportsMultipleCopies(self: pointer, ): bool {.importc: "QPrinter_supportsMultipleCopies".}
proc fcQPrinter_setPaperSource(self: pointer, paperSource: cint): void {.importc: "QPrinter_setPaperSource".}
proc fcQPrinter_paperSource(self: pointer, ): cint {.importc: "QPrinter_paperSource".}
proc fcQPrinter_setDuplex(self: pointer, duplex: cint): void {.importc: "QPrinter_setDuplex".}
proc fcQPrinter_duplex(self: pointer, ): cint {.importc: "QPrinter_duplex".}
proc fcQPrinter_supportedResolutions(self: pointer, ): struct_miqt_array {.importc: "QPrinter_supportedResolutions".}
proc fcQPrinter_setFontEmbeddingEnabled(self: pointer, enable: bool): void {.importc: "QPrinter_setFontEmbeddingEnabled".}
proc fcQPrinter_fontEmbeddingEnabled(self: pointer, ): bool {.importc: "QPrinter_fontEmbeddingEnabled".}
proc fcQPrinter_paperRect(self: pointer, param1: cint): pointer {.importc: "QPrinter_paperRect".}
proc fcQPrinter_pageRect(self: pointer, param1: cint): pointer {.importc: "QPrinter_pageRect".}
proc fcQPrinter_printerSelectionOption(self: pointer, ): struct_miqt_string {.importc: "QPrinter_printerSelectionOption".}
proc fcQPrinter_setPrinterSelectionOption(self: pointer, printerSelectionOption: struct_miqt_string): void {.importc: "QPrinter_setPrinterSelectionOption".}
proc fcQPrinter_newPage(self: pointer, ): bool {.importc: "QPrinter_newPage".}
proc fcQPrinter_abort(self: pointer, ): bool {.importc: "QPrinter_abort".}
proc fcQPrinter_printerState(self: pointer, ): cint {.importc: "QPrinter_printerState".}
proc fcQPrinter_paintEngine(self: pointer, ): pointer {.importc: "QPrinter_paintEngine".}
proc fcQPrinter_printEngine(self: pointer, ): pointer {.importc: "QPrinter_printEngine".}
proc fcQPrinter_setFromTo(self: pointer, fromPage: cint, toPage: cint): void {.importc: "QPrinter_setFromTo".}
proc fcQPrinter_fromPage(self: pointer, ): cint {.importc: "QPrinter_fromPage".}
proc fcQPrinter_toPage(self: pointer, ): cint {.importc: "QPrinter_toPage".}
proc fcQPrinter_setPrintRange(self: pointer, range: cint): void {.importc: "QPrinter_setPrintRange".}
proc fcQPrinter_printRange(self: pointer, ): cint {.importc: "QPrinter_printRange".}
type cQPrinterVTable = object
  destructor*: proc(vtbl: ptr cQPrinterVTable, self: ptr cQPrinter) {.cdecl, raises:[], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  newPage*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  setPageLayout*: proc(vtbl, self: pointer, pageLayout: pointer): bool {.cdecl, raises: [], gcsafe.}
  setPageSize*: proc(vtbl, self: pointer, pageSize: pointer): bool {.cdecl, raises: [], gcsafe.}
  setPageOrientation*: proc(vtbl, self: pointer, orientation: cint): bool {.cdecl, raises: [], gcsafe.}
  setPageMargins*: proc(vtbl, self: pointer, margins: pointer, units: cint): bool {.cdecl, raises: [], gcsafe.}
  setPageRanges*: proc(vtbl, self: pointer, ranges: pointer): void {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQPrinter_virtualbase_devType(self: pointer, ): cint {.importc: "QPrinter_virtualbase_devType".}
proc fcQPrinter_virtualbase_newPage(self: pointer, ): bool {.importc: "QPrinter_virtualbase_newPage".}
proc fcQPrinter_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QPrinter_virtualbase_paintEngine".}
proc fcQPrinter_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QPrinter_virtualbase_metric".}
proc fcQPrinter_virtualbase_setPageLayout(self: pointer, pageLayout: pointer): bool {.importc: "QPrinter_virtualbase_setPageLayout".}
proc fcQPrinter_virtualbase_setPageSize(self: pointer, pageSize: pointer): bool {.importc: "QPrinter_virtualbase_setPageSize".}
proc fcQPrinter_virtualbase_setPageOrientation(self: pointer, orientation: cint): bool {.importc: "QPrinter_virtualbase_setPageOrientation".}
proc fcQPrinter_virtualbase_setPageMargins(self: pointer, margins: pointer, units: cint): bool {.importc: "QPrinter_virtualbase_setPageMargins".}
proc fcQPrinter_virtualbase_setPageRanges(self: pointer, ranges: pointer): void {.importc: "QPrinter_virtualbase_setPageRanges".}
proc fcQPrinter_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPrinter_virtualbase_initPainter".}
proc fcQPrinter_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPrinter_virtualbase_redirected".}
proc fcQPrinter_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QPrinter_virtualbase_sharedPainter".}
proc fcQPrinter_protectedbase_setEngines(self: pointer, printEngine: pointer, paintEngine: pointer): void {.importc: "QPrinter_protectedbase_setEngines".}
proc fcQPrinter_new(vtbl: pointer, ): ptr cQPrinter {.importc: "QPrinter_new".}
proc fcQPrinter_new2(vtbl: pointer, printer: pointer): ptr cQPrinter {.importc: "QPrinter_new2".}
proc fcQPrinter_new3(vtbl: pointer, mode: cint): ptr cQPrinter {.importc: "QPrinter_new3".}
proc fcQPrinter_new4(vtbl: pointer, printer: pointer, mode: cint): ptr cQPrinter {.importc: "QPrinter_new4".}
proc fcQPrinter_delete(self: pointer) {.importc: "QPrinter_delete".}

proc devType*(self: gen_qprinter_types.QPrinter, ): cint =
  fcQPrinter_devType(self.h)

proc setOutputFormat*(self: gen_qprinter_types.QPrinter, format: cint): void =
  fcQPrinter_setOutputFormat(self.h, cint(format))

proc outputFormat*(self: gen_qprinter_types.QPrinter, ): cint =
  cint(fcQPrinter_outputFormat(self.h))

proc setPdfVersion*(self: gen_qprinter_types.QPrinter, version: cint): void =
  fcQPrinter_setPdfVersion(self.h, cint(version))

proc pdfVersion*(self: gen_qprinter_types.QPrinter, ): cint =
  cint(fcQPrinter_pdfVersion(self.h))

proc setPrinterName*(self: gen_qprinter_types.QPrinter, printerName: string): void =
  fcQPrinter_setPrinterName(self.h, struct_miqt_string(data: printerName, len: csize_t(len(printerName))))

proc printerName*(self: gen_qprinter_types.QPrinter, ): string =
  let v_ms = fcQPrinter_printerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qprinter_types.QPrinter, ): bool =
  fcQPrinter_isValid(self.h)

proc setOutputFileName*(self: gen_qprinter_types.QPrinter, outputFileName: string): void =
  fcQPrinter_setOutputFileName(self.h, struct_miqt_string(data: outputFileName, len: csize_t(len(outputFileName))))

proc outputFileName*(self: gen_qprinter_types.QPrinter, ): string =
  let v_ms = fcQPrinter_outputFileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPrintProgram*(self: gen_qprinter_types.QPrinter, printProgram: string): void =
  fcQPrinter_setPrintProgram(self.h, struct_miqt_string(data: printProgram, len: csize_t(len(printProgram))))

proc printProgram*(self: gen_qprinter_types.QPrinter, ): string =
  let v_ms = fcQPrinter_printProgram(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setDocName*(self: gen_qprinter_types.QPrinter, docName: string): void =
  fcQPrinter_setDocName(self.h, struct_miqt_string(data: docName, len: csize_t(len(docName))))

proc docName*(self: gen_qprinter_types.QPrinter, ): string =
  let v_ms = fcQPrinter_docName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCreator*(self: gen_qprinter_types.QPrinter, creator: string): void =
  fcQPrinter_setCreator(self.h, struct_miqt_string(data: creator, len: csize_t(len(creator))))

proc creator*(self: gen_qprinter_types.QPrinter, ): string =
  let v_ms = fcQPrinter_creator(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPageOrder*(self: gen_qprinter_types.QPrinter, pageOrder: cint): void =
  fcQPrinter_setPageOrder(self.h, cint(pageOrder))

proc pageOrder*(self: gen_qprinter_types.QPrinter, ): cint =
  cint(fcQPrinter_pageOrder(self.h))

proc setResolution*(self: gen_qprinter_types.QPrinter, resolution: cint): void =
  fcQPrinter_setResolution(self.h, resolution)

proc resolution*(self: gen_qprinter_types.QPrinter, ): cint =
  fcQPrinter_resolution(self.h)

proc setColorMode*(self: gen_qprinter_types.QPrinter, colorMode: cint): void =
  fcQPrinter_setColorMode(self.h, cint(colorMode))

proc colorMode*(self: gen_qprinter_types.QPrinter, ): cint =
  cint(fcQPrinter_colorMode(self.h))

proc setCollateCopies*(self: gen_qprinter_types.QPrinter, collate: bool): void =
  fcQPrinter_setCollateCopies(self.h, collate)

proc collateCopies*(self: gen_qprinter_types.QPrinter, ): bool =
  fcQPrinter_collateCopies(self.h)

proc setFullPage*(self: gen_qprinter_types.QPrinter, fullPage: bool): void =
  fcQPrinter_setFullPage(self.h, fullPage)

proc fullPage*(self: gen_qprinter_types.QPrinter, ): bool =
  fcQPrinter_fullPage(self.h)

proc setCopyCount*(self: gen_qprinter_types.QPrinter, copyCount: cint): void =
  fcQPrinter_setCopyCount(self.h, copyCount)

proc copyCount*(self: gen_qprinter_types.QPrinter, ): cint =
  fcQPrinter_copyCount(self.h)

proc supportsMultipleCopies*(self: gen_qprinter_types.QPrinter, ): bool =
  fcQPrinter_supportsMultipleCopies(self.h)

proc setPaperSource*(self: gen_qprinter_types.QPrinter, paperSource: cint): void =
  fcQPrinter_setPaperSource(self.h, cint(paperSource))

proc paperSource*(self: gen_qprinter_types.QPrinter, ): cint =
  cint(fcQPrinter_paperSource(self.h))

proc setDuplex*(self: gen_qprinter_types.QPrinter, duplex: cint): void =
  fcQPrinter_setDuplex(self.h, cint(duplex))

proc duplex*(self: gen_qprinter_types.QPrinter, ): cint =
  cint(fcQPrinter_duplex(self.h))

proc supportedResolutions*(self: gen_qprinter_types.QPrinter, ): seq[cint] =
  var v_ma = fcQPrinter_supportedResolutions(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc setFontEmbeddingEnabled*(self: gen_qprinter_types.QPrinter, enable: bool): void =
  fcQPrinter_setFontEmbeddingEnabled(self.h, enable)

proc fontEmbeddingEnabled*(self: gen_qprinter_types.QPrinter, ): bool =
  fcQPrinter_fontEmbeddingEnabled(self.h)

proc paperRect*(self: gen_qprinter_types.QPrinter, param1: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPrinter_paperRect(self.h, cint(param1)))

proc pageRect*(self: gen_qprinter_types.QPrinter, param1: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPrinter_pageRect(self.h, cint(param1)))

proc printerSelectionOption*(self: gen_qprinter_types.QPrinter, ): string =
  let v_ms = fcQPrinter_printerSelectionOption(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPrinterSelectionOption*(self: gen_qprinter_types.QPrinter, printerSelectionOption: string): void =
  fcQPrinter_setPrinterSelectionOption(self.h, struct_miqt_string(data: printerSelectionOption, len: csize_t(len(printerSelectionOption))))

proc newPage*(self: gen_qprinter_types.QPrinter, ): bool =
  fcQPrinter_newPage(self.h)

proc abort*(self: gen_qprinter_types.QPrinter, ): bool =
  fcQPrinter_abort(self.h)

proc printerState*(self: gen_qprinter_types.QPrinter, ): cint =
  cint(fcQPrinter_printerState(self.h))

proc paintEngine*(self: gen_qprinter_types.QPrinter, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPrinter_paintEngine(self.h))

proc printEngine*(self: gen_qprinter_types.QPrinter, ): gen_qprintengine_types.QPrintEngine =
  gen_qprintengine_types.QPrintEngine(h: fcQPrinter_printEngine(self.h))

proc setFromTo*(self: gen_qprinter_types.QPrinter, fromPage: cint, toPage: cint): void =
  fcQPrinter_setFromTo(self.h, fromPage, toPage)

proc fromPage*(self: gen_qprinter_types.QPrinter, ): cint =
  fcQPrinter_fromPage(self.h)

proc toPage*(self: gen_qprinter_types.QPrinter, ): cint =
  fcQPrinter_toPage(self.h)

proc setPrintRange*(self: gen_qprinter_types.QPrinter, range: cint): void =
  fcQPrinter_setPrintRange(self.h, cint(range))

proc printRange*(self: gen_qprinter_types.QPrinter, ): cint =
  cint(fcQPrinter_printRange(self.h))

type QPrinterdevTypeProc* = proc(self: QPrinter): cint {.raises: [], gcsafe.}
type QPrinternewPageProc* = proc(self: QPrinter): bool {.raises: [], gcsafe.}
type QPrinterpaintEngineProc* = proc(self: QPrinter): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPrintermetricProc* = proc(self: QPrinter, param1: cint): cint {.raises: [], gcsafe.}
type QPrintersetPageLayoutProc* = proc(self: QPrinter, pageLayout: gen_qpagelayout_types.QPageLayout): bool {.raises: [], gcsafe.}
type QPrintersetPageSizeProc* = proc(self: QPrinter, pageSize: gen_qpagesize_types.QPageSize): bool {.raises: [], gcsafe.}
type QPrintersetPageOrientationProc* = proc(self: QPrinter, orientation: cint): bool {.raises: [], gcsafe.}
type QPrintersetPageMarginsProc* = proc(self: QPrinter, margins: gen_qmargins_types.QMarginsF, units: cint): bool {.raises: [], gcsafe.}
type QPrintersetPageRangesProc* = proc(self: QPrinter, ranges: gen_qpageranges_types.QPageRanges): void {.raises: [], gcsafe.}
type QPrinterinitPainterProc* = proc(self: QPrinter, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPrinterredirectedProc* = proc(self: QPrinter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPrintersharedPainterProc* = proc(self: QPrinter): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPrinterVTable* = object
  vtbl: cQPrinterVTable
  devType*: QPrinterdevTypeProc
  newPage*: QPrinternewPageProc
  paintEngine*: QPrinterpaintEngineProc
  metric*: QPrintermetricProc
  setPageLayout*: QPrintersetPageLayoutProc
  setPageSize*: QPrintersetPageSizeProc
  setPageOrientation*: QPrintersetPageOrientationProc
  setPageMargins*: QPrintersetPageMarginsProc
  setPageRanges*: QPrintersetPageRangesProc
  initPainter*: QPrinterinitPainterProc
  redirected*: QPrinterredirectedProc
  sharedPainter*: QPrintersharedPainterProc
proc QPrinterdevType*(self: gen_qprinter_types.QPrinter, ): cint =
  fcQPrinter_virtualbase_devType(self.h)

proc miqt_exec_callback_cQPrinter_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QPrinternewPage*(self: gen_qprinter_types.QPrinter, ): bool =
  fcQPrinter_virtualbase_newPage(self.h)

proc miqt_exec_callback_cQPrinter_newPage(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  var virtualReturn = vtbl[].newPage(self)
  virtualReturn

proc QPrinterpaintEngine*(self: gen_qprinter_types.QPrinter, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQPrinter_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQPrinter_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QPrintermetric*(self: gen_qprinter_types.QPrinter, param1: cint): cint =
  fcQPrinter_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQPrinter_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  let slotval1 = cint(param1)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPrintersetPageLayout*(self: gen_qprinter_types.QPrinter, pageLayout: gen_qpagelayout_types.QPageLayout): bool =
  fcQPrinter_virtualbase_setPageLayout(self.h, pageLayout.h)

proc miqt_exec_callback_cQPrinter_setPageLayout(vtbl: pointer, self: pointer, pageLayout: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  let slotval1 = gen_qpagelayout_types.QPageLayout(h: pageLayout)
  var virtualReturn = vtbl[].setPageLayout(self, slotval1)
  virtualReturn

proc QPrintersetPageSize*(self: gen_qprinter_types.QPrinter, pageSize: gen_qpagesize_types.QPageSize): bool =
  fcQPrinter_virtualbase_setPageSize(self.h, pageSize.h)

proc miqt_exec_callback_cQPrinter_setPageSize(vtbl: pointer, self: pointer, pageSize: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  let slotval1 = gen_qpagesize_types.QPageSize(h: pageSize)
  var virtualReturn = vtbl[].setPageSize(self, slotval1)
  virtualReturn

proc QPrintersetPageOrientation*(self: gen_qprinter_types.QPrinter, orientation: cint): bool =
  fcQPrinter_virtualbase_setPageOrientation(self.h, cint(orientation))

proc miqt_exec_callback_cQPrinter_setPageOrientation(vtbl: pointer, self: pointer, orientation: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  let slotval1 = cint(orientation)
  var virtualReturn = vtbl[].setPageOrientation(self, slotval1)
  virtualReturn

proc QPrintersetPageMargins*(self: gen_qprinter_types.QPrinter, margins: gen_qmargins_types.QMarginsF, units: cint): bool =
  fcQPrinter_virtualbase_setPageMargins(self.h, margins.h, cint(units))

proc miqt_exec_callback_cQPrinter_setPageMargins(vtbl: pointer, self: pointer, margins: pointer, units: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  let slotval1 = gen_qmargins_types.QMarginsF(h: margins)
  let slotval2 = cint(units)
  var virtualReturn = vtbl[].setPageMargins(self, slotval1, slotval2)
  virtualReturn

proc QPrintersetPageRanges*(self: gen_qprinter_types.QPrinter, ranges: gen_qpageranges_types.QPageRanges): void =
  fcQPrinter_virtualbase_setPageRanges(self.h, ranges.h)

proc miqt_exec_callback_cQPrinter_setPageRanges(vtbl: pointer, self: pointer, ranges: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  let slotval1 = gen_qpageranges_types.QPageRanges(h: ranges)
  vtbl[].setPageRanges(self, slotval1)

proc QPrinterinitPainter*(self: gen_qprinter_types.QPrinter, painter: gen_qpainter_types.QPainter): void =
  fcQPrinter_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQPrinter_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QPrinterredirected*(self: gen_qprinter_types.QPrinter, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPrinter_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQPrinter_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QPrintersharedPainter*(self: gen_qprinter_types.QPrinter, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPrinter_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQPrinter_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPrinterVTable](vtbl)
  let self = QPrinter(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc setEngines*(self: gen_qprinter_types.QPrinter, printEngine: gen_qprintengine_types.QPrintEngine, paintEngine: gen_qpaintengine_types.QPaintEngine): void =
  fcQPrinter_protectedbase_setEngines(self.h, printEngine.h, paintEngine.h)

proc create*(T: type gen_qprinter_types.QPrinter,
    vtbl: ref QPrinterVTable = nil): gen_qprinter_types.QPrinter =
  let vtbl = if vtbl == nil: new QPrinterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrinterVTable, _: ptr cQPrinter) {.cdecl.} =
    let vtbl = cast[ref QPrinterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrinter_devType
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQPrinter_newPage
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrinter_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrinter_metric
  if not isNil(vtbl.setPageLayout):
    vtbl[].vtbl.setPageLayout = miqt_exec_callback_cQPrinter_setPageLayout
  if not isNil(vtbl.setPageSize):
    vtbl[].vtbl.setPageSize = miqt_exec_callback_cQPrinter_setPageSize
  if not isNil(vtbl.setPageOrientation):
    vtbl[].vtbl.setPageOrientation = miqt_exec_callback_cQPrinter_setPageOrientation
  if not isNil(vtbl.setPageMargins):
    vtbl[].vtbl.setPageMargins = miqt_exec_callback_cQPrinter_setPageMargins
  if not isNil(vtbl.setPageRanges):
    vtbl[].vtbl.setPageRanges = miqt_exec_callback_cQPrinter_setPageRanges
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrinter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrinter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrinter_sharedPainter
  gen_qprinter_types.QPrinter(h: fcQPrinter_new(addr(vtbl[]), ))

proc create*(T: type gen_qprinter_types.QPrinter,
    printer: gen_qprinterinfo_types.QPrinterInfo,
    vtbl: ref QPrinterVTable = nil): gen_qprinter_types.QPrinter =
  let vtbl = if vtbl == nil: new QPrinterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrinterVTable, _: ptr cQPrinter) {.cdecl.} =
    let vtbl = cast[ref QPrinterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrinter_devType
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQPrinter_newPage
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrinter_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrinter_metric
  if not isNil(vtbl.setPageLayout):
    vtbl[].vtbl.setPageLayout = miqt_exec_callback_cQPrinter_setPageLayout
  if not isNil(vtbl.setPageSize):
    vtbl[].vtbl.setPageSize = miqt_exec_callback_cQPrinter_setPageSize
  if not isNil(vtbl.setPageOrientation):
    vtbl[].vtbl.setPageOrientation = miqt_exec_callback_cQPrinter_setPageOrientation
  if not isNil(vtbl.setPageMargins):
    vtbl[].vtbl.setPageMargins = miqt_exec_callback_cQPrinter_setPageMargins
  if not isNil(vtbl.setPageRanges):
    vtbl[].vtbl.setPageRanges = miqt_exec_callback_cQPrinter_setPageRanges
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrinter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrinter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrinter_sharedPainter
  gen_qprinter_types.QPrinter(h: fcQPrinter_new2(addr(vtbl[]), printer.h))

proc create*(T: type gen_qprinter_types.QPrinter,
    mode: cint,
    vtbl: ref QPrinterVTable = nil): gen_qprinter_types.QPrinter =
  let vtbl = if vtbl == nil: new QPrinterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrinterVTable, _: ptr cQPrinter) {.cdecl.} =
    let vtbl = cast[ref QPrinterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrinter_devType
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQPrinter_newPage
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrinter_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrinter_metric
  if not isNil(vtbl.setPageLayout):
    vtbl[].vtbl.setPageLayout = miqt_exec_callback_cQPrinter_setPageLayout
  if not isNil(vtbl.setPageSize):
    vtbl[].vtbl.setPageSize = miqt_exec_callback_cQPrinter_setPageSize
  if not isNil(vtbl.setPageOrientation):
    vtbl[].vtbl.setPageOrientation = miqt_exec_callback_cQPrinter_setPageOrientation
  if not isNil(vtbl.setPageMargins):
    vtbl[].vtbl.setPageMargins = miqt_exec_callback_cQPrinter_setPageMargins
  if not isNil(vtbl.setPageRanges):
    vtbl[].vtbl.setPageRanges = miqt_exec_callback_cQPrinter_setPageRanges
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrinter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrinter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrinter_sharedPainter
  gen_qprinter_types.QPrinter(h: fcQPrinter_new3(addr(vtbl[]), cint(mode)))

proc create*(T: type gen_qprinter_types.QPrinter,
    printer: gen_qprinterinfo_types.QPrinterInfo, mode: cint,
    vtbl: ref QPrinterVTable = nil): gen_qprinter_types.QPrinter =
  let vtbl = if vtbl == nil: new QPrinterVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPrinterVTable, _: ptr cQPrinter) {.cdecl.} =
    let vtbl = cast[ref QPrinterVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPrinter_devType
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQPrinter_newPage
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPrinter_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPrinter_metric
  if not isNil(vtbl.setPageLayout):
    vtbl[].vtbl.setPageLayout = miqt_exec_callback_cQPrinter_setPageLayout
  if not isNil(vtbl.setPageSize):
    vtbl[].vtbl.setPageSize = miqt_exec_callback_cQPrinter_setPageSize
  if not isNil(vtbl.setPageOrientation):
    vtbl[].vtbl.setPageOrientation = miqt_exec_callback_cQPrinter_setPageOrientation
  if not isNil(vtbl.setPageMargins):
    vtbl[].vtbl.setPageMargins = miqt_exec_callback_cQPrinter_setPageMargins
  if not isNil(vtbl.setPageRanges):
    vtbl[].vtbl.setPageRanges = miqt_exec_callback_cQPrinter_setPageRanges
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPrinter_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPrinter_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPrinter_sharedPainter
  gen_qprinter_types.QPrinter(h: fcQPrinter_new4(addr(vtbl[]), printer.h, cint(mode)))

proc delete*(self: gen_qprinter_types.QPrinter) =
  fcQPrinter_delete(self.h)
