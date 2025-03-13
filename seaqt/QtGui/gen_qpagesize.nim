import ./Qt6Gui_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QPageSizePageSizeIdEnum* = distinct cint
template Letter*(_: type QPageSizePageSizeIdEnum): untyped = 0
template Legal*(_: type QPageSizePageSizeIdEnum): untyped = 1
template Executive*(_: type QPageSizePageSizeIdEnum): untyped = 2
template A0*(_: type QPageSizePageSizeIdEnum): untyped = 3
template A1*(_: type QPageSizePageSizeIdEnum): untyped = 4
template A2*(_: type QPageSizePageSizeIdEnum): untyped = 5
template A3*(_: type QPageSizePageSizeIdEnum): untyped = 6
template A4*(_: type QPageSizePageSizeIdEnum): untyped = 7
template A5*(_: type QPageSizePageSizeIdEnum): untyped = 8
template A6*(_: type QPageSizePageSizeIdEnum): untyped = 9
template A7*(_: type QPageSizePageSizeIdEnum): untyped = 10
template A8*(_: type QPageSizePageSizeIdEnum): untyped = 11
template A9*(_: type QPageSizePageSizeIdEnum): untyped = 12
template A10*(_: type QPageSizePageSizeIdEnum): untyped = 13
template B0*(_: type QPageSizePageSizeIdEnum): untyped = 14
template B1*(_: type QPageSizePageSizeIdEnum): untyped = 15
template B2*(_: type QPageSizePageSizeIdEnum): untyped = 16
template B3*(_: type QPageSizePageSizeIdEnum): untyped = 17
template B4*(_: type QPageSizePageSizeIdEnum): untyped = 18
template B5*(_: type QPageSizePageSizeIdEnum): untyped = 19
template B6*(_: type QPageSizePageSizeIdEnum): untyped = 20
template B7*(_: type QPageSizePageSizeIdEnum): untyped = 21
template B8*(_: type QPageSizePageSizeIdEnum): untyped = 22
template B9*(_: type QPageSizePageSizeIdEnum): untyped = 23
template B10*(_: type QPageSizePageSizeIdEnum): untyped = 24
template C5E*(_: type QPageSizePageSizeIdEnum): untyped = 25
template Comm10E*(_: type QPageSizePageSizeIdEnum): untyped = 26
template DLE*(_: type QPageSizePageSizeIdEnum): untyped = 27
template Folio*(_: type QPageSizePageSizeIdEnum): untyped = 28
template Ledger*(_: type QPageSizePageSizeIdEnum): untyped = 29
template Tabloid*(_: type QPageSizePageSizeIdEnum): untyped = 30
template Custom*(_: type QPageSizePageSizeIdEnum): untyped = 31
template A3Extra*(_: type QPageSizePageSizeIdEnum): untyped = 32
template A4Extra*(_: type QPageSizePageSizeIdEnum): untyped = 33
template A4Plus*(_: type QPageSizePageSizeIdEnum): untyped = 34
template A4Small*(_: type QPageSizePageSizeIdEnum): untyped = 35
template A5Extra*(_: type QPageSizePageSizeIdEnum): untyped = 36
template B5Extra*(_: type QPageSizePageSizeIdEnum): untyped = 37
template JisB0*(_: type QPageSizePageSizeIdEnum): untyped = 38
template JisB1*(_: type QPageSizePageSizeIdEnum): untyped = 39
template JisB2*(_: type QPageSizePageSizeIdEnum): untyped = 40
template JisB3*(_: type QPageSizePageSizeIdEnum): untyped = 41
template JisB4*(_: type QPageSizePageSizeIdEnum): untyped = 42
template JisB5*(_: type QPageSizePageSizeIdEnum): untyped = 43
template JisB6*(_: type QPageSizePageSizeIdEnum): untyped = 44
template JisB7*(_: type QPageSizePageSizeIdEnum): untyped = 45
template JisB8*(_: type QPageSizePageSizeIdEnum): untyped = 46
template JisB9*(_: type QPageSizePageSizeIdEnum): untyped = 47
template JisB10*(_: type QPageSizePageSizeIdEnum): untyped = 48
template AnsiC*(_: type QPageSizePageSizeIdEnum): untyped = 49
template AnsiD*(_: type QPageSizePageSizeIdEnum): untyped = 50
template AnsiE*(_: type QPageSizePageSizeIdEnum): untyped = 51
template LegalExtra*(_: type QPageSizePageSizeIdEnum): untyped = 52
template LetterExtra*(_: type QPageSizePageSizeIdEnum): untyped = 53
template LetterPlus*(_: type QPageSizePageSizeIdEnum): untyped = 54
template LetterSmall*(_: type QPageSizePageSizeIdEnum): untyped = 55
template TabloidExtra*(_: type QPageSizePageSizeIdEnum): untyped = 56
template ArchA*(_: type QPageSizePageSizeIdEnum): untyped = 57
template ArchB*(_: type QPageSizePageSizeIdEnum): untyped = 58
template ArchC*(_: type QPageSizePageSizeIdEnum): untyped = 59
template ArchD*(_: type QPageSizePageSizeIdEnum): untyped = 60
template ArchE*(_: type QPageSizePageSizeIdEnum): untyped = 61
template Imperial7x9*(_: type QPageSizePageSizeIdEnum): untyped = 62
template Imperial8x10*(_: type QPageSizePageSizeIdEnum): untyped = 63
template Imperial9x11*(_: type QPageSizePageSizeIdEnum): untyped = 64
template Imperial9x12*(_: type QPageSizePageSizeIdEnum): untyped = 65
template Imperial10x11*(_: type QPageSizePageSizeIdEnum): untyped = 66
template Imperial10x13*(_: type QPageSizePageSizeIdEnum): untyped = 67
template Imperial10x14*(_: type QPageSizePageSizeIdEnum): untyped = 68
template Imperial12x11*(_: type QPageSizePageSizeIdEnum): untyped = 69
template Imperial15x11*(_: type QPageSizePageSizeIdEnum): untyped = 70
template ExecutiveStandard*(_: type QPageSizePageSizeIdEnum): untyped = 71
template Note*(_: type QPageSizePageSizeIdEnum): untyped = 72
template Quarto*(_: type QPageSizePageSizeIdEnum): untyped = 73
template Statement*(_: type QPageSizePageSizeIdEnum): untyped = 74
template SuperA*(_: type QPageSizePageSizeIdEnum): untyped = 75
template SuperB*(_: type QPageSizePageSizeIdEnum): untyped = 76
template Postcard*(_: type QPageSizePageSizeIdEnum): untyped = 77
template DoublePostcard*(_: type QPageSizePageSizeIdEnum): untyped = 78
template Prc16K*(_: type QPageSizePageSizeIdEnum): untyped = 79
template Prc32K*(_: type QPageSizePageSizeIdEnum): untyped = 80
template Prc32KBig*(_: type QPageSizePageSizeIdEnum): untyped = 81
template FanFoldUS*(_: type QPageSizePageSizeIdEnum): untyped = 82
template FanFoldGerman*(_: type QPageSizePageSizeIdEnum): untyped = 83
template FanFoldGermanLegal*(_: type QPageSizePageSizeIdEnum): untyped = 84
template EnvelopeB4*(_: type QPageSizePageSizeIdEnum): untyped = 85
template EnvelopeB5*(_: type QPageSizePageSizeIdEnum): untyped = 86
template EnvelopeB6*(_: type QPageSizePageSizeIdEnum): untyped = 87
template EnvelopeC0*(_: type QPageSizePageSizeIdEnum): untyped = 88
template EnvelopeC1*(_: type QPageSizePageSizeIdEnum): untyped = 89
template EnvelopeC2*(_: type QPageSizePageSizeIdEnum): untyped = 90
template EnvelopeC3*(_: type QPageSizePageSizeIdEnum): untyped = 91
template EnvelopeC4*(_: type QPageSizePageSizeIdEnum): untyped = 92
template EnvelopeC6*(_: type QPageSizePageSizeIdEnum): untyped = 93
template EnvelopeC65*(_: type QPageSizePageSizeIdEnum): untyped = 94
template EnvelopeC7*(_: type QPageSizePageSizeIdEnum): untyped = 95
template Envelope9*(_: type QPageSizePageSizeIdEnum): untyped = 96
template Envelope11*(_: type QPageSizePageSizeIdEnum): untyped = 97
template Envelope12*(_: type QPageSizePageSizeIdEnum): untyped = 98
template Envelope14*(_: type QPageSizePageSizeIdEnum): untyped = 99
template EnvelopeMonarch*(_: type QPageSizePageSizeIdEnum): untyped = 100
template EnvelopePersonal*(_: type QPageSizePageSizeIdEnum): untyped = 101
template EnvelopeChou3*(_: type QPageSizePageSizeIdEnum): untyped = 102
template EnvelopeChou4*(_: type QPageSizePageSizeIdEnum): untyped = 103
template EnvelopeInvite*(_: type QPageSizePageSizeIdEnum): untyped = 104
template EnvelopeItalian*(_: type QPageSizePageSizeIdEnum): untyped = 105
template EnvelopeKaku2*(_: type QPageSizePageSizeIdEnum): untyped = 106
template EnvelopeKaku3*(_: type QPageSizePageSizeIdEnum): untyped = 107
template EnvelopePrc1*(_: type QPageSizePageSizeIdEnum): untyped = 108
template EnvelopePrc2*(_: type QPageSizePageSizeIdEnum): untyped = 109
template EnvelopePrc3*(_: type QPageSizePageSizeIdEnum): untyped = 110
template EnvelopePrc4*(_: type QPageSizePageSizeIdEnum): untyped = 111
template EnvelopePrc5*(_: type QPageSizePageSizeIdEnum): untyped = 112
template EnvelopePrc6*(_: type QPageSizePageSizeIdEnum): untyped = 113
template EnvelopePrc7*(_: type QPageSizePageSizeIdEnum): untyped = 114
template EnvelopePrc8*(_: type QPageSizePageSizeIdEnum): untyped = 115
template EnvelopePrc9*(_: type QPageSizePageSizeIdEnum): untyped = 116
template EnvelopePrc10*(_: type QPageSizePageSizeIdEnum): untyped = 117
template EnvelopeYou4*(_: type QPageSizePageSizeIdEnum): untyped = 118
template LastPageSize*(_: type QPageSizePageSizeIdEnum): untyped = 118
template AnsiA*(_: type QPageSizePageSizeIdEnum): untyped = 0
template AnsiB*(_: type QPageSizePageSizeIdEnum): untyped = 29
template EnvelopeC5*(_: type QPageSizePageSizeIdEnum): untyped = 25
template EnvelopeDL*(_: type QPageSizePageSizeIdEnum): untyped = 27
template Envelope10*(_: type QPageSizePageSizeIdEnum): untyped = 26


