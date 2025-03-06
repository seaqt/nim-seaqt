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
{.compile("gen_qpagedpaintdevice.cpp", cflags).}


type QPagedPaintDevicePageSizeEnum* = distinct cint
template A4*(_: type QPagedPaintDevicePageSizeEnum): untyped = 0
template B5*(_: type QPagedPaintDevicePageSizeEnum): untyped = 1
template Letter*(_: type QPagedPaintDevicePageSizeEnum): untyped = 2
template Legal*(_: type QPagedPaintDevicePageSizeEnum): untyped = 3
template Executive*(_: type QPagedPaintDevicePageSizeEnum): untyped = 4
template A0*(_: type QPagedPaintDevicePageSizeEnum): untyped = 5
template A1*(_: type QPagedPaintDevicePageSizeEnum): untyped = 6
template A2*(_: type QPagedPaintDevicePageSizeEnum): untyped = 7
template A3*(_: type QPagedPaintDevicePageSizeEnum): untyped = 8
template A5*(_: type QPagedPaintDevicePageSizeEnum): untyped = 9
template A6*(_: type QPagedPaintDevicePageSizeEnum): untyped = 10
template A7*(_: type QPagedPaintDevicePageSizeEnum): untyped = 11
template A8*(_: type QPagedPaintDevicePageSizeEnum): untyped = 12
template A9*(_: type QPagedPaintDevicePageSizeEnum): untyped = 13
template B0*(_: type QPagedPaintDevicePageSizeEnum): untyped = 14
template B1*(_: type QPagedPaintDevicePageSizeEnum): untyped = 15
template B10*(_: type QPagedPaintDevicePageSizeEnum): untyped = 16
template B2*(_: type QPagedPaintDevicePageSizeEnum): untyped = 17
template B3*(_: type QPagedPaintDevicePageSizeEnum): untyped = 18
template B4*(_: type QPagedPaintDevicePageSizeEnum): untyped = 19
template B6*(_: type QPagedPaintDevicePageSizeEnum): untyped = 20
template B7*(_: type QPagedPaintDevicePageSizeEnum): untyped = 21
template B8*(_: type QPagedPaintDevicePageSizeEnum): untyped = 22
template B9*(_: type QPagedPaintDevicePageSizeEnum): untyped = 23
template C5E*(_: type QPagedPaintDevicePageSizeEnum): untyped = 24
template Comm10E*(_: type QPagedPaintDevicePageSizeEnum): untyped = 25
template DLE*(_: type QPagedPaintDevicePageSizeEnum): untyped = 26
template Folio*(_: type QPagedPaintDevicePageSizeEnum): untyped = 27
template Ledger*(_: type QPagedPaintDevicePageSizeEnum): untyped = 28
template Tabloid*(_: type QPagedPaintDevicePageSizeEnum): untyped = 29
template Custom*(_: type QPagedPaintDevicePageSizeEnum): untyped = 30
template A10*(_: type QPagedPaintDevicePageSizeEnum): untyped = 31
template A3Extra*(_: type QPagedPaintDevicePageSizeEnum): untyped = 32
template A4Extra*(_: type QPagedPaintDevicePageSizeEnum): untyped = 33
template A4Plus*(_: type QPagedPaintDevicePageSizeEnum): untyped = 34
template A4Small*(_: type QPagedPaintDevicePageSizeEnum): untyped = 35
template A5Extra*(_: type QPagedPaintDevicePageSizeEnum): untyped = 36
template B5Extra*(_: type QPagedPaintDevicePageSizeEnum): untyped = 37
template JisB0*(_: type QPagedPaintDevicePageSizeEnum): untyped = 38
template JisB1*(_: type QPagedPaintDevicePageSizeEnum): untyped = 39
template JisB2*(_: type QPagedPaintDevicePageSizeEnum): untyped = 40
template JisB3*(_: type QPagedPaintDevicePageSizeEnum): untyped = 41
template JisB4*(_: type QPagedPaintDevicePageSizeEnum): untyped = 42
template JisB5*(_: type QPagedPaintDevicePageSizeEnum): untyped = 43
template JisB6*(_: type QPagedPaintDevicePageSizeEnum): untyped = 44
template JisB7*(_: type QPagedPaintDevicePageSizeEnum): untyped = 45
template JisB8*(_: type QPagedPaintDevicePageSizeEnum): untyped = 46
template JisB9*(_: type QPagedPaintDevicePageSizeEnum): untyped = 47
template JisB10*(_: type QPagedPaintDevicePageSizeEnum): untyped = 48
template AnsiC*(_: type QPagedPaintDevicePageSizeEnum): untyped = 49
template AnsiD*(_: type QPagedPaintDevicePageSizeEnum): untyped = 50
template AnsiE*(_: type QPagedPaintDevicePageSizeEnum): untyped = 51
template LegalExtra*(_: type QPagedPaintDevicePageSizeEnum): untyped = 52
template LetterExtra*(_: type QPagedPaintDevicePageSizeEnum): untyped = 53
template LetterPlus*(_: type QPagedPaintDevicePageSizeEnum): untyped = 54
template LetterSmall*(_: type QPagedPaintDevicePageSizeEnum): untyped = 55
template TabloidExtra*(_: type QPagedPaintDevicePageSizeEnum): untyped = 56
template ArchA*(_: type QPagedPaintDevicePageSizeEnum): untyped = 57
template ArchB*(_: type QPagedPaintDevicePageSizeEnum): untyped = 58
template ArchC*(_: type QPagedPaintDevicePageSizeEnum): untyped = 59
template ArchD*(_: type QPagedPaintDevicePageSizeEnum): untyped = 60
template ArchE*(_: type QPagedPaintDevicePageSizeEnum): untyped = 61
template Imperial7x9*(_: type QPagedPaintDevicePageSizeEnum): untyped = 62
template Imperial8x10*(_: type QPagedPaintDevicePageSizeEnum): untyped = 63
template Imperial9x11*(_: type QPagedPaintDevicePageSizeEnum): untyped = 64
template Imperial9x12*(_: type QPagedPaintDevicePageSizeEnum): untyped = 65
template Imperial10x11*(_: type QPagedPaintDevicePageSizeEnum): untyped = 66
template Imperial10x13*(_: type QPagedPaintDevicePageSizeEnum): untyped = 67
template Imperial10x14*(_: type QPagedPaintDevicePageSizeEnum): untyped = 68
template Imperial12x11*(_: type QPagedPaintDevicePageSizeEnum): untyped = 69
template Imperial15x11*(_: type QPagedPaintDevicePageSizeEnum): untyped = 70
template ExecutiveStandard*(_: type QPagedPaintDevicePageSizeEnum): untyped = 71
template Note*(_: type QPagedPaintDevicePageSizeEnum): untyped = 72
template Quarto*(_: type QPagedPaintDevicePageSizeEnum): untyped = 73
template Statement*(_: type QPagedPaintDevicePageSizeEnum): untyped = 74
template SuperA*(_: type QPagedPaintDevicePageSizeEnum): untyped = 75
template SuperB*(_: type QPagedPaintDevicePageSizeEnum): untyped = 76
template Postcard*(_: type QPagedPaintDevicePageSizeEnum): untyped = 77
template DoublePostcard*(_: type QPagedPaintDevicePageSizeEnum): untyped = 78
template Prc16K*(_: type QPagedPaintDevicePageSizeEnum): untyped = 79
template Prc32K*(_: type QPagedPaintDevicePageSizeEnum): untyped = 80
template Prc32KBig*(_: type QPagedPaintDevicePageSizeEnum): untyped = 81
template FanFoldUS*(_: type QPagedPaintDevicePageSizeEnum): untyped = 82
template FanFoldGerman*(_: type QPagedPaintDevicePageSizeEnum): untyped = 83
template FanFoldGermanLegal*(_: type QPagedPaintDevicePageSizeEnum): untyped = 84
template EnvelopeB4*(_: type QPagedPaintDevicePageSizeEnum): untyped = 85
template EnvelopeB5*(_: type QPagedPaintDevicePageSizeEnum): untyped = 86
template EnvelopeB6*(_: type QPagedPaintDevicePageSizeEnum): untyped = 87
template EnvelopeC0*(_: type QPagedPaintDevicePageSizeEnum): untyped = 88
template EnvelopeC1*(_: type QPagedPaintDevicePageSizeEnum): untyped = 89
template EnvelopeC2*(_: type QPagedPaintDevicePageSizeEnum): untyped = 90
template EnvelopeC3*(_: type QPagedPaintDevicePageSizeEnum): untyped = 91
template EnvelopeC4*(_: type QPagedPaintDevicePageSizeEnum): untyped = 92
template EnvelopeC6*(_: type QPagedPaintDevicePageSizeEnum): untyped = 93
template EnvelopeC65*(_: type QPagedPaintDevicePageSizeEnum): untyped = 94
template EnvelopeC7*(_: type QPagedPaintDevicePageSizeEnum): untyped = 95
template Envelope9*(_: type QPagedPaintDevicePageSizeEnum): untyped = 96
template Envelope11*(_: type QPagedPaintDevicePageSizeEnum): untyped = 97
template Envelope12*(_: type QPagedPaintDevicePageSizeEnum): untyped = 98
template Envelope14*(_: type QPagedPaintDevicePageSizeEnum): untyped = 99
template EnvelopeMonarch*(_: type QPagedPaintDevicePageSizeEnum): untyped = 100
template EnvelopePersonal*(_: type QPagedPaintDevicePageSizeEnum): untyped = 101
template EnvelopeChou3*(_: type QPagedPaintDevicePageSizeEnum): untyped = 102
template EnvelopeChou4*(_: type QPagedPaintDevicePageSizeEnum): untyped = 103
template EnvelopeInvite*(_: type QPagedPaintDevicePageSizeEnum): untyped = 104
template EnvelopeItalian*(_: type QPagedPaintDevicePageSizeEnum): untyped = 105
template EnvelopeKaku2*(_: type QPagedPaintDevicePageSizeEnum): untyped = 106
template EnvelopeKaku3*(_: type QPagedPaintDevicePageSizeEnum): untyped = 107
template EnvelopePrc1*(_: type QPagedPaintDevicePageSizeEnum): untyped = 108
template EnvelopePrc2*(_: type QPagedPaintDevicePageSizeEnum): untyped = 109
template EnvelopePrc3*(_: type QPagedPaintDevicePageSizeEnum): untyped = 110
template EnvelopePrc4*(_: type QPagedPaintDevicePageSizeEnum): untyped = 111
template EnvelopePrc5*(_: type QPagedPaintDevicePageSizeEnum): untyped = 112
template EnvelopePrc6*(_: type QPagedPaintDevicePageSizeEnum): untyped = 113
template EnvelopePrc7*(_: type QPagedPaintDevicePageSizeEnum): untyped = 114
template EnvelopePrc8*(_: type QPagedPaintDevicePageSizeEnum): untyped = 115
template EnvelopePrc9*(_: type QPagedPaintDevicePageSizeEnum): untyped = 116
template EnvelopePrc10*(_: type QPagedPaintDevicePageSizeEnum): untyped = 117
template EnvelopeYou4*(_: type QPagedPaintDevicePageSizeEnum): untyped = 118
template LastPageSize*(_: type QPagedPaintDevicePageSizeEnum): untyped = 118
template NPageSize*(_: type QPagedPaintDevicePageSizeEnum): untyped = 118
template NPaperSize*(_: type QPagedPaintDevicePageSizeEnum): untyped = 118
template AnsiA*(_: type QPagedPaintDevicePageSizeEnum): untyped = 2
template AnsiB*(_: type QPagedPaintDevicePageSizeEnum): untyped = 28
template EnvelopeC5*(_: type QPagedPaintDevicePageSizeEnum): untyped = 24
template EnvelopeDL*(_: type QPagedPaintDevicePageSizeEnum): untyped = 26
template Envelope10*(_: type QPagedPaintDevicePageSizeEnum): untyped = 25


