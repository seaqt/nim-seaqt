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


type QPrintEnginePrintEnginePropertyKeyEnum* = distinct cint
template PPK_CollateCopies*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 0
template PPK_ColorMode*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 1
template PPK_Creator*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 2
template PPK_DocumentName*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 3
template PPK_FullPage*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 4
template PPK_NumberOfCopies*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 5
template PPK_Orientation*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 6
template PPK_OutputFileName*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 7
template PPK_PageOrder*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 8
template PPK_PageRect*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 9
template PPK_PageSize*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 10
template PPK_PaperRect*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 11
template PPK_PaperSource*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 12
template PPK_PrinterName*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 13
template PPK_PrinterProgram*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 14
template PPK_Resolution*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 15
template PPK_SelectionOption*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 16
template PPK_SupportedResolutions*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 17
template PPK_WindowsPageSize*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 18
template PPK_FontEmbedding*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 19
template PPK_Duplex*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 20
template PPK_PaperSources*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 21
template PPK_CustomPaperSize*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 22
template PPK_PageMargins*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 23
template PPK_CopyCount*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 24
template PPK_SupportsMultipleCopies*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 25
template PPK_PaperName*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 26
template PPK_QPageSize*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 27
template PPK_QPageMargins*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 28
template PPK_QPageLayout*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 29
template PPK_PaperSize*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 10
template PPK_CustomBase*(_: type QPrintEnginePrintEnginePropertyKeyEnum): untyped = 65280


import ./gen_qprintengine_types
export gen_qprintengine_types

import
  ../QtCore/gen_qvariant_types
export
  gen_qvariant_types

type cQPrintEngine*{.exportc: "QPrintEngine", incompleteStruct.} = object

proc fcQPrintEngine_setProperty(self: pointer, key: cint, value: pointer): void {.importc: "QPrintEngine_setProperty".}
proc fcQPrintEngine_property(self: pointer, key: cint): pointer {.importc: "QPrintEngine_property".}
proc fcQPrintEngine_newPage(self: pointer, ): bool {.importc: "QPrintEngine_newPage".}
proc fcQPrintEngine_abort(self: pointer, ): bool {.importc: "QPrintEngine_abort".}
proc fcQPrintEngine_metric(self: pointer, param1: cint): cint {.importc: "QPrintEngine_metric".}
proc fcQPrintEngine_printerState(self: pointer, ): cint {.importc: "QPrintEngine_printerState".}
proc fcQPrintEngine_operatorAssign(self: pointer, param1: pointer): void {.importc: "QPrintEngine_operatorAssign".}

proc setProperty*(self: gen_qprintengine_types.QPrintEngine, key: cint, value: gen_qvariant_types.QVariant): void =
  fcQPrintEngine_setProperty(self.h, cint(key), value.h)

proc property*(self: gen_qprintengine_types.QPrintEngine, key: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQPrintEngine_property(self.h, cint(key)), owned: true)

proc newPage*(self: gen_qprintengine_types.QPrintEngine, ): bool =
  fcQPrintEngine_newPage(self.h)

proc abort*(self: gen_qprintengine_types.QPrintEngine, ): bool =
  fcQPrintEngine_abort(self.h)

proc metric*(self: gen_qprintengine_types.QPrintEngine, param1: cint): cint =
  fcQPrintEngine_metric(self.h, cint(param1))

proc printerState*(self: gen_qprintengine_types.QPrintEngine, ): cint =
  cint(fcQPrintEngine_printerState(self.h))

proc operatorAssign*(self: gen_qprintengine_types.QPrintEngine, param1: gen_qprintengine_types.QPrintEngine): void =
  fcQPrintEngine_operatorAssign(self.h, param1.h)

