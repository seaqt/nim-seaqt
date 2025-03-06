import ./Qt6Core_libs

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qvarlengtharray.cpp", cflags).}


import ./gen_qvarlengtharray_types
export gen_qvarlengtharray_types


type cQVLABaseBase*{.exportc: "QVLABaseBase", incompleteStruct.} = object

proc fcQVLABaseBase_capacity(self: pointer, ): int64 {.importc: "QVLABaseBase_capacity".}
proc fcQVLABaseBase_size(self: pointer, ): int64 {.importc: "QVLABaseBase_size".}
proc fcQVLABaseBase_empty(self: pointer, ): bool {.importc: "QVLABaseBase_empty".}


func init*(T: type gen_qvarlengtharray_types.QVLABaseBase, h: ptr cQVLABaseBase): gen_qvarlengtharray_types.QVLABaseBase =
  T(h: h)
proc capacity*(self: gen_qvarlengtharray_types.QVLABaseBase, ): int64 =
  fcQVLABaseBase_capacity(self.h)

proc size*(self: gen_qvarlengtharray_types.QVLABaseBase, ): int64 =
  fcQVLABaseBase_size(self.h)

proc empty*(self: gen_qvarlengtharray_types.QVLABaseBase, ): bool =
  fcQVLABaseBase_empty(self.h)