type QPagedPaintDevicePdfVersionEnum* = distinct cint
template PdfVersion_1_4*(_: type QPagedPaintDevicePdfVersionEnum): untyped = 0
template PdfVersion_A1b*(_: type QPagedPaintDevicePdfVersionEnum): untyped = 1
template PdfVersion_1_6*(_: type QPagedPaintDevicePdfVersionEnum): untyped = 2


import ./gen_qpagedpaintdevice_types
export gen_qpagedpaintdevice_types

import
  ../QtCore/gen_qmargins_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qsize_types,
  ./gen_qpagelayout_types,
  ./gen_qpagesize_types,
  ./gen_qpaintdevice,
  ./gen_qpaintengine_types,
  ./gen_qpainter_types
export
  gen_qmargins_types,
  gen_qpoint_types,
  gen_qsize_types,
  gen_qpagelayout_types,
  gen_qpagesize_types,
  gen_qpaintdevice,
  gen_qpaintengine_types,
  gen_qpainter_types

type cQPagedPaintDevice*{.exportc: "QPagedPaintDevice", incompleteStruct.} = object
type cQPagedPaintDeviceMargins*{.exportc: "QPagedPaintDevice__Margins", incompleteStruct.} = object

proc fcQPagedPaintDevice_newPage(self: pointer, ): bool {.importc: "QPagedPaintDevice_newPage".}
proc fcQPagedPaintDevice_setPageLayout(self: pointer, pageLayout: pointer): bool {.importc: "QPagedPaintDevice_setPageLayout".}
proc fcQPagedPaintDevice_setPageSize(self: pointer, pageSize: pointer): bool {.importc: "QPagedPaintDevice_setPageSize".}
proc fcQPagedPaintDevice_setPageOrientation(self: pointer, orientation: cint): bool {.importc: "QPagedPaintDevice_setPageOrientation".}
proc fcQPagedPaintDevice_setPageMargins(self: pointer, margins: pointer): bool {.importc: "QPagedPaintDevice_setPageMargins".}
proc fcQPagedPaintDevice_setPageMargins2(self: pointer, margins: pointer, units: cint): bool {.importc: "QPagedPaintDevice_setPageMargins2".}
proc fcQPagedPaintDevice_pageLayout(self: pointer, ): pointer {.importc: "QPagedPaintDevice_pageLayout".}
proc fcQPagedPaintDevice_setPageSizeWithSize(self: pointer, size: cint): void {.importc: "QPagedPaintDevice_setPageSizeWithSize".}
proc fcQPagedPaintDevice_pageSize(self: pointer, ): cint {.importc: "QPagedPaintDevice_pageSize".}
proc fcQPagedPaintDevice_setPageSizeMM(self: pointer, size: pointer): void {.importc: "QPagedPaintDevice_setPageSizeMM".}
proc fcQPagedPaintDevice_pageSizeMM(self: pointer, ): pointer {.importc: "QPagedPaintDevice_pageSizeMM".}
proc fcQPagedPaintDevice_setMargins(self: pointer, margins: pointer): void {.importc: "QPagedPaintDevice_setMargins".}
proc fcQPagedPaintDevice_margins(self: pointer, ): pointer {.importc: "QPagedPaintDevice_margins".}
type cQPagedPaintDeviceVTable = object
  destructor*: proc(vtbl: ptr cQPagedPaintDeviceVTable, self: ptr cQPagedPaintDevice) {.cdecl, raises:[], gcsafe.}
  newPage*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setPageSizeWithSize*: proc(vtbl, self: pointer, size: cint): void {.cdecl, raises: [], gcsafe.}
  setPageSizeMM*: proc(vtbl, self: pointer, size: pointer): void {.cdecl, raises: [], gcsafe.}
  setMargins*: proc(vtbl, self: pointer, margins: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, metric: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQPagedPaintDevice_virtualbase_setPageSizeWithSize(self: pointer, size: cint): void {.importc: "QPagedPaintDevice_virtualbase_setPageSizeWithSize".}
proc fcQPagedPaintDevice_virtualbase_setPageSizeMM(self: pointer, size: pointer): void {.importc: "QPagedPaintDevice_virtualbase_setPageSizeMM".}
proc fcQPagedPaintDevice_virtualbase_setMargins(self: pointer, margins: pointer): void {.importc: "QPagedPaintDevice_virtualbase_setMargins".}
proc fcQPagedPaintDevice_virtualbase_devType(self: pointer, ): cint {.importc: "QPagedPaintDevice_virtualbase_devType".}
proc fcQPagedPaintDevice_virtualbase_metric(self: pointer, metric: cint): cint {.importc: "QPagedPaintDevice_virtualbase_metric".}
proc fcQPagedPaintDevice_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QPagedPaintDevice_virtualbase_initPainter".}
proc fcQPagedPaintDevice_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QPagedPaintDevice_virtualbase_redirected".}
proc fcQPagedPaintDevice_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QPagedPaintDevice_virtualbase_sharedPainter".}
proc fcQPagedPaintDevice_protectedbase_devicePageLayout(self: pointer, ): pointer {.importc: "QPagedPaintDevice_protectedbase_devicePageLayout".}
proc fcQPagedPaintDevice_protectedbase_devicePageLayout2(self: pointer, ): pointer {.importc: "QPagedPaintDevice_protectedbase_devicePageLayout2".}
proc fcQPagedPaintDevice_new(vtbl: pointer, ): ptr cQPagedPaintDevice {.importc: "QPagedPaintDevice_new".}
proc fcQPagedPaintDevice_delete(self: pointer) {.importc: "QPagedPaintDevice_delete".}
proc fcQPagedPaintDeviceMargins_delete(self: pointer) {.importc: "QPagedPaintDevice__Margins_delete".}

proc newPage*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): bool =
  fcQPagedPaintDevice_newPage(self.h)

