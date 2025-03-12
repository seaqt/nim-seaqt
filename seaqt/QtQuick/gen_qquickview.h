#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKVIEW_H
#define SEAQT_QTQUICK_GEN_QQUICKVIEW_H

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
class QPaintEvent;
class QQmlComponent;
class QQmlContext;
class QQmlEngine;
class QQmlError;
class QQuickItem;
class QQuickRenderControl;
class QQuickView;
class QQuickWindow;
class QResizeEvent;
class QShowEvent;
class QSize;
class QSurface;
class QSurfaceFormat;
class QTabletEvent;
class QTimerEvent;
class QTouchEvent;
class QUrl;
class QVariant;
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
typedef struct QPaintEvent QPaintEvent;
typedef struct QQmlComponent QQmlComponent;
typedef struct QQmlContext QQmlContext;
typedef struct QQmlEngine QQmlEngine;
typedef struct QQmlError QQmlError;
typedef struct QQuickItem QQuickItem;
typedef struct QQuickRenderControl QQuickRenderControl;
typedef struct QQuickView QQuickView;
typedef struct QQuickWindow QQuickWindow;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindow QWindow;
#endif

typedef struct VirtualQQuickView VirtualQQuickView;
typedef struct QQuickView_VTable{
	void (*destructor)(VirtualQQuickView* self);
	QMetaObject* (*metaObject)(const VirtualQQuickView* self);
	void* (*metacast)(VirtualQQuickView* self, const char* param1);
	int (*metacall)(VirtualQQuickView* self, int param1, int param2, void** param3);
	void (*resizeEvent)(VirtualQQuickView* self, QResizeEvent* param1);
	void (*timerEvent)(VirtualQQuickView* self, QTimerEvent* param1);
	void (*keyPressEvent)(VirtualQQuickView* self, QKeyEvent* param1);
	void (*keyReleaseEvent)(VirtualQQuickView* self, QKeyEvent* param1);
	void (*mousePressEvent)(VirtualQQuickView* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(VirtualQQuickView* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(VirtualQQuickView* self, QMouseEvent* param1);
	QObject* (*focusObject)(const VirtualQQuickView* self);
	QAccessibleInterface* (*accessibleRoot)(const VirtualQQuickView* self);
	void (*exposeEvent)(VirtualQQuickView* self, QExposeEvent* param1);
	void (*showEvent)(VirtualQQuickView* self, QShowEvent* param1);
	void (*hideEvent)(VirtualQQuickView* self, QHideEvent* param1);
	void (*closeEvent)(VirtualQQuickView* self, QCloseEvent* param1);
	void (*focusInEvent)(VirtualQQuickView* self, QFocusEvent* param1);
	void (*focusOutEvent)(VirtualQQuickView* self, QFocusEvent* param1);
	bool (*event)(VirtualQQuickView* self, QEvent* param1);
	void (*mouseDoubleClickEvent)(VirtualQQuickView* self, QMouseEvent* param1);
	void (*wheelEvent)(VirtualQQuickView* self, QWheelEvent* param1);
	void (*tabletEvent)(VirtualQQuickView* self, QTabletEvent* param1);
	int (*surfaceType)(const VirtualQQuickView* self);
	QSurfaceFormat* (*format)(const VirtualQQuickView* self);
	QSize* (*size)(const VirtualQQuickView* self);
	void (*paintEvent)(VirtualQQuickView* self, QPaintEvent* param1);
	void (*moveEvent)(VirtualQQuickView* self, QMoveEvent* param1);
	void (*touchEvent)(VirtualQQuickView* self, QTouchEvent* param1);
	bool (*nativeEvent)(VirtualQQuickView* self, struct miqt_string eventType, void* message, intptr_t* result);
	bool (*eventFilter)(VirtualQQuickView* self, QObject* watched, QEvent* event);
	void (*childEvent)(VirtualQQuickView* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickView* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickView* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickView* self, QMetaMethod* signal);
}QQuickView_VTable;

const QQuickView_VTable* QQuickView_vtbl(const VirtualQQuickView* self);
void* QQuickView_vdata(const VirtualQQuickView* self);
void QQuickView_setVdata(VirtualQQuickView* self, void* vdata);

VirtualQQuickView* QQuickView_new(const QQuickView_VTable* vtbl, void* vdata);
VirtualQQuickView* QQuickView_new2(const QQuickView_VTable* vtbl, void* vdata, QQmlEngine* engine, QWindow* parent);
VirtualQQuickView* QQuickView_new3(const QQuickView_VTable* vtbl, void* vdata, QUrl* source);
VirtualQQuickView* QQuickView_new4(const QQuickView_VTable* vtbl, void* vdata, QUrl* source, QQuickRenderControl* renderControl);
VirtualQQuickView* QQuickView_new5(const QQuickView_VTable* vtbl, void* vdata, QWindow* parent);
VirtualQQuickView* QQuickView_new6(const QQuickView_VTable* vtbl, void* vdata, QUrl* source, QWindow* parent);

void QQuickView_virtbase(QQuickView* src, QQuickWindow** outptr_QQuickWindow);
QMetaObject* QQuickView_metaObject(const QQuickView* self);
void* QQuickView_metacast(QQuickView* self, const char* param1);
int QQuickView_metacall(QQuickView* self, int param1, int param2, void** param3);
struct miqt_string QQuickView_tr(const char* s);
QUrl* QQuickView_source(const QQuickView* self);
QQmlEngine* QQuickView_engine(const QQuickView* self);
QQmlContext* QQuickView_rootContext(const QQuickView* self);
QQuickItem* QQuickView_rootObject(const QQuickView* self);
int QQuickView_resizeMode(const QQuickView* self);
void QQuickView_setResizeMode(QQuickView* self, int resizeMode);
int QQuickView_status(const QQuickView* self);
struct miqt_array /* of QQmlError* */  QQuickView_errors(const QQuickView* self);
QSize* QQuickView_sizeHint(const QQuickView* self);
QSize* QQuickView_initialSize(const QQuickView* self);
void QQuickView_setSource(QQuickView* self, QUrl* source);
void QQuickView_setInitialProperties(QQuickView* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties);
void QQuickView_setContent(QQuickView* self, QUrl* url, QQmlComponent* component, QObject* item);
void QQuickView_statusChanged(QQuickView* self, int param1);
void QQuickView_connect_statusChanged(VirtualQQuickView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QQuickView_resizeEvent(QQuickView* self, QResizeEvent* param1);
void QQuickView_timerEvent(QQuickView* self, QTimerEvent* param1);
void QQuickView_keyPressEvent(QQuickView* self, QKeyEvent* param1);
void QQuickView_keyReleaseEvent(QQuickView* self, QKeyEvent* param1);
void QQuickView_mousePressEvent(QQuickView* self, QMouseEvent* param1);
void QQuickView_mouseReleaseEvent(QQuickView* self, QMouseEvent* param1);
void QQuickView_mouseMoveEvent(QQuickView* self, QMouseEvent* param1);
struct miqt_string QQuickView_tr2(const char* s, const char* c);
struct miqt_string QQuickView_tr3(const char* s, const char* c, int n);

QMetaObject* QQuickView_virtualbase_metaObject(const VirtualQQuickView* self);
void* QQuickView_virtualbase_metacast(VirtualQQuickView* self, const char* param1);
int QQuickView_virtualbase_metacall(VirtualQQuickView* self, int param1, int param2, void** param3);
void QQuickView_virtualbase_resizeEvent(VirtualQQuickView* self, QResizeEvent* param1);
void QQuickView_virtualbase_timerEvent(VirtualQQuickView* self, QTimerEvent* param1);
void QQuickView_virtualbase_keyPressEvent(VirtualQQuickView* self, QKeyEvent* param1);
void QQuickView_virtualbase_keyReleaseEvent(VirtualQQuickView* self, QKeyEvent* param1);
void QQuickView_virtualbase_mousePressEvent(VirtualQQuickView* self, QMouseEvent* param1);
void QQuickView_virtualbase_mouseReleaseEvent(VirtualQQuickView* self, QMouseEvent* param1);
void QQuickView_virtualbase_mouseMoveEvent(VirtualQQuickView* self, QMouseEvent* param1);
QObject* QQuickView_virtualbase_focusObject(const VirtualQQuickView* self);
QAccessibleInterface* QQuickView_virtualbase_accessibleRoot(const VirtualQQuickView* self);
void QQuickView_virtualbase_exposeEvent(VirtualQQuickView* self, QExposeEvent* param1);
void QQuickView_virtualbase_showEvent(VirtualQQuickView* self, QShowEvent* param1);
void QQuickView_virtualbase_hideEvent(VirtualQQuickView* self, QHideEvent* param1);
void QQuickView_virtualbase_closeEvent(VirtualQQuickView* self, QCloseEvent* param1);
void QQuickView_virtualbase_focusInEvent(VirtualQQuickView* self, QFocusEvent* param1);
void QQuickView_virtualbase_focusOutEvent(VirtualQQuickView* self, QFocusEvent* param1);
bool QQuickView_virtualbase_event(VirtualQQuickView* self, QEvent* param1);
void QQuickView_virtualbase_mouseDoubleClickEvent(VirtualQQuickView* self, QMouseEvent* param1);
void QQuickView_virtualbase_wheelEvent(VirtualQQuickView* self, QWheelEvent* param1);
void QQuickView_virtualbase_tabletEvent(VirtualQQuickView* self, QTabletEvent* param1);
int QQuickView_virtualbase_surfaceType(const VirtualQQuickView* self);
QSurfaceFormat* QQuickView_virtualbase_format(const VirtualQQuickView* self);
QSize* QQuickView_virtualbase_size(const VirtualQQuickView* self);
void QQuickView_virtualbase_paintEvent(VirtualQQuickView* self, QPaintEvent* param1);
void QQuickView_virtualbase_moveEvent(VirtualQQuickView* self, QMoveEvent* param1);
void QQuickView_virtualbase_touchEvent(VirtualQQuickView* self, QTouchEvent* param1);
bool QQuickView_virtualbase_nativeEvent(VirtualQQuickView* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QQuickView_virtualbase_eventFilter(VirtualQQuickView* self, QObject* watched, QEvent* event);
void QQuickView_virtualbase_childEvent(VirtualQQuickView* self, QChildEvent* event);
void QQuickView_virtualbase_customEvent(VirtualQQuickView* self, QEvent* event);
void QQuickView_virtualbase_connectNotify(VirtualQQuickView* self, QMetaMethod* signal);
void QQuickView_virtualbase_disconnectNotify(VirtualQQuickView* self, QMetaMethod* signal);

void* QQuickView_protectedbase_resolveInterface(const VirtualQQuickView* self, const char* name, int revision);
QObject* QQuickView_protectedbase_sender(const VirtualQQuickView* self);
int QQuickView_protectedbase_senderSignalIndex(const VirtualQQuickView* self);
int QQuickView_protectedbase_receivers(const VirtualQQuickView* self, const char* signal);
bool QQuickView_protectedbase_isSignalConnected(const VirtualQQuickView* self, QMetaMethod* signal);

const QMetaObject* QQuickView_staticMetaObject();
void QQuickView_delete(QQuickView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
