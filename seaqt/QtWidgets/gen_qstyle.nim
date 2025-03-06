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
{.compile("gen_qstyle.cpp", cflags).}


type QStyleStateFlagEnum* = distinct cint
template State_None*(_: type QStyleStateFlagEnum): untyped = 0
template State_Enabled*(_: type QStyleStateFlagEnum): untyped = 1
template State_Raised*(_: type QStyleStateFlagEnum): untyped = 2
template State_Sunken*(_: type QStyleStateFlagEnum): untyped = 4
template State_Off*(_: type QStyleStateFlagEnum): untyped = 8
template State_NoChange*(_: type QStyleStateFlagEnum): untyped = 16
template State_On*(_: type QStyleStateFlagEnum): untyped = 32
template State_DownArrow*(_: type QStyleStateFlagEnum): untyped = 64
template State_Horizontal*(_: type QStyleStateFlagEnum): untyped = 128
template State_HasFocus*(_: type QStyleStateFlagEnum): untyped = 256
template State_Top*(_: type QStyleStateFlagEnum): untyped = 512
template State_Bottom*(_: type QStyleStateFlagEnum): untyped = 1024
template State_FocusAtBorder*(_: type QStyleStateFlagEnum): untyped = 2048
template State_AutoRaise*(_: type QStyleStateFlagEnum): untyped = 4096
template State_MouseOver*(_: type QStyleStateFlagEnum): untyped = 8192
template State_UpArrow*(_: type QStyleStateFlagEnum): untyped = 16384
template State_Selected*(_: type QStyleStateFlagEnum): untyped = 32768
template State_Active*(_: type QStyleStateFlagEnum): untyped = 65536
template State_Window*(_: type QStyleStateFlagEnum): untyped = 131072
template State_Open*(_: type QStyleStateFlagEnum): untyped = 262144
template State_Children*(_: type QStyleStateFlagEnum): untyped = 524288
template State_Item*(_: type QStyleStateFlagEnum): untyped = 1048576
template State_Sibling*(_: type QStyleStateFlagEnum): untyped = 2097152
template State_Editing*(_: type QStyleStateFlagEnum): untyped = 4194304
template State_KeyboardFocusChange*(_: type QStyleStateFlagEnum): untyped = 8388608
template State_ReadOnly*(_: type QStyleStateFlagEnum): untyped = 33554432
template State_Small*(_: type QStyleStateFlagEnum): untyped = 67108864
template State_Mini*(_: type QStyleStateFlagEnum): untyped = 134217728


type QStylePrimitiveElementEnum* = distinct cint
template PE_Frame*(_: type QStylePrimitiveElementEnum): untyped = 0
template PE_FrameDefaultButton*(_: type QStylePrimitiveElementEnum): untyped = 1
template PE_FrameDockWidget*(_: type QStylePrimitiveElementEnum): untyped = 2
template PE_FrameFocusRect*(_: type QStylePrimitiveElementEnum): untyped = 3
template PE_FrameGroupBox*(_: type QStylePrimitiveElementEnum): untyped = 4
template PE_FrameLineEdit*(_: type QStylePrimitiveElementEnum): untyped = 5
template PE_FrameMenu*(_: type QStylePrimitiveElementEnum): untyped = 6
template PE_FrameStatusBarItem*(_: type QStylePrimitiveElementEnum): untyped = 7
template PE_FrameStatusBar*(_: type QStylePrimitiveElementEnum): untyped = 7
template PE_FrameTabWidget*(_: type QStylePrimitiveElementEnum): untyped = 8
template PE_FrameWindow*(_: type QStylePrimitiveElementEnum): untyped = 9
template PE_FrameButtonBevel*(_: type QStylePrimitiveElementEnum): untyped = 10
template PE_FrameButtonTool*(_: type QStylePrimitiveElementEnum): untyped = 11
template PE_FrameTabBarBase*(_: type QStylePrimitiveElementEnum): untyped = 12
template PE_PanelButtonCommand*(_: type QStylePrimitiveElementEnum): untyped = 13
template PE_PanelButtonBevel*(_: type QStylePrimitiveElementEnum): untyped = 14
template PE_PanelButtonTool*(_: type QStylePrimitiveElementEnum): untyped = 15
template PE_PanelMenuBar*(_: type QStylePrimitiveElementEnum): untyped = 16
template PE_PanelToolBar*(_: type QStylePrimitiveElementEnum): untyped = 17
template PE_PanelLineEdit*(_: type QStylePrimitiveElementEnum): untyped = 18
template PE_IndicatorArrowDown*(_: type QStylePrimitiveElementEnum): untyped = 19
template PE_IndicatorArrowLeft*(_: type QStylePrimitiveElementEnum): untyped = 20
template PE_IndicatorArrowRight*(_: type QStylePrimitiveElementEnum): untyped = 21
template PE_IndicatorArrowUp*(_: type QStylePrimitiveElementEnum): untyped = 22
template PE_IndicatorBranch*(_: type QStylePrimitiveElementEnum): untyped = 23
template PE_IndicatorButtonDropDown*(_: type QStylePrimitiveElementEnum): untyped = 24
template PE_IndicatorItemViewItemCheck*(_: type QStylePrimitiveElementEnum): untyped = 25
template PE_IndicatorViewItemCheck*(_: type QStylePrimitiveElementEnum): untyped = 25
template PE_IndicatorCheckBox*(_: type QStylePrimitiveElementEnum): untyped = 26
template PE_IndicatorDockWidgetResizeHandle*(_: type QStylePrimitiveElementEnum): untyped = 27
template PE_IndicatorHeaderArrow*(_: type QStylePrimitiveElementEnum): untyped = 28
template PE_IndicatorMenuCheckMark*(_: type QStylePrimitiveElementEnum): untyped = 29
template PE_IndicatorProgressChunk*(_: type QStylePrimitiveElementEnum): untyped = 30
template PE_IndicatorRadioButton*(_: type QStylePrimitiveElementEnum): untyped = 31
template PE_IndicatorSpinDown*(_: type QStylePrimitiveElementEnum): untyped = 32
template PE_IndicatorSpinMinus*(_: type QStylePrimitiveElementEnum): untyped = 33
template PE_IndicatorSpinPlus*(_: type QStylePrimitiveElementEnum): untyped = 34
template PE_IndicatorSpinUp*(_: type QStylePrimitiveElementEnum): untyped = 35
template PE_IndicatorToolBarHandle*(_: type QStylePrimitiveElementEnum): untyped = 36
template PE_IndicatorToolBarSeparator*(_: type QStylePrimitiveElementEnum): untyped = 37
template PE_PanelTipLabel*(_: type QStylePrimitiveElementEnum): untyped = 38
template PE_IndicatorTabTear*(_: type QStylePrimitiveElementEnum): untyped = 39
template PE_IndicatorTabTearLeft*(_: type QStylePrimitiveElementEnum): untyped = 39
template PE_PanelScrollAreaCorner*(_: type QStylePrimitiveElementEnum): untyped = 40
template PE_Widget*(_: type QStylePrimitiveElementEnum): untyped = 41
template PE_IndicatorColumnViewArrow*(_: type QStylePrimitiveElementEnum): untyped = 42
template PE_IndicatorItemViewItemDrop*(_: type QStylePrimitiveElementEnum): untyped = 43
template PE_PanelItemViewItem*(_: type QStylePrimitiveElementEnum): untyped = 44
template PE_PanelItemViewRow*(_: type QStylePrimitiveElementEnum): untyped = 45
template PE_PanelStatusBar*(_: type QStylePrimitiveElementEnum): untyped = 46
template PE_IndicatorTabClose*(_: type QStylePrimitiveElementEnum): untyped = 47
template PE_PanelMenu*(_: type QStylePrimitiveElementEnum): untyped = 48
template PE_IndicatorTabTearRight*(_: type QStylePrimitiveElementEnum): untyped = 49
template PE_CustomBase*(_: type QStylePrimitiveElementEnum): untyped = 251658240


type QStyleControlElementEnum* = distinct cint
template CE_PushButton*(_: type QStyleControlElementEnum): untyped = 0
template CE_PushButtonBevel*(_: type QStyleControlElementEnum): untyped = 1
template CE_PushButtonLabel*(_: type QStyleControlElementEnum): untyped = 2
template CE_CheckBox*(_: type QStyleControlElementEnum): untyped = 3
template CE_CheckBoxLabel*(_: type QStyleControlElementEnum): untyped = 4
template CE_RadioButton*(_: type QStyleControlElementEnum): untyped = 5
template CE_RadioButtonLabel*(_: type QStyleControlElementEnum): untyped = 6
template CE_TabBarTab*(_: type QStyleControlElementEnum): untyped = 7
template CE_TabBarTabShape*(_: type QStyleControlElementEnum): untyped = 8
template CE_TabBarTabLabel*(_: type QStyleControlElementEnum): untyped = 9
template CE_ProgressBar*(_: type QStyleControlElementEnum): untyped = 10
template CE_ProgressBarGroove*(_: type QStyleControlElementEnum): untyped = 11
template CE_ProgressBarContents*(_: type QStyleControlElementEnum): untyped = 12
template CE_ProgressBarLabel*(_: type QStyleControlElementEnum): untyped = 13
template CE_MenuItem*(_: type QStyleControlElementEnum): untyped = 14
template CE_MenuScroller*(_: type QStyleControlElementEnum): untyped = 15
template CE_MenuVMargin*(_: type QStyleControlElementEnum): untyped = 16
template CE_MenuHMargin*(_: type QStyleControlElementEnum): untyped = 17
template CE_MenuTearoff*(_: type QStyleControlElementEnum): untyped = 18
template CE_MenuEmptyArea*(_: type QStyleControlElementEnum): untyped = 19
template CE_MenuBarItem*(_: type QStyleControlElementEnum): untyped = 20
template CE_MenuBarEmptyArea*(_: type QStyleControlElementEnum): untyped = 21
template CE_ToolButtonLabel*(_: type QStyleControlElementEnum): untyped = 22
template CE_Header*(_: type QStyleControlElementEnum): untyped = 23
template CE_HeaderSection*(_: type QStyleControlElementEnum): untyped = 24
template CE_HeaderLabel*(_: type QStyleControlElementEnum): untyped = 25
template CE_ToolBoxTab*(_: type QStyleControlElementEnum): untyped = 26
template CE_SizeGrip*(_: type QStyleControlElementEnum): untyped = 27
template CE_Splitter*(_: type QStyleControlElementEnum): untyped = 28
template CE_RubberBand*(_: type QStyleControlElementEnum): untyped = 29
template CE_DockWidgetTitle*(_: type QStyleControlElementEnum): untyped = 30
template CE_ScrollBarAddLine*(_: type QStyleControlElementEnum): untyped = 31
template CE_ScrollBarSubLine*(_: type QStyleControlElementEnum): untyped = 32
template CE_ScrollBarAddPage*(_: type QStyleControlElementEnum): untyped = 33
template CE_ScrollBarSubPage*(_: type QStyleControlElementEnum): untyped = 34
template CE_ScrollBarSlider*(_: type QStyleControlElementEnum): untyped = 35
template CE_ScrollBarFirst*(_: type QStyleControlElementEnum): untyped = 36
template CE_ScrollBarLast*(_: type QStyleControlElementEnum): untyped = 37
template CE_FocusFrame*(_: type QStyleControlElementEnum): untyped = 38
template CE_ComboBoxLabel*(_: type QStyleControlElementEnum): untyped = 39
template CE_ToolBar*(_: type QStyleControlElementEnum): untyped = 40
template CE_ToolBoxTabShape*(_: type QStyleControlElementEnum): untyped = 41
template CE_ToolBoxTabLabel*(_: type QStyleControlElementEnum): untyped = 42
template CE_HeaderEmptyArea*(_: type QStyleControlElementEnum): untyped = 43
template CE_ColumnViewGrip*(_: type QStyleControlElementEnum): untyped = 44
template CE_ItemViewItem*(_: type QStyleControlElementEnum): untyped = 45
template CE_ShapedFrame*(_: type QStyleControlElementEnum): untyped = 46
template CE_CustomBase*(_: type QStyleControlElementEnum): untyped = 4026531840


