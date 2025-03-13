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


import ./gen_qgenericpluginfactory_types
export gen_qgenericpluginfactory_types

import
  ../QtCore/gen_qobject_types
export
  gen_qobject_types

type cQGenericPluginFactory*{.exportc: "QGenericPluginFactory", incompleteStruct.} = object

proc fcQGenericPluginFactory_keys(): struct_miqt_array {.importc: "QGenericPluginFactory_keys".}
proc fcQGenericPluginFactory_create(param1: struct_miqt_string, param2: struct_miqt_string): pointer {.importc: "QGenericPluginFactory_create".}

proc keys*(_: type gen_qgenericpluginfactory_types.QGenericPluginFactory): seq[string] =
  var v_ma = fcQGenericPluginFactory_keys()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(vx_lv_ms)
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  c_free(v_ma.data)
  vx_ret

proc create*(_: type gen_qgenericpluginfactory_types.QGenericPluginFactory, param1: openArray[char], param2: openArray[char]): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGenericPluginFactory_create(struct_miqt_string(data: if len(param1) > 0: addr param1[0] else: nil, len: csize_t(len(param1))), struct_miqt_string(data: if len(param2) > 0: addr param2[0] else: nil, len: csize_t(len(param2)))), owned: false)

