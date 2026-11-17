import ./qtwidgets_pkg

{.push raises: [].}

from system/ansi_c import c_free, c_malloc

type
  struct_seaqt_string {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_seaqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: struct_seaqt_string): string {.used.} =
  if v.len > 0:
    let len = cast[int](v.len)
    result = newStringUninit(len)
    when nimvm:
      let d = cast[ptr UncheckedArray[char]](v.data)
      for i in 0..<len:
        result[i] = d[i]
    else:
      copyMem(addr result[0], v.data, len)


type QStyleOptionOptionTypeEnum* = distinct cint
template SO_Default*(_: type QStyleOptionOptionTypeEnum): untyped = 0
template SO_FocusRect*(_: type QStyleOptionOptionTypeEnum): untyped = 1
template SO_Button*(_: type QStyleOptionOptionTypeEnum): untyped = 2
template SO_Tab*(_: type QStyleOptionOptionTypeEnum): untyped = 3
template SO_MenuItem*(_: type QStyleOptionOptionTypeEnum): untyped = 4
template SO_Frame*(_: type QStyleOptionOptionTypeEnum): untyped = 5
template SO_ProgressBar*(_: type QStyleOptionOptionTypeEnum): untyped = 6
template SO_ToolBox*(_: type QStyleOptionOptionTypeEnum): untyped = 7
template SO_Header*(_: type QStyleOptionOptionTypeEnum): untyped = 8
template SO_DockWidget*(_: type QStyleOptionOptionTypeEnum): untyped = 9
template SO_ViewItem*(_: type QStyleOptionOptionTypeEnum): untyped = 10
template SO_TabWidgetFrame*(_: type QStyleOptionOptionTypeEnum): untyped = 11
template SO_TabBarBase*(_: type QStyleOptionOptionTypeEnum): untyped = 12
template SO_RubberBand*(_: type QStyleOptionOptionTypeEnum): untyped = 13
template SO_ToolBar*(_: type QStyleOptionOptionTypeEnum): untyped = 14
template SO_GraphicsItem*(_: type QStyleOptionOptionTypeEnum): untyped = 15
template SO_Complex*(_: type QStyleOptionOptionTypeEnum): untyped = 983040
template SO_Slider*(_: type QStyleOptionOptionTypeEnum): untyped = 983041
template SO_SpinBox*(_: type QStyleOptionOptionTypeEnum): untyped = 983042
template SO_ToolButton*(_: type QStyleOptionOptionTypeEnum): untyped = 983043
template SO_ComboBox*(_: type QStyleOptionOptionTypeEnum): untyped = 983044
template SO_TitleBar*(_: type QStyleOptionOptionTypeEnum): untyped = 983045
template SO_GroupBox*(_: type QStyleOptionOptionTypeEnum): untyped = 983046
template SO_SizeGrip*(_: type QStyleOptionOptionTypeEnum): untyped = 983047
template SO_CustomBase*(_: type QStyleOptionOptionTypeEnum): untyped = 3840
template SO_ComplexCustomBase*(_: type QStyleOptionOptionTypeEnum): untyped = 251658240


type QStyleOptionStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionStyleOptionTypeEnum): untyped = 0


type QStyleOptionStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionStyleOptionVersionEnum): untyped = 1


type QStyleOptionFocusRectStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionFocusRectStyleOptionTypeEnum): untyped = 1


type QStyleOptionFocusRectStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionFocusRectStyleOptionVersionEnum): untyped = 1


type QStyleOptionFrameStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionFrameStyleOptionTypeEnum): untyped = 5


type QStyleOptionFrameStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionFrameStyleOptionVersionEnum): untyped = 1


type QStyleOptionFrameFrameFeatureEnum* = distinct cint
template None*(_: type QStyleOptionFrameFrameFeatureEnum): untyped = 0
template Flat*(_: type QStyleOptionFrameFrameFeatureEnum): untyped = 1
template Rounded*(_: type QStyleOptionFrameFrameFeatureEnum): untyped = 2


type QStyleOptionTabWidgetFrameStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionTabWidgetFrameStyleOptionTypeEnum): untyped = 11


type QStyleOptionTabWidgetFrameStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionTabWidgetFrameStyleOptionVersionEnum): untyped = 1


type QStyleOptionTabBarBaseStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionTabBarBaseStyleOptionTypeEnum): untyped = 12


type QStyleOptionTabBarBaseStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionTabBarBaseStyleOptionVersionEnum): untyped = 1


type QStyleOptionHeaderStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionHeaderStyleOptionTypeEnum): untyped = 8


type QStyleOptionHeaderStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionHeaderStyleOptionVersionEnum): untyped = 1


type QStyleOptionHeaderSectionPositionEnum* = distinct cint
template Beginning*(_: type QStyleOptionHeaderSectionPositionEnum): untyped = 0
template Middle*(_: type QStyleOptionHeaderSectionPositionEnum): untyped = 1
template End*(_: type QStyleOptionHeaderSectionPositionEnum): untyped = 2
template OnlyOneSection*(_: type QStyleOptionHeaderSectionPositionEnum): untyped = 3


type QStyleOptionHeaderSelectedPositionEnum* = distinct cint
template NotAdjacent*(_: type QStyleOptionHeaderSelectedPositionEnum): untyped = 0
template NextIsSelected*(_: type QStyleOptionHeaderSelectedPositionEnum): untyped = 1
template PreviousIsSelected*(_: type QStyleOptionHeaderSelectedPositionEnum): untyped = 2
template NextAndPreviousAreSelected*(_: type QStyleOptionHeaderSelectedPositionEnum): untyped = 3


type QStyleOptionHeaderSortIndicatorEnum* = distinct cint
template None*(_: type QStyleOptionHeaderSortIndicatorEnum): untyped = 0
template SortUp*(_: type QStyleOptionHeaderSortIndicatorEnum): untyped = 1
template SortDown*(_: type QStyleOptionHeaderSortIndicatorEnum): untyped = 2


type QStyleOptionHeaderV2StyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionHeaderV2StyleOptionTypeEnum): untyped = 8


type QStyleOptionHeaderV2StyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionHeaderV2StyleOptionVersionEnum): untyped = 2


type QStyleOptionButtonStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionButtonStyleOptionTypeEnum): untyped = 2


type QStyleOptionButtonStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionButtonStyleOptionVersionEnum): untyped = 1


type QStyleOptionButtonButtonFeatureEnum* = distinct cint
template None*(_: type QStyleOptionButtonButtonFeatureEnum): untyped = 0
template Flat*(_: type QStyleOptionButtonButtonFeatureEnum): untyped = 1
template HasMenu*(_: type QStyleOptionButtonButtonFeatureEnum): untyped = 2
template DefaultButton*(_: type QStyleOptionButtonButtonFeatureEnum): untyped = 4
template AutoDefaultButton*(_: type QStyleOptionButtonButtonFeatureEnum): untyped = 8
template CommandLinkButton*(_: type QStyleOptionButtonButtonFeatureEnum): untyped = 16


type QStyleOptionTabStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionTabStyleOptionTypeEnum): untyped = 3


type QStyleOptionTabStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionTabStyleOptionVersionEnum): untyped = 1


type QStyleOptionTabTabPositionEnum* = distinct cint
template Beginning*(_: type QStyleOptionTabTabPositionEnum): untyped = 0
template Middle*(_: type QStyleOptionTabTabPositionEnum): untyped = 1
template End*(_: type QStyleOptionTabTabPositionEnum): untyped = 2
template OnlyOneTab*(_: type QStyleOptionTabTabPositionEnum): untyped = 3
template Moving*(_: type QStyleOptionTabTabPositionEnum): untyped = 4


type QStyleOptionTabSelectedPositionEnum* = distinct cint
template NotAdjacent*(_: type QStyleOptionTabSelectedPositionEnum): untyped = 0
template NextIsSelected*(_: type QStyleOptionTabSelectedPositionEnum): untyped = 1
template PreviousIsSelected*(_: type QStyleOptionTabSelectedPositionEnum): untyped = 2


type QStyleOptionTabCornerWidgetEnum* = distinct cint
template NoCornerWidgets*(_: type QStyleOptionTabCornerWidgetEnum): untyped = 0
template LeftCornerWidget*(_: type QStyleOptionTabCornerWidgetEnum): untyped = 1
template RightCornerWidget*(_: type QStyleOptionTabCornerWidgetEnum): untyped = 2


type QStyleOptionTabTabFeatureEnum* = distinct cint
template None*(_: type QStyleOptionTabTabFeatureEnum): untyped = 0
template HasFrame*(_: type QStyleOptionTabTabFeatureEnum): untyped = 1


type QStyleOptionToolBarStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionToolBarStyleOptionTypeEnum): untyped = 14


type QStyleOptionToolBarStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionToolBarStyleOptionVersionEnum): untyped = 1


type QStyleOptionToolBarToolBarPositionEnum* = distinct cint
template Beginning*(_: type QStyleOptionToolBarToolBarPositionEnum): untyped = 0
template Middle*(_: type QStyleOptionToolBarToolBarPositionEnum): untyped = 1
template End*(_: type QStyleOptionToolBarToolBarPositionEnum): untyped = 2
template OnlyOne*(_: type QStyleOptionToolBarToolBarPositionEnum): untyped = 3


type QStyleOptionToolBarToolBarFeatureEnum* = distinct cint
template None*(_: type QStyleOptionToolBarToolBarFeatureEnum): untyped = 0
template Movable*(_: type QStyleOptionToolBarToolBarFeatureEnum): untyped = 1


type QStyleOptionProgressBarStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionProgressBarStyleOptionTypeEnum): untyped = 6


type QStyleOptionProgressBarStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionProgressBarStyleOptionVersionEnum): untyped = 1


type QStyleOptionMenuItemStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionMenuItemStyleOptionTypeEnum): untyped = 4


type QStyleOptionMenuItemStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionMenuItemStyleOptionVersionEnum): untyped = 1


type QStyleOptionMenuItemMenuItemTypeEnum* = distinct cint
template Normal*(_: type QStyleOptionMenuItemMenuItemTypeEnum): untyped = 0
template DefaultItem*(_: type QStyleOptionMenuItemMenuItemTypeEnum): untyped = 1
template Separator*(_: type QStyleOptionMenuItemMenuItemTypeEnum): untyped = 2
template SubMenu*(_: type QStyleOptionMenuItemMenuItemTypeEnum): untyped = 3
template Scroller*(_: type QStyleOptionMenuItemMenuItemTypeEnum): untyped = 4
template TearOff*(_: type QStyleOptionMenuItemMenuItemTypeEnum): untyped = 5
template Margin*(_: type QStyleOptionMenuItemMenuItemTypeEnum): untyped = 6
template EmptyArea*(_: type QStyleOptionMenuItemMenuItemTypeEnum): untyped = 7


type QStyleOptionMenuItemCheckTypeEnum* = distinct cint
template NotCheckable*(_: type QStyleOptionMenuItemCheckTypeEnum): untyped = 0
template Exclusive*(_: type QStyleOptionMenuItemCheckTypeEnum): untyped = 1
template NonExclusive*(_: type QStyleOptionMenuItemCheckTypeEnum): untyped = 2


type QStyleOptionDockWidgetStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionDockWidgetStyleOptionTypeEnum): untyped = 9


type QStyleOptionDockWidgetStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionDockWidgetStyleOptionVersionEnum): untyped = 1


type QStyleOptionViewItemStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionViewItemStyleOptionTypeEnum): untyped = 10


type QStyleOptionViewItemStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionViewItemStyleOptionVersionEnum): untyped = 1


type QStyleOptionViewItemPositionEnum* = distinct cint
template Left*(_: type QStyleOptionViewItemPositionEnum): untyped = 0
template Right*(_: type QStyleOptionViewItemPositionEnum): untyped = 1
template Top*(_: type QStyleOptionViewItemPositionEnum): untyped = 2
template Bottom*(_: type QStyleOptionViewItemPositionEnum): untyped = 3


type QStyleOptionViewItemViewItemFeatureEnum* = distinct cint
template None*(_: type QStyleOptionViewItemViewItemFeatureEnum): untyped = 0
template WrapText*(_: type QStyleOptionViewItemViewItemFeatureEnum): untyped = 1
template Alternate*(_: type QStyleOptionViewItemViewItemFeatureEnum): untyped = 2
template HasCheckIndicator*(_: type QStyleOptionViewItemViewItemFeatureEnum): untyped = 4
template HasDisplay*(_: type QStyleOptionViewItemViewItemFeatureEnum): untyped = 8
template HasDecoration*(_: type QStyleOptionViewItemViewItemFeatureEnum): untyped = 16


type QStyleOptionViewItemViewItemPositionEnum* = distinct cint
template Invalid*(_: type QStyleOptionViewItemViewItemPositionEnum): untyped = 0
template Beginning*(_: type QStyleOptionViewItemViewItemPositionEnum): untyped = 1
template Middle*(_: type QStyleOptionViewItemViewItemPositionEnum): untyped = 2
template End*(_: type QStyleOptionViewItemViewItemPositionEnum): untyped = 3
template OnlyOne*(_: type QStyleOptionViewItemViewItemPositionEnum): untyped = 4


type QStyleOptionToolBoxStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionToolBoxStyleOptionTypeEnum): untyped = 7


type QStyleOptionToolBoxStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionToolBoxStyleOptionVersionEnum): untyped = 1


type QStyleOptionToolBoxTabPositionEnum* = distinct cint
template Beginning*(_: type QStyleOptionToolBoxTabPositionEnum): untyped = 0
template Middle*(_: type QStyleOptionToolBoxTabPositionEnum): untyped = 1
template End*(_: type QStyleOptionToolBoxTabPositionEnum): untyped = 2
template OnlyOneTab*(_: type QStyleOptionToolBoxTabPositionEnum): untyped = 3


type QStyleOptionToolBoxSelectedPositionEnum* = distinct cint
template NotAdjacent*(_: type QStyleOptionToolBoxSelectedPositionEnum): untyped = 0
template NextIsSelected*(_: type QStyleOptionToolBoxSelectedPositionEnum): untyped = 1
template PreviousIsSelected*(_: type QStyleOptionToolBoxSelectedPositionEnum): untyped = 2


type QStyleOptionRubberBandStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionRubberBandStyleOptionTypeEnum): untyped = 13


type QStyleOptionRubberBandStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionRubberBandStyleOptionVersionEnum): untyped = 1


type QStyleOptionComplexStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionComplexStyleOptionTypeEnum): untyped = 983040


type QStyleOptionComplexStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionComplexStyleOptionVersionEnum): untyped = 1


type QStyleOptionSliderStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionSliderStyleOptionTypeEnum): untyped = 983041


type QStyleOptionSliderStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionSliderStyleOptionVersionEnum): untyped = 1


type QStyleOptionSpinBoxStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionSpinBoxStyleOptionTypeEnum): untyped = 983042


type QStyleOptionSpinBoxStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionSpinBoxStyleOptionVersionEnum): untyped = 1


type QStyleOptionToolButtonStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionToolButtonStyleOptionTypeEnum): untyped = 983043


type QStyleOptionToolButtonStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionToolButtonStyleOptionVersionEnum): untyped = 1


type QStyleOptionToolButtonToolButtonFeatureEnum* = distinct cint
template None*(_: type QStyleOptionToolButtonToolButtonFeatureEnum): untyped = 0
template Arrow*(_: type QStyleOptionToolButtonToolButtonFeatureEnum): untyped = 1
template Menu*(_: type QStyleOptionToolButtonToolButtonFeatureEnum): untyped = 4
template MenuButtonPopup*(_: type QStyleOptionToolButtonToolButtonFeatureEnum): untyped = 4
template PopupDelay*(_: type QStyleOptionToolButtonToolButtonFeatureEnum): untyped = 8
template HasMenu*(_: type QStyleOptionToolButtonToolButtonFeatureEnum): untyped = 16


type QStyleOptionComboBoxStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionComboBoxStyleOptionTypeEnum): untyped = 983044


type QStyleOptionComboBoxStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionComboBoxStyleOptionVersionEnum): untyped = 1


type QStyleOptionTitleBarStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionTitleBarStyleOptionTypeEnum): untyped = 983045


type QStyleOptionTitleBarStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionTitleBarStyleOptionVersionEnum): untyped = 1


type QStyleOptionGroupBoxStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionGroupBoxStyleOptionTypeEnum): untyped = 983046


type QStyleOptionGroupBoxStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionGroupBoxStyleOptionVersionEnum): untyped = 1


type QStyleOptionSizeGripStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionSizeGripStyleOptionTypeEnum): untyped = 983047


type QStyleOptionSizeGripStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionSizeGripStyleOptionVersionEnum): untyped = 1


type QStyleOptionGraphicsItemStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleOptionGraphicsItemStyleOptionTypeEnum): untyped = 15


type QStyleOptionGraphicsItemStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleOptionGraphicsItemStyleOptionVersionEnum): untyped = 1


type QStyleHintReturnHintReturnTypeEnum* = distinct cint
template SH_Default*(_: type QStyleHintReturnHintReturnTypeEnum): untyped = 61440
template SH_Mask*(_: type QStyleHintReturnHintReturnTypeEnum): untyped = 61441
template SH_Variant*(_: type QStyleHintReturnHintReturnTypeEnum): untyped = 61442


type QStyleHintReturnStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleHintReturnStyleOptionTypeEnum): untyped = 61440


type QStyleHintReturnStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleHintReturnStyleOptionVersionEnum): untyped = 1


type QStyleHintReturnMaskStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleHintReturnMaskStyleOptionTypeEnum): untyped = 61441


type QStyleHintReturnMaskStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleHintReturnMaskStyleOptionVersionEnum): untyped = 1


type QStyleHintReturnVariantStyleOptionTypeEnum* = distinct cint
template Type*(_: type QStyleHintReturnVariantStyleOptionTypeEnum): untyped = 61442


type QStyleHintReturnVariantStyleOptionVersionEnum* = distinct cint
template Version*(_: type QStyleHintReturnVariantStyleOptionVersionEnum): untyped = 1


import ./gen_qstyleoption_types
export gen_qstyleoption_types

import
  ../QtCore/gen_qabstractitemmodel_types,
  ../QtCore/gen_qlocale_types,
  ../QtCore/gen_qobject_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtCore/gen_qvariant_types,
  ../QtGui/gen_qbrush_types,
  ../QtGui/gen_qcolor_types,
  ../QtGui/gen_qfont_types,
  ../QtGui/gen_qfontmetrics_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpalette_types,
  ../QtGui/gen_qregion_types,
  ../QtGui/gen_qtransform_types,
  ./gen_qwidget_types
