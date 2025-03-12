import ./Qt6Core_libs

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


type GlobalColorEnum* = distinct cint
template color0*(_: type GlobalColorEnum): untyped = 0
template color1*(_: type GlobalColorEnum): untyped = 1
template black*(_: type GlobalColorEnum): untyped = 2
template white*(_: type GlobalColorEnum): untyped = 3
template darkGray*(_: type GlobalColorEnum): untyped = 4
template gray*(_: type GlobalColorEnum): untyped = 5
template lightGray*(_: type GlobalColorEnum): untyped = 6
template red*(_: type GlobalColorEnum): untyped = 7
template green*(_: type GlobalColorEnum): untyped = 8
template blue*(_: type GlobalColorEnum): untyped = 9
template cyan*(_: type GlobalColorEnum): untyped = 10
template magenta*(_: type GlobalColorEnum): untyped = 11
template yellow*(_: type GlobalColorEnum): untyped = 12
template darkRed*(_: type GlobalColorEnum): untyped = 13
template darkGreen*(_: type GlobalColorEnum): untyped = 14
template darkBlue*(_: type GlobalColorEnum): untyped = 15
template darkCyan*(_: type GlobalColorEnum): untyped = 16
template darkMagenta*(_: type GlobalColorEnum): untyped = 17
template darkYellow*(_: type GlobalColorEnum): untyped = 18
template transparent*(_: type GlobalColorEnum): untyped = 19


type MouseButtonEnum* = distinct cint
template NoButton*(_: type MouseButtonEnum): untyped = 0
template LeftButton*(_: type MouseButtonEnum): untyped = 1
template RightButton*(_: type MouseButtonEnum): untyped = 2
template MiddleButton*(_: type MouseButtonEnum): untyped = 4
template BackButton*(_: type MouseButtonEnum): untyped = 8
template XButton1*(_: type MouseButtonEnum): untyped = 8
template ExtraButton1*(_: type MouseButtonEnum): untyped = 8
template ForwardButton*(_: type MouseButtonEnum): untyped = 16
template XButton2*(_: type MouseButtonEnum): untyped = 16
template ExtraButton2*(_: type MouseButtonEnum): untyped = 16
template TaskButton*(_: type MouseButtonEnum): untyped = 32
template ExtraButton3*(_: type MouseButtonEnum): untyped = 32
template ExtraButton4*(_: type MouseButtonEnum): untyped = 64
template ExtraButton5*(_: type MouseButtonEnum): untyped = 128
template ExtraButton6*(_: type MouseButtonEnum): untyped = 256
template ExtraButton7*(_: type MouseButtonEnum): untyped = 512
template ExtraButton8*(_: type MouseButtonEnum): untyped = 1024
template ExtraButton9*(_: type MouseButtonEnum): untyped = 2048
template ExtraButton10*(_: type MouseButtonEnum): untyped = 4096
template ExtraButton11*(_: type MouseButtonEnum): untyped = 8192
template ExtraButton12*(_: type MouseButtonEnum): untyped = 16384
template ExtraButton13*(_: type MouseButtonEnum): untyped = 32768
template ExtraButton14*(_: type MouseButtonEnum): untyped = 65536
template ExtraButton15*(_: type MouseButtonEnum): untyped = 131072
template ExtraButton16*(_: type MouseButtonEnum): untyped = 262144
template ExtraButton17*(_: type MouseButtonEnum): untyped = 524288
template ExtraButton18*(_: type MouseButtonEnum): untyped = 1048576
template ExtraButton19*(_: type MouseButtonEnum): untyped = 2097152
template ExtraButton20*(_: type MouseButtonEnum): untyped = 4194304
template ExtraButton21*(_: type MouseButtonEnum): untyped = 8388608
template ExtraButton22*(_: type MouseButtonEnum): untyped = 16777216
template ExtraButton23*(_: type MouseButtonEnum): untyped = 33554432
template ExtraButton24*(_: type MouseButtonEnum): untyped = 67108864
template AllButtons*(_: type MouseButtonEnum): untyped = 134217727
template MaxMouseButton*(_: type MouseButtonEnum): untyped = 67108864
template MouseButtonMask*(_: type MouseButtonEnum): untyped = 4294967295


type OrientationEnum* = distinct cint
template Horizontal*(_: type OrientationEnum): untyped = 1
template Vertical*(_: type OrientationEnum): untyped = 2


type FocusPolicyEnum* = distinct cint
template NoFocus*(_: type FocusPolicyEnum): untyped = 0
template TabFocus*(_: type FocusPolicyEnum): untyped = 1
template ClickFocus*(_: type FocusPolicyEnum): untyped = 2
template StrongFocus*(_: type FocusPolicyEnum): untyped = 11
template WheelFocus*(_: type FocusPolicyEnum): untyped = 15


type TabFocusBehaviorEnum* = distinct cint
template NoTabFocus*(_: type TabFocusBehaviorEnum): untyped = 0
template TabFocusTextControls*(_: type TabFocusBehaviorEnum): untyped = 1
template TabFocusListControls*(_: type TabFocusBehaviorEnum): untyped = 2
template TabFocusAllControls*(_: type TabFocusBehaviorEnum): untyped = 255


type SortOrderEnum* = distinct cint
template AscendingOrder*(_: type SortOrderEnum): untyped = 0
template DescendingOrder*(_: type SortOrderEnum): untyped = 1


type SplitBehaviorFlagsEnum* = distinct cint
template KeepEmptyParts*(_: type SplitBehaviorFlagsEnum): untyped = 0
template SkipEmptyParts*(_: type SplitBehaviorFlagsEnum): untyped = 1


type TileRuleEnum* = distinct cint
template StretchTile*(_: type TileRuleEnum): untyped = 0
template RepeatTile*(_: type TileRuleEnum): untyped = 1
template RoundTile*(_: type TileRuleEnum): untyped = 2


type AlignmentFlagEnum* = distinct cint
template AlignLeft*(_: type AlignmentFlagEnum): untyped = 1
template AlignLeading*(_: type AlignmentFlagEnum): untyped = 1
template AlignRight*(_: type AlignmentFlagEnum): untyped = 2
template AlignTrailing*(_: type AlignmentFlagEnum): untyped = 2
template AlignHCenter*(_: type AlignmentFlagEnum): untyped = 4
template AlignJustify*(_: type AlignmentFlagEnum): untyped = 8
template AlignAbsolute*(_: type AlignmentFlagEnum): untyped = 16
template AlignHorizontal_Mask*(_: type AlignmentFlagEnum): untyped = 31
template AlignTop*(_: type AlignmentFlagEnum): untyped = 32
template AlignBottom*(_: type AlignmentFlagEnum): untyped = 64
template AlignVCenter*(_: type AlignmentFlagEnum): untyped = 128
template AlignBaseline*(_: type AlignmentFlagEnum): untyped = 256
template AlignVertical_Mask*(_: type AlignmentFlagEnum): untyped = 480
template AlignCenter*(_: type AlignmentFlagEnum): untyped = 132


type TextFlagEnum* = distinct cint
template TextSingleLine*(_: type TextFlagEnum): untyped = 256
template TextDontClip*(_: type TextFlagEnum): untyped = 512
template TextExpandTabs*(_: type TextFlagEnum): untyped = 1024
template TextShowMnemonic*(_: type TextFlagEnum): untyped = 2048
template TextWordWrap*(_: type TextFlagEnum): untyped = 4096
template TextWrapAnywhere*(_: type TextFlagEnum): untyped = 8192
template TextDontPrint*(_: type TextFlagEnum): untyped = 16384
template TextIncludeTrailingSpaces*(_: type TextFlagEnum): untyped = 134217728
template TextHideMnemonic*(_: type TextFlagEnum): untyped = 32768
template TextJustificationForced*(_: type TextFlagEnum): untyped = 65536
template TextForceLeftToRight*(_: type TextFlagEnum): untyped = 131072
template TextForceRightToLeft*(_: type TextFlagEnum): untyped = 262144
template TextLongestVariant*(_: type TextFlagEnum): untyped = 524288


type TextElideModeEnum* = distinct cint
template ElideLeft*(_: type TextElideModeEnum): untyped = 0
template ElideRight*(_: type TextElideModeEnum): untyped = 1
template ElideMiddle*(_: type TextElideModeEnum): untyped = 2
template ElideNone*(_: type TextElideModeEnum): untyped = 3


type WhiteSpaceModeEnum* = distinct cint
template WhiteSpaceNormal*(_: type WhiteSpaceModeEnum): untyped = 0
template WhiteSpacePre*(_: type WhiteSpaceModeEnum): untyped = 1
template WhiteSpaceNoWrap*(_: type WhiteSpaceModeEnum): untyped = 2
template WhiteSpaceModeUndefined*(_: type WhiteSpaceModeEnum): untyped = -1


type HitTestAccuracyEnum* = distinct cint
template ExactHit*(_: type HitTestAccuracyEnum): untyped = 0
template FuzzyHit*(_: type HitTestAccuracyEnum): untyped = 1


type WindowTypeEnum* = distinct cint
template Widget*(_: type WindowTypeEnum): untyped = 0
template Window*(_: type WindowTypeEnum): untyped = 1
template Dialog*(_: type WindowTypeEnum): untyped = 3
template Sheet*(_: type WindowTypeEnum): untyped = 5
template Drawer*(_: type WindowTypeEnum): untyped = 7
template Popup*(_: type WindowTypeEnum): untyped = 9
template Tool*(_: type WindowTypeEnum): untyped = 11
template ToolTip*(_: type WindowTypeEnum): untyped = 13
template SplashScreen*(_: type WindowTypeEnum): untyped = 15
template Desktop*(_: type WindowTypeEnum): untyped = 17
template SubWindow*(_: type WindowTypeEnum): untyped = 18
template ForeignWindow*(_: type WindowTypeEnum): untyped = 33
template CoverWindow*(_: type WindowTypeEnum): untyped = 65
template WindowType_Mask*(_: type WindowTypeEnum): untyped = 255
template MSWindowsFixedSizeDialogHint*(_: type WindowTypeEnum): untyped = 256
template MSWindowsOwnDC*(_: type WindowTypeEnum): untyped = 512
template BypassWindowManagerHint*(_: type WindowTypeEnum): untyped = 1024
template X11BypassWindowManagerHint*(_: type WindowTypeEnum): untyped = 1024
template FramelessWindowHint*(_: type WindowTypeEnum): untyped = 2048
template WindowTitleHint*(_: type WindowTypeEnum): untyped = 4096
template WindowSystemMenuHint*(_: type WindowTypeEnum): untyped = 8192
template WindowMinimizeButtonHint*(_: type WindowTypeEnum): untyped = 16384
template WindowMaximizeButtonHint*(_: type WindowTypeEnum): untyped = 32768
template WindowMinMaxButtonsHint*(_: type WindowTypeEnum): untyped = 49152
template WindowContextHelpButtonHint*(_: type WindowTypeEnum): untyped = 65536
template WindowShadeButtonHint*(_: type WindowTypeEnum): untyped = 131072
template WindowStaysOnTopHint*(_: type WindowTypeEnum): untyped = 262144
template WindowTransparentForInput*(_: type WindowTypeEnum): untyped = 524288
template WindowOverridesSystemGestures*(_: type WindowTypeEnum): untyped = 1048576
template WindowDoesNotAcceptFocus*(_: type WindowTypeEnum): untyped = 2097152
template MaximizeUsingFullscreenGeometryHint*(_: type WindowTypeEnum): untyped = 4194304
template CustomizeWindowHint*(_: type WindowTypeEnum): untyped = 33554432
template WindowStaysOnBottomHint*(_: type WindowTypeEnum): untyped = 67108864
template WindowCloseButtonHint*(_: type WindowTypeEnum): untyped = 134217728
template MacWindowToolBarButtonHint*(_: type WindowTypeEnum): untyped = 268435456
template BypassGraphicsProxyWidget*(_: type WindowTypeEnum): untyped = 536870912
template NoDropShadowWindowHint*(_: type WindowTypeEnum): untyped = 1073741824
template WindowFullscreenButtonHint*(_: type WindowTypeEnum): untyped = 2147483648


type WindowStateEnum* = distinct cint
template WindowNoState*(_: type WindowStateEnum): untyped = 0
template WindowMinimized*(_: type WindowStateEnum): untyped = 1
template WindowMaximized*(_: type WindowStateEnum): untyped = 2
template WindowFullScreen*(_: type WindowStateEnum): untyped = 4
template WindowActive*(_: type WindowStateEnum): untyped = 8


type ApplicationStateEnum* = distinct cint
template ApplicationSuspended*(_: type ApplicationStateEnum): untyped = 0
template ApplicationHidden*(_: type ApplicationStateEnum): untyped = 1
template ApplicationInactive*(_: type ApplicationStateEnum): untyped = 2
template ApplicationActive*(_: type ApplicationStateEnum): untyped = 4


