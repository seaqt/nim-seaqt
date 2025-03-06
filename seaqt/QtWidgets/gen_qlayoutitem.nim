import ./Qt5Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

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
{.compile("gen_qlayoutitem.cpp", cflags).}


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

proc fcQLayoutItem_sizeHint(self: pointer, ): pointer {.importc: "QLayoutItem_sizeHint".}
proc fcQLayoutItem_minimumSize(self: pointer, ): pointer {.importc: "QLayoutItem_minimumSize".}
proc fcQLayoutItem_maximumSize(self: pointer, ): pointer {.importc: "QLayoutItem_maximumSize".}
proc fcQLayoutItem_expandingDirections(self: pointer, ): cint {.importc: "QLayoutItem_expandingDirections".}
proc fcQLayoutItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QLayoutItem_setGeometry".}
proc fcQLayoutItem_geometry(self: pointer, ): pointer {.importc: "QLayoutItem_geometry".}
proc fcQLayoutItem_isEmpty(self: pointer, ): bool {.importc: "QLayoutItem_isEmpty".}
proc fcQLayoutItem_hasHeightForWidth(self: pointer, ): bool {.importc: "QLayoutItem_hasHeightForWidth".}
proc fcQLayoutItem_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_heightForWidth".}
proc fcQLayoutItem_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_minimumHeightForWidth".}
proc fcQLayoutItem_invalidate(self: pointer, ): void {.importc: "QLayoutItem_invalidate".}
proc fcQLayoutItem_widget(self: pointer, ): pointer {.importc: "QLayoutItem_widget".}
proc fcQLayoutItem_layout(self: pointer, ): pointer {.importc: "QLayoutItem_layout".}
proc fcQLayoutItem_spacerItem(self: pointer, ): pointer {.importc: "QLayoutItem_spacerItem".}
proc fcQLayoutItem_alignment(self: pointer, ): cint {.importc: "QLayoutItem_alignment".}
proc fcQLayoutItem_setAlignment(self: pointer, a: cint): void {.importc: "QLayoutItem_setAlignment".}
proc fcQLayoutItem_controlTypes(self: pointer, ): cint {.importc: "QLayoutItem_controlTypes".}
type cQLayoutItemVTable = object
  destructor*: proc(vtbl: ptr cQLayoutItemVTable, self: ptr cQLayoutItem) {.cdecl, raises:[], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
proc fcQLayoutItem_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QLayoutItem_virtualbase_hasHeightForWidth".}
proc fcQLayoutItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_virtualbase_heightForWidth".}
proc fcQLayoutItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QLayoutItem_virtualbase_minimumHeightForWidth".}
proc fcQLayoutItem_virtualbase_invalidate(self: pointer, ): void {.importc: "QLayoutItem_virtualbase_invalidate".}
proc fcQLayoutItem_virtualbase_widget(self: pointer, ): pointer {.importc: "QLayoutItem_virtualbase_widget".}
proc fcQLayoutItem_virtualbase_layout(self: pointer, ): pointer {.importc: "QLayoutItem_virtualbase_layout".}
proc fcQLayoutItem_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QLayoutItem_virtualbase_spacerItem".}
proc fcQLayoutItem_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QLayoutItem_virtualbase_controlTypes".}
proc fcQLayoutItem_new(vtbl: pointer, ): ptr cQLayoutItem {.importc: "QLayoutItem_new".}
proc fcQLayoutItem_new2(vtbl: pointer, param1: pointer): ptr cQLayoutItem {.importc: "QLayoutItem_new2".}
proc fcQLayoutItem_new3(vtbl: pointer, alignment: cint): ptr cQLayoutItem {.importc: "QLayoutItem_new3".}
proc fcQLayoutItem_delete(self: pointer) {.importc: "QLayoutItem_delete".}
proc fcQSpacerItem_changeSize(self: pointer, w: cint, h: cint): void {.importc: "QSpacerItem_changeSize".}
proc fcQSpacerItem_sizeHint(self: pointer, ): pointer {.importc: "QSpacerItem_sizeHint".}
proc fcQSpacerItem_minimumSize(self: pointer, ): pointer {.importc: "QSpacerItem_minimumSize".}
proc fcQSpacerItem_maximumSize(self: pointer, ): pointer {.importc: "QSpacerItem_maximumSize".}
proc fcQSpacerItem_expandingDirections(self: pointer, ): cint {.importc: "QSpacerItem_expandingDirections".}
proc fcQSpacerItem_isEmpty(self: pointer, ): bool {.importc: "QSpacerItem_isEmpty".}
proc fcQSpacerItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSpacerItem_setGeometry".}
proc fcQSpacerItem_geometry(self: pointer, ): pointer {.importc: "QSpacerItem_geometry".}
proc fcQSpacerItem_spacerItem(self: pointer, ): pointer {.importc: "QSpacerItem_spacerItem".}
proc fcQSpacerItem_sizePolicy(self: pointer, ): pointer {.importc: "QSpacerItem_sizePolicy".}
proc fcQSpacerItem_changeSize3(self: pointer, w: cint, h: cint, hData: cint): void {.importc: "QSpacerItem_changeSize3".}
proc fcQSpacerItem_changeSize4(self: pointer, w: cint, h: cint, hData: cint, vData: cint): void {.importc: "QSpacerItem_changeSize4".}
type cQSpacerItemVTable = object
  destructor*: proc(vtbl: ptr cQSpacerItemVTable, self: ptr cQSpacerItem) {.cdecl, raises:[], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
proc fcQSpacerItem_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QSpacerItem_virtualbase_sizeHint".}
proc fcQSpacerItem_virtualbase_minimumSize(self: pointer, ): pointer {.importc: "QSpacerItem_virtualbase_minimumSize".}
proc fcQSpacerItem_virtualbase_maximumSize(self: pointer, ): pointer {.importc: "QSpacerItem_virtualbase_maximumSize".}
proc fcQSpacerItem_virtualbase_expandingDirections(self: pointer, ): cint {.importc: "QSpacerItem_virtualbase_expandingDirections".}
proc fcQSpacerItem_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QSpacerItem_virtualbase_isEmpty".}
proc fcQSpacerItem_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QSpacerItem_virtualbase_setGeometry".}
proc fcQSpacerItem_virtualbase_geometry(self: pointer, ): pointer {.importc: "QSpacerItem_virtualbase_geometry".}
proc fcQSpacerItem_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QSpacerItem_virtualbase_spacerItem".}
proc fcQSpacerItem_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QSpacerItem_virtualbase_hasHeightForWidth".}
proc fcQSpacerItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QSpacerItem_virtualbase_heightForWidth".}
proc fcQSpacerItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QSpacerItem_virtualbase_minimumHeightForWidth".}
proc fcQSpacerItem_virtualbase_invalidate(self: pointer, ): void {.importc: "QSpacerItem_virtualbase_invalidate".}
proc fcQSpacerItem_virtualbase_widget(self: pointer, ): pointer {.importc: "QSpacerItem_virtualbase_widget".}
proc fcQSpacerItem_virtualbase_layout(self: pointer, ): pointer {.importc: "QSpacerItem_virtualbase_layout".}
proc fcQSpacerItem_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QSpacerItem_virtualbase_controlTypes".}
proc fcQSpacerItem_new(vtbl: pointer, w: cint, h: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new".}
proc fcQSpacerItem_new2(vtbl: pointer, param1: pointer): ptr cQSpacerItem {.importc: "QSpacerItem_new2".}
proc fcQSpacerItem_new3(vtbl: pointer, w: cint, h: cint, hData: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new3".}
proc fcQSpacerItem_new4(vtbl: pointer, w: cint, h: cint, hData: cint, vData: cint): ptr cQSpacerItem {.importc: "QSpacerItem_new4".}
proc fcQSpacerItem_delete(self: pointer) {.importc: "QSpacerItem_delete".}
proc fcQWidgetItem_sizeHint(self: pointer, ): pointer {.importc: "QWidgetItem_sizeHint".}
proc fcQWidgetItem_minimumSize(self: pointer, ): pointer {.importc: "QWidgetItem_minimumSize".}
proc fcQWidgetItem_maximumSize(self: pointer, ): pointer {.importc: "QWidgetItem_maximumSize".}
proc fcQWidgetItem_expandingDirections(self: pointer, ): cint {.importc: "QWidgetItem_expandingDirections".}
proc fcQWidgetItem_isEmpty(self: pointer, ): bool {.importc: "QWidgetItem_isEmpty".}
proc fcQWidgetItem_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWidgetItem_setGeometry".}
proc fcQWidgetItem_geometry(self: pointer, ): pointer {.importc: "QWidgetItem_geometry".}
proc fcQWidgetItem_widget(self: pointer, ): pointer {.importc: "QWidgetItem_widget".}
proc fcQWidgetItem_hasHeightForWidth(self: pointer, ): bool {.importc: "QWidgetItem_hasHeightForWidth".}
proc fcQWidgetItem_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_heightForWidth".}
proc fcQWidgetItem_controlTypes(self: pointer, ): cint {.importc: "QWidgetItem_controlTypes".}
type cQWidgetItemVTable = object
  destructor*: proc(vtbl: ptr cQWidgetItemVTable, self: ptr cQWidgetItem) {.cdecl, raises:[], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQWidgetItem_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QWidgetItem_virtualbase_sizeHint".}
proc fcQWidgetItem_virtualbase_minimumSize(self: pointer, ): pointer {.importc: "QWidgetItem_virtualbase_minimumSize".}
proc fcQWidgetItem_virtualbase_maximumSize(self: pointer, ): pointer {.importc: "QWidgetItem_virtualbase_maximumSize".}
proc fcQWidgetItem_virtualbase_expandingDirections(self: pointer, ): cint {.importc: "QWidgetItem_virtualbase_expandingDirections".}
proc fcQWidgetItem_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QWidgetItem_virtualbase_isEmpty".}
proc fcQWidgetItem_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWidgetItem_virtualbase_setGeometry".}
proc fcQWidgetItem_virtualbase_geometry(self: pointer, ): pointer {.importc: "QWidgetItem_virtualbase_geometry".}
proc fcQWidgetItem_virtualbase_widget(self: pointer, ): pointer {.importc: "QWidgetItem_virtualbase_widget".}
proc fcQWidgetItem_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QWidgetItem_virtualbase_hasHeightForWidth".}
proc fcQWidgetItem_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_virtualbase_heightForWidth".}
proc fcQWidgetItem_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QWidgetItem_virtualbase_controlTypes".}
proc fcQWidgetItem_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItem_virtualbase_minimumHeightForWidth".}
proc fcQWidgetItem_virtualbase_invalidate(self: pointer, ): void {.importc: "QWidgetItem_virtualbase_invalidate".}
proc fcQWidgetItem_virtualbase_layout(self: pointer, ): pointer {.importc: "QWidgetItem_virtualbase_layout".}
proc fcQWidgetItem_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QWidgetItem_virtualbase_spacerItem".}
proc fcQWidgetItem_new(vtbl: pointer, w: pointer): ptr cQWidgetItem {.importc: "QWidgetItem_new".}
proc fcQWidgetItem_delete(self: pointer) {.importc: "QWidgetItem_delete".}
proc fcQWidgetItemV2_sizeHint(self: pointer, ): pointer {.importc: "QWidgetItemV2_sizeHint".}
proc fcQWidgetItemV2_minimumSize(self: pointer, ): pointer {.importc: "QWidgetItemV2_minimumSize".}
proc fcQWidgetItemV2_maximumSize(self: pointer, ): pointer {.importc: "QWidgetItemV2_maximumSize".}
proc fcQWidgetItemV2_heightForWidth(self: pointer, width: cint): cint {.importc: "QWidgetItemV2_heightForWidth".}
type cQWidgetItemV2VTable = object
  destructor*: proc(vtbl: ptr cQWidgetItemV2VTable, self: ptr cQWidgetItemV2) {.cdecl, raises:[], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  maximumSize*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, width: cint): cint {.cdecl, raises: [], gcsafe.}
  expandingDirections*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  isEmpty*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  setGeometry*: proc(vtbl, self: pointer, geometry: pointer): void {.cdecl, raises: [], gcsafe.}
  geometry*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  widget*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  controlTypes*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  minimumHeightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  invalidate*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  layout*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  spacerItem*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
proc fcQWidgetItemV2_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QWidgetItemV2_virtualbase_sizeHint".}
proc fcQWidgetItemV2_virtualbase_minimumSize(self: pointer, ): pointer {.importc: "QWidgetItemV2_virtualbase_minimumSize".}
proc fcQWidgetItemV2_virtualbase_maximumSize(self: pointer, ): pointer {.importc: "QWidgetItemV2_virtualbase_maximumSize".}
proc fcQWidgetItemV2_virtualbase_heightForWidth(self: pointer, width: cint): cint {.importc: "QWidgetItemV2_virtualbase_heightForWidth".}
proc fcQWidgetItemV2_virtualbase_expandingDirections(self: pointer, ): cint {.importc: "QWidgetItemV2_virtualbase_expandingDirections".}
proc fcQWidgetItemV2_virtualbase_isEmpty(self: pointer, ): bool {.importc: "QWidgetItemV2_virtualbase_isEmpty".}
proc fcQWidgetItemV2_virtualbase_setGeometry(self: pointer, geometry: pointer): void {.importc: "QWidgetItemV2_virtualbase_setGeometry".}
proc fcQWidgetItemV2_virtualbase_geometry(self: pointer, ): pointer {.importc: "QWidgetItemV2_virtualbase_geometry".}
proc fcQWidgetItemV2_virtualbase_widget(self: pointer, ): pointer {.importc: "QWidgetItemV2_virtualbase_widget".}
proc fcQWidgetItemV2_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QWidgetItemV2_virtualbase_hasHeightForWidth".}
proc fcQWidgetItemV2_virtualbase_controlTypes(self: pointer, ): cint {.importc: "QWidgetItemV2_virtualbase_controlTypes".}
proc fcQWidgetItemV2_virtualbase_minimumHeightForWidth(self: pointer, param1: cint): cint {.importc: "QWidgetItemV2_virtualbase_minimumHeightForWidth".}
proc fcQWidgetItemV2_virtualbase_invalidate(self: pointer, ): void {.importc: "QWidgetItemV2_virtualbase_invalidate".}
proc fcQWidgetItemV2_virtualbase_layout(self: pointer, ): pointer {.importc: "QWidgetItemV2_virtualbase_layout".}
proc fcQWidgetItemV2_virtualbase_spacerItem(self: pointer, ): pointer {.importc: "QWidgetItemV2_virtualbase_spacerItem".}
proc fcQWidgetItemV2_new(vtbl: pointer, widget: pointer): ptr cQWidgetItemV2 {.importc: "QWidgetItemV2_new".}
proc fcQWidgetItemV2_delete(self: pointer) {.importc: "QWidgetItemV2_delete".}

proc sizeHint*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_sizeHint(self.h))

proc minimumSize*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_minimumSize(self.h))

proc maximumSize*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQLayoutItem_maximumSize(self.h))

proc expandingDirections*(self: gen_qlayoutitem_types.QLayoutItem, ): cint =
  cint(fcQLayoutItem_expandingDirections(self.h))

proc setGeometry*(self: gen_qlayoutitem_types.QLayoutItem, geometry: gen_qrect_types.QRect): void =
  fcQLayoutItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQLayoutItem_geometry(self.h))

proc isEmpty*(self: gen_qlayoutitem_types.QLayoutItem, ): bool =
  fcQLayoutItem_isEmpty(self.h)

proc hasHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, ): bool =
  fcQLayoutItem_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_heightForWidth(self.h, param1)

