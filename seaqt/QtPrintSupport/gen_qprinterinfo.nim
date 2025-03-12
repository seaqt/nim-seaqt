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


import ./gen_qprinterinfo_types
export gen_qprinterinfo_types

import
  ../QtGui/gen_qpagesize_types,
  ./gen_qprinter_types
export
  gen_qpagesize_types,
  gen_qprinter_types

type cQPrinterInfo*{.exportc: "QPrinterInfo", incompleteStruct.} = object

proc fcQPrinterInfo_operatorAssign(self: pointer, other: pointer): void {.importc: "QPrinterInfo_operatorAssign".}
proc fcQPrinterInfo_printerName(self: pointer): struct_miqt_string {.importc: "QPrinterInfo_printerName".}
proc fcQPrinterInfo_description(self: pointer): struct_miqt_string {.importc: "QPrinterInfo_description".}
proc fcQPrinterInfo_location(self: pointer): struct_miqt_string {.importc: "QPrinterInfo_location".}
proc fcQPrinterInfo_makeAndModel(self: pointer): struct_miqt_string {.importc: "QPrinterInfo_makeAndModel".}
proc fcQPrinterInfo_isNull(self: pointer): bool {.importc: "QPrinterInfo_isNull".}
proc fcQPrinterInfo_isDefault(self: pointer): bool {.importc: "QPrinterInfo_isDefault".}
proc fcQPrinterInfo_isRemote(self: pointer): bool {.importc: "QPrinterInfo_isRemote".}
proc fcQPrinterInfo_state(self: pointer): cint {.importc: "QPrinterInfo_state".}
proc fcQPrinterInfo_supportedPageSizes(self: pointer): struct_miqt_array {.importc: "QPrinterInfo_supportedPageSizes".}
proc fcQPrinterInfo_defaultPageSize(self: pointer): pointer {.importc: "QPrinterInfo_defaultPageSize".}
proc fcQPrinterInfo_supportsCustomPageSizes(self: pointer): bool {.importc: "QPrinterInfo_supportsCustomPageSizes".}
proc fcQPrinterInfo_minimumPhysicalPageSize(self: pointer): pointer {.importc: "QPrinterInfo_minimumPhysicalPageSize".}
proc fcQPrinterInfo_maximumPhysicalPageSize(self: pointer): pointer {.importc: "QPrinterInfo_maximumPhysicalPageSize".}
proc fcQPrinterInfo_supportedResolutions(self: pointer): struct_miqt_array {.importc: "QPrinterInfo_supportedResolutions".}
proc fcQPrinterInfo_defaultDuplexMode(self: pointer): cint {.importc: "QPrinterInfo_defaultDuplexMode".}
proc fcQPrinterInfo_supportedDuplexModes(self: pointer): struct_miqt_array {.importc: "QPrinterInfo_supportedDuplexModes".}
proc fcQPrinterInfo_defaultColorMode(self: pointer): cint {.importc: "QPrinterInfo_defaultColorMode".}
proc fcQPrinterInfo_supportedColorModes(self: pointer): struct_miqt_array {.importc: "QPrinterInfo_supportedColorModes".}
proc fcQPrinterInfo_availablePrinterNames(): struct_miqt_array {.importc: "QPrinterInfo_availablePrinterNames".}
proc fcQPrinterInfo_availablePrinters(): struct_miqt_array {.importc: "QPrinterInfo_availablePrinters".}
proc fcQPrinterInfo_defaultPrinterName(): struct_miqt_string {.importc: "QPrinterInfo_defaultPrinterName".}
proc fcQPrinterInfo_defaultPrinter(): pointer {.importc: "QPrinterInfo_defaultPrinter".}
proc fcQPrinterInfo_printerInfo(printerName: struct_miqt_string): pointer {.importc: "QPrinterInfo_printerInfo".}
proc fcQPrinterInfo_new(): ptr cQPrinterInfo {.importc: "QPrinterInfo_new".}
proc fcQPrinterInfo_new2(other: pointer): ptr cQPrinterInfo {.importc: "QPrinterInfo_new2".}
proc fcQPrinterInfo_new3(printer: pointer): ptr cQPrinterInfo {.importc: "QPrinterInfo_new3".}

proc operatorAssign*(self: gen_qprinterinfo_types.QPrinterInfo, other: gen_qprinterinfo_types.QPrinterInfo): void =
  fcQPrinterInfo_operatorAssign(self.h, other.h)

