import ./Qt6Widgets_libs

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


import ./gen_qstylefactory_types
export gen_qstylefactory_types

import
  ./gen_qstyle_types
export
  gen_qstyle_types

type cQStyleFactory*{.exportc: "QStyleFactory", incompleteStruct.} = object

proc fcQStyleFactory_keys(): struct_miqt_array {.importc: "QStyleFactory_keys".}
proc fcQStyleFactory_create(param1: struct_miqt_string): pointer {.importc: "QStyleFactory_create".}

proc keys*(_: type gen_qstylefactory_types.QStyleFactory, ): seq[string] =
  var v_ma = fcQStyleFactory_keys()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc create*(_: type gen_qstylefactory_types.QStyleFactory, param1: string): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQStyleFactory_create(struct_miqt_string(data: param1, len: csize_t(len(param1)))), owned: false)

