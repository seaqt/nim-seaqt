import ./Qt6Widgets_libs

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


type QSizePolicyPolicyFlagEnum* = distinct cint
template GrowFlag*(_: type QSizePolicyPolicyFlagEnum): untyped = 1
template ExpandFlag*(_: type QSizePolicyPolicyFlagEnum): untyped = 2
template ShrinkFlag*(_: type QSizePolicyPolicyFlagEnum): untyped = 4
template IgnoreFlag*(_: type QSizePolicyPolicyFlagEnum): untyped = 8


type QSizePolicyPolicyEnum* = distinct cint
template Fixed*(_: type QSizePolicyPolicyEnum): untyped = 0
template Minimum*(_: type QSizePolicyPolicyEnum): untyped = 1
template Maximum*(_: type QSizePolicyPolicyEnum): untyped = 4
template Preferred*(_: type QSizePolicyPolicyEnum): untyped = 5
template MinimumExpanding*(_: type QSizePolicyPolicyEnum): untyped = 3
template Expanding*(_: type QSizePolicyPolicyEnum): untyped = 7
template Ignored*(_: type QSizePolicyPolicyEnum): untyped = 13


type QSizePolicyControlTypeEnum* = distinct cint
template DefaultType*(_: type QSizePolicyControlTypeEnum): untyped = 1
template ButtonBox*(_: type QSizePolicyControlTypeEnum): untyped = 2
template CheckBox*(_: type QSizePolicyControlTypeEnum): untyped = 4
template ComboBox*(_: type QSizePolicyControlTypeEnum): untyped = 8
template Frame*(_: type QSizePolicyControlTypeEnum): untyped = 16
template GroupBox*(_: type QSizePolicyControlTypeEnum): untyped = 32
template Label*(_: type QSizePolicyControlTypeEnum): untyped = 64
template Line*(_: type QSizePolicyControlTypeEnum): untyped = 128
template LineEdit*(_: type QSizePolicyControlTypeEnum): untyped = 256
template PushButton*(_: type QSizePolicyControlTypeEnum): untyped = 512
template RadioButton*(_: type QSizePolicyControlTypeEnum): untyped = 1024
template Slider*(_: type QSizePolicyControlTypeEnum): untyped = 2048
template SpinBox*(_: type QSizePolicyControlTypeEnum): untyped = 4096
template TabWidget*(_: type QSizePolicyControlTypeEnum): untyped = 8192
template ToolButton*(_: type QSizePolicyControlTypeEnum): untyped = 16384


import ./gen_qsizepolicy_types
export gen_qsizepolicy_types

import
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qvariant_types
export
  gen_qobjectdefs_types,
  gen_qvariant_types

type cQSizePolicy*{.exportc: "QSizePolicy", incompleteStruct.} = object

proc fcQSizePolicy_horizontalPolicy(self: pointer): cint {.importc: "QSizePolicy_horizontalPolicy".}
proc fcQSizePolicy_verticalPolicy(self: pointer): cint {.importc: "QSizePolicy_verticalPolicy".}
proc fcQSizePolicy_controlType(self: pointer): cint {.importc: "QSizePolicy_controlType".}
proc fcQSizePolicy_setHorizontalPolicy(self: pointer, d: cint): void {.importc: "QSizePolicy_setHorizontalPolicy".}
proc fcQSizePolicy_setVerticalPolicy(self: pointer, d: cint): void {.importc: "QSizePolicy_setVerticalPolicy".}
proc fcQSizePolicy_setControlType(self: pointer, typeVal: cint): void {.importc: "QSizePolicy_setControlType".}
proc fcQSizePolicy_expandingDirections(self: pointer): cint {.importc: "QSizePolicy_expandingDirections".}
proc fcQSizePolicy_setHeightForWidth(self: pointer, b: bool): void {.importc: "QSizePolicy_setHeightForWidth".}
proc fcQSizePolicy_hasHeightForWidth(self: pointer): bool {.importc: "QSizePolicy_hasHeightForWidth".}
proc fcQSizePolicy_setWidthForHeight(self: pointer, b: bool): void {.importc: "QSizePolicy_setWidthForHeight".}
proc fcQSizePolicy_hasWidthForHeight(self: pointer): bool {.importc: "QSizePolicy_hasWidthForHeight".}
proc fcQSizePolicy_operatorEqual(self: pointer, s: pointer): bool {.importc: "QSizePolicy_operatorEqual".}
proc fcQSizePolicy_operatorNotEqual(self: pointer, s: pointer): bool {.importc: "QSizePolicy_operatorNotEqual".}
proc fcQSizePolicy_ToQVariant(self: pointer): pointer {.importc: "QSizePolicy_ToQVariant".}
proc fcQSizePolicy_horizontalStretch(self: pointer): cint {.importc: "QSizePolicy_horizontalStretch".}
proc fcQSizePolicy_verticalStretch(self: pointer): cint {.importc: "QSizePolicy_verticalStretch".}
proc fcQSizePolicy_setHorizontalStretch(self: pointer, stretchFactor: cint): void {.importc: "QSizePolicy_setHorizontalStretch".}
proc fcQSizePolicy_setVerticalStretch(self: pointer, stretchFactor: cint): void {.importc: "QSizePolicy_setVerticalStretch".}
proc fcQSizePolicy_retainSizeWhenHidden(self: pointer): bool {.importc: "QSizePolicy_retainSizeWhenHidden".}
proc fcQSizePolicy_setRetainSizeWhenHidden(self: pointer, retainSize: bool): void {.importc: "QSizePolicy_setRetainSizeWhenHidden".}
proc fcQSizePolicy_transpose(self: pointer): void {.importc: "QSizePolicy_transpose".}
proc fcQSizePolicy_transposed(self: pointer): pointer {.importc: "QSizePolicy_transposed".}
proc fcQSizePolicy_new(): ptr cQSizePolicy {.importc: "QSizePolicy_new".}
proc fcQSizePolicy_new2(horizontal: cint, vertical: cint): ptr cQSizePolicy {.importc: "QSizePolicy_new2".}
proc fcQSizePolicy_new3(param1: pointer): ptr cQSizePolicy {.importc: "QSizePolicy_new3".}
proc fcQSizePolicy_new4(horizontal: cint, vertical: cint, typeVal: cint): ptr cQSizePolicy {.importc: "QSizePolicy_new4".}
proc fcQSizePolicy_staticMetaObject(): pointer {.importc: "QSizePolicy_staticMetaObject".}

