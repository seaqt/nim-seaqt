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

struct QToolBar_VTable {
	void (*destructor)(struct QToolBar_VTable* vtbl, QToolBar* self);
	QMetaObject* (*metaObject)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	void* (*metacast)(struct QToolBar_VTable* vtbl, QToolBar* self, const char* param1);
	int (*metacall)(struct QToolBar_VTable* vtbl, QToolBar* self, int param1, int param2, void** param3);
	void (*actionEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QActionEvent* event);
	void (*changeEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	void (*paintEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QPaintEvent* event);
	bool (*event)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	void (*initStyleOption)(struct QToolBar_VTable* vtbl, const QToolBar* self, QStyleOptionToolBar* option);
	int (*devType)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	void (*setVisible)(struct QToolBar_VTable* vtbl, QToolBar* self, bool visible);
	QSize* (*sizeHint)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	QSize* (*minimumSizeHint)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	int (*heightForWidth)(struct QToolBar_VTable* vtbl, const QToolBar* self, int param1);
	bool (*hasHeightForWidth)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	QPaintEngine* (*paintEngine)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	void (*mousePressEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMouseEvent* event);
	void (*wheelEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QKeyEvent* event);
	void (*focusInEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QFocusEvent* event);
	void (*enterEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QEnterEvent* event);
	void (*leaveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	void (*moveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMoveEvent* event);
	void (*resizeEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QResizeEvent* event);
	void (*closeEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QTabletEvent* event);
	void (*dragEnterEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QDropEvent* event);
	void (*showEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QShowEvent* event);
	void (*hideEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QHideEvent* event);
	bool (*nativeEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QToolBar_VTable* vtbl, const QToolBar* self, int param1);
	void (*initPainter)(struct QToolBar_VTable* vtbl, const QToolBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QToolBar_VTable* vtbl, const QToolBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	void (*inputMethodEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QToolBar_VTable* vtbl, const QToolBar* self, int param1);
	bool (*focusNextPrevChild)(struct QToolBar_VTable* vtbl, QToolBar* self, bool next);
	bool (*eventFilter)(struct QToolBar_VTable* vtbl, QToolBar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QTimerEvent* event);
	void (*childEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QChildEvent* event);
	void (*customEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	void (*connectNotify)(struct QToolBar_VTable* vtbl, QToolBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QToolBar_VTable* vtbl, QToolBar* self, QMetaMethod* signal);
};
QToolBar* QToolBar_new(struct QToolBar_VTable* vtbl, QWidget* parent);
QToolBar* QToolBar_new2(struct QToolBar_VTable* vtbl, struct miqt_string title);
QToolBar* QToolBar_new3(struct QToolBar_VTable* vtbl);
QToolBar* QToolBar_new4(struct QToolBar_VTable* vtbl, struct miqt_string title, QWidget* parent);
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
void QToolBar_connect_actionTriggered(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t));
void QToolBar_movableChanged(QToolBar* self, bool movable);
void QToolBar_connect_movableChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QToolBar_allowedAreasChanged(QToolBar* self, int allowedAreas);
void QToolBar_connect_allowedAreasChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QToolBar_orientationChanged(QToolBar* self, int orientation);
void QToolBar_connect_orientationChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QToolBar_iconSizeChanged(QToolBar* self, QSize* iconSize);
void QToolBar_connect_iconSizeChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, QSize*), void (*release)(intptr_t));
void QToolBar_toolButtonStyleChanged(QToolBar* self, int toolButtonStyle);
void QToolBar_connect_toolButtonStyleChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QToolBar_topLevelChanged(QToolBar* self, bool topLevel);
void QToolBar_connect_topLevelChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QToolBar_visibilityChanged(QToolBar* self, bool visible);
void QToolBar_connect_visibilityChanged(QToolBar* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QToolBar_actionEvent(QToolBar* self, QActionEvent* event);
void QToolBar_changeEvent(QToolBar* self, QEvent* event);
void QToolBar_paintEvent(QToolBar* self, QPaintEvent* event);
bool QToolBar_event(QToolBar* self, QEvent* event);
void QToolBar_initStyleOption(const QToolBar* self, QStyleOptionToolBar* option);
struct miqt_string QToolBar_tr2(const char* s, const char* c);
struct miqt_string QToolBar_tr3(const char* s, const char* c, int n);
QMetaObject* QToolBar_virtualbase_metaObject(const void* self);
void* QToolBar_virtualbase_metacast(void* self, const char* param1);
int QToolBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QToolBar_virtualbase_actionEvent(void* self, QActionEvent* event);
void QToolBar_virtualbase_changeEvent(void* self, QEvent* event);
void QToolBar_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QToolBar_virtualbase_event(void* self, QEvent* event);
void QToolBar_virtualbase_initStyleOption(const void* self, QStyleOptionToolBar* option);
int QToolBar_virtualbase_devType(const void* self);
void QToolBar_virtualbase_setVisible(void* self, bool visible);
QSize* QToolBar_virtualbase_sizeHint(const void* self);
QSize* QToolBar_virtualbase_minimumSizeHint(const void* self);
int QToolBar_virtualbase_heightForWidth(const void* self, int param1);
bool QToolBar_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QToolBar_virtualbase_paintEngine(const void* self);
void QToolBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QToolBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QToolBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QToolBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QToolBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QToolBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QToolBar_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QToolBar_virtualbase_leaveEvent(void* self, QEvent* event);
void QToolBar_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QToolBar_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QToolBar_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QToolBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QToolBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QToolBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QToolBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QToolBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QToolBar_virtualbase_dropEvent(void* self, QDropEvent* event);
void QToolBar_virtualbase_showEvent(void* self, QShowEvent* event);
void QToolBar_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QToolBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QToolBar_virtualbase_metric(const void* self, int param1);
void QToolBar_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QToolBar_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QToolBar_virtualbase_sharedPainter(const void* self);
void QToolBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QToolBar_virtualbase_inputMethodQuery(const void* self, int param1);
bool QToolBar_virtualbase_focusNextPrevChild(void* self, bool next);
bool QToolBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QToolBar_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QToolBar_virtualbase_childEvent(void* self, QChildEvent* event);
void QToolBar_virtualbase_customEvent(void* self, QEvent* event);
void QToolBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QToolBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QToolBar_protectedbase_updateMicroFocus(void* self);
void QToolBar_protectedbase_create(void* self);
void QToolBar_protectedbase_destroy(void* self);
bool QToolBar_protectedbase_focusNextChild(void* self);
bool QToolBar_protectedbase_focusPreviousChild(void* self);
QObject* QToolBar_protectedbase_sender(const void* self);
int QToolBar_protectedbase_senderSignalIndex(const void* self);
int QToolBar_protectedbase_receivers(const void* self, const char* signal);
bool QToolBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QToolBar_staticMetaObject();
void QToolBar_delete(QToolBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
