import ./Qt6Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt6Widgets")  & " -fPIC"
{.compile("gen_qtreewidgetitemiterator.cpp", cflags).}


type QTreeWidgetItemIteratorIteratorFlagEnum* = distinct cint
template All*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 0
template Hidden*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 1
template NotHidden*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 2
template Selected*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 4
template Unselected*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 8
template Selectable*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 16
template NotSelectable*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 32
template DragEnabled*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 64
template DragDisabled*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 128
template DropEnabled*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 256
template DropDisabled*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 512
template HasChildren*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 1024
template NoChildren*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 2048
template Checked*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 4096
template NotChecked*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 8192
template Enabled*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 16384
template Disabled*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 32768
template Editable*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 65536
template NotEditable*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 131072
template UserFlag*(_: type QTreeWidgetItemIteratorIteratorFlagEnum): untyped = 16777216


import ./gen_qtreewidgetitemiterator_types
export gen_qtreewidgetitemiterator_types

import
  ./gen_qtreewidget_types
export
  gen_qtreewidget_types

type cQTreeWidgetItemIterator*{.exportc: "QTreeWidgetItemIterator", incompleteStruct.} = object

proc fcQTreeWidgetItemIterator_operatorAssign(self: pointer, it: pointer): void {.importc: "QTreeWidgetItemIterator_operatorAssign".}
proc fcQTreeWidgetItemIterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QTreeWidgetItemIterator_operatorPlusPlus".}
proc fcQTreeWidgetItemIterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QTreeWidgetItemIterator_operatorPlusPlusWithInt".}
proc fcQTreeWidgetItemIterator_operatorPlusAssign(self: pointer, n: cint): pointer {.importc: "QTreeWidgetItemIterator_operatorPlusAssign".}
proc fcQTreeWidgetItemIterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QTreeWidgetItemIterator_operatorMinusMinus".}
proc fcQTreeWidgetItemIterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QTreeWidgetItemIterator_operatorMinusMinusWithInt".}
proc fcQTreeWidgetItemIterator_operatorMinusAssign(self: pointer, n: cint): pointer {.importc: "QTreeWidgetItemIterator_operatorMinusAssign".}
proc fcQTreeWidgetItemIterator_operatorMultiply(self: pointer, ): pointer {.importc: "QTreeWidgetItemIterator_operatorMultiply".}
proc fcQTreeWidgetItemIterator_new(it: pointer): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new".}
proc fcQTreeWidgetItemIterator_new2(widget: pointer): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new2".}
proc fcQTreeWidgetItemIterator_new3(item: pointer): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new3".}
proc fcQTreeWidgetItemIterator_new4(widget: pointer, flags: cint): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new4".}
proc fcQTreeWidgetItemIterator_new5(item: pointer, flags: cint): ptr cQTreeWidgetItemIterator {.importc: "QTreeWidgetItemIterator_new5".}
proc fcQTreeWidgetItemIterator_delete(self: pointer) {.importc: "QTreeWidgetItemIterator_delete".}

proc operatorAssign*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator, it: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator): void =
  fcQTreeWidgetItemIterator_operatorAssign(self.h, it.h)

proc operatorPlusPlus*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator, ): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorPlusPlus(self.h))

proc operatorPlusPlus*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator, param1: cint): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorPlusAssign*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator, n: cint): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorPlusAssign(self.h, n))

proc operatorMinusMinus*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator, ): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorMinusMinus(self.h))

proc operatorMinusMinus*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator, param1: cint): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorMinusAssign*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator, n: cint): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_operatorMinusAssign(self.h, n))

proc operatorMultiply*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator, ): gen_qtreewidget_types.QTreeWidgetItem =
  gen_qtreewidget_types.QTreeWidgetItem(h: fcQTreeWidgetItemIterator_operatorMultiply(self.h))

proc create*(T: type gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator,
    it: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_new(it.h))

proc create*(T: type gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator,
    widget: gen_qtreewidget_types.QTreeWidget): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_new2(widget.h))

proc create*(T: type gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator,
    item: gen_qtreewidget_types.QTreeWidgetItem): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_new3(item.h))

proc create*(T: type gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator,
    widget: gen_qtreewidget_types.QTreeWidget, flags: cint): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_new4(widget.h, cint(flags)))

proc create*(T: type gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator,
    item: gen_qtreewidget_types.QTreeWidgetItem, flags: cint): gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator =
  gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator(h: fcQTreeWidgetItemIterator_new5(item.h, cint(flags)))

proc delete*(self: gen_qtreewidgetitemiterator_types.QTreeWidgetItemIterator) =
  fcQTreeWidgetItemIterator_delete(self.h)
