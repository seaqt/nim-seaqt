import ./Qt5Gui_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config --cflags Qt5Gui")  & " -fPIC"
{.compile("gen_qtextdocumentfragment.cpp", cflags).}


import ./gen_qtextdocumentfragment_types
export gen_qtextdocumentfragment_types

import
  ./gen_qtextcursor_types,
  ./gen_qtextdocument_types
export
  gen_qtextcursor_types,
  gen_qtextdocument_types

type cQTextDocumentFragment*{.exportc: "QTextDocumentFragment", incompleteStruct.} = object

proc fcQTextDocumentFragment_new(): ptr cQTextDocumentFragment {.importc: "QTextDocumentFragment_new".}
proc fcQTextDocumentFragment_new2(document: pointer): ptr cQTextDocumentFragment {.importc: "QTextDocumentFragment_new2".}
proc fcQTextDocumentFragment_new3(range: pointer): ptr cQTextDocumentFragment {.importc: "QTextDocumentFragment_new3".}
proc fcQTextDocumentFragment_new4(rhs: pointer): ptr cQTextDocumentFragment {.importc: "QTextDocumentFragment_new4".}
proc fcQTextDocumentFragment_operatorAssign(self: pointer, rhs: pointer): void {.importc: "QTextDocumentFragment_operatorAssign".}
proc fcQTextDocumentFragment_isEmpty(self: pointer, ): bool {.importc: "QTextDocumentFragment_isEmpty".}
proc fcQTextDocumentFragment_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QTextDocumentFragment_toPlainText".}
proc fcQTextDocumentFragment_toHtml(self: pointer, ): struct_miqt_string {.importc: "QTextDocumentFragment_toHtml".}
proc fcQTextDocumentFragment_fromPlainText(plainText: struct_miqt_string): pointer {.importc: "QTextDocumentFragment_fromPlainText".}
proc fcQTextDocumentFragment_fromHtml(html: struct_miqt_string): pointer {.importc: "QTextDocumentFragment_fromHtml".}
proc fcQTextDocumentFragment_fromHtml2(html: struct_miqt_string, resourceProvider: pointer): pointer {.importc: "QTextDocumentFragment_fromHtml2".}
proc fcQTextDocumentFragment_toHtml1(self: pointer, encoding: struct_miqt_string): struct_miqt_string {.importc: "QTextDocumentFragment_toHtml1".}
proc fcQTextDocumentFragment_delete(self: pointer) {.importc: "QTextDocumentFragment_delete".}


func init*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment, h: ptr cQTextDocumentFragment): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  T(h: h)
proc create*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment, ): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment.init(fcQTextDocumentFragment_new())

proc create*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment, document: gen_qtextdocument_types.QTextDocument): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment.init(fcQTextDocumentFragment_new2(document.h))

proc create*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment, range: gen_qtextcursor_types.QTextCursor): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment.init(fcQTextDocumentFragment_new3(range.h))

proc create*(T: type gen_qtextdocumentfragment_types.QTextDocumentFragment, rhs: gen_qtextdocumentfragment_types.QTextDocumentFragment): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment.init(fcQTextDocumentFragment_new4(rhs.h))

proc operatorAssign*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment, rhs: gen_qtextdocumentfragment_types.QTextDocumentFragment): void =
  fcQTextDocumentFragment_operatorAssign(self.h, rhs.h)

proc isEmpty*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment, ): bool =
  fcQTextDocumentFragment_isEmpty(self.h)

proc toPlainText*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment, ): string =
  let v_ms = fcQTextDocumentFragment_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toHtml*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment, ): string =
  let v_ms = fcQTextDocumentFragment_toHtml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromPlainText*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, plainText: string): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromPlainText(struct_miqt_string(data: plainText, len: csize_t(len(plainText)))))

proc fromHtml*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, html: string): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromHtml(struct_miqt_string(data: html, len: csize_t(len(html)))))

proc fromHtml*(_: type gen_qtextdocumentfragment_types.QTextDocumentFragment, html: string, resourceProvider: gen_qtextdocument_types.QTextDocument): gen_qtextdocumentfragment_types.QTextDocumentFragment =
  gen_qtextdocumentfragment_types.QTextDocumentFragment(h: fcQTextDocumentFragment_fromHtml2(struct_miqt_string(data: html, len: csize_t(len(html))), resourceProvider.h))

proc toHtml*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment, encoding: seq[byte]): string =
  let v_ms = fcQTextDocumentFragment_toHtml1(self.h, struct_miqt_string(data: cast[cstring](if len(encoding) == 0: nil else: unsafeAddr encoding[0]), len: csize_t(len(encoding))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qtextdocumentfragment_types.QTextDocumentFragment) =
  fcQTextDocumentFragment_delete(self.h)
