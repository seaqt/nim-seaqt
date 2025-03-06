#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKRENDERCONTROL_H
#define SEAQT_QTQUICK_GEN_QQUICKRENDERCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPoint;
class QQuickRenderControl;
class QQuickWindow;
class QThread;
class QTimerEvent;
class QWindow;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPoint QPoint;
typedef struct QQuickRenderControl QQuickRenderControl;
typedef struct QQuickWindow QQuickWindow;
typedef struct QThread QThread;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWindow QWindow;
#endif

QQuickRenderControl* QQuickRenderControl_new();
QQuickRenderControl* QQuickRenderControl_new2(QObject* parent);
void QQuickRenderControl_virtbase(QQuickRenderControl* src, QObject** outptr_QObject);
QMetaObject* QQuickRenderControl_metaObject(const QQuickRenderControl* self);
void* QQuickRenderControl_metacast(QQuickRenderControl* self, const char* param1);
int QQuickRenderControl_metacall(QQuickRenderControl* self, int param1, int param2, void** param3);
struct miqt_string QQuickRenderControl_tr(const char* s);
void QQuickRenderControl_prepareThread(QQuickRenderControl* self, QThread* targetThread);
void QQuickRenderControl_setSamples(QQuickRenderControl* self, int sampleCount);
int QQuickRenderControl_samples(const QQuickRenderControl* self);
bool QQuickRenderControl_initialize(QQuickRenderControl* self);
void QQuickRenderControl_invalidate(QQuickRenderControl* self);
void QQuickRenderControl_beginFrame(QQuickRenderControl* self);
void QQuickRenderControl_endFrame(QQuickRenderControl* self);
void QQuickRenderControl_polishItems(QQuickRenderControl* self);
bool QQuickRenderControl_sync(QQuickRenderControl* self);
void QQuickRenderControl_render(QQuickRenderControl* self);
QWindow* QQuickRenderControl_renderWindowFor(QQuickWindow* win);
QWindow* QQuickRenderControl_renderWindow(QQuickRenderControl* self, QPoint* offset);
QQuickWindow* QQuickRenderControl_window(const QQuickRenderControl* self);
void QQuickRenderControl_renderRequested(QQuickRenderControl* self);
void QQuickRenderControl_connect_renderRequested(QQuickRenderControl* self, intptr_t slot);
void QQuickRenderControl_sceneChanged(QQuickRenderControl* self);
void QQuickRenderControl_connect_sceneChanged(QQuickRenderControl* self, intptr_t slot);
struct miqt_string QQuickRenderControl_tr2(const char* s, const char* c);
struct miqt_string QQuickRenderControl_tr3(const char* s, const char* c, int n);
QWindow* QQuickRenderControl_renderWindowFor2(QQuickWindow* win, QPoint* offset);
bool QQuickRenderControl_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QQuickRenderControl_virtualbase_metaObject(const void* self);
bool QQuickRenderControl_override_virtual_metacast(void* self, intptr_t slot);
void* QQuickRenderControl_virtualbase_metacast(void* self, const char* param1);
bool QQuickRenderControl_override_virtual_metacall(void* self, intptr_t slot);
int QQuickRenderControl_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QQuickRenderControl_override_virtual_renderWindow(void* self, intptr_t slot);
QWindow* QQuickRenderControl_virtualbase_renderWindow(void* self, QPoint* offset);
bool QQuickRenderControl_override_virtual_event(void* self, intptr_t slot);
bool QQuickRenderControl_virtualbase_event(void* self, QEvent* event);
bool QQuickRenderControl_override_virtual_eventFilter(void* self, intptr_t slot);
bool QQuickRenderControl_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QQuickRenderControl_override_virtual_timerEvent(void* self, intptr_t slot);
void QQuickRenderControl_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QQuickRenderControl_override_virtual_childEvent(void* self, intptr_t slot);
void QQuickRenderControl_virtualbase_childEvent(void* self, QChildEvent* event);
bool QQuickRenderControl_override_virtual_customEvent(void* self, intptr_t slot);
void QQuickRenderControl_virtualbase_customEvent(void* self, QEvent* event);
bool QQuickRenderControl_override_virtual_connectNotify(void* self, intptr_t slot);
void QQuickRenderControl_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QQuickRenderControl_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QQuickRenderControl_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickRenderControl_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickRenderControl_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickRenderControl_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickRenderControl_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQuickRenderControl_staticMetaObject();
void QQuickRenderControl_delete(QQuickRenderControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