proc setPageLayout*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, pageLayout: gen_qpagelayout_types.QPageLayout): bool =
  fcQPagedPaintDevice_setPageLayout(self.h, pageLayout.h)

proc setPageSize*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, pageSize: gen_qpagesize_types.QPageSize): bool =
  fcQPagedPaintDevice_setPageSize(self.h, pageSize.h)

proc setPageOrientation*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, orientation: cint): bool =
  fcQPagedPaintDevice_setPageOrientation(self.h, cint(orientation))

proc setPageMargins*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, margins: gen_qmargins_types.QMarginsF): bool =
  fcQPagedPaintDevice_setPageMargins(self.h, margins.h)

proc setPageMargins*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, margins: gen_qmargins_types.QMarginsF, units: cint): bool =
  fcQPagedPaintDevice_setPageMargins2(self.h, margins.h, cint(units))

proc pageLayout*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQPagedPaintDevice_pageLayout(self.h))

proc setPageSize*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, size: cint): void =
  fcQPagedPaintDevice_setPageSizeWithSize(self.h, cint(size))

proc pageSize*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): cint =
  cint(fcQPagedPaintDevice_pageSize(self.h))

proc setPageSizeMM*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, size: gen_qsize_types.QSizeF): void =
  fcQPagedPaintDevice_setPageSizeMM(self.h, size.h)

