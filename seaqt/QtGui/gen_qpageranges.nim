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


import ./gen_qpageranges_types
export gen_qpageranges_types


type cQPageRanges*{.exportc: "QPageRanges", incompleteStruct.} = object
type cQPageRangesRange*{.exportc: "QPageRanges__Range", incompleteStruct.} = object

proc fcQPageRanges_operatorAssign(self: pointer, other: pointer): void {.importc: "QPageRanges_operatorAssign".}
proc fcQPageRanges_swap(self: pointer, other: pointer): void {.importc: "QPageRanges_swap".}
proc fcQPageRanges_addPage(self: pointer, pageNumber: cint): void {.importc: "QPageRanges_addPage".}
proc fcQPageRanges_addRange(self: pointer, fromVal: cint, to: cint): void {.importc: "QPageRanges_addRange".}
proc fcQPageRanges_toRangeList(self: pointer): struct_miqt_array {.importc: "QPageRanges_toRangeList".}
proc fcQPageRanges_clear(self: pointer): void {.importc: "QPageRanges_clear".}
proc fcQPageRanges_toString(self: pointer): struct_miqt_string {.importc: "QPageRanges_toString".}
proc fcQPageRanges_fromString(ranges: struct_miqt_string): pointer {.importc: "QPageRanges_fromString".}
proc fcQPageRanges_contains(self: pointer, pageNumber: cint): bool {.importc: "QPageRanges_contains".}
proc fcQPageRanges_isEmpty(self: pointer): bool {.importc: "QPageRanges_isEmpty".}
proc fcQPageRanges_firstPage(self: pointer): cint {.importc: "QPageRanges_firstPage".}
proc fcQPageRanges_lastPage(self: pointer): cint {.importc: "QPageRanges_lastPage".}
proc fcQPageRanges_detach(self: pointer): void {.importc: "QPageRanges_detach".}
proc fcQPageRanges_new(): ptr cQPageRanges {.importc: "QPageRanges_new".}
proc fcQPageRanges_new2(other: pointer): ptr cQPageRanges {.importc: "QPageRanges_new2".}
proc fcQPageRangesRange_contains(self: pointer, pageNumber: cint): bool {.importc: "QPageRanges__Range_contains".}
proc fcQPageRangesRange_new(): ptr cQPageRangesRange {.importc: "QPageRanges__Range_new".}
proc fcQPageRangesRange_new2(param1: pointer): ptr cQPageRangesRange {.importc: "QPageRanges__Range_new2".}

proc operatorAssign*(self: gen_qpageranges_types.QPageRanges, other: gen_qpageranges_types.QPageRanges): void =
  fcQPageRanges_operatorAssign(self.h, other.h)

proc swap*(self: gen_qpageranges_types.QPageRanges, other: gen_qpageranges_types.QPageRanges): void =
  fcQPageRanges_swap(self.h, other.h)

proc addPage*(self: gen_qpageranges_types.QPageRanges, pageNumber: cint): void =
  fcQPageRanges_addPage(self.h, pageNumber)

proc addRange*(self: gen_qpageranges_types.QPageRanges, fromVal: cint, to: cint): void =
  fcQPageRanges_addRange(self.h, fromVal, to)

proc toRangeList*(self: gen_qpageranges_types.QPageRanges): seq[gen_qpageranges_types.QPageRangesRange] =
  var v_ma = fcQPageRanges_toRangeList(self.h)
  var vx_ret = newSeq[gen_qpageranges_types.QPageRangesRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpageranges_types.QPageRangesRange(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc clear*(self: gen_qpageranges_types.QPageRanges): void =
  fcQPageRanges_clear(self.h)

proc toString*(self: gen_qpageranges_types.QPageRanges): string =
  let v_ms = fcQPageRanges_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qpageranges_types.QPageRanges, ranges: openArray[char]): gen_qpageranges_types.QPageRanges =
  gen_qpageranges_types.QPageRanges(h: fcQPageRanges_fromString(struct_miqt_string(data: if len(ranges) > 0: addr ranges[0] else: nil, len: csize_t(len(ranges)))), owned: true)

proc contains*(self: gen_qpageranges_types.QPageRanges, pageNumber: cint): bool =
  fcQPageRanges_contains(self.h, pageNumber)

proc isEmpty*(self: gen_qpageranges_types.QPageRanges): bool =
  fcQPageRanges_isEmpty(self.h)

proc firstPage*(self: gen_qpageranges_types.QPageRanges): cint =
  fcQPageRanges_firstPage(self.h)

proc lastPage*(self: gen_qpageranges_types.QPageRanges): cint =
  fcQPageRanges_lastPage(self.h)

proc detach*(self: gen_qpageranges_types.QPageRanges): void =
  fcQPageRanges_detach(self.h)

proc create*(T: type gen_qpageranges_types.QPageRanges): gen_qpageranges_types.QPageRanges =
  gen_qpageranges_types.QPageRanges(h: fcQPageRanges_new(), owned: true)

proc create*(T: type gen_qpageranges_types.QPageRanges,
    other: gen_qpageranges_types.QPageRanges): gen_qpageranges_types.QPageRanges =
  gen_qpageranges_types.QPageRanges(h: fcQPageRanges_new2(other.h), owned: true)

proc contains*(self: gen_qpageranges_types.QPageRangesRange, pageNumber: cint): bool =
  fcQPageRangesRange_contains(self.h, pageNumber)

proc create*(T: type gen_qpageranges_types.QPageRangesRange): gen_qpageranges_types.QPageRangesRange =
  gen_qpageranges_types.QPageRangesRange(h: fcQPageRangesRange_new(), owned: true)

proc create*(T: type gen_qpageranges_types.QPageRangesRange,
    param1: gen_qpageranges_types.QPageRangesRange): gen_qpageranges_types.QPageRangesRange =
  gen_qpageranges_types.QPageRangesRange(h: fcQPageRangesRange_new2(param1.h), owned: true)

