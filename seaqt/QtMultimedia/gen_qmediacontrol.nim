import ./Qt5Multimedia_libs

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

const cflags = gorge("pkg-config --cflags Qt5Multimedia")  & " -fPIC"
{.compile("gen_qmediacontrol.cpp", cflags).}


import ./gen_qmediacontrol_types
export gen_qmediacontrol_types

import
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types
export
  gen_qobject,
  gen_qobjectdefs_types

type cQMediaControl*{.exportc: "QMediaControl", incompleteStruct.} = object

proc fcQMediaControl_metaObject(self: pointer, ): pointer {.importc: "QMediaControl_metaObject".}
proc fcQMediaControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaControl_metacast".}
proc fcQMediaControl_tr(s: cstring): struct_miqt_string {.importc: "QMediaControl_tr".}
proc fcQMediaControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaControl_trUtf8".}
proc fcQMediaControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaControl_tr2".}
proc fcQMediaControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaControl_tr3".}
proc fcQMediaControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaControl_trUtf82".}
proc fcQMediaControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaControl_trUtf83".}
proc fcQMediaControl_delete(self: pointer) {.importc: "QMediaControl_delete".}


func init*(T: type gen_qmediacontrol_types.QMediaControl, h: ptr cQMediaControl): gen_qmediacontrol_types.QMediaControl =
  T(h: h)
proc metaObject*(self: gen_qmediacontrol_types.QMediaControl, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQMediaControl_metaObject(self.h))

proc metacast*(self: gen_qmediacontrol_types.QMediaControl, param1: cstring): pointer =
  fcQMediaControl_metacast(self.h, param1)

proc tr*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring): string =
  let v_ms = fcQMediaControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring): string =
  let v_ms = fcQMediaControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring, c: cstring): string =
  let v_ms = fcQMediaControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qmediacontrol_types.QMediaControl, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQMediaControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qmediacontrol_types.QMediaControl) =
  fcQMediaControl_delete(self.h)
