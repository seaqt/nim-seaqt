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


import ./gen_qlayoutitem_types
export gen_qlayoutitem_types

import
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ./gen_qlayout_types,
  ./gen_qsizepolicy_types,
  ./gen_qwidget_types
export
  gen_qrect_types,
  gen_qsize_types,
  gen_qlayout_types,
  gen_qsizepolicy_types,
  gen_qwidget_types

type cQLayoutItem*{.exportc: "QLayoutItem", incompleteStruct.} = object
type cQSpacerItem*{.exportc: "QSpacerItem", incompleteStruct.} = object
type cQWidgetItem*{.exportc: "QWidgetItem", incompleteStruct.} = object
type cQWidgetItemV2*{.exportc: "QWidgetItemV2", incompleteStruct.} = object

proc fcQLayoutItem_sizeHint(self: pointer): pointer {.importc: "QLayoutItem_sizeHint".}
proc fcQLayoutItem_minimumSize(self: pointer): pointer {.importc: "QLayoutItem_minimumSize".}
proc fcQLayoutItem_maximumSize(self: pointer): pointer {.importc: "QLayoutItem_maximumSize".}
proc fcQLayoutItem_expandingDirections(self: pointer): cint {.importc: "QLayoutItem_expandingDirections".}
proc fcQLayoutItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayoutItem_setGeometry".}
proc fcQLayoutItem_geometry(self: pointer): pointer {.importc: "QLayoutItem_geometry".}
proc fcQLayoutItem_isEmpty(self: pointer): bool {.importc: "QLayoutItem_isEmpty".}
proc fcQLayoutItem_hasHeightForWidth(self: pointer): bool {.importc: "QLayoutItem_hasHeightForWidth".}
proc fcQLayoutItem_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_heightForWidth".}
proc fcQLayoutItem_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_minimumHeightForWidth".}
proc fcQLayoutItem_invalidate(self: pointer): void {.importc: "QLayoutItem_invalidate".}
proc fcQLayoutItem_widget(self: pointer): pointer {.importc: "QLayoutItem_widget".}
proc fcQLayoutItem_layout(self: pointer): pointer {.importc: "QLayoutItem_layout".}
proc fcQLayoutItem_spacerItem(self: pointer): pointer {.importc: "QLayoutItem_spacerItem".}
proc fcQLayoutItem_alignment(self: pointer): cint {.importc: "QLayoutItem_alignment".}
proc fcQLayoutItem_setAlignment(self: pointer, a: cint): void {.importc: "QLayoutItem_setAlignment".}
proc fcQLayoutItem_controlTypes(self: pointer): cint {.importc: "QLayoutItem_controlTypes".}
proc fcQLayoutItem_vtbl(self: pointer): pointer {.importc: "QLayoutItem_vtbl".}
proc fcQLayoutItem_vdata(self: pointer): pointer {.importc: "QLayoutItem_vdata".}

type cQLayoutItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQLayoutItem_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QLayoutItem_virtualbase_hasHeightForWidth".}
proc fcQLayoutItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_virtualbase_heightForWidth".}
proc fcQLayoutItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_virtualbase_minimumHeightForWidth".}
proc fcQLayoutItem_virtualbase_invalidate(self: pointer): void {.importc: "QLayoutItem_virtualbase_invalidate".}
proc fcQLayoutItem_virtualbase_widget(self: pointer): pointer {.importc: "QLayoutItem_virtualbase_widget".}
proc fcQLayoutItem_virtualbase_layout(self: pointer): pointer {.importc: "QLayoutItem_virtualbase_layout".}
proc fcQLayoutItem_virtualbase_spacerItem(self: pointer): pointer {.importc: "QLayoutItem_virtualbase_spacerItem".}
proc fcQLayoutItem_virtualbase_controlTypes(self: pointer): cint {.importc: "QLayoutItem_virtualbase_controlTypes".}
proc fcQLayoutItem_new(vtbl, vdata: pointer): ptr cQLayoutItem {.importc: "QLayoutItem_new".}
proc fcQLayoutItem_new2(vtbl, vdata: pointer, param1: pointer): ptr cQLayoutItem {.importc: "QLayoutItem_new2".}
proc fcQLayoutItem_new3(vtbl, vdata: pointer, alignment: cint): ptr cQLayoutItem {.importc: "QLayoutItem_new3".}
proc fcQSpacerItem_changeSize(self: pointer, w: cint, h: cint): void {.importc: "QSpacerItem_changeSize".}
proc fcQSpacerItem_sizeHint(self: pointer): pointer {.importc: "QSpacerItem_sizeHint".}
proc fcQSpacerItem_minimumSize(self: pointer): pointer {.importc: "QSpacerItem_minimumSize".}
proc fcQSpacerItem_maximumSize(self: pointer): pointer {.importc: "QSpacerItem_maximumSize".}
proc fcQSpacerItem_expandingDirections(self: pointer): cint {.importc: "QSpacerItem_expandingDirections".}
proc fcQSpacerItem_isEmpty(self: pointer): bool {.importc: "QSpacerItem_isEmpty".}
proc fcQSpacerItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSpacerItem_setGeometry".}
proc fcQSpacerItem_geometry(self: pointer): pointer {.importc: "QSpacerItem_geometry".}
proc fcQSpacerItem_spacerItem(self: pointer): pointer {.importc: "QSpacerItem_spacerItem".}
proc fcQSpacerItem_sizePolicy(self: pointer): pointer {.importc: "QSpacerItem_sizePolicy".}
proc fcQSpacerItem_changeSize3(self: pointer, w: cint, h: cint, hData: cint): void {.importc: "QSpacerItem_changeSize3".}
proc fcQSpacerItem_changeSize4(self: pointer, w: cint, h: cint, hData: cint, vData: cint): void {.importc: "QSpacerItem_changeSize4".}
proc fcQSpacerItem_vtbl(self: pointer): pointer {.importc: "QSpacerItem_vtbl".}
proc fcQSpacerItem_vdata(self: pointer): pointer {.importc: "QSpacerItem_vdata".}

type cQSpacerItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
proc fcQSpacerItem_virtualbase_sizeHint(self: pointer): pointer {.importc: "QSpacerItem_virtualbase_sizeHint".}
proc fcQSpacerItem_virtualbase_minimumSize(self: pointer): pointer {.importc: "QSpacerItem_virtualbase_minimumSize".}
proc fcQSpacerItem_virtualbase_maximumSize(self: pointer): pointer {.importc: "QSpacerItem_virtualbase_maximumSize".}
proc fcQSpacerItem_virtualbase_expandingDirections(self: pointer): cint {.importc: "QSpacerItem_virtualbase_expandingDirections".}
proc fcQSpacerItem_virtualbase_isEmpty(self: pointer): bool {.importc: "QSpacerItem_virtualbase_isEmpty".}
proc fcQSpacerItem_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSpacerItem_virtualbase_setGeometry".}
proc fcQSpacerItem_virtualbase_geometry(self: pointer): pointer {.importc: "QSpacerItem_virtualbase_geometry".}
proc fcQSpacerItem_virtualbase_spacerItem(self: pointer): pointer {.importc: "QSpacerItem_virtualbase_spacerItem".}
proc fcQSpacerItem_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QSpacerItem_virtualbase_hasHeightForWidth".}
proc fcQSpacerItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSpacerItem_virtualbase_heightForWidth".}
proc fcQSpacerItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QSpacerItem_virtualbase_minimumHeightForWidth".}
proc fcQSpacerItem_virtualbase_invalidate(self: pointer): void {.importc: "QSpacerItem_virtualbase_invalidate".}
proc fcQSpacerItem_virtualbase_widget(self: pointer): pointer {.importc: "QSpacerItem_virtualbase_widget".}
proc fcQSpacerItem_virtualbase_layout(self: pointer): pointer {.importc: "QSpacerItem_virtualbase_layout".}
proc fcQSpacerItem_virtualbase_controlTypes(self: pointer): cint {.importc: "QSpacerItem_virtualbase_controlTypes".}
proc fcQSpacerItem_new(vtbl, vdata: pointer, w: cint, h: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new".}
proc fcQSpacerItem_new2(vtbl, vdata: pointer, param1: pointer): ptr cQSpacerItem {.importc: "QSpacerItem_new2".}
proc fcQSpacerItem_new3(vtbl, vdata: pointer, w: cint, h: cint, hData: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new3".}
proc fcQSpacerItem_new4(vtbl, vdata: pointer, w: cint, h: cint, hData: cint, vData: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new4".}
proc fcQWidgetItem_sizeHint(self: pointer): pointer {.importc: "QWidgetItem_sizeHint".}
proc fcQWidgetItem_minimumSize(self: pointer): pointer {.importc: "QWidgetItem_minimumSize".}
proc fcQWidgetItem_maximumSize(self: pointer): pointer {.importc: "QWidgetItem_maximumSize".}
proc fcQWidgetItem_expandingDirections(self: pointer): cint {.importc: "QWidgetItem_expandingDirections".}
proc fcQWidgetItem_isEmpty(self: pointer): bool {.importc: "QWidgetItem_isEmpty".}
proc fcQWidgetItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWidgetItem_setGeometry".}
proc fcQWidgetItem_geometry(self: pointer): pointer {.importc: "QWidgetItem_geometry".}
proc fcQWidgetItem_widget(self: pointer): pointer {.importc: "QWidgetItem_widget".}
proc fcQWidgetItem_hasHeightForWidth(self: pointer): bool {.importc: "QWidgetItem_hasHeightForWidth".}
proc fcQWidgetItem_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_heightForWidth".}
proc fcQWidgetItem_controlTypes(self: pointer): cint {.importc: "QWidgetItem_controlTypes".}
proc fcQWidgetItem_vtbl(self: pointer): pointer {.importc: "QWidgetItem_vtbl".}
proc fcQWidgetItem_vdata(self: pointer): pointer {.importc: "QWidgetItem_vdata".}

type cQWidgetItemVTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQWidgetItem_virtualbase_sizeHint(self: pointer): pointer {.importc: "QWidgetItem_virtualbase_sizeHint".}
proc fcQWidgetItem_virtualbase_minimumSize(self: pointer): pointer {.importc: "QWidgetItem_virtualbase_minimumSize".}
proc fcQWidgetItem_virtualbase_maximumSize(self: pointer): pointer {.importc: "QWidgetItem_virtualbase_maximumSize".}
proc fcQWidgetItem_virtualbase_expandingDirections(self: pointer): cint {.importc: "QWidgetItem_virtualbase_expandingDirections".}
proc fcQWidgetItem_virtualbase_isEmpty(self: pointer): bool {.importc: "QWidgetItem_virtualbase_isEmpty".}
proc fcQWidgetItem_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWidgetItem_virtualbase_setGeometry".}
proc fcQWidgetItem_virtualbase_geometry(self: pointer): pointer {.importc: "QWidgetItem_virtualbase_geometry".}
proc fcQWidgetItem_virtualbase_widget(self: pointer): pointer {.importc: "QWidgetItem_virtualbase_widget".}
proc fcQWidgetItem_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QWidgetItem_virtualbase_hasHeightForWidth".}
proc fcQWidgetItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_virtualbase_heightForWidth".}
proc fcQWidgetItem_virtualbase_controlTypes(self: pointer): cint {.importc: "QWidgetItem_virtualbase_controlTypes".}
proc fcQWidgetItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_virtualbase_minimumHeightForWidth".}
proc fcQWidgetItem_virtualbase_invalidate(self: pointer): void {.importc: "QWidgetItem_virtualbase_invalidate".}
proc fcQWidgetItem_virtualbase_layout(self: pointer): pointer {.importc: "QWidgetItem_virtualbase_layout".}
proc fcQWidgetItem_virtualbase_spacerItem(self: pointer): pointer {.importc: "QWidgetItem_virtualbase_spacerItem".}
proc fcQWidgetItem_new(vtbl, vdata: pointer, w: pointer): ptr cQWidgetItem {.importc: "QWidgetItem_new".}
proc fcQWidgetItemV2_sizeHint(self: pointer): pointer {.importc: "QWidgetItemV2_sizeHint".}
proc fcQWidgetItemV2_minimumSize(self: pointer): pointer {.importc: "QWidgetItemV2_minimumSize".}
proc fcQWidgetItemV2_maximumSize(self: pointer): pointer {.importc: "QWidgetItemV2_maximumSize".}
proc fcQWidgetItemV2_heightForWidth(self: pointer, width: cint): cint {.importc: "QWidgetItemV2_heightForWidth".}
proc fcQWidgetItemV2_vtbl(self: pointer): pointer {.importc: "QWidgetItemV2_vtbl".}
proc fcQWidgetItemV2_vdata(self: pointer): pointer {.importc: "QWidgetItemV2_vdata".}

type cQWidgetItemV2VTable {.pure.} = object
  destructor*: proc(self: pointer) {.cdecl, raises:[], gcsafe.}
  sizeHint*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(self: pointer, width: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  widget*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(self: pointer): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(self: pointer): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(self: pointer): void {.cdecl, raises: [], gcsafe.}
  layout*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(self: pointer): pointer {.cdecl, raises: [], gcsafe.}
proc fcQWidgetItemV2_virtualbase_sizeHint(self: pointer): pointer {.importc: "QWidgetItemV2_virtualbase_sizeHint".}
proc fcQWidgetItemV2_virtualbase_minimumSize(self: pointer): pointer {.importc: "QWidgetItemV2_virtualbase_minimumSize".}
proc fcQWidgetItemV2_virtualbase_maximumSize(self: pointer): pointer {.importc: "QWidgetItemV2_virtualbase_maximumSize".}
proc fcQWidgetItemV2_virtualbase_heightForWidth(self: pointer, width: cint): cint {.importc: "QWidgetItemV2_virtualbase_heightForWidth".}
proc fcQWidgetItemV2_virtualbase_expandingDirections(self: pointer): cint {.importc: "QWidgetItemV2_virtualbase_expandingDirections".}
proc fcQWidgetItemV2_virtualbase_isEmpty(self: pointer): bool {.importc: "QWidgetItemV2_virtualbase_isEmpty".}
proc fcQWidgetItemV2_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWidgetItemV2_virtualbase_setGeometry".}
proc fcQWidgetItemV2_virtualbase_geometry(self: pointer): pointer {.importc: "QWidgetItemV2_virtualbase_geometry".}
proc fcQWidgetItemV2_virtualbase_widget(self: pointer): pointer {.importc: "QWidgetItemV2_virtualbase_widget".}
proc fcQWidgetItemV2_virtualbase_hasHeightForWidth(self: pointer): bool {.importc: "QWidgetItemV2_virtualbase_hasHeightForWidth".}
proc fcQWidgetItemV2_virtualbase_controlTypes(self: pointer): cint {.importc: "QWidgetItemV2_virtualbase_controlTypes".}
proc fcQWidgetItemV2_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItemV2_virtualbase_minimumHeightForWidth".}
proc fcQWidgetItemV2_virtualbase_invalidate(self: pointer): void {.importc: "QWidgetItemV2_virtualbase_invalidate".}
proc fcQWidgetItemV2_virtualbase_layout(self: pointer): pointer {.importc: "QWidgetItemV2_virtualbase_layout".}
proc fcQWidgetItemV2_virtualbase_spacerItem(self: pointer): pointer {.importc: "QWidgetItemV2_virtualbase_spacerItem".}
proc fcQWidgetItemV2_new(vtbl, vdata: pointer, widget: pointer): ptr cQWidgetItemV2 {.importc: "QWidgetItemV2_new".}

proc sizeHint*(self: gen_qlayoutitem_types.QLayoutItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qlayoutitem_types.QLayoutItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qlayoutitem_types.QLayoutItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_maximumSize(self.h), owned: true)

proc expandingDirections*(self: gen_qlayoutitem_types.QLayoutItem): cint =
  cint(fcQLayoutItem_expandingDirections(self.h))

proc setGeometry*(self: gen_qlayoutitem_types.QLayoutItem, geometry: gen_qrect_types.QRect): void =
  fcQLayoutItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QLayoutItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayoutItem_geometry(self.h), owned: true)

proc isEmpty*(self: gen_qlayoutitem_types.QLayoutItem): bool =
  fcQLayoutItem_isEmpty(self.h)

proc hasHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem): bool =
  fcQLayoutItem_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_minimumHeightForWidth(self.h, param1)

proc invalidate*(self: gen_qlayoutitem_types.QLayoutItem): void =
  fcQLayoutItem_invalidate(self.h)

proc widget*(self: gen_qlayoutitem_types.QLayoutItem): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayoutItem_widget(self.h), owned: false)

proc layout*(self: gen_qlayoutitem_types.QLayoutItem): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayoutItem_layout(self.h), owned: false)

proc spacerItem*(self: gen_qlayoutitem_types.QLayoutItem): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQLayoutItem_spacerItem(self.h), owned: false)

proc alignment*(self: gen_qlayoutitem_types.QLayoutItem): cint =
  cint(fcQLayoutItem_alignment(self.h))

proc setAlignment*(self: gen_qlayoutitem_types.QLayoutItem, a: cint): void =
  fcQLayoutItem_setAlignment(self.h, cint(a))

proc controlTypes*(self: gen_qlayoutitem_types.QLayoutItem): cint =
  cint(fcQLayoutItem_controlTypes(self.h))

