import ./qtwebenginecore_pkg

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


import ./gen_qwebengineframe_types
export gen_qwebengineframe_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qsize_types,
  gen_qurl_types

type cQWebEngineFrame*{.exportc: "QWebEngineFrame", incompleteStruct.} = object

proc fcQWebEngineFrame_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QWebEngineFrame_operatorAssign".}
proc fcQWebEngineFrame_isValid(self: pointer): bool {.importc: "QWebEngineFrame_isValid".}
proc fcQWebEngineFrame_name(self: pointer): struct_seaqt_string {.importc: "QWebEngineFrame_name".}
proc fcQWebEngineFrame_htmlName(self: pointer): struct_seaqt_string {.importc: "QWebEngineFrame_htmlName".}
proc fcQWebEngineFrame_children(self: pointer): struct_seaqt_array {.importc: "QWebEngineFrame_children".}
proc fcQWebEngineFrame_url(self: pointer): pointer {.importc: "QWebEngineFrame_url".}
proc fcQWebEngineFrame_size(self: pointer): pointer {.importc: "QWebEngineFrame_size".}
proc fcQWebEngineFrame_isMainFrame(self: pointer): bool {.importc: "QWebEngineFrame_isMainFrame".}
proc fcQWebEngineFrame_runJavaScriptScript(self: pointer, script: struct_seaqt_string): void {.importc: "QWebEngineFrame_runJavaScript_script".}
proc fcQWebEngineFrame_printToPdfFilePath(self: pointer, filePath: struct_seaqt_string): void {.importc: "QWebEngineFrame_printToPdf_filePath".}
proc fcQWebEngineFrame_runJavaScriptScriptWorldId(self: pointer, script: struct_seaqt_string, worldId: cuint): void {.importc: "QWebEngineFrame_runJavaScript_script_worldId".}
proc fcQWebEngineFrame_new(): ptr cQWebEngineFrame {.importc: "QWebEngineFrame_new".}
proc fcQWebEngineFrame_new2(fromVal: pointer): ptr cQWebEngineFrame {.importc: "QWebEngineFrame_new_from".}
proc fcQWebEngineFrame_staticMetaObject(): pointer {.importc: "QWebEngineFrame_staticMetaObject".}

proc operatorAssign*(self: gen_qwebengineframe_types.QWebEngineFrame, fromVal: gen_qwebengineframe_types.QWebEngineFrame): void =
  fcQWebEngineFrame_operatorAssign(self.h, fromVal.h)

proc isValid*(self: gen_qwebengineframe_types.QWebEngineFrame): bool =
  fcQWebEngineFrame_isValid(self.h)

proc name*(self: gen_qwebengineframe_types.QWebEngineFrame): string =
  let v_ms = fcQWebEngineFrame_name(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc htmlName*(self: gen_qwebengineframe_types.QWebEngineFrame): string =
  let v_ms = fcQWebEngineFrame_htmlName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc children*(self: gen_qwebengineframe_types.QWebEngineFrame): seq[gen_qwebengineframe_types.QWebEngineFrame] =
  var v_ma = fcQWebEngineFrame_children(self.h)
  var vx_ret = newSeq[gen_qwebengineframe_types.QWebEngineFrame](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qwebengineframe_types.QWebEngineFrame(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc url*(self: gen_qwebengineframe_types.QWebEngineFrame): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineFrame_url(self.h), owned: true)

proc size*(self: gen_qwebengineframe_types.QWebEngineFrame): gen_qsize_types.QSizeF =
  gen_qsize_types.QSizeF(h: fcQWebEngineFrame_size(self.h), owned: true)

proc isMainFrame*(self: gen_qwebengineframe_types.QWebEngineFrame): bool =
  fcQWebEngineFrame_isMainFrame(self.h)

proc runJavaScript*(self: gen_qwebengineframe_types.QWebEngineFrame, script: openArray[char]): void =
  fcQWebEngineFrame_runJavaScriptScript(self.h, struct_seaqt_string(data: if len(script) > 0: addr script[0] else: nil, len: csize_t(len(script))))

proc printToPdf*(self: gen_qwebengineframe_types.QWebEngineFrame, filePath: openArray[char]): void =
  fcQWebEngineFrame_printToPdfFilePath(self.h, struct_seaqt_string(data: if len(filePath) > 0: addr filePath[0] else: nil, len: csize_t(len(filePath))))

proc runJavaScript*(self: gen_qwebengineframe_types.QWebEngineFrame, script: openArray[char], worldId: cuint): void =
  fcQWebEngineFrame_runJavaScriptScriptWorldId(self.h, struct_seaqt_string(data: if len(script) > 0: addr script[0] else: nil, len: csize_t(len(script))), worldId)

proc create*(T: type gen_qwebengineframe_types.QWebEngineFrame): gen_qwebengineframe_types.QWebEngineFrame =
  let tmp = gen_qwebengineframe_types.QWebEngineFrame(h: fcQWebEngineFrame_new(), owned: true)
  tmp
proc create*(T: type gen_qwebengineframe_types.QWebEngineFrame,
    fromVal: gen_qwebengineframe_types.QWebEngineFrame): gen_qwebengineframe_types.QWebEngineFrame =
  let tmp = gen_qwebengineframe_types.QWebEngineFrame(h: fcQWebEngineFrame_new2(fromVal.h), owned: true)
  tmp
proc staticMetaObject*(_: type gen_qwebengineframe_types.QWebEngineFrame): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineFrame_staticMetaObject())