type QPageSizeUnitEnum* = distinct cint
template Millimeter*(_: type QPageSizeUnitEnum): untyped = 0
template Point*(_: type QPageSizeUnitEnum): untyped = 1
template Inch*(_: type QPageSizeUnitEnum): untyped = 2
template Pica*(_: type QPageSizeUnitEnum): untyped = 3
template Didot*(_: type QPageSizeUnitEnum): untyped = 4
template Cicero*(_: type QPageSizeUnitEnum): untyped = 5


type QPageSizeSizeMatchPolicyEnum* = distinct cint
template FuzzyMatch*(_: type QPageSizeSizeMatchPolicyEnum): untyped = 0
template FuzzyOrientationMatch*(_: type QPageSizeSizeMatchPolicyEnum): untyped = 1
template ExactMatch*(_: type QPageSizeSizeMatchPolicyEnum): untyped = 2


import ./gen_qpagesize_types
export gen_qpagesize_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types
export
  gen_qrect_types,
  gen_qsize_types

type cQPageSize*{.exportc: "QPageSize", incompleteStruct.} = object

proc fcQPageSize_operatorAssign(self: pointer, other: pointer): void {.importc: "QPageSize_operatorAssign".}
proc fcQPageSize_swap(self: pointer, other: pointer): void {.importc: "QPageSize_swap".}
proc fcQPageSize_isEquivalentTo(self: pointer, other: pointer): bool {.importc: "QPageSize_isEquivalentTo".}
proc fcQPageSize_isValid(self: pointer): bool {.importc: "QPageSize_isValid".}
proc fcQPageSize_key(self: pointer): struct_miqt_string {.importc: "QPageSize_key".}
proc fcQPageSize_name(self: pointer): struct_miqt_string {.importc: "QPageSize_name".}
proc fcQPageSize_id(self: pointer): cint {.importc: "QPageSize_id".}
proc fcQPageSize_windowsId(self: pointer): cint {.importc: "QPageSize_windowsId".}
proc fcQPageSize_definitionSize(self: pointer): pointer {.importc: "QPageSize_definitionSize".}
proc fcQPageSize_definitionUnits(self: pointer): cint {.importc: "QPageSize_definitionUnits".}
proc fcQPageSize_size(self: pointer, units: cint): pointer {.importc: "QPageSize_size".}
proc fcQPageSize_sizePoints(self: pointer): pointer {.importc: "QPageSize_sizePoints".}
proc fcQPageSize_sizePixels(self: pointer, resolution: cint): pointer {.importc: "QPageSize_sizePixels".}
proc fcQPageSize_rect(self: pointer, units: cint): pointer {.importc: "QPageSize_rect".}
proc fcQPageSize_rectPoints(self: pointer): pointer {.importc: "QPageSize_rectPoints".}
proc fcQPageSize_rectPixels(self: pointer, resolution: cint): pointer {.importc: "QPageSize_rectPixels".}
proc fcQPageSize_keyWithPageSizeId(pageSizeId: cint): struct_miqt_string {.importc: "QPageSize_keyWithPageSizeId".}
proc fcQPageSize_nameWithPageSizeId(pageSizeId: cint): struct_miqt_string {.importc: "QPageSize_nameWithPageSizeId".}
proc fcQPageSize_idWithPointSize(pointSize: pointer): cint {.importc: "QPageSize_idWithPointSize".}
proc fcQPageSize_id2(size: pointer, units: cint): cint {.importc: "QPageSize_id2".}
proc fcQPageSize_idWithWindowsId(windowsId: cint): cint {.importc: "QPageSize_idWithWindowsId".}
proc fcQPageSize_windowsIdWithPageSizeId(pageSizeId: cint): cint {.importc: "QPageSize_windowsIdWithPageSizeId".}
proc fcQPageSize_definitionSizeWithPageSizeId(pageSizeId: cint): pointer {.importc: "QPageSize_definitionSizeWithPageSizeId".}
proc fcQPageSize_definitionUnitsWithPageSizeId(pageSizeId: cint): cint {.importc: "QPageSize_definitionUnitsWithPageSizeId".}
proc fcQPageSize_size2(pageSizeId: cint, units: cint): pointer {.importc: "QPageSize_size2".}
proc fcQPageSize_sizePointsWithPageSizeId(pageSizeId: cint): pointer {.importc: "QPageSize_sizePointsWithPageSizeId".}
proc fcQPageSize_sizePixels2(pageSizeId: cint, resolution: cint): pointer {.importc: "QPageSize_sizePixels2".}
proc fcQPageSize_id22(pointSize: pointer, matchPolicy: cint): cint {.importc: "QPageSize_id22".}
proc fcQPageSize_id3(size: pointer, units: cint, matchPolicy: cint): cint {.importc: "QPageSize_id3".}
proc fcQPageSize_new(): ptr cQPageSize {.importc: "QPageSize_new".}
proc fcQPageSize_new2(pageSizeId: cint): ptr cQPageSize {.importc: "QPageSize_new2".}
proc fcQPageSize_new3(pointSize: pointer): ptr cQPageSize {.importc: "QPageSize_new3".}
proc fcQPageSize_new4(size: pointer, units: cint): ptr cQPageSize {.importc: "QPageSize_new4".}
proc fcQPageSize_new5(other: pointer): ptr cQPageSize {.importc: "QPageSize_new5".}
proc fcQPageSize_new6(pointSize: pointer, name: struct_miqt_string): ptr cQPageSize {.importc: "QPageSize_new6".}
proc fcQPageSize_new7(pointSize: pointer, name: struct_miqt_string, matchPolicy: cint): ptr cQPageSize {.importc: "QPageSize_new7".}
proc fcQPageSize_new8(size: pointer, units: cint, name: struct_miqt_string): ptr cQPageSize {.importc: "QPageSize_new8".}
proc fcQPageSize_new9(size: pointer, units: cint, name: struct_miqt_string, matchPolicy: cint): ptr cQPageSize {.importc: "QPageSize_new9".}