type QLayoutItemsizeHintProc* = proc(self: QLayoutItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLayoutItemminimumSizeProc* = proc(self: QLayoutItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLayoutItemmaximumSizeProc* = proc(self: QLayoutItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QLayoutItemexpandingDirectionsProc* = proc(self: QLayoutItem): cint {.raises: [], gcsafe.}
type QLayoutItemsetGeometryProc* = proc(self: QLayoutItem, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QLayoutItemgeometryProc* = proc(self: QLayoutItem): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QLayoutItemisEmptyProc* = proc(self: QLayoutItem): bool {.raises: [], gcsafe.}
type QLayoutItemhasHeightForWidthProc* = proc(self: QLayoutItem): bool {.raises: [], gcsafe.}
type QLayoutItemheightForWidthProc* = proc(self: QLayoutItem, param1: cint): cint {.raises: [], gcsafe.}
type QLayoutItemminimumHeightForWidthProc* = proc(self: QLayoutItem, param1: cint): cint {.raises: [], gcsafe.}
type QLayoutIteminvalidateProc* = proc(self: QLayoutItem): void {.raises: [], gcsafe.}
type QLayoutItemwidgetProc* = proc(self: QLayoutItem): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QLayoutItemlayoutProc* = proc(self: QLayoutItem): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QLayoutItemspacerItemProc* = proc(self: QLayoutItem): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}
type QLayoutItemcontrolTypesProc* = proc(self: QLayoutItem): cint {.raises: [], gcsafe.}

type QLayoutItemVTable* {.inheritable, pure.} = object
  vtbl: cQLayoutItemVTable
  sizeHint*: QLayoutItemsizeHintProc
  minimumSize*: QLayoutItemminimumSizeProc
  maximumSize*: QLayoutItemmaximumSizeProc
  expandingDirections*: QLayoutItemexpandingDirectionsProc
  setGeometry*: QLayoutItemsetGeometryProc
  geometry*: QLayoutItemgeometryProc
  isEmpty*: QLayoutItemisEmptyProc
  hasHeightForWidth*: QLayoutItemhasHeightForWidthProc
  heightForWidth*: QLayoutItemheightForWidthProc
  minimumHeightForWidth*: QLayoutItemminimumHeightForWidthProc
  invalidate*: QLayoutIteminvalidateProc
  widget*: QLayoutItemwidgetProc
  layout*: QLayoutItemlayoutProc
  spacerItem*: QLayoutItemspacerItemProc
  controlTypes*: QLayoutItemcontrolTypesProc

proc QLayoutItemhasHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem): bool =
  fcQLayoutItem_virtualbase_hasHeightForWidth(self.h)

proc QLayoutItemheightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_virtualbase_heightForWidth(self.h, param1)

proc QLayoutItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_virtualbase_minimumHeightForWidth(self.h, param1)

proc QLayoutIteminvalidate*(self: gen_qlayoutitem_types.QLayoutItem): void =
  fcQLayoutItem_virtualbase_invalidate(self.h)

proc QLayoutItemwidget*(self: gen_qlayoutitem_types.QLayoutItem): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayoutItem_virtualbase_widget(self.h), owned: false)

proc QLayoutItemlayout*(self: gen_qlayoutitem_types.QLayoutItem): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayoutItem_virtualbase_layout(self.h), owned: false)

proc QLayoutItemspacerItem*(self: gen_qlayoutitem_types.QLayoutItem): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQLayoutItem_virtualbase_spacerItem(self.h), owned: false)

proc QLayoutItemcontrolTypes*(self: gen_qlayoutitem_types.QLayoutItem): cint =
  cint(fcQLayoutItem_virtualbase_controlTypes(self.h))


proc fcQLayoutItem_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQLayoutItem_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQLayoutItem_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQLayoutItem_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQLayoutItem_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQLayoutItem_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQLayoutItem_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  vtbl[].invalidate(self)

proc fcQLayoutItem_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](fcQLayoutItem_vdata(self))
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

type VirtualQLayoutItem* {.inheritable.} = ref object of QLayoutItem
  vtbl*: cQLayoutItemVTable

method sizeHint*(self: VirtualQLayoutItem): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QLayoutItem.sizeHint")
method minimumSize*(self: VirtualQLayoutItem): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QLayoutItem.minimumSize")
method maximumSize*(self: VirtualQLayoutItem): gen_qsize_types.QSize {.base.} =
  raiseAssert("missing implementation of QLayoutItem.maximumSize")
method expandingDirections*(self: VirtualQLayoutItem): cint {.base.} =
  raiseAssert("missing implementation of QLayoutItem.expandingDirections")
method setGeometry*(self: VirtualQLayoutItem, geometry: gen_qrect_types.QRect): void {.base.} =
  raiseAssert("missing implementation of QLayoutItem.setGeometry")
method geometry*(self: VirtualQLayoutItem): gen_qrect_types.QRect {.base.} =
  raiseAssert("missing implementation of QLayoutItem.geometry")
method isEmpty*(self: VirtualQLayoutItem): bool {.base.} =
  raiseAssert("missing implementation of QLayoutItem.isEmpty")
method hasHeightForWidth*(self: VirtualQLayoutItem): bool {.base.} =
  QLayoutItemhasHeightForWidth(self[])
method heightForWidth*(self: VirtualQLayoutItem, param1: cint): cint {.base.} =
  QLayoutItemheightForWidth(self[], param1)
method minimumHeightForWidth*(self: VirtualQLayoutItem, param1: cint): cint {.base.} =
  QLayoutItemminimumHeightForWidth(self[], param1)
method invalidate*(self: VirtualQLayoutItem): void {.base.} =
  QLayoutIteminvalidate(self[])
method widget*(self: VirtualQLayoutItem): gen_qwidget_types.QWidget {.base.} =
  QLayoutItemwidget(self[])
method layout*(self: VirtualQLayoutItem): gen_qlayout_types.QLayout {.base.} =
  QLayoutItemlayout(self[])
method spacerItem*(self: VirtualQLayoutItem): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QLayoutItemspacerItem(self[])
method controlTypes*(self: VirtualQLayoutItem): cint {.base.} =
  QLayoutItemcontrolTypes(self[])

proc fcQLayoutItem_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQLayoutItem_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQLayoutItem_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQLayoutItem_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQLayoutItem_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQLayoutItem_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQLayoutItem_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  inst.invalidate()

proc fcQLayoutItem_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQLayoutItem_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQLayoutItem](fcQLayoutItem_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)


proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    vtbl: ref QLayoutItemVTable = nil): gen_qlayoutitem_types.QLayoutItem =
  let vtbl = if vtbl == nil: new QLayoutItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLayoutItemVTable](fcQLayoutItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLayoutItem_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQLayoutItem_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQLayoutItem_vtable_callback_maximumSize
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQLayoutItem_vtable_callback_expandingDirections
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQLayoutItem_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQLayoutItem_vtable_callback_geometry
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQLayoutItem_vtable_callback_isEmpty
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLayoutItem_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLayoutItem_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQLayoutItem_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQLayoutItem_vtable_callback_invalidate
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQLayoutItem_vtable_callback_widget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQLayoutItem_vtable_callback_layout
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQLayoutItem_vtable_callback_spacerItem
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQLayoutItem_vtable_callback_controlTypes
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayoutItem_new(addr(vtbl[].vtbl), addr(vtbl[])), owned: true)

proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    param1: gen_qlayoutitem_types.QLayoutItem,
    vtbl: ref QLayoutItemVTable = nil): gen_qlayoutitem_types.QLayoutItem =
  let vtbl = if vtbl == nil: new QLayoutItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLayoutItemVTable](fcQLayoutItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLayoutItem_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQLayoutItem_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQLayoutItem_vtable_callback_maximumSize
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQLayoutItem_vtable_callback_expandingDirections
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQLayoutItem_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQLayoutItem_vtable_callback_geometry
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQLayoutItem_vtable_callback_isEmpty
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLayoutItem_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLayoutItem_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQLayoutItem_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQLayoutItem_vtable_callback_invalidate
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQLayoutItem_vtable_callback_widget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQLayoutItem_vtable_callback_layout
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQLayoutItem_vtable_callback_spacerItem
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQLayoutItem_vtable_callback_controlTypes
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayoutItem_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    alignment: cint,
    vtbl: ref QLayoutItemVTable = nil): gen_qlayoutitem_types.QLayoutItem =
  let vtbl = if vtbl == nil: new QLayoutItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QLayoutItemVTable](fcQLayoutItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQLayoutItem_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQLayoutItem_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQLayoutItem_vtable_callback_maximumSize
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQLayoutItem_vtable_callback_expandingDirections
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQLayoutItem_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQLayoutItem_vtable_callback_geometry
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQLayoutItem_vtable_callback_isEmpty
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQLayoutItem_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQLayoutItem_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQLayoutItem_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQLayoutItem_vtable_callback_invalidate
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQLayoutItem_vtable_callback_widget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQLayoutItem_vtable_callback_layout
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQLayoutItem_vtable_callback_spacerItem
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQLayoutItem_vtable_callback_controlTypes
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayoutItem_new3(addr(vtbl[].vtbl), addr(vtbl[]), cint(alignment)), owned: true)