proc minimumHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_minimumHeightForWidth(self.h, param1)

proc invalidate*(self: gen_qlayoutitem_types.QLayoutItem, ): void =
  fcQLayoutItem_invalidate(self.h)

proc widget*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayoutItem_widget(self.h))

proc layout*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayoutItem_layout(self.h))

proc spacerItem*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQLayoutItem_spacerItem(self.h))

proc alignment*(self: gen_qlayoutitem_types.QLayoutItem, ): cint =
  cint(fcQLayoutItem_alignment(self.h))

proc setAlignment*(self: gen_qlayoutitem_types.QLayoutItem, a: cint): void =
  fcQLayoutItem_setAlignment(self.h, cint(a))

proc controlTypes*(self: gen_qlayoutitem_types.QLayoutItem, ): cint =
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
type QLayoutItemVTable* = object
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
proc miqt_exec_callback_cQLayoutItem_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc miqt_exec_callback_cQLayoutItem_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.h

proc miqt_exec_callback_cQLayoutItem_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.h

proc miqt_exec_callback_cQLayoutItem_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc miqt_exec_callback_cQLayoutItem_setGeometry(vtbl: pointer, self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry)
  vtbl[].setGeometry(self, slotval1)

proc miqt_exec_callback_cQLayoutItem_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.h

