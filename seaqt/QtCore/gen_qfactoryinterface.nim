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
{.compile("gen_qfactoryinterface.cpp", cflags).}


import ./gen_qfactoryinterface_types
export gen_qfactoryinterface_types


type cQFactoryInterface*{.exportc: "QFactoryInterface", incompleteStruct.} = object

proc fcQFactoryInterface_keys(self: pointer, ): struct_miqt_array {.importc: "QFactoryInterface_keys".}
proc fcQFactoryInterface_delete(self: pointer) {.importc: "QFactoryInterface_delete".}


func init*(T: type gen_qfactoryinterface_types.QFactoryInterface, h: ptr cQFactoryInterface): gen_qfactoryinterface_types.QFactoryInterface =
  T(h: h)
proc keys*(self: gen_qfactoryinterface_types.QFactoryInterface, ): seq[string] =
  var v_ma = fcQFactoryInterface_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc delete*(self: gen_qfactoryinterface_types.QFactoryInterface) =
  fcQFactoryInterface_delete(self.h)
