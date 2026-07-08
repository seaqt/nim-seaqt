import ./qtgui_pkg

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


import ./gen_qtextdocumentfragment_types
export gen_qtextdocumentfragment_types

import
  ./gen_qtextcursor_types,
  ./gen_qtextdocument_types
export
  gen_qtextcursor_types,
  gen_qtextdocument_types

type cQTextDocumentFragment*{.exportc: "QTextDocumentFragment", incompleteStruct.} = object

proc fcQTextDocumentFragment_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QTextDocumentFragment_operatorAssign".}
proc fcQTextDocumentFragment_isEmpty(self: pointer): bool {.importc: "QTextDocumentFragment_isEmpty".}
proc fcQTextDocumentFragment_toPlainText(self: pointer): struct_seaqt_string {.importc: "QTextDocumentFragment_toPlainText".}
proc fcQTextDocumentFragment_toHtml(self: pointer): struct_seaqt_string {.importc: "QTextDocumentFragment_toHtml".}
proc fcQTextDocumentFragment_fromPlainText(plainText: struct_seaqt_string): pointer {.importc: "QTextDocumentFragment_fromPlainText".}
proc fcQTextDocumentFragment_fromHtmlHtml(html: struct_seaqt_string): pointer {.importc: "QTextDocumentFragment_fromHtml_html".}
proc fcQTextDocumentFragment_fromHtmlHtmlResourceProvider(html: struct_seaqt_string, resourceProvider: pointer): pointer {.importc: "QTextDocumentFragment_fromHtml_html_resourceProvider".}
proc fcQTextDocumentFragment_toHtmlEncoding(self: pointer, encoding: struct_seaqt_string): struct_seaqt_string {.importc: "QTextDocumentFragment_toHtml_encoding".}
proc fcQTextDocumentFragment_new(): ptr cQTextDocumentFragment {.importc: "QTextDocumentFragment_new".}
proc fcQTextDocumentFragment_new2(document: pointer): ptr cQTextDocumentFragment {.importc: "QTextDocumentFragment_new_document".}
proc fcQTextDocumentFragment_new3(range: pointer): ptr cQTextDocumentFragment {.importc: "QTextDocumentFragment_new_range".}
proc fcQTextDocumentFragment_new4(fromVal: pointer): ptr cQTextDocumentFragment {.importc: "QTextDocumentFragment_new_from".}

proc operatorAssign*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment, fromVal: gen_qtextdocumentfragment_types.QTextDocumentFragment): void =
  fcQTextDocumentFragment_operatorAssign(self.h, fromVal.h)

proc isEmpty*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment): bool =
  fcQTextDocumentFragment_isEmpty(self.h)

proc toPlainText*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment): string =
  let v_ms = fcQTextDocumentFragment_toPlainText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment): string =
  let v_ms = fcQTextDocumentFragment_toHtml(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromPlainText*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, plainText: openArray[char]): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromPlainText(struct_seaqt_string(data: if len(plainText) > 0: addr plainText[0] else: nil, len: csize_t(len(plainText)))), owned: true)

proc fromHtml*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, html: openArray[char]): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromHtmlHtml(struct_seaqt_string(data: if len(html) > 0: addr html[0] else: nil, len: csize_t(len(html)))), owned: true)

proc fromHtml*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, html: openArray[char], resourceProvider: gen_qtextdocument_types.QTextDocument): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromHtmlHtmlResourceProvider(struct_seaqt_string(data: if len(html) > 0: addr html[0] else: nil, len: csize_t(len(html))), resourceProvider.h), owned: true)

proc toHtml*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment, encoding: openArray[byte]): string =
  let v_ms = fcQTextDocumentFragment_toHtmlEncoding(self.h, struct_seaqt_string(data: if len(encoding) > 0: addr encoding[0] else: nil, len: csize_t(len(encoding))))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc create*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  let tmp = gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_new(), owned: true)
  tmp
proc create*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment,
    document: gen_qtextdocument_types.QTextDocument): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  let tmp = gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_new2(document.h), owned: true)
  tmp
proc create*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment,
    range: gen_qtextcursor_types.QTextCursor): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  let tmp = gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_new3(range.h), owned: true)
  tmp
proc create*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment,
    fromVal: gen_qtextdocumentfragment_types.QTextDocumentFragment): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  let tmp = gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_new4(fromVal.h), owned: true)
  tmp