proc printerName*(self: gen_qprinterinfo_types.QPrinterInfo): string =
  let v_ms = fcQPrinterInfo_printerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc description*(self: gen_qprinterinfo_types.QPrinterInfo): string =
  let v_ms = fcQPrinterInfo_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc location*(self: gen_qprinterinfo_types.QPrinterInfo): string =
  let v_ms = fcQPrinterInfo_location(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc makeAndModel*(self: gen_qprinterinfo_types.QPrinterInfo): string =
  let v_ms = fcQPrinterInfo_makeAndModel(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isNull*(self: gen_qprinterinfo_types.QPrinterInfo): bool =
  fcQPrinterInfo_isNull(self.h)

proc isDefault*(self: gen_qprinterinfo_types.QPrinterInfo): bool =
  fcQPrinterInfo_isDefault(self.h)

proc isRemote*(self: gen_qprinterinfo_types.QPrinterInfo): bool =
  fcQPrinterInfo_isRemote(self.h)

proc state*(self: gen_qprinterinfo_types.QPrinterInfo): cint =
  cint(fcQPrinterInfo_state(self.h))

proc supportedPageSizes*(self: gen_qprinterinfo_types.QPrinterInfo): seq[gen_qpagesize_types.QPageSize] =
  var v_ma = fcQPrinterInfo_supportedPageSizes(self.h)
  var vx_ret = newSeq[gen_qpagesize_types.QPageSize](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpagesize_types.QPageSize(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc defaultPageSize*(self: gen_qprinterinfo_types.QPrinterInfo): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPrinterInfo_defaultPageSize(self.h), owned: true)

proc supportsCustomPageSizes*(self: gen_qprinterinfo_types.QPrinterInfo): bool =
  fcQPrinterInfo_supportsCustomPageSizes(self.h)

proc minimumPhysicalPageSize*(self: gen_qprinterinfo_types.QPrinterInfo): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPrinterInfo_minimumPhysicalPageSize(self.h), owned: true)

proc maximumPhysicalPageSize*(self: gen_qprinterinfo_types.QPrinterInfo): gen_qpagesize_types.QPageSize =
  gen_qpagesize_types.QPageSize(h: fcQPrinterInfo_maximumPhysicalPageSize(self.h), owned: true)

proc supportedResolutions*(self: gen_qprinterinfo_types.QPrinterInfo): seq[cint] =
  var v_ma = fcQPrinterInfo_supportedResolutions(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc defaultDuplexMode*(self: gen_qprinterinfo_types.QPrinterInfo): cint =
  cint(fcQPrinterInfo_defaultDuplexMode(self.h))

proc supportedDuplexModes*(self: gen_qprinterinfo_types.QPrinterInfo): seq[cint] =
  var v_ma = fcQPrinterInfo_supportedDuplexModes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc defaultColorMode*(self: gen_qprinterinfo_types.QPrinterInfo): cint =
  cint(fcQPrinterInfo_defaultColorMode(self.h))

proc supportedColorModes*(self: gen_qprinterinfo_types.QPrinterInfo): seq[cint] =
  var v_ma = fcQPrinterInfo_supportedColorModes(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = cint(v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc availablePrinterNames*(_: type gen_qprinterinfo_types.QPrinterInfo): seq[string] =
  var v_ma = fcQPrinterInfo_availablePrinterNames()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc availablePrinters*(_: type gen_qprinterinfo_types.QPrinterInfo): seq[gen_qprinterinfo_types.QPrinterInfo] =
  var v_ma = fcQPrinterInfo_availablePrinters()
  var vx_ret = newSeq[gen_qprinterinfo_types.QPrinterInfo](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qprinterinfo_types.QPrinterInfo(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc defaultPrinterName*(_: type gen_qprinterinfo_types.QPrinterInfo): string =
  let v_ms = fcQPrinterInfo_defaultPrinterName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultPrinter*(_: type gen_qprinterinfo_types.QPrinterInfo): gen_qprinterinfo_types.QPrinterInfo =
  gen_qprinterinfo_types.QPrinterInfo(h: fcQPrinterInfo_defaultPrinter(), owned: true)

proc printerInfo*(_: type gen_qprinterinfo_types.QPrinterInfo, printerName: string): gen_qprinterinfo_types.QPrinterInfo =
  gen_qprinterinfo_types.QPrinterInfo(h: fcQPrinterInfo_printerInfo(struct_miqt_string(data: printerName, len: csize_t(len(printerName)))), owned: true)

proc create*(T: type gen_qprinterinfo_types.QPrinterInfo): gen_qprinterinfo_types.QPrinterInfo =
  gen_qprinterinfo_types.QPrinterInfo(h: fcQPrinterInfo_new(), owned: true)

proc create*(T: type gen_qprinterinfo_types.QPrinterInfo,
    other: gen_qprinterinfo_types.QPrinterInfo): gen_qprinterinfo_types.QPrinterInfo =
  gen_qprinterinfo_types.QPrinterInfo(h: fcQPrinterInfo_new2(other.h), owned: true)

proc create*(T: type gen_qprinterinfo_types.QPrinterInfo,
    printer: gen_qprinter_types.QPrinter): gen_qprinterinfo_types.QPrinterInfo =
  gen_qprinterinfo_types.QPrinterInfo(h: fcQPrinterInfo_new3(printer.h), owned: true)