export
  gen_qabstractitemmodel_types,
  gen_qlocale_types,
  gen_qobject_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qvariant_types,
  gen_qbrush_types,
  gen_qcolor_types,
  gen_qfont_types,
  gen_qfontmetrics_types,
  gen_qicon_types,
  gen_qpalette_types,
  gen_qregion_types,
  gen_qtransform_types,
  gen_qwidget_types

type cQStyleOption*{.exportc: "QStyleOption", incompleteStruct.} = object
type cQStyleOptionFocusRect*{.exportc: "QStyleOptionFocusRect", incompleteStruct.} = object
type cQStyleOptionFrame*{.exportc: "QStyleOptionFrame", incompleteStruct.} = object
type cQStyleOptionTabWidgetFrame*{.exportc: "QStyleOptionTabWidgetFrame", incompleteStruct.} = object
type cQStyleOptionTabBarBase*{.exportc: "QStyleOptionTabBarBase", incompleteStruct.} = object
type cQStyleOptionHeader*{.exportc: "QStyleOptionHeader", incompleteStruct.} = object
type cQStyleOptionHeaderV2*{.exportc: "QStyleOptionHeaderV2", incompleteStruct.} = object
type cQStyleOptionButton*{.exportc: "QStyleOptionButton", incompleteStruct.} = object
type cQStyleOptionTab*{.exportc: "QStyleOptionTab", incompleteStruct.} = object
type cQStyleOptionToolBar*{.exportc: "QStyleOptionToolBar", incompleteStruct.} = object
type cQStyleOptionProgressBar*{.exportc: "QStyleOptionProgressBar", incompleteStruct.} = object
type cQStyleOptionMenuItem*{.exportc: "QStyleOptionMenuItem", incompleteStruct.} = object
type cQStyleOptionDockWidget*{.exportc: "QStyleOptionDockWidget", incompleteStruct.} = object
type cQStyleOptionViewItem*{.exportc: "QStyleOptionViewItem", incompleteStruct.} = object
type cQStyleOptionToolBox*{.exportc: "QStyleOptionToolBox", incompleteStruct.} = object
type cQStyleOptionRubberBand*{.exportc: "QStyleOptionRubberBand", incompleteStruct.} = object
type cQStyleOptionComplex*{.exportc: "QStyleOptionComplex", incompleteStruct.} = object
type cQStyleOptionSlider*{.exportc: "QStyleOptionSlider", incompleteStruct.} = object
type cQStyleOptionSpinBox*{.exportc: "QStyleOptionSpinBox", incompleteStruct.} = object
type cQStyleOptionToolButton*{.exportc: "QStyleOptionToolButton", incompleteStruct.} = object
type cQStyleOptionComboBox*{.exportc: "QStyleOptionComboBox", incompleteStruct.} = object
type cQStyleOptionTitleBar*{.exportc: "QStyleOptionTitleBar", incompleteStruct.} = object
type cQStyleOptionGroupBox*{.exportc: "QStyleOptionGroupBox", incompleteStruct.} = object
type cQStyleOptionSizeGrip*{.exportc: "QStyleOptionSizeGrip", incompleteStruct.} = object
type cQStyleOptionGraphicsItem*{.exportc: "QStyleOptionGraphicsItem", incompleteStruct.} = object
type cQStyleHintReturn*{.exportc: "QStyleHintReturn", incompleteStruct.} = object
type cQStyleHintReturnMask*{.exportc: "QStyleHintReturnMask", incompleteStruct.} = object
type cQStyleHintReturnVariant*{.exportc: "QStyleHintReturnVariant", incompleteStruct.} = object

