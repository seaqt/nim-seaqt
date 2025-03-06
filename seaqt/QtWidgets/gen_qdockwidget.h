#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDOCKWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QDOCKWIDGET_H

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
class QDockWidget;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
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
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionDockWidget;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAction QAction;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDockWidget QDockWidget;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
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
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionDockWidget QStyleOptionDockWidget;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QDockWidget_VTable {
	void (*destructor)(struct QDockWidget_VTable* vtbl, QDockWidget* self);
	QMetaObject* (*metaObject)(struct QDockWidget_VTable* vtbl, const QDockWidget* self);
	void* (*metacast)(struct QDockWidget_VTable* vtbl, QDockWidget* self, const char* param1);
	int (*metacall)(struct QDockWidget_VTable* vtbl, QDockWidget* self, int param1, int param2, void** param3);
	void (*changeEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QEvent* event);
	void (*closeEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QCloseEvent* event);
	void (*paintEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QPaintEvent* event);
	bool (*event)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QEvent* event);
	int (*devType)(struct QDockWidget_VTable* vtbl, const QDockWidget* self);
	void (*setVisible)(struct QDockWidget_VTable* vtbl, QDockWidget* self, bool visible);
	QSize* (*sizeHint)(struct QDockWidget_VTable* vtbl, const QDockWidget* self);
	QSize* (*minimumSizeHint)(struct QDockWidget_VTable* vtbl, const QDockWidget* self);
	int (*heightForWidth)(struct QDockWidget_VTable* vtbl, const QDockWidget* self, int param1);
	bool (*hasHeightForWidth)(struct QDockWidget_VTable* vtbl, const QDockWidget* self);
	QPaintEngine* (*paintEngine)(struct QDockWidget_VTable* vtbl, const QDockWidget* self);
	void (*mousePressEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QMouseEvent* event);
	void (*wheelEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QKeyEvent* event);
	void (*focusInEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QFocusEvent* event);
	void (*enterEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QEvent* event);
	void (*leaveEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QEvent* event);
	void (*moveEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QMoveEvent* event);
	void (*resizeEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QResizeEvent* event);
	void (*contextMenuEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QTabletEvent* event);
	void (*actionEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QDropEvent* event);
	void (*showEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QHideEvent* event);
	bool (*nativeEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QDockWidget_VTable* vtbl, const QDockWidget* self, int param1);
	void (*initPainter)(struct QDockWidget_VTable* vtbl, const QDockWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QDockWidget_VTable* vtbl, const QDockWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QDockWidget_VTable* vtbl, const QDockWidget* self);
	void (*inputMethodEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QDockWidget_VTable* vtbl, const QDockWidget* self, int param1);
	bool (*focusNextPrevChild)(struct QDockWidget_VTable* vtbl, QDockWidget* self, bool next);
	bool (*eventFilter)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QTimerEvent* event);
	void (*childEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QChildEvent* event);
	void (*customEvent)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QEvent* event);
	void (*connectNotify)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDockWidget_VTable* vtbl, QDockWidget* self, QMetaMethod* signal);
};
QDockWidget* QDockWidget_new(struct QDockWidget_VTable* vtbl, QWidget* parent);
QDockWidget* QDockWidget_new2(struct QDockWidget_VTable* vtbl, struct miqt_string title);
QDockWidget* QDockWidget_new3(struct QDockWidget_VTable* vtbl);
QDockWidget* QDockWidget_new4(struct QDockWidget_VTable* vtbl, struct miqt_string title, QWidget* parent);
QDockWidget* QDockWidget_new5(struct QDockWidget_VTable* vtbl, struct miqt_string title, QWidget* parent, int flags);
QDockWidget* QDockWidget_new6(struct QDockWidget_VTable* vtbl, QWidget* parent, int flags);
void QDockWidget_virtbase(QDockWidget* src, QWidget** outptr_QWidget);
QMetaObject* QDockWidget_metaObject(const QDockWidget* self);
void* QDockWidget_metacast(QDockWidget* self, const char* param1);
int QDockWidget_metacall(QDockWidget* self, int param1, int param2, void** param3);
struct miqt_string QDockWidget_tr(const char* s);
struct miqt_string QDockWidget_trUtf8(const char* s);
QWidget* QDockWidget_widget(const QDockWidget* self);
void QDockWidget_setWidget(QDockWidget* self, QWidget* widget);
void QDockWidget_setFeatures(QDockWidget* self, int features);
int QDockWidget_features(const QDockWidget* self);
void QDockWidget_setFloating(QDockWidget* self, bool floating);
bool QDockWidget_isFloating(const QDockWidget* self);
void QDockWidget_setAllowedAreas(QDockWidget* self, int areas);
int QDockWidget_allowedAreas(const QDockWidget* self);
void QDockWidget_setTitleBarWidget(QDockWidget* self, QWidget* widget);
QWidget* QDockWidget_titleBarWidget(const QDockWidget* self);
bool QDockWidget_isAreaAllowed(const QDockWidget* self, int area);
QAction* QDockWidget_toggleViewAction(const QDockWidget* self);
void QDockWidget_featuresChanged(QDockWidget* self, int features);
void QDockWidget_connect_featuresChanged(QDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDockWidget_topLevelChanged(QDockWidget* self, bool topLevel);
void QDockWidget_connect_topLevelChanged(QDockWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QDockWidget_allowedAreasChanged(QDockWidget* self, int allowedAreas);
void QDockWidget_connect_allowedAreasChanged(QDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDockWidget_visibilityChanged(QDockWidget* self, bool visible);
void QDockWidget_connect_visibilityChanged(QDockWidget* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QDockWidget_dockLocationChanged(QDockWidget* self, int area);
void QDockWidget_connect_dockLocationChanged(QDockWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDockWidget_changeEvent(QDockWidget* self, QEvent* event);
void QDockWidget_closeEvent(QDockWidget* self, QCloseEvent* event);
void QDockWidget_paintEvent(QDockWidget* self, QPaintEvent* event);
bool QDockWidget_event(QDockWidget* self, QEvent* event);
struct miqt_string QDockWidget_tr2(const char* s, const char* c);
struct miqt_string QDockWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QDockWidget_trUtf82(const char* s, const char* c);
struct miqt_string QDockWidget_trUtf83(const char* s, const char* c, int n);
QMetaObject* QDockWidget_virtualbase_metaObject(const void* self);
void* QDockWidget_virtualbase_metacast(void* self, const char* param1);
int QDockWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QDockWidget_virtualbase_changeEvent(void* self, QEvent* event);
void QDockWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QDockWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QDockWidget_virtualbase_event(void* self, QEvent* event);
int QDockWidget_virtualbase_devType(const void* self);
void QDockWidget_virtualbase_setVisible(void* self, bool visible);
QSize* QDockWidget_virtualbase_sizeHint(const void* self);
QSize* QDockWidget_virtualbase_minimumSizeHint(const void* self);
int QDockWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QDockWidget_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QDockWidget_virtualbase_paintEngine(const void* self);
void QDockWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QDockWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QDockWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QDockWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QDockWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QDockWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QDockWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QDockWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QDockWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QDockWidget_virtualbase_enterEvent(void* self, QEvent* event);
void QDockWidget_virtualbase_leaveEvent(void* self, QEvent* event);
void QDockWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QDockWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QDockWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QDockWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QDockWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
void QDockWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QDockWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QDockWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QDockWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
void QDockWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QDockWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QDockWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QDockWidget_virtualbase_metric(const void* self, int param1);
void QDockWidget_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QDockWidget_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QDockWidget_virtualbase_sharedPainter(const void* self);
void QDockWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QDockWidget_virtualbase_inputMethodQuery(const void* self, int param1);
bool QDockWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QDockWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDockWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDockWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QDockWidget_virtualbase_customEvent(void* self, QEvent* event);
void QDockWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDockWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDockWidget_protectedbase_initStyleOption(const void* self, QStyleOptionDockWidget* option);
void QDockWidget_protectedbase_updateMicroFocus(void* self);
void QDockWidget_protectedbase_create(void* self);
void QDockWidget_protectedbase_destroy(void* self);
bool QDockWidget_protectedbase_focusNextChild(void* self);
bool QDockWidget_protectedbase_focusPreviousChild(void* self);
QObject* QDockWidget_protectedbase_sender(const void* self);
int QDockWidget_protectedbase_senderSignalIndex(const void* self);
int QDockWidget_protectedbase_receivers(const void* self, const char* signal);
bool QDockWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QDockWidget_staticMetaObject();
void QDockWidget_delete(QDockWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