type ScreenOrientationEnum* = distinct cint
template PrimaryOrientation*(_: type ScreenOrientationEnum): untyped = 0
template PortraitOrientation*(_: type ScreenOrientationEnum): untyped = 1
template LandscapeOrientation*(_: type ScreenOrientationEnum): untyped = 2
template InvertedPortraitOrientation*(_: type ScreenOrientationEnum): untyped = 4
template InvertedLandscapeOrientation*(_: type ScreenOrientationEnum): untyped = 8


type WidgetAttributeEnum* = distinct cint
template WA_Disabled*(_: type WidgetAttributeEnum): untyped = 0
template WA_UnderMouse*(_: type WidgetAttributeEnum): untyped = 1
template WA_MouseTracking*(_: type WidgetAttributeEnum): untyped = 2
template WA_OpaquePaintEvent*(_: type WidgetAttributeEnum): untyped = 4
template WA_StaticContents*(_: type WidgetAttributeEnum): untyped = 5
template WA_LaidOut*(_: type WidgetAttributeEnum): untyped = 7
template WA_PaintOnScreen*(_: type WidgetAttributeEnum): untyped = 8
template WA_NoSystemBackground*(_: type WidgetAttributeEnum): untyped = 9
template WA_UpdatesDisabled*(_: type WidgetAttributeEnum): untyped = 10
template WA_Mapped*(_: type WidgetAttributeEnum): untyped = 11
template WA_InputMethodEnabled*(_: type WidgetAttributeEnum): untyped = 14
template WA_WState_Visible*(_: type WidgetAttributeEnum): untyped = 15
template WA_WState_Hidden*(_: type WidgetAttributeEnum): untyped = 16
template WA_ForceDisabled*(_: type WidgetAttributeEnum): untyped = 32
template WA_KeyCompression*(_: type WidgetAttributeEnum): untyped = 33
template WA_PendingMoveEvent*(_: type WidgetAttributeEnum): untyped = 34
template WA_PendingResizeEvent*(_: type WidgetAttributeEnum): untyped = 35
template WA_SetPalette*(_: type WidgetAttributeEnum): untyped = 36
template WA_SetFont*(_: type WidgetAttributeEnum): untyped = 37
template WA_SetCursor*(_: type WidgetAttributeEnum): untyped = 38
template WA_NoChildEventsFromChildren*(_: type WidgetAttributeEnum): untyped = 39
template WA_WindowModified*(_: type WidgetAttributeEnum): untyped = 41
template WA_Resized*(_: type WidgetAttributeEnum): untyped = 42
template WA_Moved*(_: type WidgetAttributeEnum): untyped = 43
template WA_PendingUpdate*(_: type WidgetAttributeEnum): untyped = 44
template WA_InvalidSize*(_: type WidgetAttributeEnum): untyped = 45
template WA_CustomWhatsThis*(_: type WidgetAttributeEnum): untyped = 47
template WA_LayoutOnEntireRect*(_: type WidgetAttributeEnum): untyped = 48
template WA_OutsideWSRange*(_: type WidgetAttributeEnum): untyped = 49
template WA_GrabbedShortcut*(_: type WidgetAttributeEnum): untyped = 50
template WA_TransparentForMouseEvents*(_: type WidgetAttributeEnum): untyped = 51
template WA_PaintUnclipped*(_: type WidgetAttributeEnum): untyped = 52
template WA_SetWindowIcon*(_: type WidgetAttributeEnum): untyped = 53
template WA_NoMouseReplay*(_: type WidgetAttributeEnum): untyped = 54
template WA_DeleteOnClose*(_: type WidgetAttributeEnum): untyped = 55
template WA_RightToLeft*(_: type WidgetAttributeEnum): untyped = 56
template WA_SetLayoutDirection*(_: type WidgetAttributeEnum): untyped = 57
template WA_NoChildEventsForParent*(_: type WidgetAttributeEnum): untyped = 58
template WA_ForceUpdatesDisabled*(_: type WidgetAttributeEnum): untyped = 59
template WA_WState_Created*(_: type WidgetAttributeEnum): untyped = 60
template WA_WState_CompressKeys*(_: type WidgetAttributeEnum): untyped = 61
template WA_WState_InPaintEvent*(_: type WidgetAttributeEnum): untyped = 62
template WA_WState_Reparented*(_: type WidgetAttributeEnum): untyped = 63
template WA_WState_ConfigPending*(_: type WidgetAttributeEnum): untyped = 64
template WA_WState_Polished*(_: type WidgetAttributeEnum): untyped = 66
template WA_WState_OwnSizePolicy*(_: type WidgetAttributeEnum): untyped = 68
template WA_WState_ExplicitShowHide*(_: type WidgetAttributeEnum): untyped = 69
template WA_ShowModal*(_: type WidgetAttributeEnum): untyped = 70
template WA_MouseNoMask*(_: type WidgetAttributeEnum): untyped = 71
template WA_NoMousePropagation*(_: type WidgetAttributeEnum): untyped = 73
template WA_Hover*(_: type WidgetAttributeEnum): untyped = 74
template WA_InputMethodTransparent*(_: type WidgetAttributeEnum): untyped = 75
template WA_QuitOnClose*(_: type WidgetAttributeEnum): untyped = 76
template WA_KeyboardFocusChange*(_: type WidgetAttributeEnum): untyped = 77
template WA_AcceptDrops*(_: type WidgetAttributeEnum): untyped = 78
template WA_DropSiteRegistered*(_: type WidgetAttributeEnum): untyped = 79
template WA_WindowPropagation*(_: type WidgetAttributeEnum): untyped = 80
template WA_NoX11EventCompression*(_: type WidgetAttributeEnum): untyped = 81
template WA_TintedBackground*(_: type WidgetAttributeEnum): untyped = 82
template WA_X11OpenGLOverlay*(_: type WidgetAttributeEnum): untyped = 83
template WA_AlwaysShowToolTips*(_: type WidgetAttributeEnum): untyped = 84
template WA_MacOpaqueSizeGrip*(_: type WidgetAttributeEnum): untyped = 85
template WA_SetStyle*(_: type WidgetAttributeEnum): untyped = 86
template WA_SetLocale*(_: type WidgetAttributeEnum): untyped = 87
template WA_MacShowFocusRect*(_: type WidgetAttributeEnum): untyped = 88
template WA_MacNormalSize*(_: type WidgetAttributeEnum): untyped = 89
template WA_MacSmallSize*(_: type WidgetAttributeEnum): untyped = 90
template WA_MacMiniSize*(_: type WidgetAttributeEnum): untyped = 91
template WA_LayoutUsesWidgetRect*(_: type WidgetAttributeEnum): untyped = 92
template WA_StyledBackground*(_: type WidgetAttributeEnum): untyped = 93
template WA_CanHostQMdiSubWindowTitleBar*(_: type WidgetAttributeEnum): untyped = 95
template WA_MacAlwaysShowToolWindow*(_: type WidgetAttributeEnum): untyped = 96
template WA_StyleSheet*(_: type WidgetAttributeEnum): untyped = 97
template WA_ShowWithoutActivating*(_: type WidgetAttributeEnum): untyped = 98
template WA_X11BypassTransientForHint*(_: type WidgetAttributeEnum): untyped = 99
template WA_NativeWindow*(_: type WidgetAttributeEnum): untyped = 100
template WA_DontCreateNativeAncestors*(_: type WidgetAttributeEnum): untyped = 101
template WA_DontShowOnScreen*(_: type WidgetAttributeEnum): untyped = 103
template WA_X11NetWmWindowTypeDesktop*(_: type WidgetAttributeEnum): untyped = 104
template WA_X11NetWmWindowTypeDock*(_: type WidgetAttributeEnum): untyped = 105
template WA_X11NetWmWindowTypeToolBar*(_: type WidgetAttributeEnum): untyped = 106
template WA_X11NetWmWindowTypeMenu*(_: type WidgetAttributeEnum): untyped = 107
template WA_X11NetWmWindowTypeUtility*(_: type WidgetAttributeEnum): untyped = 108
template WA_X11NetWmWindowTypeSplash*(_: type WidgetAttributeEnum): untyped = 109
template WA_X11NetWmWindowTypeDialog*(_: type WidgetAttributeEnum): untyped = 110
template WA_X11NetWmWindowTypeDropDownMenu*(_: type WidgetAttributeEnum): untyped = 111
template WA_X11NetWmWindowTypePopupMenu*(_: type WidgetAttributeEnum): untyped = 112
template WA_X11NetWmWindowTypeToolTip*(_: type WidgetAttributeEnum): untyped = 113
template WA_X11NetWmWindowTypeNotification*(_: type WidgetAttributeEnum): untyped = 114
template WA_X11NetWmWindowTypeCombo*(_: type WidgetAttributeEnum): untyped = 115
template WA_X11NetWmWindowTypeDND*(_: type WidgetAttributeEnum): untyped = 116
template WA_SetWindowModality*(_: type WidgetAttributeEnum): untyped = 118
template WA_WState_WindowOpacitySet*(_: type WidgetAttributeEnum): untyped = 119
template WA_TranslucentBackground*(_: type WidgetAttributeEnum): untyped = 120
template WA_AcceptTouchEvents*(_: type WidgetAttributeEnum): untyped = 121
template WA_WState_AcceptedTouchBeginEvent*(_: type WidgetAttributeEnum): untyped = 122
template WA_TouchPadAcceptSingleTouchEvents*(_: type WidgetAttributeEnum): untyped = 123
template WA_X11DoNotAcceptFocus*(_: type WidgetAttributeEnum): untyped = 126
template WA_AlwaysStackOnTop*(_: type WidgetAttributeEnum): untyped = 128
template WA_TabletTracking*(_: type WidgetAttributeEnum): untyped = 129
template WA_ContentsMarginsRespectsSafeArea*(_: type WidgetAttributeEnum): untyped = 130
template WA_StyleSheetTarget*(_: type WidgetAttributeEnum): untyped = 131
template WA_AttributeCount*(_: type WidgetAttributeEnum): untyped = 132


type ApplicationAttributeEnum* = distinct cint
template AA_DontShowIconsInMenus*(_: type ApplicationAttributeEnum): untyped = 2
template AA_NativeWindows*(_: type ApplicationAttributeEnum): untyped = 3
template AA_DontCreateNativeWidgetSiblings*(_: type ApplicationAttributeEnum): untyped = 4
template AA_PluginApplication*(_: type ApplicationAttributeEnum): untyped = 5
template AA_DontUseNativeMenuBar*(_: type ApplicationAttributeEnum): untyped = 6
template AA_MacDontSwapCtrlAndMeta*(_: type ApplicationAttributeEnum): untyped = 7
template AA_Use96Dpi*(_: type ApplicationAttributeEnum): untyped = 8
template AA_DisableNativeVirtualKeyboard*(_: type ApplicationAttributeEnum): untyped = 9
template AA_SynthesizeTouchForUnhandledMouseEvents*(_: type ApplicationAttributeEnum): untyped = 11
template AA_SynthesizeMouseForUnhandledTouchEvents*(_: type ApplicationAttributeEnum): untyped = 12
template AA_UseHighDpiPixmaps*(_: type ApplicationAttributeEnum): untyped = 13
template AA_ForceRasterWidgets*(_: type ApplicationAttributeEnum): untyped = 14
template AA_UseDesktopOpenGL*(_: type ApplicationAttributeEnum): untyped = 15
template AA_UseOpenGLES*(_: type ApplicationAttributeEnum): untyped = 16
template AA_UseSoftwareOpenGL*(_: type ApplicationAttributeEnum): untyped = 17
template AA_ShareOpenGLContexts*(_: type ApplicationAttributeEnum): untyped = 18
template AA_SetPalette*(_: type ApplicationAttributeEnum): untyped = 19
template AA_EnableHighDpiScaling*(_: type ApplicationAttributeEnum): untyped = 20
template AA_DisableHighDpiScaling*(_: type ApplicationAttributeEnum): untyped = 21
template AA_UseStyleSheetPropagationInWidgetStyles*(_: type ApplicationAttributeEnum): untyped = 22
template AA_DontUseNativeDialogs*(_: type ApplicationAttributeEnum): untyped = 23
template AA_SynthesizeMouseForUnhandledTabletEvents*(_: type ApplicationAttributeEnum): untyped = 24
template AA_CompressHighFrequencyEvents*(_: type ApplicationAttributeEnum): untyped = 25
template AA_DontCheckOpenGLContextThreadAffinity*(_: type ApplicationAttributeEnum): untyped = 26
template AA_DisableShaderDiskCache*(_: type ApplicationAttributeEnum): untyped = 27
template AA_DontShowShortcutsInContextMenus*(_: type ApplicationAttributeEnum): untyped = 28
template AA_CompressTabletEvents*(_: type ApplicationAttributeEnum): untyped = 29
template AA_DisableSessionManager*(_: type ApplicationAttributeEnum): untyped = 31
template AA_AttributeCount*(_: type ApplicationAttributeEnum): untyped = 32