type QStyleSubElementEnum* = distinct cint
template SE_PushButtonContents*(_: type QStyleSubElementEnum): untyped = 0
template SE_PushButtonFocusRect*(_: type QStyleSubElementEnum): untyped = 1
template SE_CheckBoxIndicator*(_: type QStyleSubElementEnum): untyped = 2
template SE_CheckBoxContents*(_: type QStyleSubElementEnum): untyped = 3
template SE_CheckBoxFocusRect*(_: type QStyleSubElementEnum): untyped = 4
template SE_CheckBoxClickRect*(_: type QStyleSubElementEnum): untyped = 5
template SE_RadioButtonIndicator*(_: type QStyleSubElementEnum): untyped = 6
template SE_RadioButtonContents*(_: type QStyleSubElementEnum): untyped = 7
template SE_RadioButtonFocusRect*(_: type QStyleSubElementEnum): untyped = 8
template SE_RadioButtonClickRect*(_: type QStyleSubElementEnum): untyped = 9
template SE_ComboBoxFocusRect*(_: type QStyleSubElementEnum): untyped = 10
template SE_SliderFocusRect*(_: type QStyleSubElementEnum): untyped = 11
template SE_ProgressBarGroove*(_: type QStyleSubElementEnum): untyped = 12
template SE_ProgressBarContents*(_: type QStyleSubElementEnum): untyped = 13
template SE_ProgressBarLabel*(_: type QStyleSubElementEnum): untyped = 14
template SE_ToolBoxTabContents*(_: type QStyleSubElementEnum): untyped = 15
template SE_HeaderLabel*(_: type QStyleSubElementEnum): untyped = 16
template SE_HeaderArrow*(_: type QStyleSubElementEnum): untyped = 17
template SE_TabWidgetTabBar*(_: type QStyleSubElementEnum): untyped = 18
template SE_TabWidgetTabPane*(_: type QStyleSubElementEnum): untyped = 19
template SE_TabWidgetTabContents*(_: type QStyleSubElementEnum): untyped = 20
template SE_TabWidgetLeftCorner*(_: type QStyleSubElementEnum): untyped = 21
template SE_TabWidgetRightCorner*(_: type QStyleSubElementEnum): untyped = 22
template SE_ItemViewItemCheckIndicator*(_: type QStyleSubElementEnum): untyped = 23
template SE_ViewItemCheckIndicator*(_: type QStyleSubElementEnum): untyped = 23
template SE_TabBarTearIndicator*(_: type QStyleSubElementEnum): untyped = 24
template SE_TabBarTearIndicatorLeft*(_: type QStyleSubElementEnum): untyped = 24
template SE_TreeViewDisclosureItem*(_: type QStyleSubElementEnum): untyped = 25
template SE_LineEditContents*(_: type QStyleSubElementEnum): untyped = 26
template SE_FrameContents*(_: type QStyleSubElementEnum): untyped = 27
template SE_DockWidgetCloseButton*(_: type QStyleSubElementEnum): untyped = 28
template SE_DockWidgetFloatButton*(_: type QStyleSubElementEnum): untyped = 29
template SE_DockWidgetTitleBarText*(_: type QStyleSubElementEnum): untyped = 30
template SE_DockWidgetIcon*(_: type QStyleSubElementEnum): untyped = 31
template SE_CheckBoxLayoutItem*(_: type QStyleSubElementEnum): untyped = 32
template SE_ComboBoxLayoutItem*(_: type QStyleSubElementEnum): untyped = 33
template SE_DateTimeEditLayoutItem*(_: type QStyleSubElementEnum): untyped = 34
template SE_DialogButtonBoxLayoutItem*(_: type QStyleSubElementEnum): untyped = 35
template SE_LabelLayoutItem*(_: type QStyleSubElementEnum): untyped = 36
template SE_ProgressBarLayoutItem*(_: type QStyleSubElementEnum): untyped = 37
template SE_PushButtonLayoutItem*(_: type QStyleSubElementEnum): untyped = 38
template SE_RadioButtonLayoutItem*(_: type QStyleSubElementEnum): untyped = 39
template SE_SliderLayoutItem*(_: type QStyleSubElementEnum): untyped = 40
template SE_SpinBoxLayoutItem*(_: type QStyleSubElementEnum): untyped = 41
template SE_ToolButtonLayoutItem*(_: type QStyleSubElementEnum): untyped = 42
template SE_FrameLayoutItem*(_: type QStyleSubElementEnum): untyped = 43
template SE_GroupBoxLayoutItem*(_: type QStyleSubElementEnum): untyped = 44
template SE_TabWidgetLayoutItem*(_: type QStyleSubElementEnum): untyped = 45
template SE_ItemViewItemDecoration*(_: type QStyleSubElementEnum): untyped = 46
template SE_ItemViewItemText*(_: type QStyleSubElementEnum): untyped = 47
template SE_ItemViewItemFocusRect*(_: type QStyleSubElementEnum): untyped = 48
template SE_TabBarTabLeftButton*(_: type QStyleSubElementEnum): untyped = 49
template SE_TabBarTabRightButton*(_: type QStyleSubElementEnum): untyped = 50
template SE_TabBarTabText*(_: type QStyleSubElementEnum): untyped = 51
template SE_ShapedFrameContents*(_: type QStyleSubElementEnum): untyped = 52
template SE_ToolBarHandle*(_: type QStyleSubElementEnum): untyped = 53
template SE_TabBarScrollLeftButton*(_: type QStyleSubElementEnum): untyped = 54
template SE_TabBarScrollRightButton*(_: type QStyleSubElementEnum): untyped = 55
template SE_TabBarTearIndicatorRight*(_: type QStyleSubElementEnum): untyped = 56
template SE_PushButtonBevel*(_: type QStyleSubElementEnum): untyped = 57
template SE_CustomBase*(_: type QStyleSubElementEnum): untyped = 4026531840


type QStyleComplexControlEnum* = distinct cint
template CC_SpinBox*(_: type QStyleComplexControlEnum): untyped = 0
template CC_ComboBox*(_: type QStyleComplexControlEnum): untyped = 1
template CC_ScrollBar*(_: type QStyleComplexControlEnum): untyped = 2
template CC_Slider*(_: type QStyleComplexControlEnum): untyped = 3
template CC_ToolButton*(_: type QStyleComplexControlEnum): untyped = 4
template CC_TitleBar*(_: type QStyleComplexControlEnum): untyped = 5
template CC_Dial*(_: type QStyleComplexControlEnum): untyped = 6
template CC_GroupBox*(_: type QStyleComplexControlEnum): untyped = 7
template CC_MdiControls*(_: type QStyleComplexControlEnum): untyped = 8
template CC_CustomBase*(_: type QStyleComplexControlEnum): untyped = 4026531840


type QStyleSubControlEnum* = distinct cint
template SC_None*(_: type QStyleSubControlEnum): untyped = 0
template SC_ScrollBarAddLine*(_: type QStyleSubControlEnum): untyped = 1
template SC_ScrollBarSubLine*(_: type QStyleSubControlEnum): untyped = 2
template SC_ScrollBarAddPage*(_: type QStyleSubControlEnum): untyped = 4
template SC_ScrollBarSubPage*(_: type QStyleSubControlEnum): untyped = 8
template SC_ScrollBarFirst*(_: type QStyleSubControlEnum): untyped = 16
template SC_ScrollBarLast*(_: type QStyleSubControlEnum): untyped = 32
template SC_ScrollBarSlider*(_: type QStyleSubControlEnum): untyped = 64
template SC_ScrollBarGroove*(_: type QStyleSubControlEnum): untyped = 128
template SC_SpinBoxUp*(_: type QStyleSubControlEnum): untyped = 1
template SC_SpinBoxDown*(_: type QStyleSubControlEnum): untyped = 2
template SC_SpinBoxFrame*(_: type QStyleSubControlEnum): untyped = 4
template SC_SpinBoxEditField*(_: type QStyleSubControlEnum): untyped = 8
template SC_ComboBoxFrame*(_: type QStyleSubControlEnum): untyped = 1
template SC_ComboBoxEditField*(_: type QStyleSubControlEnum): untyped = 2
template SC_ComboBoxArrow*(_: type QStyleSubControlEnum): untyped = 4
template SC_ComboBoxListBoxPopup*(_: type QStyleSubControlEnum): untyped = 8
template SC_SliderGroove*(_: type QStyleSubControlEnum): untyped = 1
template SC_SliderHandle*(_: type QStyleSubControlEnum): untyped = 2
template SC_SliderTickmarks*(_: type QStyleSubControlEnum): untyped = 4
template SC_ToolButton*(_: type QStyleSubControlEnum): untyped = 1
template SC_ToolButtonMenu*(_: type QStyleSubControlEnum): untyped = 2
template SC_TitleBarSysMenu*(_: type QStyleSubControlEnum): untyped = 1
template SC_TitleBarMinButton*(_: type QStyleSubControlEnum): untyped = 2
template SC_TitleBarMaxButton*(_: type QStyleSubControlEnum): untyped = 4
template SC_TitleBarCloseButton*(_: type QStyleSubControlEnum): untyped = 8
template SC_TitleBarNormalButton*(_: type QStyleSubControlEnum): untyped = 16
template SC_TitleBarShadeButton*(_: type QStyleSubControlEnum): untyped = 32
template SC_TitleBarUnshadeButton*(_: type QStyleSubControlEnum): untyped = 64
template SC_TitleBarContextHelpButton*(_: type QStyleSubControlEnum): untyped = 128
template SC_TitleBarLabel*(_: type QStyleSubControlEnum): untyped = 256
template SC_DialGroove*(_: type QStyleSubControlEnum): untyped = 1
template SC_DialHandle*(_: type QStyleSubControlEnum): untyped = 2
template SC_DialTickmarks*(_: type QStyleSubControlEnum): untyped = 4
template SC_GroupBoxCheckBox*(_: type QStyleSubControlEnum): untyped = 1
template SC_GroupBoxLabel*(_: type QStyleSubControlEnum): untyped = 2
template SC_GroupBoxContents*(_: type QStyleSubControlEnum): untyped = 4
template SC_GroupBoxFrame*(_: type QStyleSubControlEnum): untyped = 8
template SC_MdiMinButton*(_: type QStyleSubControlEnum): untyped = 1
template SC_MdiNormalButton*(_: type QStyleSubControlEnum): untyped = 2
template SC_MdiCloseButton*(_: type QStyleSubControlEnum): untyped = 4
template SC_CustomBase*(_: type QStyleSubControlEnum): untyped = 4026531840
template SC_All*(_: type QStyleSubControlEnum): untyped = 4294967295


