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

struct QRasterWindow_VTable {
	void (*destructor)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self);
	QMetaObject* (*metaObject)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self);
	void* (*metacast)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, const char* param1);
	int (*metacall)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, int param1, int param2, void** param3);
	int (*metric)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self, int metric);
	QPaintDevice* (*redirected)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self, QPoint* param1);
	void (*exposeEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QExposeEvent* param1);
	void (*paintEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QPaintEvent* event);
	bool (*event)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QEvent* event);
	int (*surfaceType)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self);
	QSurfaceFormat* (*format)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self);
	QSize* (*size)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self);
	QAccessibleInterface* (*accessibleRoot)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self);
	QObject* (*focusObject)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self);
	void (*resizeEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QResizeEvent* param1);
	void (*moveEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QMoveEvent* param1);
	void (*focusInEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QFocusEvent* param1);
	void (*focusOutEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QFocusEvent* param1);
	void (*showEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QShowEvent* param1);
	void (*hideEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QHideEvent* param1);
	void (*closeEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QCloseEvent* param1);
	void (*keyPressEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QKeyEvent* param1);
	void (*keyReleaseEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QKeyEvent* param1);
	void (*mousePressEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QMouseEvent* param1);
	void (*wheelEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QWheelEvent* param1);
	void (*touchEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QTouchEvent* param1);
	void (*tabletEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QTabletEvent* param1);
	bool (*nativeEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, struct miqt_string eventType, void* message, intptr_t* result);
	bool (*eventFilter)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QTimerEvent* event);
	void (*childEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QChildEvent* event);
	void (*customEvent)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QEvent* event);
	void (*connectNotify)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QRasterWindow_VTable* vtbl, QRasterWindow* self, QMetaMethod* signal);
	int (*devType)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self);
	void (*initPainter)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self, QPainter* painter);
	QPainter* (*sharedPainter)(struct QRasterWindow_VTable* vtbl, const QRasterWindow* self);
};
QRasterWindow* QRasterWindow_new(struct QRasterWindow_VTable* vtbl);
QRasterWindow* QRasterWindow_new2(struct QRasterWindow_VTable* vtbl, QWindow* parent);
void QRasterWindow_virtbase(QRasterWindow* src, QPaintDeviceWindow** outptr_QPaintDeviceWindow);
QMetaObject* QRasterWindow_metaObject(const QRasterWindow* self);
void* QRasterWindow_metacast(QRasterWindow* self, const char* param1);
int QRasterWindow_metacall(QRasterWindow* self, int param1, int param2, void** param3);
struct miqt_string QRasterWindow_tr(const char* s);
int QRasterWindow_metric(const QRasterWindow* self, int metric);
QPaintDevice* QRasterWindow_redirected(const QRasterWindow* self, QPoint* param1);
struct miqt_string QRasterWindow_tr2(const char* s, const char* c);
struct miqt_string QRasterWindow_tr3(const char* s, const char* c, int n);
QMetaObject* QRasterWindow_virtualbase_metaObject(const void* self);
void* QRasterWindow_virtualbase_metacast(void* self, const char* param1);
int QRasterWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QRasterWindow_virtualbase_metric(const void* self, int metric);
QPaintDevice* QRasterWindow_virtualbase_redirected(const void* self, QPoint* param1);
void QRasterWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1);
void QRasterWindow_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QRasterWindow_virtualbase_event(void* self, QEvent* event);
int QRasterWindow_virtualbase_surfaceType(const void* self);
QSurfaceFormat* QRasterWindow_virtualbase_format(const void* self);
QSize* QRasterWindow_virtualbase_size(const void* self);
QAccessibleInterface* QRasterWindow_virtualbase_accessibleRoot(const void* self);
QObject* QRasterWindow_virtualbase_focusObject(const void* self);
void QRasterWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QRasterWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1);
void QRasterWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
void QRasterWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
void QRasterWindow_virtualbase_showEvent(void* self, QShowEvent* param1);
void QRasterWindow_virtualbase_hideEvent(void* self, QHideEvent* param1);
void QRasterWindow_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QRasterWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QRasterWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);
void QRasterWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QRasterWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QRasterWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
void QRasterWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QRasterWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QRasterWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1);
void QRasterWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1);
bool QRasterWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QRasterWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QRasterWindow_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QRasterWindow_virtualbase_childEvent(void* self, QChildEvent* event);
void QRasterWindow_virtualbase_customEvent(void* self, QEvent* event);
void QRasterWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QRasterWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
int QRasterWindow_virtualbase_devType(const void* self);
void QRasterWindow_virtualbase_initPainter(const void* self, QPainter* painter);
QPainter* QRasterWindow_virtualbase_sharedPainter(const void* self);
void* QRasterWindow_protectedbase_resolveInterface(const void* self, const char* name, int revision);
QObject* QRasterWindow_protectedbase_sender(const void* self);
int QRasterWindow_protectedbase_senderSignalIndex(const void* self);
int QRasterWindow_protectedbase_receivers(const void* self, const char* signal);
bool QRasterWindow_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QRasterWindow_staticMetaObject();
void QRasterWindow_delete(QRasterWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
