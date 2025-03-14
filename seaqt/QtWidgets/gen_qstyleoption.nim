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
  ../QtGui/gen_qtransform_types,
  ./gen_qwidget_types
export
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

proc fcQStyleOption_initFrom(self: pointer, w: pointer): void {.importc: "QStyleOption_initFrom".}
proc fcQStyleOption_operatorAssign(self: pointer, other: pointer): void {.importc: "QStyleOption_operatorAssign".}
proc fcQStyleOption_new(): ptr cQStyleOption {.importc: "QStyleOption_new".}
proc fcQStyleOption_new2(other: pointer): ptr cQStyleOption {.importc: "QStyleOption_new2".}
proc fcQStyleOption_new3(version: cint): ptr cQStyleOption {.importc: "QStyleOption_new3".}
proc fcQStyleOption_new4(version: cint, typeVal: cint): ptr cQStyleOption {.importc: "QStyleOption_new4".}
proc fcQStyleOptionFocusRect_new(): ptr cQStyleOptionFocusRect {.importc: "QStyleOptionFocusRect_new".}
proc fcQStyleOptionFocusRect_new2(other: pointer): ptr cQStyleOptionFocusRect {.importc: "QStyleOptionFocusRect_new2".}
proc fcQStyleOptionFrame_new(): ptr cQStyleOptionFrame {.importc: "QStyleOptionFrame_new".}
proc fcQStyleOptionFrame_new2(other: pointer): ptr cQStyleOptionFrame {.importc: "QStyleOptionFrame_new2".}
proc fcQStyleOptionTabWidgetFrame_new(): ptr cQStyleOptionTabWidgetFrame {.importc: "QStyleOptionTabWidgetFrame_new".}
proc fcQStyleOptionTabWidgetFrame_new2(other: pointer): ptr cQStyleOptionTabWidgetFrame {.importc: "QStyleOptionTabWidgetFrame_new2".}
proc fcQStyleOptionTabBarBase_new(): ptr cQStyleOptionTabBarBase {.importc: "QStyleOptionTabBarBase_new".}
proc fcQStyleOptionTabBarBase_new2(other: pointer): ptr cQStyleOptionTabBarBase {.importc: "QStyleOptionTabBarBase_new2".}
proc fcQStyleOptionHeader_new(): ptr cQStyleOptionHeader {.importc: "QStyleOptionHeader_new".}
proc fcQStyleOptionHeader_new2(other: pointer): ptr cQStyleOptionHeader {.importc: "QStyleOptionHeader_new2".}
proc fcQStyleOptionHeaderV2_new(): ptr cQStyleOptionHeaderV2 {.importc: "QStyleOptionHeaderV2_new".}
proc fcQStyleOptionHeaderV2_new2(other: pointer): ptr cQStyleOptionHeaderV2 {.importc: "QStyleOptionHeaderV2_new2".}
proc fcQStyleOptionButton_new(): ptr cQStyleOptionButton {.importc: "QStyleOptionButton_new".}
proc fcQStyleOptionButton_new2(other: pointer): ptr cQStyleOptionButton {.importc: "QStyleOptionButton_new2".}
proc fcQStyleOptionTab_new(): ptr cQStyleOptionTab {.importc: "QStyleOptionTab_new".}
proc fcQStyleOptionTab_new2(other: pointer): ptr cQStyleOptionTab {.importc: "QStyleOptionTab_new2".}
proc fcQStyleOptionToolBar_new(): ptr cQStyleOptionToolBar {.importc: "QStyleOptionToolBar_new".}
proc fcQStyleOptionToolBar_new2(other: pointer): ptr cQStyleOptionToolBar {.importc: "QStyleOptionToolBar_new2".}
proc fcQStyleOptionProgressBar_new(): ptr cQStyleOptionProgressBar {.importc: "QStyleOptionProgressBar_new".}
proc fcQStyleOptionProgressBar_new2(other: pointer): ptr cQStyleOptionProgressBar {.importc: "QStyleOptionProgressBar_new2".}
proc fcQStyleOptionMenuItem_new(): ptr cQStyleOptionMenuItem {.importc: "QStyleOptionMenuItem_new".}
proc fcQStyleOptionMenuItem_new2(other: pointer): ptr cQStyleOptionMenuItem {.importc: "QStyleOptionMenuItem_new2".}
proc fcQStyleOptionDockWidget_new(): ptr cQStyleOptionDockWidget {.importc: "QStyleOptionDockWidget_new".}
proc fcQStyleOptionDockWidget_new2(other: pointer): ptr cQStyleOptionDockWidget {.importc: "QStyleOptionDockWidget_new2".}
proc fcQStyleOptionViewItem_new(): ptr cQStyleOptionViewItem {.importc: "QStyleOptionViewItem_new".}
proc fcQStyleOptionViewItem_new2(other: pointer): ptr cQStyleOptionViewItem {.importc: "QStyleOptionViewItem_new2".}
proc fcQStyleOptionToolBox_new(): ptr cQStyleOptionToolBox {.importc: "QStyleOptionToolBox_new".}
proc fcQStyleOptionToolBox_new2(other: pointer): ptr cQStyleOptionToolBox {.importc: "QStyleOptionToolBox_new2".}
proc fcQStyleOptionRubberBand_new(): ptr cQStyleOptionRubberBand {.importc: "QStyleOptionRubberBand_new".}
proc fcQStyleOptionRubberBand_new2(other: pointer): ptr cQStyleOptionRubberBand {.importc: "QStyleOptionRubberBand_new2".}
proc fcQStyleOptionComplex_new(): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new".}
proc fcQStyleOptionComplex_new2(other: pointer): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new2".}
proc fcQStyleOptionComplex_new3(version: cint): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new3".}
proc fcQStyleOptionComplex_new4(version: cint, typeVal: cint): ptr cQStyleOptionComplex {.importc: "QStyleOptionComplex_new4".}
proc fcQStyleOptionSlider_new(): ptr cQStyleOptionSlider {.importc: "QStyleOptionSlider_new".}
proc fcQStyleOptionSlider_new2(other: pointer): ptr cQStyleOptionSlider {.importc: "QStyleOptionSlider_new2".}
proc fcQStyleOptionSpinBox_new(): ptr cQStyleOptionSpinBox {.importc: "QStyleOptionSpinBox_new".}
proc fcQStyleOptionSpinBox_new2(other: pointer): ptr cQStyleOptionSpinBox {.importc: "QStyleOptionSpinBox_new2".}
proc fcQStyleOptionToolButton_new(): ptr cQStyleOptionToolButton {.importc: "QStyleOptionToolButton_new".}
proc fcQStyleOptionToolButton_new2(other: pointer): ptr cQStyleOptionToolButton {.importc: "QStyleOptionToolButton_new2".}
proc fcQStyleOptionComboBox_new(): ptr cQStyleOptionComboBox {.importc: "QStyleOptionComboBox_new".}
proc fcQStyleOptionComboBox_new2(other: pointer): ptr cQStyleOptionComboBox {.importc: "QStyleOptionComboBox_new2".}
proc fcQStyleOptionTitleBar_new(): ptr cQStyleOptionTitleBar {.importc: "QStyleOptionTitleBar_new".}
proc fcQStyleOptionTitleBar_new2(other: pointer): ptr cQStyleOptionTitleBar {.importc: "QStyleOptionTitleBar_new2".}
proc fcQStyleOptionGroupBox_new(): ptr cQStyleOptionGroupBox {.importc: "QStyleOptionGroupBox_new".}
proc fcQStyleOptionGroupBox_new2(other: pointer): ptr cQStyleOptionGroupBox {.importc: "QStyleOptionGroupBox_new2".}
proc fcQStyleOptionSizeGrip_new(): ptr cQStyleOptionSizeGrip {.importc: "QStyleOptionSizeGrip_new".}
proc fcQStyleOptionSizeGrip_new2(other: pointer): ptr cQStyleOptionSizeGrip {.importc: "QStyleOptionSizeGrip_new2".}
proc fcQStyleOptionGraphicsItem_levelOfDetailFromTransform(worldTransform: pointer): float64 {.importc: "QStyleOptionGraphicsItem_levelOfDetailFromTransform".}
proc fcQStyleOptionGraphicsItem_new(): ptr cQStyleOptionGraphicsItem {.importc: "QStyleOptionGraphicsItem_new".}
proc fcQStyleOptionGraphicsItem_new2(other: pointer): ptr cQStyleOptionGraphicsItem {.importc: "QStyleOptionGraphicsItem_new2".}
proc fcQStyleHintReturn_operatorAssign(self: pointer, param1: pointer): void {.importc: "QStyleHintReturn_operatorAssign".}
proc fcQStyleHintReturn_new(): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new".}
proc fcQStyleHintReturn_new2(param1: pointer): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new2".}
proc fcQStyleHintReturn_new3(version: cint): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new3".}
proc fcQStyleHintReturn_new4(version: cint, typeVal: cint): ptr cQStyleHintReturn {.importc: "QStyleHintReturn_new4".}
proc fcQStyleHintReturnMask_operatorAssign(self: pointer, param1: pointer): void {.importc: "QStyleHintReturnMask_operatorAssign".}
proc fcQStyleHintReturnMask_new(): ptr cQStyleHintReturnMask {.importc: "QStyleHintReturnMask_new".}
proc fcQStyleHintReturnMask_new2(param1: pointer): ptr cQStyleHintReturnMask {.importc: "QStyleHintReturnMask_new2".}
proc fcQStyleHintReturnVariant_operatorAssign(self: pointer, param1: pointer): void {.importc: "QStyleHintReturnVariant_operatorAssign".}
proc fcQStyleHintReturnVariant_new(): ptr cQStyleHintReturnVariant {.importc: "QStyleHintReturnVariant_new".}
proc fcQStyleHintReturnVariant_new2(param1: pointer): ptr cQStyleHintReturnVariant {.importc: "QStyleHintReturnVariant_new2".}