proc miqt_exec_callback_cQLayoutItem_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QLayoutItemhasHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, ): bool =
  fcQLayoutItem_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQLayoutItem_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QLayoutItemheightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQLayoutItem_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QLayoutItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QLayoutItem, param1: cint): cint =
  fcQLayoutItem_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQLayoutItem_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QLayoutIteminvalidate*(self: gen_qlayoutitem_types.QLayoutItem, ): void =
  fcQLayoutItem_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQLayoutItem_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  vtbl[].invalidate(self)

proc QLayoutItemwidget*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQLayoutItem_virtualbase_widget(self.h))

proc miqt_exec_callback_cQLayoutItem_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.h

proc QLayoutItemlayout*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQLayoutItem_virtualbase_layout(self.h))

proc miqt_exec_callback_cQLayoutItem_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.h

proc QLayoutItemspacerItem*(self: gen_qlayoutitem_types.QLayoutItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQLayoutItem_virtualbase_spacerItem(self.h))

proc miqt_exec_callback_cQLayoutItem_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.h

proc QLayoutItemcontrolTypes*(self: gen_qlayoutitem_types.QLayoutItem, ): cint =
  cint(fcQLayoutItem_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQLayoutItem_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QLayoutItemVTable](vtbl)
  let self = QLayoutItem(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    vtbl: ref QLayoutItemVTable = nil): gen_qlayoutitem_types.QLayoutItem =
  let vtbl = if vtbl == nil: new QLayoutItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLayoutItemVTable, _: ptr cQLayoutItem) {.cdecl.} =
    let vtbl = cast[ref QLayoutItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLayoutItem_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQLayoutItem_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQLayoutItem_maximumSize
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQLayoutItem_expandingDirections
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQLayoutItem_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQLayoutItem_geometry
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQLayoutItem_isEmpty
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLayoutItem_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLayoutItem_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQLayoutItem_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQLayoutItem_invalidate
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQLayoutItem_widget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQLayoutItem_layout
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQLayoutItem_spacerItem
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQLayoutItem_controlTypes
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayoutItem_new(addr(vtbl[]), ))

proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    param1: gen_qlayoutitem_types.QLayoutItem,
    vtbl: ref QLayoutItemVTable = nil): gen_qlayoutitem_types.QLayoutItem =
  let vtbl = if vtbl == nil: new QLayoutItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLayoutItemVTable, _: ptr cQLayoutItem) {.cdecl.} =
    let vtbl = cast[ref QLayoutItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLayoutItem_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQLayoutItem_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQLayoutItem_maximumSize
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQLayoutItem_expandingDirections
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQLayoutItem_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQLayoutItem_geometry
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQLayoutItem_isEmpty
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLayoutItem_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLayoutItem_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQLayoutItem_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQLayoutItem_invalidate
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQLayoutItem_widget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQLayoutItem_layout
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQLayoutItem_spacerItem
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQLayoutItem_controlTypes
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayoutItem_new2(addr(vtbl[]), param1.h))

proc create*(T: type gen_qlayoutitem_types.QLayoutItem,
    alignment: cint,
    vtbl: ref QLayoutItemVTable = nil): gen_qlayoutitem_types.QLayoutItem =
  let vtbl = if vtbl == nil: new QLayoutItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQLayoutItemVTable, _: ptr cQLayoutItem) {.cdecl.} =
    let vtbl = cast[ref QLayoutItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQLayoutItem_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQLayoutItem_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQLayoutItem_maximumSize
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQLayoutItem_expandingDirections
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQLayoutItem_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQLayoutItem_geometry
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQLayoutItem_isEmpty
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQLayoutItem_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQLayoutItem_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQLayoutItem_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQLayoutItem_invalidate
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQLayoutItem_widget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQLayoutItem_layout
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQLayoutItem_spacerItem
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQLayoutItem_controlTypes
  gen_qlayoutitem_types.QLayoutItem(h: fcQLayoutItem_new3(addr(vtbl[]), cint(alignment)))

proc delete*(self: gen_qlayoutitem_types.QLayoutItem) =
  fcQLayoutItem_delete(self.h)
proc changeSize*(self: gen_qlayoutitem_types.QSpacerItem, w: cint, h: cint): void =
  fcQSpacerItem_changeSize(self.h, w, h)

proc sizeHint*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_sizeHint(self.h))

