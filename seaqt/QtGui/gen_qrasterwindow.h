#pragma once
#ifndef SEAQT_QTGUI_GEN_QRASTERWINDOW_H
#define SEAQT_QTGUI_GEN_QRASTERWINDOW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAccessibleInterface;
class QChildEvent;
class QCloseEvent;
class QEvent;
class QExposeEvent;
class QFocusEvent;
class QHideEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintDeviceWindow;
class QPaintEvent;
class QPainter;
class QPoint;
class QRasterWindow;
class QResizeEvent;
class QShowEvent;
class QSize;
class QSurface;
class QSurfaceFormat;
class QTabletEvent;
class QTimerEvent;
class QTouchEvent;
class QWheelEvent;
class QWindow;
#else
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QEvent QEvent;
typedef struct QExposeEvent QExposeEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintDeviceWindow QPaintDeviceWindow;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QRasterWindow QRasterWindow;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindow QWindow;
#endif

typedef struct VirtualQRasterWindow VirtualQRasterWindow;
typedef struct QRasterWindow_VTable{
	void (*destructor)(VirtualQRasterWindow* self);
	QMetaObject* (*metaObject)(const VirtualQRasterWindow* self);
	void* (*metacast)(VirtualQRasterWindow* self, const char* param1);
	int (*metacall)(VirtualQRasterWindow* self, int param1, int param2, void** param3);
	int (*metric)(const VirtualQRasterWindow* self, int metric);
	QPaintDevice* (*redirected)(const VirtualQRasterWindow* self, QPoint* param1);
	void (*exposeEvent)(VirtualQRasterWindow* self, QExposeEvent* param1);
	void (*paintEvent)(VirtualQRasterWindow* self, QPaintEvent* event);
	bool (*event)(VirtualQRasterWindow* self, QEvent* event);
	int (*surfaceType)(const VirtualQRasterWindow* self);
	QSurfaceFormat* (*format)(const VirtualQRasterWindow* self);
	QSize* (*size)(const VirtualQRasterWindow* self);
	QAccessibleInterface* (*accessibleRoot)(const VirtualQRasterWindow* self);
	QObject* (*focusObject)(const VirtualQRasterWindow* self);
	void (*resizeEvent)(VirtualQRasterWindow* self, QResizeEvent* param1);
	void (*moveEvent)(VirtualQRasterWindow* self, QMoveEvent* param1);
	void (*focusInEvent)(VirtualQRasterWindow* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQRasterWindow* self, QFocusEvent* param1);
	void (*showEvent)(VirtualQRasterWindow* self, QShowEvent* param1);
	void (*hideEvent)(VirtualQRasterWindow* self, QHideEvent* param1);
	void (*closeEvent)(VirtualQRasterWindow* self, QCloseEvent* param1);
	void (*keyPressEvent)(VirtualQRasterWindow* self, QKeyEvent* param1);
	void (*keyReleaseEvent)(VirtualQRasterWindow* self, QKeyEvent* param1);
	void (*mousePressEvent)(VirtualQRasterWindow* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQRasterWindow* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(VirtualQRasterWindow* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQRasterWindow* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQRasterWindow* self, QWheelEvent* param1);
	void (*touchEvent)(VirtualQRasterWindow* self, QTouchEvent* param1);
	void (*tabletEvent)(VirtualQRasterWindow* self, QTabletEvent* param1);
	bool (*nativeEvent)(VirtualQRasterWindow* self, struct miqt_string eventType, void* message, intptr_t* result);
	bool (*eventFilter)(VirtualQRasterWindow* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRasterWindow* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRasterWindow* self, QChildEvent* event);
	void (*customEvent)(VirtualQRasterWindow* self, QEvent* event);
	void (*connectNotify)(VirtualQRasterWindow* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRasterWindow* self, QMetaMethod* signal);
	int (*devType)(const VirtualQRasterWindow* self);
	void (*initPainter)(const VirtualQRasterWindow* self, QPainter* painter);
	QPainter* (*sharedPainter)(const VirtualQRasterWindow* self);
}QRasterWindow_VTable;

const QRasterWindow_VTable* QRasterWindow_vtbl(const VirtualQRasterWindow* self);
void* QRasterWindow_vdata(const VirtualQRasterWindow* self);
void QRasterWindow_setVdata(VirtualQRasterWindow* self, void* vdata);

VirtualQRasterWindow* QRasterWindow_new(const QRasterWindow_VTable* vtbl, void* vdata);
VirtualQRasterWindow* QRasterWindow_new2(const QRasterWindow_VTable* vtbl, void* vdata, QWindow* parent);

void QRasterWindow_virtbase(QRasterWindow* src, QPaintDeviceWindow** outptr_QPaintDeviceWindow);
QMetaObject* QRasterWindow_metaObject(const QRasterWindow* self);
void* QRasterWindow_metacast(QRasterWindow* self, const char* param1);
int QRasterWindow_metacall(QRasterWindow* self, int param1, int param2, void** param3);
struct miqt_string QRasterWindow_tr(const char* s);
int QRasterWindow_metric(const QRasterWindow* self, int metric);
QPaintDevice* QRasterWindow_redirected(const QRasterWindow* self, QPoint* param1);
struct miqt_string QRasterWindow_tr2(const char* s, const char* c);
struct miqt_string QRasterWindow_tr3(const char* s, const char* c, int n);

QMetaObject* QRasterWindow_virtualbase_metaObject(const VirtualQRasterWindow* self);
void* QRasterWindow_virtualbase_metacast(VirtualQRasterWindow* self, const char* param1);
int QRasterWindow_virtualbase_metacall(VirtualQRasterWindow* self, int param1, int param2, void** param3);
int QRasterWindow_virtualbase_metric(const VirtualQRasterWindow* self, int metric);
QPaintDevice* QRasterWindow_virtualbase_redirected(const VirtualQRasterWindow* self, QPoint* param1);
void QRasterWindow_virtualbase_exposeEvent(VirtualQRasterWindow* self, QExposeEvent* param1);
void QRasterWindow_virtualbase_paintEvent(VirtualQRasterWindow* self, QPaintEvent* event);
bool QRasterWindow_virtualbase_event(VirtualQRasterWindow* self, QEvent* event);
int QRasterWindow_virtualbase_surfaceType(const VirtualQRasterWindow* self);
QSurfaceFormat* QRasterWindow_virtualbase_format(const VirtualQRasterWindow* self);
QSize* QRasterWindow_virtualbase_size(const VirtualQRasterWindow* self);
QAccessibleInterface* QRasterWindow_virtualbase_accessibleRoot(const VirtualQRasterWindow* self);
QObject* QRasterWindow_virtualbase_focusObject(const VirtualQRasterWindow* self);
void QRasterWindow_virtualbase_resizeEvent(VirtualQRasterWindow* self, QResizeEvent* param1);
void QRasterWindow_virtualbase_moveEvent(VirtualQRasterWindow* self, QMoveEvent* param1);
void QRasterWindow_virtualbase_focusInEvent(VirtualQRasterWindow* self, QFocusEvent* param1);
void QRasterWindow_virtualbase_focusOutEvent(VirtualQRasterWindow* self, QFocusEvent* param1);
void QRasterWindow_virtualbase_showEvent(VirtualQRasterWindow* self, QShowEvent* param1);
void QRasterWindow_virtualbase_hideEvent(VirtualQRasterWindow* self, QHideEvent* param1);
void QRasterWindow_virtualbase_closeEvent(VirtualQRasterWindow* self, QCloseEvent* param1);
void QRasterWindow_virtualbase_keyPressEvent(VirtualQRasterWindow* self, QKeyEvent* param1);
void QRasterWindow_virtualbase_keyReleaseEvent(VirtualQRasterWindow* self, QKeyEvent* param1);
void QRasterWindow_virtualbase_mousePressEvent(VirtualQRasterWindow* self, QMouseEvent* param1);
void QRasterWindow_virtualbase_mouseReleaseEvent(VirtualQRasterWindow* self, QMouseEvent* param1);
void QRasterWindow_virtualbase_mouseDoubleClickEvent(VirtualQRasterWindow* self, QMouseEvent* param1);
void QRasterWindow_virtualbase_mouseMoveEvent(VirtualQRasterWindow* self, QMouseEvent* param1);
void QRasterWindow_virtualbase_wheelEvent(VirtualQRasterWindow* self, QWheelEvent* param1);
void QRasterWindow_virtualbase_touchEvent(VirtualQRasterWindow* self, QTouchEvent* param1);
void QRasterWindow_virtualbase_tabletEvent(VirtualQRasterWindow* self, QTabletEvent* param1);
bool QRasterWindow_virtualbase_nativeEvent(VirtualQRasterWindow* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QRasterWindow_virtualbase_eventFilter(VirtualQRasterWindow* self, QObject* watched, QEvent* event);
void QRasterWindow_virtualbase_timerEvent(VirtualQRasterWindow* self, QTimerEvent* event);
void QRasterWindow_virtualbase_childEvent(VirtualQRasterWindow* self, QChildEvent* event);
void QRasterWindow_virtualbase_customEvent(VirtualQRasterWindow* self, QEvent* event);
void QRasterWindow_virtualbase_connectNotify(VirtualQRasterWindow* self, QMetaMethod* signal);
void QRasterWindow_virtualbase_disconnectNotify(VirtualQRasterWindow* self, QMetaMethod* signal);
int QRasterWindow_virtualbase_devType(const VirtualQRasterWindow* self);
void QRasterWindow_virtualbase_initPainter(const VirtualQRasterWindow* self, QPainter* painter);
QPainter* QRasterWindow_virtualbase_sharedPainter(const VirtualQRasterWindow* self);

void* QRasterWindow_protectedbase_resolveInterface(const VirtualQRasterWindow* self, const char* name, int revision);
QObject* QRasterWindow_protectedbase_sender(const VirtualQRasterWindow* self);
int QRasterWindow_protectedbase_senderSignalIndex(const VirtualQRasterWindow* self);
int QRasterWindow_protectedbase_receivers(const VirtualQRasterWindow* self, const char* signal);
bool QRasterWindow_protectedbase_isSignalConnected(const VirtualQRasterWindow* self, QMetaMethod* signal);

const QMetaObject* QRasterWindow_staticMetaObject();
void QRasterWindow_delete(QRasterWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
