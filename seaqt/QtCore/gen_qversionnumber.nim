import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qversionnumber.cpp", cflags).}


import ./gen_qversionnumber_types
export gen_qversionnumber_types


type cQVersionNumber*{.exportc: "QVersionNumber", incompleteStruct.} = object

proc fcQVersionNumber_isNull(self: pointer, ): bool {.importc: "QVersionNumber_isNull".}
proc fcQVersionNumber_isNormalized(self: pointer, ): bool {.importc: "QVersionNumber_isNormalized".}
proc fcQVersionNumber_majorVersion(self: pointer, ): cint {.importc: "QVersionNumber_majorVersion".}
proc fcQVersionNumber_minorVersion(self: pointer, ): cint {.importc: "QVersionNumber_minorVersion".}
proc fcQVersionNumber_microVersion(self: pointer, ): cint {.importc: "QVersionNumber_microVersion".}
proc fcQVersionNumber_normalized(self: pointer, ): pointer {.importc: "QVersionNumber_normalized".}
proc fcQVersionNumber_segments(self: pointer, ): struct_miqt_array {.importc: "QVersionNumber_segments".}
proc fcQVersionNumber_segmentAt(self: pointer, index: cint): cint {.importc: "QVersionNumber_segmentAt".}
proc fcQVersionNumber_segmentCount(self: pointer, ): cint {.importc: "QVersionNumber_segmentCount".}
proc fcQVersionNumber_isPrefixOf(self: pointer, other: pointer): bool {.importc: "QVersionNumber_isPrefixOf".}
proc fcQVersionNumber_compare(v1: pointer, v2: pointer): cint {.importc: "QVersionNumber_compare".}
proc fcQVersionNumber_commonPrefix(v1: pointer, v2: pointer): pointer {.importc: "QVersionNumber_commonPrefix".}
proc fcQVersionNumber_toString(self: pointer, ): struct_miqt_string {.importc: "QVersionNumber_toString".}
proc fcQVersionNumber_fromString(string: struct_miqt_string): pointer {.importc: "QVersionNumber_fromString".}
proc fcQVersionNumber_fromString22(string: struct_miqt_string, suffixIndex: ptr cint): pointer {.importc: "QVersionNumber_fromString22".}
proc fcQVersionNumber_new(): ptr cQVersionNumber {.importc: "QVersionNumber_new".}
proc fcQVersionNumber_new2(seg: struct_miqt_array): ptr cQVersionNumber {.importc: "QVersionNumber_new2".}
proc fcQVersionNumber_new3(maj: cint): ptr cQVersionNumber {.importc: "QVersionNumber_new3".}
proc fcQVersionNumber_new4(maj: cint, min: cint): ptr cQVersionNumber {.importc: "QVersionNumber_new4".}
proc fcQVersionNumber_new5(maj: cint, min: cint, mic: cint): ptr cQVersionNumber {.importc: "QVersionNumber_new5".}
proc fcQVersionNumber_delete(self: pointer) {.importc: "QVersionNumber_delete".}

proc isNull*(self: gen_qversionnumber_types.QVersionNumber, ): bool =
  fcQVersionNumber_isNull(self.h)

proc isNormalized*(self: gen_qversionnumber_types.QVersionNumber, ): bool =
  fcQVersionNumber_isNormalized(self.h)

proc majorVersion*(self: gen_qversionnumber_types.QVersionNumber, ): cint =
  fcQVersionNumber_majorVersion(self.h)

proc minorVersion*(self: gen_qversionnumber_types.QVersionNumber, ): cint =
  fcQVersionNumber_minorVersion(self.h)

proc microVersion*(self: gen_qversionnumber_types.QVersionNumber, ): cint =
  fcQVersionNumber_microVersion(self.h)

proc normalized*(self: gen_qversionnumber_types.QVersionNumber, ): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_normalized(self.h))

proc segments*(self: gen_qversionnumber_types.QVersionNumber, ): seq[cint] =
  var v_ma = fcQVersionNumber_segments(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc segmentAt*(self: gen_qversionnumber_types.QVersionNumber, index: cint): cint =
  fcQVersionNumber_segmentAt(self.h, index)

proc segmentCount*(self: gen_qversionnumber_types.QVersionNumber, ): cint =
  fcQVersionNumber_segmentCount(self.h)

proc isPrefixOf*(self: gen_qversionnumber_types.QVersionNumber, other: gen_qversionnumber_types.QVersionNumber): bool =
  fcQVersionNumber_isPrefixOf(self.h, other.h)

proc compare*(_: type gen_qversionnumber_types.QVersionNumber, v1: gen_qversionnumber_types.QVersionNumber, v2: gen_qversionnumber_types.QVersionNumber): cint =
  fcQVersionNumber_compare(v1.h, v2.h)

proc commonPrefix*(_: type gen_qversionnumber_types.QVersionNumber, v1: gen_qversionnumber_types.QVersionNumber, v2: gen_qversionnumber_types.QVersionNumber): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_commonPrefix(v1.h, v2.h))

proc toString*(self: gen_qversionnumber_types.QVersionNumber, ): string =
  let v_ms = fcQVersionNumber_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type gen_qversionnumber_types.QVersionNumber, string: string): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_fromString(struct_miqt_string(data: string, len: csize_t(len(string)))))

proc fromString*(_: type gen_qversionnumber_types.QVersionNumber, string: string, suffixIndex: ptr cint): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_fromString22(struct_miqt_string(data: string, len: csize_t(len(string))), suffixIndex))

proc create*(T: type gen_qversionnumber_types.QVersionNumber): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_new())

proc create*(T: type gen_qversionnumber_types.QVersionNumber,
    seg: seq[cint]): gen_qversionnumber_types.QVersionNumber =
  var seg_CArray = newSeq[cint](len(seg))
  for i in 0..<len(seg):
    seg_CArray[i] = seg[i]

  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_new2(struct_miqt_array(len: csize_t(len(seg)), data: if len(seg) == 0: nil else: addr(seg_CArray[0]))))

proc create*(T: type gen_qversionnumber_types.QVersionNumber,
    maj: cint): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_new3(maj))

proc create*(T: type gen_qversionnumber_types.QVersionNumber,
    maj: cint, min: cint): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_new4(maj, min))

proc create*(T: type gen_qversionnumber_types.QVersionNumber,
    maj: cint, min: cint, mic: cint): gen_qversionnumber_types.QVersionNumber =
  gen_qversionnumber_types.QVersionNumber(h: fcQVersionNumber_new5(maj, min, mic))

proc delete*(self: gen_qversionnumber_types.QVersionNumber) =
  fcQVersionNumber_delete(self.h)