proc minimumSize*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_minimumSize(self.h))

proc maximumSize*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_maximumSize(self.h))

proc expandingDirections*(self: gen_qlayoutitem_types.QSpacerItem, ): cint =
  cint(fcQSpacerItem_expandingDirections(self.h))

proc isEmpty*(self: gen_qlayoutitem_types.QSpacerItem, ): bool =
  fcQSpacerItem_isEmpty(self.h)

proc setGeometry*(self: gen_qlayoutitem_types.QSpacerItem, geometry: gen_qrect_types.QRect): void =
  fcQSpacerItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSpacerItem_geometry(self.h))

proc spacerItem*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_spacerItem(self.h))

proc sizePolicy*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsizepolicy_types.QSizePolicy =
  gen_qsizepolicy_types.QSizePolicy(h: fcQSpacerItem_sizePolicy(self.h))

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
type QSpacerItemVTable* = object
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
proc QSpacerItemsizeHint*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQSpacerItem_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QSpacerItemminimumSize*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_virtualbase_minimumSize(self.h))

proc miqt_exec_callback_cQSpacerItem_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.h

proc QSpacerItemmaximumSize*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSpacerItem_virtualbase_maximumSize(self.h))

proc miqt_exec_callback_cQSpacerItem_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.h

proc QSpacerItemexpandingDirections*(self: gen_qlayoutitem_types.QSpacerItem, ): cint =
  cint(fcQSpacerItem_virtualbase_expandingDirections(self.h))

proc miqt_exec_callback_cQSpacerItem_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QSpacerItemisEmpty*(self: gen_qlayoutitem_types.QSpacerItem, ): bool =
  fcQSpacerItem_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQSpacerItem_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QSpacerItemsetGeometry*(self: gen_qlayoutitem_types.QSpacerItem, geometry: gen_qrect_types.QRect): void =
  fcQSpacerItem_virtualbase_setGeometry(self.h, geometry.h)

proc miqt_exec_callback_cQSpacerItem_setGeometry(vtbl: pointer, self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry)
  vtbl[].setGeometry(self, slotval1)

proc QSpacerItemgeometry*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQSpacerItem_virtualbase_geometry(self.h))

proc miqt_exec_callback_cQSpacerItem_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.h

proc QSpacerItemspacerItem*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_virtualbase_spacerItem(self.h))

proc miqt_exec_callback_cQSpacerItem_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.h

proc QSpacerItemhasHeightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, ): bool =
  fcQSpacerItem_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQSpacerItem_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QSpacerItemheightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, param1: cint): cint =
  fcQSpacerItem_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQSpacerItem_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QSpacerItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QSpacerItem, param1: cint): cint =
  fcQSpacerItem_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQSpacerItem_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QSpacerIteminvalidate*(self: gen_qlayoutitem_types.QSpacerItem, ): void =
  fcQSpacerItem_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQSpacerItem_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  vtbl[].invalidate(self)

proc QSpacerItemwidget*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQSpacerItem_virtualbase_widget(self.h))

proc miqt_exec_callback_cQSpacerItem_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.h

proc QSpacerItemlayout*(self: gen_qlayoutitem_types.QSpacerItem, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQSpacerItem_virtualbase_layout(self.h))

proc miqt_exec_callback_cQSpacerItem_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.h