const cQLayoutItem_mvtbl = cQLayoutItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQLayoutItem()[])](self.fcQLayoutItem_vtbl())
    inst[].h = nil
    inst[].owned = false,

  sizeHint: fcQLayoutItem_method_callback_sizeHint,
  minimumSize: fcQLayoutItem_method_callback_minimumSize,
  maximumSize: fcQLayoutItem_method_callback_maximumSize,
  expandingDirections: fcQLayoutItem_method_callback_expandingDirections,
  setGeometry: fcQLayoutItem_method_callback_setGeometry,
  geometry: fcQLayoutItem_method_callback_geometry,
  isEmpty: fcQLayoutItem_method_callback_isEmpty,
  hasHeightForWidth: fcQLayoutItem_method_callback_hasHeightForWidth,
  heightForWidth: fcQLayoutItem_method_callback_heightForWidth,
  minimumHeightForWidth: fcQLayoutItem_method_callback_minimumHeightForWidth,
  invalidate: fcQLayoutItem_method_callback_invalidate,
  widget: fcQLayoutItem_method_callback_widget,
  layout: fcQLayoutItem_method_callback_layout,
  spacerItem: fcQLayoutItem_method_callback_spacerItem,
  controlTypes: fcQLayoutItem_method_callback_controlTypes,
)
proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    inst: VirtualQLayoutItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLayoutItem_new(addr(cQLayoutItem_mvtbl), addr(inst[]))
  inst[].owned = true

proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    param1: gen_qlayoutitem_types.QLayoutItem,
    inst: VirtualQLayoutItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLayoutItem_new2(addr(cQLayoutItem_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    alignment: cint,
    inst: VirtualQLayoutItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQLayoutItem_new3(addr(cQLayoutItem_mvtbl), addr(inst[]), cint(alignment))
  inst[].owned = true

proc changeSize*(self: gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint): void =
  fcQSpacerItem_changeSize(self.h, w, h)

proc sizeHint*(self: gen_qlayoutitem_types.QSpacerItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qlayoutitem_types.QSpacerItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qlayoutitem_types.QSpacerItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_maximumSize(self.h), owned: true)

proc expandingDirections*(self: gen_qlayoutitem_types.QSpacerItem): cint =
  cint(fcQSpacerItem_expandingDirections(self.h))

proc isEmpty*(self: gen_qlayoutitem_types.QSpacerItem): bool =
  fcQSpacerItem_isEmpty(self.h)

proc setGeometry*(self: gen_qlayoutitem_types.QSpacerItem, geometry: gen_qrect_types.QRect): void =
  fcQSpacerItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QSpacerItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSpacerItem_geometry(self.h), owned: true)

proc spacerItem*(self: gen_qlayoutitem_types.QSpacerItem): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_spacerItem(self.h), owned: false)

proc sizePolicy*(self: gen_qlayoutitem_types.QSpacerItem): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQSpacerItem_sizePolicy(self.h), owned: true)

proc changeSize*(self: gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint, hData: cint): void =
  fcQSpacerItem_changeSize3(self.h, w, h, cint(hData))

proc changeSize*(self: gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint, hData: cint, vData: cint): void =
  fcQSpacerItem_changeSize4(self.h, w, h, cint(hData), cint(vData))

type QSpacerItemsizeHintProc* = proc(self: QSpacerItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSpacerItemminimumSizeProc* = proc(self: QSpacerItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSpacerItemmaximumSizeProc* = proc(self: QSpacerItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSpacerItemexpandingDirectionsProc* = proc(self: QSpacerItem): cint {.raises: [], gcsafe.}
type QSpacerItemisEmptyProc* = proc(self: QSpacerItem): bool {.raises: [], gcsafe.}
type QSpacerItemsetGeometryProc* = proc(self: QSpacerItem, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QSpacerItemgeometryProc* = proc(self: QSpacerItem): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QSpacerItemspacerItemProc* = proc(self: QSpacerItem): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}
type QSpacerItemhasHeightForWidthProc* = proc(self: QSpacerItem): bool {.raises: [], gcsafe.}
type QSpacerItemheightForWidthProc* = proc(self: QSpacerItem, param1: cint): cint {.raises: [], gcsafe.}
type QSpacerItemminimumHeightForWidthProc* = proc(self: QSpacerItem, param1: cint): cint {.raises: [], gcsafe.}
type QSpacerIteminvalidateProc* = proc(self: QSpacerItem): void {.raises: [], gcsafe.}
type QSpacerItemwidgetProc* = proc(self: QSpacerItem): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QSpacerItemlayoutProc* = proc(self: QSpacerItem): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QSpacerItemcontrolTypesProc* = proc(self: QSpacerItem): cint {.raises: [], gcsafe.}

type QSpacerItemVTable* {.inheritable, pure.} = object
  vtbl: cQSpacerItemVTable
  sizeHint*: QSpacerItemsizeHintProc
  minimumSize*: QSpacerItemminimumSizeProc
  maximumSize*: QSpacerItemmaximumSizeProc
  expandingDirections*: QSpacerItemexpandingDirectionsProc
  isEmpty*: QSpacerItemisEmptyProc
  setGeometry*: QSpacerItemsetGeometryProc
  geometry*: QSpacerItemgeometryProc
  spacerItem*: QSpacerItemspacerItemProc
  hasHeightForWidth*: QSpacerItemhasHeightForWidthProc
  heightForWidth*: QSpacerItemheightForWidthProc
  minimumHeightForWidth*: QSpacerItemminimumHeightForWidthProc
  invalidate*: QSpacerIteminvalidateProc
  widget*: QSpacerItemwidgetProc
  layout*: QSpacerItemlayoutProc
  controlTypes*: QSpacerItemcontrolTypesProc

proc QSpacerItemsizeHint*(self: gen_qlayoutitem_types.QSpacerItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_virtualbase_sizeHint(self.h), owned: true)

proc QSpacerItemminimumSize*(self: gen_qlayoutitem_types.QSpacerItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_virtualbase_minimumSize(self.h), owned: true)

proc QSpacerItemmaximumSize*(self: gen_qlayoutitem_types.QSpacerItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_virtualbase_maximumSize(self.h), owned: true)

proc QSpacerItemexpandingDirections*(self: gen_qlayoutitem_types.QSpacerItem): cint =
  cint(fcQSpacerItem_virtualbase_expandingDirections(self.h))

proc QSpacerItemisEmpty*(self: gen_qlayoutitem_types.QSpacerItem): bool =
  fcQSpacerItem_virtualbase_isEmpty(self.h)

proc QSpacerItemsetGeometry*(self: gen_qlayoutitem_types.QSpacerItem, geometry: gen_qrect_types.QRect): void =
  fcQSpacerItem_virtualbase_setGeometry(self.h, geometry.h)

proc QSpacerItemgeometry*(self: gen_qlayoutitem_types.QSpacerItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSpacerItem_virtualbase_geometry(self.h), owned: true)

proc QSpacerItemspacerItem*(self: gen_qlayoutitem_types.QSpacerItem): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_virtualbase_spacerItem(self.h), owned: false)

proc QSpacerItemhasHeightForWidth*(self: gen_qlayoutitem_types.QSpacerItem): bool =
  fcQSpacerItem_virtualbase_hasHeightForWidth(self.h)

proc QSpacerItemheightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, param1: cint): cint =
  fcQSpacerItem_virtualbase_heightForWidth(self.h, param1)

proc QSpacerItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, param1: cint): cint =
  fcQSpacerItem_virtualbase_minimumHeightForWidth(self.h, param1)

proc QSpacerIteminvalidate*(self: gen_qlayoutitem_types.QSpacerItem): void =
  fcQSpacerItem_virtualbase_invalidate(self.h)

proc QSpacerItemwidget*(self: gen_qlayoutitem_types.QSpacerItem): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQSpacerItem_virtualbase_widget(self.h), owned: false)

proc QSpacerItemlayout*(self: gen_qlayoutitem_types.QSpacerItem): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQSpacerItem_virtualbase_layout(self.h), owned: false)

proc QSpacerItemcontrolTypes*(self: gen_qlayoutitem_types.QSpacerItem): cint =
  cint(fcQSpacerItem_virtualbase_controlTypes(self.h))


proc fcQSpacerItem_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQSpacerItem_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQSpacerItem_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQSpacerItem_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQSpacerItem_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQSpacerItem_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQSpacerItem_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  vtbl[].invalidate(self)

proc fcQSpacerItem_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](fcQSpacerItem_vdata(self))
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

type VirtualQSpacerItem* {.inheritable.} = ref object of QSpacerItem
  vtbl*: cQSpacerItemVTable

