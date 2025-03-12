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

typedef struct VirtualQDesktopWidget VirtualQDesktopWidget;
typedef struct QDesktopWidget_VTable{
	void (*destructor)(VirtualQDesktopWidget* self);
	QMetaObject* (*metaObject)(const VirtualQDesktopWidget* self);
	void* (*metacast)(VirtualQDesktopWidget* self, const char* param1);
	int (*metacall)(VirtualQDesktopWidget* self, int param1, int param2, void** param3);
	void (*resizeEvent)(VirtualQDesktopWidget* self, QResizeEvent* e);
	int (*devType)(const VirtualQDesktopWidget* self);
	void (*setVisible)(VirtualQDesktopWidget* self, bool visible);
	QSize* (*sizeHint)(const VirtualQDesktopWidget* self);
	QSize* (*minimumSizeHint)(const VirtualQDesktopWidget* self);
	int (*heightForWidth)(const VirtualQDesktopWidget* self, int param1);
	bool (*hasHeightForWidth)(const VirtualQDesktopWidget* self);
	QPaintEngine* (*paintEngine)(const VirtualQDesktopWidget* self);
	bool (*event)(VirtualQDesktopWidget* self, QEvent* event);
	void (*mousePressEvent)(VirtualQDesktopWidget* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(VirtualQDesktopWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(VirtualQDesktopWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(VirtualQDesktopWidget* self, QMouseEvent* event);
	void (*wheelEvent)(VirtualQDesktopWidget* self, QWheelEvent* event);
	void (*keyPressEvent)(VirtualQDesktopWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(VirtualQDesktopWidget* self, QKeyEvent* event);
	void (*focusInEvent)(VirtualQDesktopWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(VirtualQDesktopWidget* self, QFocusEvent* event);
	void (*enterEvent)(VirtualQDesktopWidget* self, QEvent* event);
	void (*leaveEvent)(VirtualQDesktopWidget* self, QEvent* event);
	void (*paintEvent)(VirtualQDesktopWidget* self, QPaintEvent* event);
	void (*moveEvent)(VirtualQDesktopWidget* self, QMoveEvent* event);
	void (*closeEvent)(VirtualQDesktopWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(VirtualQDesktopWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(VirtualQDesktopWidget* self, QTabletEvent* event);
	void (*actionEvent)(VirtualQDesktopWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(VirtualQDesktopWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(VirtualQDesktopWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(VirtualQDesktopWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(VirtualQDesktopWidget* self, QDropEvent* event);
	void (*showEvent)(VirtualQDesktopWidget* self, QShowEvent* event);
	void (*hideEvent)(VirtualQDesktopWidget* self, QHideEvent* event);
	bool (*nativeEvent)(VirtualQDesktopWidget* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(VirtualQDesktopWidget* self, QEvent* param1);
	int (*metric)(const VirtualQDesktopWidget* self, int param1);
	void (*initPainter)(const VirtualQDesktopWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(const VirtualQDesktopWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(const VirtualQDesktopWidget* self);
	void (*inputMethodEvent)(VirtualQDesktopWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(const VirtualQDesktopWidget* self, int param1);
	bool (*focusNextPrevChild)(VirtualQDesktopWidget* self, bool next);
	bool (*eventFilter)(VirtualQDesktopWidget* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQDesktopWidget* self, QTimerEvent* event);
	void (*childEvent)(VirtualQDesktopWidget* self, QChildEvent* event);
	void (*customEvent)(VirtualQDesktopWidget* self, QEvent* event);
	void (*connectNotify)(VirtualQDesktopWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQDesktopWidget* self, QMetaMethod* signal);
}QDesktopWidget_VTable;

const QDesktopWidget_VTable* QDesktopWidget_vtbl(const VirtualQDesktopWidget* self);
void* QDesktopWidget_vdata(const VirtualQDesktopWidget* self);
void QDesktopWidget_setVdata(VirtualQDesktopWidget* self, void* vdata);

VirtualQDesktopWidget* QDesktopWidget_new(const QDesktopWidget_VTable* vtbl, void* vdata);

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
void QDesktopWidget_connect_resized(VirtualQDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDesktopWidget_workAreaResized(QDesktopWidget* self, int param1);
void QDesktopWidget_connect_workAreaResized(VirtualQDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDesktopWidget_screenCountChanged(QDesktopWidget* self, int param1);
void QDesktopWidget_connect_screenCountChanged(VirtualQDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QDesktopWidget_primaryScreenChanged(QDesktopWidget* self);
void QDesktopWidget_connect_primaryScreenChanged(VirtualQDesktopWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QDesktopWidget_resizeEvent(QDesktopWidget* self, QResizeEvent* e);
struct miqt_string QDesktopWidget_tr2(const char* s, const char* c);
struct miqt_string QDesktopWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QDesktopWidget_trUtf82(const char* s, const char* c);
struct miqt_string QDesktopWidget_trUtf83(const char* s, const char* c, int n);
int QDesktopWidget_screenNumber1(const QDesktopWidget* self, QWidget* widget);
QWidget* QDesktopWidget_screen1(QDesktopWidget* self, int screen);
QRect* QDesktopWidget_screenGeometry1(const QDesktopWidget* self, int screen);
QRect* QDesktopWidget_availableGeometry1(const QDesktopWidget* self, int screen);

QMetaObject* QDesktopWidget_virtualbase_metaObject(const VirtualQDesktopWidget* self);
void* QDesktopWidget_virtualbase_metacast(VirtualQDesktopWidget* self, const char* param1);
int QDesktopWidget_virtualbase_metacall(VirtualQDesktopWidget* self, int param1, int param2, void** param3);
void QDesktopWidget_virtualbase_resizeEvent(VirtualQDesktopWidget* self, QResizeEvent* e);
int QDesktopWidget_virtualbase_devType(const VirtualQDesktopWidget* self);
void QDesktopWidget_virtualbase_setVisible(VirtualQDesktopWidget* self, bool visible);
QSize* QDesktopWidget_virtualbase_sizeHint(const VirtualQDesktopWidget* self);
QSize* QDesktopWidget_virtualbase_minimumSizeHint(const VirtualQDesktopWidget* self);
int QDesktopWidget_virtualbase_heightForWidth(const VirtualQDesktopWidget* self, int param1);
bool QDesktopWidget_virtualbase_hasHeightForWidth(const VirtualQDesktopWidget* self);
QPaintEngine* QDesktopWidget_virtualbase_paintEngine(const VirtualQDesktopWidget* self);
bool QDesktopWidget_virtualbase_event(VirtualQDesktopWidget* self, QEvent* event);
void QDesktopWidget_virtualbase_mousePressEvent(VirtualQDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_virtualbase_mouseReleaseEvent(VirtualQDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_virtualbase_mouseDoubleClickEvent(VirtualQDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_virtualbase_mouseMoveEvent(VirtualQDesktopWidget* self, QMouseEvent* event);
void QDesktopWidget_virtualbase_wheelEvent(VirtualQDesktopWidget* self, QWheelEvent* event);
void QDesktopWidget_virtualbase_keyPressEvent(VirtualQDesktopWidget* self, QKeyEvent* event);
void QDesktopWidget_virtualbase_keyReleaseEvent(VirtualQDesktopWidget* self, QKeyEvent* event);
void QDesktopWidget_virtualbase_focusInEvent(VirtualQDesktopWidget* self, QFocusEvent* event);
void QDesktopWidget_virtualbase_focusOutEvent(VirtualQDesktopWidget* self, QFocusEvent* event);
void QDesktopWidget_virtualbase_enterEvent(VirtualQDesktopWidget* self, QEvent* event);
void QDesktopWidget_virtualbase_leaveEvent(VirtualQDesktopWidget* self, QEvent* event);
void QDesktopWidget_virtualbase_paintEvent(VirtualQDesktopWidget* self, QPaintEvent* event);
void QDesktopWidget_virtualbase_moveEvent(VirtualQDesktopWidget* self, QMoveEvent* event);
void QDesktopWidget_virtualbase_closeEvent(VirtualQDesktopWidget* self, QCloseEvent* event);
void QDesktopWidget_virtualbase_contextMenuEvent(VirtualQDesktopWidget* self, QContextMenuEvent* event);
void QDesktopWidget_virtualbase_tabletEvent(VirtualQDesktopWidget* self, QTabletEvent* event);
void QDesktopWidget_virtualbase_actionEvent(VirtualQDesktopWidget* self, QActionEvent* event);
void QDesktopWidget_virtualbase_dragEnterEvent(VirtualQDesktopWidget* self, QDragEnterEvent* event);
void QDesktopWidget_virtualbase_dragMoveEvent(VirtualQDesktopWidget* self, QDragMoveEvent* event);
void QDesktopWidget_virtualbase_dragLeaveEvent(VirtualQDesktopWidget* self, QDragLeaveEvent* event);
void QDesktopWidget_virtualbase_dropEvent(VirtualQDesktopWidget* self, QDropEvent* event);
void QDesktopWidget_virtualbase_showEvent(VirtualQDesktopWidget* self, QShowEvent* event);
void QDesktopWidget_virtualbase_hideEvent(VirtualQDesktopWidget* self, QHideEvent* event);
bool QDesktopWidget_virtualbase_nativeEvent(VirtualQDesktopWidget* self, struct miqt_string eventType, void* message, long* result);
void QDesktopWidget_virtualbase_changeEvent(VirtualQDesktopWidget* self, QEvent* param1);
int QDesktopWidget_virtualbase_metric(const VirtualQDesktopWidget* self, int param1);
void QDesktopWidget_virtualbase_initPainter(const VirtualQDesktopWidget* self, QPainter* painter);
QPaintDevice* QDesktopWidget_virtualbase_redirected(const VirtualQDesktopWidget* self, QPoint* offset);
QPainter* QDesktopWidget_virtualbase_sharedPainter(const VirtualQDesktopWidget* self);
void QDesktopWidget_virtualbase_inputMethodEvent(VirtualQDesktopWidget* self, QInputMethodEvent* param1);
QVariant* QDesktopWidget_virtualbase_inputMethodQuery(const VirtualQDesktopWidget* self, int param1);
bool QDesktopWidget_virtualbase_focusNextPrevChild(VirtualQDesktopWidget* self, bool next);
bool QDesktopWidget_virtualbase_eventFilter(VirtualQDesktopWidget* self, QObject* watched, QEvent* event);
void QDesktopWidget_virtualbase_timerEvent(VirtualQDesktopWidget* self, QTimerEvent* event);
void QDesktopWidget_virtualbase_childEvent(VirtualQDesktopWidget* self, QChildEvent* event);
void QDesktopWidget_virtualbase_customEvent(VirtualQDesktopWidget* self, QEvent* event);
void QDesktopWidget_virtualbase_connectNotify(VirtualQDesktopWidget* self, QMetaMethod* signal);
void QDesktopWidget_virtualbase_disconnectNotify(VirtualQDesktopWidget* self, QMetaMethod* signal);

void QDesktopWidget_protectedbase_updateMicroFocus(VirtualQDesktopWidget* self);
void QDesktopWidget_protectedbase_create(VirtualQDesktopWidget* self);
void QDesktopWidget_protectedbase_destroy(VirtualQDesktopWidget* self);
bool QDesktopWidget_protectedbase_focusNextChild(VirtualQDesktopWidget* self);
bool QDesktopWidget_protectedbase_focusPreviousChild(VirtualQDesktopWidget* self);
QObject* QDesktopWidget_protectedbase_sender(const VirtualQDesktopWidget* self);
int QDesktopWidget_protectedbase_senderSignalIndex(const VirtualQDesktopWidget* self);
int QDesktopWidget_protectedbase_receivers(const VirtualQDesktopWidget* self, const char* signal);
bool QDesktopWidget_protectedbase_isSignalConnected(const VirtualQDesktopWidget* self, QMetaMethod* signal);

const QMetaObject* QDesktopWidget_staticMetaObject();
void QDesktopWidget_delete(QDesktopWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
