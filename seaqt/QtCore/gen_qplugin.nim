import ./qtcore_pkg

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


import ./gen_qplugin_types
export gen_qplugin_types

import
  ./gen_qjsonobject_types
export
  gen_qjsonobject_types

type cQStaticPlugin*{.exportc: "QStaticPlugin", incompleteStruct.} = object

proc fcQStaticPlugin_metaData(self: pointer): pointer {.importc: "QStaticPlugin_metaData".}
proc fcQStaticPlugin_new(fromVal: pointer): ptr cQStaticPlugin {.importc: "QStaticPlugin_new_from".}

proc metaData*(self: gen_qplugin_types.QStaticPlugin): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQStaticPlugin_metaData(self.h), owned: true)

proc create*(T: type gen_qplugin_types.QStaticPlugin,
    fromVal: gen_qplugin_types.QStaticPlugin): gen_qplugin_types.QStaticPlugin =
  let tmp = gen_qplugin_types.QStaticPlugin(h: fcQStaticPlugin_new(fromVal.h), owned: true)
  tmp
