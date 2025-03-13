import ./Qt6Network_libs

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


import ./gen_qsslellipticcurve_types
export gen_qsslellipticcurve_types


type cQSslEllipticCurve*{.exportc: "QSslEllipticCurve", incompleteStruct.} = object

proc fcQSslEllipticCurve_fromShortName(name: struct_miqt_string): pointer {.importc: "QSslEllipticCurve_fromShortName".}
proc fcQSslEllipticCurve_fromLongName(name: struct_miqt_string): pointer {.importc: "QSslEllipticCurve_fromLongName".}
proc fcQSslEllipticCurve_shortName(self: pointer): struct_miqt_string {.importc: "QSslEllipticCurve_shortName".}
proc fcQSslEllipticCurve_longName(self: pointer): struct_miqt_string {.importc: "QSslEllipticCurve_longName".}
proc fcQSslEllipticCurve_isValid(self: pointer): bool {.importc: "QSslEllipticCurve_isValid".}
proc fcQSslEllipticCurve_isTlsNamedCurve(self: pointer): bool {.importc: "QSslEllipticCurve_isTlsNamedCurve".}
proc fcQSslEllipticCurve_new(): ptr cQSslEllipticCurve {.importc: "QSslEllipticCurve_new".}
proc fcQSslEllipticCurve_new2(param1: pointer): ptr cQSslEllipticCurve {.importc: "QSslEllipticCurve_new2".}

proc fromShortName*(_: type gen_qsslellipticcurve_types.QSslEllipticCurve, name: openArray[char]): gen_qsslellipticcurve_types.QSslEllipticCurve =
  gen_qsslellipticcurve_types.QSslEllipticCurve(h: fcQSslEllipticCurve_fromShortName(struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc fromLongName*(_: type gen_qsslellipticcurve_types.QSslEllipticCurve, name: openArray[char]): gen_qsslellipticcurve_types.QSslEllipticCurve =
  gen_qsslellipticcurve_types.QSslEllipticCurve(h: fcQSslEllipticCurve_fromLongName(struct_miqt_string(data: if len(name) > 0: addr name[0] else: nil, len: csize_t(len(name)))), owned: true)

proc shortName*(self: gen_qsslellipticcurve_types.QSslEllipticCurve): string =
  let v_ms = fcQSslEllipticCurve_shortName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc longName*(self: gen_qsslellipticcurve_types.QSslEllipticCurve): string =
  let v_ms = fcQSslEllipticCurve_longName(self.h)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: gen_qsslellipticcurve_types.QSslEllipticCurve): bool =
  fcQSslEllipticCurve_isValid(self.h)

proc isTlsNamedCurve*(self: gen_qsslellipticcurve_types.QSslEllipticCurve): bool =
  fcQSslEllipticCurve_isTlsNamedCurve(self.h)

proc create*(T: type gen_qsslellipticcurve_types.QSslEllipticCurve): gen_qsslellipticcurve_types.QSslEllipticCurve =
  gen_qsslellipticcurve_types.QSslEllipticCurve(h: fcQSslEllipticCurve_new(), owned: true)

proc create*(T: type gen_qsslellipticcurve_types.QSslEllipticCurve,
    param1: gen_qsslellipticcurve_types.QSslEllipticCurve): gen_qsslellipticcurve_types.QSslEllipticCurve =
  gen_qsslellipticcurve_types.QSslEllipticCurve(h: fcQSslEllipticCurve_new2(param1.h), owned: true)

