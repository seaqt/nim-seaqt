import ./qtpdf_pkg

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


import ./gen_qpdfdocumentrenderoptions_types
export gen_qpdfdocumentrenderoptions_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types
export
  gen_qrect_types,
  gen_qsize_types

type cQPdfDocumentRenderOptions*{.exportc: "QPdfDocumentRenderOptions", incompleteStruct.} = object

proc fcQPdfDocumentRenderOptions_rotation(self: pointer): cint {.importc: "QPdfDocumentRenderOptions_rotation".}
proc fcQPdfDocumentRenderOptions_setRotation(self: pointer, r: cint): void {.importc: "QPdfDocumentRenderOptions_setRotation".}
proc fcQPdfDocumentRenderOptions_renderFlags(self: pointer): cint {.importc: "QPdfDocumentRenderOptions_renderFlags".}
proc fcQPdfDocumentRenderOptions_setRenderFlags(self: pointer, r: cint): void {.importc: "QPdfDocumentRenderOptions_setRenderFlags".}
proc fcQPdfDocumentRenderOptions_scaledClipRect(self: pointer): pointer {.importc: "QPdfDocumentRenderOptions_scaledClipRect".}
proc fcQPdfDocumentRenderOptions_setScaledClipRect(self: pointer, r: pointer): void {.importc: "QPdfDocumentRenderOptions_setScaledClipRect".}
proc fcQPdfDocumentRenderOptions_scaledSize(self: pointer): pointer {.importc: "QPdfDocumentRenderOptions_scaledSize".}
proc fcQPdfDocumentRenderOptions_setScaledSize(self: pointer, s: pointer): void {.importc: "QPdfDocumentRenderOptions_setScaledSize".}
proc fcQPdfDocumentRenderOptions_new(): ptr cQPdfDocumentRenderOptions {.importc: "QPdfDocumentRenderOptions_new".}
proc fcQPdfDocumentRenderOptions_new2(param1: pointer): ptr cQPdfDocumentRenderOptions {.importc: "QPdfDocumentRenderOptions_new2".}
proc fcQPdfDocumentRenderOptions_delete(self: pointer) {.importc: "QPdfDocumentRenderOptions_delete".}

proc rotation*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions): cint =
  cint(fcQPdfDocumentRenderOptions_rotation(self.h))

proc setRotation*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions, r: cint): void =
  fcQPdfDocumentRenderOptions_setRotation(self.h, cint(r))

proc renderFlags*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions): cint =
  cint(fcQPdfDocumentRenderOptions_renderFlags(self.h))

proc setRenderFlags*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions, r: cint): void =
  fcQPdfDocumentRenderOptions_setRenderFlags(self.h, cint(r))

proc scaledClipRect*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQPdfDocumentRenderOptions_scaledClipRect(self.h))

proc setScaledClipRect*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions, r: gen_qrect_types.QRect): void =
  fcQPdfDocumentRenderOptions_setScaledClipRect(self.h, r.h)

proc scaledSize*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQPdfDocumentRenderOptions_scaledSize(self.h))

proc setScaledSize*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions, s: gen_qsize_types.QSize): void =
  fcQPdfDocumentRenderOptions_setScaledSize(self.h, s.h)

proc create*(T: type gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions): gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions =
  let tmp = gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions(h: fcQPdfDocumentRenderOptions_new())
  tmp
proc create*(T: type gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions,
    param1: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions): gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions =
  let tmp = gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions(h: fcQPdfDocumentRenderOptions_new2(param1.h))
  tmp
proc delete*(self: gen_qpdfdocumentrenderoptions_types.QPdfDocumentRenderOptions) =
  fcQPdfDocumentRenderOptions_delete(self.h)