method sizeHint*(self: VirtualQSpacerItem): gen_qsize_types.QSize {.base.} =
  QSpacerItemsizeHint(self[])
method minimumSize*(self: VirtualQSpacerItem): gen_qsize_types.QSize {.base.} =
  QSpacerItemminimumSize(self[])
method maximumSize*(self: VirtualQSpacerItem): gen_qsize_types.QSize {.base.} =
  QSpacerItemmaximumSize(self[])
method expandingDirections*(self: VirtualQSpacerItem): cint {.base.} =
  QSpacerItemexpandingDirections(self[])
method isEmpty*(self: VirtualQSpacerItem): bool {.base.} =
  QSpacerItemisEmpty(self[])
method setGeometry*(self: VirtualQSpacerItem, geometry: gen_qrect_types.QRect): void {.base.} =
  QSpacerItemsetGeometry(self[], geometry)
method geometry*(self: VirtualQSpacerItem): gen_qrect_types.QRect {.base.} =
  QSpacerItemgeometry(self[])
method spacerItem*(self: VirtualQSpacerItem): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QSpacerItemspacerItem(self[])
method hasHeightForWidth*(self: VirtualQSpacerItem): bool {.base.} =
  QSpacerItemhasHeightForWidth(self[])
method heightForWidth*(self: VirtualQSpacerItem, param1: cint): cint {.base.} =
  QSpacerItemheightForWidth(self[], param1)
method minimumHeightForWidth*(self: VirtualQSpacerItem, param1: cint): cint {.base.} =
  QSpacerItemminimumHeightForWidth(self[], param1)
method invalidate*(self: VirtualQSpacerItem): void {.base.} =
  QSpacerIteminvalidate(self[])
method widget*(self: VirtualQSpacerItem): gen_qwidget_types.QWidget {.base.} =
  QSpacerItemwidget(self[])
method layout*(self: VirtualQSpacerItem): gen_qlayout_types.QLayout {.base.} =
  QSpacerItemlayout(self[])
method controlTypes*(self: VirtualQSpacerItem): cint {.base.} =
  QSpacerItemcontrolTypes(self[])

proc fcQSpacerItem_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQSpacerItem_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQSpacerItem_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQSpacerItem_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQSpacerItem_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQSpacerItem_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQSpacerItem_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  inst.invalidate()

proc fcQSpacerItem_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQSpacerItem_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQSpacerItem](fcQSpacerItem_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)


proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint,
    vtbl: ref QSpacerItemVTable = nil): gen_qlayoutitem_types.QSpacerItem =
  let vtbl = if vtbl == nil: new QSpacerItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSpacerItemVTable](fcQSpacerItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSpacerItem_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQSpacerItem_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQSpacerItem_vtable_callback_maximumSize
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQSpacerItem_vtable_callback_expandingDirections
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQSpacerItem_vtable_callback_isEmpty
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQSpacerItem_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQSpacerItem_vtable_callback_geometry
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQSpacerItem_vtable_callback_spacerItem
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSpacerItem_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSpacerItem_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQSpacerItem_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQSpacerItem_vtable_callback_invalidate
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQSpacerItem_vtable_callback_widget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQSpacerItem_vtable_callback_layout
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQSpacerItem_vtable_callback_controlTypes
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_new(addr(vtbl[].vtbl), addr(vtbl[]), w, h), owned: true)

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    param1: gen_qlayoutitem_types.QSpacerItem,
    vtbl: ref QSpacerItemVTable = nil): gen_qlayoutitem_types.QSpacerItem =
  let vtbl = if vtbl == nil: new QSpacerItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSpacerItemVTable](fcQSpacerItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSpacerItem_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQSpacerItem_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQSpacerItem_vtable_callback_maximumSize
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQSpacerItem_vtable_callback_expandingDirections
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQSpacerItem_vtable_callback_isEmpty
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQSpacerItem_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQSpacerItem_vtable_callback_geometry
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQSpacerItem_vtable_callback_spacerItem
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSpacerItem_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSpacerItem_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQSpacerItem_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQSpacerItem_vtable_callback_invalidate
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQSpacerItem_vtable_callback_widget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQSpacerItem_vtable_callback_layout
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQSpacerItem_vtable_callback_controlTypes
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_new2(addr(vtbl[].vtbl), addr(vtbl[]), param1.h), owned: true)

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint, hData: cint,
    vtbl: ref QSpacerItemVTable = nil): gen_qlayoutitem_types.QSpacerItem =
  let vtbl = if vtbl == nil: new QSpacerItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSpacerItemVTable](fcQSpacerItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSpacerItem_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQSpacerItem_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQSpacerItem_vtable_callback_maximumSize
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQSpacerItem_vtable_callback_expandingDirections
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQSpacerItem_vtable_callback_isEmpty
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQSpacerItem_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQSpacerItem_vtable_callback_geometry
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQSpacerItem_vtable_callback_spacerItem
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSpacerItem_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSpacerItem_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQSpacerItem_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQSpacerItem_vtable_callback_invalidate
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQSpacerItem_vtable_callback_widget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQSpacerItem_vtable_callback_layout
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQSpacerItem_vtable_callback_controlTypes
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_new3(addr(vtbl[].vtbl), addr(vtbl[]), w, h, cint(hData)), owned: true)

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint, hData: cint, vData: cint,
    vtbl: ref QSpacerItemVTable = nil): gen_qlayoutitem_types.QSpacerItem =
  let vtbl = if vtbl == nil: new QSpacerItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QSpacerItemVTable](fcQSpacerItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQSpacerItem_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQSpacerItem_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQSpacerItem_vtable_callback_maximumSize
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQSpacerItem_vtable_callback_expandingDirections
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQSpacerItem_vtable_callback_isEmpty
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQSpacerItem_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQSpacerItem_vtable_callback_geometry
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQSpacerItem_vtable_callback_spacerItem
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQSpacerItem_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQSpacerItem_vtable_callback_heightForWidth
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQSpacerItem_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQSpacerItem_vtable_callback_invalidate
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQSpacerItem_vtable_callback_widget
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQSpacerItem_vtable_callback_layout
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQSpacerItem_vtable_callback_controlTypes
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_new4(addr(vtbl[].vtbl), addr(vtbl[]), w, h, cint(hData), cint(vData)), owned: true)

const cQSpacerItem_mvtbl = cQSpacerItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQSpacerItem()[])](self.fcQSpacerItem_vtbl())
    inst[].h = nil
    inst[].owned = false,

  sizeHint: fcQSpacerItem_method_callback_sizeHint,
  minimumSize: fcQSpacerItem_method_callback_minimumSize,
  maximumSize: fcQSpacerItem_method_callback_maximumSize,
  expandingDirections: fcQSpacerItem_method_callback_expandingDirections,
  isEmpty: fcQSpacerItem_method_callback_isEmpty,
  setGeometry: fcQSpacerItem_method_callback_setGeometry,
  geometry: fcQSpacerItem_method_callback_geometry,
  spacerItem: fcQSpacerItem_method_callback_spacerItem,
  hasHeightForWidth: fcQSpacerItem_method_callback_hasHeightForWidth,
  heightForWidth: fcQSpacerItem_method_callback_heightForWidth,
  minimumHeightForWidth: fcQSpacerItem_method_callback_minimumHeightForWidth,
  invalidate: fcQSpacerItem_method_callback_invalidate,
  widget: fcQSpacerItem_method_callback_widget,
  layout: fcQSpacerItem_method_callback_layout,
  controlTypes: fcQSpacerItem_method_callback_controlTypes,
)
proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint,
    inst: VirtualQSpacerItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSpacerItem_new(addr(cQSpacerItem_mvtbl), addr(inst[]), w, h)
  inst[].owned = true

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    param1: gen_qlayoutitem_types.QSpacerItem,
    inst: VirtualQSpacerItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSpacerItem_new2(addr(cQSpacerItem_mvtbl), addr(inst[]), param1.h)
  inst[].owned = true

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint, hData: cint,
    inst: VirtualQSpacerItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSpacerItem_new3(addr(cQSpacerItem_mvtbl), addr(inst[]), w, h, cint(hData))
  inst[].owned = true

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint, hData: cint, vData: cint,
    inst: VirtualQSpacerItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQSpacerItem_new4(addr(cQSpacerItem_mvtbl), addr(inst[]), w, h, cint(hData), cint(vData))
  inst[].owned = true

proc sizeHint*(self: gen_qlayoutitem_types.QWidgetItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qlayoutitem_types.QWidgetItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qlayoutitem_types.QWidgetItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_maximumSize(self.h), owned: true)

proc expandingDirections*(self: gen_qlayoutitem_types.QWidgetItem): cint =
  cint(fcQWidgetItem_expandingDirections(self.h))

proc isEmpty*(self: gen_qlayoutitem_types.QWidgetItem): bool =
  fcQWidgetItem_isEmpty(self.h)