proc initFrom*(self: gen_qstyleoption_types.QStyleOption, w: gen_qwidget_types.QWidget): void =
  fcQStyleOption_initFrom(self.h, w.h)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleOption, other: gen_qstyleoption_types.QStyleOption): void =
  fcQStyleOption_operatorAssign(self.h, other.h)

proc create*(T: type gen_qstyleoption_types.QStyleOption): gen_qstyleoption_types.QStyleOption =
  gen_qstyleoption_types.QStyleOption(h: fcQStyleOption_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOption,
    other: gen_qstyleoption_types.QStyleOption): gen_qstyleoption_types.QStyleOption =
  gen_qstyleoption_types.QStyleOption(h: fcQStyleOption_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOption,
    version: cint): gen_qstyleoption_types.QStyleOption =
  gen_qstyleoption_types.QStyleOption(h: fcQStyleOption_new3(version), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOption,
    version: cint, typeVal: cint): gen_qstyleoption_types.QStyleOption =
  gen_qstyleoption_types.QStyleOption(h: fcQStyleOption_new4(version, typeVal), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionFocusRect): gen_qstyleoption_types.QStyleOptionFocusRect =
  gen_qstyleoption_types.QStyleOptionFocusRect(h: fcQStyleOptionFocusRect_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionFocusRect,
    other: gen_qstyleoption_types.QStyleOptionFocusRect): gen_qstyleoption_types.QStyleOptionFocusRect =
  gen_qstyleoption_types.QStyleOptionFocusRect(h: fcQStyleOptionFocusRect_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionFrame): gen_qstyleoption_types.QStyleOptionFrame =
  gen_qstyleoption_types.QStyleOptionFrame(h: fcQStyleOptionFrame_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionFrame,
    other: gen_qstyleoption_types.QStyleOptionFrame): gen_qstyleoption_types.QStyleOptionFrame =
  gen_qstyleoption_types.QStyleOptionFrame(h: fcQStyleOptionFrame_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qstyleoption_types.QStyleOptionTabWidgetFrame =
  gen_qstyleoption_types.QStyleOptionTabWidgetFrame(h: fcQStyleOptionTabWidgetFrame_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTabWidgetFrame,
    other: gen_qstyleoption_types.QStyleOptionTabWidgetFrame): gen_qstyleoption_types.QStyleOptionTabWidgetFrame =
  gen_qstyleoption_types.QStyleOptionTabWidgetFrame(h: fcQStyleOptionTabWidgetFrame_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTabBarBase): gen_qstyleoption_types.QStyleOptionTabBarBase =
  gen_qstyleoption_types.QStyleOptionTabBarBase(h: fcQStyleOptionTabBarBase_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTabBarBase,
    other: gen_qstyleoption_types.QStyleOptionTabBarBase): gen_qstyleoption_types.QStyleOptionTabBarBase =
  gen_qstyleoption_types.QStyleOptionTabBarBase(h: fcQStyleOptionTabBarBase_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionHeader): gen_qstyleoption_types.QStyleOptionHeader =
  gen_qstyleoption_types.QStyleOptionHeader(h: fcQStyleOptionHeader_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionHeader,
    other: gen_qstyleoption_types.QStyleOptionHeader): gen_qstyleoption_types.QStyleOptionHeader =
  gen_qstyleoption_types.QStyleOptionHeader(h: fcQStyleOptionHeader_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionHeaderV2): gen_qstyleoption_types.QStyleOptionHeaderV2 =
  gen_qstyleoption_types.QStyleOptionHeaderV2(h: fcQStyleOptionHeaderV2_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionHeaderV2,
    other: gen_qstyleoption_types.QStyleOptionHeaderV2): gen_qstyleoption_types.QStyleOptionHeaderV2 =
  gen_qstyleoption_types.QStyleOptionHeaderV2(h: fcQStyleOptionHeaderV2_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionButton): gen_qstyleoption_types.QStyleOptionButton =
  gen_qstyleoption_types.QStyleOptionButton(h: fcQStyleOptionButton_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionButton,
    other: gen_qstyleoption_types.QStyleOptionButton): gen_qstyleoption_types.QStyleOptionButton =
  gen_qstyleoption_types.QStyleOptionButton(h: fcQStyleOptionButton_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTab): gen_qstyleoption_types.QStyleOptionTab =
  gen_qstyleoption_types.QStyleOptionTab(h: fcQStyleOptionTab_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTab,
    other: gen_qstyleoption_types.QStyleOptionTab): gen_qstyleoption_types.QStyleOptionTab =
  gen_qstyleoption_types.QStyleOptionTab(h: fcQStyleOptionTab_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolBar): gen_qstyleoption_types.QStyleOptionToolBar =
  gen_qstyleoption_types.QStyleOptionToolBar(h: fcQStyleOptionToolBar_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolBar,
    other: gen_qstyleoption_types.QStyleOptionToolBar): gen_qstyleoption_types.QStyleOptionToolBar =
  gen_qstyleoption_types.QStyleOptionToolBar(h: fcQStyleOptionToolBar_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionProgressBar): gen_qstyleoption_types.QStyleOptionProgressBar =
  gen_qstyleoption_types.QStyleOptionProgressBar(h: fcQStyleOptionProgressBar_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionProgressBar,
    other: gen_qstyleoption_types.QStyleOptionProgressBar): gen_qstyleoption_types.QStyleOptionProgressBar =
  gen_qstyleoption_types.QStyleOptionProgressBar(h: fcQStyleOptionProgressBar_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionMenuItem): gen_qstyleoption_types.QStyleOptionMenuItem =
  gen_qstyleoption_types.QStyleOptionMenuItem(h: fcQStyleOptionMenuItem_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionMenuItem,
    other: gen_qstyleoption_types.QStyleOptionMenuItem): gen_qstyleoption_types.QStyleOptionMenuItem =
  gen_qstyleoption_types.QStyleOptionMenuItem(h: fcQStyleOptionMenuItem_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionDockWidget): gen_qstyleoption_types.QStyleOptionDockWidget =
  gen_qstyleoption_types.QStyleOptionDockWidget(h: fcQStyleOptionDockWidget_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionDockWidget,
    other: gen_qstyleoption_types.QStyleOptionDockWidget): gen_qstyleoption_types.QStyleOptionDockWidget =
  gen_qstyleoption_types.QStyleOptionDockWidget(h: fcQStyleOptionDockWidget_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionViewItem): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQStyleOptionViewItem_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionViewItem,
    other: gen_qstyleoption_types.QStyleOptionViewItem): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQStyleOptionViewItem_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolBox): gen_qstyleoption_types.QStyleOptionToolBox =
  gen_qstyleoption_types.QStyleOptionToolBox(h: fcQStyleOptionToolBox_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolBox,
    other: gen_qstyleoption_types.QStyleOptionToolBox): gen_qstyleoption_types.QStyleOptionToolBox =
  gen_qstyleoption_types.QStyleOptionToolBox(h: fcQStyleOptionToolBox_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionRubberBand): gen_qstyleoption_types.QStyleOptionRubberBand =
  gen_qstyleoption_types.QStyleOptionRubberBand(h: fcQStyleOptionRubberBand_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionRubberBand,
    other: gen_qstyleoption_types.QStyleOptionRubberBand): gen_qstyleoption_types.QStyleOptionRubberBand =
  gen_qstyleoption_types.QStyleOptionRubberBand(h: fcQStyleOptionRubberBand_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionComplex): gen_qstyleoption_types.QStyleOptionComplex =
  gen_qstyleoption_types.QStyleOptionComplex(h: fcQStyleOptionComplex_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionComplex,
    other: gen_qstyleoption_types.QStyleOptionComplex): gen_qstyleoption_types.QStyleOptionComplex =
  gen_qstyleoption_types.QStyleOptionComplex(h: fcQStyleOptionComplex_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionComplex,
    version: cint): gen_qstyleoption_types.QStyleOptionComplex =
  gen_qstyleoption_types.QStyleOptionComplex(h: fcQStyleOptionComplex_new3(version), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionComplex,
    version: cint, typeVal: cint): gen_qstyleoption_types.QStyleOptionComplex =
  gen_qstyleoption_types.QStyleOptionComplex(h: fcQStyleOptionComplex_new4(version, typeVal), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSlider): gen_qstyleoption_types.QStyleOptionSlider =
  gen_qstyleoption_types.QStyleOptionSlider(h: fcQStyleOptionSlider_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSlider,
    other: gen_qstyleoption_types.QStyleOptionSlider): gen_qstyleoption_types.QStyleOptionSlider =
  gen_qstyleoption_types.QStyleOptionSlider(h: fcQStyleOptionSlider_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSpinBox): gen_qstyleoption_types.QStyleOptionSpinBox =
  gen_qstyleoption_types.QStyleOptionSpinBox(h: fcQStyleOptionSpinBox_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSpinBox,
    other: gen_qstyleoption_types.QStyleOptionSpinBox): gen_qstyleoption_types.QStyleOptionSpinBox =
  gen_qstyleoption_types.QStyleOptionSpinBox(h: fcQStyleOptionSpinBox_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolButton): gen_qstyleoption_types.QStyleOptionToolButton =
  gen_qstyleoption_types.QStyleOptionToolButton(h: fcQStyleOptionToolButton_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionToolButton,
    other: gen_qstyleoption_types.QStyleOptionToolButton): gen_qstyleoption_types.QStyleOptionToolButton =
  gen_qstyleoption_types.QStyleOptionToolButton(h: fcQStyleOptionToolButton_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionComboBox): gen_qstyleoption_types.QStyleOptionComboBox =
  gen_qstyleoption_types.QStyleOptionComboBox(h: fcQStyleOptionComboBox_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionComboBox,
    other: gen_qstyleoption_types.QStyleOptionComboBox): gen_qstyleoption_types.QStyleOptionComboBox =
  gen_qstyleoption_types.QStyleOptionComboBox(h: fcQStyleOptionComboBox_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTitleBar): gen_qstyleoption_types.QStyleOptionTitleBar =
  gen_qstyleoption_types.QStyleOptionTitleBar(h: fcQStyleOptionTitleBar_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionTitleBar,
    other: gen_qstyleoption_types.QStyleOptionTitleBar): gen_qstyleoption_types.QStyleOptionTitleBar =
  gen_qstyleoption_types.QStyleOptionTitleBar(h: fcQStyleOptionTitleBar_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionGroupBox): gen_qstyleoption_types.QStyleOptionGroupBox =
  gen_qstyleoption_types.QStyleOptionGroupBox(h: fcQStyleOptionGroupBox_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionGroupBox,
    other: gen_qstyleoption_types.QStyleOptionGroupBox): gen_qstyleoption_types.QStyleOptionGroupBox =
  gen_qstyleoption_types.QStyleOptionGroupBox(h: fcQStyleOptionGroupBox_new2(other.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSizeGrip): gen_qstyleoption_types.QStyleOptionSizeGrip =
  gen_qstyleoption_types.QStyleOptionSizeGrip(h: fcQStyleOptionSizeGrip_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionSizeGrip,
    other: gen_qstyleoption_types.QStyleOptionSizeGrip): gen_qstyleoption_types.QStyleOptionSizeGrip =
  gen_qstyleoption_types.QStyleOptionSizeGrip(h: fcQStyleOptionSizeGrip_new2(other.h), owned: true)

proc levelOfDetailFromTransform*(_: type gen_qstyleoption_types.QStyleOptionGraphicsItem, worldTransform: gen_qtransform_types.QTransform): float64 =
  fcQStyleOptionGraphicsItem_levelOfDetailFromTransform(worldTransform.h)

proc create*(T: type gen_qstyleoption_types.QStyleOptionGraphicsItem): gen_qstyleoption_types.QStyleOptionGraphicsItem =
  gen_qstyleoption_types.QStyleOptionGraphicsItem(h: fcQStyleOptionGraphicsItem_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleOptionGraphicsItem,
    other: gen_qstyleoption_types.QStyleOptionGraphicsItem): gen_qstyleoption_types.QStyleOptionGraphicsItem =
  gen_qstyleoption_types.QStyleOptionGraphicsItem(h: fcQStyleOptionGraphicsItem_new2(other.h), owned: true)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleHintReturn, param1: gen_qstyleoption_types.QStyleHintReturn): void =
  fcQStyleHintReturn_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturn): gen_qstyleoption_types.QStyleHintReturn =
  gen_qstyleoption_types.QStyleHintReturn(h: fcQStyleHintReturn_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturn,
    param1: gen_qstyleoption_types.QStyleHintReturn): gen_qstyleoption_types.QStyleHintReturn =
  gen_qstyleoption_types.QStyleHintReturn(h: fcQStyleHintReturn_new2(param1.h), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturn,
    version: cint): gen_qstyleoption_types.QStyleHintReturn =
  gen_qstyleoption_types.QStyleHintReturn(h: fcQStyleHintReturn_new3(version), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturn,
    version: cint, typeVal: cint): gen_qstyleoption_types.QStyleHintReturn =
  gen_qstyleoption_types.QStyleHintReturn(h: fcQStyleHintReturn_new4(version, typeVal), owned: true)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleHintReturnMask, param1: gen_qstyleoption_types.QStyleHintReturnMask): void =
  fcQStyleHintReturnMask_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturnMask): gen_qstyleoption_types.QStyleHintReturnMask =
  gen_qstyleoption_types.QStyleHintReturnMask(h: fcQStyleHintReturnMask_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturnMask,
    param1: gen_qstyleoption_types.QStyleHintReturnMask): gen_qstyleoption_types.QStyleHintReturnMask =
  gen_qstyleoption_types.QStyleHintReturnMask(h: fcQStyleHintReturnMask_new2(param1.h), owned: true)

proc operatorAssign*(self: gen_qstyleoption_types.QStyleHintReturnVariant, param1: gen_qstyleoption_types.QStyleHintReturnVariant): void =
  fcQStyleHintReturnVariant_operatorAssign(self.h, param1.h)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturnVariant): gen_qstyleoption_types.QStyleHintReturnVariant =
  gen_qstyleoption_types.QStyleHintReturnVariant(h: fcQStyleHintReturnVariant_new(), owned: true)

proc create*(T: type gen_qstyleoption_types.QStyleHintReturnVariant,
    param1: gen_qstyleoption_types.QStyleHintReturnVariant): gen_qstyleoption_types.QStyleHintReturnVariant =
  gen_qstyleoption_types.QStyleHintReturnVariant(h: fcQStyleHintReturnVariant_new2(param1.h), owned: true)