type ImageConversionFlagEnum* = distinct cint
template ColorMode_Mask*(_: type ImageConversionFlagEnum): untyped = 3
template AutoColor*(_: type ImageConversionFlagEnum): untyped = 0
template ColorOnly*(_: type ImageConversionFlagEnum): untyped = 3
template MonoOnly*(_: type ImageConversionFlagEnum): untyped = 2
template AlphaDither_Mask*(_: type ImageConversionFlagEnum): untyped = 12
template ThresholdAlphaDither*(_: type ImageConversionFlagEnum): untyped = 0
template OrderedAlphaDither*(_: type ImageConversionFlagEnum): untyped = 4
template DiffuseAlphaDither*(_: type ImageConversionFlagEnum): untyped = 8
template NoAlpha*(_: type ImageConversionFlagEnum): untyped = 12
template Dither_Mask*(_: type ImageConversionFlagEnum): untyped = 48
template DiffuseDither*(_: type ImageConversionFlagEnum): untyped = 0
template OrderedDither*(_: type ImageConversionFlagEnum): untyped = 16
template ThresholdDither*(_: type ImageConversionFlagEnum): untyped = 32
template DitherMode_Mask*(_: type ImageConversionFlagEnum): untyped = 192
template AutoDither*(_: type ImageConversionFlagEnum): untyped = 0
template PreferDither*(_: type ImageConversionFlagEnum): untyped = 64
template AvoidDither*(_: type ImageConversionFlagEnum): untyped = 128
template NoOpaqueDetection*(_: type ImageConversionFlagEnum): untyped = 256
template NoFormatConversion*(_: type ImageConversionFlagEnum): untyped = 512


type BGModeEnum* = distinct cint
template TransparentMode*(_: type BGModeEnum): untyped = 0
template OpaqueMode*(_: type BGModeEnum): untyped = 1


