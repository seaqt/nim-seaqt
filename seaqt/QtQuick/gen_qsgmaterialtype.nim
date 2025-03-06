import ./Qt5Quick_libs

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

const cflags = gorge("pkg-config --cflags Qt5Quick")  & " -fPIC"
{.compile("gen_qsgmaterialtype.cpp", cflags).}


import ./gen_qsgmaterialtype_types
export gen_qsgmaterialtype_types


type cQSGMaterialType*{.exportc: "QSGMaterialType", incompleteStruct.} = object

proc fcQSGMaterialType_delete(self: pointer) {.importc: "QSGMaterialType_delete".}


func init*(T: type gen_qsgmaterialtype_types.QSGMaterialType, h: ptr cQSGMaterialType): gen_qsgmaterialtype_types.QSGMaterialType =
  T(h: h)
proc delete*(self: gen_qsgmaterialtype_types.QSGMaterialType) =
  fcQSGMaterialType_delete(self.h)