proc QSpacerItemcontrolTypes*(self: gen_qlayoutitem_types.QSpacerItem, ): cint =
  cint(fcQSpacerItem_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQSpacerItem_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSpacerItemVTable](vtbl)
  let self = QSpacerItem(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint,
    vtbl: ref QSpacerItemVTable = nil): gen_qlayoutitem_types.QSpacerItem =
  let vtbl = if vtbl == nil: new QSpacerItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSpacerItemVTable, _: ptr cQSpacerItem) {.cdecl.} =
    let vtbl = cast[ref QSpacerItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSpacerItem_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQSpacerItem_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQSpacerItem_maximumSize
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQSpacerItem_expandingDirections
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQSpacerItem_isEmpty
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQSpacerItem_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQSpacerItem_geometry
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQSpacerItem_spacerItem
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSpacerItem_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSpacerItem_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQSpacerItem_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQSpacerItem_invalidate
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQSpacerItem_widget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQSpacerItem_layout
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQSpacerItem_controlTypes
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_new(addr(vtbl[]), w, h))

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    param1: gen_qlayoutitem_types.QSpacerItem,
    vtbl: ref QSpacerItemVTable = nil): gen_qlayoutitem_types.QSpacerItem =
  let vtbl = if vtbl == nil: new QSpacerItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSpacerItemVTable, _: ptr cQSpacerItem) {.cdecl.} =
    let vtbl = cast[ref QSpacerItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSpacerItem_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQSpacerItem_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQSpacerItem_maximumSize
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQSpacerItem_expandingDirections
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQSpacerItem_isEmpty
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQSpacerItem_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQSpacerItem_geometry
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQSpacerItem_spacerItem
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSpacerItem_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSpacerItem_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQSpacerItem_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQSpacerItem_invalidate
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQSpacerItem_widget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQSpacerItem_layout
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQSpacerItem_controlTypes
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_new2(addr(vtbl[]), param1.h))

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint, hData: cint,
    vtbl: ref QSpacerItemVTable = nil): gen_qlayoutitem_types.QSpacerItem =
  let vtbl = if vtbl == nil: new QSpacerItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSpacerItemVTable, _: ptr cQSpacerItem) {.cdecl.} =
    let vtbl = cast[ref QSpacerItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSpacerItem_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQSpacerItem_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQSpacerItem_maximumSize
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQSpacerItem_expandingDirections
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQSpacerItem_isEmpty
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQSpacerItem_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQSpacerItem_geometry
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQSpacerItem_spacerItem
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSpacerItem_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSpacerItem_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQSpacerItem_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQSpacerItem_invalidate
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQSpacerItem_widget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQSpacerItem_layout
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQSpacerItem_controlTypes
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_new3(addr(vtbl[]), w, h, cint(hData)))

proc create*(T: type gen_qlayoutitem_types.QSpacerItem,
    w: cint, h: cint, hData: cint, vData: cint,
    vtbl: ref QSpacerItemVTable = nil): gen_qlayoutitem_types.QSpacerItem =
  let vtbl = if vtbl == nil: new QSpacerItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSpacerItemVTable, _: ptr cQSpacerItem) {.cdecl.} =
    let vtbl = cast[ref QSpacerItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQSpacerItem_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQSpacerItem_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQSpacerItem_maximumSize
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQSpacerItem_expandingDirections
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQSpacerItem_isEmpty
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQSpacerItem_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQSpacerItem_geometry
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQSpacerItem_spacerItem
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQSpacerItem_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQSpacerItem_heightForWidth
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQSpacerItem_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQSpacerItem_invalidate
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQSpacerItem_widget
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQSpacerItem_layout
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQSpacerItem_controlTypes
  gen_qlayoutitem_types.QSpacerItem(h: fcQSpacerItem_new4(addr(vtbl[]), w, h, cint(hData), cint(vData)))

proc delete*(self: gen_qlayoutitem_types.QSpacerItem) =
  fcQSpacerItem_delete(self.h)
proc sizeHint*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_sizeHint(self.h))

proc minimumSize*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_minimumSize(self.h))

proc maximumSize*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_maximumSize(self.h))

proc expandingDirections*(self: gen_qlayoutitem_types.QWidgetItem, ): cint =
  cint(fcQWidgetItem_expandingDirections(self.h))

proc isEmpty*(self: gen_qlayoutitem_types.QWidgetItem, ): bool =
  fcQWidgetItem_isEmpty(self.h)

proc setGeometry*(self: gen_qlayoutitem_types.QWidgetItem, geometry: gen_qrect_types.QRect): void =
  fcQWidgetItem_setGeometry(self.h, geometry.h)

proc geometry*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidgetItem_geometry(self.h))

proc widget*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetItem_widget(self.h))

proc hasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, ): bool =
  fcQWidgetItem_hasHeightForWidth(self.h)

proc heightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fcQWidgetItem_heightForWidth(self.h, param1)

proc controlTypes*(self: gen_qlayoutitem_types.QWidgetItem, ): cint =
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
type QWidgetItemVTable* = object
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
proc QWidgetItemsizeHint*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQWidgetItem_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QWidgetItemminimumSize*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_virtualbase_minimumSize(self.h))

proc miqt_exec_callback_cQWidgetItem_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.h

proc QWidgetItemmaximumSize*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItem_virtualbase_maximumSize(self.h))

proc miqt_exec_callback_cQWidgetItem_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.h

proc QWidgetItemexpandingDirections*(self: gen_qlayoutitem_types.QWidgetItem, ): cint =
  cint(fcQWidgetItem_virtualbase_expandingDirections(self.h))

proc miqt_exec_callback_cQWidgetItem_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QWidgetItemisEmpty*(self: gen_qlayoutitem_types.QWidgetItem, ): bool =
  fcQWidgetItem_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQWidgetItem_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QWidgetItemsetGeometry*(self: gen_qlayoutitem_types.QWidgetItem, geometry: gen_qrect_types.QRect): void =
  fcQWidgetItem_virtualbase_setGeometry(self.h, geometry.h)