proc setGeometry*(self: gen_qlayoutitem_types.QWidgetItem, geometry: gen_qrect_types.QRect): void =
  fcQWidgetItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QWidgetItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidgetItem_geometry(self.h), owned: true)

proc widget*(self: gen_qlayoutitem_types.QWidgetItem): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetItem_widget(self.h), owned: false)

proc hasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem): bool =
  fcQWidgetItem_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fcQWidgetItem_heightForWidth(self.h, param1)

proc controlTypes*(self: gen_qlayoutitem_types.QWidgetItem): cint =
  cint(fcQWidgetItem_controlTypes(self.h))

type QWidgetItemsizeHintProc* = proc(self: QWidgetItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWidgetItemminimumSizeProc* = proc(self: QWidgetItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWidgetItemmaximumSizeProc* = proc(self: QWidgetItem): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWidgetItemexpandingDirectionsProc* = proc(self: QWidgetItem): cint {.raises: [], gcsafe.}
type QWidgetItemisEmptyProc* = proc(self: QWidgetItem): bool {.raises: [], gcsafe.}
type QWidgetItemsetGeometryProc* = proc(self: QWidgetItem, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QWidgetItemgeometryProc* = proc(self: QWidgetItem): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QWidgetItemwidgetProc* = proc(self: QWidgetItem): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QWidgetItemhasHeightForWidthProc* = proc(self: QWidgetItem): bool {.raises: [], gcsafe.}
type QWidgetItemheightForWidthProc* = proc(self: QWidgetItem, param1: cint): cint {.raises: [], gcsafe.}
type QWidgetItemcontrolTypesProc* = proc(self: QWidgetItem): cint {.raises: [], gcsafe.}
type QWidgetItemminimumHeightForWidthProc* = proc(self: QWidgetItem, param1: cint): cint {.raises: [], gcsafe.}
type QWidgetIteminvalidateProc* = proc(self: QWidgetItem): void {.raises: [], gcsafe.}
type QWidgetItemlayoutProc* = proc(self: QWidgetItem): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QWidgetItemspacerItemProc* = proc(self: QWidgetItem): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}

type QWidgetItemVTable* {.inheritable, pure.} = object
  vtbl: cQWidgetItemVTable
  sizeHint*: QWidgetItemsizeHintProc
  minimumSize*: QWidgetItemminimumSizeProc
  maximumSize*: QWidgetItemmaximumSizeProc
  expandingDirections*: QWidgetItemexpandingDirectionsProc
  isEmpty*: QWidgetItemisEmptyProc
  setGeometry*: QWidgetItemsetGeometryProc
  geometry*: QWidgetItemgeometryProc
  widget*: QWidgetItemwidgetProc
  hasHeightForWidth*: QWidgetItemhasHeightForWidthProc
  heightForWidth*: QWidgetItemheightForWidthProc
  controlTypes*: QWidgetItemcontrolTypesProc
  minimumHeightForWidth*: QWidgetItemminimumHeightForWidthProc
  invalidate*: QWidgetIteminvalidateProc
  layout*: QWidgetItemlayoutProc
  spacerItem*: QWidgetItemspacerItemProc

proc QWidgetItemsizeHint*(self: gen_qlayoutitem_types.QWidgetItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_virtualbase_sizeHint(self.h), owned: true)

proc QWidgetItemminimumSize*(self: gen_qlayoutitem_types.QWidgetItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_virtualbase_minimumSize(self.h), owned: true)

proc QWidgetItemmaximumSize*(self: gen_qlayoutitem_types.QWidgetItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_virtualbase_maximumSize(self.h), owned: true)

proc QWidgetItemexpandingDirections*(self: gen_qlayoutitem_types.QWidgetItem): cint =
  cint(fcQWidgetItem_virtualbase_expandingDirections(self.h))

proc QWidgetItemisEmpty*(self: gen_qlayoutitem_types.QWidgetItem): bool =
  fcQWidgetItem_virtualbase_isEmpty(self.h)

proc QWidgetItemsetGeometry*(self: gen_qlayoutitem_types.QWidgetItem, geometry: gen_qrect_types.QRect): void =
  fcQWidgetItem_virtualbase_setGeometry(self.h, geometry.h)

proc QWidgetItemgeometry*(self: gen_qlayoutitem_types.QWidgetItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidgetItem_virtualbase_geometry(self.h), owned: true)

proc QWidgetItemwidget*(self: gen_qlayoutitem_types.QWidgetItem): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetItem_virtualbase_widget(self.h), owned: false)

proc QWidgetItemhasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem): bool =
  fcQWidgetItem_virtualbase_hasHeightForWidth(self.h)

proc QWidgetItemheightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fcQWidgetItem_virtualbase_heightForWidth(self.h, param1)

proc QWidgetItemcontrolTypes*(self: gen_qlayoutitem_types.QWidgetItem): cint =
  cint(fcQWidgetItem_virtualbase_controlTypes(self.h))

proc QWidgetItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fcQWidgetItem_virtualbase_minimumHeightForWidth(self.h, param1)

proc QWidgetIteminvalidate*(self: gen_qlayoutitem_types.QWidgetItem): void =
  fcQWidgetItem_virtualbase_invalidate(self.h)

proc QWidgetItemlayout*(self: gen_qlayoutitem_types.QWidgetItem): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQWidgetItem_virtualbase_layout(self.h), owned: false)

proc QWidgetItemspacerItem*(self: gen_qlayoutitem_types.QWidgetItem): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQWidgetItem_virtualbase_spacerItem(self.h), owned: false)


proc fcQWidgetItem_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQWidgetItem_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQWidgetItem_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQWidgetItem_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQWidgetItem_vtable_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQWidgetItem_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc fcQWidgetItem_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQWidgetItem_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  vtbl[].invalidate(self)

proc fcQWidgetItem_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](fcQWidgetItem_vdata(self))
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQWidgetItem* {.inheritable.} = ref object of QWidgetItem
  vtbl*: cQWidgetItemVTable

method sizeHint*(self: VirtualQWidgetItem): gen_qsize_types.QSize {.base.} =
  QWidgetItemsizeHint(self[])
method minimumSize*(self: VirtualQWidgetItem): gen_qsize_types.QSize {.base.} =
  QWidgetItemminimumSize(self[])
method maximumSize*(self: VirtualQWidgetItem): gen_qsize_types.QSize {.base.} =
  QWidgetItemmaximumSize(self[])
method expandingDirections*(self: VirtualQWidgetItem): cint {.base.} =
  QWidgetItemexpandingDirections(self[])
method isEmpty*(self: VirtualQWidgetItem): bool {.base.} =
  QWidgetItemisEmpty(self[])
method setGeometry*(self: VirtualQWidgetItem, geometry: gen_qrect_types.QRect): void {.base.} =
  QWidgetItemsetGeometry(self[], geometry)
method geometry*(self: VirtualQWidgetItem): gen_qrect_types.QRect {.base.} =
  QWidgetItemgeometry(self[])
method widget*(self: VirtualQWidgetItem): gen_qwidget_types.QWidget {.base.} =
  QWidgetItemwidget(self[])
method hasHeightForWidth*(self: VirtualQWidgetItem): bool {.base.} =
  QWidgetItemhasHeightForWidth(self[])
method heightForWidth*(self: VirtualQWidgetItem, param1: cint): cint {.base.} =
  QWidgetItemheightForWidth(self[], param1)
method controlTypes*(self: VirtualQWidgetItem): cint {.base.} =
  QWidgetItemcontrolTypes(self[])
method minimumHeightForWidth*(self: VirtualQWidgetItem, param1: cint): cint {.base.} =
  QWidgetItemminimumHeightForWidth(self[], param1)
method invalidate*(self: VirtualQWidgetItem): void {.base.} =
  QWidgetIteminvalidate(self[])
method layout*(self: VirtualQWidgetItem): gen_qlayout_types.QLayout {.base.} =
  QWidgetItemlayout(self[])
method spacerItem*(self: VirtualQWidgetItem): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QWidgetItemspacerItem(self[])

proc fcQWidgetItem_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQWidgetItem_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQWidgetItem_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQWidgetItem_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQWidgetItem_method_callback_heightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQWidgetItem_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

proc fcQWidgetItem_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQWidgetItem_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  inst.invalidate()

