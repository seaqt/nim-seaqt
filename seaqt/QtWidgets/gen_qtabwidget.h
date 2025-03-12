#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QTABWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QTABWIDGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionTabWidgetFrame;
class QTabBar;
class QTabWidget;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionTabWidgetFrame QStyleOptionTabWidgetFrame;
typedef struct QTabBar QTabBar;
typedef struct QTabWidget QTabWidget;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQTabWidget VirtualQTabWidget;
typedef struct QTabWidget_VTable{
	void (*destructor)(VirtualQTabWidget* self);
	QMetaObject* (*metaObject)(const VirtualQTabWidget* self);
	void* (*metacast)(VirtualQTabWidget* self, const char* param1);
	int (*metacall)(VirtualQTabWidget* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQTabWidget* self);
	QSize* (*minimumSizeHint)(const VirtualQTabWidget* self);
	int (*heightForWidth)(const VirtualQTabWidget* self, int width);
	bool (*hasHeightForWidth)(const VirtualQTabWidget* self);
	void (*tabInserted)(VirtualQTabWidget* self, int index);
	void (*tabRemoved)(VirtualQTabWidget* self, int index);
	void (*showEvent)(VirtualQTabWidget* self, QShowEvent* param1);
	void (*resizeEvent)(VirtualQTabWidget* self, QResizeEvent* param1);
	void (*keyPressEvent)(VirtualQTabWidget* self, QKeyEvent* param1);
	void (*paintEvent)(VirtualQTabWidget* self, QPaintEvent* param1);
	void (*changeEvent)(VirtualQTabWidget* self, QEvent* param1);
	bool (*event)(VirtualQTabWidget* self, QEvent* param1);
	void (*initStyleOption)(const VirtualQTabWidget* self, QStyleOptionTabWidgetFrame* option);
	int (*devType)(const VirtualQTabWidget* self);
	void (*setVisible)(VirtualQTabWidget* self, bool visible);
	QPaintEngine* (*paintEngine)(const VirtualQTabWidget* self);
	void (*mousePressEvent)(VirtualQTabWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQTabWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQTabWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQTabWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQTabWidget* self, QWheelEvent* event);
	void (*keyReleaseEvent)(VirtualQTabWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQTabWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQTabWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQTabWidget* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQTabWidget* self, QEvent* event);
	void (*moveEvent)(VirtualQTabWidget* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQTabWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQTabWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQTabWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQTabWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQTabWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQTabWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQTabWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQTabWidget* self, QDropEvent* event);
	void (*hideEvent)(VirtualQTabWidget* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQTabWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQTabWidget* self, int param1);
	void (*initPainter)(const VirtualQTabWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQTabWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQTabWidget* self);
	void (*inputMethodEvent)(VirtualQTabWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQTabWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQTabWidget* self, bool next);
	bool (*eventFilter)(VirtualQTabWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQTabWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQTabWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQTabWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQTabWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTabWidget* self, QMetaMethod* signal);
}QTabWidget_VTable;

const QTabWidget_VTable* QTabWidget_vtbl(const VirtualQTabWidget* self);
void* QTabWidget_vdata(const VirtualQTabWidget* self);
void QTabWidget_setVdata(VirtualQTabWidget* self, void* vdata);

