import ./Qt5WebKit_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebKit")  & " -fPIC"
{.compile("gen_qwebdatabase.cpp", cflags).}


import ./gen_qwebdatabase_types
export gen_qwebdatabase_types

import
  ./gen_qwebsecurityorigin_types
export
  gen_qwebsecurityorigin_types

type cQWebDatabase*{.exportc: "QWebDatabase", incompleteStruct.} = object

proc fcQWebDatabase_new(other: pointer): ptr cQWebDatabase {.importc: "QWebDatabase_new".}
proc fcQWebDatabase_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebDatabase_operatorAssign".}
proc fcQWebDatabase_name(self: pointer, ): struct_miqt_string {.importc: "QWebDatabase_name".}
proc fcQWebDatabase_displayName(self: pointer, ): struct_miqt_string {.importc: "QWebDatabase_displayName".}
proc fcQWebDatabase_expectedSize(self: pointer, ): clonglong {.importc: "QWebDatabase_expectedSize".}
proc fcQWebDatabase_size(self: pointer, ): clonglong {.importc: "QWebDatabase_size".}
proc fcQWebDatabase_fileName(self: pointer, ): struct_miqt_string {.importc: "QWebDatabase_fileName".}
proc fcQWebDatabase_origin(self: pointer, ): pointer {.importc: "QWebDatabase_origin".}
proc fcQWebDatabase_removeDatabase(param1: pointer): void {.importc: "QWebDatabase_removeDatabase".}
proc fcQWebDatabase_removeAllDatabases(): void {.importc: "QWebDatabase_removeAllDatabases".}
proc fcQWebDatabase_delete(self: pointer) {.importc: "QWebDatabase_delete".}


func init*(T: type gen_qwebdatabase_types.QWebDatabase, h: ptr cQWebDatabase): gen_qwebdatabase_types.QWebDatabase =
  T(h: h)
proc create*(T: type gen_qwebdatabase_types.QWebDatabase, other: gen_qwebdatabase_types.QWebDatabase): gen_qwebdatabase_types.QWebDatabase =
  gen_qwebdatabase_types.QWebDatabase.init(fcQWebDatabase_new(other.h))

proc operatorAssign*(self: gen_qwebdatabase_types.QWebDatabase, other: gen_qwebdatabase_types.QWebDatabase): void =
  fcQWebDatabase_operatorAssign(self.h, other.h)

proc name*(self: gen_qwebdatabase_types.QWebDatabase, ): string =
  let v_ms = fcQWebDatabase_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc displayName*(self: gen_qwebdatabase_types.QWebDatabase, ): string =
  let v_ms = fcQWebDatabase_displayName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc expectedSize*(self: gen_qwebdatabase_types.QWebDatabase, ): clonglong =
  fcQWebDatabase_expectedSize(self.h)

proc size*(self: gen_qwebdatabase_types.QWebDatabase, ): clonglong =
  fcQWebDatabase_size(self.h)

proc fileName*(self: gen_qwebdatabase_types.QWebDatabase, ): string =
  let v_ms = fcQWebDatabase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc origin*(self: gen_qwebdatabase_types.QWebDatabase, ): gen_qwebsecurityorigin_types.QWebSecurityOrigin =
  gen_qwebsecurityorigin_types.QWebSecurityOrigin(h: fcQWebDatabase_origin(self.h))

proc removeDatabase*(_: type gen_qwebdatabase_types.QWebDatabase, param1: gen_qwebdatabase_types.QWebDatabase): void =
  fcQWebDatabase_removeDatabase(param1.h)

proc removeAllDatabases*(_: type gen_qwebdatabase_types.QWebDatabase, ): void =
  fcQWebDatabase_removeAllDatabases()

proc delete*(self: gen_qwebdatabase_types.QWebDatabase) =
  fcQWebDatabase_delete(self.h)
