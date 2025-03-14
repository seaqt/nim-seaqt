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


{.compile("gen_qstringtokenizer.cpp", QtCoreCFlags).}


import ./gen_qstringtokenizer_types
export gen_qstringtokenizer_types


type cQStringTokenizerBaseBase*{.exportc: "QStringTokenizerBaseBase", incompleteStruct.} = object

proc fcQStringTokenizerBaseBase_new(param1: pointer): ptr cQStringTokenizerBaseBase {.importc: "QStringTokenizerBaseBase_new".}

proc create*(T: type gen_qstringtokenizer_types.QStringTokenizerBaseBase,
    param1: gen_qstringtokenizer_types.QStringTokenizerBaseBase): gen_qstringtokenizer_types.QStringTokenizerBaseBase =
  gen_qstringtokenizer_types.QStringTokenizerBaseBase(h: fcQStringTokenizerBaseBase_new(param1.h), owned: true)

