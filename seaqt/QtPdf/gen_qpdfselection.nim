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


import ./gen_qpdfselection_types
export gen_qpdfselection_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types
export
  gen_qobjectdefs_types,
  gen_qrect_types

type cQPdfSelection*{.exportc: "QPdfSelection", incompleteStruct.} = object

proc fcQPdfSelection_operatorAssign(self: pointer, other: pointer): void {.importc: "QPdfSelection_operatorAssign".}
proc fcQPdfSelection_swap(self: pointer, other: pointer): void {.importc: "QPdfSelection_swap".}
proc fcQPdfSelection_isValid(self: pointer): bool {.importc: "QPdfSelection_isValid".}
proc fcQPdfSelection_text(self: pointer): struct_seaqt_string {.importc: "QPdfSelection_text".}
proc fcQPdfSelection_boundingRectangle(self: pointer): pointer {.importc: "QPdfSelection_boundingRectangle".}
proc fcQPdfSelection_startIndex(self: pointer): cint {.importc: "QPdfSelection_startIndex".}
proc fcQPdfSelection_endIndex(self: pointer): cint {.importc: "QPdfSelection_endIndex".}
proc fcQPdfSelection_copyToClipboard(self: pointer): void {.importc: "QPdfSelection_copyToClipboard".}
proc fcQPdfSelection_copyToClipboardWithMode(self: pointer, mode: cint): void {.importc: "QPdfSelection_copyToClipboardWithMode".}
proc fcQPdfSelection_new(other: pointer): ptr cQPdfSelection {.importc: "QPdfSelection_new".}
proc fcQPdfSelection_staticMetaObject(): pointer {.importc: "QPdfSelection_staticMetaObject".}
proc fcQPdfSelection_delete(self: pointer) {.importc: "QPdfSelection_delete".}

proc operatorAssign*(self: gen_qpdfselection_types.QPdfSelection, other: gen_qpdfselection_types.QPdfSelection): void =
  fcQPdfSelection_operatorAssign(self.h, other.h)

proc swap*(self: gen_qpdfselection_types.QPdfSelection, other: gen_qpdfselection_types.QPdfSelection): void =
  fcQPdfSelection_swap(self.h, other.h)

proc isValid*(self: gen_qpdfselection_types.QPdfSelection): bool =
  fcQPdfSelection_isValid(self.h)

proc text*(self: gen_qpdfselection_types.QPdfSelection): string =
  let v_ms = fcQPdfSelection_text(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc boundingRectangle*(self: gen_qpdfselection_types.QPdfSelection): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQPdfSelection_boundingRectangle(self.h))

proc startIndex*(self: gen_qpdfselection_types.QPdfSelection): cint =
  fcQPdfSelection_startIndex(self.h)

proc endIndex*(self: gen_qpdfselection_types.QPdfSelection): cint =
  fcQPdfSelection_endIndex(self.h)

proc copyToClipboard*(self: gen_qpdfselection_types.QPdfSelection): void =
  fcQPdfSelection_copyToClipboard(self.h)

proc copyToClipboard*(self: gen_qpdfselection_types.QPdfSelection, mode: cint): void =
  fcQPdfSelection_copyToClipboardWithMode(self.h, cint(mode))

proc create*(T: type gen_qpdfselection_types.QPdfSelection,
    other: gen_qpdfselection_types.QPdfSelection): gen_qpdfselection_types.QPdfSelection =
  let tmp = gen_qpdfselection_types.QPdfSelection(h: fcQPdfSelection_new(other.h))
  tmp
proc staticMetaObject*(_: type gen_qpdfselection_types.QPdfSelection): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfSelection_staticMetaObject())
proc delete*(self: gen_qpdfselection_types.QPdfSelection) =
  fcQPdfSelection_delete(self.h)
