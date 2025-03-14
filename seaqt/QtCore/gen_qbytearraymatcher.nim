import ./qtcore_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_miqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newString(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


import ./gen_qbytearraymatcher_types
export gen_qbytearraymatcher_types


type cQByteArrayMatcher*{.exportc: "QByteArrayMatcher", incompleteStruct.} = object
type cQStaticByteArrayMatcherBase*{.exportc: "QStaticByteArrayMatcherBase", incompleteStruct.} = object

proc fcQByteArrayMatcher_operatorAssign(self: pointer, other: pointer): void {.importc: "QByteArrayMatcher_operatorAssign".}
proc fcQByteArrayMatcher_setPattern(self: pointer, pattern: struct_miqt_string): void {.importc: "QByteArrayMatcher_setPattern".}
proc fcQByteArrayMatcher_indexIn(self: pointer, ba: struct_miqt_string): cint {.importc: "QByteArrayMatcher_indexIn".}
proc fcQByteArrayMatcher_indexIn2(self: pointer, str: cstring, len: cint): cint {.importc: "QByteArrayMatcher_indexIn2".}
proc fcQByteArrayMatcher_pattern(self: pointer): struct_miqt_string {.importc: "QByteArrayMatcher_pattern".}
proc fcQByteArrayMatcher_indexIn22(self: pointer, ba: struct_miqt_string, fromVal: cint): cint {.importc: "QByteArrayMatcher_indexIn22".}
proc fcQByteArrayMatcher_indexIn3(self: pointer, str: cstring, len: cint, fromVal: cint): cint {.importc: "QByteArrayMatcher_indexIn3".}
proc fcQByteArrayMatcher_new(): ptr cQByteArrayMatcher {.importc: "QByteArrayMatcher_new".}
proc fcQByteArrayMatcher_new2(pattern: struct_miqt_string): ptr cQByteArrayMatcher {.importc: "QByteArrayMatcher_new2".}
proc fcQByteArrayMatcher_new3(pattern: cstring, length: cint): ptr cQByteArrayMatcher {.importc: "QByteArrayMatcher_new3".}
proc fcQByteArrayMatcher_new4(other: pointer): ptr cQByteArrayMatcher {.importc: "QByteArrayMatcher_new4".}
proc fcQStaticByteArrayMatcherBase_protectedbase_indexOfIn(self: pointer, needle: cstring, nlen: cuint, haystack: cstring, hlen: cint, fromVal: cint): cint {.importc: "QStaticByteArrayMatcherBase_protectedbase_indexOfIn".}

proc operatorAssign*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, other: gen_qbytearraymatcher_types.QByteArrayMatcher): void =
  fcQByteArrayMatcher_operatorAssign(self.h, other.h)

proc setPattern*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, pattern: openArray[byte]): void =
  fcQByteArrayMatcher_setPattern(self.h, struct_miqt_string(data: cast[cstring](if len(pattern) == 0: nil else: unsafeAddr pattern[0]), len: csize_t(len(pattern))))

proc indexIn*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, ba: openArray[byte]): cint =
  fcQByteArrayMatcher_indexIn(self.h, struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))))

proc indexIn*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, str: cstring, len: cint): cint =
  fcQByteArrayMatcher_indexIn2(self.h, str, len)

proc pattern*(self: gen_qbytearraymatcher_types.QByteArrayMatcher): seq[byte] =
  var v_bytearray = fcQByteArrayMatcher_pattern(self.h)
  var vx_ret = @(toOpenArray(cast[ptr UncheckedArray[byte]](v_bytearray.data), 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc indexIn*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, ba: openArray[byte], fromVal: cint): cint =
  fcQByteArrayMatcher_indexIn22(self.h, struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))), fromVal)

proc indexIn*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, str: cstring, len: cint, fromVal: cint): cint =
  fcQByteArrayMatcher_indexIn3(self.h, str, len, fromVal)

proc create*(T: type gen_qbytearraymatcher_types.QByteArrayMatcher): gen_qbytearraymatcher_types.QByteArrayMatcher =
  gen_qbytearraymatcher_types.QByteArrayMatcher(h: fcQByteArrayMatcher_new(), owned: true)

proc create*(T: type gen_qbytearraymatcher_types.QByteArrayMatcher,
    pattern: openArray[byte]): gen_qbytearraymatcher_types.QByteArrayMatcher =
  gen_qbytearraymatcher_types.QByteArrayMatcher(h: fcQByteArrayMatcher_new2(struct_miqt_string(data: cast[cstring](if len(pattern) == 0: nil else: unsafeAddr pattern[0]), len: csize_t(len(pattern)))), owned: true)

proc create*(T: type gen_qbytearraymatcher_types.QByteArrayMatcher,
    pattern: cstring, length: cint): gen_qbytearraymatcher_types.QByteArrayMatcher =
  gen_qbytearraymatcher_types.QByteArrayMatcher(h: fcQByteArrayMatcher_new3(pattern, length), owned: true)

proc create*(T: type gen_qbytearraymatcher_types.QByteArrayMatcher,
    other: gen_qbytearraymatcher_types.QByteArrayMatcher): gen_qbytearraymatcher_types.QByteArrayMatcher =
  gen_qbytearraymatcher_types.QByteArrayMatcher(h: fcQByteArrayMatcher_new4(other.h), owned: true)

proc indexOfIn*(self: gen_qbytearraymatcher_types.QStaticByteArrayMatcherBase, needle: cstring, nlen: cuint, haystack: cstring, hlen: cint, fromVal: cint): cint =
  fcQStaticByteArrayMatcherBase_protectedbase_indexOfIn(self.h, needle, nlen, haystack, hlen, fromVal)