type KeyEnum* = distinct cint
template Key_Space*(_: type KeyEnum): untyped = 32
template Key_Any*(_: type KeyEnum): untyped = 32
template Key_Exclam*(_: type KeyEnum): untyped = 33
template Key_QuoteDbl*(_: type KeyEnum): untyped = 34
template Key_NumberSign*(_: type KeyEnum): untyped = 35
template Key_Dollar*(_: type KeyEnum): untyped = 36
template Key_Percent*(_: type KeyEnum): untyped = 37
template Key_Ampersand*(_: type KeyEnum): untyped = 38
template Key_Apostrophe*(_: type KeyEnum): untyped = 39
template Key_ParenLeft*(_: type KeyEnum): untyped = 40
template Key_ParenRight*(_: type KeyEnum): untyped = 41
template Key_Asterisk*(_: type KeyEnum): untyped = 42
template Key_Plus*(_: type KeyEnum): untyped = 43
template Key_Comma*(_: type KeyEnum): untyped = 44
template Key_Minus*(_: type KeyEnum): untyped = 45
template Key_Period*(_: type KeyEnum): untyped = 46
template Key_Slash*(_: type KeyEnum): untyped = 47
template Key_0*(_: type KeyEnum): untyped = 48
template Key_1*(_: type KeyEnum): untyped = 49
template Key_2*(_: type KeyEnum): untyped = 50
template Key_3*(_: type KeyEnum): untyped = 51
template Key_4*(_: type KeyEnum): untyped = 52
template Key_5*(_: type KeyEnum): untyped = 53
template Key_6*(_: type KeyEnum): untyped = 54
template Key_7*(_: type KeyEnum): untyped = 55
template Key_8*(_: type KeyEnum): untyped = 56
template Key_9*(_: type KeyEnum): untyped = 57
template Key_Colon*(_: type KeyEnum): untyped = 58
template Key_Semicolon*(_: type KeyEnum): untyped = 59
template Key_Less*(_: type KeyEnum): untyped = 60
template Key_Equal*(_: type KeyEnum): untyped = 61
template Key_Greater*(_: type KeyEnum): untyped = 62
template Key_Question*(_: type KeyEnum): untyped = 63
template Key_At*(_: type KeyEnum): untyped = 64
template Key_A*(_: type KeyEnum): untyped = 65
template Key_B*(_: type KeyEnum): untyped = 66
template Key_C*(_: type KeyEnum): untyped = 67
template Key_D*(_: type KeyEnum): untyped = 68
template Key_E*(_: type KeyEnum): untyped = 69
template Key_F*(_: type KeyEnum): untyped = 70
template Key_G*(_: type KeyEnum): untyped = 71
template Key_H*(_: type KeyEnum): untyped = 72
template Key_I*(_: type KeyEnum): untyped = 73
template Key_J*(_: type KeyEnum): untyped = 74
template Key_K*(_: type KeyEnum): untyped = 75
template Key_L*(_: type KeyEnum): untyped = 76
template Key_M*(_: type KeyEnum): untyped = 77
template Key_N*(_: type KeyEnum): untyped = 78
template Key_O*(_: type KeyEnum): untyped = 79
template Key_P*(_: type KeyEnum): untyped = 80
template Key_Q*(_: type KeyEnum): untyped = 81
template Key_R*(_: type KeyEnum): untyped = 82
template Key_S*(_: type KeyEnum): untyped = 83
template Key_T*(_: type KeyEnum): untyped = 84
template Key_U*(_: type KeyEnum): untyped = 85
template Key_V*(_: type KeyEnum): untyped = 86
template Key_W*(_: type KeyEnum): untyped = 87
template Key_X*(_: type KeyEnum): untyped = 88
template Key_Y*(_: type KeyEnum): untyped = 89
template Key_Z*(_: type KeyEnum): untyped = 90
template Key_BracketLeft*(_: type KeyEnum): untyped = 91
template Key_Backslash*(_: type KeyEnum): untyped = 92
template Key_BracketRight*(_: type KeyEnum): untyped = 93
template Key_AsciiCircum*(_: type KeyEnum): untyped = 94
template Key_Underscore*(_: type KeyEnum): untyped = 95
template Key_QuoteLeft*(_: type KeyEnum): untyped = 96
template Key_BraceLeft*(_: type KeyEnum): untyped = 123
template Key_Bar*(_: type KeyEnum): untyped = 124
template Key_BraceRight*(_: type KeyEnum): untyped = 125
template Key_AsciiTilde*(_: type KeyEnum): untyped = 126
template Key_nobreakspace*(_: type KeyEnum): untyped = 160
template Key_exclamdown*(_: type KeyEnum): untyped = 161
template Key_cent*(_: type KeyEnum): untyped = 162
template Key_sterling*(_: type KeyEnum): untyped = 163
template Key_currency*(_: type KeyEnum): untyped = 164
template Key_yen*(_: type KeyEnum): untyped = 165
template Key_brokenbar*(_: type KeyEnum): untyped = 166
template Key_section*(_: type KeyEnum): untyped = 167
template Key_diaeresis*(_: type KeyEnum): untyped = 168
template Key_copyright*(_: type KeyEnum): untyped = 169
template Key_ordfeminine*(_: type KeyEnum): untyped = 170
template Key_guillemotleft*(_: type KeyEnum): untyped = 171
template Key_notsign*(_: type KeyEnum): untyped = 172
template Key_hyphen*(_: type KeyEnum): untyped = 173
template Key_registered*(_: type KeyEnum): untyped = 174
template Key_macron*(_: type KeyEnum): untyped = 175
template Key_degree*(_: type KeyEnum): untyped = 176
template Key_plusminus*(_: type KeyEnum): untyped = 177
template Key_twosuperior*(_: type KeyEnum): untyped = 178
template Key_threesuperior*(_: type KeyEnum): untyped = 179
template Key_acute*(_: type KeyEnum): untyped = 180
template Key_mu*(_: type KeyEnum): untyped = 181
template Key_paragraph*(_: type KeyEnum): untyped = 182
template Key_periodcentered*(_: type KeyEnum): untyped = 183
template Key_cedilla*(_: type KeyEnum): untyped = 184
template Key_onesuperior*(_: type KeyEnum): untyped = 185
template Key_masculine*(_: type KeyEnum): untyped = 186
template Key_guillemotright*(_: type KeyEnum): untyped = 187
template Key_onequarter*(_: type KeyEnum): untyped = 188
template Key_onehalf*(_: type KeyEnum): untyped = 189
template Key_threequarters*(_: type KeyEnum): untyped = 190
template Key_questiondown*(_: type KeyEnum): untyped = 191
template Key_Agrave*(_: type KeyEnum): untyped = 192
template Key_Aacute*(_: type KeyEnum): untyped = 193
template Key_Acircumflex*(_: type KeyEnum): untyped = 194
template Key_Atilde*(_: type KeyEnum): untyped = 195
template Key_Adiaeresis*(_: type KeyEnum): untyped = 196
template Key_Aring*(_: type KeyEnum): untyped = 197
template Key_AE*(_: type KeyEnum): untyped = 198
template Key_Ccedilla*(_: type KeyEnum): untyped = 199
template Key_Egrave*(_: type KeyEnum): untyped = 200
template Key_Eacute*(_: type KeyEnum): untyped = 201
template Key_Ecircumflex*(_: type KeyEnum): untyped = 202
template Key_Ediaeresis*(_: type KeyEnum): untyped = 203
template Key_Igrave*(_: type KeyEnum): untyped = 204
template Key_Iacute*(_: type KeyEnum): untyped = 205
template Key_Icircumflex*(_: type KeyEnum): untyped = 206
template Key_Idiaeresis*(_: type KeyEnum): untyped = 207
template Key_ETH*(_: type KeyEnum): untyped = 208
template Key_Ntilde*(_: type KeyEnum): untyped = 209
template Key_Ograve*(_: type KeyEnum): untyped = 210
template Key_Oacute*(_: type KeyEnum): untyped = 211
template Key_Ocircumflex*(_: type KeyEnum): untyped = 212
template Key_Otilde*(_: type KeyEnum): untyped = 213
template Key_Odiaeresis*(_: type KeyEnum): untyped = 214
template Key_multiply*(_: type KeyEnum): untyped = 215
template Key_Ooblique*(_: type KeyEnum): untyped = 216
template Key_Ugrave*(_: type KeyEnum): untyped = 217
template Key_Uacute*(_: type KeyEnum): untyped = 218
template Key_Ucircumflex*(_: type KeyEnum): untyped = 219
template Key_Udiaeresis*(_: type KeyEnum): untyped = 220
template Key_Yacute*(_: type KeyEnum): untyped = 221
template Key_THORN*(_: type KeyEnum): untyped = 222
template Key_ssharp*(_: type KeyEnum): untyped = 223
template Key_division*(_: type KeyEnum): untyped = 247
template Key_ydiaeresis*(_: type KeyEnum): untyped = 255
template Key_Escape*(_: type KeyEnum): untyped = 16777216
template Key_Tab*(_: type KeyEnum): untyped = 16777217
template Key_Backtab*(_: type KeyEnum): untyped = 16777218
template Key_Backspace*(_: type KeyEnum): untyped = 16777219
template Key_Return*(_: type KeyEnum): untyped = 16777220
template Key_Enter*(_: type KeyEnum): untyped = 16777221
template Key_Insert*(_: type KeyEnum): untyped = 16777222
template Key_Delete*(_: type KeyEnum): untyped = 16777223
template Key_Pause*(_: type KeyEnum): untyped = 16777224
template Key_Print*(_: type KeyEnum): untyped = 16777225
template Key_SysReq*(_: type KeyEnum): untyped = 16777226
template Key_Clear*(_: type KeyEnum): untyped = 16777227
template Key_Home*(_: type KeyEnum): untyped = 16777232
template Key_End*(_: type KeyEnum): untyped = 16777233
template Key_Left*(_: type KeyEnum): untyped = 16777234
template Key_Up*(_: type KeyEnum): untyped = 16777235
template Key_Right*(_: type KeyEnum): untyped = 16777236
template Key_Down*(_: type KeyEnum): untyped = 16777237
template Key_PageUp*(_: type KeyEnum): untyped = 16777238
template Key_PageDown*(_: type KeyEnum): untyped = 16777239
template Key_Shift*(_: type KeyEnum): untyped = 16777248
template Key_Control*(_: type KeyEnum): untyped = 16777249
template Key_Meta*(_: type KeyEnum): untyped = 16777250
template Key_Alt*(_: type KeyEnum): untyped = 16777251
template Key_CapsLock*(_: type KeyEnum): untyped = 16777252
template Key_NumLock*(_: type KeyEnum): untyped = 16777253
template Key_ScrollLock*(_: type KeyEnum): untyped = 16777254
template Key_F1*(_: type KeyEnum): untyped = 16777264
template Key_F2*(_: type KeyEnum): untyped = 16777265
template Key_F3*(_: type KeyEnum): untyped = 16777266
template Key_F4*(_: type KeyEnum): untyped = 16777267
template Key_F5*(_: type KeyEnum): untyped = 16777268
template Key_F6*(_: type KeyEnum): untyped = 16777269
template Key_F7*(_: type KeyEnum): untyped = 16777270
template Key_F8*(_: type KeyEnum): untyped = 16777271
template Key_F9*(_: type KeyEnum): untyped = 16777272
template Key_F10*(_: type KeyEnum): untyped = 16777273
template Key_F11*(_: type KeyEnum): untyped = 16777274
template Key_F12*(_: type KeyEnum): untyped = 16777275
template Key_F13*(_: type KeyEnum): untyped = 16777276
template Key_F14*(_: type KeyEnum): untyped = 16777277
template Key_F15*(_: type KeyEnum): untyped = 16777278
template Key_F16*(_: type KeyEnum): untyped = 16777279
template Key_F17*(_: type KeyEnum): untyped = 16777280
template Key_F18*(_: type KeyEnum): untyped = 16777281
template Key_F19*(_: type KeyEnum): untyped = 16777282
template Key_F20*(_: type KeyEnum): untyped = 16777283
template Key_F21*(_: type KeyEnum): untyped = 16777284
template Key_F22*(_: type KeyEnum): untyped = 16777285
template Key_F23*(_: type KeyEnum): untyped = 16777286
template Key_F24*(_: type KeyEnum): untyped = 16777287
template Key_F25*(_: type KeyEnum): untyped = 16777288
template Key_F26*(_: type KeyEnum): untyped = 16777289
template Key_F27*(_: type KeyEnum): untyped = 16777290
template Key_F28*(_: type KeyEnum): untyped = 16777291
template Key_F29*(_: type KeyEnum): untyped = 16777292
template Key_F30*(_: type KeyEnum): untyped = 16777293
template Key_F31*(_: type KeyEnum): untyped = 16777294
template Key_F32*(_: type KeyEnum): untyped = 16777295
template Key_F33*(_: type KeyEnum): untyped = 16777296
template Key_F34*(_: type KeyEnum): untyped = 16777297
template Key_F35*(_: type KeyEnum): untyped = 16777298
template Key_Super_L*(_: type KeyEnum): untyped = 16777299
template Key_Super_R*(_: type KeyEnum): untyped = 16777300
template Key_Menu*(_: type KeyEnum): untyped = 16777301
template Key_Hyper_L*(_: type KeyEnum): untyped = 16777302
template Key_Hyper_R*(_: type KeyEnum): untyped = 16777303
template Key_Help*(_: type KeyEnum): untyped = 16777304
template Key_Direction_L*(_: type KeyEnum): untyped = 16777305
template Key_Direction_R*(_: type KeyEnum): untyped = 16777312
template Key_AltGr*(_: type KeyEnum): untyped = 16781571
template Key_Multi_key*(_: type KeyEnum): untyped = 16781600
template Key_Codeinput*(_: type KeyEnum): untyped = 16781623
template Key_SingleCandidate*(_: type KeyEnum): untyped = 16781628
template Key_MultipleCandidate*(_: type KeyEnum): untyped = 16781629
template Key_PreviousCandidate*(_: type KeyEnum): untyped = 16781630
template Key_Mode_switch*(_: type KeyEnum): untyped = 16781694
template Key_Kanji*(_: type KeyEnum): untyped = 16781601
template Key_Muhenkan*(_: type KeyEnum): untyped = 16781602
template Key_Henkan*(_: type KeyEnum): untyped = 16781603
template Key_Romaji*(_: type KeyEnum): untyped = 16781604
template Key_Hiragana*(_: type KeyEnum): untyped = 16781605
template Key_Katakana*(_: type KeyEnum): untyped = 16781606
template Key_Hiragana_Katakana*(_: type KeyEnum): untyped = 16781607
template Key_Zenkaku*(_: type KeyEnum): untyped = 16781608
template Key_Hankaku*(_: type KeyEnum): untyped = 16781609
template Key_Zenkaku_Hankaku*(_: type KeyEnum): untyped = 16781610
template Key_Touroku*(_: type KeyEnum): untyped = 16781611
template Key_Massyo*(_: type KeyEnum): untyped = 16781612
template Key_Kana_Lock*(_: type KeyEnum): untyped = 16781613
template Key_Kana_Shift*(_: type KeyEnum): untyped = 16781614
template Key_Eisu_Shift*(_: type KeyEnum): untyped = 16781615
template Key_Eisu_toggle*(_: type KeyEnum): untyped = 16781616
template Key_Hangul*(_: type KeyEnum): untyped = 16781617
template Key_Hangul_Start*(_: type KeyEnum): untyped = 16781618
template Key_Hangul_End*(_: type KeyEnum): untyped = 16781619
template Key_Hangul_Hanja*(_: type KeyEnum): untyped = 16781620
template Key_Hangul_Jamo*(_: type KeyEnum): untyped = 16781621
template Key_Hangul_Romaja*(_: type KeyEnum): untyped = 16781622
template Key_Hangul_Jeonja*(_: type KeyEnum): untyped = 16781624
template Key_Hangul_Banja*(_: type KeyEnum): untyped = 16781625
template Key_Hangul_PreHanja*(_: type KeyEnum): untyped = 16781626
template Key_Hangul_PostHanja*(_: type KeyEnum): untyped = 16781627
template Key_Hangul_Special*(_: type KeyEnum): untyped = 16781631
template Key_Dead_Grave*(_: type KeyEnum): untyped = 16781904
template Key_Dead_Acute*(_: type KeyEnum): untyped = 16781905
template Key_Dead_Circumflex*(_: type KeyEnum): untyped = 16781906
template Key_Dead_Tilde*(_: type KeyEnum): untyped = 16781907
template Key_Dead_Macron*(_: type KeyEnum): untyped = 16781908
template Key_Dead_Breve*(_: type KeyEnum): untyped = 16781909
template Key_Dead_Abovedot*(_: type KeyEnum): untyped = 16781910
template Key_Dead_Diaeresis*(_: type KeyEnum): untyped = 16781911
template Key_Dead_Abovering*(_: type KeyEnum): untyped = 16781912
template Key_Dead_Doubleacute*(_: type KeyEnum): untyped = 16781913
template Key_Dead_Caron*(_: type KeyEnum): untyped = 16781914
template Key_Dead_Cedilla*(_: type KeyEnum): untyped = 16781915
template Key_Dead_Ogonek*(_: type KeyEnum): untyped = 16781916
template Key_Dead_Iota*(_: type KeyEnum): untyped = 16781917
template Key_Dead_Voiced_Sound*(_: type KeyEnum): untyped = 16781918
template Key_Dead_Semivoiced_Sound*(_: type KeyEnum): untyped = 16781919
template Key_Dead_Belowdot*(_: type KeyEnum): untyped = 16781920
template Key_Dead_Hook*(_: type KeyEnum): untyped = 16781921
template Key_Dead_Horn*(_: type KeyEnum): untyped = 16781922
template Key_Dead_Stroke*(_: type KeyEnum): untyped = 16781923
template Key_Dead_Abovecomma*(_: type KeyEnum): untyped = 16781924
template Key_Dead_Abovereversedcomma*(_: type KeyEnum): untyped = 16781925
template Key_Dead_Doublegrave*(_: type KeyEnum): untyped = 16781926
template Key_Dead_Belowring*(_: type KeyEnum): untyped = 16781927
template Key_Dead_Belowmacron*(_: type KeyEnum): untyped = 16781928
template Key_Dead_Belowcircumflex*(_: type KeyEnum): untyped = 16781929
template Key_Dead_Belowtilde*(_: type KeyEnum): untyped = 16781930
template Key_Dead_Belowbreve*(_: type KeyEnum): untyped = 16781931
template Key_Dead_Belowdiaeresis*(_: type KeyEnum): untyped = 16781932
template Key_Dead_Invertedbreve*(_: type KeyEnum): untyped = 16781933
template Key_Dead_Belowcomma*(_: type KeyEnum): untyped = 16781934
template Key_Dead_Currency*(_: type KeyEnum): untyped = 16781935
template Key_Dead_a*(_: type KeyEnum): untyped = 16781952
template Key_Dead_A2*(_: type KeyEnum): untyped = 16781953
template Key_Dead_e*(_: type KeyEnum): untyped = 16781954
template Key_Dead_E2*(_: type KeyEnum): untyped = 16781955
template Key_Dead_i*(_: type KeyEnum): untyped = 16781956
template Key_Dead_I2*(_: type KeyEnum): untyped = 16781957
template Key_Dead_o*(_: type KeyEnum): untyped = 16781958
template Key_Dead_O2*(_: type KeyEnum): untyped = 16781959
template Key_Dead_u*(_: type KeyEnum): untyped = 16781960
template Key_Dead_U2*(_: type KeyEnum): untyped = 16781961
template Key_Dead_Small_Schwa*(_: type KeyEnum): untyped = 16781962
template Key_Dead_Capital_Schwa*(_: type KeyEnum): untyped = 16781963
template Key_Dead_Greek*(_: type KeyEnum): untyped = 16781964
template Key_Dead_Lowline*(_: type KeyEnum): untyped = 16781968
template Key_Dead_Aboveverticalline*(_: type KeyEnum): untyped = 16781969
template Key_Dead_Belowverticalline*(_: type KeyEnum): untyped = 16781970
template Key_Dead_Longsolidusoverlay*(_: type KeyEnum): untyped = 16781971
template Key_Back*(_: type KeyEnum): untyped = 16777313
template Key_Forward*(_: type KeyEnum): untyped = 16777314
template Key_Stop*(_: type KeyEnum): untyped = 16777315
template Key_Refresh*(_: type KeyEnum): untyped = 16777316
template Key_VolumeDown*(_: type KeyEnum): untyped = 16777328
template Key_VolumeMute*(_: type KeyEnum): untyped = 16777329
template Key_VolumeUp*(_: type KeyEnum): untyped = 16777330
template Key_BassBoost*(_: type KeyEnum): untyped = 16777331
template Key_BassUp*(_: type KeyEnum): untyped = 16777332
template Key_BassDown*(_: type KeyEnum): untyped = 16777333
template Key_TrebleUp*(_: type KeyEnum): untyped = 16777334
template Key_TrebleDown*(_: type KeyEnum): untyped = 16777335
template Key_MediaPlay*(_: type KeyEnum): untyped = 16777344
template Key_MediaStop*(_: type KeyEnum): untyped = 16777345
template Key_MediaPrevious*(_: type KeyEnum): untyped = 16777346
template Key_MediaNext*(_: type KeyEnum): untyped = 16777347
template Key_MediaRecord*(_: type KeyEnum): untyped = 16777348
template Key_MediaPause*(_: type KeyEnum): untyped = 16777349
template Key_MediaTogglePlayPause*(_: type KeyEnum): untyped = 16777350
template Key_HomePage*(_: type KeyEnum): untyped = 16777360
template Key_Favorites*(_: type KeyEnum): untyped = 16777361
template Key_Search*(_: type KeyEnum): untyped = 16777362
template Key_Standby*(_: type KeyEnum): untyped = 16777363
template Key_OpenUrl*(_: type KeyEnum): untyped = 16777364
template Key_LaunchMail*(_: type KeyEnum): untyped = 16777376
template Key_LaunchMedia*(_: type KeyEnum): untyped = 16777377
template Key_Launch0*(_: type KeyEnum): untyped = 16777378
template Key_Launch1*(_: type KeyEnum): untyped = 16777379
template Key_Launch2*(_: type KeyEnum): untyped = 16777380
template Key_Launch3*(_: type KeyEnum): untyped = 16777381
template Key_Launch4*(_: type KeyEnum): untyped = 16777382
template Key_Launch5*(_: type KeyEnum): untyped = 16777383
template Key_Launch6*(_: type KeyEnum): untyped = 16777384
template Key_Launch7*(_: type KeyEnum): untyped = 16777385
template Key_Launch8*(_: type KeyEnum): untyped = 16777386
template Key_Launch9*(_: type KeyEnum): untyped = 16777387
template Key_LaunchA*(_: type KeyEnum): untyped = 16777388
template Key_LaunchB*(_: type KeyEnum): untyped = 16777389
template Key_LaunchC*(_: type KeyEnum): untyped = 16777390
template Key_LaunchD*(_: type KeyEnum): untyped = 16777391
template Key_LaunchE*(_: type KeyEnum): untyped = 16777392
template Key_LaunchF*(_: type KeyEnum): untyped = 16777393
template Key_MonBrightnessUp*(_: type KeyEnum): untyped = 16777394
template Key_MonBrightnessDown*(_: type KeyEnum): untyped = 16777395
template Key_KeyboardLightOnOff*(_: type KeyEnum): untyped = 16777396
template Key_KeyboardBrightnessUp*(_: type KeyEnum): untyped = 16777397
template Key_KeyboardBrightnessDown*(_: type KeyEnum): untyped = 16777398
template Key_PowerOff*(_: type KeyEnum): untyped = 16777399
template Key_WakeUp*(_: type KeyEnum): untyped = 16777400
template Key_Eject*(_: type KeyEnum): untyped = 16777401
template Key_ScreenSaver*(_: type KeyEnum): untyped = 16777402
template Key_WWW*(_: type KeyEnum): untyped = 16777403
template Key_Memo*(_: type KeyEnum): untyped = 16777404
template Key_LightBulb*(_: type KeyEnum): untyped = 16777405
template Key_Shop*(_: type KeyEnum): untyped = 16777406
template Key_History*(_: type KeyEnum): untyped = 16777407
template Key_AddFavorite*(_: type KeyEnum): untyped = 16777408
template Key_HotLinks*(_: type KeyEnum): untyped = 16777409
template Key_BrightnessAdjust*(_: type KeyEnum): untyped = 16777410
template Key_Finance*(_: type KeyEnum): untyped = 16777411
template Key_Community*(_: type KeyEnum): untyped = 16777412
template Key_AudioRewind*(_: type KeyEnum): untyped = 16777413
template Key_BackForward*(_: type KeyEnum): untyped = 16777414
template Key_ApplicationLeft*(_: type KeyEnum): untyped = 16777415
template Key_ApplicationRight*(_: type KeyEnum): untyped = 16777416
template Key_Book*(_: type KeyEnum): untyped = 16777417
template Key_CD*(_: type KeyEnum): untyped = 16777418
template Key_Calculator*(_: type KeyEnum): untyped = 16777419
template Key_ToDoList*(_: type KeyEnum): untyped = 16777420
template Key_ClearGrab*(_: type KeyEnum): untyped = 16777421
template Key_Close*(_: type KeyEnum): untyped = 16777422
template Key_Copy*(_: type KeyEnum): untyped = 16777423
template Key_Cut*(_: type KeyEnum): untyped = 16777424
template Key_Display*(_: type KeyEnum): untyped = 16777425
template Key_DOS*(_: type KeyEnum): untyped = 16777426
template Key_Documents*(_: type KeyEnum): untyped = 16777427
template Key_Excel*(_: type KeyEnum): untyped = 16777428
template Key_Explorer*(_: type KeyEnum): untyped = 16777429
template Key_Game*(_: type KeyEnum): untyped = 16777430
template Key_Go*(_: type KeyEnum): untyped = 16777431
template Key_iTouch*(_: type KeyEnum): untyped = 16777432
template Key_LogOff*(_: type KeyEnum): untyped = 16777433
template Key_Market*(_: type KeyEnum): untyped = 16777434
template Key_Meeting*(_: type KeyEnum): untyped = 16777435
template Key_MenuKB*(_: type KeyEnum): untyped = 16777436
template Key_MenuPB*(_: type KeyEnum): untyped = 16777437
template Key_MySites*(_: type KeyEnum): untyped = 16777438
template Key_News*(_: type KeyEnum): untyped = 16777439
template Key_OfficeHome*(_: type KeyEnum): untyped = 16777440
template Key_Option*(_: type KeyEnum): untyped = 16777441
template Key_Paste*(_: type KeyEnum): untyped = 16777442
template Key_Phone*(_: type KeyEnum): untyped = 16777443
template Key_Calendar*(_: type KeyEnum): untyped = 16777444
template Key_Reply*(_: type KeyEnum): untyped = 16777445
template Key_Reload*(_: type KeyEnum): untyped = 16777446
template Key_RotateWindows*(_: type KeyEnum): untyped = 16777447
template Key_RotationPB*(_: type KeyEnum): untyped = 16777448
template Key_RotationKB*(_: type KeyEnum): untyped = 16777449
template Key_Save*(_: type KeyEnum): untyped = 16777450
template Key_Send*(_: type KeyEnum): untyped = 16777451
template Key_Spell*(_: type KeyEnum): untyped = 16777452
template Key_SplitScreen*(_: type KeyEnum): untyped = 16777453
template Key_Support*(_: type KeyEnum): untyped = 16777454
template Key_TaskPane*(_: type KeyEnum): untyped = 16777455
template Key_Terminal*(_: type KeyEnum): untyped = 16777456
template Key_Tools*(_: type KeyEnum): untyped = 16777457
template Key_Travel*(_: type KeyEnum): untyped = 16777458
template Key_Video*(_: type KeyEnum): untyped = 16777459
template Key_Word*(_: type KeyEnum): untyped = 16777460
template Key_Xfer*(_: type KeyEnum): untyped = 16777461
template Key_ZoomIn*(_: type KeyEnum): untyped = 16777462
template Key_ZoomOut*(_: type KeyEnum): untyped = 16777463
template Key_Away*(_: type KeyEnum): untyped = 16777464
template Key_Messenger*(_: type KeyEnum): untyped = 16777465
template Key_WebCam*(_: type KeyEnum): untyped = 16777466
template Key_MailForward*(_: type KeyEnum): untyped = 16777467
template Key_Pictures*(_: type KeyEnum): untyped = 16777468
template Key_Music*(_: type KeyEnum): untyped = 16777469
template Key_Battery*(_: type KeyEnum): untyped = 16777470
template Key_Bluetooth*(_: type KeyEnum): untyped = 16777471
template Key_WLAN*(_: type KeyEnum): untyped = 16777472
template Key_UWB*(_: type KeyEnum): untyped = 16777473
template Key_AudioForward*(_: type KeyEnum): untyped = 16777474
template Key_AudioRepeat*(_: type KeyEnum): untyped = 16777475
template Key_AudioRandomPlay*(_: type KeyEnum): untyped = 16777476
template Key_Subtitle*(_: type KeyEnum): untyped = 16777477
template Key_AudioCycleTrack*(_: type KeyEnum): untyped = 16777478
template Key_Time*(_: type KeyEnum): untyped = 16777479
template Key_Hibernate*(_: type KeyEnum): untyped = 16777480
template Key_View*(_: type KeyEnum): untyped = 16777481
template Key_TopMenu*(_: type KeyEnum): untyped = 16777482
template Key_PowerDown*(_: type KeyEnum): untyped = 16777483
template Key_Suspend*(_: type KeyEnum): untyped = 16777484
template Key_ContrastAdjust*(_: type KeyEnum): untyped = 16777485
template Key_LaunchG*(_: type KeyEnum): untyped = 16777486
template Key_LaunchH*(_: type KeyEnum): untyped = 16777487
template Key_TouchpadToggle*(_: type KeyEnum): untyped = 16777488
template Key_TouchpadOn*(_: type KeyEnum): untyped = 16777489
template Key_TouchpadOff*(_: type KeyEnum): untyped = 16777490
template Key_MicMute*(_: type KeyEnum): untyped = 16777491
template Key_Red*(_: type KeyEnum): untyped = 16777492
template Key_Green*(_: type KeyEnum): untyped = 16777493
template Key_Yellow*(_: type KeyEnum): untyped = 16777494
template Key_Blue*(_: type KeyEnum): untyped = 16777495
template Key_ChannelUp*(_: type KeyEnum): untyped = 16777496
template Key_ChannelDown*(_: type KeyEnum): untyped = 16777497
template Key_Guide*(_: type KeyEnum): untyped = 16777498
template Key_Info*(_: type KeyEnum): untyped = 16777499
template Key_Settings*(_: type KeyEnum): untyped = 16777500
template Key_MicVolumeUp*(_: type KeyEnum): untyped = 16777501
template Key_MicVolumeDown*(_: type KeyEnum): untyped = 16777502
template Key_New*(_: type KeyEnum): untyped = 16777504
template Key_Open*(_: type KeyEnum): untyped = 16777505
template Key_Find*(_: type KeyEnum): untyped = 16777506
template Key_Undo*(_: type KeyEnum): untyped = 16777507
template Key_Redo*(_: type KeyEnum): untyped = 16777508
template Key_MediaLast*(_: type KeyEnum): untyped = 16842751
template Key_Select*(_: type KeyEnum): untyped = 16842752
template Key_Yes*(_: type KeyEnum): untyped = 16842753
template Key_No*(_: type KeyEnum): untyped = 16842754
template Key_Cancel*(_: type KeyEnum): untyped = 16908289
template Key_Printer*(_: type KeyEnum): untyped = 16908290
template Key_Execute*(_: type KeyEnum): untyped = 16908291
template Key_Sleep*(_: type KeyEnum): untyped = 16908292
template Key_Play*(_: type KeyEnum): untyped = 16908293
template Key_Zoom*(_: type KeyEnum): untyped = 16908294
template Key_Exit*(_: type KeyEnum): untyped = 16908298
template Key_Context1*(_: type KeyEnum): untyped = 17825792
template Key_Context2*(_: type KeyEnum): untyped = 17825793
template Key_Context3*(_: type KeyEnum): untyped = 17825794
template Key_Context4*(_: type KeyEnum): untyped = 17825795
template Key_Call*(_: type KeyEnum): untyped = 17825796
template Key_Hangup*(_: type KeyEnum): untyped = 17825797
template Key_Flip*(_: type KeyEnum): untyped = 17825798
template Key_ToggleCallHangup*(_: type KeyEnum): untyped = 17825799
template Key_VoiceDial*(_: type KeyEnum): untyped = 17825800
template Key_LastNumberRedial*(_: type KeyEnum): untyped = 17825801
template Key_Camera*(_: type KeyEnum): untyped = 17825824
template Key_CameraFocus*(_: type KeyEnum): untyped = 17825825
template Key_unknown*(_: type KeyEnum): untyped = 33554431