VirtualQTabWidget* QTabWidget_new(const QTabWidget_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQTabWidget* QTabWidget_new2(const QTabWidget_VTable* vtbl, void* vdata);

void QTabWidget_virtbase(QTabWidget* src, QWidget** outptr_QWidget);
QMetaObject* QTabWidget_metaObject(const QTabWidget* self);
void* QTabWidget_metacast(QTabWidget* self, const char* param1);
int QTabWidget_metacall(QTabWidget* self, int param1, int param2, void** param3);
struct miqt_string QTabWidget_tr(const char* s);
int QTabWidget_addTab(QTabWidget* self, QWidget* widget, struct miqt_string param2);
int QTabWidget_addTab2(QTabWidget* self, QWidget* widget, QIcon* icon, struct miqt_string label);
int QTabWidget_insertTab(QTabWidget* self, int index, QWidget* widget, struct miqt_string param3);
int QTabWidget_insertTab2(QTabWidget* self, int index, QWidget* widget, QIcon* icon, struct miqt_string label);
void QTabWidget_removeTab(QTabWidget* self, int index);
bool QTabWidget_isTabEnabled(const QTabWidget* self, int index);
void QTabWidget_setTabEnabled(QTabWidget* self, int index, bool enabled);
bool QTabWidget_isTabVisible(const QTabWidget* self, int index);
void QTabWidget_setTabVisible(QTabWidget* self, int index, bool visible);
struct miqt_string QTabWidget_tabText(const QTabWidget* self, int index);
void QTabWidget_setTabText(QTabWidget* self, int index, struct miqt_string text);
QIcon* QTabWidget_tabIcon(const QTabWidget* self, int index);
void QTabWidget_setTabIcon(QTabWidget* self, int index, QIcon* icon);
void QTabWidget_setTabToolTip(QTabWidget* self, int index, struct miqt_string tip);
struct miqt_string QTabWidget_tabToolTip(const QTabWidget* self, int index);
void QTabWidget_setTabWhatsThis(QTabWidget* self, int index, struct miqt_string text);
struct miqt_string QTabWidget_tabWhatsThis(const QTabWidget* self, int index);
int QTabWidget_currentIndex(const QTabWidget* self);
QWidget* QTabWidget_currentWidget(const QTabWidget* self);
QWidget* QTabWidget_widget(const QTabWidget* self, int index);
int QTabWidget_indexOf(const QTabWidget* self, QWidget* widget);
int QTabWidget_count(const QTabWidget* self);
int QTabWidget_tabPosition(const QTabWidget* self);
void QTabWidget_setTabPosition(QTabWidget* self, int position);
bool QTabWidget_tabsClosable(const QTabWidget* self);
void QTabWidget_setTabsClosable(QTabWidget* self, bool closeable);
bool QTabWidget_isMovable(const QTabWidget* self);
void QTabWidget_setMovable(QTabWidget* self, bool movable);
int QTabWidget_tabShape(const QTabWidget* self);
void QTabWidget_setTabShape(QTabWidget* self, int s);
QSize* QTabWidget_sizeHint(const QTabWidget* self);
QSize* QTabWidget_minimumSizeHint(const QTabWidget* self);
int QTabWidget_heightForWidth(const QTabWidget* self, int width);
bool QTabWidget_hasHeightForWidth(const QTabWidget* self);
void QTabWidget_setCornerWidget(QTabWidget* self, QWidget* w);
QWidget* QTabWidget_cornerWidget(const QTabWidget* self);
int QTabWidget_elideMode(const QTabWidget* self);
void QTabWidget_setElideMode(QTabWidget* self, int mode);
QSize* QTabWidget_iconSize(const QTabWidget* self);
void QTabWidget_setIconSize(QTabWidget* self, QSize* size);
bool QTabWidget_usesScrollButtons(const QTabWidget* self);
void QTabWidget_setUsesScrollButtons(QTabWidget* self, bool useButtons);
bool QTabWidget_documentMode(const QTabWidget* self);
void QTabWidget_setDocumentMode(QTabWidget* self, bool set);
bool QTabWidget_tabBarAutoHide(const QTabWidget* self);
void QTabWidget_setTabBarAutoHide(QTabWidget* self, bool enabled);
void QTabWidget_clear(QTabWidget* self);
QTabBar* QTabWidget_tabBar(const QTabWidget* self);
void QTabWidget_setCurrentIndex(QTabWidget* self, int index);
void QTabWidget_setCurrentWidget(QTabWidget* self, QWidget* widget);
void QTabWidget_currentChanged(QTabWidget* self, int index);
void QTabWidget_connect_currentChanged(VirtualQTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QTabWidget_tabCloseRequested(QTabWidget* self, int index);
void QTabWidget_connect_tabCloseRequested(VirtualQTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QTabWidget_tabBarClicked(QTabWidget* self, int index);
void QTabWidget_connect_tabBarClicked(VirtualQTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QTabWidget_tabBarDoubleClicked(QTabWidget* self, int index);
void QTabWidget_connect_tabBarDoubleClicked(VirtualQTabWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QTabWidget_tabInserted(QTabWidget* self, int index);
void QTabWidget_tabRemoved(QTabWidget* self, int index);
void QTabWidget_showEvent(QTabWidget* self, QShowEvent* param1);
void QTabWidget_resizeEvent(QTabWidget* self, QResizeEvent* param1);
void QTabWidget_keyPressEvent(QTabWidget* self, QKeyEvent* param1);
void QTabWidget_paintEvent(QTabWidget* self, QPaintEvent* param1);
void QTabWidget_changeEvent(QTabWidget* self, QEvent* param1);
bool QTabWidget_event(QTabWidget* self, QEvent* param1);
void QTabWidget_initStyleOption(const QTabWidget* self, QStyleOptionTabWidgetFrame* option);
struct miqt_string QTabWidget_tr2(const char* s, const char* c);
struct miqt_string QTabWidget_tr3(const char* s, const char* c, int n);
void QTabWidget_setCornerWidget2(QTabWidget* self, QWidget* w, int corner);
QWidget* QTabWidget_cornerWidget1(const QTabWidget* self, int corner);

QMetaObject* QTabWidget_virtualbase_metaObject(const VirtualQTabWidget* self);
void* QTabWidget_virtualbase_metacast(VirtualQTabWidget* self, const char* param1);
int QTabWidget_virtualbase_metacall(VirtualQTabWidget* self, int param1, int param2, void** param3);
QSize* QTabWidget_virtualbase_sizeHint(const VirtualQTabWidget* self);
QSize* QTabWidget_virtualbase_minimumSizeHint(const VirtualQTabWidget* self);
int QTabWidget_virtualbase_heightForWidth(const VirtualQTabWidget* self, int width);
bool QTabWidget_virtualbase_hasHeightForWidth(const VirtualQTabWidget* self);
void QTabWidget_virtualbase_tabInserted(VirtualQTabWidget* self, int index);
void QTabWidget_virtualbase_tabRemoved(VirtualQTabWidget* self, int index);
void QTabWidget_virtualbase_showEvent(VirtualQTabWidget* self, QShowEvent* param1);
void QTabWidget_virtualbase_resizeEvent(VirtualQTabWidget* self, QResizeEvent* param1);
void QTabWidget_virtualbase_keyPressEvent(VirtualQTabWidget* self, QKeyEvent* param1);
void QTabWidget_virtualbase_paintEvent(VirtualQTabWidget* self, QPaintEvent* param1);
void QTabWidget_virtualbase_changeEvent(VirtualQTabWidget* self, QEvent* param1);
bool QTabWidget_virtualbase_event(VirtualQTabWidget* self, QEvent* param1);
void QTabWidget_virtualbase_initStyleOption(const VirtualQTabWidget* self, QStyleOptionTabWidgetFrame* option);
int QTabWidget_virtualbase_devType(const VirtualQTabWidget* self);
void QTabWidget_virtualbase_setVisible(VirtualQTabWidget* self, bool visible);
QPaintEngine* QTabWidget_virtualbase_paintEngine(const VirtualQTabWidget* self);
void QTabWidget_virtualbase_mousePressEvent(VirtualQTabWidget* self, QMouseEvent* event);
void QTabWidget_virtualbase_mouseReleaseEvent(VirtualQTabWidget* self, QMouseEvent* event);
void QTabWidget_virtualbase_mouseDoubleClickEvent(VirtualQTabWidget* self, QMouseEvent* event);
void QTabWidget_virtualbase_mouseMoveEvent(VirtualQTabWidget* self, QMouseEvent* event);
void QTabWidget_virtualbase_wheelEvent(VirtualQTabWidget* self, QWheelEvent* event);
void QTabWidget_virtualbase_keyReleaseEvent(VirtualQTabWidget* self, QKeyEvent* event);
void QTabWidget_virtualbase_focusInEvent(VirtualQTabWidget* self, QFocusEvent* event);
void QTabWidget_virtualbase_focusOutEvent(VirtualQTabWidget* self, QFocusEvent* event);
void QTabWidget_virtualbase_enterEvent(VirtualQTabWidget* self, QEnterEvent* event);
void QTabWidget_virtualbase_leaveEvent(VirtualQTabWidget* self, QEvent* event);
void QTabWidget_virtualbase_moveEvent(VirtualQTabWidget* self, QMoveEvent* event);
void QTabWidget_virtualbase_closeEvent(VirtualQTabWidget* self, QCloseEvent* event);
void QTabWidget_virtualbase_contextMenuEvent(VirtualQTabWidget* self, QContextMenuEvent* event);
void QTabWidget_virtualbase_tabletEvent(VirtualQTabWidget* self, QTabletEvent* event);
void QTabWidget_virtualbase_actionEvent(VirtualQTabWidget* self, QActionEvent* event);
void QTabWidget_virtualbase_dragEnterEvent(VirtualQTabWidget* self, QDragEnterEvent* event);
void QTabWidget_virtualbase_dragMoveEvent(VirtualQTabWidget* self, QDragMoveEvent* event);
void QTabWidget_virtualbase_dragLeaveEvent(VirtualQTabWidget* self, QDragLeaveEvent* event);
void QTabWidget_virtualbase_dropEvent(VirtualQTabWidget* self, QDropEvent* event);
void QTabWidget_virtualbase_hideEvent(VirtualQTabWidget* self, QHideEvent* event);
bool QTabWidget_virtualbase_nativeEvent(VirtualQTabWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
int QTabWidget_virtualbase_metric(const VirtualQTabWidget* self, int param1);
void QTabWidget_virtualbase_initPainter(const VirtualQTabWidget* self, QPainter* painter);
QPaintDevice* QTabWidget_virtualbase_redirected(const VirtualQTabWidget* self, QPoint* offset);
QPainter* QTabWidget_virtualbase_sharedPainter(const VirtualQTabWidget* self);
void QTabWidget_virtualbase_inputMethodEvent(VirtualQTabWidget* self, QInputMethodEvent* param1);
QVariant* QTabWidget_virtualbase_inputMethodQuery(const VirtualQTabWidget* self, int param1);
bool QTabWidget_virtualbase_focusNextPrevChild(VirtualQTabWidget* self, bool next);
bool QTabWidget_virtualbase_eventFilter(VirtualQTabWidget* self, QObject* watched, QEvent* event);
void QTabWidget_virtualbase_timerEvent(VirtualQTabWidget* self, QTimerEvent* event);
void QTabWidget_virtualbase_childEvent(VirtualQTabWidget* self, QChildEvent* event);
void QTabWidget_virtualbase_customEvent(VirtualQTabWidget* self, QEvent* event);
void QTabWidget_virtualbase_connectNotify(VirtualQTabWidget* self, QMetaMethod* signal);
void QTabWidget_virtualbase_disconnectNotify(VirtualQTabWidget* self, QMetaMethod* signal);

void QTabWidget_protectedbase_setTabBar(VirtualQTabWidget* self, QTabBar* tabBar);
void QTabWidget_protectedbase_updateMicroFocus(VirtualQTabWidget* self);
void QTabWidget_protectedbase_create(VirtualQTabWidget* self);
void QTabWidget_protectedbase_destroy(VirtualQTabWidget* self);
bool QTabWidget_protectedbase_focusNextChild(VirtualQTabWidget* self);
bool QTabWidget_protectedbase_focusPreviousChild(VirtualQTabWidget* self);
QObject* QTabWidget_protectedbase_sender(const VirtualQTabWidget* self);
int QTabWidget_protectedbase_senderSignalIndex(const VirtualQTabWidget* self);
int QTabWidget_protectedbase_receivers(const VirtualQTabWidget* self, const char* signal);
bool QTabWidget_protectedbase_isSignalConnected(const VirtualQTabWidget* self, QMetaMethod* signal);

const QMetaObject* QTabWidget_staticMetaObject();
void QTabWidget_delete(QTabWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