proc fcQStyleOption_version(self: pointer): cint {.importc: "QStyleOption_version".}
proc fcQStyleOption_setVersion(self: pointer, version: cint): void {.importc: "QStyleOption_setVersion".}
proc fcQStyleOption_typeX(self: pointer): cint {.importc: "QStyleOption_type".}
proc fcQStyleOption_setType(self: pointer, typeVal: cint): void {.importc: "QStyleOption_setType".}
proc fcQStyleOption_state(self: pointer): cint {.importc: "QStyleOption_state".}
proc fcQStyleOption_setState(self: pointer, state: cint): void {.importc: "QStyleOption_setState".}
proc fcQStyleOption_direction(self: pointer): cint {.importc: "QStyleOption_direction".}
proc fcQStyleOption_setDirection(self: pointer, direction: cint): void {.importc: "QStyleOption_setDirection".}
proc fcQStyleOption_rect(self: pointer): pointer {.importc: "QStyleOption_rect".}
proc fcQStyleOption_setRect(self: pointer, rect: pointer): void {.importc: "QStyleOption_setRect".}
proc fcQStyleOption_fontMetrics(self: pointer): pointer {.importc: "QStyleOption_fontMetrics".}
proc fcQStyleOption_setFontMetrics(self: pointer, fontMetrics: pointer): void {.importc: "QStyleOption_setFontMetrics".}
proc fcQStyleOption_palette(self: pointer): pointer {.importc: "QStyleOption_palette".}
proc fcQStyleOption_setPalette(self: pointer, palette: pointer): void {.importc: "QStyleOption_setPalette".}
proc fcQStyleOption_styleObject(self: pointer): pointer {.importc: "QStyleOption_styleObject".}
proc fcQStyleOption_setStyleObject(self: pointer, styleObject: pointer): void {.importc: "QStyleOption_setStyleObject".}
proc fcQStyleOption_initFrom(self: pointer, w: pointer): void {.importc: "QStyleOption_initFrom".}
proc fcQStyleOption_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOption_operatorAssign".}
proc fcQStyleOption_new(): ptr cQStyleOption {.importc: "QStyleOption_new".}
proc fcQStyleOption_new2(fromVal: pointer): ptr cQStyleOption {.importc: "QStyleOption_new_from".}
proc fcQStyleOption_new3(version: cint): ptr cQStyleOption {.importc: "QStyleOption_new_version".}
proc fcQStyleOption_new4(version: cint, typeVal: cint): ptr cQStyleOption {.importc: "QStyleOption_new_version_type".}
proc fcQStyleOptionFocusRect_backgroundColor(self: pointer): pointer {.importc: "QStyleOptionFocusRect_backgroundColor".}
proc fcQStyleOptionFocusRect_setBackgroundColor(self: pointer, backgroundColor: pointer): void {.importc: "QStyleOptionFocusRect_setBackgroundColor".}
proc fcQStyleOptionFocusRect_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionFocusRect_operatorAssign".}
proc fcQStyleOptionFocusRect_new(): ptr cQStyleOptionFocusRect {.importc: "QStyleOptionFocusRect_new".}
proc fcQStyleOptionFocusRect_new2(fromVal: pointer): ptr cQStyleOptionFocusRect {.importc: "QStyleOptionFocusRect_new_from".}
proc fcQStyleOptionFrame_lineWidth(self: pointer): cint {.importc: "QStyleOptionFrame_lineWidth".}
proc fcQStyleOptionFrame_setLineWidth(self: pointer, lineWidth: cint): void {.importc: "QStyleOptionFrame_setLineWidth".}
proc fcQStyleOptionFrame_midLineWidth(self: pointer): cint {.importc: "QStyleOptionFrame_midLineWidth".}
proc fcQStyleOptionFrame_setMidLineWidth(self: pointer, midLineWidth: cint): void {.importc: "QStyleOptionFrame_setMidLineWidth".}
proc fcQStyleOptionFrame_features(self: pointer): cint {.importc: "QStyleOptionFrame_features".}
proc fcQStyleOptionFrame_setFeatures(self: pointer, features: cint): void {.importc: "QStyleOptionFrame_setFeatures".}
proc fcQStyleOptionFrame_frameShape(self: pointer): cint {.importc: "QStyleOptionFrame_frameShape".}
proc fcQStyleOptionFrame_setFrameShape(self: pointer, frameShape: cint): void {.importc: "QStyleOptionFrame_setFrameShape".}
proc fcQStyleOptionFrame_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionFrame_operatorAssign".}
proc fcQStyleOptionFrame_new(): ptr cQStyleOptionFrame {.importc: "QStyleOptionFrame_new".}
proc fcQStyleOptionFrame_new2(fromVal: pointer): ptr cQStyleOptionFrame {.importc: "QStyleOptionFrame_new_from".}
proc fcQStyleOptionTabWidgetFrame_lineWidth(self: pointer): cint {.importc: "QStyleOptionTabWidgetFrame_lineWidth".}
proc fcQStyleOptionTabWidgetFrame_setLineWidth(self: pointer, lineWidth: cint): void {.importc: "QStyleOptionTabWidgetFrame_setLineWidth".}
proc fcQStyleOptionTabWidgetFrame_midLineWidth(self: pointer): cint {.importc: "QStyleOptionTabWidgetFrame_midLineWidth".}
proc fcQStyleOptionTabWidgetFrame_setMidLineWidth(self: pointer, midLineWidth: cint): void {.importc: "QStyleOptionTabWidgetFrame_setMidLineWidth".}
proc fcQStyleOptionTabWidgetFrame_shape(self: pointer): cint {.importc: "QStyleOptionTabWidgetFrame_shape".}
proc fcQStyleOptionTabWidgetFrame_setShape(self: pointer, shape: cint): void {.importc: "QStyleOptionTabWidgetFrame_setShape".}
proc fcQStyleOptionTabWidgetFrame_tabBarSize(self: pointer): pointer {.importc: "QStyleOptionTabWidgetFrame_tabBarSize".}
proc fcQStyleOptionTabWidgetFrame_setTabBarSize(self: pointer, tabBarSize: pointer): void {.importc: "QStyleOptionTabWidgetFrame_setTabBarSize".}
proc fcQStyleOptionTabWidgetFrame_rightCornerWidgetSize(self: pointer): pointer {.importc: "QStyleOptionTabWidgetFrame_rightCornerWidgetSize".}
proc fcQStyleOptionTabWidgetFrame_setRightCornerWidgetSize(self: pointer, rightCornerWidgetSize: pointer): void {.importc: "QStyleOptionTabWidgetFrame_setRightCornerWidgetSize".}
proc fcQStyleOptionTabWidgetFrame_leftCornerWidgetSize(self: pointer): pointer {.importc: "QStyleOptionTabWidgetFrame_leftCornerWidgetSize".}
proc fcQStyleOptionTabWidgetFrame_setLeftCornerWidgetSize(self: pointer, leftCornerWidgetSize: pointer): void {.importc: "QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize".}
proc fcQStyleOptionTabWidgetFrame_tabBarRect(self: pointer): pointer {.importc: "QStyleOptionTabWidgetFrame_tabBarRect".}
proc fcQStyleOptionTabWidgetFrame_setTabBarRect(self: pointer, tabBarRect: pointer): void {.importc: "QStyleOptionTabWidgetFrame_setTabBarRect".}
proc fcQStyleOptionTabWidgetFrame_selectedTabRect(self: pointer): pointer {.importc: "QStyleOptionTabWidgetFrame_selectedTabRect".}
proc fcQStyleOptionTabWidgetFrame_setSelectedTabRect(self: pointer, selectedTabRect: pointer): void {.importc: "QStyleOptionTabWidgetFrame_setSelectedTabRect".}
proc fcQStyleOptionTabWidgetFrame_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionTabWidgetFrame_operatorAssign".}
proc fcQStyleOptionTabWidgetFrame_new(): ptr cQStyleOptionTabWidgetFrame {.importc: "QStyleOptionTabWidgetFrame_new".}
proc fcQStyleOptionTabWidgetFrame_new2(fromVal: pointer): ptr cQStyleOptionTabWidgetFrame {.importc: "QStyleOptionTabWidgetFrame_new_from".}
proc fcQStyleOptionTabBarBase_shape(self: pointer): cint {.importc: "QStyleOptionTabBarBase_shape".}
proc fcQStyleOptionTabBarBase_setShape(self: pointer, shape: cint): void {.importc: "QStyleOptionTabBarBase_setShape".}
proc fcQStyleOptionTabBarBase_tabBarRect(self: pointer): pointer {.importc: "QStyleOptionTabBarBase_tabBarRect".}
proc fcQStyleOptionTabBarBase_setTabBarRect(self: pointer, tabBarRect: pointer): void {.importc: "QStyleOptionTabBarBase_setTabBarRect".}
proc fcQStyleOptionTabBarBase_selectedTabRect(self: pointer): pointer {.importc: "QStyleOptionTabBarBase_selectedTabRect".}
proc fcQStyleOptionTabBarBase_setSelectedTabRect(self: pointer, selectedTabRect: pointer): void {.importc: "QStyleOptionTabBarBase_setSelectedTabRect".}
proc fcQStyleOptionTabBarBase_documentMode(self: pointer): bool {.importc: "QStyleOptionTabBarBase_documentMode".}
proc fcQStyleOptionTabBarBase_setDocumentMode(self: pointer, documentMode: bool): void {.importc: "QStyleOptionTabBarBase_setDocumentMode".}
proc fcQStyleOptionTabBarBase_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionTabBarBase_operatorAssign".}
proc fcQStyleOptionTabBarBase_new(): ptr cQStyleOptionTabBarBase {.importc: "QStyleOptionTabBarBase_new".}
proc fcQStyleOptionTabBarBase_new2(fromVal: pointer): ptr cQStyleOptionTabBarBase {.importc: "QStyleOptionTabBarBase_new_from".}
proc fcQStyleOptionHeader_section(self: pointer): cint {.importc: "QStyleOptionHeader_section".}
proc fcQStyleOptionHeader_setSection(self: pointer, section: cint): void {.importc: "QStyleOptionHeader_setSection".}
proc fcQStyleOptionHeader_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionHeader_text".}
proc fcQStyleOptionHeader_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionHeader_setText".}
proc fcQStyleOptionHeader_textAlignment(self: pointer): cint {.importc: "QStyleOptionHeader_textAlignment".}
proc fcQStyleOptionHeader_setTextAlignment(self: pointer, textAlignment: cint): void {.importc: "QStyleOptionHeader_setTextAlignment".}
proc fcQStyleOptionHeader_icon(self: pointer): pointer {.importc: "QStyleOptionHeader_icon".}
proc fcQStyleOptionHeader_setIcon(self: pointer, icon: pointer): void {.importc: "QStyleOptionHeader_setIcon".}
proc fcQStyleOptionHeader_iconAlignment(self: pointer): cint {.importc: "QStyleOptionHeader_iconAlignment".}
proc fcQStyleOptionHeader_setIconAlignment(self: pointer, iconAlignment: cint): void {.importc: "QStyleOptionHeader_setIconAlignment".}
proc fcQStyleOptionHeader_position(self: pointer): cint {.importc: "QStyleOptionHeader_position".}
proc fcQStyleOptionHeader_setPosition(self: pointer, position: cint): void {.importc: "QStyleOptionHeader_setPosition".}
proc fcQStyleOptionHeader_selectedPosition(self: pointer): cint {.importc: "QStyleOptionHeader_selectedPosition".}
proc fcQStyleOptionHeader_setSelectedPosition(self: pointer, selectedPosition: cint): void {.importc: "QStyleOptionHeader_setSelectedPosition".}
proc fcQStyleOptionHeader_sortIndicator(self: pointer): cint {.importc: "QStyleOptionHeader_sortIndicator".}
proc fcQStyleOptionHeader_setSortIndicator(self: pointer, sortIndicator: cint): void {.importc: "QStyleOptionHeader_setSortIndicator".}
proc fcQStyleOptionHeader_orientation(self: pointer): cint {.importc: "QStyleOptionHeader_orientation".}
proc fcQStyleOptionHeader_setOrientation(self: pointer, orientation: cint): void {.importc: "QStyleOptionHeader_setOrientation".}
proc fcQStyleOptionHeader_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionHeader_operatorAssign".}
proc fcQStyleOptionHeader_new(): ptr cQStyleOptionHeader {.importc: "QStyleOptionHeader_new".}
proc fcQStyleOptionHeader_new2(fromVal: pointer): ptr cQStyleOptionHeader {.importc: "QStyleOptionHeader_new_from".}
proc fcQStyleOptionHeaderV2_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionHeaderV2_operatorAssign".}
proc fcQStyleOptionHeaderV2_textElideMode(self: pointer): cint {.importc: "QStyleOptionHeaderV2_textElideMode".}
proc fcQStyleOptionHeaderV2_setTextElideMode(self: pointer, textElideMode: cint): void {.importc: "QStyleOptionHeaderV2_setTextElideMode".}
proc fcQStyleOptionHeaderV2_isSectionDragTarget(self: pointer): bool {.importc: "QStyleOptionHeaderV2_isSectionDragTarget".}
proc fcQStyleOptionHeaderV2_setIsSectionDragTarget(self: pointer, isSectionDragTarget: bool): void {.importc: "QStyleOptionHeaderV2_setIsSectionDragTarget".}
proc fcQStyleOptionHeaderV2_unused(self: pointer): cint {.importc: "QStyleOptionHeaderV2_unused".}
proc fcQStyleOptionHeaderV2_setUnused(self: pointer, unused: cint): void {.importc: "QStyleOptionHeaderV2_setUnused".}
proc fcQStyleOptionHeaderV2_new(): ptr cQStyleOptionHeaderV2 {.importc: "QStyleOptionHeaderV2_new".}
proc fcQStyleOptionHeaderV2_new2(fromVal: pointer): ptr cQStyleOptionHeaderV2 {.importc: "QStyleOptionHeaderV2_new_from".}
proc fcQStyleOptionButton_features(self: pointer): cint {.importc: "QStyleOptionButton_features".}
proc fcQStyleOptionButton_setFeatures(self: pointer, features: cint): void {.importc: "QStyleOptionButton_setFeatures".}
proc fcQStyleOptionButton_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionButton_text".}
proc fcQStyleOptionButton_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionButton_setText".}
proc fcQStyleOptionButton_icon(self: pointer): pointer {.importc: "QStyleOptionButton_icon".}
proc fcQStyleOptionButton_setIcon(self: pointer, icon: pointer): void {.importc: "QStyleOptionButton_setIcon".}
proc fcQStyleOptionButton_iconSize(self: pointer): pointer {.importc: "QStyleOptionButton_iconSize".}
proc fcQStyleOptionButton_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QStyleOptionButton_setIconSize".}
proc fcQStyleOptionButton_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionButton_operatorAssign".}
proc fcQStyleOptionButton_new(): ptr cQStyleOptionButton {.importc: "QStyleOptionButton_new".}
proc fcQStyleOptionButton_new2(fromVal: pointer): ptr cQStyleOptionButton {.importc: "QStyleOptionButton_new_from".}
proc fcQStyleOptionTab_shape(self: pointer): cint {.importc: "QStyleOptionTab_shape".}
proc fcQStyleOptionTab_setShape(self: pointer, shape: cint): void {.importc: "QStyleOptionTab_setShape".}
proc fcQStyleOptionTab_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionTab_text".}
proc fcQStyleOptionTab_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionTab_setText".}
proc fcQStyleOptionTab_icon(self: pointer): pointer {.importc: "QStyleOptionTab_icon".}
proc fcQStyleOptionTab_setIcon(self: pointer, icon: pointer): void {.importc: "QStyleOptionTab_setIcon".}
proc fcQStyleOptionTab_row(self: pointer): cint {.importc: "QStyleOptionTab_row".}
proc fcQStyleOptionTab_setRow(self: pointer, row: cint): void {.importc: "QStyleOptionTab_setRow".}
proc fcQStyleOptionTab_position(self: pointer): cint {.importc: "QStyleOptionTab_position".}
proc fcQStyleOptionTab_setPosition(self: pointer, position: cint): void {.importc: "QStyleOptionTab_setPosition".}
proc fcQStyleOptionTab_selectedPosition(self: pointer): cint {.importc: "QStyleOptionTab_selectedPosition".}
proc fcQStyleOptionTab_setSelectedPosition(self: pointer, selectedPosition: cint): void {.importc: "QStyleOptionTab_setSelectedPosition".}
proc fcQStyleOptionTab_cornerWidgets(self: pointer): cint {.importc: "QStyleOptionTab_cornerWidgets".}
proc fcQStyleOptionTab_setCornerWidgets(self: pointer, cornerWidgets: cint): void {.importc: "QStyleOptionTab_setCornerWidgets".}
proc fcQStyleOptionTab_iconSize(self: pointer): pointer {.importc: "QStyleOptionTab_iconSize".}
proc fcQStyleOptionTab_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QStyleOptionTab_setIconSize".}
proc fcQStyleOptionTab_documentMode(self: pointer): bool {.importc: "QStyleOptionTab_documentMode".}
proc fcQStyleOptionTab_setDocumentMode(self: pointer, documentMode: bool): void {.importc: "QStyleOptionTab_setDocumentMode".}
proc fcQStyleOptionTab_leftButtonSize(self: pointer): pointer {.importc: "QStyleOptionTab_leftButtonSize".}
proc fcQStyleOptionTab_setLeftButtonSize(self: pointer, leftButtonSize: pointer): void {.importc: "QStyleOptionTab_setLeftButtonSize".}
proc fcQStyleOptionTab_rightButtonSize(self: pointer): pointer {.importc: "QStyleOptionTab_rightButtonSize".}
proc fcQStyleOptionTab_setRightButtonSize(self: pointer, rightButtonSize: pointer): void {.importc: "QStyleOptionTab_setRightButtonSize".}
proc fcQStyleOptionTab_features(self: pointer): cint {.importc: "QStyleOptionTab_features".}
proc fcQStyleOptionTab_setFeatures(self: pointer, features: cint): void {.importc: "QStyleOptionTab_setFeatures".}
proc fcQStyleOptionTab_tabIndex(self: pointer): cint {.importc: "QStyleOptionTab_tabIndex".}
proc fcQStyleOptionTab_setTabIndex(self: pointer, tabIndex: cint): void {.importc: "QStyleOptionTab_setTabIndex".}
proc fcQStyleOptionTab_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionTab_operatorAssign".}
proc fcQStyleOptionTab_new(): ptr cQStyleOptionTab {.importc: "QStyleOptionTab_new".}
proc fcQStyleOptionTab_new2(fromVal: pointer): ptr cQStyleOptionTab {.importc: "QStyleOptionTab_new_from".}
proc fcQStyleOptionToolBar_positionOfLine(self: pointer): cint {.importc: "QStyleOptionToolBar_positionOfLine".}
proc fcQStyleOptionToolBar_setPositionOfLine(self: pointer, positionOfLine: cint): void {.importc: "QStyleOptionToolBar_setPositionOfLine".}
proc fcQStyleOptionToolBar_positionWithinLine(self: pointer): cint {.importc: "QStyleOptionToolBar_positionWithinLine".}
proc fcQStyleOptionToolBar_setPositionWithinLine(self: pointer, positionWithinLine: cint): void {.importc: "QStyleOptionToolBar_setPositionWithinLine".}
proc fcQStyleOptionToolBar_toolBarArea(self: pointer): cint {.importc: "QStyleOptionToolBar_toolBarArea".}
proc fcQStyleOptionToolBar_setToolBarArea(self: pointer, toolBarArea: cint): void {.importc: "QStyleOptionToolBar_setToolBarArea".}
proc fcQStyleOptionToolBar_features(self: pointer): cint {.importc: "QStyleOptionToolBar_features".}
proc fcQStyleOptionToolBar_setFeatures(self: pointer, features: cint): void {.importc: "QStyleOptionToolBar_setFeatures".}
proc fcQStyleOptionToolBar_lineWidth(self: pointer): cint {.importc: "QStyleOptionToolBar_lineWidth".}
proc fcQStyleOptionToolBar_setLineWidth(self: pointer, lineWidth: cint): void {.importc: "QStyleOptionToolBar_setLineWidth".}
proc fcQStyleOptionToolBar_midLineWidth(self: pointer): cint {.importc: "QStyleOptionToolBar_midLineWidth".}
proc fcQStyleOptionToolBar_setMidLineWidth(self: pointer, midLineWidth: cint): void {.importc: "QStyleOptionToolBar_setMidLineWidth".}
proc fcQStyleOptionToolBar_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionToolBar_operatorAssign".}
proc fcQStyleOptionToolBar_new(): ptr cQStyleOptionToolBar {.importc: "QStyleOptionToolBar_new".}
proc fcQStyleOptionToolBar_new2(fromVal: pointer): ptr cQStyleOptionToolBar {.importc: "QStyleOptionToolBar_new_from".}
proc fcQStyleOptionProgressBar_minimum(self: pointer): cint {.importc: "QStyleOptionProgressBar_minimum".}
proc fcQStyleOptionProgressBar_setMinimum(self: pointer, minimum: cint): void {.importc: "QStyleOptionProgressBar_setMinimum".}
proc fcQStyleOptionProgressBar_maximum(self: pointer): cint {.importc: "QStyleOptionProgressBar_maximum".}
proc fcQStyleOptionProgressBar_setMaximum(self: pointer, maximum: cint): void {.importc: "QStyleOptionProgressBar_setMaximum".}
proc fcQStyleOptionProgressBar_progress(self: pointer): cint {.importc: "QStyleOptionProgressBar_progress".}
proc fcQStyleOptionProgressBar_setProgress(self: pointer, progress: cint): void {.importc: "QStyleOptionProgressBar_setProgress".}
proc fcQStyleOptionProgressBar_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionProgressBar_text".}
proc fcQStyleOptionProgressBar_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionProgressBar_setText".}
proc fcQStyleOptionProgressBar_textAlignment(self: pointer): cint {.importc: "QStyleOptionProgressBar_textAlignment".}
proc fcQStyleOptionProgressBar_setTextAlignment(self: pointer, textAlignment: cint): void {.importc: "QStyleOptionProgressBar_setTextAlignment".}
proc fcQStyleOptionProgressBar_textVisible(self: pointer): bool {.importc: "QStyleOptionProgressBar_textVisible".}
proc fcQStyleOptionProgressBar_setTextVisible(self: pointer, textVisible: bool): void {.importc: "QStyleOptionProgressBar_setTextVisible".}
proc fcQStyleOptionProgressBar_invertedAppearance(self: pointer): bool {.importc: "QStyleOptionProgressBar_invertedAppearance".}
proc fcQStyleOptionProgressBar_setInvertedAppearance(self: pointer, invertedAppearance: bool): void {.importc: "QStyleOptionProgressBar_setInvertedAppearance".}
proc fcQStyleOptionProgressBar_bottomToTop(self: pointer): bool {.importc: "QStyleOptionProgressBar_bottomToTop".}
proc fcQStyleOptionProgressBar_setBottomToTop(self: pointer, bottomToTop: bool): void {.importc: "QStyleOptionProgressBar_setBottomToTop".}
proc fcQStyleOptionProgressBar_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionProgressBar_operatorAssign".}
proc fcQStyleOptionProgressBar_new(): ptr cQStyleOptionProgressBar {.importc: "QStyleOptionProgressBar_new".}
proc fcQStyleOptionProgressBar_new2(fromVal: pointer): ptr cQStyleOptionProgressBar {.importc: "QStyleOptionProgressBar_new_from".}
proc fcQStyleOptionMenuItem_menuItemType(self: pointer): cint {.importc: "QStyleOptionMenuItem_menuItemType".}
proc fcQStyleOptionMenuItem_setMenuItemType(self: pointer, menuItemType: cint): void {.importc: "QStyleOptionMenuItem_setMenuItemType".}
proc fcQStyleOptionMenuItem_checkType(self: pointer): cint {.importc: "QStyleOptionMenuItem_checkType".}
proc fcQStyleOptionMenuItem_setCheckType(self: pointer, checkType: cint): void {.importc: "QStyleOptionMenuItem_setCheckType".}
proc fcQStyleOptionMenuItem_checked(self: pointer): bool {.importc: "QStyleOptionMenuItem_checked".}
proc fcQStyleOptionMenuItem_setChecked(self: pointer, checked: bool): void {.importc: "QStyleOptionMenuItem_setChecked".}
proc fcQStyleOptionMenuItem_menuHasCheckableItems(self: pointer): bool {.importc: "QStyleOptionMenuItem_menuHasCheckableItems".}
proc fcQStyleOptionMenuItem_setMenuHasCheckableItems(self: pointer, menuHasCheckableItems: bool): void {.importc: "QStyleOptionMenuItem_setMenuHasCheckableItems".}
proc fcQStyleOptionMenuItem_menuRect(self: pointer): pointer {.importc: "QStyleOptionMenuItem_menuRect".}
proc fcQStyleOptionMenuItem_setMenuRect(self: pointer, menuRect: pointer): void {.importc: "QStyleOptionMenuItem_setMenuRect".}
proc fcQStyleOptionMenuItem_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionMenuItem_text".}
proc fcQStyleOptionMenuItem_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionMenuItem_setText".}
proc fcQStyleOptionMenuItem_icon(self: pointer): pointer {.importc: "QStyleOptionMenuItem_icon".}
proc fcQStyleOptionMenuItem_setIcon(self: pointer, icon: pointer): void {.importc: "QStyleOptionMenuItem_setIcon".}
proc fcQStyleOptionMenuItem_maxIconWidth(self: pointer): cint {.importc: "QStyleOptionMenuItem_maxIconWidth".}
proc fcQStyleOptionMenuItem_setMaxIconWidth(self: pointer, maxIconWidth: cint): void {.importc: "QStyleOptionMenuItem_setMaxIconWidth".}
proc fcQStyleOptionMenuItem_reservedShortcutWidth(self: pointer): cint {.importc: "QStyleOptionMenuItem_reservedShortcutWidth".}
proc fcQStyleOptionMenuItem_setReservedShortcutWidth(self: pointer, reservedShortcutWidth: cint): void {.importc: "QStyleOptionMenuItem_setReservedShortcutWidth".}
proc fcQStyleOptionMenuItem_font(self: pointer): pointer {.importc: "QStyleOptionMenuItem_font".}
proc fcQStyleOptionMenuItem_setFont(self: pointer, font: pointer): void {.importc: "QStyleOptionMenuItem_setFont".}
proc fcQStyleOptionMenuItem_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionMenuItem_operatorAssign".}
proc fcQStyleOptionMenuItem_new(): ptr cQStyleOptionMenuItem {.importc: "QStyleOptionMenuItem_new".}
proc fcQStyleOptionMenuItem_new2(fromVal: pointer): ptr cQStyleOptionMenuItem {.importc: "QStyleOptionMenuItem_new_from".}
proc fcQStyleOptionDockWidget_title(self: pointer): struct_seaqt_string {.importc: "QStyleOptionDockWidget_title".}
proc fcQStyleOptionDockWidget_setTitle(self: pointer, title: struct_seaqt_string): void {.importc: "QStyleOptionDockWidget_setTitle".}
proc fcQStyleOptionDockWidget_closable(self: pointer): bool {.importc: "QStyleOptionDockWidget_closable".}
proc fcQStyleOptionDockWidget_setClosable(self: pointer, closable: bool): void {.importc: "QStyleOptionDockWidget_setClosable".}
proc fcQStyleOptionDockWidget_movable(self: pointer): bool {.importc: "QStyleOptionDockWidget_movable".}
proc fcQStyleOptionDockWidget_setMovable(self: pointer, movable: bool): void {.importc: "QStyleOptionDockWidget_setMovable".}
proc fcQStyleOptionDockWidget_floatable(self: pointer): bool {.importc: "QStyleOptionDockWidget_floatable".}
proc fcQStyleOptionDockWidget_setFloatable(self: pointer, floatable: bool): void {.importc: "QStyleOptionDockWidget_setFloatable".}
proc fcQStyleOptionDockWidget_verticalTitleBar(self: pointer): bool {.importc: "QStyleOptionDockWidget_verticalTitleBar".}
proc fcQStyleOptionDockWidget_setVerticalTitleBar(self: pointer, verticalTitleBar: bool): void {.importc: "QStyleOptionDockWidget_setVerticalTitleBar".}
proc fcQStyleOptionDockWidget_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionDockWidget_operatorAssign".}
proc fcQStyleOptionDockWidget_new(): ptr cQStyleOptionDockWidget {.importc: "QStyleOptionDockWidget_new".}
proc fcQStyleOptionDockWidget_new2(fromVal: pointer): ptr cQStyleOptionDockWidget {.importc: "QStyleOptionDockWidget_new_from".}
proc fcQStyleOptionViewItem_displayAlignment(self: pointer): cint {.importc: "QStyleOptionViewItem_displayAlignment".}
proc fcQStyleOptionViewItem_setDisplayAlignment(self: pointer, displayAlignment: cint): void {.importc: "QStyleOptionViewItem_setDisplayAlignment".}
proc fcQStyleOptionViewItem_decorationAlignment(self: pointer): cint {.importc: "QStyleOptionViewItem_decorationAlignment".}
proc fcQStyleOptionViewItem_setDecorationAlignment(self: pointer, decorationAlignment: cint): void {.importc: "QStyleOptionViewItem_setDecorationAlignment".}
proc fcQStyleOptionViewItem_textElideMode(self: pointer): cint {.importc: "QStyleOptionViewItem_textElideMode".}
proc fcQStyleOptionViewItem_setTextElideMode(self: pointer, textElideMode: cint): void {.importc: "QStyleOptionViewItem_setTextElideMode".}
proc fcQStyleOptionViewItem_decorationPosition(self: pointer): cint {.importc: "QStyleOptionViewItem_decorationPosition".}
proc fcQStyleOptionViewItem_setDecorationPosition(self: pointer, decorationPosition: cint): void {.importc: "QStyleOptionViewItem_setDecorationPosition".}
proc fcQStyleOptionViewItem_decorationSize(self: pointer): pointer {.importc: "QStyleOptionViewItem_decorationSize".}
proc fcQStyleOptionViewItem_setDecorationSize(self: pointer, decorationSize: pointer): void {.importc: "QStyleOptionViewItem_setDecorationSize".}
proc fcQStyleOptionViewItem_font(self: pointer): pointer {.importc: "QStyleOptionViewItem_font".}
proc fcQStyleOptionViewItem_setFont(self: pointer, font: pointer): void {.importc: "QStyleOptionViewItem_setFont".}
proc fcQStyleOptionViewItem_showDecorationSelected(self: pointer): bool {.importc: "QStyleOptionViewItem_showDecorationSelected".}
proc fcQStyleOptionViewItem_setShowDecorationSelected(self: pointer, showDecorationSelected: bool): void {.importc: "QStyleOptionViewItem_setShowDecorationSelected".}
proc fcQStyleOptionViewItem_features(self: pointer): cint {.importc: "QStyleOptionViewItem_features".}
proc fcQStyleOptionViewItem_setFeatures(self: pointer, features: cint): void {.importc: "QStyleOptionViewItem_setFeatures".}
proc fcQStyleOptionViewItem_locale(self: pointer): pointer {.importc: "QStyleOptionViewItem_locale".}
proc fcQStyleOptionViewItem_setLocale(self: pointer, locale: pointer): void {.importc: "QStyleOptionViewItem_setLocale".}
proc fcQStyleOptionViewItem_widget(self: pointer): pointer {.importc: "QStyleOptionViewItem_widget".}
proc fcQStyleOptionViewItem_setWidget(self: pointer, widget: pointer): void {.importc: "QStyleOptionViewItem_setWidget".}
proc fcQStyleOptionViewItem_index(self: pointer): pointer {.importc: "QStyleOptionViewItem_index".}
proc fcQStyleOptionViewItem_setIndex(self: pointer, index: pointer): void {.importc: "QStyleOptionViewItem_setIndex".}
proc fcQStyleOptionViewItem_checkState(self: pointer): cint {.importc: "QStyleOptionViewItem_checkState".}
proc fcQStyleOptionViewItem_setCheckState(self: pointer, checkState: cint): void {.importc: "QStyleOptionViewItem_setCheckState".}
proc fcQStyleOptionViewItem_icon(self: pointer): pointer {.importc: "QStyleOptionViewItem_icon".}
proc fcQStyleOptionViewItem_setIcon(self: pointer, icon: pointer): void {.importc: "QStyleOptionViewItem_setIcon".}
proc fcQStyleOptionViewItem_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionViewItem_text".}
proc fcQStyleOptionViewItem_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionViewItem_setText".}
proc fcQStyleOptionViewItem_viewItemPosition(self: pointer): cint {.importc: "QStyleOptionViewItem_viewItemPosition".}
proc fcQStyleOptionViewItem_setViewItemPosition(self: pointer, viewItemPosition: cint): void {.importc: "QStyleOptionViewItem_setViewItemPosition".}
proc fcQStyleOptionViewItem_backgroundBrush(self: pointer): pointer {.importc: "QStyleOptionViewItem_backgroundBrush".}
proc fcQStyleOptionViewItem_setBackgroundBrush(self: pointer, backgroundBrush: pointer): void {.importc: "QStyleOptionViewItem_setBackgroundBrush".}
proc fcQStyleOptionViewItem_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionViewItem_operatorAssign".}
proc fcQStyleOptionViewItem_new(): ptr cQStyleOptionViewItem {.importc: "QStyleOptionViewItem_new".}
proc fcQStyleOptionViewItem_new2(fromVal: pointer): ptr cQStyleOptionViewItem {.importc: "QStyleOptionViewItem_new_from".}
proc fcQStyleOptionToolBox_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionToolBox_text".}
proc fcQStyleOptionToolBox_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionToolBox_setText".}
proc fcQStyleOptionToolBox_icon(self: pointer): pointer {.importc: "QStyleOptionToolBox_icon".}
proc fcQStyleOptionToolBox_setIcon(self: pointer, icon: pointer): void {.importc: "QStyleOptionToolBox_setIcon".}
proc fcQStyleOptionToolBox_position(self: pointer): cint {.importc: "QStyleOptionToolBox_position".}
proc fcQStyleOptionToolBox_setPosition(self: pointer, position: cint): void {.importc: "QStyleOptionToolBox_setPosition".}
proc fcQStyleOptionToolBox_selectedPosition(self: pointer): cint {.importc: "QStyleOptionToolBox_selectedPosition".}
proc fcQStyleOptionToolBox_setSelectedPosition(self: pointer, selectedPosition: cint): void {.importc: "QStyleOptionToolBox_setSelectedPosition".}
proc fcQStyleOptionToolBox_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionToolBox_operatorAssign".}
proc fcQStyleOptionToolBox_new(): ptr cQStyleOptionToolBox {.importc: "QStyleOptionToolBox_new".}
proc fcQStyleOptionToolBox_new2(fromVal: pointer): ptr cQStyleOptionToolBox {.importc: "QStyleOptionToolBox_new_from".}
proc fcQStyleOptionRubberBand_shape(self: pointer): cint {.importc: "QStyleOptionRubberBand_shape".}
proc fcQStyleOptionRubberBand_setShape(self: pointer, shape: cint): void {.importc: "QStyleOptionRubberBand_setShape".}
proc fcQStyleOptionRubberBand_opaque(self: pointer): bool {.importc: "QStyleOptionRubberBand_opaque".}
proc fcQStyleOptionRubberBand_setOpaque(self: pointer, opaque: bool): void {.importc: "QStyleOptionRubberBand_setOpaque".}
proc fcQStyleOptionRubberBand_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionRubberBand_operatorAssign".}
proc fcQStyleOptionRubberBand_new(): ptr cQStyleOptionRubberBand {.importc: "QStyleOptionRubberBand_new".}
proc fcQStyleOptionRubberBand_new2(fromVal: pointer): ptr cQStyleOptionRubberBand {.importc: "QStyleOptionRubberBand_new_from".}
proc fcQStyleOptionComplex_subControls(self: pointer): cint {.importc: "QStyleOptionComplex_subControls".}
proc fcQStyleOptionComplex_setSubControls(self: pointer, subControls: cint): void {.importc: "QStyleOptionComplex_setSubControls".}
proc fcQStyleOptionComplex_activeSubControls(self: pointer): cint {.importc: "QStyleOptionComplex_activeSubControls".}
proc fcQStyleOptionComplex_setActiveSubControls(self: pointer, activeSubControls: cint): void {.importc: "QStyleOptionComplex_setActiveSubControls".}
proc fcQStyleOptionComplex_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionComplex_operatorAssign".}
proc fcQStyleOptionComplex_new(): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new".}
proc fcQStyleOptionComplex_new2(fromVal: pointer): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new_from".}
proc fcQStyleOptionComplex_new3(version: cint): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new_version".}
proc fcQStyleOptionComplex_new4(version: cint, typeVal: cint): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new_version_type".}
proc fcQStyleOptionSlider_orientation(self: pointer): cint {.importc: "QStyleOptionSlider_orientation".}
proc fcQStyleOptionSlider_setOrientation(self: pointer, orientation: cint): void {.importc: "QStyleOptionSlider_setOrientation".}
proc fcQStyleOptionSlider_minimum(self: pointer): cint {.importc: "QStyleOptionSlider_minimum".}
proc fcQStyleOptionSlider_setMinimum(self: pointer, minimum: cint): void {.importc: "QStyleOptionSlider_setMinimum".}
proc fcQStyleOptionSlider_maximum(self: pointer): cint {.importc: "QStyleOptionSlider_maximum".}
proc fcQStyleOptionSlider_setMaximum(self: pointer, maximum: cint): void {.importc: "QStyleOptionSlider_setMaximum".}
proc fcQStyleOptionSlider_tickPosition(self: pointer): cint {.importc: "QStyleOptionSlider_tickPosition".}
proc fcQStyleOptionSlider_setTickPosition(self: pointer, tickPosition: cint): void {.importc: "QStyleOptionSlider_setTickPosition".}
proc fcQStyleOptionSlider_tickInterval(self: pointer): cint {.importc: "QStyleOptionSlider_tickInterval".}
proc fcQStyleOptionSlider_setTickInterval(self: pointer, tickInterval: cint): void {.importc: "QStyleOptionSlider_setTickInterval".}
proc fcQStyleOptionSlider_upsideDown(self: pointer): bool {.importc: "QStyleOptionSlider_upsideDown".}
proc fcQStyleOptionSlider_setUpsideDown(self: pointer, upsideDown: bool): void {.importc: "QStyleOptionSlider_setUpsideDown".}
proc fcQStyleOptionSlider_sliderPosition(self: pointer): cint {.importc: "QStyleOptionSlider_sliderPosition".}
proc fcQStyleOptionSlider_setSliderPosition(self: pointer, sliderPosition: cint): void {.importc: "QStyleOptionSlider_setSliderPosition".}
proc fcQStyleOptionSlider_sliderValue(self: pointer): cint {.importc: "QStyleOptionSlider_sliderValue".}
proc fcQStyleOptionSlider_setSliderValue(self: pointer, sliderValue: cint): void {.importc: "QStyleOptionSlider_setSliderValue".}
proc fcQStyleOptionSlider_singleStep(self: pointer): cint {.importc: "QStyleOptionSlider_singleStep".}
proc fcQStyleOptionSlider_setSingleStep(self: pointer, singleStep: cint): void {.importc: "QStyleOptionSlider_setSingleStep".}
proc fcQStyleOptionSlider_pageStep(self: pointer): cint {.importc: "QStyleOptionSlider_pageStep".}
proc fcQStyleOptionSlider_setPageStep(self: pointer, pageStep: cint): void {.importc: "QStyleOptionSlider_setPageStep".}
proc fcQStyleOptionSlider_notchTarget(self: pointer): float64 {.importc: "QStyleOptionSlider_notchTarget".}
proc fcQStyleOptionSlider_setNotchTarget(self: pointer, notchTarget: float64): void {.importc: "QStyleOptionSlider_setNotchTarget".}
proc fcQStyleOptionSlider_dialWrapping(self: pointer): bool {.importc: "QStyleOptionSlider_dialWrapping".}
proc fcQStyleOptionSlider_setDialWrapping(self: pointer, dialWrapping: bool): void {.importc: "QStyleOptionSlider_setDialWrapping".}
proc fcQStyleOptionSlider_keyboardModifiers(self: pointer): cint {.importc: "QStyleOptionSlider_keyboardModifiers".}
proc fcQStyleOptionSlider_setKeyboardModifiers(self: pointer, keyboardModifiers: cint): void {.importc: "QStyleOptionSlider_setKeyboardModifiers".}
proc fcQStyleOptionSlider_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionSlider_operatorAssign".}
proc fcQStyleOptionSlider_new(): ptr cQStyleOptionSlider {.importc: "QStyleOptionSlider_new".}
proc fcQStyleOptionSlider_new2(fromVal: pointer): ptr cQStyleOptionSlider {.importc: "QStyleOptionSlider_new_from".}
proc fcQStyleOptionSpinBox_buttonSymbols(self: pointer): cint {.importc: "QStyleOptionSpinBox_buttonSymbols".}
proc fcQStyleOptionSpinBox_setButtonSymbols(self: pointer, buttonSymbols: cint): void {.importc: "QStyleOptionSpinBox_setButtonSymbols".}
proc fcQStyleOptionSpinBox_stepEnabled(self: pointer): cint {.importc: "QStyleOptionSpinBox_stepEnabled".}
proc fcQStyleOptionSpinBox_setStepEnabled(self: pointer, stepEnabled: cint): void {.importc: "QStyleOptionSpinBox_setStepEnabled".}
proc fcQStyleOptionSpinBox_frame(self: pointer): bool {.importc: "QStyleOptionSpinBox_frame".}
proc fcQStyleOptionSpinBox_setFrame(self: pointer, frame: bool): void {.importc: "QStyleOptionSpinBox_setFrame".}
proc fcQStyleOptionSpinBox_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionSpinBox_operatorAssign".}
proc fcQStyleOptionSpinBox_new(): ptr cQStyleOptionSpinBox {.importc: "QStyleOptionSpinBox_new".}
proc fcQStyleOptionSpinBox_new2(fromVal: pointer): ptr cQStyleOptionSpinBox {.importc: "QStyleOptionSpinBox_new_from".}
proc fcQStyleOptionToolButton_features(self: pointer): cint {.importc: "QStyleOptionToolButton_features".}
proc fcQStyleOptionToolButton_setFeatures(self: pointer, features: cint): void {.importc: "QStyleOptionToolButton_setFeatures".}
proc fcQStyleOptionToolButton_icon(self: pointer): pointer {.importc: "QStyleOptionToolButton_icon".}
proc fcQStyleOptionToolButton_setIcon(self: pointer, icon: pointer): void {.importc: "QStyleOptionToolButton_setIcon".}
proc fcQStyleOptionToolButton_iconSize(self: pointer): pointer {.importc: "QStyleOptionToolButton_iconSize".}
proc fcQStyleOptionToolButton_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QStyleOptionToolButton_setIconSize".}
proc fcQStyleOptionToolButton_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionToolButton_text".}
proc fcQStyleOptionToolButton_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionToolButton_setText".}
proc fcQStyleOptionToolButton_arrowType(self: pointer): cint {.importc: "QStyleOptionToolButton_arrowType".}
proc fcQStyleOptionToolButton_setArrowType(self: pointer, arrowType: cint): void {.importc: "QStyleOptionToolButton_setArrowType".}
proc fcQStyleOptionToolButton_toolButtonStyle(self: pointer): cint {.importc: "QStyleOptionToolButton_toolButtonStyle".}
proc fcQStyleOptionToolButton_setToolButtonStyle(self: pointer, toolButtonStyle: cint): void {.importc: "QStyleOptionToolButton_setToolButtonStyle".}
proc fcQStyleOptionToolButton_pos(self: pointer): pointer {.importc: "QStyleOptionToolButton_pos".}
proc fcQStyleOptionToolButton_setPos(self: pointer, pos: pointer): void {.importc: "QStyleOptionToolButton_setPos".}
proc fcQStyleOptionToolButton_font(self: pointer): pointer {.importc: "QStyleOptionToolButton_font".}
proc fcQStyleOptionToolButton_setFont(self: pointer, font: pointer): void {.importc: "QStyleOptionToolButton_setFont".}
proc fcQStyleOptionToolButton_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionToolButton_operatorAssign".}
proc fcQStyleOptionToolButton_new(): ptr cQStyleOptionToolButton {.importc: "QStyleOptionToolButton_new".}
proc fcQStyleOptionToolButton_new2(fromVal: pointer): ptr cQStyleOptionToolButton {.importc: "QStyleOptionToolButton_new_from".}
proc fcQStyleOptionComboBox_editable(self: pointer): bool {.importc: "QStyleOptionComboBox_editable".}
proc fcQStyleOptionComboBox_setEditable(self: pointer, editable: bool): void {.importc: "QStyleOptionComboBox_setEditable".}
proc fcQStyleOptionComboBox_popupRect(self: pointer): pointer {.importc: "QStyleOptionComboBox_popupRect".}
proc fcQStyleOptionComboBox_setPopupRect(self: pointer, popupRect: pointer): void {.importc: "QStyleOptionComboBox_setPopupRect".}
proc fcQStyleOptionComboBox_frame(self: pointer): bool {.importc: "QStyleOptionComboBox_frame".}
proc fcQStyleOptionComboBox_setFrame(self: pointer, frame: bool): void {.importc: "QStyleOptionComboBox_setFrame".}
proc fcQStyleOptionComboBox_currentText(self: pointer): struct_seaqt_string {.importc: "QStyleOptionComboBox_currentText".}
proc fcQStyleOptionComboBox_setCurrentText(self: pointer, currentText: struct_seaqt_string): void {.importc: "QStyleOptionComboBox_setCurrentText".}
proc fcQStyleOptionComboBox_currentIcon(self: pointer): pointer {.importc: "QStyleOptionComboBox_currentIcon".}
proc fcQStyleOptionComboBox_setCurrentIcon(self: pointer, currentIcon: pointer): void {.importc: "QStyleOptionComboBox_setCurrentIcon".}
proc fcQStyleOptionComboBox_iconSize(self: pointer): pointer {.importc: "QStyleOptionComboBox_iconSize".}
proc fcQStyleOptionComboBox_setIconSize(self: pointer, iconSize: pointer): void {.importc: "QStyleOptionComboBox_setIconSize".}
proc fcQStyleOptionComboBox_textAlignment(self: pointer): cint {.importc: "QStyleOptionComboBox_textAlignment".}
proc fcQStyleOptionComboBox_setTextAlignment(self: pointer, textAlignment: cint): void {.importc: "QStyleOptionComboBox_setTextAlignment".}
proc fcQStyleOptionComboBox_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionComboBox_operatorAssign".}
proc fcQStyleOptionComboBox_new(): ptr cQStyleOptionComboBox {.importc: "QStyleOptionComboBox_new".}
proc fcQStyleOptionComboBox_new2(fromVal: pointer): ptr cQStyleOptionComboBox {.importc: "QStyleOptionComboBox_new_from".}
proc fcQStyleOptionTitleBar_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionTitleBar_text".}
proc fcQStyleOptionTitleBar_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionTitleBar_setText".}
proc fcQStyleOptionTitleBar_icon(self: pointer): pointer {.importc: "QStyleOptionTitleBar_icon".}
proc fcQStyleOptionTitleBar_setIcon(self: pointer, icon: pointer): void {.importc: "QStyleOptionTitleBar_setIcon".}
proc fcQStyleOptionTitleBar_titleBarState(self: pointer): cint {.importc: "QStyleOptionTitleBar_titleBarState".}
proc fcQStyleOptionTitleBar_setTitleBarState(self: pointer, titleBarState: cint): void {.importc: "QStyleOptionTitleBar_setTitleBarState".}
proc fcQStyleOptionTitleBar_titleBarFlags(self: pointer): cint {.importc: "QStyleOptionTitleBar_titleBarFlags".}
proc fcQStyleOptionTitleBar_setTitleBarFlags(self: pointer, titleBarFlags: cint): void {.importc: "QStyleOptionTitleBar_setTitleBarFlags".}
proc fcQStyleOptionTitleBar_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionTitleBar_operatorAssign".}
proc fcQStyleOptionTitleBar_new(): ptr cQStyleOptionTitleBar {.importc: "QStyleOptionTitleBar_new".}
proc fcQStyleOptionTitleBar_new2(fromVal: pointer): ptr cQStyleOptionTitleBar {.importc: "QStyleOptionTitleBar_new_from".}
proc fcQStyleOptionGroupBox_features(self: pointer): cint {.importc: "QStyleOptionGroupBox_features".}
proc fcQStyleOptionGroupBox_setFeatures(self: pointer, features: cint): void {.importc: "QStyleOptionGroupBox_setFeatures".}
proc fcQStyleOptionGroupBox_text(self: pointer): struct_seaqt_string {.importc: "QStyleOptionGroupBox_text".}
proc fcQStyleOptionGroupBox_setText(self: pointer, text: struct_seaqt_string): void {.importc: "QStyleOptionGroupBox_setText".}
proc fcQStyleOptionGroupBox_textAlignment(self: pointer): cint {.importc: "QStyleOptionGroupBox_textAlignment".}
proc fcQStyleOptionGroupBox_setTextAlignment(self: pointer, textAlignment: cint): void {.importc: "QStyleOptionGroupBox_setTextAlignment".}
proc fcQStyleOptionGroupBox_textColor(self: pointer): pointer {.importc: "QStyleOptionGroupBox_textColor".}
proc fcQStyleOptionGroupBox_setTextColor(self: pointer, textColor: pointer): void {.importc: "QStyleOptionGroupBox_setTextColor".}
proc fcQStyleOptionGroupBox_lineWidth(self: pointer): cint {.importc: "QStyleOptionGroupBox_lineWidth".}
proc fcQStyleOptionGroupBox_setLineWidth(self: pointer, lineWidth: cint): void {.importc: "QStyleOptionGroupBox_setLineWidth".}
proc fcQStyleOptionGroupBox_midLineWidth(self: pointer): cint {.importc: "QStyleOptionGroupBox_midLineWidth".}
proc fcQStyleOptionGroupBox_setMidLineWidth(self: pointer, midLineWidth: cint): void {.importc: "QStyleOptionGroupBox_setMidLineWidth".}
proc fcQStyleOptionGroupBox_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionGroupBox_operatorAssign".}
proc fcQStyleOptionGroupBox_new(): ptr cQStyleOptionGroupBox {.importc: "QStyleOptionGroupBox_new".}
proc fcQStyleOptionGroupBox_new2(fromVal: pointer): ptr cQStyleOptionGroupBox {.importc: "QStyleOptionGroupBox_new_from".}
proc fcQStyleOptionSizeGrip_corner(self: pointer): cint {.importc: "QStyleOptionSizeGrip_corner".}
proc fcQStyleOptionSizeGrip_setCorner(self: pointer, corner: cint): void {.importc: "QStyleOptionSizeGrip_setCorner".}
proc fcQStyleOptionSizeGrip_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionSizeGrip_operatorAssign".}
proc fcQStyleOptionSizeGrip_new(): ptr cQStyleOptionSizeGrip {.importc: "QStyleOptionSizeGrip_new".}
proc fcQStyleOptionSizeGrip_new2(fromVal: pointer): ptr cQStyleOptionSizeGrip {.importc: "QStyleOptionSizeGrip_new_from".}
proc fcQStyleOptionGraphicsItem_exposedRect(self: pointer): pointer {.importc: "QStyleOptionGraphicsItem_exposedRect".}
proc fcQStyleOptionGraphicsItem_setExposedRect(self: pointer, exposedRect: pointer): void {.importc: "QStyleOptionGraphicsItem_setExposedRect".}
proc fcQStyleOptionGraphicsItem_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleOptionGraphicsItem_operatorAssign".}
proc fcQStyleOptionGraphicsItem_levelOfDetailFromTransform(worldTransform: pointer): float64 {.importc: "QStyleOptionGraphicsItem_levelOfDetailFromTransform".}
proc fcQStyleOptionGraphicsItem_new(): ptr cQStyleOptionGraphicsItem {.importc: "QStyleOptionGraphicsItem_new".}
proc fcQStyleOptionGraphicsItem_new2(fromVal: pointer): ptr cQStyleOptionGraphicsItem {.importc: "QStyleOptionGraphicsItem_new_from".}
proc fcQStyleHintReturn_version(self: pointer): cint {.importc: "QStyleHintReturn_version".}
proc fcQStyleHintReturn_setVersion(self: pointer, version: cint): void {.importc: "QStyleHintReturn_setVersion".}
proc fcQStyleHintReturn_typeX(self: pointer): cint {.importc: "QStyleHintReturn_type".}
proc fcQStyleHintReturn_setType(self: pointer, typeVal: cint): void {.importc: "QStyleHintReturn_setType".}
proc fcQStyleHintReturn_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleHintReturn_operatorAssign".}
proc fcQStyleHintReturn_new(): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new".}
proc fcQStyleHintReturn_new2(fromVal: pointer): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new_from".}
proc fcQStyleHintReturn_new3(version: cint): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new_version".}
proc fcQStyleHintReturn_new4(version: cint, typeVal: cint): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new_version_type".}
proc fcQStyleHintReturnMask_region(self: pointer): pointer {.importc: "QStyleHintReturnMask_region".}
proc fcQStyleHintReturnMask_setRegion(self: pointer, region: pointer): void {.importc: "QStyleHintReturnMask_setRegion".}
proc fcQStyleHintReturnMask_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleHintReturnMask_operatorAssign".}
proc fcQStyleHintReturnMask_new(): ptr cQStyleHintReturnMask {.importc: "QStyleHintReturnMask_new".}
proc fcQStyleHintReturnMask_new2(fromVal: pointer): ptr cQStyleHintReturnMask {.importc: "QStyleHintReturnMask_new_from".}
proc fcQStyleHintReturnVariant_variant(self: pointer): pointer {.importc: "QStyleHintReturnVariant_variant".}
proc fcQStyleHintReturnVariant_setVariant(self: pointer, variant: pointer): void {.importc: "QStyleHintReturnVariant_setVariant".}
proc fcQStyleHintReturnVariant_operatorAssign(self: pointer, fromVal: pointer): void {.importc: "QStyleHintReturnVariant_operatorAssign".}
proc fcQStyleHintReturnVariant_new(): ptr cQStyleHintReturnVariant {.importc: "QStyleHintReturnVariant_new".}
proc fcQStyleHintReturnVariant_new2(fromVal: pointer): ptr cQStyleHintReturnVariant {.importc: "QStyleHintReturnVariant_new_from".}

