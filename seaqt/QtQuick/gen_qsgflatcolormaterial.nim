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


{.compile("gen_qsgflatcolormaterial.cpp", QtQuickCFlags).}


import ./gen_qsgflatcolormaterial_types
export gen_qsgflatcolormaterial_types

import
  ../QtGui/gen_qcolor_types,
  ./gen_qsgmaterial,
  ./gen_qsgmaterialshader_types
export
  gen_qcolor_types,
  gen_qsgmaterial,
  gen_qsgmaterialshader_types

type cQSGFlatColorMaterial*{.exportc: "QSGFlatColorMaterial", incompleteStruct.} = object

proc fcQSGFlatColorMaterial_createShader(self: pointer): pointer {.importc: "QSGFlatColorMaterial_createShader".}
proc fcQSGFlatColorMaterial_setColor(self: pointer, color: pointer): void {.importc: "QSGFlatColorMaterial_setColor".}
proc fcQSGFlatColorMaterial_color(self: pointer): pointer {.importc: "QSGFlatColorMaterial_color".}
proc fcQSGFlatColorMaterial_new(): ptr cQSGFlatColorMaterial {.importc: "QSGFlatColorMaterial_new".}

proc createShader*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial): gen_qsgmaterialshader_types.QSGMaterialShader =
  gen_qsgmaterialshader_types.QSGMaterialShader(h: fcQSGFlatColorMaterial_createShader(self.h), owned: false)

proc setColor*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial, color: gen_qcolor_types.QColor): void =
  fcQSGFlatColorMaterial_setColor(self.h, color.h)

proc color*(self: gen_qsgflatcolormaterial_types.QSGFlatColorMaterial): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQSGFlatColorMaterial_color(self.h), owned: false)

proc create*(T: type gen_qsgflatcolormaterial_types.QSGFlatColorMaterial): gen_qsgflatcolormaterial_types.QSGFlatColorMaterial =
  let tmp = gen_qsgflatcolormaterial_types.QSGFlatColorMaterial(h: fcQSGFlatColorMaterial_new(), owned: true)
  tmp
