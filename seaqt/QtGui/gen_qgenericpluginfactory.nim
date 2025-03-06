import ./Qt5Gui_libs

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

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qgenericpluginfactory.cpp", cflags).}


import ./gen_qgenericpluginfactory_types
export gen_qgenericpluginfactory_types

import
  ../QtCore/gen_qobject_types
export
  gen_qobject_types

type cQGenericPluginFactory*{.exportc: "QGenericPluginFactory", incompleteStruct.} = object

proc fcQGenericPluginFactory_keys(): struct_miqt_array {.importc: "QGenericPluginFactory_keys".}
proc fcQGenericPluginFactory_create(param1: struct_miqt_string, param2: struct_miqt_string): pointer {.importc: "QGenericPluginFactory_create".}
proc fcQGenericPluginFactory_delete(self: pointer) {.importc: "QGenericPluginFactory_delete".}

proc keys*(_: type gen_qgenericpluginfactory_types.QGenericPluginFactory, ): seq[string] =
  var v_ma = fcQGenericPluginFactory_keys()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc create*(_: type gen_qgenericpluginfactory_types.QGenericPluginFactory, param1: string, param2: string): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQGenericPluginFactory_create(struct_miqt_string(data: param1, len: csize_t(len(param1))), struct_miqt_string(data: param2, len: csize_t(len(param2)))))

proc delete*(self: gen_qgenericpluginfactory_types.QGenericPluginFactory) =
  fcQGenericPluginFactory_delete(self.h)
