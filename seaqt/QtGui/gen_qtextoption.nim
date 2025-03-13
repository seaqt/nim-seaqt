import ./Qt6Gui_libs

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


type QTextOptionTabTypeEnum* = distinct cint
template LeftTab*(_: type QTextOptionTabTypeEnum): untyped = 0
template RightTab*(_: type QTextOptionTabTypeEnum): untyped = 1
template CenterTab*(_: type QTextOptionTabTypeEnum): untyped = 2
template DelimiterTab*(_: type QTextOptionTabTypeEnum): untyped = 3


type QTextOptionWrapModeEnum* = distinct cint
template NoWrap*(_: type QTextOptionWrapModeEnum): untyped = 0
template WordWrap*(_: type QTextOptionWrapModeEnum): untyped = 1
template ManualWrap*(_: type QTextOptionWrapModeEnum): untyped = 2
template WrapAnywhere*(_: type QTextOptionWrapModeEnum): untyped = 3
template WrapAtWordBoundaryOrAnywhere*(_: type QTextOptionWrapModeEnum): untyped = 4


type QTextOptionFlagEnum* = distinct cint
template ShowTabsAndSpaces*(_: type QTextOptionFlagEnum): untyped = 1
template ShowLineAndParagraphSeparators*(_: type QTextOptionFlagEnum): untyped = 2
template AddSpaceForLineAndParagraphSeparators*(_: type QTextOptionFlagEnum): untyped = 4
template SuppressColors*(_: type QTextOptionFlagEnum): untyped = 8
template ShowDocumentTerminator*(_: type QTextOptionFlagEnum): untyped = 16
template IncludeTrailingSpaces*(_: type QTextOptionFlagEnum): untyped = 2147483648


import ./gen_qtextoption_types
export gen_qtextoption_types

import
  ../QtCore/gen_qchar_types
export
  gen_qchar_types

type cQTextOption*{.exportc: "QTextOption", incompleteStruct.} = object
type cQTextOptionTab*{.exportc: "QTextOption__Tab", incompleteStruct.} = object

proc fcQTextOption_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextOption_operatorAssign".}
proc fcQTextOption_setAlignment(self: pointer, alignment: cint): void {.importc: "QTextOption_setAlignment".}
proc fcQTextOption_alignment(self: pointer): cint {.importc: "QTextOption_alignment".}
proc fcQTextOption_setTextDirection(self: pointer, aDirection: cint): void {.importc: "QTextOption_setTextDirection".}
proc fcQTextOption_textDirection(self: pointer): cint {.importc: "QTextOption_textDirection".}
proc fcQTextOption_setWrapMode(self: pointer, wrap: cint): void {.importc: "QTextOption_setWrapMode".}
proc fcQTextOption_wrapMode(self: pointer): cint {.importc: "QTextOption_wrapMode".}
proc fcQTextOption_setFlags(self: pointer, flags: cint): void {.importc: "QTextOption_setFlags".}
proc fcQTextOption_flags(self: pointer): cint {.importc: "QTextOption_flags".}
proc fcQTextOption_setTabStopDistance(self: pointer, tabStopDistance: float64): void {.importc: "QTextOption_setTabStopDistance".}
proc fcQTextOption_tabStopDistance(self: pointer): float64 {.importc: "QTextOption_tabStopDistance".}
proc fcQTextOption_setTabArray(self: pointer, tabStops: struct_miqt_array): void {.importc: "QTextOption_setTabArray".}
proc fcQTextOption_tabArray(self: pointer): struct_miqt_array {.importc: "QTextOption_tabArray".}
proc fcQTextOption_setTabs(self: pointer, tabStops: struct_miqt_array): void {.importc: "QTextOption_setTabs".}
proc fcQTextOption_tabs(self: pointer): struct_miqt_array {.importc: "QTextOption_tabs".}
proc fcQTextOption_setUseDesignMetrics(self: pointer, b: bool): void {.importc: "QTextOption_setUseDesignMetrics".}
proc fcQTextOption_useDesignMetrics(self: pointer): bool {.importc: "QTextOption_useDesignMetrics".}
proc fcQTextOption_new(): ptr cQTextOption {.importc: "QTextOption_new".}
proc fcQTextOption_new2(alignment: cint): ptr cQTextOption {.importc: "QTextOption_new2".}
proc fcQTextOption_new3(o: pointer): ptr cQTextOption {.importc: "QTextOption_new3".}
proc fcQTextOptionTab_operatorEqual(self: pointer, other: pointer): bool {.importc: "QTextOption__Tab_operatorEqual".}
proc fcQTextOptionTab_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QTextOption__Tab_operatorNotEqual".}
proc fcQTextOptionTab_new(): ptr cQTextOptionTab {.importc: "QTextOption__Tab_new".}
proc fcQTextOptionTab_new2(pos: float64, tabType: cint): ptr cQTextOptionTab {.importc: "QTextOption__Tab_new2".}
proc fcQTextOptionTab_new3(pos: float64, tabType: cint, delim: pointer): ptr cQTextOptionTab {.importc: "QTextOption__Tab_new3".}

proc operatorAssign*(self: gen_qtextoption_types.QTextOption, o: gen_qtextoption_types.QTextOption): void =
  fcQTextOption_operatorAssign(self.h, o.h)

