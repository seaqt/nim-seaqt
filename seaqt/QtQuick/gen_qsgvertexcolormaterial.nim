import ./qtquick_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


{.compile("gen_qsgvertexcolormaterial.cpp", QtQuickCFlags).}


import ./gen_qsgvertexcolormaterial_types
export gen_qsgvertexcolormaterial_types

import
  ./gen_qsgmaterial
export
  gen_qsgmaterial

type cQSGVertexColorMaterial*{.exportc: "QSGVertexColorMaterial", incompleteStruct.} = object

proc fcQSGVertexColorMaterial_new(): ptr cQSGVertexColorMaterial {.importc: "QSGVertexColorMaterial_new".}

proc create*(T: type gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial): gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial =
  let tmp = gen_qsgvertexcolormaterial_types.QSGVertexColorMaterial(h: fcQSGVertexColorMaterial_new(), owned: true)
  tmp