proc operatorAssign*(self: gen_qpagesize_types.QPageSize, other: gen_qpagesize_types.QPageSize): void =
  fcQPageSize_operatorAssign(self.h, other.h)

proc swap*(self: gen_qpagesize_types.QPageSize, other: gen_qpagesize_types.QPageSize): void =
  fcQPageSize_swap(self.h, other.h)

proc isEquivalentTo*(self: gen_qpagesize_types.QPageSize, other: gen_qpagesize_types.QPageSize): bool =
  fcQPageSize_isEquivalentTo(self.h, other.h)

proc isValid*(self: gen_qpagesize_types.QPageSize): bool =
  fcQPageSize_isValid(self.h)

proc key*(self: gen_qpagesize_types.QPageSize): string =
  let v_ms = fcQPageSize_key(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qpagesize_types.QPageSize): string =
  let v_ms = fcQPageSize_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc id*(self: gen_qpagesize_types.QPageSize): cint =
  cint(fcQPageSize_id(self.h))

proc windowsId*(self: gen_qpagesize_types.QPageSize): cint =
  fcQPageSize_windowsId(self.h)

proc definitionSize*(self: gen_qpagesize_types.QPageSize): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPageSize_definitionSize(self.h), owned: true)

proc definitionUnits*(self: gen_qpagesize_types.QPageSize): cint =
  cint(fcQPageSize_definitionUnits(self.h))

