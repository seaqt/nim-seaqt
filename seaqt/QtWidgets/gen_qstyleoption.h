#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QSTYLEOPTION_H
#define SEAQT_QTWIDGETS_GEN_QSTYLEOPTION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QBrush;
class QColor;
class QFont;
class QFontMetrics;
class QIcon;
class QLocale;
class QMatrix;
class QModelIndex;
class QObject;
class QPalette;
class QPoint;
class QRect;
class QRectF;
class QRegion;
class QSize;
class QStyleHintReturn;
class QStyleHintReturnMask;
class QStyleHintReturnVariant;
class QStyleOption;
class QStyleOptionButton;
class QStyleOptionComboBox;
class QStyleOptionComplex;
class QStyleOptionDockWidget;
class QStyleOptionFocusRect;
class QStyleOptionFrame;
class QStyleOptionGraphicsItem;
class QStyleOptionGroupBox;
class QStyleOptionHeader;
class QStyleOptionMenuItem;
class QStyleOptionProgressBar;
class QStyleOptionRubberBand;
class QStyleOptionSizeGrip;
class QStyleOptionSlider;
class QStyleOptionSpinBox;
class QStyleOptionTab;
class QStyleOptionTabBarBase;
class QStyleOptionTabV4;
class QStyleOptionTabWidgetFrame;
class QStyleOptionTitleBar;
class QStyleOptionToolBar;
class QStyleOptionToolBox;
class QStyleOptionToolButton;
class QStyleOptionViewItem;
class QTransform;
class QVariant;
class QWidget;
#else
typedef struct QBrush QBrush;
typedef struct QColor QColor;
typedef struct QFont QFont;
typedef struct QFontMetrics QFontMetrics;
typedef struct QIcon QIcon;
typedef struct QLocale QLocale;
typedef struct QMatrix QMatrix;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPalette QPalette;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QRegion QRegion;
typedef struct QSize QSize;
typedef struct QStyleHintReturn QStyleHintReturn;
typedef struct QStyleHintReturnMask QStyleHintReturnMask;
typedef struct QStyleHintReturnVariant QStyleHintReturnVariant;
typedef struct QStyleOption QStyleOption;
typedef struct QStyleOptionButton QStyleOptionButton;
typedef struct QStyleOptionComboBox QStyleOptionComboBox;
typedef struct QStyleOptionComplex QStyleOptionComplex;
typedef struct QStyleOptionDockWidget QStyleOptionDockWidget;
typedef struct QStyleOptionFocusRect QStyleOptionFocusRect;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QStyleOptionGraphicsItem QStyleOptionGraphicsItem;
typedef struct QStyleOptionGroupBox QStyleOptionGroupBox;
typedef struct QStyleOptionHeader QStyleOptionHeader;
typedef struct QStyleOptionMenuItem QStyleOptionMenuItem;
typedef struct QStyleOptionProgressBar QStyleOptionProgressBar;
typedef struct QStyleOptionRubberBand QStyleOptionRubberBand;
typedef struct QStyleOptionSizeGrip QStyleOptionSizeGrip;
typedef struct QStyleOptionSlider QStyleOptionSlider;
typedef struct QStyleOptionSpinBox QStyleOptionSpinBox;
typedef struct QStyleOptionTab QStyleOptionTab;
typedef struct QStyleOptionTabBarBase QStyleOptionTabBarBase;
typedef struct QStyleOptionTabV4 QStyleOptionTabV4;
typedef struct QStyleOptionTabWidgetFrame QStyleOptionTabWidgetFrame;
typedef struct QStyleOptionTitleBar QStyleOptionTitleBar;
typedef struct QStyleOptionToolBar QStyleOptionToolBar;
typedef struct QStyleOptionToolBox QStyleOptionToolBox;
typedef struct QStyleOptionToolButton QStyleOptionToolButton;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

QStyleOption* QStyleOption_new();
QStyleOption* QStyleOption_new_from(QStyleOption* from);
QStyleOption* QStyleOption_new_version(int version);
QStyleOption* QStyleOption_new_version_type(int version, int type);

int QStyleOption_version(const QStyleOption* self);
void QStyleOption_setVersion(QStyleOption* self, int version);
int QStyleOption_type(const QStyleOption* self);
void QStyleOption_setType(QStyleOption* self, int type);
int QStyleOption_state(const QStyleOption* self);
void QStyleOption_setState(QStyleOption* self, int state);
int QStyleOption_direction(const QStyleOption* self);
void QStyleOption_setDirection(QStyleOption* self, int direction);
QRect* QStyleOption_rect(const QStyleOption* self);
void QStyleOption_setRect(QStyleOption* self, QRect* rect);
QFontMetrics* QStyleOption_fontMetrics(const QStyleOption* self);
void QStyleOption_setFontMetrics(QStyleOption* self, QFontMetrics* fontMetrics);
QPalette* QStyleOption_palette(const QStyleOption* self);
void QStyleOption_setPalette(QStyleOption* self, QPalette* palette);
QObject* QStyleOption_styleObject(const QStyleOption* self);
void QStyleOption_setStyleObject(QStyleOption* self, QObject* styleObject);
void QStyleOption_init(QStyleOption* self, QWidget* w);
void QStyleOption_initFrom(QStyleOption* self, QWidget* w);
void QStyleOption_operatorAssign(QStyleOption* self, QStyleOption* from);

void QStyleOption_delete(QStyleOption* self);

QStyleOptionFocusRect* QStyleOptionFocusRect_new();
QStyleOptionFocusRect* QStyleOptionFocusRect_new_from(QStyleOptionFocusRect* from);

