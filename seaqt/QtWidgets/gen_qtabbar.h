#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QTABBAR_H
#define SEAQT_QTWIDGETS_GEN_QTABBAR_H

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
class QColor;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
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
class QRect;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionTab;
class QTabBar;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColor QColor;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionTab QStyleOptionTab;
typedef struct QTabBar QTabBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQTabBar VirtualQTabBar;
typedef struct QTabBar_VTable{
	void (*destructor)(VirtualQTabBar* self);
	QMetaObject* (*metaObject)(const VirtualQTabBar* self);
	void* (*metacast)(VirtualQTabBar* self, const char* param1);
	int (*metacall)(VirtualQTabBar* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(const VirtualQTabBar* self);
	QSize* (*minimumSizeHint)(const VirtualQTabBar* self);
	QSize* (*tabSizeHint)(const VirtualQTabBar* self, int index);
	QSize* (*minimumTabSizeHint)(const VirtualQTabBar* self, int index);
	void (*tabInserted)(VirtualQTabBar* self, int index);
	void (*tabRemoved)(VirtualQTabBar* self, int index);
	void (*tabLayoutChange)(VirtualQTabBar* self);
	bool (*event)(VirtualQTabBar* self, QEvent* param1);
	void (*resizeEvent)(VirtualQTabBar* self, QResizeEvent* param1);
	void (*showEvent)(VirtualQTabBar* self, QShowEvent* param1);
	void (*hideEvent)(VirtualQTabBar* self, QHideEvent* param1);
	void (*paintEvent)(VirtualQTabBar* self, QPaintEvent* param1);
	void (*mousePressEvent)(VirtualQTabBar* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQTabBar* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQTabBar* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQTabBar* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQTabBar* self, QKeyEvent* param1);
	void (*changeEvent)(VirtualQTabBar* self, QEvent* param1);
	void (*timerEvent)(VirtualQTabBar* self, QTimerEvent* event);
	int (*devType)(const VirtualQTabBar* self);
	void (*setVisible)(VirtualQTabBar* self, bool visible);
	int (*heightForWidth)(const VirtualQTabBar* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQTabBar* self);
	QPaintEngine* (*paintEngine)(const VirtualQTabBar* self);
	void (*mouseDoubleClickEvent)(VirtualQTabBar* self, QMouseEvent* event);
	void (*keyReleaseEvent)(VirtualQTabBar* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQTabBar* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQTabBar* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQTabBar* self, QEvent* event);
	void (*leaveEvent)(VirtualQTabBar* self, QEvent* event);
	void (*moveEvent)(VirtualQTabBar* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQTabBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQTabBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQTabBar* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQTabBar* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQTabBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQTabBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQTabBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQTabBar* self, QDropEvent* event);
	bool (*nativeEvent)(VirtualQTabBar* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(const VirtualQTabBar* self, int param1);
	void (*initPainter)(const VirtualQTabBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQTabBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQTabBar* self);
	void (*inputMethodEvent)(VirtualQTabBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQTabBar* self, int param1);
	bool (*focusNextPrevChild)(VirtualQTabBar* self, bool next);
	bool (*eventFilter)(VirtualQTabBar* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQTabBar* self, QChildEvent* event);
	void (*customEvent)(VirtualQTabBar* self, QEvent* event);
	void (*connectNotify)(VirtualQTabBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQTabBar* self, QMetaMethod* signal);
}QTabBar_VTable;

const QTabBar_VTable* QTabBar_vtbl(const VirtualQTabBar* self);
void* QTabBar_vdata(const VirtualQTabBar* self);
void QTabBar_setVdata(VirtualQTabBar* self, void* vdata);

VirtualQTabBar* QTabBar_new(const QTabBar_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQTabBar* QTabBar_new2(const QTabBar_VTable* vtbl, void* vdata);

void QTabBar_virtbase(QTabBar* src, QWidget** outptr_QWidget);
QMetaObject* QTabBar_metaObject(const QTabBar* self);
void* QTabBar_metacast(QTabBar* self, const char* param1);
int QTabBar_metacall(QTabBar* self, int param1, int param2, void** param3);
struct miqt_string QTabBar_tr(const char* s);
struct miqt_string QTabBar_trUtf8(const char* s);
int QTabBar_shape(const QTabBar* self);
void QTabBar_setShape(QTabBar* self, int shape);
int QTabBar_addTab(QTabBar* self, struct miqt_string text);
int QTabBar_addTab2(QTabBar* self, QIcon* icon, struct miqt_string text);
int QTabBar_insertTab(QTabBar* self, int index, struct miqt_string text);
int QTabBar_insertTab2(QTabBar* self, int index, QIcon* icon, struct miqt_string text);
void QTabBar_removeTab(QTabBar* self, int index);
void QTabBar_moveTab(QTabBar* self, int from, int to);
bool QTabBar_isTabEnabled(const QTabBar* self, int index);
void QTabBar_setTabEnabled(QTabBar* self, int index, bool enabled);
bool QTabBar_isTabVisible(const QTabBar* self, int index);
void QTabBar_setTabVisible(QTabBar* self, int index, bool visible);
struct miqt_string QTabBar_tabText(const QTabBar* self, int index);
void QTabBar_setTabText(QTabBar* self, int index, struct miqt_string text);
QColor* QTabBar_tabTextColor(const QTabBar* self, int index);
void QTabBar_setTabTextColor(QTabBar* self, int index, QColor* color);
QIcon* QTabBar_tabIcon(const QTabBar* self, int index);
void QTabBar_setTabIcon(QTabBar* self, int index, QIcon* icon);
int QTabBar_elideMode(const QTabBar* self);
void QTabBar_setElideMode(QTabBar* self, int mode);
void QTabBar_setTabToolTip(QTabBar* self, int index, struct miqt_string tip);
struct miqt_string QTabBar_tabToolTip(const QTabBar* self, int index);
void QTabBar_setTabWhatsThis(QTabBar* self, int index, struct miqt_string text);
struct miqt_string QTabBar_tabWhatsThis(const QTabBar* self, int index);
void QTabBar_setTabData(QTabBar* self, int index, QVariant* data);
QVariant* QTabBar_tabData(const QTabBar* self, int index);
QRect* QTabBar_tabRect(const QTabBar* self, int index);
int QTabBar_tabAt(const QTabBar* self, QPoint* pos);
int QTabBar_currentIndex(const QTabBar* self);
int QTabBar_count(const QTabBar* self);
QSize* QTabBar_sizeHint(const QTabBar* self);
QSize* QTabBar_minimumSizeHint(const QTabBar* self);
void QTabBar_setDrawBase(QTabBar* self, bool drawTheBase);
bool QTabBar_drawBase(const QTabBar* self);
QSize* QTabBar_iconSize(const QTabBar* self);
void QTabBar_setIconSize(QTabBar* self, QSize* size);
bool QTabBar_usesScrollButtons(const QTabBar* self);
void QTabBar_setUsesScrollButtons(QTabBar* self, bool useButtons);
bool QTabBar_tabsClosable(const QTabBar* self);
void QTabBar_setTabsClosable(QTabBar* self, bool closable);
void QTabBar_setTabButton(QTabBar* self, int index, int position, QWidget* widget);
QWidget* QTabBar_tabButton(const QTabBar* self, int index, int position);
int QTabBar_selectionBehaviorOnRemove(const QTabBar* self);
void QTabBar_setSelectionBehaviorOnRemove(QTabBar* self, int behavior);
bool QTabBar_expanding(const QTabBar* self);
void QTabBar_setExpanding(QTabBar* self, bool enabled);
bool QTabBar_isMovable(const QTabBar* self);
void QTabBar_setMovable(QTabBar* self, bool movable);
bool QTabBar_documentMode(const QTabBar* self);
void QTabBar_setDocumentMode(QTabBar* self, bool set);
bool QTabBar_autoHide(const QTabBar* self);
void QTabBar_setAutoHide(QTabBar* self, bool hide);
bool QTabBar_changeCurrentOnDrag(const QTabBar* self);
void QTabBar_setChangeCurrentOnDrag(QTabBar* self, bool change);
struct miqt_string QTabBar_accessibleTabName(const QTabBar* self, int index);
void QTabBar_setAccessibleTabName(QTabBar* self, int index, struct miqt_string name);
void QTabBar_setCurrentIndex(QTabBar* self, int index);
void QTabBar_currentChanged(QTabBar* self, int index);
void QTabBar_connect_currentChanged(VirtualQTabBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QTabBar_tabCloseRequested(QTabBar* self, int index);
void QTabBar_connect_tabCloseRequested(VirtualQTabBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QTabBar_tabMoved(QTabBar* self, int from, int to);
void QTabBar_connect_tabMoved(VirtualQTabBar* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QTabBar_tabBarClicked(QTabBar* self, int index);
void QTabBar_connect_tabBarClicked(VirtualQTabBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QTabBar_tabBarDoubleClicked(QTabBar* self, int index);
void QTabBar_connect_tabBarDoubleClicked(VirtualQTabBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
QSize* QTabBar_tabSizeHint(const QTabBar* self, int index);
QSize* QTabBar_minimumTabSizeHint(const QTabBar* self, int index);
void QTabBar_tabInserted(QTabBar* self, int index);
void QTabBar_tabRemoved(QTabBar* self, int index);
void QTabBar_tabLayoutChange(QTabBar* self);
bool QTabBar_event(QTabBar* self, QEvent* param1);
void QTabBar_resizeEvent(QTabBar* self, QResizeEvent* param1);
void QTabBar_showEvent(QTabBar* self, QShowEvent* param1);
void QTabBar_hideEvent(QTabBar* self, QHideEvent* param1);
void QTabBar_paintEvent(QTabBar* self, QPaintEvent* param1);
void QTabBar_mousePressEvent(QTabBar* self, QMouseEvent* param1);
void QTabBar_mouseMoveEvent(QTabBar* self, QMouseEvent* param1);
void QTabBar_mouseReleaseEvent(QTabBar* self, QMouseEvent* param1);
void QTabBar_wheelEvent(QTabBar* self, QWheelEvent* event);
void QTabBar_keyPressEvent(QTabBar* self, QKeyEvent* param1);
void QTabBar_changeEvent(QTabBar* self, QEvent* param1);
void QTabBar_timerEvent(QTabBar* self, QTimerEvent* event);
struct miqt_string QTabBar_tr2(const char* s, const char* c);
struct miqt_string QTabBar_tr3(const char* s, const char* c, int n);
struct miqt_string QTabBar_trUtf82(const char* s, const char* c);
struct miqt_string QTabBar_trUtf83(const char* s, const char* c, int n);

QMetaObject* QTabBar_virtualbase_metaObject(const VirtualQTabBar* self);
void* QTabBar_virtualbase_metacast(VirtualQTabBar* self, const char* param1);
int QTabBar_virtualbase_metacall(VirtualQTabBar* self, int param1, int param2, void** param3);
QSize* QTabBar_virtualbase_sizeHint(const VirtualQTabBar* self);
QSize* QTabBar_virtualbase_minimumSizeHint(const VirtualQTabBar* self);
QSize* QTabBar_virtualbase_tabSizeHint(const VirtualQTabBar* self, int index);
QSize* QTabBar_virtualbase_minimumTabSizeHint(const VirtualQTabBar* self, int index);
void QTabBar_virtualbase_tabInserted(VirtualQTabBar* self, int index);
void QTabBar_virtualbase_tabRemoved(VirtualQTabBar* self, int index);
void QTabBar_virtualbase_tabLayoutChange(VirtualQTabBar* self);
bool QTabBar_virtualbase_event(VirtualQTabBar* self, QEvent* param1);
void QTabBar_virtualbase_resizeEvent(VirtualQTabBar* self, QResizeEvent* param1);
void QTabBar_virtualbase_showEvent(VirtualQTabBar* self, QShowEvent* param1);
void QTabBar_virtualbase_hideEvent(VirtualQTabBar* self, QHideEvent* param1);
void QTabBar_virtualbase_paintEvent(VirtualQTabBar* self, QPaintEvent* param1);
void QTabBar_virtualbase_mousePressEvent(VirtualQTabBar* self, QMouseEvent* param1);
void QTabBar_virtualbase_mouseMoveEvent(VirtualQTabBar* self, QMouseEvent* param1);
void QTabBar_virtualbase_mouseReleaseEvent(VirtualQTabBar* self, QMouseEvent* param1);
void QTabBar_virtualbase_wheelEvent(VirtualQTabBar* self, QWheelEvent* event);
void QTabBar_virtualbase_keyPressEvent(VirtualQTabBar* self, QKeyEvent* param1);
void QTabBar_virtualbase_changeEvent(VirtualQTabBar* self, QEvent* param1);
void QTabBar_virtualbase_timerEvent(VirtualQTabBar* self, QTimerEvent* event);
int QTabBar_virtualbase_devType(const VirtualQTabBar* self);
void QTabBar_virtualbase_setVisible(VirtualQTabBar* self, bool visible);
int QTabBar_virtualbase_heightForWidth(const VirtualQTabBar* self, int param1);
bool QTabBar_virtualbase_hasHeightForWidth(const VirtualQTabBar* self);
QPaintEngine* QTabBar_virtualbase_paintEngine(const VirtualQTabBar* self);
void QTabBar_virtualbase_mouseDoubleClickEvent(VirtualQTabBar* self, QMouseEvent* event);
void QTabBar_virtualbase_keyReleaseEvent(VirtualQTabBar* self, QKeyEvent* event);
void QTabBar_virtualbase_focusInEvent(VirtualQTabBar* self, QFocusEvent* event);
void QTabBar_virtualbase_focusOutEvent(VirtualQTabBar* self, QFocusEvent* event);
void QTabBar_virtualbase_enterEvent(VirtualQTabBar* self, QEvent* event);
void QTabBar_virtualbase_leaveEvent(VirtualQTabBar* self, QEvent* event);
void QTabBar_virtualbase_moveEvent(VirtualQTabBar* self, QMoveEvent* event);
void QTabBar_virtualbase_closeEvent(VirtualQTabBar* self, QCloseEvent* event);
void QTabBar_virtualbase_contextMenuEvent(VirtualQTabBar* self, QContextMenuEvent* event);
void QTabBar_virtualbase_tabletEvent(VirtualQTabBar* self, QTabletEvent* event);
void QTabBar_virtualbase_actionEvent(VirtualQTabBar* self, QActionEvent* event);
void QTabBar_virtualbase_dragEnterEvent(VirtualQTabBar* self, QDragEnterEvent* event);
void QTabBar_virtualbase_dragMoveEvent(VirtualQTabBar* self, QDragMoveEvent* event);
void QTabBar_virtualbase_dragLeaveEvent(VirtualQTabBar* self, QDragLeaveEvent* event);
void QTabBar_virtualbase_dropEvent(VirtualQTabBar* self, QDropEvent* event);
bool QTabBar_virtualbase_nativeEvent(VirtualQTabBar* self, struct miqt_string eventType, void* message, long* result);
int QTabBar_virtualbase_metric(const VirtualQTabBar* self, int param1);
void QTabBar_virtualbase_initPainter(const VirtualQTabBar* self, QPainter* painter);
QPaintDevice* QTabBar_virtualbase_redirected(const VirtualQTabBar* self, QPoint* offset);
QPainter* QTabBar_virtualbase_sharedPainter(const VirtualQTabBar* self);
void QTabBar_virtualbase_inputMethodEvent(VirtualQTabBar* self, QInputMethodEvent* param1);
QVariant* QTabBar_virtualbase_inputMethodQuery(const VirtualQTabBar* self, int param1);
bool QTabBar_virtualbase_focusNextPrevChild(VirtualQTabBar* self, bool next);
bool QTabBar_virtualbase_eventFilter(VirtualQTabBar* self, QObject* watched, QEvent* event);
void QTabBar_virtualbase_childEvent(VirtualQTabBar* self, QChildEvent* event);
void QTabBar_virtualbase_customEvent(VirtualQTabBar* self, QEvent* event);
void QTabBar_virtualbase_connectNotify(VirtualQTabBar* self, QMetaMethod* signal);
void QTabBar_virtualbase_disconnectNotify(VirtualQTabBar* self, QMetaMethod* signal);

void QTabBar_protectedbase_initStyleOption(const VirtualQTabBar* self, QStyleOptionTab* option, int tabIndex);
void QTabBar_protectedbase_updateMicroFocus(VirtualQTabBar* self);
void QTabBar_protectedbase_create(VirtualQTabBar* self);
void QTabBar_protectedbase_destroy(VirtualQTabBar* self);
bool QTabBar_protectedbase_focusNextChild(VirtualQTabBar* self);
bool QTabBar_protectedbase_focusPreviousChild(VirtualQTabBar* self);
QObject* QTabBar_protectedbase_sender(const VirtualQTabBar* self);
int QTabBar_protectedbase_senderSignalIndex(const VirtualQTabBar* self);
int QTabBar_protectedbase_receivers(const VirtualQTabBar* self, const char* signal);
bool QTabBar_protectedbase_isSignalConnected(const VirtualQTabBar* self, QMetaMethod* signal);

const QMetaObject* QTabBar_staticMetaObject();
void QTabBar_delete(QTabBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
