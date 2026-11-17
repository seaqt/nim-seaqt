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


import ./gen_qlinkedlist_types
export gen_qlinkedlist_types


type cQLinkedListData*{.exportc: "QLinkedListData", incompleteStruct.} = object

proc fcQLinkedListData_n(self: pointer): pointer {.importc: "QLinkedListData_n".}
proc fcQLinkedListData_setN(self: pointer, n: pointer): void {.importc: "QLinkedListData_setN".}
proc fcQLinkedListData_p(self: pointer): pointer {.importc: "QLinkedListData_p".}
proc fcQLinkedListData_setP(self: pointer, p: pointer): void {.importc: "QLinkedListData_setP".}
proc fcQLinkedListData_size(self: pointer): cint {.importc: "QLinkedListData_size".}
proc fcQLinkedListData_setSize(self: pointer, size: cint): void {.importc: "QLinkedListData_setSize".}
proc fcQLinkedListData_sharable(self: pointer): cuint {.importc: "QLinkedListData_sharable".}
proc fcQLinkedListData_setSharable(self: pointer, sharable: cuint): void {.importc: "QLinkedListData_setSharable".}
proc fcQLinkedListData_new(): ptr cQLinkedListData {.importc: "QLinkedListData_new".}
proc fcQLinkedListData_delete(self: pointer) {.importc: "QLinkedListData_delete".}

proc n*(self: gen_qlinkedlist_types.QLinkedListData): gen_qlinkedlist_types.QLinkedListData =
  gen_qlinkedlist_types.QLinkedListData(h: fcQLinkedListData_n(self.h))

proc setN*(self: gen_qlinkedlist_types.QLinkedListData, n: gen_qlinkedlist_types.QLinkedListData): void =
  fcQLinkedListData_setN(self.h, n.h)

proc p*(self: gen_qlinkedlist_types.QLinkedListData): gen_qlinkedlist_types.QLinkedListData =
  gen_qlinkedlist_types.QLinkedListData(h: fcQLinkedListData_p(self.h))

proc setP*(self: gen_qlinkedlist_types.QLinkedListData, p: gen_qlinkedlist_types.QLinkedListData): void =
  fcQLinkedListData_setP(self.h, p.h)

proc size*(self: gen_qlinkedlist_types.QLinkedListData): cint =
  fcQLinkedListData_size(self.h)

proc setSize*(self: gen_qlinkedlist_types.QLinkedListData, size: cint): void =
  fcQLinkedListData_setSize(self.h, size)

proc sharable*(self: gen_qlinkedlist_types.QLinkedListData): cuint =
  fcQLinkedListData_sharable(self.h)

proc setSharable*(self: gen_qlinkedlist_types.QLinkedListData, sharable: cuint): void =
  fcQLinkedListData_setSharable(self.h, sharable)

proc create*(T: type gen_qlinkedlist_types.QLinkedListData): gen_qlinkedlist_types.QLinkedListData =
  let tmp = gen_qlinkedlist_types.QLinkedListData(h: fcQLinkedListData_new())
  tmp
proc delete*(self: gen_qlinkedlist_types.QLinkedListData) =
  fcQLinkedListData_delete(self.h)