proc version*(self: gen_qstyleoption_types.QStyleOption): cint =
  fcQStyleOption_version(self.h)

proc setVersion*(self: gen_qstyleoption_types.QStyleOption, version: cint): void =
  fcQStyleOption_setVersion(self.h, version)

proc typeX*(self: gen_qstyleoption_types.QStyleOption): cint =
  fcQStyleOption_typeX(self.h)

proc setType*(self: gen_qstyleoption_types.QStyleOption, typeVal: cint): void =
  fcQStyleOption_setType(self.h, typeVal)

proc state*(self: gen_qstyleoption_types.QStyleOption): cint =
  cint(fcQStyleOption_state(self.h))

proc setState*(self: gen_qstyleoption_types.QStyleOption, state: cint): void =
  fcQStyleOption_setState(self.h, cint(state))

proc direction*(self: gen_qstyleoption_types.QStyleOption): cint =
  cint(fcQStyleOption_direction(self.h))

proc setDirection*(self: gen_qstyleoption_types.QStyleOption, direction: cint): void =
  fcQStyleOption_setDirection(self.h, cint(direction))

proc rect*(self: gen_qstyleoption_types.QStyleOption): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyleOption_rect(self.h), owned: true)

proc setRect*(self: gen_qstyleoption_types.QStyleOption, rect: gen_qrect_types.QRect): void =
  fcQStyleOption_setRect(self.h, rect.h)