proc size*(self: gen_qpagesize_types.QPageSize, units: cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPageSize_size(self.h, cint(units)), owned: true)

proc sizePoints*(self: gen_qpagesize_types.QPageSize): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPageSize_sizePoints(self.h), owned: true)

proc sizePixels*(self: gen_qpagesize_types.QPageSize, resolution: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPageSize_sizePixels(self.h, resolution), owned: true)

proc rect*(self: gen_qpagesize_types.QPageSize, units: cint): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPageSize_rect(self.h, cint(units)), owned: true)

proc rectPoints*(self: gen_qpagesize_types.QPageSize): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageSize_rectPoints(self.h), owned: true)

proc rectPixels*(self: gen_qpagesize_types.QPageSize, resolution: cint): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPageSize_rectPixels(self.h, resolution), owned: true)

proc key*(_: type gen_qpagesize_types.QPageSize, pageSizeId: cint): string =
  let v_ms = fcQPageSize_keyWithPageSizeId(cint(pageSizeId))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc name*(_: type gen_qpagesize_types.QPageSize, pageSizeId: cint): string =
  let v_ms = fcQPageSize_nameWithPageSizeId(cint(pageSizeId))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc id*(_: type gen_qpagesize_types.QPageSize, pointSize: gen_qsize_types.QSize): cint =
  cint(fcQPageSize_idWithPointSize(pointSize.h))

