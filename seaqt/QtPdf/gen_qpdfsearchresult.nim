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


{.compile("gen_qpdfsearchresult.cpp", QtPdfCFlags).}


import ./gen_qpdfsearchresult_types
export gen_qpdfsearchresult_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ./gen_qpdfdestination
export
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qpdfdestination

type cQPdfSearchResult*{.exportc: "QPdfSearchResult", incompleteStruct.} = object

proc fcQPdfSearchResult_contextBefore(self: pointer): struct_seaqt_string {.importc: "QPdfSearchResult_contextBefore".}
proc fcQPdfSearchResult_contextAfter(self: pointer): struct_seaqt_string {.importc: "QPdfSearchResult_contextAfter".}
proc fcQPdfSearchResult_rectangles(self: pointer): struct_seaqt_array {.importc: "QPdfSearchResult_rectangles".}
proc fcQPdfSearchResult_operatorAssign(self: pointer, param1: pointer): void {.importc: "QPdfSearchResult_operatorAssign".}
proc fcQPdfSearchResult_new(): ptr cQPdfSearchResult {.importc: "QPdfSearchResult_new".}
proc fcQPdfSearchResult_new2(param1: pointer): ptr cQPdfSearchResult {.importc: "QPdfSearchResult_new2".}
proc fcQPdfSearchResult_staticMetaObject(): pointer {.importc: "QPdfSearchResult_staticMetaObject".}
proc fcQPdfSearchResult_delete(self: pointer) {.importc: "QPdfSearchResult_delete".}

proc contextBefore*(self: gen_qpdfsearchresult_types.QPdfSearchResult): string =
  let v_ms = fcQPdfSearchResult_contextBefore(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc contextAfter*(self: gen_qpdfsearchresult_types.QPdfSearchResult): string =
  let v_ms = fcQPdfSearchResult_contextAfter(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc rectangles*(self: gen_qpdfsearchresult_types.QPdfSearchResult): seq[gen_qrect_types.QRectF] =
  var v_ma = fcQPdfSearchResult_rectangles(self.h)
  var vx_ret = newSeq[gen_qrect_types.QRectF](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qrect_types.QRectF(h: v_outCast[i])
  c_free(v_ma.data)
  vx_ret

proc operatorAssign*(self: gen_qpdfsearchresult_types.QPdfSearchResult, param1: gen_qpdfsearchresult_types.QPdfSearchResult): void =
  fcQPdfSearchResult_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qpdfsearchresult_types.QPdfSearchResult): gen_qpdfsearchresult_types.QPdfSearchResult =
  let tmp = gen_qpdfsearchresult_types.QPdfSearchResult(h: fcQPdfSearchResult_new())
  tmp
proc create*(T: type gen_qpdfsearchresult_types.QPdfSearchResult,
    param1: gen_qpdfsearchresult_types.QPdfSearchResult): gen_qpdfsearchresult_types.QPdfSearchResult =
  let tmp = gen_qpdfsearchresult_types.QPdfSearchResult(h: fcQPdfSearchResult_new2(param1.h))
  tmp
proc staticMetaObject*(_: type gen_qpdfsearchresult_types.QPdfSearchResult): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQPdfSearchResult_staticMetaObject())
proc delete*(self: gen_qpdfsearchresult_types.QPdfSearchResult) =
  fcQPdfSearchResult_delete(self.h)