proc fontMetrics*(self: gen_qstyleoption_types.QStyleOption): gen_qfontmetrics_types.QFontMetrics =
  gen_qfontmetrics_types.QFontMetrics(h: fcQStyleOption_fontMetrics(self.h), owned: true)

proc setFontMetrics*(self: gen_qstyleoption_types.QStyleOption, fontMetrics: gen_qfontmetrics_types.QFontMetrics): void =
  fcQStyleOption_setFontMetrics(self.h, fontMetrics.h)

proc palette*(self: gen_qstyleoption_types.QStyleOption): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQStyleOption_palette(self.h), owned: true)

proc setPalette*(self: gen_qstyleoption_types.QStyleOption, palette: gen_qpalette_types.QPalette): void =
  fcQStyleOption_setPalette(self.h, palette.h)

proc styleObject*(self: gen_qstyleoption_types.QStyleOption): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQStyleOption_styleObject(self.h), owned: false)

proc setStyleObject*(self: gen_qstyleoption_types.QStyleOption, styleObject: gen_qobject_types.QObject): void =
  fcQStyleOption_setStyleObject(self.h, styleObject.h)

proc initFrom*(self: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget): void =
  fcQStyleOption_initFrom(self.h, w.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOption, fromVal: gen_qstyleoption_types.QStyleOption): void =
  fcQStyleOption_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOption): gen_qstyleoption_types.QStyleOption =
  let tmp = gen_qstyleoption_types.QStyleOption(h: fcQStyleOption_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOption,
    fromVal: gen_qstyleoption_types.QStyleOption): gen_qstyleoption_types.QStyleOption =
  let tmp = gen_qstyleoption_types.QStyleOption(h: fcQStyleOption_new2(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOption,
    version: cint): gen_qstyleoption_types.QStyleOption =
  let tmp = gen_qstyleoption_types.QStyleOption(h: fcQStyleOption_new3(version), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOption,
    version: cint, typeVal: cint): gen_qstyleoption_types.QStyleOption =
  let tmp = gen_qstyleoption_types.QStyleOption(h: fcQStyleOption_new4(version, typeVal), owned: true)
  tmp
proc backgroundColor*(self: gen_qstyleoption_types.QStyleOptionFocusRect): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQStyleOptionFocusRect_backgroundColor(self.h), owned: true)

proc setBackgroundColor*(self: gen_qstyleoption_types.QStyleOptionFocusRect, backgroundColor: gen_qcolor_types.QColor): void =
  fcQStyleOptionFocusRect_setBackgroundColor(self.h, backgroundColor.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionFocusRect, fromVal: gen_qstyleoption_types.QStyleOptionFocusRect): void =
  fcQStyleOptionFocusRect_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionFocusRect): gen_qstyleoption_types.QStyleOptionFocusRect =
  let tmp = gen_qstyleoption_types.QStyleOptionFocusRect(h: fcQStyleOptionFocusRect_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionFocusRect,
    fromVal: gen_qstyleoption_types.QStyleOptionFocusRect): gen_qstyleoption_types.QStyleOptionFocusRect =
  let tmp = gen_qstyleoption_types.QStyleOptionFocusRect(h: fcQStyleOptionFocusRect_new2(fromVal.h), owned: true)
  tmp
proc lineWidth*(self: gen_qstyleoption_types.QStyleOptionFrame): cint =
  fcQStyleOptionFrame_lineWidth(self.h)

proc setLineWidth*(self: gen_qstyleoption_types.QStyleOptionFrame, lineWidth: cint): void =
  fcQStyleOptionFrame_setLineWidth(self.h, lineWidth)

proc midLineWidth*(self: gen_qstyleoption_types.QStyleOptionFrame): cint =
  fcQStyleOptionFrame_midLineWidth(self.h)

proc setMidLineWidth*(self: gen_qstyleoption_types.QStyleOptionFrame, midLineWidth: cint): void =
  fcQStyleOptionFrame_setMidLineWidth(self.h, midLineWidth)

proc features*(self: gen_qstyleoption_types.QStyleOptionFrame): cint =
  cint(fcQStyleOptionFrame_features(self.h))

proc setFeatures*(self: gen_qstyleoption_types.QStyleOptionFrame, features: cint): void =
  fcQStyleOptionFrame_setFeatures(self.h, cint(features))

proc frameShape*(self: gen_qstyleoption_types.QStyleOptionFrame): cint =
  cint(fcQStyleOptionFrame_frameShape(self.h))

proc setFrameShape*(self: gen_qstyleoption_types.QStyleOptionFrame, frameShape: cint): void =
  fcQStyleOptionFrame_setFrameShape(self.h, cint(frameShape))

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionFrame, fromVal: gen_qstyleoption_types.QStyleOptionFrame): void =
  fcQStyleOptionFrame_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionFrame): gen_qstyleoption_types.QStyleOptionFrame =
  let tmp = gen_qstyleoption_types.QStyleOptionFrame(h: fcQStyleOptionFrame_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionFrame,
    fromVal: gen_qstyleoption_types.QStyleOptionFrame): gen_qstyleoption_types.QStyleOptionFrame =
  let tmp = gen_qstyleoption_types.QStyleOptionFrame(h: fcQStyleOptionFrame_new2(fromVal.h), owned: true)
  tmp
proc lineWidth*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): cint =
  fcQStyleOptionTabWidgetFrame_lineWidth(self.h)

proc setLineWidth*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, lineWidth: cint): void =
  fcQStyleOptionTabWidgetFrame_setLineWidth(self.h, lineWidth)

proc midLineWidth*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): cint =
  fcQStyleOptionTabWidgetFrame_midLineWidth(self.h)

proc setMidLineWidth*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, midLineWidth: cint): void =
  fcQStyleOptionTabWidgetFrame_setMidLineWidth(self.h, midLineWidth)

proc shape*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): cint =
  cint(fcQStyleOptionTabWidgetFrame_shape(self.h))

proc setShape*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, shape: cint): void =
  fcQStyleOptionTabWidgetFrame_setShape(self.h, cint(shape))

proc tabBarSize*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionTabWidgetFrame_tabBarSize(self.h), owned: true)

proc setTabBarSize*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, tabBarSize: gen_qsize_types.QSize): void =
  fcQStyleOptionTabWidgetFrame_setTabBarSize(self.h, tabBarSize.h)

proc rightCornerWidgetSize*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionTabWidgetFrame_rightCornerWidgetSize(self.h), owned: true)

proc setRightCornerWidgetSize*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, rightCornerWidgetSize: gen_qsize_types.QSize): void =
  fcQStyleOptionTabWidgetFrame_setRightCornerWidgetSize(self.h, rightCornerWidgetSize.h)

proc leftCornerWidgetSize*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionTabWidgetFrame_leftCornerWidgetSize(self.h), owned: true)

proc setLeftCornerWidgetSize*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, leftCornerWidgetSize: gen_qsize_types.QSize): void =
  fcQStyleOptionTabWidgetFrame_setLeftCornerWidgetSize(self.h, leftCornerWidgetSize.h)

proc tabBarRect*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyleOptionTabWidgetFrame_tabBarRect(self.h), owned: true)

proc setTabBarRect*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, tabBarRect: gen_qrect_types.QRect): void =
  fcQStyleOptionTabWidgetFrame_setTabBarRect(self.h, tabBarRect.h)

proc selectedTabRect*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyleOptionTabWidgetFrame_selectedTabRect(self.h), owned: true)

proc setSelectedTabRect*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, selectedTabRect: gen_qrect_types.QRect): void =
  fcQStyleOptionTabWidgetFrame_setSelectedTabRect(self.h, selectedTabRect.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionTabWidgetFrame, fromVal: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): void =
  fcQStyleOptionTabWidgetFrame_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qstyleoption_types.QStyleOptionTabWidgetFrame =
  let tmp = gen_qstyleoption_types.QStyleOptionTabWidgetFrame(h: fcQStyleOptionTabWidgetFrame_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionTabWidgetFrame,
    fromVal: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qstyleoption_types.QStyleOptionTabWidgetFrame =
  let tmp = gen_qstyleoption_types.QStyleOptionTabWidgetFrame(h: fcQStyleOptionTabWidgetFrame_new2(fromVal.h), owned: true)
  tmp
proc shape*(self: gen_qstyleoption_types.QStyleOptionTabBarBase): cint =
  cint(fcQStyleOptionTabBarBase_shape(self.h))

proc setShape*(self: gen_qstyleoption_types.QStyleOptionTabBarBase, shape: cint): void =
  fcQStyleOptionTabBarBase_setShape(self.h, cint(shape))

proc tabBarRect*(self: gen_qstyleoption_types.QStyleOptionTabBarBase): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyleOptionTabBarBase_tabBarRect(self.h), owned: true)

proc setTabBarRect*(self: gen_qstyleoption_types.QStyleOptionTabBarBase, tabBarRect: gen_qrect_types.QRect): void =
  fcQStyleOptionTabBarBase_setTabBarRect(self.h, tabBarRect.h)

proc selectedTabRect*(self: gen_qstyleoption_types.QStyleOptionTabBarBase): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyleOptionTabBarBase_selectedTabRect(self.h), owned: true)

proc setSelectedTabRect*(self: gen_qstyleoption_types.QStyleOptionTabBarBase, selectedTabRect: gen_qrect_types.QRect): void =
  fcQStyleOptionTabBarBase_setSelectedTabRect(self.h, selectedTabRect.h)

proc documentMode*(self: gen_qstyleoption_types.QStyleOptionTabBarBase): bool =
  fcQStyleOptionTabBarBase_documentMode(self.h)

proc setDocumentMode*(self: gen_qstyleoption_types.QStyleOptionTabBarBase, documentMode: bool): void =
  fcQStyleOptionTabBarBase_setDocumentMode(self.h, documentMode)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionTabBarBase, fromVal: gen_qstyleoption_types.QStyleOptionTabBarBase): void =
  fcQStyleOptionTabBarBase_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTabBarBase): gen_qstyleoption_types.QStyleOptionTabBarBase =
  let tmp = gen_qstyleoption_types.QStyleOptionTabBarBase(h: fcQStyleOptionTabBarBase_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionTabBarBase,
    fromVal: gen_qstyleoption_types.QStyleOptionTabBarBase): gen_qstyleoption_types.QStyleOptionTabBarBase =
  let tmp = gen_qstyleoption_types.QStyleOptionTabBarBase(h: fcQStyleOptionTabBarBase_new2(fromVal.h), owned: true)
  tmp
proc section*(self: gen_qstyleoption_types.QStyleOptionHeader): cint =
  fcQStyleOptionHeader_section(self.h)

proc setSection*(self: gen_qstyleoption_types.QStyleOptionHeader, section: cint): void =
  fcQStyleOptionHeader_setSection(self.h, section)

proc text*(self: gen_qstyleoption_types.QStyleOptionHeader): string =
  let vtext_ms = fcQStyleOptionHeader_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionHeader, text: openArray[char]): void =
  fcQStyleOptionHeader_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc textAlignment*(self: gen_qstyleoption_types.QStyleOptionHeader): cint =
  cint(fcQStyleOptionHeader_textAlignment(self.h))

proc setTextAlignment*(self: gen_qstyleoption_types.QStyleOptionHeader, textAlignment: cint): void =
  fcQStyleOptionHeader_setTextAlignment(self.h, cint(textAlignment))

proc icon*(self: gen_qstyleoption_types.QStyleOptionHeader): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionHeader_icon(self.h), owned: true)

proc setIcon*(self: gen_qstyleoption_types.QStyleOptionHeader, icon: gen_qicon_types.QIcon): void =
  fcQStyleOptionHeader_setIcon(self.h, icon.h)

proc iconAlignment*(self: gen_qstyleoption_types.QStyleOptionHeader): cint =
  cint(fcQStyleOptionHeader_iconAlignment(self.h))

proc setIconAlignment*(self: gen_qstyleoption_types.QStyleOptionHeader, iconAlignment: cint): void =
  fcQStyleOptionHeader_setIconAlignment(self.h, cint(iconAlignment))

proc position*(self: gen_qstyleoption_types.QStyleOptionHeader): cint =
  cint(fcQStyleOptionHeader_position(self.h))

proc setPosition*(self: gen_qstyleoption_types.QStyleOptionHeader, position: cint): void =
  fcQStyleOptionHeader_setPosition(self.h, cint(position))

proc selectedPosition*(self: gen_qstyleoption_types.QStyleOptionHeader): cint =
  cint(fcQStyleOptionHeader_selectedPosition(self.h))

proc setSelectedPosition*(self: gen_qstyleoption_types.QStyleOptionHeader, selectedPosition: cint): void =
  fcQStyleOptionHeader_setSelectedPosition(self.h, cint(selectedPosition))

proc sortIndicator*(self: gen_qstyleoption_types.QStyleOptionHeader): cint =
  cint(fcQStyleOptionHeader_sortIndicator(self.h))

proc setSortIndicator*(self: gen_qstyleoption_types.QStyleOptionHeader, sortIndicator: cint): void =
  fcQStyleOptionHeader_setSortIndicator(self.h, cint(sortIndicator))

proc orientation*(self: gen_qstyleoption_types.QStyleOptionHeader): cint =
  cint(fcQStyleOptionHeader_orientation(self.h))

proc setOrientation*(self: gen_qstyleoption_types.QStyleOptionHeader, orientation: cint): void =
  fcQStyleOptionHeader_setOrientation(self.h, cint(orientation))

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionHeader, fromVal: gen_qstyleoption_types.QStyleOptionHeader): void =
  fcQStyleOptionHeader_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionHeader): gen_qstyleoption_types.QStyleOptionHeader =
  let tmp = gen_qstyleoption_types.QStyleOptionHeader(h: fcQStyleOptionHeader_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionHeader,
    fromVal: gen_qstyleoption_types.QStyleOptionHeader): gen_qstyleoption_types.QStyleOptionHeader =
  let tmp = gen_qstyleoption_types.QStyleOptionHeader(h: fcQStyleOptionHeader_new2(fromVal.h), owned: true)
  tmp
proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionHeaderV2, fromVal: gen_qstyleoption_types.QStyleOptionHeaderV2): void =
  fcQStyleOptionHeaderV2_operatorAssign(self.h, fromVal.h)

proc textElideMode*(self: gen_qstyleoption_types.QStyleOptionHeaderV2): cint =
  cint(fcQStyleOptionHeaderV2_textElideMode(self.h))

proc setTextElideMode*(self: gen_qstyleoption_types.QStyleOptionHeaderV2, textElideMode: cint): void =
  fcQStyleOptionHeaderV2_setTextElideMode(self.h, cint(textElideMode))

proc isSectionDragTarget*(self: gen_qstyleoption_types.QStyleOptionHeaderV2): bool =
  fcQStyleOptionHeaderV2_isSectionDragTarget(self.h)

proc setIsSectionDragTarget*(self: gen_qstyleoption_types.QStyleOptionHeaderV2, isSectionDragTarget: bool): void =
  fcQStyleOptionHeaderV2_setIsSectionDragTarget(self.h, isSectionDragTarget)

proc unused*(self: gen_qstyleoption_types.QStyleOptionHeaderV2): cint =
  fcQStyleOptionHeaderV2_unused(self.h)

proc setUnused*(self: gen_qstyleoption_types.QStyleOptionHeaderV2, unused: cint): void =
  fcQStyleOptionHeaderV2_setUnused(self.h, unused)