type QStylePixelMetricEnum* = distinct cint
template PM_ButtonMargin*(_: type QStylePixelMetricEnum): untyped = 0
template PM_ButtonDefaultIndicator*(_: type QStylePixelMetricEnum): untyped = 1
template PM_MenuButtonIndicator*(_: type QStylePixelMetricEnum): untyped = 2
template PM_ButtonShiftHorizontal*(_: type QStylePixelMetricEnum): untyped = 3
template PM_ButtonShiftVertical*(_: type QStylePixelMetricEnum): untyped = 4
template PM_DefaultFrameWidth*(_: type QStylePixelMetricEnum): untyped = 5
template PM_SpinBoxFrameWidth*(_: type QStylePixelMetricEnum): untyped = 6
template PM_ComboBoxFrameWidth*(_: type QStylePixelMetricEnum): untyped = 7
template PM_MaximumDragDistance*(_: type QStylePixelMetricEnum): untyped = 8
template PM_ScrollBarExtent*(_: type QStylePixelMetricEnum): untyped = 9
template PM_ScrollBarSliderMin*(_: type QStylePixelMetricEnum): untyped = 10
template PM_SliderThickness*(_: type QStylePixelMetricEnum): untyped = 11
template PM_SliderControlThickness*(_: type QStylePixelMetricEnum): untyped = 12
template PM_SliderLength*(_: type QStylePixelMetricEnum): untyped = 13
template PM_SliderTickmarkOffset*(_: type QStylePixelMetricEnum): untyped = 14
template PM_SliderSpaceAvailable*(_: type QStylePixelMetricEnum): untyped = 15
template PM_DockWidgetSeparatorExtent*(_: type QStylePixelMetricEnum): untyped = 16
template PM_DockWidgetHandleExtent*(_: type QStylePixelMetricEnum): untyped = 17
template PM_DockWidgetFrameWidth*(_: type QStylePixelMetricEnum): untyped = 18
template PM_TabBarTabOverlap*(_: type QStylePixelMetricEnum): untyped = 19
template PM_TabBarTabHSpace*(_: type QStylePixelMetricEnum): untyped = 20
template PM_TabBarTabVSpace*(_: type QStylePixelMetricEnum): untyped = 21
template PM_TabBarBaseHeight*(_: type QStylePixelMetricEnum): untyped = 22
template PM_TabBarBaseOverlap*(_: type QStylePixelMetricEnum): untyped = 23
template PM_ProgressBarChunkWidth*(_: type QStylePixelMetricEnum): untyped = 24
template PM_SplitterWidth*(_: type QStylePixelMetricEnum): untyped = 25
template PM_TitleBarHeight*(_: type QStylePixelMetricEnum): untyped = 26
template PM_MenuScrollerHeight*(_: type QStylePixelMetricEnum): untyped = 27
template PM_MenuHMargin*(_: type QStylePixelMetricEnum): untyped = 28
template PM_MenuVMargin*(_: type QStylePixelMetricEnum): untyped = 29
template PM_MenuPanelWidth*(_: type QStylePixelMetricEnum): untyped = 30
template PM_MenuTearoffHeight*(_: type QStylePixelMetricEnum): untyped = 31
template PM_MenuDesktopFrameWidth*(_: type QStylePixelMetricEnum): untyped = 32
template PM_MenuBarPanelWidth*(_: type QStylePixelMetricEnum): untyped = 33
template PM_MenuBarItemSpacing*(_: type QStylePixelMetricEnum): untyped = 34
template PM_MenuBarVMargin*(_: type QStylePixelMetricEnum): untyped = 35
template PM_MenuBarHMargin*(_: type QStylePixelMetricEnum): untyped = 36
template PM_IndicatorWidth*(_: type QStylePixelMetricEnum): untyped = 37
template PM_IndicatorHeight*(_: type QStylePixelMetricEnum): untyped = 38
template PM_ExclusiveIndicatorWidth*(_: type QStylePixelMetricEnum): untyped = 39
template PM_ExclusiveIndicatorHeight*(_: type QStylePixelMetricEnum): untyped = 40
template PM_DialogButtonsSeparator*(_: type QStylePixelMetricEnum): untyped = 41
template PM_DialogButtonsButtonWidth*(_: type QStylePixelMetricEnum): untyped = 42
template PM_DialogButtonsButtonHeight*(_: type QStylePixelMetricEnum): untyped = 43
template PM_MdiSubWindowFrameWidth*(_: type QStylePixelMetricEnum): untyped = 44
template PM_MdiSubWindowMinimizedWidth*(_: type QStylePixelMetricEnum): untyped = 45
template PM_MDIFrameWidth*(_: type QStylePixelMetricEnum): untyped = 44
template PM_MDIMinimizedWidth*(_: type QStylePixelMetricEnum): untyped = 45
template PM_HeaderMargin*(_: type QStylePixelMetricEnum): untyped = 46
template PM_HeaderMarkSize*(_: type QStylePixelMetricEnum): untyped = 47
template PM_HeaderGripMargin*(_: type QStylePixelMetricEnum): untyped = 48
template PM_TabBarTabShiftHorizontal*(_: type QStylePixelMetricEnum): untyped = 49
template PM_TabBarTabShiftVertical*(_: type QStylePixelMetricEnum): untyped = 50
template PM_TabBarScrollButtonWidth*(_: type QStylePixelMetricEnum): untyped = 51
template PM_ToolBarFrameWidth*(_: type QStylePixelMetricEnum): untyped = 52
template PM_ToolBarHandleExtent*(_: type QStylePixelMetricEnum): untyped = 53
template PM_ToolBarItemSpacing*(_: type QStylePixelMetricEnum): untyped = 54
template PM_ToolBarItemMargin*(_: type QStylePixelMetricEnum): untyped = 55
template PM_ToolBarSeparatorExtent*(_: type QStylePixelMetricEnum): untyped = 56
template PM_ToolBarExtensionExtent*(_: type QStylePixelMetricEnum): untyped = 57
template PM_SpinBoxSliderHeight*(_: type QStylePixelMetricEnum): untyped = 58
template PM_DefaultTopLevelMargin*(_: type QStylePixelMetricEnum): untyped = 59
template PM_DefaultChildMargin*(_: type QStylePixelMetricEnum): untyped = 60
template PM_DefaultLayoutSpacing*(_: type QStylePixelMetricEnum): untyped = 61
template PM_ToolBarIconSize*(_: type QStylePixelMetricEnum): untyped = 62
template PM_ListViewIconSize*(_: type QStylePixelMetricEnum): untyped = 63
template PM_IconViewIconSize*(_: type QStylePixelMetricEnum): untyped = 64
template PM_SmallIconSize*(_: type QStylePixelMetricEnum): untyped = 65
template PM_LargeIconSize*(_: type QStylePixelMetricEnum): untyped = 66
template PM_FocusFrameVMargin*(_: type QStylePixelMetricEnum): untyped = 67
template PM_FocusFrameHMargin*(_: type QStylePixelMetricEnum): untyped = 68
template PM_ToolTipLabelFrameWidth*(_: type QStylePixelMetricEnum): untyped = 69
template PM_CheckBoxLabelSpacing*(_: type QStylePixelMetricEnum): untyped = 70
template PM_TabBarIconSize*(_: type QStylePixelMetricEnum): untyped = 71
template PM_SizeGripSize*(_: type QStylePixelMetricEnum): untyped = 72
template PM_DockWidgetTitleMargin*(_: type QStylePixelMetricEnum): untyped = 73
template PM_MessageBoxIconSize*(_: type QStylePixelMetricEnum): untyped = 74
template PM_ButtonIconSize*(_: type QStylePixelMetricEnum): untyped = 75
template PM_DockWidgetTitleBarButtonMargin*(_: type QStylePixelMetricEnum): untyped = 76
template PM_RadioButtonLabelSpacing*(_: type QStylePixelMetricEnum): untyped = 77
template PM_LayoutLeftMargin*(_: type QStylePixelMetricEnum): untyped = 78
template PM_LayoutTopMargin*(_: type QStylePixelMetricEnum): untyped = 79
template PM_LayoutRightMargin*(_: type QStylePixelMetricEnum): untyped = 80
template PM_LayoutBottomMargin*(_: type QStylePixelMetricEnum): untyped = 81
template PM_LayoutHorizontalSpacing*(_: type QStylePixelMetricEnum): untyped = 82
template PM_LayoutVerticalSpacing*(_: type QStylePixelMetricEnum): untyped = 83
template PM_TabBar_ScrollButtonOverlap*(_: type QStylePixelMetricEnum): untyped = 84
template PM_TextCursorWidth*(_: type QStylePixelMetricEnum): untyped = 85
template PM_TabCloseIndicatorWidth*(_: type QStylePixelMetricEnum): untyped = 86
template PM_TabCloseIndicatorHeight*(_: type QStylePixelMetricEnum): untyped = 87
template PM_ScrollView_ScrollBarSpacing*(_: type QStylePixelMetricEnum): untyped = 88
template PM_ScrollView_ScrollBarOverlap*(_: type QStylePixelMetricEnum): untyped = 89
template PM_SubMenuOverlap*(_: type QStylePixelMetricEnum): untyped = 90
template PM_TreeViewIndentation*(_: type QStylePixelMetricEnum): untyped = 91
template PM_HeaderDefaultSectionSizeHorizontal*(_: type QStylePixelMetricEnum): untyped = 92
template PM_HeaderDefaultSectionSizeVertical*(_: type QStylePixelMetricEnum): untyped = 93
template PM_TitleBarButtonIconSize*(_: type QStylePixelMetricEnum): untyped = 94
template PM_TitleBarButtonSize*(_: type QStylePixelMetricEnum): untyped = 95
template PM_CustomBase*(_: type QStylePixelMetricEnum): untyped = 4026531840


type QStyleContentsTypeEnum* = distinct cint
template CT_PushButton*(_: type QStyleContentsTypeEnum): untyped = 0
template CT_CheckBox*(_: type QStyleContentsTypeEnum): untyped = 1
template CT_RadioButton*(_: type QStyleContentsTypeEnum): untyped = 2
template CT_ToolButton*(_: type QStyleContentsTypeEnum): untyped = 3
template CT_ComboBox*(_: type QStyleContentsTypeEnum): untyped = 4
template CT_Splitter*(_: type QStyleContentsTypeEnum): untyped = 5
template CT_ProgressBar*(_: type QStyleContentsTypeEnum): untyped = 6
template CT_MenuItem*(_: type QStyleContentsTypeEnum): untyped = 7
template CT_MenuBarItem*(_: type QStyleContentsTypeEnum): untyped = 8
template CT_MenuBar*(_: type QStyleContentsTypeEnum): untyped = 9
template CT_Menu*(_: type QStyleContentsTypeEnum): untyped = 10
template CT_TabBarTab*(_: type QStyleContentsTypeEnum): untyped = 11
template CT_Slider*(_: type QStyleContentsTypeEnum): untyped = 12
template CT_ScrollBar*(_: type QStyleContentsTypeEnum): untyped = 13
template CT_LineEdit*(_: type QStyleContentsTypeEnum): untyped = 14
template CT_SpinBox*(_: type QStyleContentsTypeEnum): untyped = 15
template CT_SizeGrip*(_: type QStyleContentsTypeEnum): untyped = 16
template CT_TabWidget*(_: type QStyleContentsTypeEnum): untyped = 17
template CT_DialogButtons*(_: type QStyleContentsTypeEnum): untyped = 18
template CT_HeaderSection*(_: type QStyleContentsTypeEnum): untyped = 19
template CT_GroupBox*(_: type QStyleContentsTypeEnum): untyped = 20
template CT_MdiControls*(_: type QStyleContentsTypeEnum): untyped = 21
template CT_ItemViewItem*(_: type QStyleContentsTypeEnum): untyped = 22
template CT_CustomBase*(_: type QStyleContentsTypeEnum): untyped = 4026531840


type QStyleRequestSoftwareInputPanelEnum* = distinct cint
template RSIP_OnMouseClickAndAlreadyFocused*(_: type QStyleRequestSoftwareInputPanelEnum): untyped = 0
template RSIP_OnMouseClick*(_: type QStyleRequestSoftwareInputPanelEnum): untyped = 1


