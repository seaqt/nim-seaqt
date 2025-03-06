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

QQuickView* QQuickView_new();
QQuickView* QQuickView_new2(QQmlEngine* engine, QWindow* parent);
QQuickView* QQuickView_new3(QUrl* source);
QQuickView* QQuickView_new4(QUrl* source, QQuickRenderControl* renderControl);
QQuickView* QQuickView_new5(QWindow* parent);
QQuickView* QQuickView_new6(QUrl* source, QWindow* parent);
void QQuickView_virtbase(QQuickView* src, QQuickWindow** outptr_QQuickWindow);
QMetaObject* QQuickView_metaObject(const QQuickView* self);
void* QQuickView_metacast(QQuickView* self, const char* param1);
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
void QQuickView_connect_statusChanged(QQuickView* self, intptr_t slot);
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
bool QQuickView_override_virtual_resizeEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QQuickView_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_timerEvent(void* self, QTimerEvent* param1);
bool QQuickView_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
bool QQuickView_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);
bool QQuickView_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
bool QQuickView_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
bool QQuickView_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
bool QQuickView_override_virtual_focusObject(void* self, intptr_t slot);
QObject* QQuickView_virtualbase_focusObject(const void* self);
bool QQuickView_override_virtual_accessibleRoot(void* self, intptr_t slot);
QAccessibleInterface* QQuickView_virtualbase_accessibleRoot(const void* self);
bool QQuickView_override_virtual_exposeEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_exposeEvent(void* self, QExposeEvent* param1);
bool QQuickView_override_virtual_showEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_showEvent(void* self, QShowEvent* param1);
bool QQuickView_override_virtual_hideEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_hideEvent(void* self, QHideEvent* param1);
bool QQuickView_override_virtual_focusInEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
bool QQuickView_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QQuickView_override_virtual_event(void* self, intptr_t slot);
bool QQuickView_virtualbase_event(void* self, QEvent* param1);
bool QQuickView_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
bool QQuickView_override_virtual_wheelEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
bool QQuickView_override_virtual_tabletEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_tabletEvent(void* self, QTabletEvent* param1);
bool QQuickView_override_virtual_surfaceType(void* self, intptr_t slot);
int QQuickView_virtualbase_surfaceType(const void* self);
bool QQuickView_override_virtual_format(void* self, intptr_t slot);
QSurfaceFormat* QQuickView_virtualbase_format(const void* self);
bool QQuickView_override_virtual_size(void* self, intptr_t slot);
QSize* QQuickView_virtualbase_size(const void* self);
bool QQuickView_override_virtual_moveEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_moveEvent(void* self, QMoveEvent* param1);
bool QQuickView_override_virtual_touchEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_touchEvent(void* self, QTouchEvent* param1);
bool QQuickView_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QQuickView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QQuickView_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickView_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickView_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickView_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickView_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickView_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QQuickView_delete(QQuickView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
