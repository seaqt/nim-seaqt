import ./Qt5Widgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5Widgets")  & " -fPIC"
{.compile("gen_qformlayout.cpp", cflags).}


type QFormLayoutFieldGrowthPolicyEnum* = distinct cint
template FieldsStayAtSizeHint*(_: type QFormLayoutFieldGrowthPolicyEnum): untyped = 0
template ExpandingFieldsGrow*(_: type QFormLayoutFieldGrowthPolicyEnum): untyped = 1
template AllNonFixedFieldsGrow*(_: type QFormLayoutFieldGrowthPolicyEnum): untyped = 2


type QFormLayoutRowWrapPolicyEnum* = distinct cint
template DontWrapRows*(_: type QFormLayoutRowWrapPolicyEnum): untyped = 0
template WrapLongRows*(_: type QFormLayoutRowWrapPolicyEnum): untyped = 1
template WrapAllRows*(_: type QFormLayoutRowWrapPolicyEnum): untyped = 2


type QFormLayoutItemRoleEnum* = distinct cint
template LabelRole*(_: type QFormLayoutItemRoleEnum): untyped = 0
template FieldRole*(_: type QFormLayoutItemRoleEnum): untyped = 1
template SpanningRole*(_: type QFormLayoutItemRoleEnum): untyped = 2


import ./gen_qformlayout_types
export gen_qformlayout_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qlayout,
  ./gen_qlayoutitem_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qlayout,
  gen_qlayoutitem_types,
  gen_qwidget_types

type cQFormLayout*{.exportc: "QFormLayout", incompleteStruct.} = object
type cQFormLayoutTakeRowResult*{.exportc: "QFormLayout__TakeRowResult", incompleteStruct.} = object