type QStyleStyleHintEnum* = distinct cint
template SH_EtchDisabledText*(_: type QStyleStyleHintEnum): untyped = 0
template SH_DitherDisabledText*(_: type QStyleStyleHintEnum): untyped = 1
template SH_ScrollBar_MiddleClickAbsolutePosition*(_: type QStyleStyleHintEnum): untyped = 2
template SH_ScrollBar_ScrollWhenPointerLeavesControl*(_: type QStyleStyleHintEnum): untyped = 3
template SH_TabBar_SelectMouseType*(_: type QStyleStyleHintEnum): untyped = 4
template SH_TabBar_Alignment*(_: type QStyleStyleHintEnum): untyped = 5
template SH_Header_ArrowAlignment*(_: type QStyleStyleHintEnum): untyped = 6
template SH_Slider_SnapToValue*(_: type QStyleStyleHintEnum): untyped = 7
template SH_Slider_SloppyKeyEvents*(_: type QStyleStyleHintEnum): untyped = 8
template SH_ProgressDialog_CenterCancelButton*(_: type QStyleStyleHintEnum): untyped = 9
template SH_ProgressDialog_TextLabelAlignment*(_: type QStyleStyleHintEnum): untyped = 10
template SH_PrintDialog_RightAlignButtons*(_: type QStyleStyleHintEnum): untyped = 11
template SH_MainWindow_SpaceBelowMenuBar*(_: type QStyleStyleHintEnum): untyped = 12
template SH_FontDialog_SelectAssociatedText*(_: type QStyleStyleHintEnum): untyped = 13
template SH_Menu_AllowActiveAndDisabled*(_: type QStyleStyleHintEnum): untyped = 14
template SH_Menu_SpaceActivatesItem*(_: type QStyleStyleHintEnum): untyped = 15
template SH_Menu_SubMenuPopupDelay*(_: type QStyleStyleHintEnum): untyped = 16
template SH_ScrollView_FrameOnlyAroundContents*(_: type QStyleStyleHintEnum): untyped = 17
template SH_MenuBar_AltKeyNavigation*(_: type QStyleStyleHintEnum): untyped = 18
template SH_ComboBox_ListMouseTracking*(_: type QStyleStyleHintEnum): untyped = 19
template SH_Menu_MouseTracking*(_: type QStyleStyleHintEnum): untyped = 20
template SH_MenuBar_MouseTracking*(_: type QStyleStyleHintEnum): untyped = 21
template SH_ItemView_ChangeHighlightOnFocus*(_: type QStyleStyleHintEnum): untyped = 22
template SH_Widget_ShareActivation*(_: type QStyleStyleHintEnum): untyped = 23
template SH_Workspace_FillSpaceOnMaximize*(_: type QStyleStyleHintEnum): untyped = 24
template SH_ComboBox_Popup*(_: type QStyleStyleHintEnum): untyped = 25
template SH_TitleBar_NoBorder*(_: type QStyleStyleHintEnum): untyped = 26
template SH_Slider_StopMouseOverSlider*(_: type QStyleStyleHintEnum): untyped = 27
template SH_ScrollBar_StopMouseOverSlider*(_: type QStyleStyleHintEnum): untyped = 27
template SH_BlinkCursorWhenTextSelected*(_: type QStyleStyleHintEnum): untyped = 28
template SH_RichText_FullWidthSelection*(_: type QStyleStyleHintEnum): untyped = 29
template SH_Menu_Scrollable*(_: type QStyleStyleHintEnum): untyped = 30
template SH_GroupBox_TextLabelVerticalAlignment*(_: type QStyleStyleHintEnum): untyped = 31
template SH_GroupBox_TextLabelColor*(_: type QStyleStyleHintEnum): untyped = 32
template SH_Menu_SloppySubMenus*(_: type QStyleStyleHintEnum): untyped = 33
template SH_Table_GridLineColor*(_: type QStyleStyleHintEnum): untyped = 34
template SH_LineEdit_PasswordCharacter*(_: type QStyleStyleHintEnum): untyped = 35
template SH_DialogButtons_DefaultButton*(_: type QStyleStyleHintEnum): untyped = 36
template SH_ToolBox_SelectedPageTitleBold*(_: type QStyleStyleHintEnum): untyped = 37
template SH_TabBar_PreferNoArrows*(_: type QStyleStyleHintEnum): untyped = 38
template SH_ScrollBar_LeftClickAbsolutePosition*(_: type QStyleStyleHintEnum): untyped = 39
template SH_ListViewExpand_SelectMouseType*(_: type QStyleStyleHintEnum): untyped = 40
template SH_UnderlineShortcut*(_: type QStyleStyleHintEnum): untyped = 41
template SH_SpinBox_AnimateButton*(_: type QStyleStyleHintEnum): untyped = 42
template SH_SpinBox_KeyPressAutoRepeatRate*(_: type QStyleStyleHintEnum): untyped = 43
template SH_SpinBox_ClickAutoRepeatRate*(_: type QStyleStyleHintEnum): untyped = 44
template SH_Menu_FillScreenWithScroll*(_: type QStyleStyleHintEnum): untyped = 45
template SH_ToolTipLabel_Opacity*(_: type QStyleStyleHintEnum): untyped = 46
template SH_DrawMenuBarSeparator*(_: type QStyleStyleHintEnum): untyped = 47
template SH_TitleBar_ModifyNotification*(_: type QStyleStyleHintEnum): untyped = 48
template SH_Button_FocusPolicy*(_: type QStyleStyleHintEnum): untyped = 49
template SH_MessageBox_UseBorderForButtonSpacing*(_: type QStyleStyleHintEnum): untyped = 50
template SH_TitleBar_AutoRaise*(_: type QStyleStyleHintEnum): untyped = 51
template SH_ToolButton_PopupDelay*(_: type QStyleStyleHintEnum): untyped = 52
template SH_FocusFrame_Mask*(_: type QStyleStyleHintEnum): untyped = 53
template SH_RubberBand_Mask*(_: type QStyleStyleHintEnum): untyped = 54
template SH_WindowFrame_Mask*(_: type QStyleStyleHintEnum): untyped = 55
template SH_SpinControls_DisableOnBounds*(_: type QStyleStyleHintEnum): untyped = 56
template SH_Dial_BackgroundRole*(_: type QStyleStyleHintEnum): untyped = 57
template SH_ComboBox_LayoutDirection*(_: type QStyleStyleHintEnum): untyped = 58
template SH_ItemView_EllipsisLocation*(_: type QStyleStyleHintEnum): untyped = 59
template SH_ItemView_ShowDecorationSelected*(_: type QStyleStyleHintEnum): untyped = 60
template SH_ItemView_ActivateItemOnSingleClick*(_: type QStyleStyleHintEnum): untyped = 61
template SH_ScrollBar_ContextMenu*(_: type QStyleStyleHintEnum): untyped = 62
template SH_ScrollBar_RollBetweenButtons*(_: type QStyleStyleHintEnum): untyped = 63
template SH_Slider_AbsoluteSetButtons*(_: type QStyleStyleHintEnum): untyped = 64
template SH_Slider_PageSetButtons*(_: type QStyleStyleHintEnum): untyped = 65
template SH_Menu_KeyboardSearch*(_: type QStyleStyleHintEnum): untyped = 66
template SH_TabBar_ElideMode*(_: type QStyleStyleHintEnum): untyped = 67
template SH_DialogButtonLayout*(_: type QStyleStyleHintEnum): untyped = 68
template SH_ComboBox_PopupFrameStyle*(_: type QStyleStyleHintEnum): untyped = 69
template SH_MessageBox_TextInteractionFlags*(_: type QStyleStyleHintEnum): untyped = 70
template SH_DialogButtonBox_ButtonsHaveIcons*(_: type QStyleStyleHintEnum): untyped = 71
template SH_SpellCheckUnderlineStyle*(_: type QStyleStyleHintEnum): untyped = 72
template SH_MessageBox_CenterButtons*(_: type QStyleStyleHintEnum): untyped = 73
template SH_Menu_SelectionWrap*(_: type QStyleStyleHintEnum): untyped = 74
template SH_ItemView_MovementWithoutUpdatingSelection*(_: type QStyleStyleHintEnum): untyped = 75
template SH_ToolTip_Mask*(_: type QStyleStyleHintEnum): untyped = 76
template SH_FocusFrame_AboveWidget*(_: type QStyleStyleHintEnum): untyped = 77
template SH_TextControl_FocusIndicatorTextCharFormat*(_: type QStyleStyleHintEnum): untyped = 78
template SH_WizardStyle*(_: type QStyleStyleHintEnum): untyped = 79
template SH_ItemView_ArrowKeysNavigateIntoChildren*(_: type QStyleStyleHintEnum): untyped = 80
template SH_Menu_Mask*(_: type QStyleStyleHintEnum): untyped = 81
template SH_Menu_FlashTriggeredItem*(_: type QStyleStyleHintEnum): untyped = 82
template SH_Menu_FadeOutOnHide*(_: type QStyleStyleHintEnum): untyped = 83
template SH_SpinBox_ClickAutoRepeatThreshold*(_: type QStyleStyleHintEnum): untyped = 84
template SH_ItemView_PaintAlternatingRowColorsForEmptyArea*(_: type QStyleStyleHintEnum): untyped = 85
template SH_FormLayoutWrapPolicy*(_: type QStyleStyleHintEnum): untyped = 86
template SH_TabWidget_DefaultTabPosition*(_: type QStyleStyleHintEnum): untyped = 87
template SH_ToolBar_Movable*(_: type QStyleStyleHintEnum): untyped = 88
template SH_FormLayoutFieldGrowthPolicy*(_: type QStyleStyleHintEnum): untyped = 89
template SH_FormLayoutFormAlignment*(_: type QStyleStyleHintEnum): untyped = 90
template SH_FormLayoutLabelAlignment*(_: type QStyleStyleHintEnum): untyped = 91
template SH_ItemView_DrawDelegateFrame*(_: type QStyleStyleHintEnum): untyped = 92
template SH_TabBar_CloseButtonPosition*(_: type QStyleStyleHintEnum): untyped = 93
template SH_DockWidget_ButtonsHaveFrame*(_: type QStyleStyleHintEnum): untyped = 94
template SH_ToolButtonStyle*(_: type QStyleStyleHintEnum): untyped = 95
template SH_RequestSoftwareInputPanel*(_: type QStyleStyleHintEnum): untyped = 96
template SH_ScrollBar_Transient*(_: type QStyleStyleHintEnum): untyped = 97
template SH_Menu_SupportsSections*(_: type QStyleStyleHintEnum): untyped = 98
template SH_ToolTip_WakeUpDelay*(_: type QStyleStyleHintEnum): untyped = 99
template SH_ToolTip_FallAsleepDelay*(_: type QStyleStyleHintEnum): untyped = 100
template SH_Widget_Animate*(_: type QStyleStyleHintEnum): untyped = 101
template SH_Splitter_OpaqueResize*(_: type QStyleStyleHintEnum): untyped = 102
template SH_ComboBox_UseNativePopup*(_: type QStyleStyleHintEnum): untyped = 103
template SH_LineEdit_PasswordMaskDelay*(_: type QStyleStyleHintEnum): untyped = 104
template SH_TabBar_ChangeCurrentDelay*(_: type QStyleStyleHintEnum): untyped = 105
template SH_Menu_SubMenuUniDirection*(_: type QStyleStyleHintEnum): untyped = 106
template SH_Menu_SubMenuUniDirectionFailCount*(_: type QStyleStyleHintEnum): untyped = 107
template SH_Menu_SubMenuSloppySelectOtherActions*(_: type QStyleStyleHintEnum): untyped = 108
template SH_Menu_SubMenuSloppyCloseTimeout*(_: type QStyleStyleHintEnum): untyped = 109
template SH_Menu_SubMenuResetWhenReenteringParent*(_: type QStyleStyleHintEnum): untyped = 110
template SH_Menu_SubMenuDontStartSloppyOnLeave*(_: type QStyleStyleHintEnum): untyped = 111
template SH_ItemView_ScrollMode*(_: type QStyleStyleHintEnum): untyped = 112
template SH_TitleBar_ShowToolTipsOnButtons*(_: type QStyleStyleHintEnum): untyped = 113
template SH_Widget_Animation_Duration*(_: type QStyleStyleHintEnum): untyped = 114
template SH_ComboBox_AllowWheelScrolling*(_: type QStyleStyleHintEnum): untyped = 115
template SH_SpinBox_ButtonsInsideFrame*(_: type QStyleStyleHintEnum): untyped = 116
template SH_SpinBox_StepModifier*(_: type QStyleStyleHintEnum): untyped = 117
template SH_CustomBase*(_: type QStyleStyleHintEnum): untyped = 4026531840