proc pageSizeMM*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPagedPaintDevice_pageSizeMM(self.h))

proc setMargins*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, margins: gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins): void =
  fcQPagedPaintDevice_setMargins(self.h, margins.h)

proc margins*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins =
  gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins(h: fcQPagedPaintDevice_margins(self.h))

type QPagedPaintDevicenewPageProc* = proc(self: QPagedPaintDevice): bool {.raises: [], gcsafe.}
type QPagedPaintDevicesetPageSizeWithSizeProc* = proc(self: QPagedPaintDevice, size: cint): void {.raises: [], gcsafe.}
type QPagedPaintDevicesetPageSizeMMProc* = proc(self: QPagedPaintDevice, size: gen_qsize_types.QSizeF): void {.raises: [], gcsafe.}
type QPagedPaintDevicesetMarginsProc* = proc(self: QPagedPaintDevice, margins: gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins): void {.raises: [], gcsafe.}
type QPagedPaintDevicedevTypeProc* = proc(self: QPagedPaintDevice): cint {.raises: [], gcsafe.}
type QPagedPaintDevicepaintEngineProc* = proc(self: QPagedPaintDevice): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QPagedPaintDevicemetricProc* = proc(self: QPagedPaintDevice, metric: cint): cint {.raises: [], gcsafe.}
type QPagedPaintDeviceinitPainterProc* = proc(self: QPagedPaintDevice, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QPagedPaintDeviceredirectedProc* = proc(self: QPagedPaintDevice, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QPagedPaintDevicesharedPainterProc* = proc(self: QPagedPaintDevice): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QPagedPaintDeviceVTable* = object
  vtbl: cQPagedPaintDeviceVTable
  newPage*: QPagedPaintDevicenewPageProc
  setPageSizeWithSize*: QPagedPaintDevicesetPageSizeWithSizeProc
  setPageSizeMM*: QPagedPaintDevicesetPageSizeMMProc
  setMargins*: QPagedPaintDevicesetMarginsProc
  devType*: QPagedPaintDevicedevTypeProc
  paintEngine*: QPagedPaintDevicepaintEngineProc
  metric*: QPagedPaintDevicemetricProc
  initPainter*: QPagedPaintDeviceinitPainterProc
  redirected*: QPagedPaintDeviceredirectedProc
  sharedPainter*: QPagedPaintDevicesharedPainterProc
proc miqt_exec_callback_cQPagedPaintDevice_newPage(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  var virtualReturn = vtbl[].newPage(self)
  virtualReturn

proc QPagedPaintDevicesetPageSize*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, size: cint): void =
  fcQPagedPaintDevice_virtualbase_setPageSizeWithSize(self.h, cint(size))

proc miqt_exec_callback_cQPagedPaintDevice_setPageSizeWithSize(vtbl: pointer, self: pointer, size: cint): void {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  let slotval1 = cint(size)
  vtbl[].setPageSizeWithSize(self, slotval1)

proc QPagedPaintDevicesetPageSizeMM*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, size: gen_qsize_types.QSizeF): void =
  fcQPagedPaintDevice_virtualbase_setPageSizeMM(self.h, size.h)

proc miqt_exec_callback_cQPagedPaintDevice_setPageSizeMM(vtbl: pointer, self: pointer, size: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  let slotval1 = gen_qsize_types.QSizeF(h: size)
  vtbl[].setPageSizeMM(self, slotval1)

proc QPagedPaintDevicesetMargins*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, margins: gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins): void =
  fcQPagedPaintDevice_virtualbase_setMargins(self.h, margins.h)

proc miqt_exec_callback_cQPagedPaintDevice_setMargins(vtbl: pointer, self: pointer, margins: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  let slotval1 = gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins(h: margins)
  vtbl[].setMargins(self, slotval1)

proc QPagedPaintDevicedevType*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): cint =
  fcQPagedPaintDevice_virtualbase_devType(self.h)

proc miqt_exec_callback_cQPagedPaintDevice_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  var virtualReturn = vtbl[].devType(self)
  virtualReturn

proc miqt_exec_callback_cQPagedPaintDevice_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  var virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QPagedPaintDevicemetric*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, metric: cint): cint =
  fcQPagedPaintDevice_virtualbase_metric(self.h, cint(metric))

proc miqt_exec_callback_cQPagedPaintDevice_metric(vtbl: pointer, self: pointer, metric: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  let slotval1 = cint(metric)
  var virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QPagedPaintDeviceinitPainter*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, painter: gen_qpainter_types.QPainter): void =
  fcQPagedPaintDevice_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQPagedPaintDevice_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QPagedPaintDeviceredirected*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQPagedPaintDevice_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQPagedPaintDevice_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  var virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QPagedPaintDevicesharedPainter*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQPagedPaintDevice_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQPagedPaintDevice_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QPagedPaintDeviceVTable](vtbl)
  let self = QPagedPaintDevice(h: self)
  var virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc devicePageLayout*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQPagedPaintDevice_protectedbase_devicePageLayout(self.h))

