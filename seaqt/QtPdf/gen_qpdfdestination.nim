import ./qtpdf_pkg

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


import ./gen_qpdfdestination_types
export gen_qpdfdestination_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types
export
  gen_qobjectdefs_types,
  gen_qpoint_types

type cQPdfDestination*{.exportc: "QPdfDestination", incompleteStruct.} = object

proc fcQPdfDestination_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QPdfDestination_operatorAssign".}
proc fcQPdfDestination_swap(self: pointer, other: pointer): void {.importc: "QPdfDestination_swap".}
proc fcQPdfDestination_isValid(self: pointer): bool {.importc: "QPdfDestination_isValid".}
proc fcQPdfDestination_page(self: pointer): cint {.importc: "QPdfDestination_page".}
proc fcQPdfDestination_location(self: pointer): pointer {.importc: "QPdfDestination_location".}
proc fcQPdfDestination_zoom(self: pointer): float64 {.importc: "QPdfDestination_zoom".}
proc fcQPdfDestination_new(fromVal: pointer): ptr cQPdfDestination {.importc: "QPdfDestination_new".}
proc fcQPdfDestination_staticMetaObject(): pointer {.importc: "QPdfDestination_staticMetaObject".}

proc operatorAssign*(self: gen_qpdfdestination_types.QPdfDestination, fromVal: gen_qpdfdestination_types.QPdfDestination): void =
  fcQPdfDestination_operatorAssign(self.h, fromVal.h)

proc swap*(self: gen_qpdfdestination_types.QPdfDestination, other: gen_qpdfdestination_types.QPdfDestination): void =
  fcQPdfDestination_swap(self.h, other.h)

proc isValid*(self: gen_qpdfdestination_types.QPdfDestination): bool =
  fcQPdfDestination_isValid(self.h)

proc page*(self: gen_qpdfdestination_types.QPdfDestination): cint =
  fcQPdfDestination_page(self.h)

proc location*(self: gen_qpdfdestination_types.QPdfDestination): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPdfDestination_location(self.h), owned: true)

proc zoom*(self: gen_qpdfdestination_types.QPdfDestination): float64 =
  fcQPdfDestination_zoom(self.h)

proc create*(T: type gen_qpdfdestination_types.QPdfDestination,
    fromVal: gen_qpdfdestination_types.QPdfDestination): gen_qpdfdestination_types.QPdfDestination =
  let tmp = gen_qpdfdestination_types.QPdfDestination(h: fcQPdfDestination_new(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qpdfdestination_types.QPdfDestination): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfDestination_staticMetaObject())