proc horizontalPolicy*(self: gen_qsizepolicy_types.QSizePolicy): cint =
  cint(fcQSizePolicy_horizontalPolicy(self.h))

proc verticalPolicy*(self: gen_qsizepolicy_types.QSizePolicy): cint =
  cint(fcQSizePolicy_verticalPolicy(self.h))

proc controlType*(self: gen_qsizepolicy_types.QSizePolicy): cint =
  cint(fcQSizePolicy_controlType(self.h))

proc setHorizontalPolicy*(self: gen_qsizepolicy_types.QSizePolicy, d: cint): void =
  fcQSizePolicy_setHorizontalPolicy(self.h, cint(d))

proc setVerticalPolicy*(self: gen_qsizepolicy_types.QSizePolicy, d: cint): void =
  fcQSizePolicy_setVerticalPolicy(self.h, cint(d))

proc setControlType*(self: gen_qsizepolicy_types.QSizePolicy, typeVal: cint): void =
  fcQSizePolicy_setControlType(self.h, cint(typeVal))

proc expandingDirections*(self: gen_qsizepolicy_types.QSizePolicy): cint =
  cint(fcQSizePolicy_expandingDirections(self.h))

proc setHeightForWidth*(self: gen_qsizepolicy_types.QSizePolicy, b: bool): void =
  fcQSizePolicy_setHeightForWidth(self.h, b)

proc hasHeightForWidth*(self: gen_qsizepolicy_types.QSizePolicy): bool =
  fcQSizePolicy_hasHeightForWidth(self.h)

proc setWidthForHeight*(self: gen_qsizepolicy_types.QSizePolicy, b: bool): void =
  fcQSizePolicy_setWidthForHeight(self.h, b)

proc hasWidthForHeight*(self: gen_qsizepolicy_types.QSizePolicy): bool =
  fcQSizePolicy_hasWidthForHeight(self.h)

proc operatorEqual*(self: gen_qsizepolicy_types.QSizePolicy, s: gen_qsizepolicy_types.QSizePolicy): bool =
  fcQSizePolicy_operatorEqual(self.h, s.h)

proc operatorNotEqual*(self: gen_qsizepolicy_types.QSizePolicy, s: gen_qsizepolicy_types.QSizePolicy): bool =
  fcQSizePolicy_operatorNotEqual(self.h, s.h)

proc ToQVariant*(self: gen_qsizepolicy_types.QSizePolicy): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSizePolicy_ToQVariant(self.h), owned: true)

proc horizontalStretch*(self: gen_qsizepolicy_types.QSizePolicy): cint =
  fcQSizePolicy_horizontalStretch(self.h)

proc verticalStretch*(self: gen_qsizepolicy_types.QSizePolicy): cint =
  fcQSizePolicy_verticalStretch(self.h)

proc setHorizontalStretch*(self: gen_qsizepolicy_types.QSizePolicy, stretchFactor: cint): void =
  fcQSizePolicy_setHorizontalStretch(self.h, stretchFactor)

proc setVerticalStretch*(self: gen_qsizepolicy_types.QSizePolicy, stretchFactor: cint): void =
  fcQSizePolicy_setVerticalStretch(self.h, stretchFactor)

proc retainSizeWhenHidden*(self: gen_qsizepolicy_types.QSizePolicy): bool =
  fcQSizePolicy_retainSizeWhenHidden(self.h)

proc setRetainSizeWhenHidden*(self: gen_qsizepolicy_types.QSizePolicy, retainSize: bool): void =
  fcQSizePolicy_setRetainSizeWhenHidden(self.h, retainSize)

proc transpose*(self: gen_qsizepolicy_types.QSizePolicy): void =
  fcQSizePolicy_transpose(self.h)

proc transposed*(self: gen_qsizepolicy_types.QSizePolicy): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQSizePolicy_transposed(self.h), owned: true)

proc create*(T: type gen_qsizepolicy_types.QSizePolicy): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQSizePolicy_new(), owned: true)

proc create*(T: type gen_qsizepolicy_types.QSizePolicy,
    horizontal: cint, vertical: cint): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQSizePolicy_new2(cint(horizontal), cint(vertical)), owned: true)

proc create*(T: type gen_qsizepolicy_types.QSizePolicy,
    param1: gen_qsizepolicy_types.QSizePolicy): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQSizePolicy_new3(param1.h), owned: true)

proc create*(T: type gen_qsizepolicy_types.QSizePolicy,
    horizontal: cint, vertical: cint, typeVal: cint): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQSizePolicy_new4(cint(horizontal), cint(vertical), cint(typeVal)), owned: true)

proc staticMetaObject*(_: type gen_qsizepolicy_types.QSizePolicy): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSizePolicy_staticMetaObject())
