import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qbytearraymatcher.cpp", cflags).}


import ./gen_qbytearraymatcher_types
export gen_qbytearraymatcher_types


type cQByteArrayMatcher*{.exportc: "QByteArrayMatcher", incompleteStruct.} = object
type cQStaticByteArrayMatcherBase*{.exportc: "QStaticByteArrayMatcherBase", incompleteStruct.} = object

proc fcQByteArrayMatcher_operatorAssign(self: pointer, other: pointer): void {.importc: "QByteArrayMatcher_operatorAssign".}
proc fcQByteArrayMatcher_setPattern(self: pointer, pattern: struct_miqt_string): void {.importc: "QByteArrayMatcher_setPattern".}
proc fcQByteArrayMatcher_indexIn(self: pointer, ba: struct_miqt_string): cint {.importc: "QByteArrayMatcher_indexIn".}
proc fcQByteArrayMatcher_indexIn2(self: pointer, str: cstring, len: cint): cint {.importc: "QByteArrayMatcher_indexIn2".}
proc fcQByteArrayMatcher_pattern(self: pointer, ): struct_miqt_string {.importc: "QByteArrayMatcher_pattern".}
proc fcQByteArrayMatcher_indexIn22(self: pointer, ba: struct_miqt_string, fromVal: cint): cint {.importc: "QByteArrayMatcher_indexIn22".}
proc fcQByteArrayMatcher_indexIn3(self: pointer, str: cstring, len: cint, fromVal: cint): cint {.importc: "QByteArrayMatcher_indexIn3".}
proc fcQByteArrayMatcher_new(): ptr cQByteArrayMatcher {.importc: "QByteArrayMatcher_new".}
proc fcQByteArrayMatcher_new2(pattern: struct_miqt_string): ptr cQByteArrayMatcher {.importc: "QByteArrayMatcher_new2".}
proc fcQByteArrayMatcher_new3(pattern: cstring, length: cint): ptr cQByteArrayMatcher {.importc: "QByteArrayMatcher_new3".}
proc fcQByteArrayMatcher_new4(other: pointer): ptr cQByteArrayMatcher {.importc: "QByteArrayMatcher_new4".}
proc fcQByteArrayMatcher_delete(self: pointer) {.importc: "QByteArrayMatcher_delete".}
proc fcQStaticByteArrayMatcherBase_protectedbase_indexOfIn(self: pointer, needle: cstring, nlen: cuint, haystack: cstring, hlen: cint, fromVal: cint): cint {.importc: "QStaticByteArrayMatcherBase_protectedbase_indexOfIn".}
proc fcQStaticByteArrayMatcherBase_delete(self: pointer) {.importc: "QStaticByteArrayMatcherBase_delete".}

proc operatorAssign*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, other: gen_qbytearraymatcher_types.QByteArrayMatcher): void =
  fcQByteArrayMatcher_operatorAssign(self.h, other.h)

proc setPattern*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, pattern: seq[byte]): void =
  fcQByteArrayMatcher_setPattern(self.h, struct_miqt_string(data: cast[cstring](if len(pattern) == 0: nil else: unsafeAddr pattern[0]), len: csize_t(len(pattern))))

proc indexIn*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, ba: seq[byte]): cint =
  fcQByteArrayMatcher_indexIn(self.h, struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))))

proc indexIn*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, str: cstring, len: cint): cint =
  fcQByteArrayMatcher_indexIn2(self.h, str, len)

proc pattern*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, ): seq[byte] =
  var v_bytearray = fcQByteArrayMatcher_pattern(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc indexIn*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, ba: seq[byte], fromVal: cint): cint =
  fcQByteArrayMatcher_indexIn22(self.h, struct_miqt_string(data: cast[cstring](if len(ba) == 0: nil else: unsafeAddr ba[0]), len: csize_t(len(ba))), fromVal)

proc indexIn*(self: gen_qbytearraymatcher_types.QByteArrayMatcher, str: cstring, len: cint, fromVal: cint): cint =
  fcQByteArrayMatcher_indexIn3(self.h, str, len, fromVal)

proc create*(T: type gen_qbytearraymatcher_types.QByteArrayMatcher): gen_qbytearraymatcher_types.QByteArrayMatcher =
  gen_qbytearraymatcher_types.QByteArrayMatcher(h: fcQByteArrayMatcher_new())

proc create*(T: type gen_qbytearraymatcher_types.QByteArrayMatcher,
    pattern: seq[byte]): gen_qbytearraymatcher_types.QByteArrayMatcher =
  gen_qbytearraymatcher_types.QByteArrayMatcher(h: fcQByteArrayMatcher_new2(struct_miqt_string(data: cast[cstring](if len(pattern) == 0: nil else: unsafeAddr pattern[0]), len: csize_t(len(pattern)))))

proc create*(T: type gen_qbytearraymatcher_types.QByteArrayMatcher,
    pattern: cstring, length: cint): gen_qbytearraymatcher_types.QByteArrayMatcher =
  gen_qbytearraymatcher_types.QByteArrayMatcher(h: fcQByteArrayMatcher_new3(pattern, length))

proc create*(T: type gen_qbytearraymatcher_types.QByteArrayMatcher,
    other: gen_qbytearraymatcher_types.QByteArrayMatcher): gen_qbytearraymatcher_types.QByteArrayMatcher =
  gen_qbytearraymatcher_types.QByteArrayMatcher(h: fcQByteArrayMatcher_new4(other.h))

proc delete*(self: gen_qbytearraymatcher_types.QByteArrayMatcher) =
  fcQByteArrayMatcher_delete(self.h)
proc indexOfIn*(self: gen_qbytearraymatcher_types.QStaticByteArrayMatcherBase, needle: cstring, nlen: cuint, haystack: cstring, hlen: cint, fromVal: cint): cint =
  fcQStaticByteArrayMatcherBase_protectedbase_indexOfIn(self.h, needle, nlen, haystack, hlen, fromVal)

proc delete*(self: gen_qbytearraymatcher_types.QStaticByteArrayMatcherBase) =
  fcQStaticByteArrayMatcherBase_delete(self.h)