proc miqt_exec_callback_cQWidgetItem_setGeometry(vtbl: pointer, self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry)
  vtbl[].setGeometry(self, slotval1)

proc QWidgetItemgeometry*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidgetItem_virtualbase_geometry(self.h))

proc miqt_exec_callback_cQWidgetItem_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.h

proc QWidgetItemwidget*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetItem_virtualbase_widget(self.h))

proc miqt_exec_callback_cQWidgetItem_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.h

proc QWidgetItemhasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, ): bool =
  fcQWidgetItem_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQWidgetItem_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWidgetItemheightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fcQWidgetItem_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQWidgetItem_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWidgetItemcontrolTypes*(self: gen_qlayoutitem_types.QWidgetItem, ): cint =
  cint(fcQWidgetItem_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQWidgetItem_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QWidgetItemminimumHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItem, param1: cint): cint =
  fcQWidgetItem_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQWidgetItem_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QWidgetIteminvalidate*(self: gen_qlayoutitem_types.QWidgetItem, ): void =
  fcQWidgetItem_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQWidgetItem_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  vtbl[].invalidate(self)

proc QWidgetItemlayout*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQWidgetItem_virtualbase_layout(self.h))

proc miqt_exec_callback_cQWidgetItem_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.h

proc QWidgetItemspacerItem*(self: gen_qlayoutitem_types.QWidgetItem, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQWidgetItem_virtualbase_spacerItem(self.h))

proc miqt_exec_callback_cQWidgetItem_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemVTable](vtbl)
  let self = QWidgetItem(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.h

proc create*(T: type gen_qlayoutitem_types.QWidgetItem,
    w: gen_qwidget_types.QWidget,
    vtbl: ref QWidgetItemVTable = nil): gen_qlayoutitem_types.QWidgetItem =
  let vtbl = if vtbl == nil: new QWidgetItemVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWidgetItemVTable, _: ptr cQWidgetItem) {.cdecl.} =
    let vtbl = cast[ref QWidgetItemVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWidgetItem_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQWidgetItem_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQWidgetItem_maximumSize
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQWidgetItem_expandingDirections
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQWidgetItem_isEmpty
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQWidgetItem_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQWidgetItem_geometry
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQWidgetItem_widget
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWidgetItem_hasHeightForWidth
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWidgetItem_heightForWidth
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQWidgetItem_controlTypes
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQWidgetItem_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQWidgetItem_invalidate
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQWidgetItem_layout
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQWidgetItem_spacerItem
  gen_qlayoutitem_types.QWidgetItem(h: fcQWidgetItem_new(addr(vtbl[]), w.h))

proc delete*(self: gen_qlayoutitem_types.QWidgetItem) =
  fcQWidgetItem_delete(self.h)
proc sizeHint*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_sizeHint(self.h))

proc minimumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_minimumSize(self.h))

proc maximumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_maximumSize(self.h))

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
type QWidgetItemV2VTable* = object
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
proc QWidgetItemV2sizeHint*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQWidgetItemV2_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QWidgetItemV2minimumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_virtualbase_minimumSize(self.h))

proc miqt_exec_callback_cQWidgetItemV2_minimumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].minimumSize(self)
  virtualReturn.h

proc QWidgetItemV2maximumSize*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQWidgetItemV2_virtualbase_maximumSize(self.h))

proc miqt_exec_callback_cQWidgetItemV2_maximumSize(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].maximumSize(self)
  virtualReturn.h

proc QWidgetItemV2heightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, width: cint): cint =
  fcQWidgetItemV2_virtualbase_heightForWidth(self.h, width)

proc miqt_exec_callback_cQWidgetItemV2_heightForWidth(vtbl: pointer, self: pointer, width: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  let slotval1 = width
  var virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QWidgetItemV2expandingDirections*(self: gen_qlayoutitem_types.QWidgetItemV2, ): cint =
  cint(fcQWidgetItemV2_virtualbase_expandingDirections(self.h))

proc miqt_exec_callback_cQWidgetItemV2_expandingDirections(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].expandingDirections(self)
  cint(virtualReturn)

proc QWidgetItemV2isEmpty*(self: gen_qlayoutitem_types.QWidgetItemV2, ): bool =
  fcQWidgetItemV2_virtualbase_isEmpty(self.h)

proc miqt_exec_callback_cQWidgetItemV2_isEmpty(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].isEmpty(self)
  virtualReturn

proc QWidgetItemV2setGeometry*(self: gen_qlayoutitem_types.QWidgetItemV2, geometry: gen_qrect_types.QRect): void =
  fcQWidgetItemV2_virtualbase_setGeometry(self.h, geometry.h)

proc miqt_exec_callback_cQWidgetItemV2_setGeometry(vtbl: pointer, self: pointer, geometry: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  let slotval1 = gen_qrect_types.QRect(h: geometry)
  vtbl[].setGeometry(self, slotval1)

proc QWidgetItemV2geometry*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQWidgetItemV2_virtualbase_geometry(self.h))

proc miqt_exec_callback_cQWidgetItemV2_geometry(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].geometry(self)
  virtualReturn.h

proc QWidgetItemV2widget*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQWidgetItemV2_virtualbase_widget(self.h))

