import ./Qt6WebEngineCore_libs

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


import ./gen_qwebenginescriptcollection_types
export gen_qwebenginescriptcollection_types

import
  ./gen_qwebenginescript_types
export
  gen_qwebenginescript_types

type cQWebEngineScriptCollection*{.exportc: "QWebEngineScriptCollection", incompleteStruct.} = object

proc fcQWebEngineScriptCollection_isEmpty(self: pointer): bool {.importc: "QWebEngineScriptCollection_isEmpty".}
proc fcQWebEngineScriptCollection_count(self: pointer): cint {.importc: "QWebEngineScriptCollection_count".}
proc fcQWebEngineScriptCollection_contains(self: pointer, value: pointer): bool {.importc: "QWebEngineScriptCollection_contains".}
proc fcQWebEngineScriptCollection_find(self: pointer, name: struct_miqt_string): struct_miqt_array {.importc: "QWebEngineScriptCollection_find".}
proc fcQWebEngineScriptCollection_insert(self: pointer, param1: pointer): void {.importc: "QWebEngineScriptCollection_insert".}
proc fcQWebEngineScriptCollection_insertWithList(self: pointer, list: struct_miqt_array): void {.importc: "QWebEngineScriptCollection_insertWithList".}
proc fcQWebEngineScriptCollection_remove(self: pointer, param1: pointer): bool {.importc: "QWebEngineScriptCollection_remove".}
proc fcQWebEngineScriptCollection_clear(self: pointer): void {.importc: "QWebEngineScriptCollection_clear".}
proc fcQWebEngineScriptCollection_toList(self: pointer): struct_miqt_array {.importc: "QWebEngineScriptCollection_toList".}

proc isEmpty*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection): bool =
  fcQWebEngineScriptCollection_isEmpty(self.h)

proc count*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection): cint =
  fcQWebEngineScriptCollection_count(self.h)

proc contains*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection, value: gen_qwebenginescript_types.QWebEngineScript): bool =
  fcQWebEngineScriptCollection_contains(self.h, value.h)

proc find*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection, name: string): seq[gen_qwebenginescript_types.QWebEngineScript] =
  var v_ma = fcQWebEngineScriptCollection_find(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  var vx_ret = newSeq[gen_qwebenginescript_types.QWebEngineScript](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebenginescript_types.QWebEngineScript(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc insert*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection, param1: gen_qwebenginescript_types.QWebEngineScript): void =
  fcQWebEngineScriptCollection_insert(self.h, param1.h)

proc insert*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection, list: seq[gen_qwebenginescript_types.QWebEngineScript]): void =
  var list_CArray = newSeq[pointer](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i].h

  fcQWebEngineScriptCollection_insertWithList(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc remove*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection, param1: gen_qwebenginescript_types.QWebEngineScript): bool =
  fcQWebEngineScriptCollection_remove(self.h, param1.h)

proc clear*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection): void =
  fcQWebEngineScriptCollection_clear(self.h)

proc toList*(self: gen_qwebenginescriptcollection_types.QWebEngineScriptCollection): seq[gen_qwebenginescript_types.QWebEngineScript] =
  var v_ma = fcQWebEngineScriptCollection_toList(self.h)
  var vx_ret = newSeq[gen_qwebenginescript_types.QWebEngineScript](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebenginescript_types.QWebEngineScript(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