type KeyboardModifierEnum* = distinct cint
template NoModifier*(_: type KeyboardModifierEnum): untyped = 0
template ShiftModifier*(_: type KeyboardModifierEnum): untyped = 33554432
template ControlModifier*(_: type KeyboardModifierEnum): untyped = 67108864
template AltModifier*(_: type KeyboardModifierEnum): untyped = 134217728
template MetaModifier*(_: type KeyboardModifierEnum): untyped = 268435456
template KeypadModifier*(_: type KeyboardModifierEnum): untyped = 536870912
template GroupSwitchModifier*(_: type KeyboardModifierEnum): untyped = 1073741824
template KeyboardModifierMask*(_: type KeyboardModifierEnum): untyped = 4261412864


type ModifierEnum* = distinct cint
template META*(_: type ModifierEnum): untyped = 268435456
template SHIFT*(_: type ModifierEnum): untyped = 33554432
template CTRL*(_: type ModifierEnum): untyped = 67108864
template ALT*(_: type ModifierEnum): untyped = 134217728
template MODIFIER_MASK*(_: type ModifierEnum): untyped = 4261412864


type ArrowTypeEnum* = distinct cint
template NoArrow*(_: type ArrowTypeEnum): untyped = 0
template UpArrow*(_: type ArrowTypeEnum): untyped = 1
template DownArrow*(_: type ArrowTypeEnum): untyped = 2
template LeftArrow*(_: type ArrowTypeEnum): untyped = 3
template RightArrow*(_: type ArrowTypeEnum): untyped = 4


type PenStyleEnum* = distinct cint
template NoPen*(_: type PenStyleEnum): untyped = 0
template SolidLine*(_: type PenStyleEnum): untyped = 1
template DashLine*(_: type PenStyleEnum): untyped = 2
template DotLine*(_: type PenStyleEnum): untyped = 3
template DashDotLine*(_: type PenStyleEnum): untyped = 4
template DashDotDotLine*(_: type PenStyleEnum): untyped = 5
template CustomDashLine*(_: type PenStyleEnum): untyped = 6
template MPenStyle*(_: type PenStyleEnum): untyped = 15


type PenCapStyleEnum* = distinct cint
template FlatCap*(_: type PenCapStyleEnum): untyped = 0
template SquareCap*(_: type PenCapStyleEnum): untyped = 16
template RoundCap*(_: type PenCapStyleEnum): untyped = 32
template MPenCapStyle*(_: type PenCapStyleEnum): untyped = 48