proc miqt_exec_callback_cQWidgetItemV2_widget(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].widget(self)
  virtualReturn.h

proc QWidgetItemV2hasHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, ): bool =
  fcQWidgetItemV2_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQWidgetItemV2_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QWidgetItemV2controlTypes*(self: gen_qlayoutitem_types.QWidgetItemV2, ): cint =
  cint(fcQWidgetItemV2_virtualbase_controlTypes(self.h))

proc miqt_exec_callback_cQWidgetItemV2_controlTypes(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].controlTypes(self)
  cint(virtualReturn)

proc QWidgetItemV2minimumHeightForWidth*(self: gen_qlayoutitem_types.QWidgetItemV2, param1: cint): cint =
  fcQWidgetItemV2_virtualbase_minimumHeightForWidth(self.h, param1)

proc miqt_exec_callback_cQWidgetItemV2_minimumHeightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  let slotval1 = param1
  var virtualReturn = vtbl[].minimumHeightForWidth(self, slotval1)
  virtualReturn

proc QWidgetItemV2invalidate*(self: gen_qlayoutitem_types.QWidgetItemV2, ): void =
  fcQWidgetItemV2_virtualbase_invalidate(self.h)

proc miqt_exec_callback_cQWidgetItemV2_invalidate(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  vtbl[].invalidate(self)

proc QWidgetItemV2layout*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qlayout_types.QLayout =
  gen_qlayout_types.QLayout(h: fcQWidgetItemV2_virtualbase_layout(self.h))

proc miqt_exec_callback_cQWidgetItemV2_layout(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].layout(self)
  virtualReturn.h

proc QWidgetItemV2spacerItem*(self: gen_qlayoutitem_types.QWidgetItemV2, ): gen_qlayoutitem_types.QSpacerItem =
  gen_qlayoutitem_types.QSpacerItem(h: fcQWidgetItemV2_virtualbase_spacerItem(self.h))

proc miqt_exec_callback_cQWidgetItemV2_spacerItem(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QWidgetItemV2VTable](vtbl)
  let self = QWidgetItemV2(h: self)
  var virtualReturn = vtbl[].spacerItem(self)
  virtualReturn.h

proc create*(T: type gen_qlayoutitem_types.QWidgetItemV2,
    widget: gen_qwidget_types.QWidget,
    vtbl: ref QWidgetItemV2VTable = nil): gen_qlayoutitem_types.QWidgetItemV2 =
  let vtbl = if vtbl == nil: new QWidgetItemV2VTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQWidgetItemV2VTable, _: ptr cQWidgetItemV2) {.cdecl.} =
    let vtbl = cast[ref QWidgetItemV2VTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQWidgetItemV2_sizeHint
  if not isNil(vtbl.minimumSize):
    vtbl[].vtbl.minimumSize = miqt_exec_callback_cQWidgetItemV2_minimumSize
  if not isNil(vtbl.maximumSize):
    vtbl[].vtbl.maximumSize = miqt_exec_callback_cQWidgetItemV2_maximumSize
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQWidgetItemV2_heightForWidth
  if not isNil(vtbl.expandingDirections):
    vtbl[].vtbl.expandingDirections = miqt_exec_callback_cQWidgetItemV2_expandingDirections
  if not isNil(vtbl.isEmpty):
    vtbl[].vtbl.isEmpty = miqt_exec_callback_cQWidgetItemV2_isEmpty
  if not isNil(vtbl.setGeometry):
    vtbl[].vtbl.setGeometry = miqt_exec_callback_cQWidgetItemV2_setGeometry
  if not isNil(vtbl.geometry):
    vtbl[].vtbl.geometry = miqt_exec_callback_cQWidgetItemV2_geometry
  if not isNil(vtbl.widget):
    vtbl[].vtbl.widget = miqt_exec_callback_cQWidgetItemV2_widget
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQWidgetItemV2_hasHeightForWidth
  if not isNil(vtbl.controlTypes):
    vtbl[].vtbl.controlTypes = miqt_exec_callback_cQWidgetItemV2_controlTypes
  if not isNil(vtbl.minimumHeightForWidth):
    vtbl[].vtbl.minimumHeightForWidth = miqt_exec_callback_cQWidgetItemV2_minimumHeightForWidth
  if not isNil(vtbl.invalidate):
    vtbl[].vtbl.invalidate = miqt_exec_callback_cQWidgetItemV2_invalidate
  if not isNil(vtbl.layout):
    vtbl[].vtbl.layout = miqt_exec_callback_cQWidgetItemV2_layout
  if not isNil(vtbl.spacerItem):
    vtbl[].vtbl.spacerItem = miqt_exec_callback_cQWidgetItemV2_spacerItem
  gen_qlayoutitem_types.QWidgetItemV2(h: fcQWidgetItemV2_new(addr(vtbl[]), widget.h))

proc delete*(self: gen_qlayoutitem_types.QWidgetItemV2) =
  fcQWidgetItemV2_delete(self.h)
