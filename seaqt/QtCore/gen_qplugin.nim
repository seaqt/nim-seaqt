import ./qtcore_pkg

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


import ./gen_qplugin_types
export gen_qplugin_types

import
  ./gen_qjsonobject_types
export
  gen_qjsonobject_types

type cQStaticPlugin*{.exportc: "QStaticPlugin", incompleteStruct.} = object

proc fcQStaticPlugin_metaData(self: pointer): pointer {.importc: "QStaticPlugin_metaData".}

proc metaData*(self: gen_qplugin_types.QStaticPlugin): gen_qjsonobject_types.QJsonObject =
  gen_qjsonobject_types.QJsonObject(h: fcQStaticPlugin_metaData(self.h), owned: true)