type PenJoinStyleEnum* = distinct cint
template MiterJoin*(_: type PenJoinStyleEnum): untyped = 0
template BevelJoin*(_: type PenJoinStyleEnum): untyped = 64
template RoundJoin*(_: type PenJoinStyleEnum): untyped = 128
template SvgMiterJoin*(_: type PenJoinStyleEnum): untyped = 256
template MPenJoinStyle*(_: type PenJoinStyleEnum): untyped = 448


type BrushStyleEnum* = distinct cint
template NoBrush*(_: type BrushStyleEnum): untyped = 0
template SolidPattern*(_: type BrushStyleEnum): untyped = 1
template Dense1Pattern*(_: type BrushStyleEnum): untyped = 2
template Dense2Pattern*(_: type BrushStyleEnum): untyped = 3
template Dense3Pattern*(_: type BrushStyleEnum): untyped = 4
template Dense4Pattern*(_: type BrushStyleEnum): untyped = 5
template Dense5Pattern*(_: type BrushStyleEnum): untyped = 6
template Dense6Pattern*(_: type BrushStyleEnum): untyped = 7
template Dense7Pattern*(_: type BrushStyleEnum): untyped = 8
template HorPattern*(_: type BrushStyleEnum): untyped = 9
template VerPattern*(_: type BrushStyleEnum): untyped = 10
template CrossPattern*(_: type BrushStyleEnum): untyped = 11
template BDiagPattern*(_: type BrushStyleEnum): untyped = 12
template FDiagPattern*(_: type BrushStyleEnum): untyped = 13
template DiagCrossPattern*(_: type BrushStyleEnum): untyped = 14
template LinearGradientPattern*(_: type BrushStyleEnum): untyped = 15
template RadialGradientPattern*(_: type BrushStyleEnum): untyped = 16
template ConicalGradientPattern*(_: type BrushStyleEnum): untyped = 17
template TexturePattern*(_: type BrushStyleEnum): untyped = 24


type SizeModeEnum* = distinct cint
template AbsoluteSize*(_: type SizeModeEnum): untyped = 0
template RelativeSize*(_: type SizeModeEnum): untyped = 1


type UIEffectEnum* = distinct cint
template UI_General*(_: type UIEffectEnum): untyped = 0
template UI_AnimateMenu*(_: type UIEffectEnum): untyped = 1
template UI_FadeMenu*(_: type UIEffectEnum): untyped = 2
template UI_AnimateCombo*(_: type UIEffectEnum): untyped = 3
template UI_AnimateTooltip*(_: type UIEffectEnum): untyped = 4
template UI_FadeTooltip*(_: type UIEffectEnum): untyped = 5
template UI_AnimateToolBox*(_: type UIEffectEnum): untyped = 6


type CursorShapeEnum* = distinct cint
template ArrowCursor*(_: type CursorShapeEnum): untyped = 0
template UpArrowCursor*(_: type CursorShapeEnum): untyped = 1
template CrossCursor*(_: type CursorShapeEnum): untyped = 2
template WaitCursor*(_: type CursorShapeEnum): untyped = 3
template IBeamCursor*(_: type CursorShapeEnum): untyped = 4
template SizeVerCursor*(_: type CursorShapeEnum): untyped = 5
template SizeHorCursor*(_: type CursorShapeEnum): untyped = 6
template SizeBDiagCursor*(_: type CursorShapeEnum): untyped = 7
template SizeFDiagCursor*(_: type CursorShapeEnum): untyped = 8
template SizeAllCursor*(_: type CursorShapeEnum): untyped = 9
template BlankCursor*(_: type CursorShapeEnum): untyped = 10
template SplitVCursor*(_: type CursorShapeEnum): untyped = 11
template SplitHCursor*(_: type CursorShapeEnum): untyped = 12
template PointingHandCursor*(_: type CursorShapeEnum): untyped = 13
template ForbiddenCursor*(_: type CursorShapeEnum): untyped = 14
template WhatsThisCursor*(_: type CursorShapeEnum): untyped = 15
template BusyCursor*(_: type CursorShapeEnum): untyped = 16
template OpenHandCursor*(_: type CursorShapeEnum): untyped = 17
template ClosedHandCursor*(_: type CursorShapeEnum): untyped = 18
template DragCopyCursor*(_: type CursorShapeEnum): untyped = 19
template DragMoveCursor*(_: type CursorShapeEnum): untyped = 20
template DragLinkCursor*(_: type CursorShapeEnum): untyped = 21
template LastCursor*(_: type CursorShapeEnum): untyped = 21
template BitmapCursor*(_: type CursorShapeEnum): untyped = 24
template CustomCursor*(_: type CursorShapeEnum): untyped = 25


type TextFormatEnum* = distinct cint
template PlainText*(_: type TextFormatEnum): untyped = 0
template RichText*(_: type TextFormatEnum): untyped = 1
template AutoText*(_: type TextFormatEnum): untyped = 2
template MarkdownText*(_: type TextFormatEnum): untyped = 3


type AspectRatioModeEnum* = distinct cint
template IgnoreAspectRatio*(_: type AspectRatioModeEnum): untyped = 0
template KeepAspectRatio*(_: type AspectRatioModeEnum): untyped = 1
template KeepAspectRatioByExpanding*(_: type AspectRatioModeEnum): untyped = 2


type DockWidgetAreaEnum* = distinct cint
template LeftDockWidgetArea*(_: type DockWidgetAreaEnum): untyped = 1
template RightDockWidgetArea*(_: type DockWidgetAreaEnum): untyped = 2
template TopDockWidgetArea*(_: type DockWidgetAreaEnum): untyped = 4
template BottomDockWidgetArea*(_: type DockWidgetAreaEnum): untyped = 8
template DockWidgetArea_Mask*(_: type DockWidgetAreaEnum): untyped = 15
template AllDockWidgetAreas*(_: type DockWidgetAreaEnum): untyped = 15
template NoDockWidgetArea*(_: type DockWidgetAreaEnum): untyped = 0


type DockWidgetAreaSizesEnum* = distinct cint
template NDockWidgetAreas*(_: type DockWidgetAreaSizesEnum): untyped = 4


type ToolBarAreaEnum* = distinct cint
template LeftToolBarArea*(_: type ToolBarAreaEnum): untyped = 1
template RightToolBarArea*(_: type ToolBarAreaEnum): untyped = 2
template TopToolBarArea*(_: type ToolBarAreaEnum): untyped = 4
template BottomToolBarArea*(_: type ToolBarAreaEnum): untyped = 8
template ToolBarArea_Mask*(_: type ToolBarAreaEnum): untyped = 15
template AllToolBarAreas*(_: type ToolBarAreaEnum): untyped = 15
template NoToolBarArea*(_: type ToolBarAreaEnum): untyped = 0


type ToolBarAreaSizesEnum* = distinct cint
template NToolBarAreas*(_: type ToolBarAreaSizesEnum): untyped = 4


type DateFormatEnum* = distinct cint
template TextDate*(_: type DateFormatEnum): untyped = 0
template ISODate*(_: type DateFormatEnum): untyped = 1
template RFC2822Date*(_: type DateFormatEnum): untyped = 8
template ISODateWithMs*(_: type DateFormatEnum): untyped = 9


type TimeSpecEnum* = distinct cint
template LocalTime*(_: type TimeSpecEnum): untyped = 0
template UTC*(_: type TimeSpecEnum): untyped = 1
template OffsetFromUTC*(_: type TimeSpecEnum): untyped = 2
template TimeZone*(_: type TimeSpecEnum): untyped = 3


type DayOfWeekEnum* = distinct cint
template Monday*(_: type DayOfWeekEnum): untyped = 1
template Tuesday*(_: type DayOfWeekEnum): untyped = 2
template Wednesday*(_: type DayOfWeekEnum): untyped = 3
template Thursday*(_: type DayOfWeekEnum): untyped = 4
template Friday*(_: type DayOfWeekEnum): untyped = 5
template Saturday*(_: type DayOfWeekEnum): untyped = 6
template Sunday*(_: type DayOfWeekEnum): untyped = 7


type ScrollBarPolicyEnum* = distinct cint
template ScrollBarAsNeeded*(_: type ScrollBarPolicyEnum): untyped = 0
template ScrollBarAlwaysOff*(_: type ScrollBarPolicyEnum): untyped = 1
template ScrollBarAlwaysOn*(_: type ScrollBarPolicyEnum): untyped = 2


type CaseSensitivityEnum* = distinct cint
template CaseInsensitive*(_: type CaseSensitivityEnum): untyped = 0
template CaseSensitive*(_: type CaseSensitivityEnum): untyped = 1


type CornerEnum* = distinct cint
template TopLeftCorner*(_: type CornerEnum): untyped = 0
template TopRightCorner*(_: type CornerEnum): untyped = 1
template BottomLeftCorner*(_: type CornerEnum): untyped = 2
template BottomRightCorner*(_: type CornerEnum): untyped = 3


type EdgeEnum* = distinct cint
template TopEdge*(_: type EdgeEnum): untyped = 1
template LeftEdge*(_: type EdgeEnum): untyped = 2
template RightEdge*(_: type EdgeEnum): untyped = 4
template BottomEdge*(_: type EdgeEnum): untyped = 8


type ConnectionTypeEnum* = distinct cint
template AutoConnection*(_: type ConnectionTypeEnum): untyped = 0
template DirectConnection*(_: type ConnectionTypeEnum): untyped = 1
template QueuedConnection*(_: type ConnectionTypeEnum): untyped = 2
template BlockingQueuedConnection*(_: type ConnectionTypeEnum): untyped = 3
template UniqueConnection*(_: type ConnectionTypeEnum): untyped = 128
template SingleShotConnection*(_: type ConnectionTypeEnum): untyped = 256


type ShortcutContextEnum* = distinct cint
template WidgetShortcut*(_: type ShortcutContextEnum): untyped = 0
template WindowShortcut*(_: type ShortcutContextEnum): untyped = 1
template ApplicationShortcut*(_: type ShortcutContextEnum): untyped = 2
template WidgetWithChildrenShortcut*(_: type ShortcutContextEnum): untyped = 3


type FillRuleEnum* = distinct cint
template OddEvenFill*(_: type FillRuleEnum): untyped = 0
template WindingFill*(_: type FillRuleEnum): untyped = 1


type MaskModeEnum* = distinct cint
template MaskInColor*(_: type MaskModeEnum): untyped = 0
template MaskOutColor*(_: type MaskModeEnum): untyped = 1


type ClipOperationEnum* = distinct cint
template NoClip*(_: type ClipOperationEnum): untyped = 0
template ReplaceClip*(_: type ClipOperationEnum): untyped = 1
template IntersectClip*(_: type ClipOperationEnum): untyped = 2


type ItemSelectionModeEnum* = distinct cint
template ContainsItemShape*(_: type ItemSelectionModeEnum): untyped = 0
template IntersectsItemShape*(_: type ItemSelectionModeEnum): untyped = 1
template ContainsItemBoundingRect*(_: type ItemSelectionModeEnum): untyped = 2
template IntersectsItemBoundingRect*(_: type ItemSelectionModeEnum): untyped = 3


type ItemSelectionOperationEnum* = distinct cint
template ReplaceSelection*(_: type ItemSelectionOperationEnum): untyped = 0
template AddToSelection*(_: type ItemSelectionOperationEnum): untyped = 1


type TransformationModeEnum* = distinct cint
template FastTransformation*(_: type TransformationModeEnum): untyped = 0
template SmoothTransformation*(_: type TransformationModeEnum): untyped = 1


type AxisEnum* = distinct cint
template XAxis*(_: type AxisEnum): untyped = 0
template YAxis*(_: type AxisEnum): untyped = 1
template ZAxis*(_: type AxisEnum): untyped = 2


type FocusReasonEnum* = distinct cint
template MouseFocusReason*(_: type FocusReasonEnum): untyped = 0
template TabFocusReason*(_: type FocusReasonEnum): untyped = 1
template BacktabFocusReason*(_: type FocusReasonEnum): untyped = 2
template ActiveWindowFocusReason*(_: type FocusReasonEnum): untyped = 3
template PopupFocusReason*(_: type FocusReasonEnum): untyped = 4
template ShortcutFocusReason*(_: type FocusReasonEnum): untyped = 5
template MenuBarFocusReason*(_: type FocusReasonEnum): untyped = 6
template OtherFocusReason*(_: type FocusReasonEnum): untyped = 7
template NoFocusReason*(_: type FocusReasonEnum): untyped = 8


type ContextMenuPolicyEnum* = distinct cint
template NoContextMenu*(_: type ContextMenuPolicyEnum): untyped = 0
template DefaultContextMenu*(_: type ContextMenuPolicyEnum): untyped = 1
template ActionsContextMenu*(_: type ContextMenuPolicyEnum): untyped = 2
template CustomContextMenu*(_: type ContextMenuPolicyEnum): untyped = 3
template PreventContextMenu*(_: type ContextMenuPolicyEnum): untyped = 4


