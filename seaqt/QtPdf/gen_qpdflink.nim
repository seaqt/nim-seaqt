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


import ./gen_qpdflink_types
export gen_qpdflink_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qurl_types

type cQPdfLink*{.exportc: "QPdfLink", incompleteStruct.} = object

proc fcQPdfLink_operatorAssign(self: pointer, other: pointer): void {.importc: "QPdfLink_operatorAssign".}
proc fcQPdfLink_swap(self: pointer, other: pointer): void {.importc: "QPdfLink_swap".}
proc fcQPdfLink_isValid(self: pointer): bool {.importc: "QPdfLink_isValid".}
proc fcQPdfLink_page(self: pointer): cint {.importc: "QPdfLink_page".}
proc fcQPdfLink_location(self: pointer): pointer {.importc: "QPdfLink_location".}
proc fcQPdfLink_zoom(self: pointer): float64 {.importc: "QPdfLink_zoom".}
proc fcQPdfLink_url(self: pointer): pointer {.importc: "QPdfLink_url".}
proc fcQPdfLink_contextBefore(self: pointer): struct_seaqt_string {.importc: "QPdfLink_contextBefore".}
proc fcQPdfLink_contextAfter(self: pointer): struct_seaqt_string {.importc: "QPdfLink_contextAfter".}
proc fcQPdfLink_rectangles(self: pointer): struct_seaqt_array {.importc: "QPdfLink_rectangles".}
proc fcQPdfLink_toString(self: pointer): struct_seaqt_string {.importc: "QPdfLink_toString".}
proc fcQPdfLink_copyToClipboard(self: pointer): void {.importc: "QPdfLink_copyToClipboard".}
proc fcQPdfLink_copyToClipboardWithMode(self: pointer, mode: cint): void {.importc: "QPdfLink_copyToClipboardWithMode".}
proc fcQPdfLink_new(): ptr cQPdfLink {.importc: "QPdfLink_new".}
proc fcQPdfLink_new2(other: pointer): ptr cQPdfLink {.importc: "QPdfLink_new2".}
proc fcQPdfLink_staticMetaObject(): pointer {.importc: "QPdfLink_staticMetaObject".}

proc operatorAssign*(self: gen_qpdflink_types.QPdfLink, other: gen_qpdflink_types.QPdfLink): void =
  fcQPdfLink_operatorAssign(self.h, other.h)

proc swap*(self: gen_qpdflink_types.QPdfLink, other: gen_qpdflink_types.QPdfLink): void =
  fcQPdfLink_swap(self.h, other.h)

proc isValid*(self: gen_qpdflink_types.QPdfLink): bool =
  fcQPdfLink_isValid(self.h)

proc page*(self: gen_qpdflink_types.QPdfLink): cint =
  fcQPdfLink_page(self.h)

proc location*(self: gen_qpdflink_types.QPdfLink): gen_qpoint_types.QPointF =
  gen_qpoint_types.QPointF(h: fcQPdfLink_location(self.h), owned: true)

proc zoom*(self: gen_qpdflink_types.QPdfLink): float64 =
  fcQPdfLink_zoom(self.h)

proc url*(self: gen_qpdflink_types.QPdfLink): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQPdfLink_url(self.h), owned: true)

proc contextBefore*(self: gen_qpdflink_types.QPdfLink): string =
  let v_ms = fcQPdfLink_contextBefore(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc contextAfter*(self: gen_qpdflink_types.QPdfLink): string =
  let v_ms = fcQPdfLink_contextAfter(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc rectangles*(self: gen_qpdflink_types.QPdfLink): seq[gen_qrect_types.QRectF] =
  var v_ma = fcQPdfLink_rectangles(self.h)
  var vx_ret = newSeq[gen_qrect_types.QRectF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qrect_types.QRectF(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc toString*(self: gen_qpdflink_types.QPdfLink): string =
  let v_ms = fcQPdfLink_toString(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc copyToClipboard*(self: gen_qpdflink_types.QPdfLink): void =
  fcQPdfLink_copyToClipboard(self.h)

proc copyToClipboard*(self: gen_qpdflink_types.QPdfLink, mode: cint): void =
  fcQPdfLink_copyToClipboardWithMode(self.h, cint(mode))

proc create*(T: type gen_qpdflink_types.QPdfLink): gen_qpdflink_types.QPdfLink =
  let tmp = gen_qpdflink_types.QPdfLink(h: fcQPdfLink_new(), owned: true)
  tmp
proc create*(T: type gen_qpdflink_types.QPdfLink,
    other: gen_qpdflink_types.QPdfLink): gen_qpdflink_types.QPdfLink =
  let tmp = gen_qpdflink_types.QPdfLink(h: fcQPdfLink_new2(other.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qpdflink_types.QPdfLink): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfLink_staticMetaObject())
