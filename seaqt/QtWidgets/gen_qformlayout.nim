import ./qtwidgets_pkg

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

proc fcQFormLayout_metaObject(self: pointer): pointer {.importc: "QFormLayout_metaObject".}
proc fcQFormLayout_metacast(self: pointer, param1: cstring): pointer {.importc: "QFormLayout_metacast".}
proc fcQFormLayout_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFormLayout_metacall".}
proc fcQFormLayout_tr(s: cstring): struct_miqt_string {.importc: "QFormLayout_tr".}
proc fcQFormLayout_setFieldGrowthPolicy(self: pointer, policy: cint): void {.importc: "QFormLayout_setFieldGrowthPolicy".}
proc fcQFormLayout_fieldGrowthPolicy(self: pointer): cint {.importc: "QFormLayout_fieldGrowthPolicy".}
proc fcQFormLayout_setRowWrapPolicy(self: pointer, policy: cint): void {.importc: "QFormLayout_setRowWrapPolicy".}
proc fcQFormLayout_rowWrapPolicy(self: pointer): cint {.importc: "QFormLayout_rowWrapPolicy".}
proc fcQFormLayout_setLabelAlignment(self: pointer, alignment: cint): void {.importc: "QFormLayout_setLabelAlignment".}
proc fcQFormLayout_labelAlignment(self: pointer): cint {.importc: "QFormLayout_labelAlignment".}
proc fcQFormLayout_setFormAlignment(self: pointer, alignment: cint): void {.importc: "QFormLayout_setFormAlignment".}
proc fcQFormLayout_formAlignment(self: pointer): cint {.importc: "QFormLayout_formAlignment".}
proc fcQFormLayout_setHorizontalSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_setHorizontalSpacing".}
proc fcQFormLayout_horizontalSpacing(self: pointer): cint {.importc: "QFormLayout_horizontalSpacing".}
proc fcQFormLayout_setVerticalSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_setVerticalSpacing".}
proc fcQFormLayout_verticalSpacing(self: pointer): cint {.importc: "QFormLayout_verticalSpacing".}
proc fcQFormLayout_spacing(self: pointer): cint {.importc: "QFormLayout_spacing".}
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
proc fcQFormLayout_setRowVisible(self: pointer, row: cint, on: bool): void {.importc: "QFormLayout_setRowVisible".}
proc fcQFormLayout_setRowVisible2(self: pointer, widget: pointer, on: bool): void {.importc: "QFormLayout_setRowVisible2".}
proc fcQFormLayout_setRowVisible3(self: pointer, layout: pointer, on: bool): void {.importc: "QFormLayout_setRowVisible3".}
proc fcQFormLayout_isRowVisible(self: pointer, row: cint): bool {.importc: "QFormLayout_isRowVisible".}
proc fcQFormLayout_isRowVisibleWithWidget(self: pointer, widget: pointer): bool {.importc: "QFormLayout_isRowVisibleWithWidget".}
proc fcQFormLayout_isRowVisibleWithLayout(self: pointer, layout: pointer): bool {.importc: "QFormLayout_isRowVisibleWithLayout".}
proc fcQFormLayout_itemAt(self: pointer, row: cint, role: cint): pointer {.importc: "QFormLayout_itemAt".}
proc fcQFormLayout_labelForField(self: pointer, field: pointer): pointer {.importc: "QFormLayout_labelForField".}
proc fcQFormLayout_labelForFieldWithField(self: pointer, field: pointer): pointer {.importc: "QFormLayout_labelForFieldWithField".}
proc fcQFormLayout_addItem(self: pointer, item: pointer): void {.importc: "QFormLayout_addItem".}
proc fcQFormLayout_itemAtWithIndex(self: pointer, index: cint): pointer {.importc: "QFormLayout_itemAtWithIndex".}
proc fcQFormLayout_takeAt(self: pointer, index: cint): pointer {.importc: "QFormLayout_takeAt".}
proc fcQFormLayout_setGeometry(self: pointer, rect: pointer): void {.importc: "QFormLayout_setGeometry".}
proc fcQFormLayout_minimumSize(self: pointer): pointer {.importc: "QFormLayout_minimumSize".}
proc fcQFormLayout_sizeHint(self: pointer): pointer {.importc: "QFormLayout_sizeHint".}
proc fcQFormLayout_invalidate(self: pointer): void {.importc: "QFormLayout_invalidate".}
proc fcQFormLayout_hasHeightForWidth(self: pointer): bool {.importc: "QFormLayout_hasHeightForWidth".}
proc fcQFormLayout_heightForWidth(self: pointer, width: cint): cint {.importc: "QFormLayout_heightForWidth".}
proc fcQFormLayout_expandingDirections(self: pointer): cint {.importc: "QFormLayout_expandingDirections".}
proc fcQFormLayout_count(self: pointer): cint {.importc: "QFormLayout_count".}
proc fcQFormLayout_rowCount(self: pointer): cint {.importc: "QFormLayout_rowCount".}
proc fcQFormLayout_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFormLayout_tr2".}
proc fcQFormLayout_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFormLayout_tr3".}
proc fcQFormLayout_vtbl(self: pointer): pointer {.importc: "QFormLayout_vtbl".}
proc fcQFormLayout_vdata(self: pointer): pointer {.importc: "QFormLayout_vdata".}
type cQFormLayoutVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  spacing*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSpacing*: proc(self: pointer, spacing: cint): void {.cdecl, raises: [], gcsafe.}
  addItem*: proc(self: pointer, item: pointer): void {.cdecl, raises: [], gcsafe.}
  itemAtWithIndex*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  takeAt*: proc(self: pointer, index: cint): pointer {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, rect: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, width: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  count*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  indexOf*: proc(self: pointer, param1: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  replaceWidget*: proc(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQFormLayout_virtualbase_metaObject(self: pointer): pointer {.importc: "QFormLayout_virtualbase_metaObject".}
proc fcQFormLayout_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QFormLayout_virtualbase_metacast".}
proc fcQFormLayout_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFormLayout_virtualbase_metacall".}
proc fcQFormLayout_virtualbase_spacing(self: pointer): cint {.importc: "QFormLayout_virtualbase_spacing".}
proc fcQFormLayout_virtualbase_setSpacing(self: pointer, spacing: cint): void {.importc: "QFormLayout_virtualbase_setSpacing".}
proc fcQFormLayout_virtualbase_addItem(self: pointer, item: pointer): void {.importc: "QFormLayout_virtualbase_addItem".}
proc fcQFormLayout_virtualbase_itemAtWithIndex(self: pointer, index: cint): pointer {.importc: "QFormLayout_virtualbase_itemAtWithIndex".}
proc fcQFormLayout_virtualbase_takeAt(self: pointer, index: cint): pointer {.importc: "QFormLayout_virtualbase_takeAt".}
proc fcQFormLayout_virtualbase_setGeometry(self: pointer, rect: pointer): void {.importc: "QFormLayout_virtualbase_setGeometry".}
proc fcQFormLayout_virtualbase_minimumSize(self: pointer): pointer {.importc: "QFormLayout_virtualbase_minimumSize".}
proc fcQFormLayout_virtualbase_sizeHint(self: pointer): pointer {.importc: "QFormLayout_virtualbase_sizeHint".}
proc fcQFormLayout_virtualbase_invalidate(self: pointer): void {.importc: "QFormLayout_virtualbase_invalidate".}
proc fcQFormLayout_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QFormLayout_virtualbase_hasHeightForWidth".}
proc fcQFormLayout_virtualbase_heightForWidth(self: pointer, width: cint): cint {.importc: "QFormLayout_virtualbase_heightForWidth".}
proc fcQFormLayout_virtualbase_expandingDirections(self: pointer): cint {.importc: "QFormLayout_virtualbase_expandingDirections".}
proc fcQFormLayout_virtualbase_count(self: pointer): cint {.importc: "QFormLayout_virtualbase_count".}
proc fcQFormLayout_virtualbase_geometry(self: pointer): pointer {.importc: "QFormLayout_virtualbase_geometry".}
proc fcQFormLayout_virtualbase_maximumSize(self: pointer): pointer {.importc: "QFormLayout_virtualbase_maximumSize".}
proc fcQFormLayout_virtualbase_indexOf(self: pointer, param1: pointer): cint {.importc: "QFormLayout_virtualbase_indexOf".}
proc fcQFormLayout_virtualbase_isEmpty(self: pointer): bool {.importc: "QFormLayout_virtualbase_isEmpty".}
proc fcQFormLayout_virtualbase_controlTypes(self: pointer): cint {.importc: "QFormLayout_virtualbase_controlTypes".}
proc fcQFormLayout_virtualbase_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.importc: "QFormLayout_virtualbase_replaceWidget".}
proc fcQFormLayout_virtualbase_layout(self: pointer): pointer {.importc: "QFormLayout_virtualbase_layout".}
proc fcQFormLayout_virtualbase_childEvent(self: pointer, e: pointer): void {.importc: "QFormLayout_virtualbase_childEvent".}
proc fcQFormLayout_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QFormLayout_virtualbase_event".}
proc fcQFormLayout_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QFormLayout_virtualbase_eventFilter".}
proc fcQFormLayout_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QFormLayout_virtualbase_timerEvent".}
proc fcQFormLayout_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QFormLayout_virtualbase_customEvent".}
proc fcQFormLayout_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QFormLayout_virtualbase_connectNotify".}
proc fcQFormLayout_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QFormLayout_virtualbase_disconnectNotify".}
proc fcQFormLayout_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QFormLayout_virtualbase_minimumHeightForWidth".}
proc fcQFormLayout_virtualbase_widget(self: pointer): pointer {.importc: "QFormLayout_virtualbase_widget".}
proc fcQFormLayout_virtualbase_spacerItem(self: pointer): pointer {.importc: "QFormLayout_virtualbase_spacerItem".}
proc fcQFormLayout_protectedbase_widgetEvent(self: pointer, param1: pointer): void {.importc: "QFormLayout_protectedbase_widgetEvent".}
proc fcQFormLayout_protectedbase_addChildLayout(self: pointer, l: pointer): void {.importc: "QFormLayout_protectedbase_addChildLayout".}
proc fcQFormLayout_protectedbase_addChildWidget(self: pointer, w: pointer): void {.importc: "QFormLayout_protectedbase_addChildWidget".}
proc fcQFormLayout_protectedbase_adoptLayout(self: pointer, layout: pointer): bool {.importc: "QFormLayout_protectedbase_adoptLayout".}
proc fcQFormLayout_protectedbase_alignmentRect(self: pointer, param1: pointer): pointer {.importc: "QFormLayout_protectedbase_alignmentRect".}
proc fcQFormLayout_protectedbase_sender(self: pointer): pointer {.importc: "QFormLayout_protectedbase_sender".}
proc fcQFormLayout_protectedbase_senderSignalIndex(self: pointer): cint {.importc: "QFormLayout_protectedbase_senderSignalIndex".}
proc fcQFormLayout_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QFormLayout_protectedbase_receivers".}
proc fcQFormLayout_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QFormLayout_protectedbase_isSignalConnected".}
proc fcQFormLayout_new(vtbl, vdata: pointer, parent: pointer): ptr cQFormLayout {.importc: "QFormLayout_new".}
proc fcQFormLayout_new2(vtbl, vdata: pointer): ptr cQFormLayout {.importc: "QFormLayout_new2".}
proc fcQFormLayout_staticMetaObject(): pointer {.importc: "QFormLayout_staticMetaObject".}

proc metaObject*(self: gen_qformlayout_types.QFormLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFormLayout_metaObject(self.h), owned: false)

proc metacast*(self: gen_qformlayout_types.QFormLayout, param1: cstring): pointer =
  fcQFormLayout_metacast(self.h, param1)

proc metacall*(self: gen_qformlayout_types.QFormLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQFormLayout_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qformlayout_types.QFormLayout, s: cstring): string =
  let v_ms = fcQFormLayout_tr(s)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc setFieldGrowthPolicy*(self: gen_qformlayout_types.QFormLayout, policy: cint): void =
  fcQFormLayout_setFieldGrowthPolicy(self.h, cint(policy))

proc fieldGrowthPolicy*(self: gen_qformlayout_types.QFormLayout): cint =
  cint(fcQFormLayout_fieldGrowthPolicy(self.h))

proc setRowWrapPolicy*(self: gen_qformlayout_types.QFormLayout, policy: cint): void =
  fcQFormLayout_setRowWrapPolicy(self.h, cint(policy))

proc rowWrapPolicy*(self: gen_qformlayout_types.QFormLayout): cint =
  cint(fcQFormLayout_rowWrapPolicy(self.h))

proc setLabelAlignment*(self: gen_qformlayout_types.QFormLayout, alignment: cint): void =
  fcQFormLayout_setLabelAlignment(self.h, cint(alignment))

proc labelAlignment*(self: gen_qformlayout_types.QFormLayout): cint =
  cint(fcQFormLayout_labelAlignment(self.h))

proc setFormAlignment*(self: gen_qformlayout_types.QFormLayout, alignment: cint): void =
  fcQFormLayout_setFormAlignment(self.h, cint(alignment))

proc formAlignment*(self: gen_qformlayout_types.QFormLayout): cint =
  cint(fcQFormLayout_formAlignment(self.h))

proc setHorizontalSpacing*(self: gen_qformlayout_types.QFormLayout, spacing: cint): void =
  fcQFormLayout_setHorizontalSpacing(self.h, spacing)

proc horizontalSpacing*(self: gen_qformlayout_types.QFormLayout): cint =
  fcQFormLayout_horizontalSpacing(self.h)

proc setVerticalSpacing*(self: gen_qformlayout_types.QFormLayout, spacing: cint): void =
  fcQFormLayout_setVerticalSpacing(self.h, spacing)

proc verticalSpacing*(self: gen_qformlayout_types.QFormLayout): cint =
  fcQFormLayout_verticalSpacing(self.h)

proc spacing*(self: gen_qformlayout_types.QFormLayout): cint =
  fcQFormLayout_spacing(self.h)

proc setSpacing*(self: gen_qformlayout_types.QFormLayout, spacing: cint): void =
  fcQFormLayout_setSpacing(self.h, spacing)

proc addRow*(self: gen_qformlayout_types.QFormLayout, label: gen_qwidget_types.QWidget, field: gen_qwidget_types.QWidget): void =
  fcQFormLayout_addRow(self.h, label.h, field.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, label: gen_qwidget_types.QWidget, field: gen_qlayout_types.QLayout): void =
  fcQFormLayout_addRow2(self.h, label.h, field.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, labelText: openArray[char], field: gen_qwidget_types.QWidget): void =
  fcQFormLayout_addRow3(self.h, struct_miqt_string(data: if len(labelText) > 0: addr labelText[0] else: nil, len: csize_t(len(labelText))), field.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, labelText: openArray[char], field: gen_qlayout_types.QLayout): void =
  fcQFormLayout_addRow4(self.h, struct_miqt_string(data: if len(labelText) > 0: addr labelText[0] else: nil, len: csize_t(len(labelText))), field.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, widget: gen_qwidget_types.QWidget): void =
  fcQFormLayout_addRowWithWidget(self.h, widget.h)

proc addRow*(self: gen_qformlayout_types.QFormLayout, layout: gen_qlayout_types.QLayout): void =
  fcQFormLayout_addRowWithLayout(self.h, layout.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, label: gen_qwidget_types.QWidget, field: gen_qwidget_types.QWidget): void =
  fcQFormLayout_insertRow(self.h, row, label.h, field.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, label: gen_qwidget_types.QWidget, field: gen_qlayout_types.QLayout): void =
  fcQFormLayout_insertRow2(self.h, row, label.h, field.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, labelText: openArray[char], field: gen_qwidget_types.QWidget): void =
  fcQFormLayout_insertRow3(self.h, row, struct_miqt_string(data: if len(labelText) > 0: addr labelText[0] else: nil, len: csize_t(len(labelText))), field.h)

proc insertRow*(self: gen_qformlayout_types.QFormLayout, row: cint, labelText: openArray[char], field: gen_qlayout_types.QLayout): void =
  fcQFormLayout_insertRow4(self.h, row, struct_miqt_string(data: if len(labelText) > 0: addr labelText[0] else: nil, len: csize_t(len(labelText))), field.h)

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
  gen_qformlayout_types.QFormLayoutTakeRowResult(h: fcQFormLayout_takeRow(self.h, row), owned: true)

proc takeRow*(self: gen_qformlayout_types.QFormLayout, widget: gen_qwidget_types.QWidget): gen_qformlayout_types.QFormLayoutTakeRowResult =
  gen_qformlayout_types.QFormLayoutTakeRowResult(h: fcQFormLayout_takeRowWithWidget(self.h, widget.h), owned: true)

proc takeRow*(self: gen_qformlayout_types.QFormLayout, layout: gen_qlayout_types.QLayout): gen_qformlayout_types.QFormLayoutTakeRowResult =
  gen_qformlayout_types.QFormLayoutTakeRowResult(h: fcQFormLayout_takeRowWithLayout(self.h, layout.h), owned: true)

proc setItem*(self: gen_qformlayout_types.QFormLayout, row: cint, role: cint, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQFormLayout_setItem(self.h, row, cint(role), item.h)

proc setWidget*(self: gen_qformlayout_types.QFormLayout, row: cint, role: cint, widget: gen_qwidget_types.QWidget): void =
  fcQFormLayout_setWidget(self.h, row, cint(role), widget.h)

proc setLayout*(self: gen_qformlayout_types.QFormLayout, row: cint, role: cint, layout: gen_qlayout_types.QLayout): void =
  fcQFormLayout_setLayout(self.h, row, cint(role), layout.h)

proc setRowVisible*(self: gen_qformlayout_types.QFormLayout, row: cint, on: bool): void =
  fcQFormLayout_setRowVisible(self.h, row, on)

proc setRowVisible*(self: gen_qformlayout_types.QFormLayout, widget: gen_qwidget_types.QWidget, on: bool): void =
  fcQFormLayout_setRowVisible2(self.h, widget.h, on)

proc setRowVisible*(self: gen_qformlayout_types.QFormLayout, layout: gen_qlayout_types.QLayout, on: bool): void =
  fcQFormLayout_setRowVisible3(self.h, layout.h, on)

proc isRowVisible*(self: gen_qformlayout_types.QFormLayout, row: cint): bool =
  fcQFormLayout_isRowVisible(self.h, row)

proc isRowVisible*(self: gen_qformlayout_types.QFormLayout, widget: gen_qwidget_types.QWidget): bool =
  fcQFormLayout_isRowVisibleWithWidget(self.h, widget.h)

proc isRowVisible*(self: gen_qformlayout_types.QFormLayout, layout: gen_qlayout_types.QLayout): bool =
  fcQFormLayout_isRowVisibleWithLayout(self.h, layout.h)

proc itemAt*(self: gen_qformlayout_types.QFormLayout, row: cint, role: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_itemAt(self.h, row, cint(role)), owned: false)

proc labelForField*(self: gen_qformlayout_types.QFormLayout, field: gen_qwidget_types.QWidget): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFormLayout_labelForField(self.h, field.h), owned: false)

proc labelForField*(self: gen_qformlayout_types.QFormLayout, field: gen_qlayout_types.QLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFormLayout_labelForFieldWithField(self.h, field.h), owned: false)

proc addItem*(self: gen_qformlayout_types.QFormLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQFormLayout_addItem(self.h, item.h)

proc itemAt*(self: gen_qformlayout_types.QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_itemAtWithIndex(self.h, index), owned: false)

proc takeAt*(self: gen_qformlayout_types.QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_takeAt(self.h, index), owned: false)

proc setGeometry*(self: gen_qformlayout_types.QFormLayout, rect: gen_qrect_types.QRect): void =
  fcQFormLayout_setGeometry(self.h, rect.h)

proc minimumSize*(self: gen_qformlayout_types.QFormLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFormLayout_minimumSize(self.h), owned: true)

proc sizeHint*(self: gen_qformlayout_types.QFormLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFormLayout_sizeHint(self.h), owned: true)

proc invalidate*(self: gen_qformlayout_types.QFormLayout): void =
  fcQFormLayout_invalidate(self.h)

proc hasHeightForWidth*(self: gen_qformlayout_types.QFormLayout): bool =
  fcQFormLayout_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qformlayout_types.QFormLayout, width: cint): cint =
  fcQFormLayout_heightForWidth(self.h, width)

proc expandingDirections*(self: gen_qformlayout_types.QFormLayout): cint =
  cint(fcQFormLayout_expandingDirections(self.h))

proc count*(self: gen_qformlayout_types.QFormLayout): cint =
  fcQFormLayout_count(self.h)

proc rowCount*(self: gen_qformlayout_types.QFormLayout): cint =
  fcQFormLayout_rowCount(self.h)

proc tr*(_: type gen_qformlayout_types.QFormLayout, s: cstring, c: cstring): string =
  let v_ms = fcQFormLayout_tr2(s, c)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qformlayout_types.QFormLayout, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQFormLayout_tr3(s, c, n)
  let vx_ret = string.fromBytes(v_ms)
  c_free(v_ms.data)
  vx_ret

type QFormLayoutmetaObjectProc* = proc(self: QFormLayout): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QFormLayoutmetacastProc* = proc(self: QFormLayout, param1: cstring): pointer {.raises: [], gcsafe.}
type QFormLayoutmetacallProc* = proc(self: QFormLayout, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QFormLayoutspacingProc* = proc(self: QFormLayout): cint {.raises: [], gcsafe.}
type QFormLayoutsetSpacingProc* = proc(self: QFormLayout, spacing: cint): void {.raises: [], gcsafe.}
type QFormLayoutaddItemProc* = proc(self: QFormLayout, item: gen_qlayoutitem_types.QLayoutItem): void {.raises: [], gcsafe.}
type QFormLayoutitemAtWithIndexProc* = proc(self: QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QFormLayouttakeAtProc* = proc(self: QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QFormLayoutsetGeometryProc* = proc(self: QFormLayout, rect: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QFormLayoutminimumSizeProc* = proc(self: QFormLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFormLayoutsizeHintProc* = proc(self: QFormLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFormLayoutinvalidateProc* = proc(self: QFormLayout): void {.raises: [], gcsafe.}
type QFormLayouthasHeightForWidthProc* = proc(self: QFormLayout): bool {.raises: [], gcsafe.}
type QFormLayoutheightForWidthProc* = proc(self: QFormLayout, width: cint): cint {.raises: [], gcsafe.}
type QFormLayoutexpandingDirectionsProc* = proc(self: QFormLayout): cint {.raises: [], gcsafe.}
type QFormLayoutcountProc* = proc(self: QFormLayout): cint {.raises: [], gcsafe.}
type QFormLayoutgeometryProc* = proc(self: QFormLayout): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QFormLayoutmaximumSizeProc* = proc(self: QFormLayout): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QFormLayoutindexOfProc* = proc(self: QFormLayout, param1: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QFormLayoutisEmptyProc* = proc(self: QFormLayout): bool {.raises: [], gcsafe.}
type QFormLayoutcontrolTypesProc* = proc(self: QFormLayout): cint {.raises: [], gcsafe.}
type QFormLayoutreplaceWidgetProc* = proc(self: QFormLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.raises: [], gcsafe.}
type QFormLayoutlayoutProc* = proc(self: QFormLayout): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QFormLayoutchildEventProc* = proc(self: QFormLayout, e: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QFormLayouteventProc* = proc(self: QFormLayout, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFormLayouteventFilterProc* = proc(self: QFormLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QFormLayouttimerEventProc* = proc(self: QFormLayout, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QFormLayoutcustomEventProc* = proc(self: QFormLayout, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QFormLayoutconnectNotifyProc* = proc(self: QFormLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFormLayoutdisconnectNotifyProc* = proc(self: QFormLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QFormLayoutminimumHeightForWidthProc* = proc(self: QFormLayout, param1: cint): cint {.raises: [], gcsafe.}
type QFormLayoutwidgetProc* = proc(self: QFormLayout): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QFormLayoutspacerItemProc* = proc(self: QFormLayout): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}
type QFormLayoutVTable* {.inheritable, pure.} = object
  vtbl: cQFormLayoutVTable
  metaObject*: QFormLayoutmetaObjectProc
  metacast*: QFormLayoutmetacastProc
  metacall*: QFormLayoutmetacallProc
  spacing*: QFormLayoutspacingProc
  setSpacing*: QFormLayoutsetSpacingProc
  addItem*: QFormLayoutaddItemProc
  itemAtWithIndex*: QFormLayoutitemAtWithIndexProc
  takeAt*: QFormLayouttakeAtProc
  setGeometry*: QFormLayoutsetGeometryProc
  minimumSize*: QFormLayoutminimumSizeProc
  sizeHint*: QFormLayoutsizeHintProc
  invalidate*: QFormLayoutinvalidateProc
  hasHeightForWidth*: QFormLayouthasHeightForWidthProc
  heightForWidth*: QFormLayoutheightForWidthProc
  expandingDirections*: QFormLayoutexpandingDirectionsProc
  count*: QFormLayoutcountProc
  geometry*: QFormLayoutgeometryProc
  maximumSize*: QFormLayoutmaximumSizeProc
  indexOf*: QFormLayoutindexOfProc
  isEmpty*: QFormLayoutisEmptyProc
  controlTypes*: QFormLayoutcontrolTypesProc
  replaceWidget*: QFormLayoutreplaceWidgetProc
  layout*: QFormLayoutlayoutProc
  childEvent*: QFormLayoutchildEventProc
  event*: QFormLayouteventProc
  eventFilter*: QFormLayouteventFilterProc
  timerEvent*: QFormLayouttimerEventProc
  customEvent*: QFormLayoutcustomEventProc
  connectNotify*: QFormLayoutconnectNotifyProc
  disconnectNotify*: QFormLayoutdisconnectNotifyProc
  minimumHeightForWidth*: QFormLayoutminimumHeightForWidthProc
  widget*: QFormLayoutwidgetProc
  spacerItem*: QFormLayoutspacerItemProc
proc QFormLayoutmetaObject*(self: gen_qformlayout_types.QFormLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFormLayout_virtualbase_metaObject(self.h), owned: false)

proc cQFormLayout_vtable_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutmetacast*(self: gen_qformlayout_types.QFormLayout, param1: cstring): pointer =
  fcQFormLayout_virtualbase_metacast(self.h, param1)

proc cQFormLayout_vtable_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QFormLayoutmetacall*(self: gen_qformlayout_types.QFormLayout, param1: cint, param2: cint, param3: pointer): cint =
  fcQFormLayout_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc cQFormLayout_vtable_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QFormLayoutspacing*(self: gen_qformlayout_types.QFormLayout): cint =
  fcQFormLayout_virtualbase_spacing(self.h)

proc cQFormLayout_vtable_callback_spacing(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].spacing(self)
  virtualReturn

proc QFormLayoutsetSpacing*(self: gen_qformlayout_types.QFormLayout, spacing: cint): void =
  fcQFormLayout_virtualbase_setSpacing(self.h, spacing)

proc cQFormLayout_vtable_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = spacing
  vtbl[].setSpacing(self, slotval1)

proc QFormLayoutaddItem*(self: gen_qformlayout_types.QFormLayout, item: gen_qlayoutitem_types.QLayoutItem): void =
  fcQFormLayout_virtualbase_addItem(self.h, item.h)

proc cQFormLayout_vtable_callback_addItem(self: pointer, item: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item, owned: false)
  vtbl[].addItem(self, slotval1)

proc QFormLayoutitemAt*(self: gen_qformlayout_types.QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_virtualbase_itemAtWithIndex(self.h, index), owned: false)

proc cQFormLayout_vtable_callback_itemAtWithIndex(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].itemAtWithIndex(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayouttakeAt*(self: gen_qformlayout_types.QFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_virtualbase_takeAt(self.h, index), owned: false)

proc cQFormLayout_vtable_callback_takeAt(self: pointer, index: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = index
  var virtualReturn = vtbl[].takeAt(self, slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutsetGeometry*(self: gen_qformlayout_types.QFormLayout, rect: gen_qrect_types.QRect): void =
  fcQFormLayout_virtualbase_setGeometry(self.h, rect.h)

proc cQFormLayout_vtable_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc QFormLayoutminimumSize*(self: gen_qformlayout_types.QFormLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFormLayout_virtualbase_minimumSize(self.h), owned: true)

proc cQFormLayout_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutsizeHint*(self: gen_qformlayout_types.QFormLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFormLayout_virtualbase_sizeHint(self.h), owned: true)

proc cQFormLayout_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutinvalidate*(self: gen_qformlayout_types.QFormLayout): void =
  fcQFormLayout_virtualbase_invalidate(self.h)

proc cQFormLayout_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  vtbl[].invalidate(self)

proc QFormLayouthasHeightForWidth*(self: gen_qformlayout_types.QFormLayout): bool =
  fcQFormLayout_virtualbase_hasHeightForWidth(self.h)

proc cQFormLayout_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QFormLayoutheightForWidth*(self: gen_qformlayout_types.QFormLayout, width: cint): cint =
  fcQFormLayout_virtualbase_heightForWidth(self.h, width)

proc cQFormLayout_vtable_callback_heightForWidth(self: pointer, width: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = width
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QFormLayoutexpandingDirections*(self: gen_qformlayout_types.QFormLayout): cint =
  cint(fcQFormLayout_virtualbase_expandingDirections(self.h))

proc cQFormLayout_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QFormLayoutcount*(self: gen_qformlayout_types.QFormLayout): cint =
  fcQFormLayout_virtualbase_count(self.h)

proc cQFormLayout_vtable_callback_count(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].count(self)
  virtualReturn

proc QFormLayoutgeometry*(self: gen_qformlayout_types.QFormLayout): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFormLayout_virtualbase_geometry(self.h), owned: true)

proc cQFormLayout_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutmaximumSize*(self: gen_qformlayout_types.QFormLayout): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQFormLayout_virtualbase_maximumSize(self.h), owned: true)

proc cQFormLayout_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutindexOf*(self: gen_qformlayout_types.QFormLayout, param1: gen_qwidget_types.QWidget): cint =
  fcQFormLayout_virtualbase_indexOf(self.h, param1.h)

proc cQFormLayout_vtable_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = vtbl[].indexOf(self, slotval1)
  virtualReturn

proc QFormLayoutisEmpty*(self: gen_qformlayout_types.QFormLayout): bool =
  fcQFormLayout_virtualbase_isEmpty(self.h)

proc cQFormLayout_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QFormLayoutcontrolTypes*(self: gen_qformlayout_types.QFormLayout): cint =
  cint(fcQFormLayout_virtualbase_controlTypes(self.h))

proc cQFormLayout_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QFormLayoutreplaceWidget*(self: gen_qformlayout_types.QFormLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem =
  gen_qlayoutitem_types.QLayoutItem(h: fcQFormLayout_virtualbase_replaceWidget(self.h, fromVal.h, to.h, cint(options)), owned: false)

proc cQFormLayout_vtable_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = vtbl[].replaceWidget(self, slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutlayout*(self: gen_qformlayout_types.QFormLayout): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQFormLayout_virtualbase_layout(self.h), owned: false)

proc cQFormLayout_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutchildEvent*(self: gen_qformlayout_types.QFormLayout, e: gen_qcoreevent_types.QChildEvent): void =
  fcQFormLayout_virtualbase_childEvent(self.h, e.h)

proc cQFormLayout_vtable_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  vtbl[].childEvent(self, slotval1)

proc QFormLayoutevent*(self: gen_qformlayout_types.QFormLayout, event: gen_qcoreevent_types.QEvent): bool =
  fcQFormLayout_virtualbase_event(self.h, event.h)

proc cQFormLayout_vtable_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QFormLayouteventFilter*(self: gen_qformlayout_types.QFormLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQFormLayout_virtualbase_eventFilter(self.h, watched.h, event.h)

proc cQFormLayout_vtable_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QFormLayouttimerEvent*(self: gen_qformlayout_types.QFormLayout, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQFormLayout_virtualbase_timerEvent(self.h, event.h)

proc cQFormLayout_vtable_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  vtbl[].timerEvent(self, slotval1)

proc QFormLayoutcustomEvent*(self: gen_qformlayout_types.QFormLayout, event: gen_qcoreevent_types.QEvent): void =
  fcQFormLayout_virtualbase_customEvent(self.h, event.h)

proc cQFormLayout_vtable_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  vtbl[].customEvent(self, slotval1)

proc QFormLayoutconnectNotify*(self: gen_qformlayout_types.QFormLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFormLayout_virtualbase_connectNotify(self.h, signal.h)

proc cQFormLayout_vtable_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].connectNotify(self, slotval1)

proc QFormLayoutdisconnectNotify*(self: gen_qformlayout_types.QFormLayout, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQFormLayout_virtualbase_disconnectNotify(self.h, signal.h)

proc cQFormLayout_vtable_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  vtbl[].disconnectNotify(self, slotval1)

proc QFormLayoutminimumHeightForWidth*(self: gen_qformlayout_types.QFormLayout, param1: cint): cint =
  fcQFormLayout_virtualbase_minimumHeightForWidth(self.h, param1)

proc cQFormLayout_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QFormLayoutwidget*(self: gen_qformlayout_types.QFormLayout): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQFormLayout_virtualbase_widget(self.h), owned: false)

proc cQFormLayout_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc QFormLayoutspacerItem*(self: gen_qformlayout_types.QFormLayout): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQFormLayout_virtualbase_spacerItem(self.h), owned: false)

proc cQFormLayout_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFormLayoutVTable](fcQFormLayout_vdata(self))
  let self = QFormLayout(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQFormLayout* {.inheritable.} = ref object of QFormLayout
  vtbl*: cQFormLayoutVTable
method metaObject*(self: VirtualQFormLayout): gen_qobjectdefs_types.QMetaObject {.base.} =
  QFormLayoutmetaObject(self[])
proc cQFormLayout_method_callback_metaObject(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.metaObject()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method metacast*(self: VirtualQFormLayout, param1: cstring): pointer {.base.} =
  QFormLayoutmetacast(self[], param1)
proc cQFormLayout_method_callback_metacast(self: pointer, param1: cstring): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = (param1)
  var virtualReturn = inst.metacast(slotval1)
  virtualReturn

method metacall*(self: VirtualQFormLayout, param1: cint, param2: cint, param3: pointer): cint {.base.} =
  QFormLayoutmetacall(self[], param1, param2, param3)
proc cQFormLayout_method_callback_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = inst.metacall(slotval1, slotval2, slotval3)
  virtualReturn

method spacing*(self: VirtualQFormLayout): cint {.base.} =
  QFormLayoutspacing(self[])
proc cQFormLayout_method_callback_spacing(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.spacing()
  virtualReturn

method setSpacing*(self: VirtualQFormLayout, spacing: cint): void {.base.} =
  QFormLayoutsetSpacing(self[], spacing)
proc cQFormLayout_method_callback_setSpacing(self: pointer, spacing: cint): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = spacing
  inst.setSpacing(slotval1)

method addItem*(self: VirtualQFormLayout, item: gen_qlayoutitem_types.QLayoutItem): void {.base.} =
  QFormLayoutaddItem(self[], item)
proc cQFormLayout_method_callback_addItem(self: pointer, item: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qlayoutitem_types.QLayoutItem(h: item, owned: false)
  inst.addItem(slotval1)

method itemAt*(self: VirtualQFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QFormLayoutitemAt(self[], index)
proc cQFormLayout_method_callback_itemAtWithIndex(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = index
  var virtualReturn = inst.itemAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method takeAt*(self: VirtualQFormLayout, index: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QFormLayouttakeAt(self[], index)
proc cQFormLayout_method_callback_takeAt(self: pointer, index: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = index
  var virtualReturn = inst.takeAt(slotval1)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method setGeometry*(self: VirtualQFormLayout, rect: gen_qrect_types.QRect): void {.base.} =
  QFormLayoutsetGeometry(self[], rect)
proc cQFormLayout_method_callback_setGeometry(self: pointer, rect: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: rect, owned: false)
  inst.setGeometry(slotval1)

method minimumSize*(self: VirtualQFormLayout): gen_qsize_types.QSize {.base.} =
  QFormLayoutminimumSize(self[])
proc cQFormLayout_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method sizeHint*(self: VirtualQFormLayout): gen_qsize_types.QSize {.base.} =
  QFormLayoutsizeHint(self[])
proc cQFormLayout_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method invalidate*(self: VirtualQFormLayout): void {.base.} =
  QFormLayoutinvalidate(self[])
proc cQFormLayout_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  inst.invalidate()

method hasHeightForWidth*(self: VirtualQFormLayout): bool {.base.} =
  QFormLayouthasHeightForWidth(self[])
proc cQFormLayout_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

method heightForWidth*(self: VirtualQFormLayout, width: cint): cint {.base.} =
  QFormLayoutheightForWidth(self[], width)
proc cQFormLayout_method_callback_heightForWidth(self: pointer, width: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = width
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

method expandingDirections*(self: VirtualQFormLayout): cint {.base.} =
  QFormLayoutexpandingDirections(self[])
proc cQFormLayout_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

method count*(self: VirtualQFormLayout): cint {.base.} =
  QFormLayoutcount(self[])
proc cQFormLayout_method_callback_count(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.count()
  virtualReturn

method geometry*(self: VirtualQFormLayout): gen_qrect_types.QRect {.base.} =
  QFormLayoutgeometry(self[])
proc cQFormLayout_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method maximumSize*(self: VirtualQFormLayout): gen_qsize_types.QSize {.base.} =
  QFormLayoutmaximumSize(self[])
proc cQFormLayout_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method indexOf*(self: VirtualQFormLayout, param1: gen_qwidget_types.QWidget): cint {.base.} =
  QFormLayoutindexOf(self[], param1)
proc cQFormLayout_method_callback_indexOf(self: pointer, param1: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: param1, owned: false)
  var virtualReturn = inst.indexOf(slotval1)
  virtualReturn

method isEmpty*(self: VirtualQFormLayout): bool {.base.} =
  QFormLayoutisEmpty(self[])
proc cQFormLayout_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

method controlTypes*(self: VirtualQFormLayout): cint {.base.} =
  QFormLayoutcontrolTypes(self[])
proc cQFormLayout_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

method replaceWidget*(self: VirtualQFormLayout, fromVal: gen_qwidget_types.QWidget, to: gen_qwidget_types.QWidget, options: cint): gen_qlayoutitem_types.QLayoutItem {.base.} =
  QFormLayoutreplaceWidget(self[], fromVal, to, options)
proc cQFormLayout_method_callback_replaceWidget(self: pointer, fromVal: pointer, to: pointer, options: cint): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qwidget_types.QWidget(h: fromVal, owned: false)
  let slotval2 = gen_qwidget_types.QWidget(h: to, owned: false)
  let slotval3 = cint(options)
  var virtualReturn = inst.replaceWidget(slotval1, slotval2, slotval3)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method layout*(self: VirtualQFormLayout): gen_qlayout_types.QLayout {.base.} =
  QFormLayoutlayout(self[])
proc cQFormLayout_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method childEvent*(self: VirtualQFormLayout, e: gen_qcoreevent_types.QChildEvent): void {.base.} =
  QFormLayoutchildEvent(self[], e)
proc cQFormLayout_method_callback_childEvent(self: pointer, e: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: e, owned: false)
  inst.childEvent(slotval1)

method event*(self: VirtualQFormLayout, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFormLayoutevent(self[], event)
proc cQFormLayout_method_callback_event(self: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.event(slotval1)
  virtualReturn

method eventFilter*(self: VirtualQFormLayout, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.base.} =
  QFormLayouteventFilter(self[], watched, event)
proc cQFormLayout_method_callback_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qobject_types.QObject(h: watched, owned: false)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  var virtualReturn = inst.eventFilter(slotval1, slotval2)
  virtualReturn

method timerEvent*(self: VirtualQFormLayout, event: gen_qcoreevent_types.QTimerEvent): void {.base.} =
  QFormLayouttimerEvent(self[], event)
proc cQFormLayout_method_callback_timerEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event, owned: false)
  inst.timerEvent(slotval1)

method customEvent*(self: VirtualQFormLayout, event: gen_qcoreevent_types.QEvent): void {.base.} =
  QFormLayoutcustomEvent(self[], event)
proc cQFormLayout_method_callback_customEvent(self: pointer, event: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event, owned: false)
  inst.customEvent(slotval1)

method connectNotify*(self: VirtualQFormLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFormLayoutconnectNotify(self[], signal)
proc cQFormLayout_method_callback_connectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.connectNotify(slotval1)

method disconnectNotify*(self: VirtualQFormLayout, signal: gen_qmetaobject_types.QMetaMethod): void {.base.} =
  QFormLayoutdisconnectNotify(self[], signal)
proc cQFormLayout_method_callback_disconnectNotify(self: pointer, signal: pointer): void {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal, owned: false)
  inst.disconnectNotify(slotval1)

method minimumHeightForWidth*(self: VirtualQFormLayout, param1: cint): cint {.base.} =
  QFormLayoutminimumHeightForWidth(self[], param1)
proc cQFormLayout_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

method widget*(self: VirtualQFormLayout): gen_qwidget_types.QWidget {.base.} =
  QFormLayoutwidget(self[])
proc cQFormLayout_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

method spacerItem*(self: VirtualQFormLayout): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QFormLayoutspacerItem(self[])
proc cQFormLayout_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQFormLayout](fcQFormLayout_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc widgetEvent*(self: gen_qformlayout_types.QFormLayout, param1: gen_qcoreevent_types.QEvent): void =
  fcQFormLayout_protectedbase_widgetEvent(self.h, param1.h)

proc addChildLayout*(self: gen_qformlayout_types.QFormLayout, l: gen_qlayout_types.QLayout): void =
  fcQFormLayout_protectedbase_addChildLayout(self.h, l.h)

proc addChildWidget*(self: gen_qformlayout_types.QFormLayout, w: gen_qwidget_types.QWidget): void =
  fcQFormLayout_protectedbase_addChildWidget(self.h, w.h)

proc adoptLayout*(self: gen_qformlayout_types.QFormLayout, layout: gen_qlayout_types.QLayout): bool =
  fcQFormLayout_protectedbase_adoptLayout(self.h, layout.h)

proc alignmentRect*(self: gen_qformlayout_types.QFormLayout, param1: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQFormLayout_protectedbase_alignmentRect(self.h, param1.h), owned: true)

proc sender*(self: gen_qformlayout_types.QFormLayout): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQFormLayout_protectedbase_sender(self.h), owned: false)

proc senderSignalIndex*(self: gen_qformlayout_types.QFormLayout): cint =
  fcQFormLayout_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qformlayout_types.QFormLayout, signal: cstring): cint =
  fcQFormLayout_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qformlayout_types.QFormLayout, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQFormLayout_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qformlayout_types.QFormLayout,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QFormLayoutVTable = nil): gen_qformlayout_types.QFormLayout =
  let vtbl = if vtbl == nil: new QFormLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFormLayoutVTable](fcQFormLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFormLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFormLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFormLayout_vtable_callback_metacall
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = cQFormLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = cQFormLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = cQFormLayout_vtable_callback_addItem
  if not isNil(vtbl[].itemAtWithIndex):
    vtbl[].vtbl.itemAtWithIndex = cQFormLayout_vtable_callback_itemAtWithIndex
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = cQFormLayout_vtable_callback_takeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQFormLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = cQFormLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFormLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = cQFormLayout_vtable_callback_invalidate
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFormLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFormLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = cQFormLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = cQFormLayout_vtable_callback_count
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = cQFormLayout_vtable_callback_geometry
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = cQFormLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = cQFormLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQFormLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = cQFormLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = cQFormLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = cQFormLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFormLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFormLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFormLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFormLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFormLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFormLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFormLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = cQFormLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = cQFormLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = cQFormLayout_vtable_callback_spacerItem
  gen_qformlayout_types.QFormLayout(h: fcQFormLayout_new(addr(vtbl[].vtbl), addr(vtbl[]), parent.h), owned: true)

proc create*(T: type gen_qformlayout_types.QFormLayout,
    vtbl: ref QFormLayoutVTable = nil): gen_qformlayout_types.QFormLayout =
  let vtbl = if vtbl == nil: new QFormLayoutVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QFormLayoutVTable](fcQFormLayout_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].metaObject):
    vtbl[].vtbl.metaObject = cQFormLayout_vtable_callback_metaObject
  if not isNil(vtbl[].metacast):
    vtbl[].vtbl.metacast = cQFormLayout_vtable_callback_metacast
  if not isNil(vtbl[].metacall):
    vtbl[].vtbl.metacall = cQFormLayout_vtable_callback_metacall
  if not isNil(vtbl[].spacing):
    vtbl[].vtbl.spacing = cQFormLayout_vtable_callback_spacing
  if not isNil(vtbl[].setSpacing):
    vtbl[].vtbl.setSpacing = cQFormLayout_vtable_callback_setSpacing
  if not isNil(vtbl[].addItem):
    vtbl[].vtbl.addItem = cQFormLayout_vtable_callback_addItem
  if not isNil(vtbl[].itemAtWithIndex):
    vtbl[].vtbl.itemAtWithIndex = cQFormLayout_vtable_callback_itemAtWithIndex
  if not isNil(vtbl[].takeAt):
    vtbl[].vtbl.takeAt = cQFormLayout_vtable_callback_takeAt
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = cQFormLayout_vtable_callback_setGeometry
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = cQFormLayout_vtable_callback_minimumSize
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = cQFormLayout_vtable_callback_sizeHint
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = cQFormLayout_vtable_callback_invalidate
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = cQFormLayout_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = cQFormLayout_vtable_callback_heightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = cQFormLayout_vtable_callback_expandingDirections
  if not isNil(vtbl[].count):
    vtbl[].vtbl.count = cQFormLayout_vtable_callback_count
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = cQFormLayout_vtable_callback_geometry
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = cQFormLayout_vtable_callback_maximumSize
  if not isNil(vtbl[].indexOf):
    vtbl[].vtbl.indexOf = cQFormLayout_vtable_callback_indexOf
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = cQFormLayout_vtable_callback_isEmpty
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = cQFormLayout_vtable_callback_controlTypes
  if not isNil(vtbl[].replaceWidget):
    vtbl[].vtbl.replaceWidget = cQFormLayout_vtable_callback_replaceWidget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = cQFormLayout_vtable_callback_layout
  if not isNil(vtbl[].childEvent):
    vtbl[].vtbl.childEvent = cQFormLayout_vtable_callback_childEvent
  if not isNil(vtbl[].event):
    vtbl[].vtbl.event = cQFormLayout_vtable_callback_event
  if not isNil(vtbl[].eventFilter):
    vtbl[].vtbl.eventFilter = cQFormLayout_vtable_callback_eventFilter
  if not isNil(vtbl[].timerEvent):
    vtbl[].vtbl.timerEvent = cQFormLayout_vtable_callback_timerEvent
  if not isNil(vtbl[].customEvent):
    vtbl[].vtbl.customEvent = cQFormLayout_vtable_callback_customEvent
  if not isNil(vtbl[].connectNotify):
    vtbl[].vtbl.connectNotify = cQFormLayout_vtable_callback_connectNotify
  if not isNil(vtbl[].disconnectNotify):
    vtbl[].vtbl.disconnectNotify = cQFormLayout_vtable_callback_disconnectNotify
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = cQFormLayout_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = cQFormLayout_vtable_callback_widget
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = cQFormLayout_vtable_callback_spacerItem
  gen_qformlayout_types.QFormLayout(h: fcQFormLayout_new2(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

const cQFormLayout_mvtbl = cQFormLayoutVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQFormLayout()[])](self.fcQFormLayout_vtbl())
    inst[].h = nil
    inst[].owned = false,
  metaObject: cQFormLayout_method_callback_metaObject,
  metacast: cQFormLayout_method_callback_metacast,
  metacall: cQFormLayout_method_callback_metacall,
  spacing: cQFormLayout_method_callback_spacing,
  setSpacing: cQFormLayout_method_callback_setSpacing,
  addItem: cQFormLayout_method_callback_addItem,
  itemAtWithIndex: cQFormLayout_method_callback_itemAtWithIndex,
  takeAt: cQFormLayout_method_callback_takeAt,
  setGeometry: cQFormLayout_method_callback_setGeometry,
  minimumSize: cQFormLayout_method_callback_minimumSize,
  sizeHint: cQFormLayout_method_callback_sizeHint,
  invalidate: cQFormLayout_method_callback_invalidate,
  hasHeightForWidth: cQFormLayout_method_callback_hasHeightForWidth,
  heightForWidth: cQFormLayout_method_callback_heightForWidth,
  expandingDirections: cQFormLayout_method_callback_expandingDirections,
  count: cQFormLayout_method_callback_count,
  geometry: cQFormLayout_method_callback_geometry,
  maximumSize: cQFormLayout_method_callback_maximumSize,
  indexOf: cQFormLayout_method_callback_indexOf,
  isEmpty: cQFormLayout_method_callback_isEmpty,
  controlTypes: cQFormLayout_method_callback_controlTypes,
  replaceWidget: cQFormLayout_method_callback_replaceWidget,
  layout: cQFormLayout_method_callback_layout,
  childEvent: cQFormLayout_method_callback_childEvent,
  event: cQFormLayout_method_callback_event,
  eventFilter: cQFormLayout_method_callback_eventFilter,
  timerEvent: cQFormLayout_method_callback_timerEvent,
  customEvent: cQFormLayout_method_callback_customEvent,
  connectNotify: cQFormLayout_method_callback_connectNotify,
  disconnectNotify: cQFormLayout_method_callback_disconnectNotify,
  minimumHeightForWidth: cQFormLayout_method_callback_minimumHeightForWidth,
  widget: cQFormLayout_method_callback_widget,
  spacerItem: cQFormLayout_method_callback_spacerItem,
)
proc create*(T: type gen_qformlayout_types.QFormLayout,
    parent: gen_qwidget_types.QWidget,
    inst: VirtualQFormLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFormLayout_new(addr(cQFormLayout_mvtbl), addr(inst[]), parent.h)
  inst[].owned = true

proc create*(T: type gen_qformlayout_types.QFormLayout,
    inst: VirtualQFormLayout) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQFormLayout_new2(addr(cQFormLayout_mvtbl), addr(inst[]))
  inst[].owned = true

proc staticMetaObject*(_: type gen_qformlayout_types.QFormLayout): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQFormLayout_staticMetaObject())
