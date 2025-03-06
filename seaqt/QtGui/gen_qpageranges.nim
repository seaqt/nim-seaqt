import ./Qt6Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt6Gui")  & " -fPIC"
{.compile("gen_qpageranges.cpp", cflags).}


import ./gen_qpageranges_types
export gen_qpageranges_types


type cQPageRanges*{.exportc: "QPageRanges", incompleteStruct.} = object
type cQPageRangesRange*{.exportc: "QPageRanges__Range", incompleteStruct.} = object

proc fcQPageRanges_new(): ptr cQPageRanges {.importc: "QPageRanges_new".}
proc fcQPageRanges_new2(other: pointer): ptr cQPageRanges {.importc: "QPageRanges_new2".}
proc fcQPageRanges_operatorAssign(self: pointer, other: pointer): void {.importc: "QPageRanges_operatorAssign".}
proc fcQPageRanges_swap(self: pointer, other: pointer): void {.importc: "QPageRanges_swap".}
proc fcQPageRanges_addPage(self: pointer, pageNumber: cint): void {.importc: "QPageRanges_addPage".}
proc fcQPageRanges_addRange(self: pointer, fromVal: cint, to: cint): void {.importc: "QPageRanges_addRange".}
proc fcQPageRanges_toRangeList(self: pointer, ): struct_miqt_array {.importc: "QPageRanges_toRangeList".}
proc fcQPageRanges_clear(self: pointer, ): void {.importc: "QPageRanges_clear".}
proc fcQPageRanges_toString(self: pointer, ): struct_miqt_string {.importc: "QPageRanges_toString".}
proc fcQPageRanges_fromString(ranges: struct_miqt_string): pointer {.importc: "QPageRanges_fromString".}
proc fcQPageRanges_contains(self: pointer, pageNumber: cint): bool {.importc: "QPageRanges_contains".}
proc fcQPageRanges_isEmpty(self: pointer, ): bool {.importc: "QPageRanges_isEmpty".}
proc fcQPageRanges_firstPage(self: pointer, ): cint {.importc: "QPageRanges_firstPage".}
proc fcQPageRanges_lastPage(self: pointer, ): cint {.importc: "QPageRanges_lastPage".}
proc fcQPageRanges_detach(self: pointer, ): void {.importc: "QPageRanges_detach".}
proc fcQPageRanges_delete(self: pointer) {.importc: "QPageRanges_delete".}
proc fcQPageRangesRange_new(): ptr cQPageRangesRange {.importc: "QPageRanges__Range_new".}
proc fcQPageRangesRange_new2(param1: pointer): ptr cQPageRangesRange {.importc: "QPageRanges__Range_new2".}
proc fcQPageRangesRange_contains(self: pointer, pageNumber: cint): bool {.importc: "QPageRanges__Range_contains".}
proc fcQPageRangesRange_delete(self: pointer) {.importc: "QPageRanges__Range_delete".}


func init*(T: type gen_qpageranges_types.QPageRanges, h: ptr cQPageRanges): gen_qpageranges_types.QPageRanges =
  T(h: h)
proc create*(T: type gen_qpageranges_types.QPageRanges, ): gen_qpageranges_types.QPageRanges =
  gen_qpageranges_types.QPageRanges.init(fcQPageRanges_new())

proc create*(T: type gen_qpageranges_types.QPageRanges, other: gen_qpageranges_types.QPageRanges): gen_qpageranges_types.QPageRanges =
  gen_qpageranges_types.QPageRanges.init(fcQPageRanges_new2(other.h))

proc operatorAssign*(self: gen_qpageranges_types.QPageRanges, other: gen_qpageranges_types.QPageRanges): void =
  fcQPageRanges_operatorAssign(self.h, other.h)

proc swap*(self: gen_qpageranges_types.QPageRanges, other: gen_qpageranges_types.QPageRanges): void =
  fcQPageRanges_swap(self.h, other.h)

proc addPage*(self: gen_qpageranges_types.QPageRanges, pageNumber: cint): void =
  fcQPageRanges_addPage(self.h, pageNumber)

proc addRange*(self: gen_qpageranges_types.QPageRanges, fromVal: cint, to: cint): void =
  fcQPageRanges_addRange(self.h, fromVal, to)

proc toRangeList*(self: gen_qpageranges_types.QPageRanges, ): seq[gen_qpageranges_types.QPageRangesRange] =
  var v_ma = fcQPageRanges_toRangeList(self.h)
  var vx_ret = newSeq[gen_qpageranges_types.QPageRangesRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qpageranges_types.QPageRangesRange(h: v_outCast[i])
  vx_ret

proc clear*(self: gen_qpageranges_types.QPageRanges, ): void =
  fcQPageRanges_clear(self.h)

proc toString*(self: gen_qpageranges_types.QPageRanges, ): string =
  let v_ms = fcQPageRanges_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qpageranges_types.QPageRanges, ranges: string): gen_qpageranges_types.QPageRanges =
  gen_qpageranges_types.QPageRanges(h: fcQPageRanges_fromString(struct_miqt_string(data: ranges, len: csize_t(len(ranges)))))

proc contains*(self: gen_qpageranges_types.QPageRanges, pageNumber: cint): bool =
  fcQPageRanges_contains(self.h, pageNumber)

proc isEmpty*(self: gen_qpageranges_types.QPageRanges, ): bool =
  fcQPageRanges_isEmpty(self.h)

proc firstPage*(self: gen_qpageranges_types.QPageRanges, ): cint =
  fcQPageRanges_firstPage(self.h)

proc lastPage*(self: gen_qpageranges_types.QPageRanges, ): cint =
  fcQPageRanges_lastPage(self.h)

proc detach*(self: gen_qpageranges_types.QPageRanges, ): void =
  fcQPageRanges_detach(self.h)

proc delete*(self: gen_qpageranges_types.QPageRanges) =
  fcQPageRanges_delete(self.h)

func init*(T: type gen_qpageranges_types.QPageRangesRange, h: ptr cQPageRangesRange): gen_qpageranges_types.QPageRangesRange =
  T(h: h)
proc create*(T: type gen_qpageranges_types.QPageRangesRange, ): gen_qpageranges_types.QPageRangesRange =
  gen_qpageranges_types.QPageRangesRange.init(fcQPageRangesRange_new())

proc create*(T: type gen_qpageranges_types.QPageRangesRange, param1: gen_qpageranges_types.QPageRangesRange): gen_qpageranges_types.QPageRangesRange =
  gen_qpageranges_types.QPageRangesRange.init(fcQPageRangesRange_new2(param1.h))

proc contains*(self: gen_qpageranges_types.QPageRangesRange, pageNumber: cint): bool =
  fcQPageRangesRange_contains(self.h, pageNumber)

proc delete*(self: gen_qpageranges_types.QPageRangesRange) =
  fcQPageRangesRange_delete(self.h)