void QStyleOptionFocusRect_virtbase(QStyleOptionFocusRect* src, QStyleOption** outptr_QStyleOption);
QColor* QStyleOptionFocusRect_backgroundColor(const QStyleOptionFocusRect* self);
void QStyleOptionFocusRect_setBackgroundColor(QStyleOptionFocusRect* self, QColor* backgroundColor);
void QStyleOptionFocusRect_operatorAssign(QStyleOptionFocusRect* self, QStyleOptionFocusRect* from);

void QStyleOptionFocusRect_delete(QStyleOptionFocusRect* self);

QStyleOptionFrame* QStyleOptionFrame_new();
QStyleOptionFrame* QStyleOptionFrame_new_from(QStyleOptionFrame* from);

void QStyleOptionFrame_virtbase(QStyleOptionFrame* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionFrame_lineWidth(const QStyleOptionFrame* self);
void QStyleOptionFrame_setLineWidth(QStyleOptionFrame* self, int lineWidth);
int QStyleOptionFrame_midLineWidth(const QStyleOptionFrame* self);
void QStyleOptionFrame_setMidLineWidth(QStyleOptionFrame* self, int midLineWidth);
int QStyleOptionFrame_features(const QStyleOptionFrame* self);
void QStyleOptionFrame_setFeatures(QStyleOptionFrame* self, int features);
int QStyleOptionFrame_frameShape(const QStyleOptionFrame* self);
void QStyleOptionFrame_setFrameShape(QStyleOptionFrame* self, int frameShape);
void QStyleOptionFrame_operatorAssign(QStyleOptionFrame* self, QStyleOptionFrame* from);

void QStyleOptionFrame_delete(QStyleOptionFrame* self);

QStyleOptionTabWidgetFrame* QStyleOptionTabWidgetFrame_new();
QStyleOptionTabWidgetFrame* QStyleOptionTabWidgetFrame_new_from(QStyleOptionTabWidgetFrame* from);

void QStyleOptionTabWidgetFrame_virtbase(QStyleOptionTabWidgetFrame* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionTabWidgetFrame_lineWidth(const QStyleOptionTabWidgetFrame* self);
void QStyleOptionTabWidgetFrame_setLineWidth(QStyleOptionTabWidgetFrame* self, int lineWidth);
int QStyleOptionTabWidgetFrame_midLineWidth(const QStyleOptionTabWidgetFrame* self);
void QStyleOptionTabWidgetFrame_setMidLineWidth(QStyleOptionTabWidgetFrame* self, int midLineWidth);
int QStyleOptionTabWidgetFrame_shape(const QStyleOptionTabWidgetFrame* self);
void QStyleOptionTabWidgetFrame_setShape(QStyleOptionTabWidgetFrame* self, int shape);
QSize* QStyleOptionTabWidgetFrame_tabBarSize(const QStyleOptionTabWidgetFrame* self);
void QStyleOptionTabWidgetFrame_setTabBarSize(QStyleOptionTabWidgetFrame* self, QSize* tabBarSize);
QSize* QStyleOptionTabWidgetFrame_rightCornerWidgetSize(const QStyleOptionTabWidgetFrame* self);
void QStyleOptionTabWidgetFrame_setRightCornerWidgetSize(QStyleOptionTabWidgetFrame* self, QSize* rightCornerWidgetSize);
QSize* QStyleOptionTabWidgetFrame_leftCornerWidgetSize(const QStyleOptionTabWidgetFrame* self);
void QStyleOptionTabWidgetFrame_setLeftCornerWidgetSize(QStyleOptionTabWidgetFrame* self, QSize* leftCornerWidgetSize);
QRect* QStyleOptionTabWidgetFrame_tabBarRect(const QStyleOptionTabWidgetFrame* self);
void QStyleOptionTabWidgetFrame_setTabBarRect(QStyleOptionTabWidgetFrame* self, QRect* tabBarRect);
QRect* QStyleOptionTabWidgetFrame_selectedTabRect(const QStyleOptionTabWidgetFrame* self);
void QStyleOptionTabWidgetFrame_setSelectedTabRect(QStyleOptionTabWidgetFrame* self, QRect* selectedTabRect);
void QStyleOptionTabWidgetFrame_operatorAssign(QStyleOptionTabWidgetFrame* self, QStyleOptionTabWidgetFrame* from);

void QStyleOptionTabWidgetFrame_delete(QStyleOptionTabWidgetFrame* self);

QStyleOptionTabBarBase* QStyleOptionTabBarBase_new();
QStyleOptionTabBarBase* QStyleOptionTabBarBase_new_from(QStyleOptionTabBarBase* from);

void QStyleOptionTabBarBase_virtbase(QStyleOptionTabBarBase* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionTabBarBase_shape(const QStyleOptionTabBarBase* self);
void QStyleOptionTabBarBase_setShape(QStyleOptionTabBarBase* self, int shape);
QRect* QStyleOptionTabBarBase_tabBarRect(const QStyleOptionTabBarBase* self);
void QStyleOptionTabBarBase_setTabBarRect(QStyleOptionTabBarBase* self, QRect* tabBarRect);
QRect* QStyleOptionTabBarBase_selectedTabRect(const QStyleOptionTabBarBase* self);
void QStyleOptionTabBarBase_setSelectedTabRect(QStyleOptionTabBarBase* self, QRect* selectedTabRect);
bool QStyleOptionTabBarBase_documentMode(const QStyleOptionTabBarBase* self);
void QStyleOptionTabBarBase_setDocumentMode(QStyleOptionTabBarBase* self, bool documentMode);
void QStyleOptionTabBarBase_operatorAssign(QStyleOptionTabBarBase* self, QStyleOptionTabBarBase* from);

void QStyleOptionTabBarBase_delete(QStyleOptionTabBarBase* self);

QStyleOptionHeader* QStyleOptionHeader_new();
QStyleOptionHeader* QStyleOptionHeader_new_from(QStyleOptionHeader* from);

void QStyleOptionHeader_virtbase(QStyleOptionHeader* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionHeader_section(const QStyleOptionHeader* self);
void QStyleOptionHeader_setSection(QStyleOptionHeader* self, int section);
struct seaqt_string QStyleOptionHeader_text(const QStyleOptionHeader* self);
void QStyleOptionHeader_setText(QStyleOptionHeader* self, struct seaqt_string text);
int QStyleOptionHeader_textAlignment(const QStyleOptionHeader* self);
void QStyleOptionHeader_setTextAlignment(QStyleOptionHeader* self, int textAlignment);
QIcon* QStyleOptionHeader_icon(const QStyleOptionHeader* self);
void QStyleOptionHeader_setIcon(QStyleOptionHeader* self, QIcon* icon);
int QStyleOptionHeader_iconAlignment(const QStyleOptionHeader* self);
void QStyleOptionHeader_setIconAlignment(QStyleOptionHeader* self, int iconAlignment);
int QStyleOptionHeader_position(const QStyleOptionHeader* self);
void QStyleOptionHeader_setPosition(QStyleOptionHeader* self, int position);
int QStyleOptionHeader_selectedPosition(const QStyleOptionHeader* self);
void QStyleOptionHeader_setSelectedPosition(QStyleOptionHeader* self, int selectedPosition);
int QStyleOptionHeader_sortIndicator(const QStyleOptionHeader* self);
void QStyleOptionHeader_setSortIndicator(QStyleOptionHeader* self, int sortIndicator);
int QStyleOptionHeader_orientation(const QStyleOptionHeader* self);
void QStyleOptionHeader_setOrientation(QStyleOptionHeader* self, int orientation);
void QStyleOptionHeader_operatorAssign(QStyleOptionHeader* self, QStyleOptionHeader* from);

void QStyleOptionHeader_delete(QStyleOptionHeader* self);

QStyleOptionButton* QStyleOptionButton_new();
QStyleOptionButton* QStyleOptionButton_new_from(QStyleOptionButton* from);

void QStyleOptionButton_virtbase(QStyleOptionButton* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionButton_features(const QStyleOptionButton* self);
void QStyleOptionButton_setFeatures(QStyleOptionButton* self, int features);
struct seaqt_string QStyleOptionButton_text(const QStyleOptionButton* self);
void QStyleOptionButton_setText(QStyleOptionButton* self, struct seaqt_string text);
QIcon* QStyleOptionButton_icon(const QStyleOptionButton* self);
void QStyleOptionButton_setIcon(QStyleOptionButton* self, QIcon* icon);
QSize* QStyleOptionButton_iconSize(const QStyleOptionButton* self);
void QStyleOptionButton_setIconSize(QStyleOptionButton* self, QSize* iconSize);
void QStyleOptionButton_operatorAssign(QStyleOptionButton* self, QStyleOptionButton* from);

void QStyleOptionButton_delete(QStyleOptionButton* self);

QStyleOptionTab* QStyleOptionTab_new();
QStyleOptionTab* QStyleOptionTab_new_from(QStyleOptionTab* from);

void QStyleOptionTab_virtbase(QStyleOptionTab* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionTab_shape(const QStyleOptionTab* self);
void QStyleOptionTab_setShape(QStyleOptionTab* self, int shape);
struct seaqt_string QStyleOptionTab_text(const QStyleOptionTab* self);
void QStyleOptionTab_setText(QStyleOptionTab* self, struct seaqt_string text);
QIcon* QStyleOptionTab_icon(const QStyleOptionTab* self);
void QStyleOptionTab_setIcon(QStyleOptionTab* self, QIcon* icon);
int QStyleOptionTab_row(const QStyleOptionTab* self);
void QStyleOptionTab_setRow(QStyleOptionTab* self, int row);
int QStyleOptionTab_position(const QStyleOptionTab* self);
void QStyleOptionTab_setPosition(QStyleOptionTab* self, int position);
int QStyleOptionTab_selectedPosition(const QStyleOptionTab* self);
void QStyleOptionTab_setSelectedPosition(QStyleOptionTab* self, int selectedPosition);
int QStyleOptionTab_cornerWidgets(const QStyleOptionTab* self);
void QStyleOptionTab_setCornerWidgets(QStyleOptionTab* self, int cornerWidgets);
QSize* QStyleOptionTab_iconSize(const QStyleOptionTab* self);
void QStyleOptionTab_setIconSize(QStyleOptionTab* self, QSize* iconSize);
bool QStyleOptionTab_documentMode(const QStyleOptionTab* self);
void QStyleOptionTab_setDocumentMode(QStyleOptionTab* self, bool documentMode);
QSize* QStyleOptionTab_leftButtonSize(const QStyleOptionTab* self);
void QStyleOptionTab_setLeftButtonSize(QStyleOptionTab* self, QSize* leftButtonSize);
QSize* QStyleOptionTab_rightButtonSize(const QStyleOptionTab* self);
void QStyleOptionTab_setRightButtonSize(QStyleOptionTab* self, QSize* rightButtonSize);
int QStyleOptionTab_features(const QStyleOptionTab* self);
void QStyleOptionTab_setFeatures(QStyleOptionTab* self, int features);
void QStyleOptionTab_operatorAssign(QStyleOptionTab* self, QStyleOptionTab* from);

void QStyleOptionTab_delete(QStyleOptionTab* self);

QStyleOptionTabV4* QStyleOptionTabV4_new();
QStyleOptionTabV4* QStyleOptionTabV4_new_from(QStyleOptionTabV4* from);

void QStyleOptionTabV4_virtbase(QStyleOptionTabV4* src, QStyleOptionTab** outptr_QStyleOptionTab);
int QStyleOptionTabV4_tabIndex(const QStyleOptionTabV4* self);
void QStyleOptionTabV4_setTabIndex(QStyleOptionTabV4* self, int tabIndex);
void QStyleOptionTabV4_operatorAssign(QStyleOptionTabV4* self, QStyleOptionTabV4* from);

void QStyleOptionTabV4_delete(QStyleOptionTabV4* self);

QStyleOptionToolBar* QStyleOptionToolBar_new();
QStyleOptionToolBar* QStyleOptionToolBar_new_from(QStyleOptionToolBar* from);

void QStyleOptionToolBar_virtbase(QStyleOptionToolBar* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionToolBar_positionOfLine(const QStyleOptionToolBar* self);
void QStyleOptionToolBar_setPositionOfLine(QStyleOptionToolBar* self, int positionOfLine);
int QStyleOptionToolBar_positionWithinLine(const QStyleOptionToolBar* self);
void QStyleOptionToolBar_setPositionWithinLine(QStyleOptionToolBar* self, int positionWithinLine);
int QStyleOptionToolBar_toolBarArea(const QStyleOptionToolBar* self);
void QStyleOptionToolBar_setToolBarArea(QStyleOptionToolBar* self, int toolBarArea);
int QStyleOptionToolBar_features(const QStyleOptionToolBar* self);
void QStyleOptionToolBar_setFeatures(QStyleOptionToolBar* self, int features);
int QStyleOptionToolBar_lineWidth(const QStyleOptionToolBar* self);
void QStyleOptionToolBar_setLineWidth(QStyleOptionToolBar* self, int lineWidth);
int QStyleOptionToolBar_midLineWidth(const QStyleOptionToolBar* self);
void QStyleOptionToolBar_setMidLineWidth(QStyleOptionToolBar* self, int midLineWidth);
void QStyleOptionToolBar_operatorAssign(QStyleOptionToolBar* self, QStyleOptionToolBar* from);

void QStyleOptionToolBar_delete(QStyleOptionToolBar* self);

QStyleOptionProgressBar* QStyleOptionProgressBar_new();
QStyleOptionProgressBar* QStyleOptionProgressBar_new_from(QStyleOptionProgressBar* from);

void QStyleOptionProgressBar_virtbase(QStyleOptionProgressBar* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionProgressBar_minimum(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setMinimum(QStyleOptionProgressBar* self, int minimum);
int QStyleOptionProgressBar_maximum(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setMaximum(QStyleOptionProgressBar* self, int maximum);
int QStyleOptionProgressBar_progress(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setProgress(QStyleOptionProgressBar* self, int progress);
struct seaqt_string QStyleOptionProgressBar_text(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setText(QStyleOptionProgressBar* self, struct seaqt_string text);
int QStyleOptionProgressBar_textAlignment(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setTextAlignment(QStyleOptionProgressBar* self, int textAlignment);
bool QStyleOptionProgressBar_textVisible(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setTextVisible(QStyleOptionProgressBar* self, bool textVisible);
int QStyleOptionProgressBar_orientation(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setOrientation(QStyleOptionProgressBar* self, int orientation);
bool QStyleOptionProgressBar_invertedAppearance(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setInvertedAppearance(QStyleOptionProgressBar* self, bool invertedAppearance);
bool QStyleOptionProgressBar_bottomToTop(const QStyleOptionProgressBar* self);
void QStyleOptionProgressBar_setBottomToTop(QStyleOptionProgressBar* self, bool bottomToTop);
void QStyleOptionProgressBar_operatorAssign(QStyleOptionProgressBar* self, QStyleOptionProgressBar* from);

void QStyleOptionProgressBar_delete(QStyleOptionProgressBar* self);

QStyleOptionMenuItem* QStyleOptionMenuItem_new();
QStyleOptionMenuItem* QStyleOptionMenuItem_new_from(QStyleOptionMenuItem* from);

void QStyleOptionMenuItem_virtbase(QStyleOptionMenuItem* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionMenuItem_menuItemType(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setMenuItemType(QStyleOptionMenuItem* self, int menuItemType);
int QStyleOptionMenuItem_checkType(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setCheckType(QStyleOptionMenuItem* self, int checkType);
bool QStyleOptionMenuItem_checked(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setChecked(QStyleOptionMenuItem* self, bool checked);
bool QStyleOptionMenuItem_menuHasCheckableItems(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setMenuHasCheckableItems(QStyleOptionMenuItem* self, bool menuHasCheckableItems);
QRect* QStyleOptionMenuItem_menuRect(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setMenuRect(QStyleOptionMenuItem* self, QRect* menuRect);
struct seaqt_string QStyleOptionMenuItem_text(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setText(QStyleOptionMenuItem* self, struct seaqt_string text);
QIcon* QStyleOptionMenuItem_icon(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setIcon(QStyleOptionMenuItem* self, QIcon* icon);
int QStyleOptionMenuItem_maxIconWidth(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setMaxIconWidth(QStyleOptionMenuItem* self, int maxIconWidth);
int QStyleOptionMenuItem_tabWidth(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setTabWidth(QStyleOptionMenuItem* self, int tabWidth);
QFont* QStyleOptionMenuItem_font(const QStyleOptionMenuItem* self);
void QStyleOptionMenuItem_setFont(QStyleOptionMenuItem* self, QFont* font);
void QStyleOptionMenuItem_operatorAssign(QStyleOptionMenuItem* self, QStyleOptionMenuItem* from);

void QStyleOptionMenuItem_delete(QStyleOptionMenuItem* self);

QStyleOptionDockWidget* QStyleOptionDockWidget_new();
QStyleOptionDockWidget* QStyleOptionDockWidget_new_from(QStyleOptionDockWidget* from);

void QStyleOptionDockWidget_virtbase(QStyleOptionDockWidget* src, QStyleOption** outptr_QStyleOption);
struct seaqt_string QStyleOptionDockWidget_title(const QStyleOptionDockWidget* self);
void QStyleOptionDockWidget_setTitle(QStyleOptionDockWidget* self, struct seaqt_string title);
bool QStyleOptionDockWidget_closable(const QStyleOptionDockWidget* self);
void QStyleOptionDockWidget_setClosable(QStyleOptionDockWidget* self, bool closable);
bool QStyleOptionDockWidget_movable(const QStyleOptionDockWidget* self);
void QStyleOptionDockWidget_setMovable(QStyleOptionDockWidget* self, bool movable);
bool QStyleOptionDockWidget_floatable(const QStyleOptionDockWidget* self);
void QStyleOptionDockWidget_setFloatable(QStyleOptionDockWidget* self, bool floatable);
bool QStyleOptionDockWidget_verticalTitleBar(const QStyleOptionDockWidget* self);
void QStyleOptionDockWidget_setVerticalTitleBar(QStyleOptionDockWidget* self, bool verticalTitleBar);
void QStyleOptionDockWidget_operatorAssign(QStyleOptionDockWidget* self, QStyleOptionDockWidget* from);

void QStyleOptionDockWidget_delete(QStyleOptionDockWidget* self);

QStyleOptionViewItem* QStyleOptionViewItem_new();
QStyleOptionViewItem* QStyleOptionViewItem_new_from(QStyleOptionViewItem* from);

void QStyleOptionViewItem_virtbase(QStyleOptionViewItem* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionViewItem_displayAlignment(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setDisplayAlignment(QStyleOptionViewItem* self, int displayAlignment);
int QStyleOptionViewItem_decorationAlignment(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setDecorationAlignment(QStyleOptionViewItem* self, int decorationAlignment);
int QStyleOptionViewItem_textElideMode(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setTextElideMode(QStyleOptionViewItem* self, int textElideMode);
int QStyleOptionViewItem_decorationPosition(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setDecorationPosition(QStyleOptionViewItem* self, int decorationPosition);
QSize* QStyleOptionViewItem_decorationSize(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setDecorationSize(QStyleOptionViewItem* self, QSize* decorationSize);
QFont* QStyleOptionViewItem_font(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setFont(QStyleOptionViewItem* self, QFont* font);
bool QStyleOptionViewItem_showDecorationSelected(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setShowDecorationSelected(QStyleOptionViewItem* self, bool showDecorationSelected);
int QStyleOptionViewItem_features(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setFeatures(QStyleOptionViewItem* self, int features);
QLocale* QStyleOptionViewItem_locale(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setLocale(QStyleOptionViewItem* self, QLocale* locale);
QWidget* QStyleOptionViewItem_widget(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setWidget(QStyleOptionViewItem* self, QWidget* widget);
QModelIndex* QStyleOptionViewItem_index(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setIndex(QStyleOptionViewItem* self, QModelIndex* index);
int QStyleOptionViewItem_checkState(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setCheckState(QStyleOptionViewItem* self, int checkState);
QIcon* QStyleOptionViewItem_icon(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setIcon(QStyleOptionViewItem* self, QIcon* icon);
struct seaqt_string QStyleOptionViewItem_text(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setText(QStyleOptionViewItem* self, struct seaqt_string text);
int QStyleOptionViewItem_viewItemPosition(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setViewItemPosition(QStyleOptionViewItem* self, int viewItemPosition);
QBrush* QStyleOptionViewItem_backgroundBrush(const QStyleOptionViewItem* self);
void QStyleOptionViewItem_setBackgroundBrush(QStyleOptionViewItem* self, QBrush* backgroundBrush);
void QStyleOptionViewItem_operatorAssign(QStyleOptionViewItem* self, QStyleOptionViewItem* from);

void QStyleOptionViewItem_delete(QStyleOptionViewItem* self);

QStyleOptionToolBox* QStyleOptionToolBox_new();
QStyleOptionToolBox* QStyleOptionToolBox_new_from(QStyleOptionToolBox* from);

void QStyleOptionToolBox_virtbase(QStyleOptionToolBox* src, QStyleOption** outptr_QStyleOption);
struct seaqt_string QStyleOptionToolBox_text(const QStyleOptionToolBox* self);
void QStyleOptionToolBox_setText(QStyleOptionToolBox* self, struct seaqt_string text);
QIcon* QStyleOptionToolBox_icon(const QStyleOptionToolBox* self);
void QStyleOptionToolBox_setIcon(QStyleOptionToolBox* self, QIcon* icon);
int QStyleOptionToolBox_position(const QStyleOptionToolBox* self);
void QStyleOptionToolBox_setPosition(QStyleOptionToolBox* self, int position);
int QStyleOptionToolBox_selectedPosition(const QStyleOptionToolBox* self);
void QStyleOptionToolBox_setSelectedPosition(QStyleOptionToolBox* self, int selectedPosition);
void QStyleOptionToolBox_operatorAssign(QStyleOptionToolBox* self, QStyleOptionToolBox* from);

void QStyleOptionToolBox_delete(QStyleOptionToolBox* self);

QStyleOptionRubberBand* QStyleOptionRubberBand_new();
QStyleOptionRubberBand* QStyleOptionRubberBand_new_from(QStyleOptionRubberBand* from);

void QStyleOptionRubberBand_virtbase(QStyleOptionRubberBand* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionRubberBand_shape(const QStyleOptionRubberBand* self);
void QStyleOptionRubberBand_setShape(QStyleOptionRubberBand* self, int shape);
bool QStyleOptionRubberBand_opaque(const QStyleOptionRubberBand* self);
void QStyleOptionRubberBand_setOpaque(QStyleOptionRubberBand* self, bool opaque);
void QStyleOptionRubberBand_operatorAssign(QStyleOptionRubberBand* self, QStyleOptionRubberBand* from);

void QStyleOptionRubberBand_delete(QStyleOptionRubberBand* self);

QStyleOptionComplex* QStyleOptionComplex_new();
QStyleOptionComplex* QStyleOptionComplex_new_from(QStyleOptionComplex* from);
QStyleOptionComplex* QStyleOptionComplex_new_version(int version);
QStyleOptionComplex* QStyleOptionComplex_new_version_type(int version, int type);

void QStyleOptionComplex_virtbase(QStyleOptionComplex* src, QStyleOption** outptr_QStyleOption);
int QStyleOptionComplex_subControls(const QStyleOptionComplex* self);
void QStyleOptionComplex_setSubControls(QStyleOptionComplex* self, int subControls);
int QStyleOptionComplex_activeSubControls(const QStyleOptionComplex* self);
void QStyleOptionComplex_setActiveSubControls(QStyleOptionComplex* self, int activeSubControls);
void QStyleOptionComplex_operatorAssign(QStyleOptionComplex* self, QStyleOptionComplex* from);

void QStyleOptionComplex_delete(QStyleOptionComplex* self);

QStyleOptionSlider* QStyleOptionSlider_new();
QStyleOptionSlider* QStyleOptionSlider_new_from(QStyleOptionSlider* from);

void QStyleOptionSlider_virtbase(QStyleOptionSlider* src, QStyleOptionComplex** outptr_QStyleOptionComplex);
int QStyleOptionSlider_orientation(const QStyleOptionSlider* self);
void QStyleOptionSlider_setOrientation(QStyleOptionSlider* self, int orientation);
int QStyleOptionSlider_minimum(const QStyleOptionSlider* self);
void QStyleOptionSlider_setMinimum(QStyleOptionSlider* self, int minimum);
int QStyleOptionSlider_maximum(const QStyleOptionSlider* self);
void QStyleOptionSlider_setMaximum(QStyleOptionSlider* self, int maximum);
int QStyleOptionSlider_tickPosition(const QStyleOptionSlider* self);
void QStyleOptionSlider_setTickPosition(QStyleOptionSlider* self, int tickPosition);
int QStyleOptionSlider_tickInterval(const QStyleOptionSlider* self);
void QStyleOptionSlider_setTickInterval(QStyleOptionSlider* self, int tickInterval);
bool QStyleOptionSlider_upsideDown(const QStyleOptionSlider* self);
void QStyleOptionSlider_setUpsideDown(QStyleOptionSlider* self, bool upsideDown);
int QStyleOptionSlider_sliderPosition(const QStyleOptionSlider* self);
void QStyleOptionSlider_setSliderPosition(QStyleOptionSlider* self, int sliderPosition);
int QStyleOptionSlider_sliderValue(const QStyleOptionSlider* self);
void QStyleOptionSlider_setSliderValue(QStyleOptionSlider* self, int sliderValue);
int QStyleOptionSlider_singleStep(const QStyleOptionSlider* self);
void QStyleOptionSlider_setSingleStep(QStyleOptionSlider* self, int singleStep);
int QStyleOptionSlider_pageStep(const QStyleOptionSlider* self);
void QStyleOptionSlider_setPageStep(QStyleOptionSlider* self, int pageStep);
double QStyleOptionSlider_notchTarget(const QStyleOptionSlider* self);
void QStyleOptionSlider_setNotchTarget(QStyleOptionSlider* self, double notchTarget);
bool QStyleOptionSlider_dialWrapping(const QStyleOptionSlider* self);
void QStyleOptionSlider_setDialWrapping(QStyleOptionSlider* self, bool dialWrapping);
void QStyleOptionSlider_operatorAssign(QStyleOptionSlider* self, QStyleOptionSlider* from);

void QStyleOptionSlider_delete(QStyleOptionSlider* self);

QStyleOptionSpinBox* QStyleOptionSpinBox_new();
QStyleOptionSpinBox* QStyleOptionSpinBox_new_from(QStyleOptionSpinBox* from);

void QStyleOptionSpinBox_virtbase(QStyleOptionSpinBox* src, QStyleOptionComplex** outptr_QStyleOptionComplex);
int QStyleOptionSpinBox_buttonSymbols(const QStyleOptionSpinBox* self);
void QStyleOptionSpinBox_setButtonSymbols(QStyleOptionSpinBox* self, int buttonSymbols);
int QStyleOptionSpinBox_stepEnabled(const QStyleOptionSpinBox* self);
void QStyleOptionSpinBox_setStepEnabled(QStyleOptionSpinBox* self, int stepEnabled);
bool QStyleOptionSpinBox_frame(const QStyleOptionSpinBox* self);
void QStyleOptionSpinBox_setFrame(QStyleOptionSpinBox* self, bool frame);
void QStyleOptionSpinBox_operatorAssign(QStyleOptionSpinBox* self, QStyleOptionSpinBox* from);

void QStyleOptionSpinBox_delete(QStyleOptionSpinBox* self);

QStyleOptionToolButton* QStyleOptionToolButton_new();
QStyleOptionToolButton* QStyleOptionToolButton_new_from(QStyleOptionToolButton* from);

void QStyleOptionToolButton_virtbase(QStyleOptionToolButton* src, QStyleOptionComplex** outptr_QStyleOptionComplex);
int QStyleOptionToolButton_features(const QStyleOptionToolButton* self);
void QStyleOptionToolButton_setFeatures(QStyleOptionToolButton* self, int features);
QIcon* QStyleOptionToolButton_icon(const QStyleOptionToolButton* self);
void QStyleOptionToolButton_setIcon(QStyleOptionToolButton* self, QIcon* icon);
QSize* QStyleOptionToolButton_iconSize(const QStyleOptionToolButton* self);
void QStyleOptionToolButton_setIconSize(QStyleOptionToolButton* self, QSize* iconSize);
struct seaqt_string QStyleOptionToolButton_text(const QStyleOptionToolButton* self);
void QStyleOptionToolButton_setText(QStyleOptionToolButton* self, struct seaqt_string text);
int QStyleOptionToolButton_arrowType(const QStyleOptionToolButton* self);
void QStyleOptionToolButton_setArrowType(QStyleOptionToolButton* self, int arrowType);
int QStyleOptionToolButton_toolButtonStyle(const QStyleOptionToolButton* self);
void QStyleOptionToolButton_setToolButtonStyle(QStyleOptionToolButton* self, int toolButtonStyle);
QPoint* QStyleOptionToolButton_pos(const QStyleOptionToolButton* self);
void QStyleOptionToolButton_setPos(QStyleOptionToolButton* self, QPoint* pos);
QFont* QStyleOptionToolButton_font(const QStyleOptionToolButton* self);
void QStyleOptionToolButton_setFont(QStyleOptionToolButton* self, QFont* font);
void QStyleOptionToolButton_operatorAssign(QStyleOptionToolButton* self, QStyleOptionToolButton* from);

void QStyleOptionToolButton_delete(QStyleOptionToolButton* self);

QStyleOptionComboBox* QStyleOptionComboBox_new();
QStyleOptionComboBox* QStyleOptionComboBox_new_from(QStyleOptionComboBox* from);

void QStyleOptionComboBox_virtbase(QStyleOptionComboBox* src, QStyleOptionComplex** outptr_QStyleOptionComplex);
bool QStyleOptionComboBox_editable(const QStyleOptionComboBox* self);
void QStyleOptionComboBox_setEditable(QStyleOptionComboBox* self, bool editable);
QRect* QStyleOptionComboBox_popupRect(const QStyleOptionComboBox* self);
void QStyleOptionComboBox_setPopupRect(QStyleOptionComboBox* self, QRect* popupRect);
bool QStyleOptionComboBox_frame(const QStyleOptionComboBox* self);
void QStyleOptionComboBox_setFrame(QStyleOptionComboBox* self, bool frame);
struct seaqt_string QStyleOptionComboBox_currentText(const QStyleOptionComboBox* self);
void QStyleOptionComboBox_setCurrentText(QStyleOptionComboBox* self, struct seaqt_string currentText);
QIcon* QStyleOptionComboBox_currentIcon(const QStyleOptionComboBox* self);
void QStyleOptionComboBox_setCurrentIcon(QStyleOptionComboBox* self, QIcon* currentIcon);
QSize* QStyleOptionComboBox_iconSize(const QStyleOptionComboBox* self);
void QStyleOptionComboBox_setIconSize(QStyleOptionComboBox* self, QSize* iconSize);
void QStyleOptionComboBox_operatorAssign(QStyleOptionComboBox* self, QStyleOptionComboBox* from);

void QStyleOptionComboBox_delete(QStyleOptionComboBox* self);

QStyleOptionTitleBar* QStyleOptionTitleBar_new();
QStyleOptionTitleBar* QStyleOptionTitleBar_new_from(QStyleOptionTitleBar* from);

void QStyleOptionTitleBar_virtbase(QStyleOptionTitleBar* src, QStyleOptionComplex** outptr_QStyleOptionComplex);
struct seaqt_string QStyleOptionTitleBar_text(const QStyleOptionTitleBar* self);
void QStyleOptionTitleBar_setText(QStyleOptionTitleBar* self, struct seaqt_string text);
QIcon* QStyleOptionTitleBar_icon(const QStyleOptionTitleBar* self);
void QStyleOptionTitleBar_setIcon(QStyleOptionTitleBar* self, QIcon* icon);
int QStyleOptionTitleBar_titleBarState(const QStyleOptionTitleBar* self);
void QStyleOptionTitleBar_setTitleBarState(QStyleOptionTitleBar* self, int titleBarState);
int QStyleOptionTitleBar_titleBarFlags(const QStyleOptionTitleBar* self);
void QStyleOptionTitleBar_setTitleBarFlags(QStyleOptionTitleBar* self, int titleBarFlags);
void QStyleOptionTitleBar_operatorAssign(QStyleOptionTitleBar* self, QStyleOptionTitleBar* from);

void QStyleOptionTitleBar_delete(QStyleOptionTitleBar* self);

QStyleOptionGroupBox* QStyleOptionGroupBox_new();
QStyleOptionGroupBox* QStyleOptionGroupBox_new_from(QStyleOptionGroupBox* from);

void QStyleOptionGroupBox_virtbase(QStyleOptionGroupBox* src, QStyleOptionComplex** outptr_QStyleOptionComplex);
int QStyleOptionGroupBox_features(const QStyleOptionGroupBox* self);
void QStyleOptionGroupBox_setFeatures(QStyleOptionGroupBox* self, int features);
struct seaqt_string QStyleOptionGroupBox_text(const QStyleOptionGroupBox* self);
void QStyleOptionGroupBox_setText(QStyleOptionGroupBox* self, struct seaqt_string text);
int QStyleOptionGroupBox_textAlignment(const QStyleOptionGroupBox* self);
void QStyleOptionGroupBox_setTextAlignment(QStyleOptionGroupBox* self, int textAlignment);
QColor* QStyleOptionGroupBox_textColor(const QStyleOptionGroupBox* self);
void QStyleOptionGroupBox_setTextColor(QStyleOptionGroupBox* self, QColor* textColor);
int QStyleOptionGroupBox_lineWidth(const QStyleOptionGroupBox* self);
void QStyleOptionGroupBox_setLineWidth(QStyleOptionGroupBox* self, int lineWidth);
int QStyleOptionGroupBox_midLineWidth(const QStyleOptionGroupBox* self);
void QStyleOptionGroupBox_setMidLineWidth(QStyleOptionGroupBox* self, int midLineWidth);
void QStyleOptionGroupBox_operatorAssign(QStyleOptionGroupBox* self, QStyleOptionGroupBox* from);

void QStyleOptionGroupBox_delete(QStyleOptionGroupBox* self);

QStyleOptionSizeGrip* QStyleOptionSizeGrip_new();
QStyleOptionSizeGrip* QStyleOptionSizeGrip_new_from(QStyleOptionSizeGrip* from);

void QStyleOptionSizeGrip_virtbase(QStyleOptionSizeGrip* src, QStyleOptionComplex** outptr_QStyleOptionComplex);
int QStyleOptionSizeGrip_corner(const QStyleOptionSizeGrip* self);
void QStyleOptionSizeGrip_setCorner(QStyleOptionSizeGrip* self, int corner);
void QStyleOptionSizeGrip_operatorAssign(QStyleOptionSizeGrip* self, QStyleOptionSizeGrip* from);

void QStyleOptionSizeGrip_delete(QStyleOptionSizeGrip* self);

QStyleOptionGraphicsItem* QStyleOptionGraphicsItem_new();
QStyleOptionGraphicsItem* QStyleOptionGraphicsItem_new_from(QStyleOptionGraphicsItem* from);

void QStyleOptionGraphicsItem_virtbase(QStyleOptionGraphicsItem* src, QStyleOption** outptr_QStyleOption);
QRectF* QStyleOptionGraphicsItem_exposedRect(const QStyleOptionGraphicsItem* self);
void QStyleOptionGraphicsItem_setExposedRect(QStyleOptionGraphicsItem* self, QRectF* exposedRect);
QMatrix* QStyleOptionGraphicsItem_matrix(const QStyleOptionGraphicsItem* self);
void QStyleOptionGraphicsItem_setMatrix(QStyleOptionGraphicsItem* self, QMatrix* matrix);
double QStyleOptionGraphicsItem_levelOfDetail(const QStyleOptionGraphicsItem* self);
void QStyleOptionGraphicsItem_setLevelOfDetail(QStyleOptionGraphicsItem* self, double levelOfDetail);
void QStyleOptionGraphicsItem_operatorAssign(QStyleOptionGraphicsItem* self, QStyleOptionGraphicsItem* from);
double QStyleOptionGraphicsItem_levelOfDetailFromTransform(QTransform* worldTransform);

void QStyleOptionGraphicsItem_delete(QStyleOptionGraphicsItem* self);

QStyleHintReturn* QStyleHintReturn_new();
QStyleHintReturn* QStyleHintReturn_new_from(QStyleHintReturn* from);
QStyleHintReturn* QStyleHintReturn_new_version(int version);
QStyleHintReturn* QStyleHintReturn_new_version_type(int version, int type);

int QStyleHintReturn_version(const QStyleHintReturn* self);
void QStyleHintReturn_setVersion(QStyleHintReturn* self, int version);
int QStyleHintReturn_type(const QStyleHintReturn* self);
void QStyleHintReturn_setType(QStyleHintReturn* self, int type);
void QStyleHintReturn_operatorAssign(QStyleHintReturn* self, QStyleHintReturn* from);

void QStyleHintReturn_delete(QStyleHintReturn* self);

QStyleHintReturnMask* QStyleHintReturnMask_new();
QStyleHintReturnMask* QStyleHintReturnMask_new_from(QStyleHintReturnMask* from);

void QStyleHintReturnMask_virtbase(QStyleHintReturnMask* src, QStyleHintReturn** outptr_QStyleHintReturn);
QRegion* QStyleHintReturnMask_region(const QStyleHintReturnMask* self);
void QStyleHintReturnMask_setRegion(QStyleHintReturnMask* self, QRegion* region);
void QStyleHintReturnMask_operatorAssign(QStyleHintReturnMask* self, QStyleHintReturnMask* from);

void QStyleHintReturnMask_delete(QStyleHintReturnMask* self);

QStyleHintReturnVariant* QStyleHintReturnVariant_new();
QStyleHintReturnVariant* QStyleHintReturnVariant_new_from(QStyleHintReturnVariant* from);

void QStyleHintReturnVariant_virtbase(QStyleHintReturnVariant* src, QStyleHintReturn** outptr_QStyleHintReturn);
QVariant* QStyleHintReturnVariant_variant(const QStyleHintReturnVariant* self);
void QStyleHintReturnVariant_setVariant(QStyleHintReturnVariant* self, QVariant* variant);
void QStyleHintReturnVariant_operatorAssign(QStyleHintReturnVariant* self, QStyleHintReturnVariant* from);

void QStyleHintReturnVariant_delete(QStyleHintReturnVariant* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