type InputMethodQueryEnum* = distinct cint
template ImEnabled*(_: type InputMethodQueryEnum): untyped = 1
template ImCursorRectangle*(_: type InputMethodQueryEnum): untyped = 2
template ImFont*(_: type InputMethodQueryEnum): untyped = 4
template ImCursorPosition*(_: type InputMethodQueryEnum): untyped = 8
template ImSurroundingText*(_: type InputMethodQueryEnum): untyped = 16
template ImCurrentSelection*(_: type InputMethodQueryEnum): untyped = 32
template ImMaximumTextLength*(_: type InputMethodQueryEnum): untyped = 64
template ImAnchorPosition*(_: type InputMethodQueryEnum): untyped = 128
template ImHints*(_: type InputMethodQueryEnum): untyped = 256
template ImPreferredLanguage*(_: type InputMethodQueryEnum): untyped = 512
template ImAbsolutePosition*(_: type InputMethodQueryEnum): untyped = 1024
template ImTextBeforeCursor*(_: type InputMethodQueryEnum): untyped = 2048
template ImTextAfterCursor*(_: type InputMethodQueryEnum): untyped = 4096
template ImEnterKeyType*(_: type InputMethodQueryEnum): untyped = 8192
template ImAnchorRectangle*(_: type InputMethodQueryEnum): untyped = 16384
template ImInputItemClipRectangle*(_: type InputMethodQueryEnum): untyped = 32768
template ImReadOnly*(_: type InputMethodQueryEnum): untyped = 65536
template ImPlatformData*(_: type InputMethodQueryEnum): untyped = 2147483648
template ImQueryInput*(_: type InputMethodQueryEnum): untyped = 16570
template ImQueryAll*(_: type InputMethodQueryEnum): untyped = 4294967295


type InputMethodHintEnum* = distinct cint
template ImhNone*(_: type InputMethodHintEnum): untyped = 0
template ImhHiddenText*(_: type InputMethodHintEnum): untyped = 1
template ImhSensitiveData*(_: type InputMethodHintEnum): untyped = 2
template ImhNoAutoUppercase*(_: type InputMethodHintEnum): untyped = 4
template ImhPreferNumbers*(_: type InputMethodHintEnum): untyped = 8
template ImhPreferUppercase*(_: type InputMethodHintEnum): untyped = 16
template ImhPreferLowercase*(_: type InputMethodHintEnum): untyped = 32
template ImhNoPredictiveText*(_: type InputMethodHintEnum): untyped = 64
template ImhDate*(_: type InputMethodHintEnum): untyped = 128
template ImhTime*(_: type InputMethodHintEnum): untyped = 256
template ImhPreferLatin*(_: type InputMethodHintEnum): untyped = 512
template ImhMultiLine*(_: type InputMethodHintEnum): untyped = 1024
template ImhNoEditMenu*(_: type InputMethodHintEnum): untyped = 2048
template ImhNoTextHandles*(_: type InputMethodHintEnum): untyped = 4096
template ImhDigitsOnly*(_: type InputMethodHintEnum): untyped = 65536
template ImhFormattedNumbersOnly*(_: type InputMethodHintEnum): untyped = 131072
template ImhUppercaseOnly*(_: type InputMethodHintEnum): untyped = 262144
template ImhLowercaseOnly*(_: type InputMethodHintEnum): untyped = 524288
template ImhDialableCharactersOnly*(_: type InputMethodHintEnum): untyped = 1048576
template ImhEmailCharactersOnly*(_: type InputMethodHintEnum): untyped = 2097152
template ImhUrlCharactersOnly*(_: type InputMethodHintEnum): untyped = 4194304
template ImhLatinOnly*(_: type InputMethodHintEnum): untyped = 8388608
template ImhExclusiveInputMask*(_: type InputMethodHintEnum): untyped = 4294901760


type EnterKeyTypeEnum* = distinct cint
template EnterKeyDefault*(_: type EnterKeyTypeEnum): untyped = 0
template EnterKeyReturn*(_: type EnterKeyTypeEnum): untyped = 1
template EnterKeyDone*(_: type EnterKeyTypeEnum): untyped = 2
template EnterKeyGo*(_: type EnterKeyTypeEnum): untyped = 3
template EnterKeySend*(_: type EnterKeyTypeEnum): untyped = 4
template EnterKeySearch*(_: type EnterKeyTypeEnum): untyped = 5
template EnterKeyNext*(_: type EnterKeyTypeEnum): untyped = 6
template EnterKeyPrevious*(_: type EnterKeyTypeEnum): untyped = 7


type ToolButtonStyleEnum* = distinct cint
template ToolButtonIconOnly*(_: type ToolButtonStyleEnum): untyped = 0
template ToolButtonTextOnly*(_: type ToolButtonStyleEnum): untyped = 1
template ToolButtonTextBesideIcon*(_: type ToolButtonStyleEnum): untyped = 2
template ToolButtonTextUnderIcon*(_: type ToolButtonStyleEnum): untyped = 3
template ToolButtonFollowStyle*(_: type ToolButtonStyleEnum): untyped = 4


type LayoutDirectionEnum* = distinct cint
template LeftToRight*(_: type LayoutDirectionEnum): untyped = 0
template RightToLeft*(_: type LayoutDirectionEnum): untyped = 1
template LayoutDirectionAuto*(_: type LayoutDirectionEnum): untyped = 2


type AnchorPointEnum* = distinct cint
template AnchorLeft*(_: type AnchorPointEnum): untyped = 0
template AnchorHorizontalCenter*(_: type AnchorPointEnum): untyped = 1
template AnchorRight*(_: type AnchorPointEnum): untyped = 2
template AnchorTop*(_: type AnchorPointEnum): untyped = 3
template AnchorVerticalCenter*(_: type AnchorPointEnum): untyped = 4
template AnchorBottom*(_: type AnchorPointEnum): untyped = 5


type FindChildOptionEnum* = distinct cint
template FindDirectChildrenOnly*(_: type FindChildOptionEnum): untyped = 0
template FindChildrenRecursively*(_: type FindChildOptionEnum): untyped = 1


type DropActionEnum* = distinct cint
template CopyAction*(_: type DropActionEnum): untyped = 1
template MoveAction*(_: type DropActionEnum): untyped = 2
template LinkAction*(_: type DropActionEnum): untyped = 4
template ActionMask*(_: type DropActionEnum): untyped = 255
template TargetMoveAction*(_: type DropActionEnum): untyped = 32770
template IgnoreAction*(_: type DropActionEnum): untyped = 0


type CheckStateEnum* = distinct cint
template Unchecked*(_: type CheckStateEnum): untyped = 0
template PartiallyChecked*(_: type CheckStateEnum): untyped = 1
template Checked*(_: type CheckStateEnum): untyped = 2


type ItemDataRoleEnum* = distinct cint
template DisplayRole*(_: type ItemDataRoleEnum): untyped = 0
template DecorationRole*(_: type ItemDataRoleEnum): untyped = 1
template EditRole*(_: type ItemDataRoleEnum): untyped = 2
template ToolTipRole*(_: type ItemDataRoleEnum): untyped = 3
template StatusTipRole*(_: type ItemDataRoleEnum): untyped = 4
template WhatsThisRole*(_: type ItemDataRoleEnum): untyped = 5
template FontRole*(_: type ItemDataRoleEnum): untyped = 6
template TextAlignmentRole*(_: type ItemDataRoleEnum): untyped = 7
template BackgroundRole*(_: type ItemDataRoleEnum): untyped = 8
template ForegroundRole*(_: type ItemDataRoleEnum): untyped = 9
template CheckStateRole*(_: type ItemDataRoleEnum): untyped = 10
template AccessibleTextRole*(_: type ItemDataRoleEnum): untyped = 11
template AccessibleDescriptionRole*(_: type ItemDataRoleEnum): untyped = 12
template SizeHintRole*(_: type ItemDataRoleEnum): untyped = 13
template InitialSortOrderRole*(_: type ItemDataRoleEnum): untyped = 14
template DisplayPropertyRole*(_: type ItemDataRoleEnum): untyped = 27
template DecorationPropertyRole*(_: type ItemDataRoleEnum): untyped = 28
template ToolTipPropertyRole*(_: type ItemDataRoleEnum): untyped = 29
template StatusTipPropertyRole*(_: type ItemDataRoleEnum): untyped = 30
template WhatsThisPropertyRole*(_: type ItemDataRoleEnum): untyped = 31
template UserRole*(_: type ItemDataRoleEnum): untyped = 256


type ItemFlagEnum* = distinct cint
template NoItemFlags*(_: type ItemFlagEnum): untyped = 0
template ItemIsSelectable*(_: type ItemFlagEnum): untyped = 1
template ItemIsEditable*(_: type ItemFlagEnum): untyped = 2
template ItemIsDragEnabled*(_: type ItemFlagEnum): untyped = 4
template ItemIsDropEnabled*(_: type ItemFlagEnum): untyped = 8
template ItemIsUserCheckable*(_: type ItemFlagEnum): untyped = 16
template ItemIsEnabled*(_: type ItemFlagEnum): untyped = 32
template ItemIsAutoTristate*(_: type ItemFlagEnum): untyped = 64
template ItemNeverHasChildren*(_: type ItemFlagEnum): untyped = 128
template ItemIsUserTristate*(_: type ItemFlagEnum): untyped = 256


type MatchFlagEnum* = distinct cint
template MatchExactly*(_: type MatchFlagEnum): untyped = 0
template MatchContains*(_: type MatchFlagEnum): untyped = 1
template MatchStartsWith*(_: type MatchFlagEnum): untyped = 2
template MatchEndsWith*(_: type MatchFlagEnum): untyped = 3
template MatchRegularExpression*(_: type MatchFlagEnum): untyped = 4
template MatchWildcard*(_: type MatchFlagEnum): untyped = 5
template MatchFixedString*(_: type MatchFlagEnum): untyped = 8
template MatchTypeMask*(_: type MatchFlagEnum): untyped = 15
template MatchCaseSensitive*(_: type MatchFlagEnum): untyped = 16
template MatchWrap*(_: type MatchFlagEnum): untyped = 32
template MatchRecursive*(_: type MatchFlagEnum): untyped = 64


type WindowModalityEnum* = distinct cint
template NonModal*(_: type WindowModalityEnum): untyped = 0
template WindowModal*(_: type WindowModalityEnum): untyped = 1
template ApplicationModal*(_: type WindowModalityEnum): untyped = 2


type TextInteractionFlagEnum* = distinct cint
template NoTextInteraction*(_: type TextInteractionFlagEnum): untyped = 0
template TextSelectableByMouse*(_: type TextInteractionFlagEnum): untyped = 1
template TextSelectableByKeyboard*(_: type TextInteractionFlagEnum): untyped = 2
template LinksAccessibleByMouse*(_: type TextInteractionFlagEnum): untyped = 4
template LinksAccessibleByKeyboard*(_: type TextInteractionFlagEnum): untyped = 8
template TextEditable*(_: type TextInteractionFlagEnum): untyped = 16
template TextEditorInteraction*(_: type TextInteractionFlagEnum): untyped = 19
template TextBrowserInteraction*(_: type TextInteractionFlagEnum): untyped = 13


type EventPriorityEnum* = distinct cint
template HighEventPriority*(_: type EventPriorityEnum): untyped = 1
template NormalEventPriority*(_: type EventPriorityEnum): untyped = 0
template LowEventPriority*(_: type EventPriorityEnum): untyped = -1


type SizeHintEnum* = distinct cint
template MinimumSize*(_: type SizeHintEnum): untyped = 0
template PreferredSize*(_: type SizeHintEnum): untyped = 1
template MaximumSize*(_: type SizeHintEnum): untyped = 2
template MinimumDescent*(_: type SizeHintEnum): untyped = 3
template NSizeHints*(_: type SizeHintEnum): untyped = 4


type WindowFrameSectionEnum* = distinct cint
template NoSection*(_: type WindowFrameSectionEnum): untyped = 0
template LeftSection*(_: type WindowFrameSectionEnum): untyped = 1
template TopLeftSection*(_: type WindowFrameSectionEnum): untyped = 2
template TopSection*(_: type WindowFrameSectionEnum): untyped = 3
template TopRightSection*(_: type WindowFrameSectionEnum): untyped = 4
template RightSection*(_: type WindowFrameSectionEnum): untyped = 5
template BottomRightSection*(_: type WindowFrameSectionEnum): untyped = 6
template BottomSection*(_: type WindowFrameSectionEnum): untyped = 7
template BottomLeftSection*(_: type WindowFrameSectionEnum): untyped = 8
template TitleBarArea*(_: type WindowFrameSectionEnum): untyped = 9