proc fcQWidgetItem_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItem_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItem](fcQWidgetItem_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qlayoutitem_types.QWidgetItem,
    w: gen_qwidget_types.QWidget,
    vtbl: ref QWidgetItemVTable = nil): gen_qlayoutitem_types.QWidgetItem =
  let vtbl = if vtbl == nil: new QWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWidgetItemVTable](fcQWidgetItem_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQWidgetItem_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQWidgetItem_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQWidgetItem_vtable_callback_maximumSize
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQWidgetItem_vtable_callback_expandingDirections
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQWidgetItem_vtable_callback_isEmpty
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQWidgetItem_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQWidgetItem_vtable_callback_geometry
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQWidgetItem_vtable_callback_widget
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQWidgetItem_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQWidgetItem_vtable_callback_heightForWidth
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQWidgetItem_vtable_callback_controlTypes
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQWidgetItem_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQWidgetItem_vtable_callback_invalidate
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQWidgetItem_vtable_callback_layout
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQWidgetItem_vtable_callback_spacerItem
  gen_qlayoutitem_types.QWidgetItem(h: fcQWidgetItem_new(addr(vtbl[].vtbl), addr(vtbl[]), w.h), owned: true)

const cQWidgetItem_mvtbl = cQWidgetItemVTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWidgetItem()[])](self.fcQWidgetItem_vtbl())
    inst[].h = nil
    inst[].owned = false,

  sizeHint: fcQWidgetItem_method_callback_sizeHint,
  minimumSize: fcQWidgetItem_method_callback_minimumSize,
  maximumSize: fcQWidgetItem_method_callback_maximumSize,
  expandingDirections: fcQWidgetItem_method_callback_expandingDirections,
  isEmpty: fcQWidgetItem_method_callback_isEmpty,
  setGeometry: fcQWidgetItem_method_callback_setGeometry,
  geometry: fcQWidgetItem_method_callback_geometry,
  widget: fcQWidgetItem_method_callback_widget,
  hasHeightForWidth: fcQWidgetItem_method_callback_hasHeightForWidth,
  heightForWidth: fcQWidgetItem_method_callback_heightForWidth,
  controlTypes: fcQWidgetItem_method_callback_controlTypes,
  minimumHeightForWidth: fcQWidgetItem_method_callback_minimumHeightForWidth,
  invalidate: fcQWidgetItem_method_callback_invalidate,
  layout: fcQWidgetItem_method_callback_layout,
  spacerItem: fcQWidgetItem_method_callback_spacerItem,
)
proc create*(T: type gen_qlayoutitem_types.QWidgetItem,
    w: gen_qwidget_types.QWidget,
    inst: VirtualQWidgetItem) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWidgetItem_new(addr(cQWidgetItem_mvtbl), addr(inst[]), w.h)
  inst[].owned = true

proc sizeHint*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_sizeHint(self.h), owned: true)

proc minimumSize*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_minimumSize(self.h), owned: true)

proc maximumSize*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_maximumSize(self.h), owned: true)

proc heightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, width: cint): cint =
  fcQWidgetItemV2_heightForWidth(self.h, width)

type QWidgetItemV2sizeHintProc* = proc(self: QWidgetItemV2): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWidgetItemV2minimumSizeProc* = proc(self: QWidgetItemV2): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWidgetItemV2maximumSizeProc* = proc(self: QWidgetItemV2): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QWidgetItemV2heightForWidthProc* = proc(self: QWidgetItemV2, width: cint): cint {.raises: [], gcsafe.}
type QWidgetItemV2expandingDirectionsProc* = proc(self: QWidgetItemV2): cint {.raises: [], gcsafe.}
type QWidgetItemV2isEmptyProc* = proc(self: QWidgetItemV2): bool {.raises: [], gcsafe.}
type QWidgetItemV2setGeometryProc* = proc(self: QWidgetItemV2, geometry: gen_qrect_types.QRect): void {.raises: [], gcsafe.}
type QWidgetItemV2geometryProc* = proc(self: QWidgetItemV2): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QWidgetItemV2widgetProc* = proc(self: QWidgetItemV2): gen_qwidget_types.QWidget {.raises: [], gcsafe.}
type QWidgetItemV2hasHeightForWidthProc* = proc(self: QWidgetItemV2): bool {.raises: [], gcsafe.}
type QWidgetItemV2controlTypesProc* = proc(self: QWidgetItemV2): cint {.raises: [], gcsafe.}
type QWidgetItemV2minimumHeightForWidthProc* = proc(self: QWidgetItemV2, param1: cint): cint {.raises: [], gcsafe.}
type QWidgetItemV2invalidateProc* = proc(self: QWidgetItemV2): void {.raises: [], gcsafe.}
type QWidgetItemV2layoutProc* = proc(self: QWidgetItemV2): gen_qlayout_types.QLayout {.raises: [], gcsafe.}
type QWidgetItemV2spacerItemProc* = proc(self: QWidgetItemV2): gen_qlayoutitem_types.QSpacerItem {.raises: [], gcsafe.}

type QWidgetItemV2VTable* {.inheritable, pure.} = object
  vtbl: cQWidgetItemV2VTable
  sizeHint*: QWidgetItemV2sizeHintProc
  minimumSize*: QWidgetItemV2minimumSizeProc
  maximumSize*: QWidgetItemV2maximumSizeProc
  heightForWidth*: QWidgetItemV2heightForWidthProc
  expandingDirections*: QWidgetItemV2expandingDirectionsProc
  isEmpty*: QWidgetItemV2isEmptyProc
  setGeometry*: QWidgetItemV2setGeometryProc
  geometry*: QWidgetItemV2geometryProc
  widget*: QWidgetItemV2widgetProc
  hasHeightForWidth*: QWidgetItemV2hasHeightForWidthProc
  controlTypes*: QWidgetItemV2controlTypesProc
  minimumHeightForWidth*: QWidgetItemV2minimumHeightForWidthProc
  invalidate*: QWidgetItemV2invalidateProc
  layout*: QWidgetItemV2layoutProc
  spacerItem*: QWidgetItemV2spacerItemProc

proc QWidgetItemV2sizeHint*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_virtualbase_sizeHint(self.h), owned: true)

proc QWidgetItemV2minimumSize*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_virtualbase_minimumSize(self.h), owned: true)

proc QWidgetItemV2maximumSize*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_virtualbase_maximumSize(self.h), owned: true)

proc QWidgetItemV2heightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, width: cint): cint =
  fcQWidgetItemV2_virtualbase_heightForWidth(self.h, width)

proc QWidgetItemV2expandingDirections*(self: gen_qlayoutitem_types.QWidgetItemV2): cint =
  cint(fcQWidgetItemV2_virtualbase_expandingDirections(self.h))

proc QWidgetItemV2isEmpty*(self: gen_qlayoutitem_types.QWidgetItemV2): bool =
  fcQWidgetItemV2_virtualbase_isEmpty(self.h)

proc QWidgetItemV2setGeometry*(self: gen_qlayoutitem_types.QWidgetItemV2, geometry: gen_qrect_types.QRect): void =
  fcQWidgetItemV2_virtualbase_setGeometry(self.h, geometry.h)

proc QWidgetItemV2geometry*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidgetItemV2_virtualbase_geometry(self.h), owned: true)

proc QWidgetItemV2widget*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetItemV2_virtualbase_widget(self.h), owned: false)

proc QWidgetItemV2hasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2): bool =
  fcQWidgetItemV2_virtualbase_hasHeightForWidth(self.h)

proc QWidgetItemV2controlTypes*(self: gen_qlayoutitem_types.QWidgetItemV2): cint =
  cint(fcQWidgetItemV2_virtualbase_controlTypes(self.h))

proc QWidgetItemV2minimumHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, param1: cint): cint =
  fcQWidgetItemV2_virtualbase_minimumHeightForWidth(self.h, param1)

proc QWidgetItemV2invalidate*(self: gen_qlayoutitem_types.QWidgetItemV2): void =
  fcQWidgetItemV2_virtualbase_invalidate(self.h)

proc QWidgetItemV2layout*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQWidgetItemV2_virtualbase_layout(self.h), owned: false)

proc QWidgetItemV2spacerItem*(self: gen_qlayoutitem_types.QWidgetItemV2): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQWidgetItemV2_virtualbase_spacerItem(self.h), owned: false)