proc devicePageLayout*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice, ): gen_qpagelayout_types.QPageLayout =
  gen_qpagelayout_types.QPageLayout(h: fcQPagedPaintDevice_protectedbase_devicePageLayout2(self.h))

proc create*(T: type gen_qpagedpaintdevice_types.QPagedPaintDevice,
    vtbl: ref QPagedPaintDeviceVTable = nil): gen_qpagedpaintdevice_types.QPagedPaintDevice =
  let vtbl = if vtbl == nil: new QPagedPaintDeviceVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQPagedPaintDeviceVTable, _: ptr cQPagedPaintDevice) {.cdecl.} =
    let vtbl = cast[ref QPagedPaintDeviceVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.newPage):
    vtbl[].vtbl.newPage = miqt_exec_callback_cQPagedPaintDevice_newPage
  if not isNil(vtbl.setPageSizeWithSize):
    vtbl[].vtbl.setPageSizeWithSize = miqt_exec_callback_cQPagedPaintDevice_setPageSizeWithSize
  if not isNil(vtbl.setPageSizeMM):
    vtbl[].vtbl.setPageSizeMM = miqt_exec_callback_cQPagedPaintDevice_setPageSizeMM
  if not isNil(vtbl.setMargins):
    vtbl[].vtbl.setMargins = miqt_exec_callback_cQPagedPaintDevice_setMargins
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQPagedPaintDevice_devType
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQPagedPaintDevice_paintEngine
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQPagedPaintDevice_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQPagedPaintDevice_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQPagedPaintDevice_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQPagedPaintDevice_sharedPainter
  gen_qpagedpaintdevice_types.QPagedPaintDevice(h: fcQPagedPaintDevice_new(addr(vtbl[]), ))

proc delete*(self: gen_qpagedpaintdevice_types.QPagedPaintDevice) =
  fcQPagedPaintDevice_delete(self.h)
proc delete*(self: gen_qpagedpaintdevice_types.QPagedPaintDeviceMargins) =
  fcQPagedPaintDeviceMargins_delete(self.h)