type InitializationEnum* = distinct cint
template Uninitialized*(_: type InitializationEnum): untyped = 0


type CoordinateSystemEnum* = distinct cint
template DeviceCoordinates*(_: type CoordinateSystemEnum): untyped = 0
template LogicalCoordinates*(_: type CoordinateSystemEnum): untyped = 1


type TouchPointStateEnum* = distinct cint
template TouchPointUnknownState*(_: type TouchPointStateEnum): untyped = 0
template TouchPointPressed*(_: type TouchPointStateEnum): untyped = 1
template TouchPointMoved*(_: type TouchPointStateEnum): untyped = 2
template TouchPointStationary*(_: type TouchPointStateEnum): untyped = 4
template TouchPointReleased*(_: type TouchPointStateEnum): untyped = 8


type GestureStateEnum* = distinct cint
template NoGesture*(_: type GestureStateEnum): untyped = 0
template GestureStarted*(_: type GestureStateEnum): untyped = 1
template GestureUpdated*(_: type GestureStateEnum): untyped = 2
template GestureFinished*(_: type GestureStateEnum): untyped = 3
template GestureCanceled*(_: type GestureStateEnum): untyped = 4


type GestureTypeEnum* = distinct cint
template TapGesture*(_: type GestureTypeEnum): untyped = 1
template TapAndHoldGesture*(_: type GestureTypeEnum): untyped = 2
template PanGesture*(_: type GestureTypeEnum): untyped = 3
template PinchGesture*(_: type GestureTypeEnum): untyped = 4
template SwipeGesture*(_: type GestureTypeEnum): untyped = 5
template CustomGesture*(_: type GestureTypeEnum): untyped = 256
template LastGestureType*(_: type GestureTypeEnum): untyped = 4294967295


type GestureFlagEnum* = distinct cint
template DontStartGestureOnChildren*(_: type GestureFlagEnum): untyped = 1
template ReceivePartialGestures*(_: type GestureFlagEnum): untyped = 2
template IgnoredGesturesPropagateToParent*(_: type GestureFlagEnum): untyped = 4


type NativeGestureTypeEnum* = distinct cint
template BeginNativeGesture*(_: type NativeGestureTypeEnum): untyped = 0
template EndNativeGesture*(_: type NativeGestureTypeEnum): untyped = 1
template PanNativeGesture*(_: type NativeGestureTypeEnum): untyped = 2
template ZoomNativeGesture*(_: type NativeGestureTypeEnum): untyped = 3
template SmartZoomNativeGesture*(_: type NativeGestureTypeEnum): untyped = 4
template RotateNativeGesture*(_: type NativeGestureTypeEnum): untyped = 5
template SwipeNativeGesture*(_: type NativeGestureTypeEnum): untyped = 6


type NavigationModeEnum* = distinct cint
template NavigationModeNone*(_: type NavigationModeEnum): untyped = 0
template NavigationModeKeypadTabOrder*(_: type NavigationModeEnum): untyped = 1
template NavigationModeKeypadDirectional*(_: type NavigationModeEnum): untyped = 2
template NavigationModeCursorAuto*(_: type NavigationModeEnum): untyped = 3
template NavigationModeCursorForceVisible*(_: type NavigationModeEnum): untyped = 4


type CursorMoveStyleEnum* = distinct cint
template LogicalMoveStyle*(_: type CursorMoveStyleEnum): untyped = 0
template VisualMoveStyle*(_: type CursorMoveStyleEnum): untyped = 1


type TimerTypeEnum* = distinct cint
template PreciseTimer*(_: type TimerTypeEnum): untyped = 0
template CoarseTimer*(_: type TimerTypeEnum): untyped = 1
template VeryCoarseTimer*(_: type TimerTypeEnum): untyped = 2


type ScrollPhaseEnum* = distinct cint
template NoScrollPhase*(_: type ScrollPhaseEnum): untyped = 0
template ScrollBegin*(_: type ScrollPhaseEnum): untyped = 1
template ScrollUpdate*(_: type ScrollPhaseEnum): untyped = 2
template ScrollEnd*(_: type ScrollPhaseEnum): untyped = 3
template ScrollMomentum*(_: type ScrollPhaseEnum): untyped = 4


type MouseEventSourceEnum* = distinct cint
template MouseEventNotSynthesized*(_: type MouseEventSourceEnum): untyped = 0
template MouseEventSynthesizedBySystem*(_: type MouseEventSourceEnum): untyped = 1
template MouseEventSynthesizedByQt*(_: type MouseEventSourceEnum): untyped = 2
template MouseEventSynthesizedByApplication*(_: type MouseEventSourceEnum): untyped = 3


type MouseEventFlagEnum* = distinct cint
template NoMouseEventFlag*(_: type MouseEventFlagEnum): untyped = 0
template MouseEventCreatedDoubleClick*(_: type MouseEventFlagEnum): untyped = 1
template MouseEventFlagMask*(_: type MouseEventFlagEnum): untyped = 255


type ChecksumTypeEnum* = distinct cint
template ChecksumIso3309*(_: type ChecksumTypeEnum): untyped = 0
template ChecksumItuV41*(_: type ChecksumTypeEnum): untyped = 1


type HighDpiScaleFactorRoundingPolicyEnum* = distinct cint
template Unset*(_: type HighDpiScaleFactorRoundingPolicyEnum): untyped = 0
template Round*(_: type HighDpiScaleFactorRoundingPolicyEnum): untyped = 1
template Ceil*(_: type HighDpiScaleFactorRoundingPolicyEnum): untyped = 2
template Floor*(_: type HighDpiScaleFactorRoundingPolicyEnum): untyped = 3
template RoundPreferFloor*(_: type HighDpiScaleFactorRoundingPolicyEnum): untyped = 4
template PassThrough*(_: type HighDpiScaleFactorRoundingPolicyEnum): untyped = 5


type ReturnByValueConstantEnum* = distinct cint
template ReturnByValue*(_: type ReturnByValueConstantEnum): untyped = 0


type QInternalPaintDeviceFlagsEnum* = distinct cint
template UnknownDevice*(_: type QInternalPaintDeviceFlagsEnum): untyped = 0
template Widget*(_: type QInternalPaintDeviceFlagsEnum): untyped = 1
template Pixmap*(_: type QInternalPaintDeviceFlagsEnum): untyped = 2
template Image*(_: type QInternalPaintDeviceFlagsEnum): untyped = 3
template Printer*(_: type QInternalPaintDeviceFlagsEnum): untyped = 4
template Picture*(_: type QInternalPaintDeviceFlagsEnum): untyped = 5
template Pbuffer*(_: type QInternalPaintDeviceFlagsEnum): untyped = 6
template FramebufferObject*(_: type QInternalPaintDeviceFlagsEnum): untyped = 7
template CustomRaster*(_: type QInternalPaintDeviceFlagsEnum): untyped = 8
template PaintBuffer*(_: type QInternalPaintDeviceFlagsEnum): untyped = 10
template OpenGL*(_: type QInternalPaintDeviceFlagsEnum): untyped = 11


type QInternalRelayoutTypeEnum* = distinct cint
template RelayoutNormal*(_: type QInternalRelayoutTypeEnum): untyped = 0
template RelayoutDragging*(_: type QInternalRelayoutTypeEnum): untyped = 1
template RelayoutDropped*(_: type QInternalRelayoutTypeEnum): untyped = 2


type QInternalDockPositionEnum* = distinct cint
template LeftDock*(_: type QInternalDockPositionEnum): untyped = 0
template RightDock*(_: type QInternalDockPositionEnum): untyped = 1
template TopDock*(_: type QInternalDockPositionEnum): untyped = 2
template BottomDock*(_: type QInternalDockPositionEnum): untyped = 3
template DockCount*(_: type QInternalDockPositionEnum): untyped = 4


type QInternalCallbackEnum* = distinct cint
template EventNotifyCallback*(_: type QInternalCallbackEnum): untyped = 0
template LastCallback*(_: type QInternalCallbackEnum): untyped = 1


import ./gen_qnamespace_types
export gen_qnamespace_types


type cDisambiguated_t*{.exportc: "Disambiguated_t", incompleteStruct.} = object
type cQInternal*{.exportc: "QInternal", incompleteStruct.} = object
type cQKeyCombination*{.exportc: "QKeyCombination", incompleteStruct.} = object

proc fcDisambiguated_t_new(): ptr cDisambiguated_t {.importc: "Disambiguated_t_new".}
proc fcDisambiguated_t_new2(param1: pointer): ptr cDisambiguated_t {.importc: "Disambiguated_t_new2".}
proc fcQInternal_activateCallbacks(param1: cint, param2: pointer): bool {.importc: "QInternal_activateCallbacks".}
proc fcQKeyCombination_keyboardModifiers(self: pointer): cint {.importc: "QKeyCombination_keyboardModifiers".}
proc fcQKeyCombination_key(self: pointer): cint {.importc: "QKeyCombination_key".}
proc fcQKeyCombination_fromCombined(combined: cint): pointer {.importc: "QKeyCombination_fromCombined".}
proc fcQKeyCombination_toCombined(self: pointer): cint {.importc: "QKeyCombination_toCombined".}
proc fcQKeyCombination_ToInt(self: pointer): cint {.importc: "QKeyCombination_ToInt".}
proc fcQKeyCombination_new(): ptr cQKeyCombination {.importc: "QKeyCombination_new".}
proc fcQKeyCombination_new2(modifiers: cint): ptr cQKeyCombination {.importc: "QKeyCombination_new2".}
proc fcQKeyCombination_new3(modifiers: cint): ptr cQKeyCombination {.importc: "QKeyCombination_new3".}
proc fcQKeyCombination_new4(param1: pointer): ptr cQKeyCombination {.importc: "QKeyCombination_new4".}
proc fcQKeyCombination_new5(key: cint): ptr cQKeyCombination {.importc: "QKeyCombination_new5".}
proc fcQKeyCombination_new6(modifiers: cint, key: cint): ptr cQKeyCombination {.importc: "QKeyCombination_new6".}
proc fcQKeyCombination_new7(modifiers: cint, key: cint): ptr cQKeyCombination {.importc: "QKeyCombination_new7".}

proc create*(T: type gen_qnamespace_types.Disambiguated_t): gen_qnamespace_types.Disambiguated_t =
  gen_qnamespace_types.Disambiguated_t(h: fcDisambiguated_t_new(), owned: true)

proc create*(T: type gen_qnamespace_types.Disambiguated_t,
    param1: gen_qnamespace_types.Disambiguated_t): gen_qnamespace_types.Disambiguated_t =
  gen_qnamespace_types.Disambiguated_t(h: fcDisambiguated_t_new2(param1.h), owned: true)

proc activateCallbacks*(_: type gen_qnamespace_types.QInternal, param1: cint, param2: pointer): bool =
  fcQInternal_activateCallbacks(cint(param1), param2)

proc keyboardModifiers*(self: gen_qnamespace_types.QKeyCombination): cint =
  cint(fcQKeyCombination_keyboardModifiers(self.h))

proc key*(self: gen_qnamespace_types.QKeyCombination): cint =
  cint(fcQKeyCombination_key(self.h))

proc fromCombined*(_: type gen_qnamespace_types.QKeyCombination, combined: cint): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyCombination_fromCombined(combined), owned: true)

proc toCombined*(self: gen_qnamespace_types.QKeyCombination): cint =
  fcQKeyCombination_toCombined(self.h)

proc ToInt*(self: gen_qnamespace_types.QKeyCombination): cint =
  fcQKeyCombination_ToInt(self.h)

proc create*(T: type gen_qnamespace_types.QKeyCombination): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyCombination_new(), owned: true)

proc create*(T: type gen_qnamespace_types.QKeyCombination,
    modifiers: cint): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyCombination_new2(cint(modifiers)), owned: true)

proc create2*(T: type gen_qnamespace_types.QKeyCombination,
    modifiers: cint): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyCombination_new3(cint(modifiers)), owned: true)

proc create*(T: type gen_qnamespace_types.QKeyCombination,
    param1: gen_qnamespace_types.QKeyCombination): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyCombination_new4(param1.h), owned: true)

proc create3*(T: type gen_qnamespace_types.QKeyCombination,
    key: cint): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyCombination_new5(cint(key)), owned: true)

proc create*(T: type gen_qnamespace_types.QKeyCombination,
    modifiers: cint, key: cint): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyCombination_new6(cint(modifiers), cint(key)), owned: true)

proc create2*(T: type gen_qnamespace_types.QKeyCombination,
    modifiers: cint, key: cint): gen_qnamespace_types.QKeyCombination =
  gen_qnamespace_types.QKeyCombination(h: fcQKeyCombination_new7(cint(modifiers), cint(key)), owned: true)