type QStyleStandardPixmapEnum* = distinct cint
template SP_TitleBarMenuButton*(_: type QStyleStandardPixmapEnum): untyped = 0
template SP_TitleBarMinButton*(_: type QStyleStandardPixmapEnum): untyped = 1
template SP_TitleBarMaxButton*(_: type QStyleStandardPixmapEnum): untyped = 2
template SP_TitleBarCloseButton*(_: type QStyleStandardPixmapEnum): untyped = 3
template SP_TitleBarNormalButton*(_: type QStyleStandardPixmapEnum): untyped = 4
template SP_TitleBarShadeButton*(_: type QStyleStandardPixmapEnum): untyped = 5
template SP_TitleBarUnshadeButton*(_: type QStyleStandardPixmapEnum): untyped = 6
template SP_TitleBarContextHelpButton*(_: type QStyleStandardPixmapEnum): untyped = 7
template SP_DockWidgetCloseButton*(_: type QStyleStandardPixmapEnum): untyped = 8
template SP_MessageBoxInformation*(_: type QStyleStandardPixmapEnum): untyped = 9
template SP_MessageBoxWarning*(_: type QStyleStandardPixmapEnum): untyped = 10
template SP_MessageBoxCritical*(_: type QStyleStandardPixmapEnum): untyped = 11
template SP_MessageBoxQuestion*(_: type QStyleStandardPixmapEnum): untyped = 12
template SP_DesktopIcon*(_: type QStyleStandardPixmapEnum): untyped = 13
template SP_TrashIcon*(_: type QStyleStandardPixmapEnum): untyped = 14
template SP_ComputerIcon*(_: type QStyleStandardPixmapEnum): untyped = 15
template SP_DriveFDIcon*(_: type QStyleStandardPixmapEnum): untyped = 16
template SP_DriveHDIcon*(_: type QStyleStandardPixmapEnum): untyped = 17
template SP_DriveCDIcon*(_: type QStyleStandardPixmapEnum): untyped = 18
template SP_DriveDVDIcon*(_: type QStyleStandardPixmapEnum): untyped = 19
template SP_DriveNetIcon*(_: type QStyleStandardPixmapEnum): untyped = 20
template SP_DirOpenIcon*(_: type QStyleStandardPixmapEnum): untyped = 21
template SP_DirClosedIcon*(_: type QStyleStandardPixmapEnum): untyped = 22
template SP_DirLinkIcon*(_: type QStyleStandardPixmapEnum): untyped = 23
template SP_DirLinkOpenIcon*(_: type QStyleStandardPixmapEnum): untyped = 24
template SP_FileIcon*(_: type QStyleStandardPixmapEnum): untyped = 25
template SP_FileLinkIcon*(_: type QStyleStandardPixmapEnum): untyped = 26
template SP_ToolBarHorizontalExtensionButton*(_: type QStyleStandardPixmapEnum): untyped = 27
template SP_ToolBarVerticalExtensionButton*(_: type QStyleStandardPixmapEnum): untyped = 28
template SP_FileDialogStart*(_: type QStyleStandardPixmapEnum): untyped = 29
template SP_FileDialogEnd*(_: type QStyleStandardPixmapEnum): untyped = 30
template SP_FileDialogToParent*(_: type QStyleStandardPixmapEnum): untyped = 31
template SP_FileDialogNewFolder*(_: type QStyleStandardPixmapEnum): untyped = 32
template SP_FileDialogDetailedView*(_: type QStyleStandardPixmapEnum): untyped = 33
template SP_FileDialogInfoView*(_: type QStyleStandardPixmapEnum): untyped = 34
template SP_FileDialogContentsView*(_: type QStyleStandardPixmapEnum): untyped = 35
template SP_FileDialogListView*(_: type QStyleStandardPixmapEnum): untyped = 36
template SP_FileDialogBack*(_: type QStyleStandardPixmapEnum): untyped = 37
template SP_DirIcon*(_: type QStyleStandardPixmapEnum): untyped = 38
template SP_DialogOkButton*(_: type QStyleStandardPixmapEnum): untyped = 39
template SP_DialogCancelButton*(_: type QStyleStandardPixmapEnum): untyped = 40
template SP_DialogHelpButton*(_: type QStyleStandardPixmapEnum): untyped = 41
template SP_DialogOpenButton*(_: type QStyleStandardPixmapEnum): untyped = 42
template SP_DialogSaveButton*(_: type QStyleStandardPixmapEnum): untyped = 43
template SP_DialogCloseButton*(_: type QStyleStandardPixmapEnum): untyped = 44
template SP_DialogApplyButton*(_: type QStyleStandardPixmapEnum): untyped = 45
template SP_DialogResetButton*(_: type QStyleStandardPixmapEnum): untyped = 46
template SP_DialogDiscardButton*(_: type QStyleStandardPixmapEnum): untyped = 47
template SP_DialogYesButton*(_: type QStyleStandardPixmapEnum): untyped = 48
template SP_DialogNoButton*(_: type QStyleStandardPixmapEnum): untyped = 49
template SP_ArrowUp*(_: type QStyleStandardPixmapEnum): untyped = 50
template SP_ArrowDown*(_: type QStyleStandardPixmapEnum): untyped = 51
template SP_ArrowLeft*(_: type QStyleStandardPixmapEnum): untyped = 52
template SP_ArrowRight*(_: type QStyleStandardPixmapEnum): untyped = 53
template SP_ArrowBack*(_: type QStyleStandardPixmapEnum): untyped = 54
template SP_ArrowForward*(_: type QStyleStandardPixmapEnum): untyped = 55
template SP_DirHomeIcon*(_: type QStyleStandardPixmapEnum): untyped = 56
template SP_CommandLink*(_: type QStyleStandardPixmapEnum): untyped = 57
template SP_VistaShield*(_: type QStyleStandardPixmapEnum): untyped = 58
template SP_BrowserReload*(_: type QStyleStandardPixmapEnum): untyped = 59
template SP_BrowserStop*(_: type QStyleStandardPixmapEnum): untyped = 60
template SP_MediaPlay*(_: type QStyleStandardPixmapEnum): untyped = 61
template SP_MediaStop*(_: type QStyleStandardPixmapEnum): untyped = 62
template SP_MediaPause*(_: type QStyleStandardPixmapEnum): untyped = 63
template SP_MediaSkipForward*(_: type QStyleStandardPixmapEnum): untyped = 64
template SP_MediaSkipBackward*(_: type QStyleStandardPixmapEnum): untyped = 65
template SP_MediaSeekForward*(_: type QStyleStandardPixmapEnum): untyped = 66
template SP_MediaSeekBackward*(_: type QStyleStandardPixmapEnum): untyped = 67
template SP_MediaVolume*(_: type QStyleStandardPixmapEnum): untyped = 68
template SP_MediaVolumeMuted*(_: type QStyleStandardPixmapEnum): untyped = 69
template SP_LineEditClearButton*(_: type QStyleStandardPixmapEnum): untyped = 70
template SP_DialogYesToAllButton*(_: type QStyleStandardPixmapEnum): untyped = 71
template SP_DialogNoToAllButton*(_: type QStyleStandardPixmapEnum): untyped = 72
template SP_DialogSaveAllButton*(_: type QStyleStandardPixmapEnum): untyped = 73
template SP_DialogAbortButton*(_: type QStyleStandardPixmapEnum): untyped = 74
template SP_DialogRetryButton*(_: type QStyleStandardPixmapEnum): untyped = 75
template SP_DialogIgnoreButton*(_: type QStyleStandardPixmapEnum): untyped = 76
template SP_RestoreDefaultsButton*(_: type QStyleStandardPixmapEnum): untyped = 77
template SP_CustomBase*(_: type QStyleStandardPixmapEnum): untyped = 4026531840


import ./gen_qstyle_types
export gen_qstyle_types

import
  ../QtCore/gen_qcoreevent_types,
  ../QtCore/gen_qmetaobject_types,
  ../QtCore/gen_qobject,
  ../QtCore/gen_qobjectdefs_types,
  ../QtCore/gen_qpoint_types,
  ../QtCore/gen_qrect_types,
  ../QtCore/gen_qsize_types,
  ../QtGui/gen_qfontmetrics_types,
  ../QtGui/gen_qicon_types,
  ../QtGui/gen_qpainter_types,
  ../QtGui/gen_qpalette_types,
  ../QtGui/gen_qpixmap_types,
  ./gen_qapplication_types,
  ./gen_qstyleoption_types,
  ./gen_qwidget_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qsize_types,
  gen_qfontmetrics_types,
  gen_qicon_types,
  gen_qpainter_types,
  gen_qpalette_types,
  gen_qpixmap_types,
  gen_qapplication_types,
  gen_qstyleoption_types,
  gen_qwidget_types

type cQStyle*{.exportc: "QStyle", incompleteStruct.} = object

