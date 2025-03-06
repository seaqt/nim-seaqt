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

struct QQuickView_VTable {
	void (*destructor)(struct QQuickView_VTable* vtbl, QQuickView* self);
	QMetaObject* (*metaObject)(struct QQuickView_VTable* vtbl, const QQuickView* self);
	void* (*metacast)(struct QQuickView_VTable* vtbl, QQuickView* self, const char* param1);
	int (*metacall)(struct QQuickView_VTable* vtbl, QQuickView* self, int param1, int param2, void** param3);
	void (*resizeEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QResizeEvent* param1);
	void (*timerEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QTimerEvent* param1);
	void (*keyPressEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QKeyEvent* param1);
	void (*keyReleaseEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QKeyEvent* param1);
	void (*mousePressEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QMouseEvent* param1);
	QObject* (*focusObject)(struct QQuickView_VTable* vtbl, const QQuickView* self);
	QAccessibleInterface* (*accessibleRoot)(struct QQuickView_VTable* vtbl, const QQuickView* self);
	void (*exposeEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QExposeEvent* param1);
	void (*showEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QShowEvent* param1);
	void (*hideEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QHideEvent* param1);
	void (*focusInEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QFocusEvent* param1);
	void (*focusOutEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QFocusEvent* param1);
	bool (*event)(struct QQuickView_VTable* vtbl, QQuickView* self, QEvent* param1);
	void (*mouseDoubleClickEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QMouseEvent* param1);
	void (*wheelEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QWheelEvent* param1);
	void (*tabletEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QTabletEvent* param1);
	int (*surfaceType)(struct QQuickView_VTable* vtbl, const QQuickView* self);
	QSurfaceFormat* (*format)(struct QQuickView_VTable* vtbl, const QQuickView* self);
	QSize* (*size)(struct QQuickView_VTable* vtbl, const QQuickView* self);
	void (*moveEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QMoveEvent* param1);
	void (*touchEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QTouchEvent* param1);
	bool (*nativeEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, struct miqt_string eventType, void* message, long* result);
	bool (*eventFilter)(struct QQuickView_VTable* vtbl, QQuickView* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QChildEvent* event);
	void (*customEvent)(struct QQuickView_VTable* vtbl, QQuickView* self, QEvent* event);
	void (*connectNotify)(struct QQuickView_VTable* vtbl, QQuickView* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickView_VTable* vtbl, QQuickView* self, QMetaMethod* signal);
};
QQuickView* QQuickView_new(struct QQuickView_VTable* vtbl);
QQuickView* QQuickView_new2(struct QQuickView_VTable* vtbl, QQmlEngine* engine, QWindow* parent);
QQuickView* QQuickView_new3(struct QQuickView_VTable* vtbl, QUrl* source);
QQuickView* QQuickView_new4(struct QQuickView_VTable* vtbl, QUrl* source, QQuickRenderControl* renderControl);
QQuickView* QQuickView_new5(struct QQuickView_VTable* vtbl, QWindow* parent);
QQuickView* QQuickView_new6(struct QQuickView_VTable* vtbl, QUrl* source, QWindow* parent);
void QQuickView_virtbase(QQuickView* src, QQuickWindow** outptr_QQuickWindow);
QMetaObject* QQuickView_metaObject(const QQuickView* self);
void* QQuickView_metacast(QQuickView* self, const char* param1);
int QQuickView_metacall(QQuickView* self, int param1, int param2, void** param3);
struct miqt_string QQuickView_tr(const char* s);
struct miqt_string QQuickView_trUtf8(const char* s);
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
void QQuickView_connect_statusChanged(QQuickView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QQuickView_resizeEvent(QQuickView* self, QResizeEvent* param1);
void QQuickView_timerEvent(QQuickView* self, QTimerEvent* param1);
void QQuickView_keyPressEvent(QQuickView* self, QKeyEvent* param1);
void QQuickView_keyReleaseEvent(QQuickView* self, QKeyEvent* param1);
void QQuickView_mousePressEvent(QQuickView* self, QMouseEvent* param1);
void QQuickView_mouseReleaseEvent(QQuickView* self, QMouseEvent* param1);
void QQuickView_mouseMoveEvent(QQuickView* self, QMouseEvent* param1);
struct miqt_string QQuickView_tr2(const char* s, const char* c);
struct miqt_string QQuickView_tr3(const char* s, const char* c, int n);
struct miqt_string QQuickView_trUtf82(const char* s, const char* c);
struct miqt_string QQuickView_trUtf83(const char* s, const char* c, int n);
QMetaObject* QQuickView_virtualbase_metaObject(const void* self);
void* QQuickView_virtualbase_metacast(void* self, const char* param1);
int QQuickView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QQuickView_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QQuickView_virtualbase_timerEvent(void* self, QTimerEvent* param1);
void QQuickView_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QQuickView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);
void QQuickView_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QQuickView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QQuickView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
QObject* QQuickView_virtualbase_focusObject(const void* self);
QAccessibleInterface* QQuickView_virtualbase_accessibleRoot(const void* self);
void QQuickView_virtualbase_exposeEvent(void* self, QExposeEvent* param1);
void QQuickView_virtualbase_showEvent(void* self, QShowEvent* param1);
void QQuickView_virtualbase_hideEvent(void* self, QHideEvent* param1);
void QQuickView_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
void QQuickView_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QQuickView_virtualbase_event(void* self, QEvent* param1);
void QQuickView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
void QQuickView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QQuickView_virtualbase_tabletEvent(void* self, QTabletEvent* param1);
int QQuickView_virtualbase_surfaceType(const void* self);
QSurfaceFormat* QQuickView_virtualbase_format(const void* self);
QSize* QQuickView_virtualbase_size(const void* self);
void QQuickView_virtualbase_moveEvent(void* self, QMoveEvent* param1);
void QQuickView_virtualbase_touchEvent(void* self, QTouchEvent* param1);
bool QQuickView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QQuickView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickView_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickView_virtualbase_customEvent(void* self, QEvent* event);
void QQuickView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQuickView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickView_protectedbase_sender(const void* self);
int QQuickView_protectedbase_senderSignalIndex(const void* self);
int QQuickView_protectedbase_receivers(const void* self, const char* signal);
bool QQuickView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QQuickView_staticMetaObject();
void QQuickView_delete(QQuickView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