proc fcQWidgetItemV2_vtable_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_vtable_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_vtable_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_vtable_callback_heightForWidth(self: pointer, width: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  let slotval1 = width
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc fcQWidgetItemV2_vtable_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc fcQWidgetItemV2_vtable_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc fcQWidgetItemV2_vtable_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  vtbl[].setGeometry(self, slotval1)

proc fcQWidgetItemV2_vtable_callback_geometry(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_vtable_callback_widget(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_vtable_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc fcQWidgetItemV2_vtable_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc fcQWidgetItemV2_vtable_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc fcQWidgetItemV2_vtable_callback_invalidate(self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  vtbl[].invalidate(self)

proc fcQWidgetItemV2_vtable_callback_layout(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_vtable_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

type VirtualQWidgetItemV2* {.inheritable.} = ref object of QWidgetItemV2
  vtbl*: cQWidgetItemV2VTable

method sizeHint*(self: VirtualQWidgetItemV2): gen_qsize_types.QSize {.base.} =
  QWidgetItemV2sizeHint(self[])
method minimumSize*(self: VirtualQWidgetItemV2): gen_qsize_types.QSize {.base.} =
  QWidgetItemV2minimumSize(self[])
method maximumSize*(self: VirtualQWidgetItemV2): gen_qsize_types.QSize {.base.} =
  QWidgetItemV2maximumSize(self[])
method heightForWidth*(self: VirtualQWidgetItemV2, width: cint): cint {.base.} =
  QWidgetItemV2heightForWidth(self[], width)
method expandingDirections*(self: VirtualQWidgetItemV2): cint {.base.} =
  QWidgetItemV2expandingDirections(self[])
method isEmpty*(self: VirtualQWidgetItemV2): bool {.base.} =
  QWidgetItemV2isEmpty(self[])
method setGeometry*(self: VirtualQWidgetItemV2, geometry: gen_qrect_types.QRect): void {.base.} =
  QWidgetItemV2setGeometry(self[], geometry)
method geometry*(self: VirtualQWidgetItemV2): gen_qrect_types.QRect {.base.} =
  QWidgetItemV2geometry(self[])
method widget*(self: VirtualQWidgetItemV2): gen_qwidget_types.QWidget {.base.} =
  QWidgetItemV2widget(self[])
method hasHeightForWidth*(self: VirtualQWidgetItemV2): bool {.base.} =
  QWidgetItemV2hasHeightForWidth(self[])
method controlTypes*(self: VirtualQWidgetItemV2): cint {.base.} =
  QWidgetItemV2controlTypes(self[])
method minimumHeightForWidth*(self: VirtualQWidgetItemV2, param1: cint): cint {.base.} =
  QWidgetItemV2minimumHeightForWidth(self[], param1)
method invalidate*(self: VirtualQWidgetItemV2): void {.base.} =
  QWidgetItemV2invalidate(self[])
method layout*(self: VirtualQWidgetItemV2): gen_qlayout_types.QLayout {.base.} =
  QWidgetItemV2layout(self[])
method spacerItem*(self: VirtualQWidgetItemV2): gen_qlayoutitem_types.QSpacerItem {.base.} =
  QWidgetItemV2spacerItem(self[])

proc fcQWidgetItemV2_method_callback_sizeHint(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.sizeHint()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_method_callback_minimumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.minimumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_method_callback_maximumSize(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.maximumSize()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_method_callback_heightForWidth(self: pointer, width: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  let slotval1 = width
  var virtualReturn = inst.heightForWidth(slotval1)
  virtualReturn

proc fcQWidgetItemV2_method_callback_expandingDirections(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.expandingDirections()
  cint(virtualReturn)

proc fcQWidgetItemV2_method_callback_isEmpty(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.isEmpty()
  virtualReturn

proc fcQWidgetItemV2_method_callback_setGeometry(self: pointer, geometry: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  let slotval1 = gen_qrect_types.QRect(h: geometry, owned: false)
  inst.setGeometry(slotval1)

proc fcQWidgetItemV2_method_callback_geometry(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.geometry()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_method_callback_widget(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.widget()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_method_callback_hasHeightForWidth(self: pointer): bool {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.hasHeightForWidth()
  virtualReturn

proc fcQWidgetItemV2_method_callback_controlTypes(self: pointer): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.controlTypes()
  cint(virtualReturn)

proc fcQWidgetItemV2_method_callback_minimumHeightForWidth(self: pointer, param1: cint): cint {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  let slotval1 = param1
  var virtualReturn = inst.minimumHeightForWidth(slotval1)
  virtualReturn

proc fcQWidgetItemV2_method_callback_invalidate(self: pointer): void {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  inst.invalidate()

proc fcQWidgetItemV2_method_callback_layout(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.layout()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h

proc fcQWidgetItemV2_method_callback_spacerItem(self: pointer): pointer {.cdecl.} =
  let inst = cast[VirtualQWidgetItemV2](fcQWidgetItemV2_vdata(self))
  var virtualReturn = inst.spacerItem()
  virtualReturn.owned = false # TODO move?
  let virtualReturn_h = virtualReturn.h
  virtualReturn.h = nil
  virtualReturn_h


proc create*(T: type gen_qlayoutitem_types.QWidgetItemV2,
    widget: gen_qwidget_types.QWidget,
    vtbl: ref QWidgetItemV2VTable = nil): gen_qlayoutitem_types.QWidgetItemV2 =
  let vtbl = if vtbl == nil: new QWidgetItemV2VTable else: vtbl
  GC_ref(vtbl)
  vtbl[].vtbl.destructor = proc(self: pointer) {.cdecl.} =
    let vtbl = cast[ref QWidgetItemV2VTable](fcQWidgetItemV2_vdata(self))
    GC_unref(vtbl)
  if not isNil(vtbl[].sizeHint):
    vtbl[].vtbl.sizeHint = fcQWidgetItemV2_vtable_callback_sizeHint
  if not isNil(vtbl[].minimumSize):
    vtbl[].vtbl.minimumSize = fcQWidgetItemV2_vtable_callback_minimumSize
  if not isNil(vtbl[].maximumSize):
    vtbl[].vtbl.maximumSize = fcQWidgetItemV2_vtable_callback_maximumSize
  if not isNil(vtbl[].heightForWidth):
    vtbl[].vtbl.heightForWidth = fcQWidgetItemV2_vtable_callback_heightForWidth
  if not isNil(vtbl[].expandingDirections):
    vtbl[].vtbl.expandingDirections = fcQWidgetItemV2_vtable_callback_expandingDirections
  if not isNil(vtbl[].isEmpty):
    vtbl[].vtbl.isEmpty = fcQWidgetItemV2_vtable_callback_isEmpty
  if not isNil(vtbl[].setGeometry):
    vtbl[].vtbl.setGeometry = fcQWidgetItemV2_vtable_callback_setGeometry
  if not isNil(vtbl[].geometry):
    vtbl[].vtbl.geometry = fcQWidgetItemV2_vtable_callback_geometry
  if not isNil(vtbl[].widget):
    vtbl[].vtbl.widget = fcQWidgetItemV2_vtable_callback_widget
  if not isNil(vtbl[].hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = fcQWidgetItemV2_vtable_callback_hasHeightForWidth
  if not isNil(vtbl[].controlTypes):
    vtbl[].vtbl.controlTypes = fcQWidgetItemV2_vtable_callback_controlTypes
  if not isNil(vtbl[].minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = fcQWidgetItemV2_vtable_callback_minimumHeightForWidth
  if not isNil(vtbl[].invalidate):
    vtbl[].vtbl.invalidate = fcQWidgetItemV2_vtable_callback_invalidate
  if not isNil(vtbl[].layout):
    vtbl[].vtbl.layout = fcQWidgetItemV2_vtable_callback_layout
  if not isNil(vtbl[].spacerItem):
    vtbl[].vtbl.spacerItem = fcQWidgetItemV2_vtable_callback_spacerItem
  gen_qlayoutitem_types.QWidgetItemV2(h: fcQWidgetItemV2_new(addr(vtbl[].vtbl), addr(vtbl[]), widget.h), owned: true)

const cQWidgetItemV2_mvtbl = cQWidgetItemV2VTable(
  destructor: proc(self: pointer) {.cdecl.} =
    let inst = cast[ptr typeof(VirtualQWidgetItemV2()[])](self.fcQWidgetItemV2_vtbl())
    inst[].h = nil
    inst[].owned = false,

  sizeHint: fcQWidgetItemV2_method_callback_sizeHint,
  minimumSize: fcQWidgetItemV2_method_callback_minimumSize,
  maximumSize: fcQWidgetItemV2_method_callback_maximumSize,
  heightForWidth: fcQWidgetItemV2_method_callback_heightForWidth,
  expandingDirections: fcQWidgetItemV2_method_callback_expandingDirections,
  isEmpty: fcQWidgetItemV2_method_callback_isEmpty,
  setGeometry: fcQWidgetItemV2_method_callback_setGeometry,
  geometry: fcQWidgetItemV2_method_callback_geometry,
  widget: fcQWidgetItemV2_method_callback_widget,
  hasHeightForWidth: fcQWidgetItemV2_method_callback_hasHeightForWidth,
  controlTypes: fcQWidgetItemV2_method_callback_controlTypes,
  minimumHeightForWidth: fcQWidgetItemV2_method_callback_minimumHeightForWidth,
  invalidate: fcQWidgetItemV2_method_callback_invalidate,
  layout: fcQWidgetItemV2_method_callback_layout,
  spacerItem: fcQWidgetItemV2_method_callback_spacerItem,
)
proc create*(T: type gen_qlayoutitem_types.QWidgetItemV2,
    widget: gen_qwidget_types.QWidget,
    inst: VirtualQWidgetItemV2) =
  if inst[].h != nil: delete(move(inst[]))
  inst[].h = fcQWidgetItemV2_new(addr(cQWidgetItemV2_mvtbl), addr(inst[]), widget.h)
  inst[].owned = true

