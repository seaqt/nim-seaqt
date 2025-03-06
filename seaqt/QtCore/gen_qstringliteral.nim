import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qstringliteral.cpp", cflags).}


import ./gen_qstringliteral_types
export gen_qstringliteral_types


type cQStringDataPtr*{.exportc: "QStringDataPtr", incompleteStruct.} = object

proc fcQStringDataPtr_delete(self: pointer) {.importc: "QStringDataPtr_delete".}


func init*(T: type gen_qstringliteral_types.QStringDataPtr, h: ptr cQStringDataPtr): gen_qstringliteral_types.QStringDataPtr =
  T(h: h)
proc delete*(self: gen_qstringliteral_types.QStringDataPtr) =
  fcQStringDataPtr_delete(self.h)