proc fcQFormLayout_new(parent: pointer): ptr cQFormLayout {.importc: "QFormLayout_new".}
proc fcQFormLayout_new2(): ptr cQFormLayout {.importc: "QFormLayout_new2".}
proc fcQFormLayout_metaObject(self: pointer, ): pointer {.importc: "QFormLayout_metaObject".}
proc fcQFormLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QFormLayout_metacast".}
proc fcQFormLayout_tr(s: cstring): struct_miqt_string {.importc: "QFormLayout_tr".}
proc fcQFormLayout_trUtf8(s: cstring): struct_miqt_string {.importc: "QFormLayout_trUtf8".}
proc fcQFormLayout_setFieldGrowthPolicy(self: pointer, policy: cint): void {.importc: "QFormLayout_setFieldGrowthPolicy".}
proc fcQFormLayout_fieldGrowthPolicy(self: pointer, ): cint {.importc: "QFormLayout_fieldGrowthPolicy".}
proc fcQFormLayout_setRowWrapPolicy(self: pointer, policy: cint): void {.importc: "QFormLayout_setRowWrapPolicy".}
proc fcQFormLayout_rowWrapPolicy(self: pointer, ): cint {.importc: "QFormLayout_rowWrapPolicy".}
proc fcQFormLayout_setLabelAlignment(self: pointer, alignment: cint): void {.importc: "QFormLayout_setLabelAlignment".}
proc fcQFormLayout_labelAlignment(self: pointer, ): cint {.importc: "QFormLayout_labelAlignment".}
proc fcQFormLayout_setFormAlignment(self: pointer, alignment: cint): void {.importc: "QFormLayout_setFormAlignment".}
proc fcQFormLayout_formAlignment(self: pointer, ): cint {.importc: "QFormLayout_formAlignment".}
proc fcQFormLayout_setHorizontalSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_setHorizontalSpacing".}
proc fcQFormLayout_horizontalSpacing(self: pointer, ): cint {.importc: "QFormLayout_horizontalSpacing".}
proc fcQFormLayout_setVerticalSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_setVerticalSpacing".}
proc fcQFormLayout_verticalSpacing(self: pointer, ): cint {.importc: "QFormLayout_verticalSpacing".}
proc fcQFormLayout_spacing(self: pointer, ): cint {.importc: "QFormLayout_spacing".}
proc fcQFormLayout_setSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_setSpacing".}
proc fcQFormLayout_addRow(self: pointer, label: pointer, field: pointer): void {.importc: "QFormLayout_addRow".}
proc fcQFormLayout_addRow2(self: pointer, label: pointer, field: pointer): void {.importc: "QFormLayout_addRow2".}
proc fcQFormLayout_addRow3(self: pointer, labelText: struct_miqt_string, field: pointer): void {.importc: "QFormLayout_addRow3".}
proc fcQFormLayout_addRow4(self: pointer, labelText: struct_miqt_string, field: pointer): void {.importc: "QFormLayout_addRow4".}
proc fcQFormLayout_addRowWithWidget(self: pointer, widget: pointer): void {.importc: "QFormLayout_addRowWithWidget".}
proc fcQFormLayout_addRowWithLayout(self: pointer, layout: pointer): void {.importc: "QFormLayout_addRowWithLayout".}
proc fcQFormLayout_insertRow(self: pointer, row: cint, label: pointer, field: pointer): void {.importc: "QFormLayout_insertRow".}
proc fcQFormLayout_insertRow2(self: pointer, row: cint, label: pointer, field: pointer): void {.importc: "QFormLayout_insertRow2".}
proc fcQFormLayout_insertRow3(self: pointer, row: cint, labelText: struct_miqt_string, field: pointer): void {.importc: "QFormLayout_insertRow3".}
proc fcQFormLayout_insertRow4(self: pointer, row: cint, labelText: struct_miqt_string, field: pointer): void {.importc: "QFormLayout_insertRow4".}
proc fcQFormLayout_insertRow5(self: pointer, row: cint, widget: pointer): void {.importc: "QFormLayout_insertRow5".}
proc fcQFormLayout_insertRow6(self: pointer, row: cint, layout: pointer): void {.importc: "QFormLayout_insertRow6".}
proc fcQFormLayout_removeRow(self: pointer, row: cint): void {.importc: "QFormLayout_removeRow".}
proc fcQFormLayout_removeRowWithWidget(self: pointer, widget: pointer): void {.importc: "QFormLayout_removeRowWithWidget".}
proc fcQFormLayout_removeRowWithLayout(self: pointer, layout: pointer): void {.importc: "QFormLayout_removeRowWithLayout".}
proc fcQFormLayout_takeRow(self: pointer, row: cint): pointer {.importc: "QFormLayout_takeRow".}
proc fcQFormLayout_takeRowWithWidget(self: pointer, widget: pointer): pointer {.importc: "QFormLayout_takeRowWithWidget".}
proc fcQFormLayout_takeRowWithLayout(self: pointer, layout: pointer): pointer {.importc: "QFormLayout_takeRowWithLayout".}
proc fcQFormLayout_setItem(self: pointer, row: cint, role: cint, item: pointer): void {.importc: "QFormLayout_setItem".}
proc fcQFormLayout_setWidget(self: pointer, row: cint, role: cint, widget: pointer): void {.importc: "QFormLayout_setWidget".}
proc fcQFormLayout_setLayout(self: pointer, row: cint, role: cint, layout: pointer): void {.importc: "QFormLayout_setLayout".}
proc fcQFormLayout_itemAt(self: pointer, row: cint, role: cint): pointer {.importc: "QFormLayout_itemAt".}
proc fcQFormLayout_labelForField(self: pointer, field: pointer): pointer {.importc: "QFormLayout_labelForField".}
proc fcQFormLayout_labelForFieldWithField(self: pointer, field: pointer): pointer {.importc: "QFormLayout_labelForFieldWithField".}
proc fcQFormLayout_addItem(self: pointer, item: pointer): void {.importc: "QFormLayout_addItem".}
proc fcQFormLayout_itemAtWithIndex(self: pointer, index: cint): pointer {.importc: "QFormLayout_itemAtWithIndex".}
proc fcQFormLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QFormLayout_takeAt".}
proc fcQFormLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QFormLayout_setGeometry".}
proc fcQFormLayout_minimumSize(self: pointer, ): pointer {.importc: "QFormLayout_minimumSize".}
proc fcQFormLayout_sizeHint(self: pointer, ): pointer {.importc: "QFormLayout_sizeHint".}
proc fcQFormLayout_invalidate(self: pointer, ): void {.importc: "QFormLayout_invalidate".}
proc fcQFormLayout_hasHeightForWidth(self: pointer, ): bool {.importc: "QFormLayout_hasHeightForWidth".}
proc fcQFormLayout_heightForWidth(self: pointer, width: cint): cint {.importc: "QFormLayout_heightForWidth".}
proc fcQFormLayout_expandingDirections(self: pointer, ): cint {.importc: "QFormLayout_expandingDirections".}
proc fcQFormLayout_count(self: pointer, ): cint {.importc: "QFormLayout_count".}
proc fcQFormLayout_rowCount(self: pointer, ): cint {.importc: "QFormLayout_rowCount".}
proc fcQFormLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFormLayout_tr2".}
proc fcQFormLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFormLayout_tr3".}
proc fcQFormLayout_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFormLayout_trUtf82".}
proc fcQFormLayout_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFormLayout_trUtf83".}
proc fQFormLayout_virtualbase_addItem(self: pointer, item: pointer): void{.importc: "QFormLayout_virtualbase_addItem".}
proc fcQFormLayout_override_virtual_addItem(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_addItem".}
proc fQFormLayout_virtualbase_itemAtWithIndex(self: pointer, index: cint): pointer{.importc: "QFormLayout_virtualbase_itemAtWithIndex".}
proc fcQFormLayout_override_virtual_itemAtWithIndex(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_itemAtWithIndex".}
proc fQFormLayout_virtualbase_takeAt(self: pointer, index: cint): pointer{.importc: "QFormLayout_virtualbase_takeAt".}
proc fcQFormLayout_override_virtual_takeAt(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_takeAt".}
proc fQFormLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void{.importc: "QFormLayout_virtualbase_setGeometry".}
proc fcQFormLayout_override_virtual_setGeometry(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_setGeometry".}
proc fQFormLayout_virtualbase_minimumSize(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_minimumSize".}
proc fcQFormLayout_override_virtual_minimumSize(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_minimumSize".}
proc fQFormLayout_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_sizeHint".}
proc fcQFormLayout_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_sizeHint".}
proc fQFormLayout_virtualbase_invalidate(self: pointer, ): void{.importc: "QFormLayout_virtualbase_invalidate".}
proc fcQFormLayout_override_virtual_invalidate(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_invalidate".}
proc fQFormLayout_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QFormLayout_virtualbase_hasHeightForWidth".}
proc fcQFormLayout_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_hasHeightForWidth".}
proc fQFormLayout_virtualbase_heightForWidth(self: pointer, width: cint): cint{.importc: "QFormLayout_virtualbase_heightForWidth".}
proc fcQFormLayout_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_heightForWidth".}
proc fQFormLayout_virtualbase_expandingDirections(self: pointer, ): cint{.importc: "QFormLayout_virtualbase_expandingDirections".}
proc fcQFormLayout_override_virtual_expandingDirections(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_expandingDirections".}
proc fQFormLayout_virtualbase_count(self: pointer, ): cint{.importc: "QFormLayout_virtualbase_count".}
proc fcQFormLayout_override_virtual_count(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_count".}
proc fQFormLayout_virtualbase_geometry(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_geometry".}
proc fcQFormLayout_override_virtual_geometry(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_geometry".}
proc fQFormLayout_virtualbase_maximumSize(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_maximumSize".}
proc fcQFormLayout_override_virtual_maximumSize(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_maximumSize".}
proc fQFormLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint{.importc: "QFormLayout_virtualbase_indexOf".}
proc fcQFormLayout_override_virtual_indexOf(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_indexOf".}
proc fQFormLayout_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QFormLayout_virtualbase_isEmpty".}
proc fcQFormLayout_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_isEmpty".}
proc fQFormLayout_virtualbase_controlTypes(self: pointer, ): cint{.importc: "QFormLayout_virtualbase_controlTypes".}
proc fcQFormLayout_override_virtual_controlTypes(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_controlTypes".}
proc fQFormLayout_virtualbase_layout(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_layout".}
proc fcQFormLayout_override_virtual_layout(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_layout".}
proc fQFormLayout_virtualbase_childEvent(self: pointer, e: pointer): void{.importc: "QFormLayout_virtualbase_childEvent".}
proc fcQFormLayout_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_childEvent".}
proc fQFormLayout_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFormLayout_virtualbase_event".}
proc fcQFormLayout_override_virtual_event(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_event".}
proc fQFormLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFormLayout_virtualbase_eventFilter".}
proc fcQFormLayout_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_eventFilter".}
proc fQFormLayout_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFormLayout_virtualbase_timerEvent".}
proc fcQFormLayout_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_timerEvent".}
proc fQFormLayout_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFormLayout_virtualbase_customEvent".}
proc fcQFormLayout_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_customEvent".}
proc fQFormLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFormLayout_virtualbase_connectNotify".}
proc fcQFormLayout_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_connectNotify".}
proc fQFormLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFormLayout_virtualbase_disconnectNotify".}
proc fcQFormLayout_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_disconnectNotify".}
proc fQFormLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint{.importc: "QFormLayout_virtualbase_minimumHeightForWidth".}
proc fcQFormLayout_override_virtual_minimumHeightForWidth(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_minimumHeightForWidth".}
proc fQFormLayout_virtualbase_widget(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_widget".}
proc fcQFormLayout_override_virtual_widget(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_widget".}
proc fQFormLayout_virtualbase_spacerItem(self: pointer, ): pointer{.importc: "QFormLayout_virtualbase_spacerItem".}
proc fcQFormLayout_override_virtual_spacerItem(self: pointer, slot: int) {.importc: "QFormLayout_override_virtual_spacerItem".}
proc fcQFormLayout_delete(self: pointer) {.importc: "QFormLayout_delete".}
proc fcQFormLayoutTakeRowResult_delete(self: pointer) {.importc: "QFormLayout__TakeRowResult_delete".}


func init*(T: type gen_qformlayout_types.QFormLayout, h: ptr cQFormLayout): gen_qformlayout_types.QFormLayout =
  T(h: h)
proc create*(T: type gen_qformlayout_types.QFormLayout, parent: gen_qwidget_types.QWidget): gen_qformlayout_types.QFormLayout =
  gen_qformlayout_types.QFormLayout.init(fcQFormLayout_new(parent.h))

proc create*(T: type gen_qformlayout_types.QFormLayout, ): gen_qformlayout_types.QFormLayout =
  gen_qformlayout_types.QFormLayout.init(fcQFormLayout_new2())

proc metaObject*(self: gen_qformlayout_types.QFormLayout, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFormLayout_metaObject(self.h))

proc metacast*(self: gen_qformlayout_types.QFormLayout, param1: cstring): pointer =
  fcQFormLayout_metacast(self.h, param1)

proc tr*(_: type gen_qformlayout_types.QFormLayout, s: cstring): string =
  let v_ms = fcQFormLayout_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qformlayout_types.QFormLayout, s: cstring): string =
  let v_ms = fcQFormLayout_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFieldGrowthPolicy*(self: gen_qformlayout_types.QFormLayout, policy: cint): void =
  fcQFormLayout_setFieldGrowthPolicy(self.h, cint(policy))

proc fieldGrowthPolicy*(self: gen_qformlayout_types.QFormLayout, ): cint =
  cint(fcQFormLayout_fieldGrowthPolicy(self.h))

proc setRowWrapPolicy*(self: gen_qformlayout_types.QFormLayout, policy: cint): void =
  fcQFormLayout_setRowWrapPolicy(self.h, cint(policy))

proc rowWrapPolicy*(self: gen_qformlayout_types.QFormLayout, ): cint =
  cint(fcQFormLayout_rowWrapPolicy(self.h))

proc setLabelAlignment*(self: gen_qformlayout_types.QFormLayout, alignment: cint): void =
  fcQFormLayout_setLabelAlignment(self.h, cint(alignment))

proc labelAlignment*(self: gen_qformlayout_types.QFormLayout, ): cint =
  cint(fcQFormLayout_labelAlignment(self.h))

proc setFormAlignment*(self: gen_qformlayout_types.QFormLayout, alignment: cint): void =
  fcQFormLayout_setFormAlignment(self.h, cint(alignment))

proc formAlignment*(self: gen_qformlayout_types.QFormLayout, ): cint =
  cint(fcQFormLayout_formAlignment(self.h))

proc setHorizontalSpacing*(self: gen_qformlayout_types.QFormLayout, spacing: cint): void =
  fcQFormLayout_setHorizontalSpacing(self.h, spacing)

proc horizontalSpacing*(self: gen_qformlayout_types.QFormLayout, ): cint =
  fcQFormLayout_horizontalSpacing(self.h)

proc setVerticalSpacing*(self: gen_qformlayout_types.QFormLayout, spacing: cint): void =
  fcQFormLayout_setVerticalSpacing(self.h, spacing)

proc verticalSpacing*(self: gen_qformlayout_types.QFormLayout, ): cint =
  fcQFormLayout_verticalSpacing(self.h)

proc spacing*(self: gen_qformlayout_types.QFormLayout, ): cint =
  fcQFormLayout_spacing(self.h)

proc setSpacing*(self: gen_qformlayout_types.QFormLayout, spacing: cint): void =
  fcQFormLayout_setSpacing(self.h, spacing)

proc addRow*(self: gen_qformlayout_types.QFormLayout, label: gen_qwidget_types.QWidget, field: gen_qwidget_types.QWidget): void =
  fcQFormLayout_addRow(self.h, label.h, field.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, label: gen_qwidget_types.QWidget, field: gen_qlayout_types.QLayout): void =
  fcQFormLayout_addRow2(self.h, label.h, field.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, labelText: string, field: gen_qwidget_types.QWidget): void =
  fcQFormLayout_addRow3(self.h, struct_miqt_string(data: labelText, len: csize_t(len(labelText))), field.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, labelText: string, field: gen_qlayout_types.QLayout): void =
  fcQFormLayout_addRow4(self.h, struct_miqt_string(data: labelText, len: csize_t(len(labelText))), field.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, widget: gen_qwidget_types.QWidget): void =
  fcQFormLayout_addRowWithWidget(self.h, widget.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, layout: gen_qlayout_types.QLayout): void =
  fcQFormLayout_addRowWithLayout(self.h, layout.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, label: gen_qwidget_types.QWidget, field: gen_qwidget_types.QWidget): void =
  fcQFormLayout_insertRow(self.h, row, label.h, field.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, label: gen_qwidget_types.QWidget, field: gen_qlayout_types.QLayout): void =
  fcQFormLayout_insertRow2(self.h, row, label.h, field.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, labelText: string, field: gen_qwidget_types.QWidget): void =
  fcQFormLayout_insertRow3(self.h, row, struct_miqt_string(data: labelText, len: csize_t(len(labelText))), field.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, labelText: string, field: gen_qlayout_types.QLayout): void =
  fcQFormLayout_insertRow4(self.h, row, struct_miqt_string(data: labelText, len: csize_t(len(labelText))), field.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, widget: gen_qwidget_types.QWidget): void =
  fcQFormLayout_insertRow5(self.h, row, widget.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, layout: gen_qlayout_types.QLayout): void =
  fcQFormLayout_insertRow6(self.h, row, layout.h)

proc removeRow*(self: gen_qformlayout_types.QFormLayout, row: cint): void =
  fcQFormLayout_removeRow(self.h, row)

proc removeRow*(self: gen_qformlayout_types.QFormLayout, widget: gen_qwidget_types.QWidget): void =
  fcQFormLayout_removeRowWithWidget(self.h, widget.h)

proc removeRow*(self: gen_qformlayout_types.QFormLayout, layout: gen_qlayout_types.QLayout): void =
  fcQFormLayout_removeRowWithLayout(self.h, layout.h)

proc takeRow*(self: gen_qformlayout_types.QFormLayout, row: cint): gen_qformlayout_types.QFormLayoutTakeRowResult =
  gen_qformlayout_types.QFormLayoutTakeRowResult(h: fcQFormLayout_takeRow(self.h, row))

proc takeRow*(self: gen_qformlayout_types.QFormLayout, widget: gen_qwidget_types.QWidget): gen_qformlayout_types.QFormLayoutTakeRowResult =
  gen_qformlayout_types.QFormLayoutTakeRowResult(h: fcQFormLayout_takeRowWithWidget(self.h, widget.h))

proc takeRow*(self: gen_qformlayout_types.QFormLayout, layout: gen_qlayout_types.QLayout): gen_qformlayout_types.QFormLayoutTakeRowResult =
  gen_qformlayout_types.QFormLayoutTakeRowResult(h: fcQFormLayout_takeRowWithLayout(self.h, layout.h))

proc setItem*(self: gen_qformlayout_types.QFormLayout, row: cint, role: cint, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQFormLayout_setItem(self.h, row, cint(role), item.h)

proc setWidget*(self: gen_qformlayout_types.QFormLayout, row: cint, role: cint, widget: gen_qwidget_types.QWidget): void =
  fcQFormLayout_setWidget(self.h, row, cint(role), widget.h)

proc setLayout*(self: gen_qformlayout_types.QFormLayout, row: cint, role: cint, layout: gen_qlayout_types.QLayout): void =
  fcQFormLayout_setLayout(self.h, row, cint(role), layout.h)

proc itemAt*(self: gen_qformlayout_types.QFormLayout, row: cint, role: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_itemAt(self.h, row, cint(role)))

proc labelForField*(self: gen_qformlayout_types.QFormLayout, field: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFormLayout_labelForField(self.h, field.h))

proc labelForField*(self: gen_qformlayout_types.QFormLayout, field: gen_qlayout_types.QLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFormLayout_labelForFieldWithField(self.h, field.h))

proc addItem*(self: gen_qformlayout_types.QFormLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQFormLayout_addItem(self.h, item.h)

proc itemAt*(self: gen_qformlayout_types.QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_itemAtWithIndex(self.h, index))

proc takeAt*(self: gen_qformlayout_types.QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_takeAt(self.h, index))

proc setGeometry*(self: gen_qformlayout_types.QFormLayout, rect: gen_qrect_types.QRect): void =
  fcQFormLayout_setGeometry(self.h, rect.h)

proc minimumSize*(self: gen_qformlayout_types.QFormLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFormLayout_minimumSize(self.h))

proc sizeHint*(self: gen_qformlayout_types.QFormLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFormLayout_sizeHint(self.h))

proc invalidate*(self: gen_qformlayout_types.QFormLayout, ): void =
  fcQFormLayout_invalidate(self.h)

proc hasHeightForWidth*(self: gen_qformlayout_types.QFormLayout, ): bool =
  fcQFormLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qformlayout_types.QFormLayout, width: cint): cint =
  fcQFormLayout_heightForWidth(self.h, width)

proc expandingDirections*(self: gen_qformlayout_types.QFormLayout, ): cint =
  cint(fcQFormLayout_expandingDirections(self.h))

proc count*(self: gen_qformlayout_types.QFormLayout, ): cint =
  fcQFormLayout_count(self.h)

proc rowCount*(self: gen_qformlayout_types.QFormLayout, ): cint =
  fcQFormLayout_rowCount(self.h)

proc tr*(_: type gen_qformlayout_types.QFormLayout, s: cstring, c: cstring): string =
  let v_ms = fcQFormLayout_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qformlayout_types.QFormLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFormLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qformlayout_types.QFormLayout, s: cstring, c: cstring): string =
  let v_ms = fcQFormLayout_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qformlayout_types.QFormLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFormLayout_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QFormLayoutaddItem*(self: gen_qformlayout_types.QFormLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fQFormLayout_virtualbase_addItem(self.h, item.h)

type QFormLayoutaddItemProc* = proc(item: gen_qlayoutitem_types.QLayoutItem): void
proc onaddItem*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutaddItemProc) =
  # TODO check subclass
  var tmp = new QFormLayoutaddItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_addItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_addItem(self: ptr cQFormLayout, slot: int, item: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_addItem ".} =
  var nimfunc = cast[ptr QFormLayoutaddItemProc](cast[pointer](slot))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item)


  nimfunc[](slotval1)
proc QFormLayoutitemAt*(self: gen_qformlayout_types.QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQFormLayout_virtualbase_itemAtWithIndex(self.h, index))

type QFormLayoutitemAtWithIndexProc* = proc(index: cint): gen_qlayoutitem_types.QLayoutItem
proc onitemAt*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutitemAtWithIndexProc) =
  # TODO check subclass
  var tmp = new QFormLayoutitemAtWithIndexProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_itemAtWithIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_itemAtWithIndex(self: ptr cQFormLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QFormLayout_itemAtWithIndex ".} =
  var nimfunc = cast[ptr QFormLayoutitemAtWithIndexProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFormLayouttakeAt*(self: gen_qformlayout_types.QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fQFormLayout_virtualbase_takeAt(self.h, index))

type QFormLayouttakeAtProc* = proc(index: cint): gen_qlayoutitem_types.QLayoutItem
proc ontakeAt*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayouttakeAtProc) =
  # TODO check subclass
  var tmp = new QFormLayouttakeAtProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_takeAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_takeAt(self: ptr cQFormLayout, slot: int, index: cint): pointer {.exportc: "miqt_exec_callback_QFormLayout_takeAt ".} =
  var nimfunc = cast[ptr QFormLayouttakeAtProc](cast[pointer](slot))
  let slotval1 = index


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc QFormLayoutsetGeometry*(self: gen_qformlayout_types.QFormLayout, rect: gen_qrect_types.QRect): void =
  fQFormLayout_virtualbase_setGeometry(self.h, rect.h)

type QFormLayoutsetGeometryProc* = proc(rect: gen_qrect_types.QRect): void
proc onsetGeometry*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutsetGeometryProc) =
  # TODO check subclass
  var tmp = new QFormLayoutsetGeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_setGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_setGeometry(self: ptr cQFormLayout, slot: int, rect: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_setGeometry ".} =
  var nimfunc = cast[ptr QFormLayoutsetGeometryProc](cast[pointer](slot))
  let slotval1 = gen_qrect_types.QRect(h: rect)


  nimfunc[](slotval1)
proc QFormLayoutminimumSize*(self: gen_qformlayout_types.QFormLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFormLayout_virtualbase_minimumSize(self.h))

type QFormLayoutminimumSizeProc* = proc(): gen_qsize_types.QSize
proc onminimumSize*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutminimumSizeProc) =
  # TODO check subclass
  var tmp = new QFormLayoutminimumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_minimumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_minimumSize(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_minimumSize ".} =
  var nimfunc = cast[ptr QFormLayoutminimumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFormLayoutsizeHint*(self: gen_qformlayout_types.QFormLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFormLayout_virtualbase_sizeHint(self.h))

type QFormLayoutsizeHintProc* = proc(): gen_qsize_types.QSize
proc onsizeHint*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutsizeHintProc) =
  # TODO check subclass
  var tmp = new QFormLayoutsizeHintProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_sizeHint(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_sizeHint ".} =
  var nimfunc = cast[ptr QFormLayoutsizeHintProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFormLayoutinvalidate*(self: gen_qformlayout_types.QFormLayout, ): void =
  fQFormLayout_virtualbase_invalidate(self.h)

type QFormLayoutinvalidateProc* = proc(): void
proc oninvalidate*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutinvalidateProc) =
  # TODO check subclass
  var tmp = new QFormLayoutinvalidateProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_invalidate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_invalidate(self: ptr cQFormLayout, slot: int): void {.exportc: "miqt_exec_callback_QFormLayout_invalidate ".} =
  var nimfunc = cast[ptr QFormLayoutinvalidateProc](cast[pointer](slot))

  nimfunc[]()
proc QFormLayouthasHeightForWidth*(self: gen_qformlayout_types.QFormLayout, ): bool =
  fQFormLayout_virtualbase_hasHeightForWidth(self.h)

type QFormLayouthasHeightForWidthProc* = proc(): bool
proc onhasHeightForWidth*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayouthasHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QFormLayouthasHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_hasHeightForWidth(self: ptr cQFormLayout, slot: int): bool {.exportc: "miqt_exec_callback_QFormLayout_hasHeightForWidth ".} =
  var nimfunc = cast[ptr QFormLayouthasHeightForWidthProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFormLayoutheightForWidth*(self: gen_qformlayout_types.QFormLayout, width: cint): cint =
  fQFormLayout_virtualbase_heightForWidth(self.h, width)

type QFormLayoutheightForWidthProc* = proc(width: cint): cint
proc onheightForWidth*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutheightForWidthProc) =
  # TODO check subclass
  var tmp = new QFormLayoutheightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_heightForWidth(self: ptr cQFormLayout, slot: int, width: cint): cint {.exportc: "miqt_exec_callback_QFormLayout_heightForWidth ".} =
  var nimfunc = cast[ptr QFormLayoutheightForWidthProc](cast[pointer](slot))
  let slotval1 = width


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFormLayoutexpandingDirections*(self: gen_qformlayout_types.QFormLayout, ): cint =
  cint(fQFormLayout_virtualbase_expandingDirections(self.h))

type QFormLayoutexpandingDirectionsProc* = proc(): cint
proc onexpandingDirections*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutexpandingDirectionsProc) =
  # TODO check subclass
  var tmp = new QFormLayoutexpandingDirectionsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_expandingDirections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_expandingDirections(self: ptr cQFormLayout, slot: int): cint {.exportc: "miqt_exec_callback_QFormLayout_expandingDirections ".} =
  var nimfunc = cast[ptr QFormLayoutexpandingDirectionsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QFormLayoutcount*(self: gen_qformlayout_types.QFormLayout, ): cint =
  fQFormLayout_virtualbase_count(self.h)

type QFormLayoutcountProc* = proc(): cint
proc oncount*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutcountProc) =
  # TODO check subclass
  var tmp = new QFormLayoutcountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_count(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_count(self: ptr cQFormLayout, slot: int): cint {.exportc: "miqt_exec_callback_QFormLayout_count ".} =
  var nimfunc = cast[ptr QFormLayoutcountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFormLayoutgeometry*(self: gen_qformlayout_types.QFormLayout, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fQFormLayout_virtualbase_geometry(self.h))

type QFormLayoutgeometryProc* = proc(): gen_qrect_types.QRect
proc ongeometry*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutgeometryProc) =
  # TODO check subclass
  var tmp = new QFormLayoutgeometryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_geometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_geometry(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_geometry ".} =
  var nimfunc = cast[ptr QFormLayoutgeometryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFormLayoutmaximumSize*(self: gen_qformlayout_types.QFormLayout, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fQFormLayout_virtualbase_maximumSize(self.h))

type QFormLayoutmaximumSizeProc* = proc(): gen_qsize_types.QSize
proc onmaximumSize*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutmaximumSizeProc) =
  # TODO check subclass
  var tmp = new QFormLayoutmaximumSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_maximumSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_maximumSize(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_maximumSize ".} =
  var nimfunc = cast[ptr QFormLayoutmaximumSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFormLayoutindexOf*(self: gen_qformlayout_types.QFormLayout, param1: gen_qwidget_types.QWidget): cint =
  fQFormLayout_virtualbase_indexOf(self.h, param1.h)

type QFormLayoutindexOfProc* = proc(param1: gen_qwidget_types.QWidget): cint
proc onindexOf*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutindexOfProc) =
  # TODO check subclass
  var tmp = new QFormLayoutindexOfProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_indexOf(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_indexOf(self: ptr cQFormLayout, slot: int, param1: pointer): cint {.exportc: "miqt_exec_callback_QFormLayout_indexOf ".} =
  var nimfunc = cast[ptr QFormLayoutindexOfProc](cast[pointer](slot))
  let slotval1 = gen_qwidget_types.QWidget(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFormLayoutisEmpty*(self: gen_qformlayout_types.QFormLayout, ): bool =
  fQFormLayout_virtualbase_isEmpty(self.h)

type QFormLayoutisEmptyProc* = proc(): bool
proc onisEmpty*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutisEmptyProc) =
  # TODO check subclass
  var tmp = new QFormLayoutisEmptyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_isEmpty(self: ptr cQFormLayout, slot: int): bool {.exportc: "miqt_exec_callback_QFormLayout_isEmpty ".} =
  var nimfunc = cast[ptr QFormLayoutisEmptyProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QFormLayoutcontrolTypes*(self: gen_qformlayout_types.QFormLayout, ): cint =
  cint(fQFormLayout_virtualbase_controlTypes(self.h))

type QFormLayoutcontrolTypesProc* = proc(): cint
proc oncontrolTypes*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutcontrolTypesProc) =
  # TODO check subclass
  var tmp = new QFormLayoutcontrolTypesProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_controlTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_controlTypes(self: ptr cQFormLayout, slot: int): cint {.exportc: "miqt_exec_callback_QFormLayout_controlTypes ".} =
  var nimfunc = cast[ptr QFormLayoutcontrolTypesProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QFormLayoutlayout*(self: gen_qformlayout_types.QFormLayout, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fQFormLayout_virtualbase_layout(self.h))

type QFormLayoutlayoutProc* = proc(): gen_qlayout_types.QLayout
proc onlayout*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutlayoutProc) =
  # TODO check subclass
  var tmp = new QFormLayoutlayoutProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_layout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_layout(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_layout ".} =
  var nimfunc = cast[ptr QFormLayoutlayoutProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFormLayoutchildEvent*(self: gen_qformlayout_types.QFormLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fQFormLayout_virtualbase_childEvent(self.h, e.h)

type QFormLayoutchildEventProc* = proc(e: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutchildEventProc) =
  # TODO check subclass
  var tmp = new QFormLayoutchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_childEvent(self: ptr cQFormLayout, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_childEvent ".} =
  var nimfunc = cast[ptr QFormLayoutchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e)


  nimfunc[](slotval1)
proc QFormLayoutevent*(self: gen_qformlayout_types.QFormLayout, event: gen_qcoreevent_types.QEvent): bool =
  fQFormLayout_virtualbase_event(self.h, event.h)

type QFormLayouteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayouteventProc) =
  # TODO check subclass
  var tmp = new QFormLayouteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_event(self: ptr cQFormLayout, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFormLayout_event ".} =
  var nimfunc = cast[ptr QFormLayouteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFormLayouteventFilter*(self: gen_qformlayout_types.QFormLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQFormLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFormLayouteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayouteventFilterProc) =
  # TODO check subclass
  var tmp = new QFormLayouteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_eventFilter(self: ptr cQFormLayout, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFormLayout_eventFilter ".} =
  var nimfunc = cast[ptr QFormLayouteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QFormLayouttimerEvent*(self: gen_qformlayout_types.QFormLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fQFormLayout_virtualbase_timerEvent(self.h, event.h)

type QFormLayouttimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayouttimerEventProc) =
  # TODO check subclass
  var tmp = new QFormLayouttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_timerEvent(self: ptr cQFormLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_timerEvent ".} =
  var nimfunc = cast[ptr QFormLayouttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QFormLayoutcustomEvent*(self: gen_qformlayout_types.QFormLayout, event: gen_qcoreevent_types.QEvent): void =
  fQFormLayout_virtualbase_customEvent(self.h, event.h)

type QFormLayoutcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutcustomEventProc) =
  # TODO check subclass
  var tmp = new QFormLayoutcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_customEvent(self: ptr cQFormLayout, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_customEvent ".} =
  var nimfunc = cast[ptr QFormLayoutcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QFormLayoutconnectNotify*(self: gen_qformlayout_types.QFormLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFormLayout_virtualbase_connectNotify(self.h, signal.h)

type QFormLayoutconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFormLayoutconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_connectNotify(self: ptr cQFormLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_connectNotify ".} =
  var nimfunc = cast[ptr QFormLayoutconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFormLayoutdisconnectNotify*(self: gen_qformlayout_types.QFormLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQFormLayout_virtualbase_disconnectNotify(self.h, signal.h)

type QFormLayoutdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QFormLayoutdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_disconnectNotify(self: ptr cQFormLayout, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFormLayout_disconnectNotify ".} =
  var nimfunc = cast[ptr QFormLayoutdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QFormLayoutminimumHeightForWidth*(self: gen_qformlayout_types.QFormLayout, param1: cint): cint =
  fQFormLayout_virtualbase_minimumHeightForWidth(self.h, param1)

type QFormLayoutminimumHeightForWidthProc* = proc(param1: cint): cint
proc onminimumHeightForWidth*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutminimumHeightForWidthProc) =
  # TODO check subclass
  var tmp = new QFormLayoutminimumHeightForWidthProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_minimumHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_minimumHeightForWidth(self: ptr cQFormLayout, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QFormLayout_minimumHeightForWidth ".} =
  var nimfunc = cast[ptr QFormLayoutminimumHeightForWidthProc](cast[pointer](slot))
  let slotval1 = param1


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QFormLayoutwidget*(self: gen_qformlayout_types.QFormLayout, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fQFormLayout_virtualbase_widget(self.h))

type QFormLayoutwidgetProc* = proc(): gen_qwidget_types.QWidget
proc onwidget*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutwidgetProc) =
  # TODO check subclass
  var tmp = new QFormLayoutwidgetProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_widget(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_widget(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_widget ".} =
  var nimfunc = cast[ptr QFormLayoutwidgetProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QFormLayoutspacerItem*(self: gen_qformlayout_types.QFormLayout, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fQFormLayout_virtualbase_spacerItem(self.h))

type QFormLayoutspacerItemProc* = proc(): gen_qlayoutitem_types.QSpacerItem
proc onspacerItem*(self: gen_qformlayout_types.QFormLayout, slot: QFormLayoutspacerItemProc) =
  # TODO check subclass
  var tmp = new QFormLayoutspacerItemProc
  tmp[] = slot
  GC_ref(tmp)
  fcQFormLayout_override_virtual_spacerItem(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFormLayout_spacerItem(self: ptr cQFormLayout, slot: int): pointer {.exportc: "miqt_exec_callback_QFormLayout_spacerItem ".} =
  var nimfunc = cast[ptr QFormLayoutspacerItemProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc delete*(self: gen_qformlayout_types.QFormLayout) =
  fcQFormLayout_delete(self.h)

func init*(T: type gen_qformlayout_types.QFormLayoutTakeRowResult, h: ptr cQFormLayoutTakeRowResult): gen_qformlayout_types.QFormLayoutTakeRowResult =
  T(h: h)
proc delete*(self: gen_qformlayout_types.QFormLayoutTakeRowResult) =
  fcQFormLayoutTakeRowResult_delete(self.h)
