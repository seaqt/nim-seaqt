import ./qtsql_pkg

{.push raises: [].}

from system/ansi_c import c_free

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


{.compile("gen_qsqlindex.cpp", QtSqlCFlags).}


import ./gen_qsqlindex_types
export gen_qsqlindex_types

import
  ./gen_qsqlfield_types,
  ./gen_qsqlrecord
export
  gen_qsqlfield_types,
  gen_qsqlrecord

type cQSqlIndex*{.exportc: "QSqlIndex", incompleteStruct.} = object

proc fcQSqlIndex_operatorAssign(self: pointer, other: pointer): void {.importc: "QSqlIndex_operatorAssign".}
proc fcQSqlIndex_setCursorName(self: pointer, cursorName: struct_seaqt_string): void {.importc: "QSqlIndex_setCursorName".}
proc fcQSqlIndex_cursorName(self: pointer): struct_seaqt_string {.importc: "QSqlIndex_cursorName".}
proc fcQSqlIndex_setName(self: pointer, name: struct_seaqt_string): void {.importc: "QSqlIndex_setName".}
proc fcQSqlIndex_name(self: pointer): struct_seaqt_string {.importc: "QSqlIndex_name".}
proc fcQSqlIndex_append(self: pointer, field: pointer): void {.importc: "QSqlIndex_append".}
proc fcQSqlIndex_append2(self: pointer, field: pointer, desc: bool): void {.importc: "QSqlIndex_append2".}
proc fcQSqlIndex_isDescending(self: pointer, i: cint): bool {.importc: "QSqlIndex_isDescending".}
proc fcQSqlIndex_setDescending(self: pointer, i: cint, desc: bool): void {.importc: "QSqlIndex_setDescending".}
proc fcQSqlIndex_new(): ptr cQSqlIndex {.importc: "QSqlIndex_new".}
proc fcQSqlIndex_new2(other: pointer): ptr cQSqlIndex {.importc: "QSqlIndex_new2".}
proc fcQSqlIndex_new3(cursorName: struct_seaqt_string): ptr cQSqlIndex {.importc: "QSqlIndex_new3".}
proc fcQSqlIndex_new4(cursorName: struct_seaqt_string, name: struct_seaqt_string): ptr cQSqlIndex {.importc: "QSqlIndex_new4".}
proc fcQSqlIndex_delete(self: pointer) {.importc: "QSqlIndex_delete".}

proc operatorAssign*(self: gen_qsqlindex_types.QSqlIndex, other: gen_qsqlindex_types.QSqlIndex): void =
  fcQSqlIndex_operatorAssign(self.h, other.h)

proc setCursorName*(self: gen_qsqlindex_types.QSqlIndex, cursorName: openArray[char]): void =
  fcQSqlIndex_setCursorName(self.h, struct_seaqt_string(data: if len(cursorName) > 0: addr cursorName[0] else: nil, len: csize_t(len(cursorName))))

proc cursorName*(self: gen_qsqlindex_types.QSqlIndex): string =
  let v_ms = fcQSqlIndex_cursorName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setName*(self: gen_qsqlindex_types.QSqlIndex, name: openArray[char]): void =
  fcQSqlIndex_setName(self.h, struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name))))

proc name*(self: gen_qsqlindex_types.QSqlIndex): string =
  let v_ms = fcQSqlIndex_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc append*(self: gen_qsqlindex_types.QSqlIndex, field: gen_qsqlfield_types.QSqlField): void =
  fcQSqlIndex_append(self.h, field.h)

proc append*(self: gen_qsqlindex_types.QSqlIndex, field: gen_qsqlfield_types.QSqlField, desc: bool): void =
  fcQSqlIndex_append2(self.h, field.h, desc)

proc isDescending*(self: gen_qsqlindex_types.QSqlIndex, i: cint): bool =
  fcQSqlIndex_isDescending(self.h, i)

proc setDescending*(self: gen_qsqlindex_types.QSqlIndex, i: cint, desc: bool): void =
  fcQSqlIndex_setDescending(self.h, i, desc)

proc create*(T: type gen_qsqlindex_types.QSqlIndex): gen_qsqlindex_types.QSqlIndex =
  let tmp = gen_qsqlindex_types.QSqlIndex(h: fcQSqlIndex_new())
  tmp
proc create*(T: type gen_qsqlindex_types.QSqlIndex,
    other: gen_qsqlindex_types.QSqlIndex): gen_qsqlindex_types.QSqlIndex =
  let tmp = gen_qsqlindex_types.QSqlIndex(h: fcQSqlIndex_new2(other.h))
  tmp
proc create*(T: type gen_qsqlindex_types.QSqlIndex,
    cursorName: openArray[char]): gen_qsqlindex_types.QSqlIndex =
  let tmp = gen_qsqlindex_types.QSqlIndex(h: fcQSqlIndex_new3(struct_seaqt_string(data: if len(cursorName) > 0: addr cursorName[0] else: nil, len: csize_t(len(cursorName)))))
  tmp
proc create*(T: type gen_qsqlindex_types.QSqlIndex,
    cursorName: openArray[char], name: openArray[char]): gen_qsqlindex_types.QSqlIndex =
  let tmp = gen_qsqlindex_types.QSqlIndex(h: fcQSqlIndex_new4(struct_seaqt_string(data: if len(cursorName) > 0: addr cursorName[0] else: nil, len: csize_t(len(cursorName))), struct_seaqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))))
  tmp
proc delete*(self: gen_qsqlindex_types.QSqlIndex) =
  fcQSqlIndex_delete(self.h)