proc create*(T: type gen_qstyleoption_types.QStyleOptionHeaderV2): gen_qstyleoption_types.QStyleOptionHeaderV2 =
  let tmp = gen_qstyleoption_types.QStyleOptionHeaderV2(h: fcQStyleOptionHeaderV2_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionHeaderV2,
    fromVal: gen_qstyleoption_types.QStyleOptionHeaderV2): gen_qstyleoption_types.QStyleOptionHeaderV2 =
  let tmp = gen_qstyleoption_types.QStyleOptionHeaderV2(h: fcQStyleOptionHeaderV2_new2(fromVal.h), owned: true)
  tmp
proc features*(self: gen_qstyleoption_types.QStyleOptionButton): cint =
  cint(fcQStyleOptionButton_features(self.h))

proc setFeatures*(self: gen_qstyleoption_types.QStyleOptionButton, features: cint): void =
  fcQStyleOptionButton_setFeatures(self.h, cint(features))

proc text*(self: gen_qstyleoption_types.QStyleOptionButton): string =
  let vtext_ms = fcQStyleOptionButton_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionButton, text: openArray[char]): void =
  fcQStyleOptionButton_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qstyleoption_types.QStyleOptionButton): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionButton_icon(self.h), owned: true)

proc setIcon*(self: gen_qstyleoption_types.QStyleOptionButton, icon: gen_qicon_types.QIcon): void =
  fcQStyleOptionButton_setIcon(self.h, icon.h)

proc iconSize*(self: gen_qstyleoption_types.QStyleOptionButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionButton_iconSize(self.h), owned: true)

proc setIconSize*(self: gen_qstyleoption_types.QStyleOptionButton, iconSize: gen_qsize_types.QSize): void =
  fcQStyleOptionButton_setIconSize(self.h, iconSize.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionButton, fromVal: gen_qstyleoption_types.QStyleOptionButton): void =
  fcQStyleOptionButton_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionButton): gen_qstyleoption_types.QStyleOptionButton =
  let tmp = gen_qstyleoption_types.QStyleOptionButton(h: fcQStyleOptionButton_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionButton,
    fromVal: gen_qstyleoption_types.QStyleOptionButton): gen_qstyleoption_types.QStyleOptionButton =
  let tmp = gen_qstyleoption_types.QStyleOptionButton(h: fcQStyleOptionButton_new2(fromVal.h), owned: true)
  tmp
proc shape*(self: gen_qstyleoption_types.QStyleOptionTab): cint =
  cint(fcQStyleOptionTab_shape(self.h))

proc setShape*(self: gen_qstyleoption_types.QStyleOptionTab, shape: cint): void =
  fcQStyleOptionTab_setShape(self.h, cint(shape))

proc text*(self: gen_qstyleoption_types.QStyleOptionTab): string =
  let vtext_ms = fcQStyleOptionTab_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionTab, text: openArray[char]): void =
  fcQStyleOptionTab_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qstyleoption_types.QStyleOptionTab): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionTab_icon(self.h), owned: true)

proc setIcon*(self: gen_qstyleoption_types.QStyleOptionTab, icon: gen_qicon_types.QIcon): void =
  fcQStyleOptionTab_setIcon(self.h, icon.h)

proc row*(self: gen_qstyleoption_types.QStyleOptionTab): cint =
  fcQStyleOptionTab_row(self.h)

proc setRow*(self: gen_qstyleoption_types.QStyleOptionTab, row: cint): void =
  fcQStyleOptionTab_setRow(self.h, row)

proc position*(self: gen_qstyleoption_types.QStyleOptionTab): cint =
  cint(fcQStyleOptionTab_position(self.h))

proc setPosition*(self: gen_qstyleoption_types.QStyleOptionTab, position: cint): void =
  fcQStyleOptionTab_setPosition(self.h, cint(position))

proc selectedPosition*(self: gen_qstyleoption_types.QStyleOptionTab): cint =
  cint(fcQStyleOptionTab_selectedPosition(self.h))

proc setSelectedPosition*(self: gen_qstyleoption_types.QStyleOptionTab, selectedPosition: cint): void =
  fcQStyleOptionTab_setSelectedPosition(self.h, cint(selectedPosition))

proc cornerWidgets*(self: gen_qstyleoption_types.QStyleOptionTab): cint =
  cint(fcQStyleOptionTab_cornerWidgets(self.h))

proc setCornerWidgets*(self: gen_qstyleoption_types.QStyleOptionTab, cornerWidgets: cint): void =
  fcQStyleOptionTab_setCornerWidgets(self.h, cint(cornerWidgets))

proc iconSize*(self: gen_qstyleoption_types.QStyleOptionTab): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionTab_iconSize(self.h), owned: true)

proc setIconSize*(self: gen_qstyleoption_types.QStyleOptionTab, iconSize: gen_qsize_types.QSize): void =
  fcQStyleOptionTab_setIconSize(self.h, iconSize.h)

proc documentMode*(self: gen_qstyleoption_types.QStyleOptionTab): bool =
  fcQStyleOptionTab_documentMode(self.h)

proc setDocumentMode*(self: gen_qstyleoption_types.QStyleOptionTab, documentMode: bool): void =
  fcQStyleOptionTab_setDocumentMode(self.h, documentMode)

proc leftButtonSize*(self: gen_qstyleoption_types.QStyleOptionTab): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionTab_leftButtonSize(self.h), owned: true)

proc setLeftButtonSize*(self: gen_qstyleoption_types.QStyleOptionTab, leftButtonSize: gen_qsize_types.QSize): void =
  fcQStyleOptionTab_setLeftButtonSize(self.h, leftButtonSize.h)

proc rightButtonSize*(self: gen_qstyleoption_types.QStyleOptionTab): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionTab_rightButtonSize(self.h), owned: true)

proc setRightButtonSize*(self: gen_qstyleoption_types.QStyleOptionTab, rightButtonSize: gen_qsize_types.QSize): void =
  fcQStyleOptionTab_setRightButtonSize(self.h, rightButtonSize.h)

proc features*(self: gen_qstyleoption_types.QStyleOptionTab): cint =
  cint(fcQStyleOptionTab_features(self.h))

proc setFeatures*(self: gen_qstyleoption_types.QStyleOptionTab, features: cint): void =
  fcQStyleOptionTab_setFeatures(self.h, cint(features))

proc tabIndex*(self: gen_qstyleoption_types.QStyleOptionTab): cint =
  fcQStyleOptionTab_tabIndex(self.h)

proc setTabIndex*(self: gen_qstyleoption_types.QStyleOptionTab, tabIndex: cint): void =
  fcQStyleOptionTab_setTabIndex(self.h, tabIndex)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionTab, fromVal: gen_qstyleoption_types.QStyleOptionTab): void =
  fcQStyleOptionTab_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTab): gen_qstyleoption_types.QStyleOptionTab =
  let tmp = gen_qstyleoption_types.QStyleOptionTab(h: fcQStyleOptionTab_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionTab,
    fromVal: gen_qstyleoption_types.QStyleOptionTab): gen_qstyleoption_types.QStyleOptionTab =
  let tmp = gen_qstyleoption_types.QStyleOptionTab(h: fcQStyleOptionTab_new2(fromVal.h), owned: true)
  tmp
proc positionOfLine*(self: gen_qstyleoption_types.QStyleOptionToolBar): cint =
  cint(fcQStyleOptionToolBar_positionOfLine(self.h))

proc setPositionOfLine*(self: gen_qstyleoption_types.QStyleOptionToolBar, positionOfLine: cint): void =
  fcQStyleOptionToolBar_setPositionOfLine(self.h, cint(positionOfLine))

proc positionWithinLine*(self: gen_qstyleoption_types.QStyleOptionToolBar): cint =
  cint(fcQStyleOptionToolBar_positionWithinLine(self.h))

proc setPositionWithinLine*(self: gen_qstyleoption_types.QStyleOptionToolBar, positionWithinLine: cint): void =
  fcQStyleOptionToolBar_setPositionWithinLine(self.h, cint(positionWithinLine))

proc toolBarArea*(self: gen_qstyleoption_types.QStyleOptionToolBar): cint =
  cint(fcQStyleOptionToolBar_toolBarArea(self.h))

proc setToolBarArea*(self: gen_qstyleoption_types.QStyleOptionToolBar, toolBarArea: cint): void =
  fcQStyleOptionToolBar_setToolBarArea(self.h, cint(toolBarArea))

proc features*(self: gen_qstyleoption_types.QStyleOptionToolBar): cint =
  cint(fcQStyleOptionToolBar_features(self.h))

proc setFeatures*(self: gen_qstyleoption_types.QStyleOptionToolBar, features: cint): void =
  fcQStyleOptionToolBar_setFeatures(self.h, cint(features))

proc lineWidth*(self: gen_qstyleoption_types.QStyleOptionToolBar): cint =
  fcQStyleOptionToolBar_lineWidth(self.h)

proc setLineWidth*(self: gen_qstyleoption_types.QStyleOptionToolBar, lineWidth: cint): void =
  fcQStyleOptionToolBar_setLineWidth(self.h, lineWidth)

proc midLineWidth*(self: gen_qstyleoption_types.QStyleOptionToolBar): cint =
  fcQStyleOptionToolBar_midLineWidth(self.h)

proc setMidLineWidth*(self: gen_qstyleoption_types.QStyleOptionToolBar, midLineWidth: cint): void =
  fcQStyleOptionToolBar_setMidLineWidth(self.h, midLineWidth)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionToolBar, fromVal: gen_qstyleoption_types.QStyleOptionToolBar): void =
  fcQStyleOptionToolBar_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolBar): gen_qstyleoption_types.QStyleOptionToolBar =
  let tmp = gen_qstyleoption_types.QStyleOptionToolBar(h: fcQStyleOptionToolBar_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionToolBar,
    fromVal: gen_qstyleoption_types.QStyleOptionToolBar): gen_qstyleoption_types.QStyleOptionToolBar =
  let tmp = gen_qstyleoption_types.QStyleOptionToolBar(h: fcQStyleOptionToolBar_new2(fromVal.h), owned: true)
  tmp
proc minimum*(self: gen_qstyleoption_types.QStyleOptionProgressBar): cint =
  fcQStyleOptionProgressBar_minimum(self.h)

proc setMinimum*(self: gen_qstyleoption_types.QStyleOptionProgressBar, minimum: cint): void =
  fcQStyleOptionProgressBar_setMinimum(self.h, minimum)

proc maximum*(self: gen_qstyleoption_types.QStyleOptionProgressBar): cint =
  fcQStyleOptionProgressBar_maximum(self.h)

proc setMaximum*(self: gen_qstyleoption_types.QStyleOptionProgressBar, maximum: cint): void =
  fcQStyleOptionProgressBar_setMaximum(self.h, maximum)

proc progress*(self: gen_qstyleoption_types.QStyleOptionProgressBar): cint =
  fcQStyleOptionProgressBar_progress(self.h)

proc setProgress*(self: gen_qstyleoption_types.QStyleOptionProgressBar, progress: cint): void =
  fcQStyleOptionProgressBar_setProgress(self.h, progress)

proc text*(self: gen_qstyleoption_types.QStyleOptionProgressBar): string =
  let vtext_ms = fcQStyleOptionProgressBar_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionProgressBar, text: openArray[char]): void =
  fcQStyleOptionProgressBar_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc textAlignment*(self: gen_qstyleoption_types.QStyleOptionProgressBar): cint =
  cint(fcQStyleOptionProgressBar_textAlignment(self.h))

proc setTextAlignment*(self: gen_qstyleoption_types.QStyleOptionProgressBar, textAlignment: cint): void =
  fcQStyleOptionProgressBar_setTextAlignment(self.h, cint(textAlignment))

proc textVisible*(self: gen_qstyleoption_types.QStyleOptionProgressBar): bool =
  fcQStyleOptionProgressBar_textVisible(self.h)

proc setTextVisible*(self: gen_qstyleoption_types.QStyleOptionProgressBar, textVisible: bool): void =
  fcQStyleOptionProgressBar_setTextVisible(self.h, textVisible)

proc invertedAppearance*(self: gen_qstyleoption_types.QStyleOptionProgressBar): bool =
  fcQStyleOptionProgressBar_invertedAppearance(self.h)

proc setInvertedAppearance*(self: gen_qstyleoption_types.QStyleOptionProgressBar, invertedAppearance: bool): void =
  fcQStyleOptionProgressBar_setInvertedAppearance(self.h, invertedAppearance)

proc bottomToTop*(self: gen_qstyleoption_types.QStyleOptionProgressBar): bool =
  fcQStyleOptionProgressBar_bottomToTop(self.h)

proc setBottomToTop*(self: gen_qstyleoption_types.QStyleOptionProgressBar, bottomToTop: bool): void =
  fcQStyleOptionProgressBar_setBottomToTop(self.h, bottomToTop)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionProgressBar, fromVal: gen_qstyleoption_types.QStyleOptionProgressBar): void =
  fcQStyleOptionProgressBar_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionProgressBar): gen_qstyleoption_types.QStyleOptionProgressBar =
  let tmp = gen_qstyleoption_types.QStyleOptionProgressBar(h: fcQStyleOptionProgressBar_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionProgressBar,
    fromVal: gen_qstyleoption_types.QStyleOptionProgressBar): gen_qstyleoption_types.QStyleOptionProgressBar =
  let tmp = gen_qstyleoption_types.QStyleOptionProgressBar(h: fcQStyleOptionProgressBar_new2(fromVal.h), owned: true)
  tmp
proc menuItemType*(self: gen_qstyleoption_types.QStyleOptionMenuItem): cint =
  cint(fcQStyleOptionMenuItem_menuItemType(self.h))

proc setMenuItemType*(self: gen_qstyleoption_types.QStyleOptionMenuItem, menuItemType: cint): void =
  fcQStyleOptionMenuItem_setMenuItemType(self.h, cint(menuItemType))

proc checkType*(self: gen_qstyleoption_types.QStyleOptionMenuItem): cint =
  cint(fcQStyleOptionMenuItem_checkType(self.h))

proc setCheckType*(self: gen_qstyleoption_types.QStyleOptionMenuItem, checkType: cint): void =
  fcQStyleOptionMenuItem_setCheckType(self.h, cint(checkType))

proc checked*(self: gen_qstyleoption_types.QStyleOptionMenuItem): bool =
  fcQStyleOptionMenuItem_checked(self.h)

proc setChecked*(self: gen_qstyleoption_types.QStyleOptionMenuItem, checked: bool): void =
  fcQStyleOptionMenuItem_setChecked(self.h, checked)

proc menuHasCheckableItems*(self: gen_qstyleoption_types.QStyleOptionMenuItem): bool =
  fcQStyleOptionMenuItem_menuHasCheckableItems(self.h)

proc setMenuHasCheckableItems*(self: gen_qstyleoption_types.QStyleOptionMenuItem, menuHasCheckableItems: bool): void =
  fcQStyleOptionMenuItem_setMenuHasCheckableItems(self.h, menuHasCheckableItems)

proc menuRect*(self: gen_qstyleoption_types.QStyleOptionMenuItem): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyleOptionMenuItem_menuRect(self.h), owned: true)

proc setMenuRect*(self: gen_qstyleoption_types.QStyleOptionMenuItem, menuRect: gen_qrect_types.QRect): void =
  fcQStyleOptionMenuItem_setMenuRect(self.h, menuRect.h)

proc text*(self: gen_qstyleoption_types.QStyleOptionMenuItem): string =
  let vtext_ms = fcQStyleOptionMenuItem_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionMenuItem, text: openArray[char]): void =
  fcQStyleOptionMenuItem_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qstyleoption_types.QStyleOptionMenuItem): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionMenuItem_icon(self.h), owned: true)

proc setIcon*(self: gen_qstyleoption_types.QStyleOptionMenuItem, icon: gen_qicon_types.QIcon): void =
  fcQStyleOptionMenuItem_setIcon(self.h, icon.h)

proc maxIconWidth*(self: gen_qstyleoption_types.QStyleOptionMenuItem): cint =
  fcQStyleOptionMenuItem_maxIconWidth(self.h)

proc setMaxIconWidth*(self: gen_qstyleoption_types.QStyleOptionMenuItem, maxIconWidth: cint): void =
  fcQStyleOptionMenuItem_setMaxIconWidth(self.h, maxIconWidth)

proc reservedShortcutWidth*(self: gen_qstyleoption_types.QStyleOptionMenuItem): cint =
  fcQStyleOptionMenuItem_reservedShortcutWidth(self.h)

proc setReservedShortcutWidth*(self: gen_qstyleoption_types.QStyleOptionMenuItem, reservedShortcutWidth: cint): void =
  fcQStyleOptionMenuItem_setReservedShortcutWidth(self.h, reservedShortcutWidth)

proc font*(self: gen_qstyleoption_types.QStyleOptionMenuItem): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQStyleOptionMenuItem_font(self.h), owned: true)

proc setFont*(self: gen_qstyleoption_types.QStyleOptionMenuItem, font: gen_qfont_types.QFont): void =
  fcQStyleOptionMenuItem_setFont(self.h, font.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionMenuItem, fromVal: gen_qstyleoption_types.QStyleOptionMenuItem): void =
  fcQStyleOptionMenuItem_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionMenuItem): gen_qstyleoption_types.QStyleOptionMenuItem =
  let tmp = gen_qstyleoption_types.QStyleOptionMenuItem(h: fcQStyleOptionMenuItem_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionMenuItem,
    fromVal: gen_qstyleoption_types.QStyleOptionMenuItem): gen_qstyleoption_types.QStyleOptionMenuItem =
  let tmp = gen_qstyleoption_types.QStyleOptionMenuItem(h: fcQStyleOptionMenuItem_new2(fromVal.h), owned: true)
  tmp
proc title*(self: gen_qstyleoption_types.QStyleOptionDockWidget): string =
  let vtitle_ms = fcQStyleOptionDockWidget_title(self.h)
  let vtitlex_ret = string.fromBytes(vtitle_ms)
  c_free(vtitle_ms.data)
  vtitlex_ret

proc setTitle*(self: gen_qstyleoption_types.QStyleOptionDockWidget, title: openArray[char]): void =
  fcQStyleOptionDockWidget_setTitle(self.h, struct_seaqt_string(data: if len(title) > 0: addr title[0] else: nil, len: csize_t(len(title))))

proc closable*(self: gen_qstyleoption_types.QStyleOptionDockWidget): bool =
  fcQStyleOptionDockWidget_closable(self.h)

proc setClosable*(self: gen_qstyleoption_types.QStyleOptionDockWidget, closable: bool): void =
  fcQStyleOptionDockWidget_setClosable(self.h, closable)

proc movable*(self: gen_qstyleoption_types.QStyleOptionDockWidget): bool =
  fcQStyleOptionDockWidget_movable(self.h)

proc setMovable*(self: gen_qstyleoption_types.QStyleOptionDockWidget, movable: bool): void =
  fcQStyleOptionDockWidget_setMovable(self.h, movable)