proc id*(_: type gen_qpagesize_types.QPageSize, size: gen_qsize_types.QSizeF, units: cint): cint =
  cint(fcQPageSize_id2(size.h, cint(units)))

proc id*(_: type gen_qpagesize_types.QPageSize, windowsId: cint): cint =
  cint(fcQPageSize_idWithWindowsId(windowsId))

proc windowsId*(_: type gen_qpagesize_types.QPageSize, pageSizeId: cint): cint =
  fcQPageSize_windowsIdWithPageSizeId(cint(pageSizeId))

proc definitionSize*(_: type gen_qpagesize_types.QPageSize, pageSizeId: cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPageSize_definitionSizeWithPageSizeId(cint(pageSizeId)), owned: true)

proc definitionUnits*(_: type gen_qpagesize_types.QPageSize, pageSizeId: cint): cint =
  cint(fcQPageSize_definitionUnitsWithPageSizeId(cint(pageSizeId)))

proc size*(_: type gen_qpagesize_types.QPageSize, pageSizeId: cint, units: cint): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQPageSize_size2(cint(pageSizeId), cint(units)), owned: true)

proc sizePoints*(_: type gen_qpagesize_types.QPageSize, pageSizeId: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPageSize_sizePointsWithPageSizeId(cint(pageSizeId)), owned: true)

