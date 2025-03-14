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


import ./gen_qloggingcategory_types
export gen_qloggingcategory_types


type cQLoggingCategory*{.exportc: "QLoggingCategory", incompleteStruct.} = object

proc fcQLoggingCategory_isDebugEnabled(self: pointer): bool {.importc: "QLoggingCategory_isDebugEnabled".}
proc fcQLoggingCategory_isInfoEnabled(self: pointer): bool {.importc: "QLoggingCategory_isInfoEnabled".}
proc fcQLoggingCategory_isWarningEnabled(self: pointer): bool {.importc: "QLoggingCategory_isWarningEnabled".}
proc fcQLoggingCategory_isCriticalEnabled(self: pointer): bool {.importc: "QLoggingCategory_isCriticalEnabled".}
proc fcQLoggingCategory_categoryName(self: pointer): cstring {.importc: "QLoggingCategory_categoryName".}
proc fcQLoggingCategory_operatorCall(self: pointer): pointer {.importc: "QLoggingCategory_operatorCall".}
proc fcQLoggingCategory_operatorCall2(self: pointer): pointer {.importc: "QLoggingCategory_operatorCall2".}
proc fcQLoggingCategory_defaultCategory(): pointer {.importc: "QLoggingCategory_defaultCategory".}
proc fcQLoggingCategory_setFilterRules(rules: struct_miqt_string): void {.importc: "QLoggingCategory_setFilterRules".}
proc fcQLoggingCategory_new(category: cstring): ptr cQLoggingCategory {.importc: "QLoggingCategory_new".}

proc isDebugEnabled*(self: gen_qloggingcategory_types.QLoggingCategory): bool =
  fcQLoggingCategory_isDebugEnabled(self.h)

proc isInfoEnabled*(self: gen_qloggingcategory_types.QLoggingCategory): bool =
  fcQLoggingCategory_isInfoEnabled(self.h)

proc isWarningEnabled*(self: gen_qloggingcategory_types.QLoggingCategory): bool =
  fcQLoggingCategory_isWarningEnabled(self.h)

proc isCriticalEnabled*(self: gen_qloggingcategory_types.QLoggingCategory): bool =
  fcQLoggingCategory_isCriticalEnabled(self.h)

proc categoryName*(self: gen_qloggingcategory_types.QLoggingCategory): cstring =
  (fcQLoggingCategory_categoryName(self.h))

proc operatorCall*(self: gen_qloggingcategory_types.QLoggingCategory): gen_qloggingcategory_types.QLoggingCategory =
  gen_qloggingcategory_types.QLoggingCategory(h: fcQLoggingCategory_operatorCall(self.h), owned: false)

proc operatorCall2*(self: gen_qloggingcategory_types.QLoggingCategory): gen_qloggingcategory_types.QLoggingCategory =
  gen_qloggingcategory_types.QLoggingCategory(h: fcQLoggingCategory_operatorCall2(self.h), owned: false)

proc defaultCategory*(_: type gen_qloggingcategory_types.QLoggingCategory): gen_qloggingcategory_types.QLoggingCategory =
  gen_qloggingcategory_types.QLoggingCategory(h: fcQLoggingCategory_defaultCategory(), owned: false)

proc setFilterRules*(_: type gen_qloggingcategory_types.QLoggingCategory, rules: openArray[char]): void =
  fcQLoggingCategory_setFilterRules(struct_miqt_string(data: if len(rules) > 0: addr rules[0] else: nil, len: csize_t(len(rules))))

proc create*(T: type gen_qloggingcategory_types.QLoggingCategory,
    category: cstring): gen_qloggingcategory_types.QLoggingCategory =
  gen_qloggingcategory_types.QLoggingCategory(h: fcQLoggingCategory_new(category), owned: true)

