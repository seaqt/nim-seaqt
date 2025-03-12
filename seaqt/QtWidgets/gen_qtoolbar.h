#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QTOOLBAR_H
#define SEAQT_QTWIDGETS_GEN_QTOOLBAR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
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
class QStyleOptionToolBar;
class QTabletEvent;
class QTimerEvent;
class QToolBar;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAction QAction;
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
typedef struct QStyleOptionToolBar QStyleOptionToolBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QToolBar QToolBar;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

typedef struct VirtualQToolBar VirtualQToolBar;
typedef struct QToolBar_VTable{
	void (*destructor)(VirtualQToolBar* self);
	QMetaObject* (*metaObject)(const VirtualQToolBar* self);
	void* (*metacast)(VirtualQToolBar* self, const char* param1);
	int (*metacall)(VirtualQToolBar* self, int param1, int param2, void** param3);
	void (*actionEvent)(VirtualQToolBar* self, QActionEvent* event);
	void (*changeEvent)(VirtualQToolBar* self, QEvent* event);
	void (*paintEvent)(VirtualQToolBar* self, QPaintEvent* event);
	bool (*event)(VirtualQToolBar* self, QEvent* event);
	void (*initStyleOption)(const VirtualQToolBar* self, QStyleOptionToolBar* option);
	int (*devType)(const VirtualQToolBar* self);
	void (*setVisible)(VirtualQToolBar* self, bool visible);
	QSize* (*sizeHint)(const VirtualQToolBar* self);
	QSize* (*minimumSizeHint)(const VirtualQToolBar* self);
	int (*heightForWidth)(const VirtualQToolBar* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQToolBar* self);
	QPaintEngine* (*paintEngine)(const VirtualQToolBar* self);
	void (*mousePressEvent)(VirtualQToolBar* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQToolBar* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQToolBar* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQToolBar* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQToolBar* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQToolBar* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQToolBar* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQToolBar* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQToolBar* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQToolBar* self, QEnterEvent* event);
	void (*leaveEvent)(VirtualQToolBar* self, QEvent* event);
	void (*moveEvent)(VirtualQToolBar* self, QMoveEvent* event);
	void (*resizeEvent)(VirtualQToolBar* self, QResizeEvent* event);
	void (*closeEvent)(VirtualQToolBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQToolBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQToolBar* self, QTabletEvent* event);
	void (*dragEnterEvent)(VirtualQToolBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQToolBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQToolBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQToolBar* self, QDropEvent* event);
	void (*showEvent)(VirtualQToolBar* self, QShowEvent* event);
	void (*hideEvent)(VirtualQToolBar* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQToolBar* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(const VirtualQToolBar* self, int param1);
	void (*initPainter)(const VirtualQToolBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQToolBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQToolBar* self);
	void (*inputMethodEvent)(VirtualQToolBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQToolBar* self, int param1);
	bool (*focusNextPrevChild)(VirtualQToolBar* self, bool next);
	bool (*eventFilter)(VirtualQToolBar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQToolBar* self, QTimerEvent* event);
	void (*childEvent)(VirtualQToolBar* self, QChildEvent* event);
	void (*customEvent)(VirtualQToolBar* self, QEvent* event);
	void (*connectNotify)(VirtualQToolBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQToolBar* self, QMetaMethod* signal);
}QToolBar_VTable;

const QToolBar_VTable* QToolBar_vtbl(const VirtualQToolBar* self);
void* QToolBar_vdata(const VirtualQToolBar* self);
void QToolBar_setVdata(VirtualQToolBar* self, void* vdata);

VirtualQToolBar* QToolBar_new(const QToolBar_VTable* vtbl, void* vdata, QWidget* parent);
VirtualQToolBar* QToolBar_new2(const QToolBar_VTable* vtbl, void* vdata, struct miqt_string title);
VirtualQToolBar* QToolBar_new3(const QToolBar_VTable* vtbl, void* vdata);
VirtualQToolBar* QToolBar_new4(const QToolBar_VTable* vtbl, void* vdata, struct miqt_string title, QWidget* parent);

void QToolBar_virtbase(QToolBar* src, QWidget** outptr_QWidget);
QMetaObject* QToolBar_metaObject(const QToolBar* self);
void* QToolBar_metacast(QToolBar* self, const char* param1);
int QToolBar_metacall(QToolBar* self, int param1, int param2, void** param3);
struct miqt_string QToolBar_tr(const char* s);
void QToolBar_setMovable(QToolBar* self, bool movable);
bool QToolBar_isMovable(const QToolBar* self);
void QToolBar_setAllowedAreas(QToolBar* self, int areas);
int QToolBar_allowedAreas(const QToolBar* self);
bool QToolBar_isAreaAllowed(const QToolBar* self, int area);
void QToolBar_setOrientation(QToolBar* self, int orientation);
int QToolBar_orientation(const QToolBar* self);
void QToolBar_clear(QToolBar* self);
QAction* QToolBar_addSeparator(QToolBar* self);
QAction* QToolBar_insertSeparator(QToolBar* self, QAction* before);
QAction* QToolBar_addWidget(QToolBar* self, QWidget* widget);
QAction* QToolBar_insertWidget(QToolBar* self, QAction* before, QWidget* widget);
QRect* QToolBar_actionGeometry(const QToolBar* self, QAction* action);
QAction* QToolBar_actionAt(const QToolBar* self, QPoint* p);
QAction* QToolBar_actionAt2(const QToolBar* self, int x, int y);
QAction* QToolBar_toggleViewAction(const QToolBar* self);
QSize* QToolBar_iconSize(const QToolBar* self);
int QToolBar_toolButtonStyle(const QToolBar* self);
QWidget* QToolBar_widgetForAction(const QToolBar* self, QAction* action);
bool QToolBar_isFloatable(const QToolBar* self);
void QToolBar_setFloatable(QToolBar* self, bool floatable);
bool QToolBar_isFloating(const QToolBar* self);
void QToolBar_setIconSize(QToolBar* self, QSize* iconSize);
void QToolBar_setToolButtonStyle(QToolBar* self, int toolButtonStyle);
void QToolBar_actionTriggered(QToolBar* self, QAction* action);
void QToolBar_connect_actionTriggered(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
void QToolBar_movableChanged(QToolBar* self, bool movable);
void QToolBar_connect_movableChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QToolBar_allowedAreasChanged(QToolBar* self, int allowedAreas);
void QToolBar_connect_allowedAreasChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QToolBar_orientationChanged(QToolBar* self, int orientation);
void QToolBar_connect_orientationChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QToolBar_iconSizeChanged(QToolBar* self, QSize* iconSize);
void QToolBar_connect_iconSizeChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
void QToolBar_toolButtonStyleChanged(QToolBar* self, int toolButtonStyle);
void QToolBar_connect_toolButtonStyleChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QToolBar_topLevelChanged(QToolBar* self, bool topLevel);
void QToolBar_connect_topLevelChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QToolBar_visibilityChanged(QToolBar* self, bool visible);
void QToolBar_connect_visibilityChanged(VirtualQToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QToolBar_actionEvent(QToolBar* self, QActionEvent* event);
void QToolBar_changeEvent(QToolBar* self, QEvent* event);
void QToolBar_paintEvent(QToolBar* self, QPaintEvent* event);
bool QToolBar_event(QToolBar* self, QEvent* event);
void QToolBar_initStyleOption(const QToolBar* self, QStyleOptionToolBar* option);
struct miqt_string QToolBar_tr2(const char* s, const char* c);
struct miqt_string QToolBar_tr3(const char* s, const char* c, int n);

QMetaObject* QToolBar_virtualbase_metaObject(const VirtualQToolBar* self);
void* QToolBar_virtualbase_metacast(VirtualQToolBar* self, const char* param1);
int QToolBar_virtualbase_metacall(VirtualQToolBar* self, int param1, int param2, void** param3);
void QToolBar_virtualbase_actionEvent(VirtualQToolBar* self, QActionEvent* event);
void QToolBar_virtualbase_changeEvent(VirtualQToolBar* self, QEvent* event);
void QToolBar_virtualbase_paintEvent(VirtualQToolBar* self, QPaintEvent* event);
bool QToolBar_virtualbase_event(VirtualQToolBar* self, QEvent* event);
void QToolBar_virtualbase_initStyleOption(const VirtualQToolBar* self, QStyleOptionToolBar* option);
int QToolBar_virtualbase_devType(const VirtualQToolBar* self);
void QToolBar_virtualbase_setVisible(VirtualQToolBar* self, bool visible);
QSize* QToolBar_virtualbase_sizeHint(const VirtualQToolBar* self);
QSize* QToolBar_virtualbase_minimumSizeHint(const VirtualQToolBar* self);
int QToolBar_virtualbase_heightForWidth(const VirtualQToolBar* self, int param1);
bool QToolBar_virtualbase_hasHeightForWidth(const VirtualQToolBar* self);
QPaintEngine* QToolBar_virtualbase_paintEngine(const VirtualQToolBar* self);
void QToolBar_virtualbase_mousePressEvent(VirtualQToolBar* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseReleaseEvent(VirtualQToolBar* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseDoubleClickEvent(VirtualQToolBar* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseMoveEvent(VirtualQToolBar* self, QMouseEvent* event);
void QToolBar_virtualbase_wheelEvent(VirtualQToolBar* self, QWheelEvent* event);
void QToolBar_virtualbase_keyPressEvent(VirtualQToolBar* self, QKeyEvent* event);
void QToolBar_virtualbase_keyReleaseEvent(VirtualQToolBar* self, QKeyEvent* event);
void QToolBar_virtualbase_focusInEvent(VirtualQToolBar* self, QFocusEvent* event);
void QToolBar_virtualbase_focusOutEvent(VirtualQToolBar* self, QFocusEvent* event);
void QToolBar_virtualbase_enterEvent(VirtualQToolBar* self, QEnterEvent* event);
void QToolBar_virtualbase_leaveEvent(VirtualQToolBar* self, QEvent* event);
void QToolBar_virtualbase_moveEvent(VirtualQToolBar* self, QMoveEvent* event);
void QToolBar_virtualbase_resizeEvent(VirtualQToolBar* self, QResizeEvent* event);
void QToolBar_virtualbase_closeEvent(VirtualQToolBar* self, QCloseEvent* event);
void QToolBar_virtualbase_contextMenuEvent(VirtualQToolBar* self, QContextMenuEvent* event);
void QToolBar_virtualbase_tabletEvent(VirtualQToolBar* self, QTabletEvent* event);
void QToolBar_virtualbase_dragEnterEvent(VirtualQToolBar* self, QDragEnterEvent* event);
void QToolBar_virtualbase_dragMoveEvent(VirtualQToolBar* self, QDragMoveEvent* event);
void QToolBar_virtualbase_dragLeaveEvent(VirtualQToolBar* self, QDragLeaveEvent* event);
void QToolBar_virtualbase_dropEvent(VirtualQToolBar* self, QDropEvent* event);
void QToolBar_virtualbase_showEvent(VirtualQToolBar* self, QShowEvent* event);
void QToolBar_virtualbase_hideEvent(VirtualQToolBar* self, QHideEvent* event);
bool QToolBar_virtualbase_nativeEvent(VirtualQToolBar* self, struct miqt_string eventType, void* message, intptr_t* result);
int QToolBar_virtualbase_metric(const VirtualQToolBar* self, int param1);
void QToolBar_virtualbase_initPainter(const VirtualQToolBar* self, QPainter* painter);
QPaintDevice* QToolBar_virtualbase_redirected(const VirtualQToolBar* self, QPoint* offset);
QPainter* QToolBar_virtualbase_sharedPainter(const VirtualQToolBar* self);
void QToolBar_virtualbase_inputMethodEvent(VirtualQToolBar* self, QInputMethodEvent* param1);
QVariant* QToolBar_virtualbase_inputMethodQuery(const VirtualQToolBar* self, int param1);
bool QToolBar_virtualbase_focusNextPrevChild(VirtualQToolBar* self, bool next);
bool QToolBar_virtualbase_eventFilter(VirtualQToolBar* self, QObject* watched, QEvent* event);
void QToolBar_virtualbase_timerEvent(VirtualQToolBar* self, QTimerEvent* event);
void QToolBar_virtualbase_childEvent(VirtualQToolBar* self, QChildEvent* event);
void QToolBar_virtualbase_customEvent(VirtualQToolBar* self, QEvent* event);
void QToolBar_virtualbase_connectNotify(VirtualQToolBar* self, QMetaMethod* signal);
void QToolBar_virtualbase_disconnectNotify(VirtualQToolBar* self, QMetaMethod* signal);

void QToolBar_protectedbase_updateMicroFocus(VirtualQToolBar* self);
void QToolBar_protectedbase_create(VirtualQToolBar* self);
void QToolBar_protectedbase_destroy(VirtualQToolBar* self);
bool QToolBar_protectedbase_focusNextChild(VirtualQToolBar* self);
bool QToolBar_protectedbase_focusPreviousChild(VirtualQToolBar* self);
QObject* QToolBar_protectedbase_sender(const VirtualQToolBar* self);
int QToolBar_protectedbase_senderSignalIndex(const VirtualQToolBar* self);
int QToolBar_protectedbase_receivers(const VirtualQToolBar* self, const char* signal);
bool QToolBar_protectedbase_isSignalConnected(const VirtualQToolBar* self, QMetaMethod* signal);

const QMetaObject* QToolBar_staticMetaObject();
void QToolBar_delete(QToolBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
