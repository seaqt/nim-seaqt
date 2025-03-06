#pragma once
#ifndef SEAQT_QTWIDGETS_GEN_QDESKTOPWIDGET_H
#define SEAQT_QTWIDGETS_GEN_QDESKTOPWIDGET_H

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
class QDesktopWidget;
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
class QRect;
class QResizeEvent;
class QShowEvent;
class QSize;
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
typedef struct QDesktopWidget QDesktopWidget;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QDesktopWidget_VTable {
	void (*destructor)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self);
	QMetaObject* (*metaObject)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self);
	void* (*metacast)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, const char* param1);
	int (*metacall)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, int param1, int param2, void** param3);
	void (*resizeEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QResizeEvent* e);
	int (*devType)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self);
	void (*setVisible)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, bool visible);
	QSize* (*sizeHint)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self);
	QSize* (*minimumSizeHint)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self);
	int (*heightForWidth)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self, int param1);
	bool (*hasHeightForWidth)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self);
	QPaintEngine* (*paintEngine)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self);
	bool (*event)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QEvent* event);
	void (*mousePressEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QMouseEvent* event);
	void (*wheelEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QKeyEvent* event);
	void (*focusInEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QFocusEvent* event);
	void (*enterEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QEvent* event);
	void (*leaveEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QEvent* event);
	void (*paintEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QPaintEvent* event);
	void (*moveEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QMoveEvent* event);
	void (*closeEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QTabletEvent* event);
	void (*actionEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QDropEvent* event);
	void (*showEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QHideEvent* event);
	bool (*nativeEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QEvent* param1);
	int (*metric)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self, int param1);
	void (*initPainter)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self);
	void (*inputMethodEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QDesktopWidget_VTable* vtbl, const QDesktopWidget* self, int param1);
	bool (*focusNextPrevChild)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, bool next);
	bool (*eventFilter)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QTimerEvent* event);
	void (*childEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QChildEvent* event);
	void (*customEvent)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QEvent* event);
	void (*connectNotify)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QDesktopWidget_VTable* vtbl, QDesktopWidget* self, QMetaMethod* signal);
};
QDesktopWidget* QDesktopWidget_new(struct QDesktopWidget_VTable* vtbl);
void QDesktopWidget_virtbase(QDesktopWidget* src, QWidget** outptr_QWidget);
QMetaObject* QDesktopWidget_metaObject(const QDesktopWidget* self);
void* QDesktopWidget_metacast(QDesktopWidget* self, const char* param1);
int QDesktopWidget_metacall(QDesktopWidget* self, int param1, int param2, void** param3);
struct miqt_string QDesktopWidget_tr(const char* s);
struct miqt_string QDesktopWidget_trUtf8(const char* s);
int QDesktopWidget_screenNumber(const QDesktopWidget* self);
QRect* QDesktopWidget_screenGeometry(const QDesktopWidget* self, QWidget* widget);
QRect* QDesktopWidget_availableGeometry(const QDesktopWidget* self, QWidget* widget);
bool QDesktopWidget_isVirtualDesktop(const QDesktopWidget* self);
int QDesktopWidget_numScreens(const QDesktopWidget* self);
int QDesktopWidget_screenCount(const QDesktopWidget* self);
int QDesktopWidget_primaryScreen(const QDesktopWidget* self);
int QDesktopWidget_screenNumberWithQPoint(const QDesktopWidget* self, QPoint* param1);
QWidget* QDesktopWidget_screen(QDesktopWidget* self);
QRect* QDesktopWidget_screenGeometry2(const QDesktopWidget* self);
QRect* QDesktopWidget_screenGeometryWithPoint(const QDesktopWidget* self, QPoint* point);
QRect* QDesktopWidget_availableGeometry2(const QDesktopWidget* self);
QRect* QDesktopWidget_availableGeometryWithPoint(const QDesktopWidget* self, QPoint* point);
void QDesktopWidget_resized(QDesktopWidget* self, int param1);
void QDesktopWidget_connect_resized(QDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDesktopWidget_workAreaResized(QDesktopWidget* self, int param1);
void QDesktopWidget_connect_workAreaResized(QDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDesktopWidget_screenCountChanged(QDesktopWidget* self, int param1);
void QDesktopWidget_connect_screenCountChanged(QDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDesktopWidget_primaryScreenChanged(QDesktopWidget* self);
void QDesktopWidget_connect_primaryScreenChanged(QDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDesktopWidget_resizeEvent(QDesktopWidget* self, QResizeEvent* e);
struct miqt_string QDesktopWidget_tr2(const char* s, const char* c);
struct miqt_string QDesktopWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QDesktopWidget_trUtf82(const char* s, const char* c);
struct miqt_string QDesktopWidget_trUtf83(const char* s, const char* c, int n);
int QDesktopWidget_screenNumber1(const QDesktopWidget* self, QWidget* widget);
QWidget* QDesktopWidget_screen1(QDesktopWidget* self, int screen);
QRect* QDesktopWidget_screenGeometry1(const QDesktopWidget* self, int screen);
QRect* QDesktopWidget_availableGeometry1(const QDesktopWidget* self, int screen);
QMetaObject* QDesktopWidget_virtualbase_metaObject(const void* self);
void* QDesktopWidget_virtualbase_metacast(void* self, const char* param1);
int QDesktopWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QDesktopWidget_virtualbase_resizeEvent(void* self, QResizeEvent* e);
int QDesktopWidget_virtualbase_devType(const void* self);
void QDesktopWidget_virtualbase_setVisible(void* self, bool visible);
QSize* QDesktopWidget_virtualbase_sizeHint(const void* self);
QSize* QDesktopWidget_virtualbase_minimumSizeHint(const void* self);
int QDesktopWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QDesktopWidget_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QDesktopWidget_virtualbase_paintEngine(const void* self);
bool QDesktopWidget_virtualbase_event(void* self, QEvent* event);
void QDesktopWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QDesktopWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QDesktopWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QDesktopWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QDesktopWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QDesktopWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QDesktopWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QDesktopWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QDesktopWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QDesktopWidget_virtualbase_enterEvent(void* self, QEvent* event);
void QDesktopWidget_virtualbase_leaveEvent(void* self, QEvent* event);
void QDesktopWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QDesktopWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QDesktopWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QDesktopWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QDesktopWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QDesktopWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
void QDesktopWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QDesktopWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QDesktopWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QDesktopWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
void QDesktopWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QDesktopWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QDesktopWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QDesktopWidget_virtualbase_changeEvent(void* self, QEvent* param1);
int QDesktopWidget_virtualbase_metric(const void* self, int param1);
void QDesktopWidget_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QDesktopWidget_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QDesktopWidget_virtualbase_sharedPainter(const void* self);
void QDesktopWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QDesktopWidget_virtualbase_inputMethodQuery(const void* self, int param1);
bool QDesktopWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QDesktopWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QDesktopWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QDesktopWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QDesktopWidget_virtualbase_customEvent(void* self, QEvent* event);
void QDesktopWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QDesktopWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDesktopWidget_protectedbase_updateMicroFocus(void* self);
void QDesktopWidget_protectedbase_create(void* self);
void QDesktopWidget_protectedbase_destroy(void* self);
bool QDesktopWidget_protectedbase_focusNextChild(void* self);
bool QDesktopWidget_protectedbase_focusPreviousChild(void* self);
QObject* QDesktopWidget_protectedbase_sender(const void* self);
int QDesktopWidget_protectedbase_senderSignalIndex(const void* self);
int QDesktopWidget_protectedbase_receivers(const void* self, const char* signal);
bool QDesktopWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QDesktopWidget_staticMetaObject();
void QDesktopWidget_delete(QDesktopWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