proc setAlignment*(self: gen_qtextoption_types.QTextOption, alignment: cint): void =
  fcQTextOption_setAlignment(self.h, cint(alignment))

proc alignment*(self: gen_qtextoption_types.QTextOption): cint =
  cint(fcQTextOption_alignment(self.h))

proc setTextDirection*(self: gen_qtextoption_types.QTextOption, aDirection: cint): void =
  fcQTextOption_setTextDirection(self.h, cint(aDirection))

proc textDirection*(self: gen_qtextoption_types.QTextOption): cint =
  cint(fcQTextOption_textDirection(self.h))

proc setWrapMode*(self: gen_qtextoption_types.QTextOption, wrap: cint): void =
  fcQTextOption_setWrapMode(self.h, cint(wrap))

proc wrapMode*(self: gen_qtextoption_types.QTextOption): cint =
  cint(fcQTextOption_wrapMode(self.h))

proc setFlags*(self: gen_qtextoption_types.QTextOption, flags: cint): void =
  fcQTextOption_setFlags(self.h, cint(flags))

proc flags*(self: gen_qtextoption_types.QTextOption): cint =
  cint(fcQTextOption_flags(self.h))

proc setTabStopDistance*(self: gen_qtextoption_types.QTextOption, tabStopDistance: float64): void =
  fcQTextOption_setTabStopDistance(self.h, tabStopDistance)

proc tabStopDistance*(self: gen_qtextoption_types.QTextOption): float64 =
  fcQTextOption_tabStopDistance(self.h)

proc setTabArray*(self: gen_qtextoption_types.QTextOption, tabStops: openArray[float64]): void =
  var tabStops_CArray = newSeq[float64](len(tabStops))
  for i in 0..<len(tabStops):
    tabStops_CArray[i] = tabStops[i]

  fcQTextOption_setTabArray(self.h, struct_miqt_array(len: csize_t(len(tabStops)), data: if len(tabStops) == 0: nil else: addr(tabStops_CArray[0])))

proc tabArray*(self: gen_qtextoption_types.QTextOption): seq[float64] =
  var v_ma = fcQTextOption_tabArray(self.h)
  var vx_ret = newSeq[float64](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[float64]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  c_free(v_ma.data)
  vx_ret

proc setTabs*(self: gen_qtextoption_types.QTextOption, tabStops: openArray[gen_qtextoption_types.QTextOptionTab]): void =
  var tabStops_CArray = newSeq[pointer](len(tabStops))
  for i in 0..<len(tabStops):
    tabStops_CArray[i] = tabStops[i].h

  fcQTextOption_setTabs(self.h, struct_miqt_array(len: csize_t(len(tabStops)), data: if len(tabStops) == 0: nil else: addr(tabStops_CArray[0])))

proc tabs*(self: gen_qtextoption_types.QTextOption): seq[gen_qtextoption_types.QTextOptionTab] =
  var v_ma = fcQTextOption_tabs(self.h)
  var vx_ret = newSeq[gen_qtextoption_types.QTextOptionTab](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextoption_types.QTextOptionTab(h: v_outCast[i], owned: true)
  c_free(v_ma.data)
  vx_ret

proc setUseDesignMetrics*(self: gen_qtextoption_types.QTextOption, b: bool): void =
  fcQTextOption_setUseDesignMetrics(self.h, b)

proc useDesignMetrics*(self: gen_qtextoption_types.QTextOption): bool =
  fcQTextOption_useDesignMetrics(self.h)

proc create*(T: type gen_qtextoption_types.QTextOption): gen_qtextoption_types.QTextOption =
  gen_qtextoption_types.QTextOption(h: fcQTextOption_new(), owned: true)

proc create*(T: type gen_qtextoption_types.QTextOption,
    alignment: cint): gen_qtextoption_types.QTextOption =
  gen_qtextoption_types.QTextOption(h: fcQTextOption_new2(cint(alignment)), owned: true)

proc create*(T: type gen_qtextoption_types.QTextOption,
    o: gen_qtextoption_types.QTextOption): gen_qtextoption_types.QTextOption =
  gen_qtextoption_types.QTextOption(h: fcQTextOption_new3(o.h), owned: true)

proc operatorEqual*(self: gen_qtextoption_types.QTextOptionTab, other: gen_qtextoption_types.QTextOptionTab): bool =
  fcQTextOptionTab_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: gen_qtextoption_types.QTextOptionTab, other: gen_qtextoption_types.QTextOptionTab): bool =
  fcQTextOptionTab_operatorNotEqual(self.h, other.h)

proc create*(T: type gen_qtextoption_types.QTextOptionTab): gen_qtextoption_types.QTextOptionTab =
  gen_qtextoption_types.QTextOptionTab(h: fcQTextOptionTab_new(), owned: true)

proc create*(T: type gen_qtextoption_types.QTextOptionTab,
    pos: float64, tabType: cint): gen_qtextoption_types.QTextOptionTab =
  gen_qtextoption_types.QTextOptionTab(h: fcQTextOptionTab_new2(pos, cint(tabType)), owned: true)

proc create*(T: type gen_qtextoption_types.QTextOptionTab,
    pos: float64, tabType: cint, delim: gen_qchar_types.QChar): gen_qtextoption_types.QTextOptionTab =
  gen_qtextoption_types.QTextOptionTab(h: fcQTextOptionTab_new3(pos, cint(tabType), delim.h), owned: true)

