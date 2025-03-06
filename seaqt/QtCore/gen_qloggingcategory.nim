import ./Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")  & " -fPIC"
{.compile("gen_qloggingcategory.cpp", cflags).}


import ./gen_qloggingcategory_types
export gen_qloggingcategory_types


type cQLoggingCategory*{.exportc: "QLoggingCategory", incompleteStruct.} = object

proc fcQLoggingCategory_isDebugEnabled(self: pointer, ): bool {.importc: "QLoggingCategory_isDebugEnabled".}
proc fcQLoggingCategory_isInfoEnabled(self: pointer, ): bool {.importc: "QLoggingCategory_isInfoEnabled".}
proc fcQLoggingCategory_isWarningEnabled(self: pointer, ): bool {.importc: "QLoggingCategory_isWarningEnabled".}
proc fcQLoggingCategory_isCriticalEnabled(self: pointer, ): bool {.importc: "QLoggingCategory_isCriticalEnabled".}
proc fcQLoggingCategory_categoryName(self: pointer, ): cstring {.importc: "QLoggingCategory_categoryName".}
proc fcQLoggingCategory_operatorCall(self: pointer, ): pointer {.importc: "QLoggingCategory_operatorCall".}
proc fcQLoggingCategory_operatorCall2(self: pointer, ): pointer {.importc: "QLoggingCategory_operatorCall2".}
proc fcQLoggingCategory_defaultCategory(): pointer {.importc: "QLoggingCategory_defaultCategory".}
proc fcQLoggingCategory_setFilterRules(rules: struct_miqt_string): void {.importc: "QLoggingCategory_setFilterRules".}
proc fcQLoggingCategory_new(category: cstring): ptr cQLoggingCategory {.importc: "QLoggingCategory_new".}
proc fcQLoggingCategory_delete(self: pointer) {.importc: "QLoggingCategory_delete".}

proc isDebugEnabled*(self: gen_qloggingcategory_types.QLoggingCategory, ): bool =
  fcQLoggingCategory_isDebugEnabled(self.h)

proc isInfoEnabled*(self: gen_qloggingcategory_types.QLoggingCategory, ): bool =
  fcQLoggingCategory_isInfoEnabled(self.h)

proc isWarningEnabled*(self: gen_qloggingcategory_types.QLoggingCategory, ): bool =
  fcQLoggingCategory_isWarningEnabled(self.h)

proc isCriticalEnabled*(self: gen_qloggingcategory_types.QLoggingCategory, ): bool =
  fcQLoggingCategory_isCriticalEnabled(self.h)

proc categoryName*(self: gen_qloggingcategory_types.QLoggingCategory, ): cstring =
  (fcQLoggingCategory_categoryName(self.h))

proc operatorCall*(self: gen_qloggingcategory_types.QLoggingCategory, ): gen_qloggingcategory_types.QLoggingCategory =
  gen_qloggingcategory_types.QLoggingCategory(h: fcQLoggingCategory_operatorCall(self.h))

proc operatorCall2*(self: gen_qloggingcategory_types.QLoggingCategory, ): gen_qloggingcategory_types.QLoggingCategory =
  gen_qloggingcategory_types.QLoggingCategory(h: fcQLoggingCategory_operatorCall2(self.h))

proc defaultCategory*(_: type gen_qloggingcategory_types.QLoggingCategory, ): gen_qloggingcategory_types.QLoggingCategory =
  gen_qloggingcategory_types.QLoggingCategory(h: fcQLoggingCategory_defaultCategory())

proc setFilterRules*(_: type gen_qloggingcategory_types.QLoggingCategory, rules: string): void =
  fcQLoggingCategory_setFilterRules(struct_miqt_string(data: rules, len: csize_t(len(rules))))

proc create*(T: type gen_qloggingcategory_types.QLoggingCategory,
    category: cstring): gen_qloggingcategory_types.QLoggingCategory =
  gen_qloggingcategory_types.QLoggingCategory(h: fcQLoggingCategory_new(category))

proc delete*(self: gen_qloggingcategory_types.QLoggingCategory) =
  fcQLoggingCategory_delete(self.h)