proc floatable*(self: gen_qstyleoption_types.QStyleOptionDockWidget): bool =
  fcQStyleOptionDockWidget_floatable(self.h)

proc setFloatable*(self: gen_qstyleoption_types.QStyleOptionDockWidget, floatable: bool): void =
  fcQStyleOptionDockWidget_setFloatable(self.h, floatable)

proc verticalTitleBar*(self: gen_qstyleoption_types.QStyleOptionDockWidget): bool =
  fcQStyleOptionDockWidget_verticalTitleBar(self.h)

proc setVerticalTitleBar*(self: gen_qstyleoption_types.QStyleOptionDockWidget, verticalTitleBar: bool): void =
  fcQStyleOptionDockWidget_setVerticalTitleBar(self.h, verticalTitleBar)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionDockWidget, fromVal: gen_qstyleoption_types.QStyleOptionDockWidget): void =
  fcQStyleOptionDockWidget_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionDockWidget): gen_qstyleoption_types.QStyleOptionDockWidget =
  let tmp = gen_qstyleoption_types.QStyleOptionDockWidget(h: fcQStyleOptionDockWidget_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionDockWidget,
    fromVal: gen_qstyleoption_types.QStyleOptionDockWidget): gen_qstyleoption_types.QStyleOptionDockWidget =
  let tmp = gen_qstyleoption_types.QStyleOptionDockWidget(h: fcQStyleOptionDockWidget_new2(fromVal.h), owned: true)
  tmp
proc displayAlignment*(self: gen_qstyleoption_types.QStyleOptionViewItem): cint =
  cint(fcQStyleOptionViewItem_displayAlignment(self.h))

proc setDisplayAlignment*(self: gen_qstyleoption_types.QStyleOptionViewItem, displayAlignment: cint): void =
  fcQStyleOptionViewItem_setDisplayAlignment(self.h, cint(displayAlignment))

proc decorationAlignment*(self: gen_qstyleoption_types.QStyleOptionViewItem): cint =
  cint(fcQStyleOptionViewItem_decorationAlignment(self.h))

proc setDecorationAlignment*(self: gen_qstyleoption_types.QStyleOptionViewItem, decorationAlignment: cint): void =
  fcQStyleOptionViewItem_setDecorationAlignment(self.h, cint(decorationAlignment))

proc textElideMode*(self: gen_qstyleoption_types.QStyleOptionViewItem): cint =
  cint(fcQStyleOptionViewItem_textElideMode(self.h))

proc setTextElideMode*(self: gen_qstyleoption_types.QStyleOptionViewItem, textElideMode: cint): void =
  fcQStyleOptionViewItem_setTextElideMode(self.h, cint(textElideMode))

proc decorationPosition*(self: gen_qstyleoption_types.QStyleOptionViewItem): cint =
  cint(fcQStyleOptionViewItem_decorationPosition(self.h))

proc setDecorationPosition*(self: gen_qstyleoption_types.QStyleOptionViewItem, decorationPosition: cint): void =
  fcQStyleOptionViewItem_setDecorationPosition(self.h, cint(decorationPosition))

proc decorationSize*(self: gen_qstyleoption_types.QStyleOptionViewItem): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionViewItem_decorationSize(self.h), owned: true)

proc setDecorationSize*(self: gen_qstyleoption_types.QStyleOptionViewItem, decorationSize: gen_qsize_types.QSize): void =
  fcQStyleOptionViewItem_setDecorationSize(self.h, decorationSize.h)

proc font*(self: gen_qstyleoption_types.QStyleOptionViewItem): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQStyleOptionViewItem_font(self.h), owned: true)

proc setFont*(self: gen_qstyleoption_types.QStyleOptionViewItem, font: gen_qfont_types.QFont): void =
  fcQStyleOptionViewItem_setFont(self.h, font.h)

proc showDecorationSelected*(self: gen_qstyleoption_types.QStyleOptionViewItem): bool =
  fcQStyleOptionViewItem_showDecorationSelected(self.h)

proc setShowDecorationSelected*(self: gen_qstyleoption_types.QStyleOptionViewItem, showDecorationSelected: bool): void =
  fcQStyleOptionViewItem_setShowDecorationSelected(self.h, showDecorationSelected)

proc features*(self: gen_qstyleoption_types.QStyleOptionViewItem): cint =
  cint(fcQStyleOptionViewItem_features(self.h))

proc setFeatures*(self: gen_qstyleoption_types.QStyleOptionViewItem, features: cint): void =
  fcQStyleOptionViewItem_setFeatures(self.h, cint(features))

proc locale*(self: gen_qstyleoption_types.QStyleOptionViewItem): gen_qlocale_types.QLocale =
  gen_qlocale_types.QLocale(h: fcQStyleOptionViewItem_locale(self.h), owned: true)

proc setLocale*(self: gen_qstyleoption_types.QStyleOptionViewItem, locale: gen_qlocale_types.QLocale): void =
  fcQStyleOptionViewItem_setLocale(self.h, locale.h)

proc widget*(self: gen_qstyleoption_types.QStyleOptionViewItem): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQStyleOptionViewItem_widget(self.h), owned: false)

proc setWidget*(self: gen_qstyleoption_types.QStyleOptionViewItem, widget: gen_qwidget_types.QWidget): void =
  fcQStyleOptionViewItem_setWidget(self.h, widget.h)

proc index*(self: gen_qstyleoption_types.QStyleOptionViewItem): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQStyleOptionViewItem_index(self.h), owned: true)

proc setIndex*(self: gen_qstyleoption_types.QStyleOptionViewItem, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQStyleOptionViewItem_setIndex(self.h, index.h)

proc checkState*(self: gen_qstyleoption_types.QStyleOptionViewItem): cint =
  cint(fcQStyleOptionViewItem_checkState(self.h))

proc setCheckState*(self: gen_qstyleoption_types.QStyleOptionViewItem, checkState: cint): void =
  fcQStyleOptionViewItem_setCheckState(self.h, cint(checkState))

proc icon*(self: gen_qstyleoption_types.QStyleOptionViewItem): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionViewItem_icon(self.h), owned: true)

proc setIcon*(self: gen_qstyleoption_types.QStyleOptionViewItem, icon: gen_qicon_types.QIcon): void =
  fcQStyleOptionViewItem_setIcon(self.h, icon.h)

proc text*(self: gen_qstyleoption_types.QStyleOptionViewItem): string =
  let vtext_ms = fcQStyleOptionViewItem_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionViewItem, text: openArray[char]): void =
  fcQStyleOptionViewItem_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc viewItemPosition*(self: gen_qstyleoption_types.QStyleOptionViewItem): cint =
  cint(fcQStyleOptionViewItem_viewItemPosition(self.h))

proc setViewItemPosition*(self: gen_qstyleoption_types.QStyleOptionViewItem, viewItemPosition: cint): void =
  fcQStyleOptionViewItem_setViewItemPosition(self.h, cint(viewItemPosition))

proc backgroundBrush*(self: gen_qstyleoption_types.QStyleOptionViewItem): gen_qbrush_types.QBrush =
  gen_qbrush_types.QBrush(h: fcQStyleOptionViewItem_backgroundBrush(self.h), owned: true)

proc setBackgroundBrush*(self: gen_qstyleoption_types.QStyleOptionViewItem, backgroundBrush: gen_qbrush_types.QBrush): void =
  fcQStyleOptionViewItem_setBackgroundBrush(self.h, backgroundBrush.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionViewItem, fromVal: gen_qstyleoption_types.QStyleOptionViewItem): void =
  fcQStyleOptionViewItem_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionViewItem): gen_qstyleoption_types.QStyleOptionViewItem =
  let tmp = gen_qstyleoption_types.QStyleOptionViewItem(h: fcQStyleOptionViewItem_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionViewItem,
    fromVal: gen_qstyleoption_types.QStyleOptionViewItem): gen_qstyleoption_types.QStyleOptionViewItem =
  let tmp = gen_qstyleoption_types.QStyleOptionViewItem(h: fcQStyleOptionViewItem_new2(fromVal.h), owned: true)
  tmp
proc text*(self: gen_qstyleoption_types.QStyleOptionToolBox): string =
  let vtext_ms = fcQStyleOptionToolBox_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionToolBox, text: openArray[char]): void =
  fcQStyleOptionToolBox_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qstyleoption_types.QStyleOptionToolBox): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionToolBox_icon(self.h), owned: true)

proc setIcon*(self: gen_qstyleoption_types.QStyleOptionToolBox, icon: gen_qicon_types.QIcon): void =
  fcQStyleOptionToolBox_setIcon(self.h, icon.h)

proc position*(self: gen_qstyleoption_types.QStyleOptionToolBox): cint =
  cint(fcQStyleOptionToolBox_position(self.h))

proc setPosition*(self: gen_qstyleoption_types.QStyleOptionToolBox, position: cint): void =
  fcQStyleOptionToolBox_setPosition(self.h, cint(position))

proc selectedPosition*(self: gen_qstyleoption_types.QStyleOptionToolBox): cint =
  cint(fcQStyleOptionToolBox_selectedPosition(self.h))

proc setSelectedPosition*(self: gen_qstyleoption_types.QStyleOptionToolBox, selectedPosition: cint): void =
  fcQStyleOptionToolBox_setSelectedPosition(self.h, cint(selectedPosition))

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionToolBox, fromVal: gen_qstyleoption_types.QStyleOptionToolBox): void =
  fcQStyleOptionToolBox_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolBox): gen_qstyleoption_types.QStyleOptionToolBox =
  let tmp = gen_qstyleoption_types.QStyleOptionToolBox(h: fcQStyleOptionToolBox_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionToolBox,
    fromVal: gen_qstyleoption_types.QStyleOptionToolBox): gen_qstyleoption_types.QStyleOptionToolBox =
  let tmp = gen_qstyleoption_types.QStyleOptionToolBox(h: fcQStyleOptionToolBox_new2(fromVal.h), owned: true)
  tmp
proc shape*(self: gen_qstyleoption_types.QStyleOptionRubberBand): cint =
  cint(fcQStyleOptionRubberBand_shape(self.h))

proc setShape*(self: gen_qstyleoption_types.QStyleOptionRubberBand, shape: cint): void =
  fcQStyleOptionRubberBand_setShape(self.h, cint(shape))

proc opaque*(self: gen_qstyleoption_types.QStyleOptionRubberBand): bool =
  fcQStyleOptionRubberBand_opaque(self.h)

proc setOpaque*(self: gen_qstyleoption_types.QStyleOptionRubberBand, opaque: bool): void =
  fcQStyleOptionRubberBand_setOpaque(self.h, opaque)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionRubberBand, fromVal: gen_qstyleoption_types.QStyleOptionRubberBand): void =
  fcQStyleOptionRubberBand_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionRubberBand): gen_qstyleoption_types.QStyleOptionRubberBand =
  let tmp = gen_qstyleoption_types.QStyleOptionRubberBand(h: fcQStyleOptionRubberBand_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionRubberBand,
    fromVal: gen_qstyleoption_types.QStyleOptionRubberBand): gen_qstyleoption_types.QStyleOptionRubberBand =
  let tmp = gen_qstyleoption_types.QStyleOptionRubberBand(h: fcQStyleOptionRubberBand_new2(fromVal.h), owned: true)
  tmp
proc subControls*(self: gen_qstyleoption_types.QStyleOptionComplex): cint =
  cint(fcQStyleOptionComplex_subControls(self.h))

proc setSubControls*(self: gen_qstyleoption_types.QStyleOptionComplex, subControls: cint): void =
  fcQStyleOptionComplex_setSubControls(self.h, cint(subControls))

proc activeSubControls*(self: gen_qstyleoption_types.QStyleOptionComplex): cint =
  cint(fcQStyleOptionComplex_activeSubControls(self.h))

proc setActiveSubControls*(self: gen_qstyleoption_types.QStyleOptionComplex, activeSubControls: cint): void =
  fcQStyleOptionComplex_setActiveSubControls(self.h, cint(activeSubControls))

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionComplex, fromVal: gen_qstyleoption_types.QStyleOptionComplex): void =
  fcQStyleOptionComplex_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionComplex): gen_qstyleoption_types.QStyleOptionComplex =
  let tmp = gen_qstyleoption_types.QStyleOptionComplex(h: fcQStyleOptionComplex_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionComplex,
    fromVal: gen_qstyleoption_types.QStyleOptionComplex): gen_qstyleoption_types.QStyleOptionComplex =
  let tmp = gen_qstyleoption_types.QStyleOptionComplex(h: fcQStyleOptionComplex_new2(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionComplex,
    version: cint): gen_qstyleoption_types.QStyleOptionComplex =
  let tmp = gen_qstyleoption_types.QStyleOptionComplex(h: fcQStyleOptionComplex_new3(version), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionComplex,
    version: cint, typeVal: cint): gen_qstyleoption_types.QStyleOptionComplex =
  let tmp = gen_qstyleoption_types.QStyleOptionComplex(h: fcQStyleOptionComplex_new4(version, typeVal), owned: true)
  tmp
proc orientation*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  cint(fcQStyleOptionSlider_orientation(self.h))

proc setOrientation*(self: gen_qstyleoption_types.QStyleOptionSlider, orientation: cint): void =
  fcQStyleOptionSlider_setOrientation(self.h, cint(orientation))

proc minimum*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  fcQStyleOptionSlider_minimum(self.h)

proc setMinimum*(self: gen_qstyleoption_types.QStyleOptionSlider, minimum: cint): void =
  fcQStyleOptionSlider_setMinimum(self.h, minimum)

proc maximum*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  fcQStyleOptionSlider_maximum(self.h)

proc setMaximum*(self: gen_qstyleoption_types.QStyleOptionSlider, maximum: cint): void =
  fcQStyleOptionSlider_setMaximum(self.h, maximum)

proc tickPosition*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  cint(fcQStyleOptionSlider_tickPosition(self.h))

proc setTickPosition*(self: gen_qstyleoption_types.QStyleOptionSlider, tickPosition: cint): void =
  fcQStyleOptionSlider_setTickPosition(self.h, cint(tickPosition))

proc tickInterval*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  fcQStyleOptionSlider_tickInterval(self.h)

proc setTickInterval*(self: gen_qstyleoption_types.QStyleOptionSlider, tickInterval: cint): void =
  fcQStyleOptionSlider_setTickInterval(self.h, tickInterval)

proc upsideDown*(self: gen_qstyleoption_types.QStyleOptionSlider): bool =
  fcQStyleOptionSlider_upsideDown(self.h)

proc setUpsideDown*(self: gen_qstyleoption_types.QStyleOptionSlider, upsideDown: bool): void =
  fcQStyleOptionSlider_setUpsideDown(self.h, upsideDown)

proc sliderPosition*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  fcQStyleOptionSlider_sliderPosition(self.h)

proc setSliderPosition*(self: gen_qstyleoption_types.QStyleOptionSlider, sliderPosition: cint): void =
  fcQStyleOptionSlider_setSliderPosition(self.h, sliderPosition)

proc sliderValue*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  fcQStyleOptionSlider_sliderValue(self.h)

proc setSliderValue*(self: gen_qstyleoption_types.QStyleOptionSlider, sliderValue: cint): void =
  fcQStyleOptionSlider_setSliderValue(self.h, sliderValue)

proc singleStep*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  fcQStyleOptionSlider_singleStep(self.h)

proc setSingleStep*(self: gen_qstyleoption_types.QStyleOptionSlider, singleStep: cint): void =
  fcQStyleOptionSlider_setSingleStep(self.h, singleStep)

proc pageStep*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  fcQStyleOptionSlider_pageStep(self.h)

proc setPageStep*(self: gen_qstyleoption_types.QStyleOptionSlider, pageStep: cint): void =
  fcQStyleOptionSlider_setPageStep(self.h, pageStep)

proc notchTarget*(self: gen_qstyleoption_types.QStyleOptionSlider): float64 =
  fcQStyleOptionSlider_notchTarget(self.h)

proc setNotchTarget*(self: gen_qstyleoption_types.QStyleOptionSlider, notchTarget: float64): void =
  fcQStyleOptionSlider_setNotchTarget(self.h, notchTarget)

proc dialWrapping*(self: gen_qstyleoption_types.QStyleOptionSlider): bool =
  fcQStyleOptionSlider_dialWrapping(self.h)

proc setDialWrapping*(self: gen_qstyleoption_types.QStyleOptionSlider, dialWrapping: bool): void =
  fcQStyleOptionSlider_setDialWrapping(self.h, dialWrapping)

proc keyboardModifiers*(self: gen_qstyleoption_types.QStyleOptionSlider): cint =
  cint(fcQStyleOptionSlider_keyboardModifiers(self.h))

proc setKeyboardModifiers*(self: gen_qstyleoption_types.QStyleOptionSlider, keyboardModifiers: cint): void =
  fcQStyleOptionSlider_setKeyboardModifiers(self.h, cint(keyboardModifiers))

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionSlider, fromVal: gen_qstyleoption_types.QStyleOptionSlider): void =
  fcQStyleOptionSlider_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSlider): gen_qstyleoption_types.QStyleOptionSlider =
  let tmp = gen_qstyleoption_types.QStyleOptionSlider(h: fcQStyleOptionSlider_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionSlider,
    fromVal: gen_qstyleoption_types.QStyleOptionSlider): gen_qstyleoption_types.QStyleOptionSlider =
  let tmp = gen_qstyleoption_types.QStyleOptionSlider(h: fcQStyleOptionSlider_new2(fromVal.h), owned: true)
  tmp
proc buttonSymbols*(self: gen_qstyleoption_types.QStyleOptionSpinBox): cint =
  cint(fcQStyleOptionSpinBox_buttonSymbols(self.h))

proc setButtonSymbols*(self: gen_qstyleoption_types.QStyleOptionSpinBox, buttonSymbols: cint): void =
  fcQStyleOptionSpinBox_setButtonSymbols(self.h, cint(buttonSymbols))

proc stepEnabled*(self: gen_qstyleoption_types.QStyleOptionSpinBox): cint =
  cint(fcQStyleOptionSpinBox_stepEnabled(self.h))

proc setStepEnabled*(self: gen_qstyleoption_types.QStyleOptionSpinBox, stepEnabled: cint): void =
  fcQStyleOptionSpinBox_setStepEnabled(self.h, cint(stepEnabled))

proc frame*(self: gen_qstyleoption_types.QStyleOptionSpinBox): bool =
  fcQStyleOptionSpinBox_frame(self.h)

