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
proc fcQTextDocumentFragment_toRawText(self: pointer): struct_seaqt_string {.importc: "QTextDocumentFragment_toRawText".}
proc fcQTextDocumentFragment_toHtml(self: pointer): struct_seaqt_string {.importc: "QTextDocumentFragment_toHtml".}
proc fcQTextDocumentFragment_toMarkdown(self: pointer): struct_seaqt_string {.importc: "QTextDocumentFragment_toMarkdown".}
proc fcQTextDocumentFragment_fromPlainText(plainText: struct_seaqt_string): pointer {.importc: "QTextDocumentFragment_fromPlainText".}
proc fcQTextDocumentFragment_fromHtmlHtml(html: struct_seaqt_string): pointer {.importc: "QTextDocumentFragment_fromHtml_html".}
proc fcQTextDocumentFragment_fromMarkdownMarkdown(markdown: struct_seaqt_string): pointer {.importc: "QTextDocumentFragment_fromMarkdown_markdown".}
proc fcQTextDocumentFragment_toMarkdownFeatures(self: pointer, features: cint): struct_seaqt_string {.importc: "QTextDocumentFragment_toMarkdown_features".}
proc fcQTextDocumentFragment_fromHtmlHtmlResourceProvider(html: struct_seaqt_string, resourceProvider: pointer): pointer {.importc: "QTextDocumentFragment_fromHtml_html_resourceProvider".}
proc fcQTextDocumentFragment_fromMarkdownMarkdownFeatures(markdown: struct_seaqt_string, features: cint): pointer {.importc: "QTextDocumentFragment_fromMarkdown_markdown_features".}
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

proc toRawText*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment): string =
  let v_ms = fcQTextDocumentFragment_toRawText(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment): string =
  let v_ms = fcQTextDocumentFragment_toHtml(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc toMarkdown*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment): string =
  let v_ms = fcQTextDocumentFragment_toMarkdown(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromPlainText*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, plainText: openArray[char]): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromPlainText(struct_seaqt_string(data: if len(plainText) > 0: addr plainText[0] else: nil, len: csize_t(len(plainText)))), owned: true)

proc fromHtml*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, html: openArray[char]): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromHtmlHtml(struct_seaqt_string(data: if len(html) > 0: addr html[0] else: nil, len: csize_t(len(html)))), owned: true)

proc fromMarkdown*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, markdown: openArray[char]): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromMarkdownMarkdown(struct_seaqt_string(data: if len(markdown) > 0: addr markdown[0] else: nil, len: csize_t(len(markdown)))), owned: true)

proc toMarkdown*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment, features: cint): string =
  let v_ms = fcQTextDocumentFragment_toMarkdownFeatures(self.h, cint(features))
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc fromHtml*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, html: openArray[char], resourceProvider: gen_qtextdocument_types.QTextDocument): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromHtmlHtmlResourceProvider(struct_seaqt_string(data: if len(html) > 0: addr html[0] else: nil, len: csize_t(len(html))), resourceProvider.h), owned: true)

proc fromMarkdown*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, markdown: openArray[char], features: cint): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromMarkdownMarkdownFeatures(struct_seaqt_string(data: if len(markdown) > 0: addr markdown[0] else: nil, len: csize_t(len(markdown))), cint(features)), owned: true)

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
