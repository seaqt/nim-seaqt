import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core") & " -fPIC"
{.compile("gen_qvarlengtharray.cpp", cflags).}


import ./gen_qvarlengtharray_types
export gen_qvarlengtharray_types


type cQVLABaseBase*{.exportc: "QVLABaseBase", incompleteStruct.} = object

proc fcQVLABaseBase_capacity(self: pointer, ): int64 {.importc: "QVLABaseBase_capacity".}
proc fcQVLABaseBase_size(self: pointer, ): int64 {.importc: "QVLABaseBase_size".}
proc fcQVLABaseBase_empty(self: pointer, ): bool {.importc: "QVLABaseBase_empty".}
proc fcQVLABaseBase_protectedbase_verify(self: pointer, ): void {.importc: "QVLABaseBase_protectedbase_verify".}
proc fcQVLABaseBase_protectedbase_verify1(self: pointer, pos: int64): void {.importc: "QVLABaseBase_protectedbase_verify1".}
proc fcQVLABaseBase_protectedbase_verify2(self: pointer, pos: int64, n: int64): void {.importc: "QVLABaseBase_protectedbase_verify2".}

proc capacity*(self: gen_qvarlengtharray_types.QVLABaseBase, ): int64 =
  fcQVLABaseBase_capacity(self.h)

proc size*(self: gen_qvarlengtharray_types.QVLABaseBase, ): int64 =
  fcQVLABaseBase_size(self.h)

proc empty*(self: gen_qvarlengtharray_types.QVLABaseBase, ): bool =
  fcQVLABaseBase_empty(self.h)

proc verify*(self: gen_qvarlengtharray_types.QVLABaseBase, ): void =
  fcQVLABaseBase_protectedbase_verify(self.h)

proc verify*(self: gen_qvarlengtharray_types.QVLABaseBase, pos: int64): void =
  fcQVLABaseBase_protectedbase_verify1(self.h, pos)

proc verify*(self: gen_qvarlengtharray_types.QVLABaseBase, pos: int64, n: int64): void =
  fcQVLABaseBase_protectedbase_verify2(self.h, pos, n)

