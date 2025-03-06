import ./Qt6Core_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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

const cflags = gorge("pkg-config --cflags Qt6Core")  & " -fPIC"
{.compile("gen_qanystringview.cpp", cflags).}


import ./gen_qanystringview_types
export gen_qanystringview_types

import
  ./gen_qchar_types
export
  gen_qchar_types

type cQAnyStringView*{.exportc: "QAnyStringView", incompleteStruct.} = object

proc fcQAnyStringView_toString(self: pointer, ): struct_miqt_string {.importc: "QAnyStringView_toString".}
proc fcQAnyStringView_size(self: pointer, ): int64 {.importc: "QAnyStringView_size".}
proc fcQAnyStringView_data(self: pointer, ): pointer {.importc: "QAnyStringView_data".}
proc fcQAnyStringView_compare(lhs: pointer, rhs: pointer): cint {.importc: "QAnyStringView_compare".}
proc fcQAnyStringView_equal(lhs: pointer, rhs: pointer): bool {.importc: "QAnyStringView_equal".}
proc fcQAnyStringView_front(self: pointer, ): pointer {.importc: "QAnyStringView_front".}
proc fcQAnyStringView_back(self: pointer, ): pointer {.importc: "QAnyStringView_back".}
proc fcQAnyStringView_empty(self: pointer, ): bool {.importc: "QAnyStringView_empty".}
proc fcQAnyStringView_sizeBytes(self: pointer, ): int64 {.importc: "QAnyStringView_sizeBytes".}
proc fcQAnyStringView_isNull(self: pointer, ): bool {.importc: "QAnyStringView_isNull".}
proc fcQAnyStringView_isEmpty(self: pointer, ): bool {.importc: "QAnyStringView_isEmpty".}
proc fcQAnyStringView_length(self: pointer, ): int64 {.importc: "QAnyStringView_length".}
proc fcQAnyStringView_compare3(lhs: pointer, rhs: pointer, cs: cint): cint {.importc: "QAnyStringView_compare3".}
proc fcQAnyStringView_new(): ptr cQAnyStringView {.importc: "QAnyStringView_new".}
proc fcQAnyStringView_new2(str: struct_miqt_string): ptr cQAnyStringView {.importc: "QAnyStringView_new2".}
proc fcQAnyStringView_new3(str: struct_miqt_string): ptr cQAnyStringView {.importc: "QAnyStringView_new3".}
proc fcQAnyStringView_new4(c: pointer): ptr cQAnyStringView {.importc: "QAnyStringView_new4".}
proc fcQAnyStringView_new5(param1: pointer): ptr cQAnyStringView {.importc: "QAnyStringView_new5".}
proc fcQAnyStringView_delete(self: pointer) {.importc: "QAnyStringView_delete".}

proc toString*(self: gen_qanystringview_types.QAnyStringView, ): string =
  let v_ms = fcQAnyStringView_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc size*(self: gen_qanystringview_types.QAnyStringView, ): int64 =
  fcQAnyStringView_size(self.h)

proc data*(self: gen_qanystringview_types.QAnyStringView, ): pointer =
  fcQAnyStringView_data(self.h)

proc compare*(_: type gen_qanystringview_types.QAnyStringView, lhs: gen_qanystringview_types.QAnyStringView, rhs: gen_qanystringview_types.QAnyStringView): cint =
  fcQAnyStringView_compare(lhs.h, rhs.h)

proc equal*(_: type gen_qanystringview_types.QAnyStringView, lhs: gen_qanystringview_types.QAnyStringView, rhs: gen_qanystringview_types.QAnyStringView): bool =
  fcQAnyStringView_equal(lhs.h, rhs.h)

proc front*(self: gen_qanystringview_types.QAnyStringView, ): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQAnyStringView_front(self.h))

proc back*(self: gen_qanystringview_types.QAnyStringView, ): gen_qchar_types.QChar =
  gen_qchar_types.QChar(h: fcQAnyStringView_back(self.h))

proc empty*(self: gen_qanystringview_types.QAnyStringView, ): bool =
  fcQAnyStringView_empty(self.h)

proc sizeBytes*(self: gen_qanystringview_types.QAnyStringView, ): int64 =
  fcQAnyStringView_sizeBytes(self.h)

proc isNull*(self: gen_qanystringview_types.QAnyStringView, ): bool =
  fcQAnyStringView_isNull(self.h)

proc isEmpty*(self: gen_qanystringview_types.QAnyStringView, ): bool =
  fcQAnyStringView_isEmpty(self.h)

proc length*(self: gen_qanystringview_types.QAnyStringView, ): int64 =
  fcQAnyStringView_length(self.h)

proc compare*(_: type gen_qanystringview_types.QAnyStringView, lhs: gen_qanystringview_types.QAnyStringView, rhs: gen_qanystringview_types.QAnyStringView, cs: cint): cint =
  fcQAnyStringView_compare3(lhs.h, rhs.h, cint(cs))

proc create*(T: type gen_qanystringview_types.QAnyStringView): gen_qanystringview_types.QAnyStringView =
  gen_qanystringview_types.QAnyStringView(h: fcQAnyStringView_new())

proc create*(T: type gen_qanystringview_types.QAnyStringView,
    str: seq[byte]): gen_qanystringview_types.QAnyStringView =
  gen_qanystringview_types.QAnyStringView(h: fcQAnyStringView_new2(struct_miqt_string(data: cast[cstring](if len(str) == 0: nil else: unsafeAddr str[0]), len: csize_t(len(str)))))

proc create*(T: type gen_qanystringview_types.QAnyStringView,
    str: string): gen_qanystringview_types.QAnyStringView =
  gen_qanystringview_types.QAnyStringView(h: fcQAnyStringView_new3(struct_miqt_string(data: str, len: csize_t(len(str)))))

proc create*(T: type gen_qanystringview_types.QAnyStringView,
    c: gen_qchar_types.QChar): gen_qanystringview_types.QAnyStringView =
  gen_qanystringview_types.QAnyStringView(h: fcQAnyStringView_new4(c.h))

proc create*(T: type gen_qanystringview_types.QAnyStringView,
    param1: gen_qanystringview_types.QAnyStringView): gen_qanystringview_types.QAnyStringView =
  gen_qanystringview_types.QAnyStringView(h: fcQAnyStringView_new5(param1.h))

proc delete*(self: gen_qanystringview_types.QAnyStringView) =
  fcQAnyStringView_delete(self.h)