proc sizePixels*(_: type gen_qpagesize_types.QPageSize, pageSizeId: cint, resolution: cint): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPageSize_sizePixels2(cint(pageSizeId), resolution), owned: true)

proc id*(_: type gen_qpagesize_types.QPageSize, pointSize: gen_qsize_types.QSize, matchPolicy: cint): cint =
  cint(fcQPageSize_id22(pointSize.h, cint(matchPolicy)))

proc id*(_: type gen_qpagesize_types.QPageSize, size: gen_qsize_types.QSizeF, units: cint, matchPolicy: cint): cint =
  cint(fcQPageSize_id3(size.h, cint(units), cint(matchPolicy)))

proc create*(T: type gen_qpagesize_types.QPageSize): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new(), owned: true)

proc create*(T: type gen_qpagesize_types.QPageSize,
    pageSizeId: cint): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new2(cint(pageSizeId)), owned: true)

proc create*(T: type gen_qpagesize_types.QPageSize,
    pointSize: gen_qsize_types.QSize): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new3(pointSize.h), owned: true)

proc create*(T: type gen_qpagesize_types.QPageSize,
    size: gen_qsize_types.QSizeF, units: cint): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new4(size.h, cint(units)), owned: true)

proc create*(T: type gen_qpagesize_types.QPageSize,
    other: gen_qpagesize_types.QPageSize): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new5(other.h), owned: true)

proc create*(T: type gen_qpagesize_types.QPageSize,
    pointSize: gen_qsize_types.QSize, name: openArray[char]): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new6(pointSize.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qpagesize_types.QPageSize,
    pointSize: gen_qsize_types.QSize, name: openArray[char], matchPolicy: cint): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new7(pointSize.h, struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(matchPolicy)), owned: true)

proc create*(T: type gen_qpagesize_types.QPageSize,
    size: gen_qsize_types.QSizeF, units: cint, name: openArray[char]): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new8(size.h, cint(units), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc create*(T: type gen_qpagesize_types.QPageSize,
    size: gen_qsize_types.QSizeF, units: cint, name: openArray[char], matchPolicy: cint): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPageSize_new9(size.h, cint(units), struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))), cint(matchPolicy)), owned: true)