proc setFrame*(self: gen_qstyleoption_types.QStyleOptionSpinBox, frame: bool): void =
  fcQStyleOptionSpinBox_setFrame(self.h, frame)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionSpinBox, fromVal: gen_qstyleoption_types.QStyleOptionSpinBox): void =
  fcQStyleOptionSpinBox_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSpinBox): gen_qstyleoption_types.QStyleOptionSpinBox =
  let tmp = gen_qstyleoption_types.QStyleOptionSpinBox(h: fcQStyleOptionSpinBox_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionSpinBox,
    fromVal: gen_qstyleoption_types.QStyleOptionSpinBox): gen_qstyleoption_types.QStyleOptionSpinBox =
  let tmp = gen_qstyleoption_types.QStyleOptionSpinBox(h: fcQStyleOptionSpinBox_new2(fromVal.h), owned: true)
  tmp
proc features*(self: gen_qstyleoption_types.QStyleOptionToolButton): cint =
  cint(fcQStyleOptionToolButton_features(self.h))

proc setFeatures*(self: gen_qstyleoption_types.QStyleOptionToolButton, features: cint): void =
  fcQStyleOptionToolButton_setFeatures(self.h, cint(features))

proc icon*(self: gen_qstyleoption_types.QStyleOptionToolButton): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionToolButton_icon(self.h), owned: true)

proc setIcon*(self: gen_qstyleoption_types.QStyleOptionToolButton, icon: gen_qicon_types.QIcon): void =
  fcQStyleOptionToolButton_setIcon(self.h, icon.h)

proc iconSize*(self: gen_qstyleoption_types.QStyleOptionToolButton): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionToolButton_iconSize(self.h), owned: true)

proc setIconSize*(self: gen_qstyleoption_types.QStyleOptionToolButton, iconSize: gen_qsize_types.QSize): void =
  fcQStyleOptionToolButton_setIconSize(self.h, iconSize.h)

proc text*(self: gen_qstyleoption_types.QStyleOptionToolButton): string =
  let vtext_ms = fcQStyleOptionToolButton_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionToolButton, text: openArray[char]): void =
  fcQStyleOptionToolButton_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc arrowType*(self: gen_qstyleoption_types.QStyleOptionToolButton): cint =
  cint(fcQStyleOptionToolButton_arrowType(self.h))

proc setArrowType*(self: gen_qstyleoption_types.QStyleOptionToolButton, arrowType: cint): void =
  fcQStyleOptionToolButton_setArrowType(self.h, cint(arrowType))

proc toolButtonStyle*(self: gen_qstyleoption_types.QStyleOptionToolButton): cint =
  cint(fcQStyleOptionToolButton_toolButtonStyle(self.h))

proc setToolButtonStyle*(self: gen_qstyleoption_types.QStyleOptionToolButton, toolButtonStyle: cint): void =
  fcQStyleOptionToolButton_setToolButtonStyle(self.h, cint(toolButtonStyle))

proc pos*(self: gen_qstyleoption_types.QStyleOptionToolButton): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQStyleOptionToolButton_pos(self.h), owned: true)

proc setPos*(self: gen_qstyleoption_types.QStyleOptionToolButton, pos: gen_qpoint_types.QPoint): void =
  fcQStyleOptionToolButton_setPos(self.h, pos.h)

proc font*(self: gen_qstyleoption_types.QStyleOptionToolButton): gen_qfont_types.QFont =
  gen_qfont_types.QFont(h: fcQStyleOptionToolButton_font(self.h), owned: true)

proc setFont*(self: gen_qstyleoption_types.QStyleOptionToolButton, font: gen_qfont_types.QFont): void =
  fcQStyleOptionToolButton_setFont(self.h, font.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionToolButton, fromVal: gen_qstyleoption_types.QStyleOptionToolButton): void =
  fcQStyleOptionToolButton_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolButton): gen_qstyleoption_types.QStyleOptionToolButton =
  let tmp = gen_qstyleoption_types.QStyleOptionToolButton(h: fcQStyleOptionToolButton_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionToolButton,
    fromVal: gen_qstyleoption_types.QStyleOptionToolButton): gen_qstyleoption_types.QStyleOptionToolButton =
  let tmp = gen_qstyleoption_types.QStyleOptionToolButton(h: fcQStyleOptionToolButton_new2(fromVal.h), owned: true)
  tmp
proc editable*(self: gen_qstyleoption_types.QStyleOptionComboBox): bool =
  fcQStyleOptionComboBox_editable(self.h)

proc setEditable*(self: gen_qstyleoption_types.QStyleOptionComboBox, editable: bool): void =
  fcQStyleOptionComboBox_setEditable(self.h, editable)

proc popupRect*(self: gen_qstyleoption_types.QStyleOptionComboBox): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyleOptionComboBox_popupRect(self.h), owned: true)

proc setPopupRect*(self: gen_qstyleoption_types.QStyleOptionComboBox, popupRect: gen_qrect_types.QRect): void =
  fcQStyleOptionComboBox_setPopupRect(self.h, popupRect.h)

proc frame*(self: gen_qstyleoption_types.QStyleOptionComboBox): bool =
  fcQStyleOptionComboBox_frame(self.h)

proc setFrame*(self: gen_qstyleoption_types.QStyleOptionComboBox, frame: bool): void =
  fcQStyleOptionComboBox_setFrame(self.h, frame)

proc currentText*(self: gen_qstyleoption_types.QStyleOptionComboBox): string =
  let vcurrentText_ms = fcQStyleOptionComboBox_currentText(self.h)
  let vcurrentTextx_ret = string.fromBytes(vcurrentText_ms)
  c_free(vcurrentText_ms.data)
  vcurrentTextx_ret

proc setCurrentText*(self: gen_qstyleoption_types.QStyleOptionComboBox, currentText: openArray[char]): void =
  fcQStyleOptionComboBox_setCurrentText(self.h, struct_seaqt_string(data: if len(currentText) > 0: addr currentText[0] else: nil, len: csize_t(len(currentText))))

proc currentIcon*(self: gen_qstyleoption_types.QStyleOptionComboBox): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionComboBox_currentIcon(self.h), owned: true)

proc setCurrentIcon*(self: gen_qstyleoption_types.QStyleOptionComboBox, currentIcon: gen_qicon_types.QIcon): void =
  fcQStyleOptionComboBox_setCurrentIcon(self.h, currentIcon.h)

proc iconSize*(self: gen_qstyleoption_types.QStyleOptionComboBox): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyleOptionComboBox_iconSize(self.h), owned: true)

proc setIconSize*(self: gen_qstyleoption_types.QStyleOptionComboBox, iconSize: gen_qsize_types.QSize): void =
  fcQStyleOptionComboBox_setIconSize(self.h, iconSize.h)

proc textAlignment*(self: gen_qstyleoption_types.QStyleOptionComboBox): cint =
  cint(fcQStyleOptionComboBox_textAlignment(self.h))

proc setTextAlignment*(self: gen_qstyleoption_types.QStyleOptionComboBox, textAlignment: cint): void =
  fcQStyleOptionComboBox_setTextAlignment(self.h, cint(textAlignment))

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionComboBox, fromVal: gen_qstyleoption_types.QStyleOptionComboBox): void =
  fcQStyleOptionComboBox_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionComboBox): gen_qstyleoption_types.QStyleOptionComboBox =
  let tmp = gen_qstyleoption_types.QStyleOptionComboBox(h: fcQStyleOptionComboBox_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionComboBox,
    fromVal: gen_qstyleoption_types.QStyleOptionComboBox): gen_qstyleoption_types.QStyleOptionComboBox =
  let tmp = gen_qstyleoption_types.QStyleOptionComboBox(h: fcQStyleOptionComboBox_new2(fromVal.h), owned: true)
  tmp
proc text*(self: gen_qstyleoption_types.QStyleOptionTitleBar): string =
  let vtext_ms = fcQStyleOptionTitleBar_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionTitleBar, text: openArray[char]): void =
  fcQStyleOptionTitleBar_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc icon*(self: gen_qstyleoption_types.QStyleOptionTitleBar): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyleOptionTitleBar_icon(self.h), owned: true)

proc setIcon*(self: gen_qstyleoption_types.QStyleOptionTitleBar, icon: gen_qicon_types.QIcon): void =
  fcQStyleOptionTitleBar_setIcon(self.h, icon.h)

proc titleBarState*(self: gen_qstyleoption_types.QStyleOptionTitleBar): cint =
  fcQStyleOptionTitleBar_titleBarState(self.h)

proc setTitleBarState*(self: gen_qstyleoption_types.QStyleOptionTitleBar, titleBarState: cint): void =
  fcQStyleOptionTitleBar_setTitleBarState(self.h, titleBarState)

proc titleBarFlags*(self: gen_qstyleoption_types.QStyleOptionTitleBar): cint =
  cint(fcQStyleOptionTitleBar_titleBarFlags(self.h))

proc setTitleBarFlags*(self: gen_qstyleoption_types.QStyleOptionTitleBar, titleBarFlags: cint): void =
  fcQStyleOptionTitleBar_setTitleBarFlags(self.h, cint(titleBarFlags))

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionTitleBar, fromVal: gen_qstyleoption_types.QStyleOptionTitleBar): void =
  fcQStyleOptionTitleBar_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTitleBar): gen_qstyleoption_types.QStyleOptionTitleBar =
  let tmp = gen_qstyleoption_types.QStyleOptionTitleBar(h: fcQStyleOptionTitleBar_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionTitleBar,
    fromVal: gen_qstyleoption_types.QStyleOptionTitleBar): gen_qstyleoption_types.QStyleOptionTitleBar =
  let tmp = gen_qstyleoption_types.QStyleOptionTitleBar(h: fcQStyleOptionTitleBar_new2(fromVal.h), owned: true)
  tmp
proc features*(self: gen_qstyleoption_types.QStyleOptionGroupBox): cint =
  cint(fcQStyleOptionGroupBox_features(self.h))

proc setFeatures*(self: gen_qstyleoption_types.QStyleOptionGroupBox, features: cint): void =
  fcQStyleOptionGroupBox_setFeatures(self.h, cint(features))

proc text*(self: gen_qstyleoption_types.QStyleOptionGroupBox): string =
  let vtext_ms = fcQStyleOptionGroupBox_text(self.h)
  let vtextx_ret = string.fromBytes(vtext_ms)
  c_free(vtext_ms.data)
  vtextx_ret

proc setText*(self: gen_qstyleoption_types.QStyleOptionGroupBox, text: openArray[char]): void =
  fcQStyleOptionGroupBox_setText(self.h, struct_seaqt_string(data: if len(text) > 0: addr text[0] else: nil, len: csize_t(len(text))))

proc textAlignment*(self: gen_qstyleoption_types.QStyleOptionGroupBox): cint =
  cint(fcQStyleOptionGroupBox_textAlignment(self.h))

proc setTextAlignment*(self: gen_qstyleoption_types.QStyleOptionGroupBox, textAlignment: cint): void =
  fcQStyleOptionGroupBox_setTextAlignment(self.h, cint(textAlignment))

proc textColor*(self: gen_qstyleoption_types.QStyleOptionGroupBox): gen_qcolor_types.QColor =
  gen_qcolor_types.QColor(h: fcQStyleOptionGroupBox_textColor(self.h), owned: true)

proc setTextColor*(self: gen_qstyleoption_types.QStyleOptionGroupBox, textColor: gen_qcolor_types.QColor): void =
  fcQStyleOptionGroupBox_setTextColor(self.h, textColor.h)

proc lineWidth*(self: gen_qstyleoption_types.QStyleOptionGroupBox): cint =
  fcQStyleOptionGroupBox_lineWidth(self.h)

proc setLineWidth*(self: gen_qstyleoption_types.QStyleOptionGroupBox, lineWidth: cint): void =
  fcQStyleOptionGroupBox_setLineWidth(self.h, lineWidth)

proc midLineWidth*(self: gen_qstyleoption_types.QStyleOptionGroupBox): cint =
  fcQStyleOptionGroupBox_midLineWidth(self.h)

proc setMidLineWidth*(self: gen_qstyleoption_types.QStyleOptionGroupBox, midLineWidth: cint): void =
  fcQStyleOptionGroupBox_setMidLineWidth(self.h, midLineWidth)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionGroupBox, fromVal: gen_qstyleoption_types.QStyleOptionGroupBox): void =
  fcQStyleOptionGroupBox_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionGroupBox): gen_qstyleoption_types.QStyleOptionGroupBox =
  let tmp = gen_qstyleoption_types.QStyleOptionGroupBox(h: fcQStyleOptionGroupBox_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionGroupBox,
    fromVal: gen_qstyleoption_types.QStyleOptionGroupBox): gen_qstyleoption_types.QStyleOptionGroupBox =
  let tmp = gen_qstyleoption_types.QStyleOptionGroupBox(h: fcQStyleOptionGroupBox_new2(fromVal.h), owned: true)
  tmp
proc corner*(self: gen_qstyleoption_types.QStyleOptionSizeGrip): cint =
  cint(fcQStyleOptionSizeGrip_corner(self.h))

proc setCorner*(self: gen_qstyleoption_types.QStyleOptionSizeGrip, corner: cint): void =
  fcQStyleOptionSizeGrip_setCorner(self.h, cint(corner))

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionSizeGrip, fromVal: gen_qstyleoption_types.QStyleOptionSizeGrip): void =
  fcQStyleOptionSizeGrip_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSizeGrip): gen_qstyleoption_types.QStyleOptionSizeGrip =
  let tmp = gen_qstyleoption_types.QStyleOptionSizeGrip(h: fcQStyleOptionSizeGrip_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionSizeGrip,
    fromVal: gen_qstyleoption_types.QStyleOptionSizeGrip): gen_qstyleoption_types.QStyleOptionSizeGrip =
  let tmp = gen_qstyleoption_types.QStyleOptionSizeGrip(h: fcQStyleOptionSizeGrip_new2(fromVal.h), owned: true)
  tmp
proc exposedRect*(self: gen_qstyleoption_types.QStyleOptionGraphicsItem): gen_qrect_types.QRectF =
  gen_qrect_types.QRectF(h: fcQStyleOptionGraphicsItem_exposedRect(self.h), owned: true)

proc setExposedRect*(self: gen_qstyleoption_types.QStyleOptionGraphicsItem, exposedRect: gen_qrect_types.QRectF): void =
  fcQStyleOptionGraphicsItem_setExposedRect(self.h, exposedRect.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOptionGraphicsItem, fromVal: gen_qstyleoption_types.QStyleOptionGraphicsItem): void =
  fcQStyleOptionGraphicsItem_operatorAssign(self.h, fromVal.h)

proc levelOfDetailFromTransform*(_: type gen_qstyleoption_types.QStyleOptionGraphicsItem, worldTransform: gen_qtransform_types.QTransform): float64 =
  fcQStyleOptionGraphicsItem_levelOfDetailFromTransform(worldTransform.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionGraphicsItem): gen_qstyleoption_types.QStyleOptionGraphicsItem =
  let tmp = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: fcQStyleOptionGraphicsItem_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleOptionGraphicsItem,
    fromVal: gen_qstyleoption_types.QStyleOptionGraphicsItem): gen_qstyleoption_types.QStyleOptionGraphicsItem =
  let tmp = gen_qstyleoption_types.QStyleOptionGraphicsItem(h: fcQStyleOptionGraphicsItem_new2(fromVal.h), owned: true)
  tmp
proc version*(self: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQStyleHintReturn_version(self.h)

proc setVersion*(self: gen_qstyleoption_types.QStyleHintReturn, version: cint): void =
  fcQStyleHintReturn_setVersion(self.h, version)

proc typeX*(self: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQStyleHintReturn_typeX(self.h)

proc setType*(self: gen_qstyleoption_types.QStyleHintReturn, typeVal: cint): void =
  fcQStyleHintReturn_setType(self.h, typeVal)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleHintReturn, fromVal: gen_qstyleoption_types.QStyleHintReturn): void =
  fcQStyleHintReturn_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturn): gen_qstyleoption_types.QStyleHintReturn =
  let tmp = gen_qstyleoption_types.QStyleHintReturn(h: fcQStyleHintReturn_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleHintReturn,
    fromVal: gen_qstyleoption_types.QStyleHintReturn): gen_qstyleoption_types.QStyleHintReturn =
  let tmp = gen_qstyleoption_types.QStyleHintReturn(h: fcQStyleHintReturn_new2(fromVal.h), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleHintReturn,
    version: cint): gen_qstyleoption_types.QStyleHintReturn =
  let tmp = gen_qstyleoption_types.QStyleHintReturn(h: fcQStyleHintReturn_new3(version), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleHintReturn,
    version: cint, typeVal: cint): gen_qstyleoption_types.QStyleHintReturn =
  let tmp = gen_qstyleoption_types.QStyleHintReturn(h: fcQStyleHintReturn_new4(version, typeVal), owned: true)
  tmp
proc region*(self: gen_qstyleoption_types.QStyleHintReturnMask): gen_qregion_types.QRegion =
  gen_qregion_types.QRegion(h: fcQStyleHintReturnMask_region(self.h), owned: true)

proc setRegion*(self: gen_qstyleoption_types.QStyleHintReturnMask, region: gen_qregion_types.QRegion): void =
  fcQStyleHintReturnMask_setRegion(self.h, region.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleHintReturnMask, fromVal: gen_qstyleoption_types.QStyleHintReturnMask): void =
  fcQStyleHintReturnMask_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturnMask): gen_qstyleoption_types.QStyleHintReturnMask =
  let tmp = gen_qstyleoption_types.QStyleHintReturnMask(h: fcQStyleHintReturnMask_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleHintReturnMask,
    fromVal: gen_qstyleoption_types.QStyleHintReturnMask): gen_qstyleoption_types.QStyleHintReturnMask =
  let tmp = gen_qstyleoption_types.QStyleHintReturnMask(h: fcQStyleHintReturnMask_new2(fromVal.h), owned: true)
  tmp
proc variant*(self: gen_qstyleoption_types.QStyleHintReturnVariant): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQStyleHintReturnVariant_variant(self.h), owned: true)

proc setVariant*(self: gen_qstyleoption_types.QStyleHintReturnVariant, variant: gen_qvariant_types.QVariant): void =
  fcQStyleHintReturnVariant_setVariant(self.h, variant.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleHintReturnVariant, fromVal: gen_qstyleoption_types.QStyleHintReturnVariant): void =
  fcQStyleHintReturnVariant_operatorAssign(self.h, fromVal.h)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturnVariant): gen_qstyleoption_types.QStyleHintReturnVariant =
  let tmp = gen_qstyleoption_types.QStyleHintReturnVariant(h: fcQStyleHintReturnVariant_new(), owned: true)
  tmp
proc create*(T: type gen_qstyleoption_types.QStyleHintReturnVariant,
    fromVal: gen_qstyleoption_types.QStyleHintReturnVariant): gen_qstyleoption_types.QStyleHintReturnVariant =
  let tmp = gen_qstyleoption_types.QStyleHintReturnVariant(h: fcQStyleHintReturnVariant_new2(fromVal.h), owned: true)
  tmp