proc fcQStyle_metaObject(self: pointer, ): pointer {.importc: "QStyle_metaObject".}
proc fcQStyle_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyle_metacast".}
proc fcQStyle_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyle_metacall".}
proc fcQStyle_tr(s: cstring): struct_miqt_string {.importc: "QStyle_tr".}
proc fcQStyle_trUtf8(s: cstring): struct_miqt_string {.importc: "QStyle_trUtf8".}
proc fcQStyle_polish(self: pointer, widget: pointer): void {.importc: "QStyle_polish".}
proc fcQStyle_unpolish(self: pointer, widget: pointer): void {.importc: "QStyle_unpolish".}
proc fcQStyle_polishWithApplication(self: pointer, application: pointer): void {.importc: "QStyle_polishWithApplication".}
proc fcQStyle_unpolishWithApplication(self: pointer, application: pointer): void {.importc: "QStyle_unpolishWithApplication".}
proc fcQStyle_polishWithPalette(self: pointer, palette: pointer): void {.importc: "QStyle_polishWithPalette".}
proc fcQStyle_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.importc: "QStyle_itemTextRect".}
proc fcQStyle_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.importc: "QStyle_itemPixmapRect".}
proc fcQStyle_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.importc: "QStyle_drawItemText".}
proc fcQStyle_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.importc: "QStyle_drawItemPixmap".}
proc fcQStyle_standardPalette(self: pointer, ): pointer {.importc: "QStyle_standardPalette".}
proc fcQStyle_drawPrimitive(self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QStyle_drawPrimitive".}
proc fcQStyle_drawControl(self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.importc: "QStyle_drawControl".}
proc fcQStyle_subElementRect(self: pointer, subElement: cint, option: pointer, widget: pointer): pointer {.importc: "QStyle_subElementRect".}
proc fcQStyle_drawComplexControl(self: pointer, cc: cint, opt: pointer, p: pointer, widget: pointer): void {.importc: "QStyle_drawComplexControl".}
proc fcQStyle_hitTestComplexControl(self: pointer, cc: cint, opt: pointer, pt: pointer, widget: pointer): cint {.importc: "QStyle_hitTestComplexControl".}
proc fcQStyle_subControlRect(self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.importc: "QStyle_subControlRect".}
proc fcQStyle_pixelMetric(self: pointer, metric: cint, option: pointer, widget: pointer): cint {.importc: "QStyle_pixelMetric".}
proc fcQStyle_sizeFromContents(self: pointer, ct: cint, opt: pointer, contentsSize: pointer, w: pointer): pointer {.importc: "QStyle_sizeFromContents".}
proc fcQStyle_styleHint(self: pointer, stylehint: cint, opt: pointer, widget: pointer, returnData: pointer): cint {.importc: "QStyle_styleHint".}
proc fcQStyle_standardPixmap(self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.importc: "QStyle_standardPixmap".}
proc fcQStyle_standardIcon(self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.importc: "QStyle_standardIcon".}
proc fcQStyle_generatedIconPixmap(self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.importc: "QStyle_generatedIconPixmap".}
proc fcQStyle_visualRect(direction: cint, boundingRect: pointer, logicalRect: pointer): pointer {.importc: "QStyle_visualRect".}
proc fcQStyle_visualPos(direction: cint, boundingRect: pointer, logicalPos: pointer): pointer {.importc: "QStyle_visualPos".}
proc fcQStyle_sliderPositionFromValue(min: cint, max: cint, val: cint, space: cint): cint {.importc: "QStyle_sliderPositionFromValue".}
proc fcQStyle_sliderValueFromPosition(min: cint, max: cint, pos: cint, space: cint): cint {.importc: "QStyle_sliderValueFromPosition".}
proc fcQStyle_visualAlignment(direction: cint, alignment: cint): cint {.importc: "QStyle_visualAlignment".}
proc fcQStyle_alignedRect(direction: cint, alignment: cint, size: pointer, rectangle: pointer): pointer {.importc: "QStyle_alignedRect".}
proc fcQStyle_layoutSpacing(self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QStyle_layoutSpacing".}
proc fcQStyle_combinedLayoutSpacing(self: pointer, controls1: cint, controls2: cint, orientation: cint): cint {.importc: "QStyle_combinedLayoutSpacing".}
proc fcQStyle_proxy(self: pointer, ): pointer {.importc: "QStyle_proxy".}
proc fcQStyle_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyle_tr2".}
proc fcQStyle_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyle_tr3".}
proc fcQStyle_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyle_trUtf82".}
proc fcQStyle_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyle_trUtf83".}
proc fcQStyle_sliderPositionFromValue5(min: cint, max: cint, val: cint, space: cint, upsideDown: bool): cint {.importc: "QStyle_sliderPositionFromValue5".}
proc fcQStyle_sliderValueFromPosition5(min: cint, max: cint, pos: cint, space: cint, upsideDown: bool): cint {.importc: "QStyle_sliderValueFromPosition5".}
proc fcQStyle_combinedLayoutSpacing4(self: pointer, controls1: cint, controls2: cint, orientation: cint, option: pointer): cint {.importc: "QStyle_combinedLayoutSpacing4".}
proc fcQStyle_combinedLayoutSpacing5(self: pointer, controls1: cint, controls2: cint, orientation: cint, option: pointer, widget: pointer): cint {.importc: "QStyle_combinedLayoutSpacing5".}
type cQStyleVTable = object
  destructor*: proc(vtbl: ptr cQStyleVTable, self: ptr cQStyle) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  polish*: proc(vtbl, self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  unpolish*: proc(vtbl, self: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  polishWithApplication*: proc(vtbl, self: pointer, application: pointer): void {.cdecl, raises: [], gcsafe.}
  unpolishWithApplication*: proc(vtbl, self: pointer, application: pointer): void {.cdecl, raises: [], gcsafe.}
  polishWithPalette*: proc(vtbl, self: pointer, palette: pointer): void {.cdecl, raises: [], gcsafe.}
  itemTextRect*: proc(vtbl, self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl, raises: [], gcsafe.}
  itemPixmapRect*: proc(vtbl, self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl, raises: [], gcsafe.}
  drawItemText*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl, raises: [], gcsafe.}
  drawItemPixmap*: proc(vtbl, self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl, raises: [], gcsafe.}
  standardPalette*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  drawPrimitive*: proc(vtbl, self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl, raises: [], gcsafe.}
  drawControl*: proc(vtbl, self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl, raises: [], gcsafe.}
  subElementRect*: proc(vtbl, self: pointer, subElement: cint, option: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  drawComplexControl*: proc(vtbl, self: pointer, cc: cint, opt: pointer, p: pointer, widget: pointer): void {.cdecl, raises: [], gcsafe.}
  hitTestComplexControl*: proc(vtbl, self: pointer, cc: cint, opt: pointer, pt: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  subControlRect*: proc(vtbl, self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  pixelMetric*: proc(vtbl, self: pointer, metric: cint, option: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  sizeFromContents*: proc(vtbl, self: pointer, ct: cint, opt: pointer, contentsSize: pointer, w: pointer): pointer {.cdecl, raises: [], gcsafe.}
  styleHint*: proc(vtbl, self: pointer, stylehint: cint, opt: pointer, widget: pointer, returnData: pointer): cint {.cdecl, raises: [], gcsafe.}
  standardPixmap*: proc(vtbl, self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  standardIcon*: proc(vtbl, self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.cdecl, raises: [], gcsafe.}
  generatedIconPixmap*: proc(vtbl, self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl, raises: [], gcsafe.}
  layoutSpacing*: proc(vtbl, self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQStyle_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QStyle_virtualbase_metaObject".}
proc fcQStyle_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyle_virtualbase_metacast".}
proc fcQStyle_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyle_virtualbase_metacall".}
proc fcQStyle_virtualbase_polish(self: pointer, widget: pointer): void {.importc: "QStyle_virtualbase_polish".}
proc fcQStyle_virtualbase_unpolish(self: pointer, widget: pointer): void {.importc: "QStyle_virtualbase_unpolish".}
proc fcQStyle_virtualbase_polishWithApplication(self: pointer, application: pointer): void {.importc: "QStyle_virtualbase_polishWithApplication".}
proc fcQStyle_virtualbase_unpolishWithApplication(self: pointer, application: pointer): void {.importc: "QStyle_virtualbase_unpolishWithApplication".}
proc fcQStyle_virtualbase_polishWithPalette(self: pointer, palette: pointer): void {.importc: "QStyle_virtualbase_polishWithPalette".}
proc fcQStyle_virtualbase_itemTextRect(self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.importc: "QStyle_virtualbase_itemTextRect".}
proc fcQStyle_virtualbase_itemPixmapRect(self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.importc: "QStyle_virtualbase_itemPixmapRect".}
proc fcQStyle_virtualbase_drawItemText(self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.importc: "QStyle_virtualbase_drawItemText".}
proc fcQStyle_virtualbase_drawItemPixmap(self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.importc: "QStyle_virtualbase_drawItemPixmap".}
proc fcQStyle_virtualbase_standardPalette(self: pointer, ): pointer {.importc: "QStyle_virtualbase_standardPalette".}
proc fcQStyle_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QStyle_virtualbase_event".}
proc fcQStyle_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStyle_virtualbase_eventFilter".}
proc fcQStyle_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QStyle_virtualbase_timerEvent".}
proc fcQStyle_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QStyle_virtualbase_childEvent".}
proc fcQStyle_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QStyle_virtualbase_customEvent".}
proc fcQStyle_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QStyle_virtualbase_connectNotify".}
proc fcQStyle_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QStyle_virtualbase_disconnectNotify".}
proc fcQStyle_new(vtbl: pointer, ): ptr cQStyle {.importc: "QStyle_new".}
proc fcQStyle_staticMetaObject(): pointer {.importc: "QStyle_staticMetaObject".}
proc fcQStyle_delete(self: pointer) {.importc: "QStyle_delete".}

proc metaObject*(self: gen_qstyle_types.QStyle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyle_metaObject(self.h))

proc metacast*(self: gen_qstyle_types.QStyle, param1: cstring): pointer =
  fcQStyle_metacast(self.h, param1)

proc metacall*(self: gen_qstyle_types.QStyle, param1: cint, param2: cint, param3: pointer): cint =
  fcQStyle_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qstyle_types.QStyle, s: cstring): string =
  let v_ms = fcQStyle_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstyle_types.QStyle, s: cstring): string =
  let v_ms = fcQStyle_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc polish*(self: gen_qstyle_types.QStyle, widget: gen_qwidget_types.QWidget): void =
  fcQStyle_polish(self.h, widget.h)

proc unpolish*(self: gen_qstyle_types.QStyle, widget: gen_qwidget_types.QWidget): void =
  fcQStyle_unpolish(self.h, widget.h)

proc polish*(self: gen_qstyle_types.QStyle, application: gen_qapplication_types.QApplication): void =
  fcQStyle_polishWithApplication(self.h, application.h)

proc unpolish*(self: gen_qstyle_types.QStyle, application: gen_qapplication_types.QApplication): void =
  fcQStyle_unpolishWithApplication(self.h, application.h)

proc polish*(self: gen_qstyle_types.QStyle, palette: gen_qpalette_types.QPalette): void =
  fcQStyle_polishWithPalette(self.h, palette.h)

proc itemTextRect*(self: gen_qstyle_types.QStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyle_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc itemPixmapRect*(self: gen_qstyle_types.QStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyle_itemPixmapRect(self.h, r.h, flags, pixmap.h))

proc drawItemText*(self: gen_qstyle_types.QStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void =
  fcQStyle_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

proc drawItemPixmap*(self: gen_qstyle_types.QStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQStyle_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

proc standardPalette*(self: gen_qstyle_types.QStyle, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQStyle_standardPalette(self.h))

proc drawPrimitive*(self: gen_qstyle_types.QStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQStyle_drawPrimitive(self.h, cint(pe), opt.h, p.h, w.h)

proc drawControl*(self: gen_qstyle_types.QStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void =
  fcQStyle_drawControl(self.h, cint(element), opt.h, p.h, w.h)

proc subElementRect*(self: gen_qstyle_types.QStyle, subElement: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyle_subElementRect(self.h, cint(subElement), option.h, widget.h))

proc drawComplexControl*(self: gen_qstyle_types.QStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void =
  fcQStyle_drawComplexControl(self.h, cint(cc), opt.h, p.h, widget.h)

proc hitTestComplexControl*(self: gen_qstyle_types.QStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): cint =
  cint(fcQStyle_hitTestComplexControl(self.h, cint(cc), opt.h, pt.h, widget.h))

proc subControlRect*(self: gen_qstyle_types.QStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyle_subControlRect(self.h, cint(cc), opt.h, cint(sc), widget.h))

proc pixelMetric*(self: gen_qstyle_types.QStyle, metric: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQStyle_pixelMetric(self.h, cint(metric), option.h, widget.h)

proc sizeFromContents*(self: gen_qstyle_types.QStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, w: gen_qwidget_types.QWidget): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQStyle_sizeFromContents(self.h, cint(ct), opt.h, contentsSize.h, w.h))

proc styleHint*(self: gen_qstyle_types.QStyle, stylehint: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget, returnData: gen_qstyleoption_types.QStyleHintReturn): cint =
  fcQStyle_styleHint(self.h, cint(stylehint), opt.h, widget.h, returnData.h)

proc standardPixmap*(self: gen_qstyle_types.QStyle, standardPixmap: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQStyle_standardPixmap(self.h, cint(standardPixmap), opt.h, widget.h))

proc standardIcon*(self: gen_qstyle_types.QStyle, standardIcon: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQStyle_standardIcon(self.h, cint(standardIcon), option.h, widget.h))

proc generatedIconPixmap*(self: gen_qstyle_types.QStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap =
  gen_qpixmap_types.QPixmap(h: fcQStyle_generatedIconPixmap(self.h, cint(iconMode), pixmap.h, opt.h))

proc visualRect*(_: type gen_qstyle_types.QStyle, direction: cint, boundingRect: gen_qrect_types.QRect, logicalRect: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyle_visualRect(cint(direction), boundingRect.h, logicalRect.h))

proc visualPos*(_: type gen_qstyle_types.QStyle, direction: cint, boundingRect: gen_qrect_types.QRect, logicalPos: gen_qpoint_types.QPoint): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQStyle_visualPos(cint(direction), boundingRect.h, logicalPos.h))

proc sliderPositionFromValue*(_: type gen_qstyle_types.QStyle, min: cint, max: cint, val: cint, space: cint): cint =
  fcQStyle_sliderPositionFromValue(min, max, val, space)

proc sliderValueFromPosition*(_: type gen_qstyle_types.QStyle, min: cint, max: cint, pos: cint, space: cint): cint =
  fcQStyle_sliderValueFromPosition(min, max, pos, space)

proc visualAlignment*(_: type gen_qstyle_types.QStyle, direction: cint, alignment: cint): cint =
  cint(fcQStyle_visualAlignment(cint(direction), cint(alignment)))

proc alignedRect*(_: type gen_qstyle_types.QStyle, direction: cint, alignment: cint, size: gen_qsize_types.QSize, rectangle: gen_qrect_types.QRect): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyle_alignedRect(cint(direction), cint(alignment), size.h, rectangle.h))

proc layoutSpacing*(self: gen_qstyle_types.QStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQStyle_layoutSpacing(self.h, cint(control1), cint(control2), cint(orientation), option.h, widget.h)

proc combinedLayoutSpacing*(self: gen_qstyle_types.QStyle, controls1: cint, controls2: cint, orientation: cint): cint =
  fcQStyle_combinedLayoutSpacing(self.h, cint(controls1), cint(controls2), cint(orientation))

proc proxy*(self: gen_qstyle_types.QStyle, ): gen_qstyle_types.QStyle =
  gen_qstyle_types.QStyle(h: fcQStyle_proxy(self.h))

proc tr*(_: type gen_qstyle_types.QStyle, s: cstring, c: cstring): string =
  let v_ms = fcQStyle_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qstyle_types.QStyle, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStyle_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstyle_types.QStyle, s: cstring, c: cstring): string =
  let v_ms = fcQStyle_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qstyle_types.QStyle, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQStyle_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sliderPositionFromValue*(_: type gen_qstyle_types.QStyle, min: cint, max: cint, val: cint, space: cint, upsideDown: bool): cint =
  fcQStyle_sliderPositionFromValue5(min, max, val, space, upsideDown)

proc sliderValueFromPosition*(_: type gen_qstyle_types.QStyle, min: cint, max: cint, pos: cint, space: cint, upsideDown: bool): cint =
  fcQStyle_sliderValueFromPosition5(min, max, pos, space, upsideDown)

proc combinedLayoutSpacing*(self: gen_qstyle_types.QStyle, controls1: cint, controls2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption): cint =
  fcQStyle_combinedLayoutSpacing4(self.h, cint(controls1), cint(controls2), cint(orientation), option.h)

proc combinedLayoutSpacing*(self: gen_qstyle_types.QStyle, controls1: cint, controls2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint =
  fcQStyle_combinedLayoutSpacing5(self.h, cint(controls1), cint(controls2), cint(orientation), option.h, widget.h)

type QStylemetaObjectProc* = proc(self: QStyle): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QStylemetacastProc* = proc(self: QStyle, param1: cstring): pointer {.raises: [], gcsafe.}
type QStylemetacallProc* = proc(self: QStyle, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QStylepolishProc* = proc(self: QStyle, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QStyleunpolishProc* = proc(self: QStyle, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QStylepolishWithApplicationProc* = proc(self: QStyle, application: gen_qapplication_types.QApplication): void {.raises: [], gcsafe.}
type QStyleunpolishWithApplicationProc* = proc(self: QStyle, application: gen_qapplication_types.QApplication): void {.raises: [], gcsafe.}
type QStylepolishWithPaletteProc* = proc(self: QStyle, palette: gen_qpalette_types.QPalette): void {.raises: [], gcsafe.}
type QStyleitemTextRectProc* = proc(self: QStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QStyleitemPixmapRectProc* = proc(self: QStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QStyledrawItemTextProc* = proc(self: QStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void {.raises: [], gcsafe.}
type QStyledrawItemPixmapProc* = proc(self: QStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void {.raises: [], gcsafe.}
type QStylestandardPaletteProc* = proc(self: QStyle): gen_qpalette_types.QPalette {.raises: [], gcsafe.}
type QStyledrawPrimitiveProc* = proc(self: QStyle, pe: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QStyledrawControlProc* = proc(self: QStyle, element: cint, opt: gen_qstyleoption_types.QStyleOption, p: gen_qpainter_types.QPainter, w: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QStylesubElementRectProc* = proc(self: QStyle, subElement: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QStyledrawComplexControlProc* = proc(self: QStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, p: gen_qpainter_types.QPainter, widget: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QStylehitTestComplexControlProc* = proc(self: QStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, pt: gen_qpoint_types.QPoint, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QStylesubControlRectProc* = proc(self: QStyle, cc: cint, opt: gen_qstyleoption_types.QStyleOptionComplex, sc: cint, widget: gen_qwidget_types.QWidget): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QStylepixelMetricProc* = proc(self: QStyle, metric: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QStylesizeFromContentsProc* = proc(self: QStyle, ct: cint, opt: gen_qstyleoption_types.QStyleOption, contentsSize: gen_qsize_types.QSize, w: gen_qwidget_types.QWidget): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QStylestyleHintProc* = proc(self: QStyle, stylehint: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget, returnData: gen_qstyleoption_types.QStyleHintReturn): cint {.raises: [], gcsafe.}
type QStylestandardPixmapProc* = proc(self: QStyle, standardPixmap: cint, opt: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QStylestandardIconProc* = proc(self: QStyle, standardIcon: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QStylegeneratedIconPixmapProc* = proc(self: QStyle, iconMode: cint, pixmap: gen_qpixmap_types.QPixmap, opt: gen_qstyleoption_types.QStyleOption): gen_qpixmap_types.QPixmap {.raises: [], gcsafe.}
type QStylelayoutSpacingProc* = proc(self: QStyle, control1: cint, control2: cint, orientation: cint, option: gen_qstyleoption_types.QStyleOption, widget: gen_qwidget_types.QWidget): cint {.raises: [], gcsafe.}
type QStyleeventProc* = proc(self: QStyle, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStyleeventFilterProc* = proc(self: QStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QStyletimerEventProc* = proc(self: QStyle, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QStylechildEventProc* = proc(self: QStyle, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QStylecustomEventProc* = proc(self: QStyle, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QStyleconnectNotifyProc* = proc(self: QStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStyledisconnectNotifyProc* = proc(self: QStyle, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QStyleVTable* = object
  vtbl: cQStyleVTable
  metaObject*: QStylemetaObjectProc
  metacast*: QStylemetacastProc
  metacall*: QStylemetacallProc
  polish*: QStylepolishProc
  unpolish*: QStyleunpolishProc
  polishWithApplication*: QStylepolishWithApplicationProc
  unpolishWithApplication*: QStyleunpolishWithApplicationProc
  polishWithPalette*: QStylepolishWithPaletteProc
  itemTextRect*: QStyleitemTextRectProc
  itemPixmapRect*: QStyleitemPixmapRectProc
  drawItemText*: QStyledrawItemTextProc
  drawItemPixmap*: QStyledrawItemPixmapProc
  standardPalette*: QStylestandardPaletteProc
  drawPrimitive*: QStyledrawPrimitiveProc
  drawControl*: QStyledrawControlProc
  subElementRect*: QStylesubElementRectProc
  drawComplexControl*: QStyledrawComplexControlProc
  hitTestComplexControl*: QStylehitTestComplexControlProc
  subControlRect*: QStylesubControlRectProc
  pixelMetric*: QStylepixelMetricProc
  sizeFromContents*: QStylesizeFromContentsProc
  styleHint*: QStylestyleHintProc
  standardPixmap*: QStylestandardPixmapProc
  standardIcon*: QStylestandardIconProc
  generatedIconPixmap*: QStylegeneratedIconPixmapProc
  layoutSpacing*: QStylelayoutSpacingProc
  event*: QStyleeventProc
  eventFilter*: QStyleeventFilterProc
  timerEvent*: QStyletimerEventProc
  childEvent*: QStylechildEventProc
  customEvent*: QStylecustomEventProc
  connectNotify*: QStyleconnectNotifyProc
  disconnectNotify*: QStyledisconnectNotifyProc
proc QStylemetaObject*(self: gen_qstyle_types.QStyle, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyle_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQStyle_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  var virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QStylemetacast*(self: gen_qstyle_types.QStyle, param1: cstring): pointer =
  fcQStyle_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQStyle_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = (param1)
  var virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QStylemetacall*(self: gen_qstyle_types.QStyle, param1: cint, param2: cint, param3: pointer): cint =
  fcQStyle_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQStyle_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  var virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QStylepolish*(self: gen_qstyle_types.QStyle, widget: gen_qwidget_types.QWidget): void =
  fcQStyle_virtualbase_polish(self.h, widget.h)

proc miqt_exec_callback_cQStyle_polish(vtbl: pointer, self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].polish(self, slotval1)

proc QStyleunpolish*(self: gen_qstyle_types.QStyle, widget: gen_qwidget_types.QWidget): void =
  fcQStyle_virtualbase_unpolish(self.h, widget.h)

proc miqt_exec_callback_cQStyle_unpolish(vtbl: pointer, self: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].unpolish(self, slotval1)

proc QStylepolish*(self: gen_qstyle_types.QStyle, application: gen_qapplication_types.QApplication): void =
  fcQStyle_virtualbase_polishWithApplication(self.h, application.h)

proc miqt_exec_callback_cQStyle_polishWithApplication(vtbl: pointer, self: pointer, application: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qapplication_types.QApplication(h: application)
  vtbl[].polishWithApplication(self, slotval1)

proc QStyleunpolish*(self: gen_qstyle_types.QStyle, application: gen_qapplication_types.QApplication): void =
  fcQStyle_virtualbase_unpolishWithApplication(self.h, application.h)

proc miqt_exec_callback_cQStyle_unpolishWithApplication(vtbl: pointer, self: pointer, application: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qapplication_types.QApplication(h: application)
  vtbl[].unpolishWithApplication(self, slotval1)

proc QStylepolish*(self: gen_qstyle_types.QStyle, palette: gen_qpalette_types.QPalette): void =
  fcQStyle_virtualbase_polishWithPalette(self.h, palette.h)

proc miqt_exec_callback_cQStyle_polishWithPalette(vtbl: pointer, self: pointer, palette: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qpalette_types.QPalette(h: palette)
  vtbl[].polishWithPalette(self, slotval1)

proc QStyleitemTextRect*(self: gen_qstyle_types.QStyle, fm: gen_qfontmetrics_types.QFontMetrics, r: gen_qrect_types.QRect, flags: cint, enabled: bool, text: string): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyle_virtualbase_itemTextRect(self.h, fm.h, r.h, flags, enabled, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc miqt_exec_callback_cQStyle_itemTextRect(vtbl: pointer, self: pointer, fm: pointer, r: pointer, flags: cint, enabled: bool, text: struct_miqt_string): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qfontmetrics_types.QFontMetrics(h: fm)
  let slotval2 = gen_qrect_types.QRect(h: r)
  let slotval3 = flags
  let slotval4 = enabled
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval5 = vtextx_ret
  var virtualReturn = vtbl[].itemTextRect(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn.h

proc QStyleitemPixmapRect*(self: gen_qstyle_types.QStyle, r: gen_qrect_types.QRect, flags: cint, pixmap: gen_qpixmap_types.QPixmap): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQStyle_virtualbase_itemPixmapRect(self.h, r.h, flags, pixmap.h))

proc miqt_exec_callback_cQStyle_itemPixmapRect(vtbl: pointer, self: pointer, r: pointer, flags: cint, pixmap: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qrect_types.QRect(h: r)
  let slotval2 = flags
  let slotval3 = gen_qpixmap_types.QPixmap(h: pixmap)
  var virtualReturn = vtbl[].itemPixmapRect(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QStyledrawItemText*(self: gen_qstyle_types.QStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, flags: cint, pal: gen_qpalette_types.QPalette, enabled: bool, text: string, textRole: cint): void =
  fcQStyle_virtualbase_drawItemText(self.h, painter.h, rect.h, flags, pal.h, enabled, struct_miqt_string(data: text, len: csize_t(len(text))), cint(textRole))

proc miqt_exec_callback_cQStyle_drawItemText(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, flags: cint, pal: pointer, enabled: bool, text: struct_miqt_string, textRole: cint): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = flags
  let slotval4 = gen_qpalette_types.QPalette(h: pal)
  let slotval5 = enabled
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval6 = vtextx_ret
  let slotval7 = cint(textRole)
  vtbl[].drawItemText(self, slotval1, slotval2, slotval3, slotval4, slotval5, slotval6, slotval7)

proc QStyledrawItemPixmap*(self: gen_qstyle_types.QStyle, painter: gen_qpainter_types.QPainter, rect: gen_qrect_types.QRect, alignment: cint, pixmap: gen_qpixmap_types.QPixmap): void =
  fcQStyle_virtualbase_drawItemPixmap(self.h, painter.h, rect.h, alignment, pixmap.h)

proc miqt_exec_callback_cQStyle_drawItemPixmap(vtbl: pointer, self: pointer, painter: pointer, rect: pointer, alignment: cint, pixmap: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  let slotval2 = gen_qrect_types.QRect(h: rect)
  let slotval3 = alignment
  let slotval4 = gen_qpixmap_types.QPixmap(h: pixmap)
  vtbl[].drawItemPixmap(self, slotval1, slotval2, slotval3, slotval4)

proc QStylestandardPalette*(self: gen_qstyle_types.QStyle, ): gen_qpalette_types.QPalette =
  gen_qpalette_types.QPalette(h: fcQStyle_virtualbase_standardPalette(self.h))

proc miqt_exec_callback_cQStyle_standardPalette(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  var virtualReturn = vtbl[].standardPalette(self)
  virtualReturn.h

proc miqt_exec_callback_cQStyle_drawPrimitive(vtbl: pointer, self: pointer, pe: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(pe)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qpainter_types.QPainter(h: p)
  let slotval4 = gen_qwidget_types.QWidget(h: w)
  vtbl[].drawPrimitive(self, slotval1, slotval2, slotval3, slotval4)

proc miqt_exec_callback_cQStyle_drawControl(vtbl: pointer, self: pointer, element: cint, opt: pointer, p: pointer, w: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(element)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qpainter_types.QPainter(h: p)
  let slotval4 = gen_qwidget_types.QWidget(h: w)
  vtbl[].drawControl(self, slotval1, slotval2, slotval3, slotval4)

proc miqt_exec_callback_cQStyle_subElementRect(vtbl: pointer, self: pointer, subElement: cint, option: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(subElement)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].subElementRect(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc miqt_exec_callback_cQStyle_drawComplexControl(vtbl: pointer, self: pointer, cc: cint, opt: pointer, p: pointer, widget: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)
  let slotval3 = gen_qpainter_types.QPainter(h: p)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  vtbl[].drawComplexControl(self, slotval1, slotval2, slotval3, slotval4)

proc miqt_exec_callback_cQStyle_hitTestComplexControl(vtbl: pointer, self: pointer, cc: cint, opt: pointer, pt: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)
  let slotval3 = gen_qpoint_types.QPoint(h: pt)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].hitTestComplexControl(self, slotval1, slotval2, slotval3, slotval4)
  cint(virtualReturn)

proc miqt_exec_callback_cQStyle_subControlRect(vtbl: pointer, self: pointer, cc: cint, opt: pointer, sc: cint, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(cc)
  let slotval2 = gen_qstyleoption_types.QStyleOptionComplex(h: opt)
  let slotval3 = cint(sc)
  let slotval4 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].subControlRect(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.h

proc miqt_exec_callback_cQStyle_pixelMetric(vtbl: pointer, self: pointer, metric: cint, option: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(metric)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].pixelMetric(self, slotval1, slotval2, slotval3)
  virtualReturn

proc miqt_exec_callback_cQStyle_sizeFromContents(vtbl: pointer, self: pointer, ct: cint, opt: pointer, contentsSize: pointer, w: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(ct)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qsize_types.QSize(h: contentsSize)
  let slotval4 = gen_qwidget_types.QWidget(h: w)
  var virtualReturn = vtbl[].sizeFromContents(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn.h

proc miqt_exec_callback_cQStyle_styleHint(vtbl: pointer, self: pointer, stylehint: cint, opt: pointer, widget: pointer, returnData: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(stylehint)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  let slotval4 = gen_qstyleoption_types.QStyleHintReturn(h: returnData)
  var virtualReturn = vtbl[].styleHint(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc miqt_exec_callback_cQStyle_standardPixmap(vtbl: pointer, self: pointer, standardPixmap: cint, opt: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(standardPixmap)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: opt)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].standardPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc miqt_exec_callback_cQStyle_standardIcon(vtbl: pointer, self: pointer, standardIcon: cint, option: pointer, widget: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(standardIcon)
  let slotval2 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval3 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].standardIcon(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc miqt_exec_callback_cQStyle_generatedIconPixmap(vtbl: pointer, self: pointer, iconMode: cint, pixmap: pointer, opt: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(iconMode)
  let slotval2 = gen_qpixmap_types.QPixmap(h: pixmap)
  let slotval3 = gen_qstyleoption_types.QStyleOption(h: opt)
  var virtualReturn = vtbl[].generatedIconPixmap(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc miqt_exec_callback_cQStyle_layoutSpacing(vtbl: pointer, self: pointer, control1: cint, control2: cint, orientation: cint, option: pointer, widget: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = cint(control1)
  let slotval2 = cint(control2)
  let slotval3 = cint(orientation)
  let slotval4 = gen_qstyleoption_types.QStyleOption(h: option)
  let slotval5 = gen_qwidget_types.QWidget(h: widget)
  var virtualReturn = vtbl[].layoutSpacing(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QStyleevent*(self: gen_qstyle_types.QStyle, event: gen_qcoreevent_types.QEvent): bool =
  fcQStyle_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQStyle_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QStyleeventFilter*(self: gen_qstyle_types.QStyle, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQStyle_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQStyle_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  var virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QStyletimerEvent*(self: gen_qstyle_types.QStyle, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQStyle_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQStyle_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QStylechildEvent*(self: gen_qstyle_types.QStyle, event: gen_qcoreevent_types.QChildEvent): void =
  fcQStyle_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQStyle_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QStylecustomEvent*(self: gen_qstyle_types.QStyle, event: gen_qcoreevent_types.QEvent): void =
  fcQStyle_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQStyle_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QStyleconnectNotify*(self: gen_qstyle_types.QStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStyle_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStyle_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QStyledisconnectNotify*(self: gen_qstyle_types.QStyle, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQStyle_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQStyle_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QStyleVTable](vtbl)
  let self = QStyle(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qstyle_types.QStyle,
    vtbl: ref QStyleVTable = nil): gen_qstyle_types.QStyle =
  let vtbl = if vtbl == nil: new QStyleVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQStyleVTable, _: ptr cQStyle) {.cdecl.} =
    let vtbl = cast[ref QStyleVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQStyle_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQStyle_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQStyle_metacall
  if not isNil(vtbl.polish):
    vtbl[].vtbl.polish = miqt_exec_callback_cQStyle_polish
  if not isNil(vtbl.unpolish):
    vtbl[].vtbl.unpolish = miqt_exec_callback_cQStyle_unpolish
  if not isNil(vtbl.polishWithApplication):
    vtbl[].vtbl.polishWithApplication = miqt_exec_callback_cQStyle_polishWithApplication
  if not isNil(vtbl.unpolishWithApplication):
    vtbl[].vtbl.unpolishWithApplication = miqt_exec_callback_cQStyle_unpolishWithApplication
  if not isNil(vtbl.polishWithPalette):
    vtbl[].vtbl.polishWithPalette = miqt_exec_callback_cQStyle_polishWithPalette
  if not isNil(vtbl.itemTextRect):
    vtbl[].vtbl.itemTextRect = miqt_exec_callback_cQStyle_itemTextRect
  if not isNil(vtbl.itemPixmapRect):
    vtbl[].vtbl.itemPixmapRect = miqt_exec_callback_cQStyle_itemPixmapRect
  if not isNil(vtbl.drawItemText):
    vtbl[].vtbl.drawItemText = miqt_exec_callback_cQStyle_drawItemText
  if not isNil(vtbl.drawItemPixmap):
    vtbl[].vtbl.drawItemPixmap = miqt_exec_callback_cQStyle_drawItemPixmap
  if not isNil(vtbl.standardPalette):
    vtbl[].vtbl.standardPalette = miqt_exec_callback_cQStyle_standardPalette
  if not isNil(vtbl.drawPrimitive):
    vtbl[].vtbl.drawPrimitive = miqt_exec_callback_cQStyle_drawPrimitive
  if not isNil(vtbl.drawControl):
    vtbl[].vtbl.drawControl = miqt_exec_callback_cQStyle_drawControl
  if not isNil(vtbl.subElementRect):
    vtbl[].vtbl.subElementRect = miqt_exec_callback_cQStyle_subElementRect
  if not isNil(vtbl.drawComplexControl):
    vtbl[].vtbl.drawComplexControl = miqt_exec_callback_cQStyle_drawComplexControl
  if not isNil(vtbl.hitTestComplexControl):
    vtbl[].vtbl.hitTestComplexControl = miqt_exec_callback_cQStyle_hitTestComplexControl
  if not isNil(vtbl.subControlRect):
    vtbl[].vtbl.subControlRect = miqt_exec_callback_cQStyle_subControlRect
  if not isNil(vtbl.pixelMetric):
    vtbl[].vtbl.pixelMetric = miqt_exec_callback_cQStyle_pixelMetric
  if not isNil(vtbl.sizeFromContents):
    vtbl[].vtbl.sizeFromContents = miqt_exec_callback_cQStyle_sizeFromContents
  if not isNil(vtbl.styleHint):
    vtbl[].vtbl.styleHint = miqt_exec_callback_cQStyle_styleHint
  if not isNil(vtbl.standardPixmap):
    vtbl[].vtbl.standardPixmap = miqt_exec_callback_cQStyle_standardPixmap
  if not isNil(vtbl.standardIcon):
    vtbl[].vtbl.standardIcon = miqt_exec_callback_cQStyle_standardIcon
  if not isNil(vtbl.generatedIconPixmap):
    vtbl[].vtbl.generatedIconPixmap = miqt_exec_callback_cQStyle_generatedIconPixmap
  if not isNil(vtbl.layoutSpacing):
    vtbl[].vtbl.layoutSpacing = miqt_exec_callback_cQStyle_layoutSpacing
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQStyle_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQStyle_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQStyle_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQStyle_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQStyle_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQStyle_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQStyle_disconnectNotify
  gen_qstyle_types.QStyle(h: fcQStyle_new(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qstyle_types.QStyle): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQStyle_staticMetaObject())
proc delete*(self: gen_qstyle_types.QStyle) =
  fcQStyle_delete(self.h)
