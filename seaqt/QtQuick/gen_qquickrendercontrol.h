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

struct QQuickRenderControl_VTable {
	void (*destructor)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self);
	QMetaObject* (*metaObject)(struct QQuickRenderControl_VTable* vtbl, const QQuickRenderControl* self);
	void* (*metacast)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, const char* param1);
	int (*metacall)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, int param1, int param2, void** param3);
	QWindow* (*renderWindow)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, QPoint* offset);
	bool (*event)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, QEvent* event);
	bool (*eventFilter)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, QTimerEvent* event);
	void (*childEvent)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, QChildEvent* event);
	void (*customEvent)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, QEvent* event);
	void (*connectNotify)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickRenderControl_VTable* vtbl, QQuickRenderControl* self, QMetaMethod* signal);
};
QQuickRenderControl* QQuickRenderControl_new(struct QQuickRenderControl_VTable* vtbl);
QQuickRenderControl* QQuickRenderControl_new2(struct QQuickRenderControl_VTable* vtbl, QObject* parent);
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
void QQuickRenderControl_connect_renderRequested(QQuickRenderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRenderControl_sceneChanged(QQuickRenderControl* self);
void QQuickRenderControl_connect_sceneChanged(QQuickRenderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QQuickRenderControl_tr2(const char* s, const char* c);
struct miqt_string QQuickRenderControl_tr3(const char* s, const char* c, int n);
QWindow* QQuickRenderControl_renderWindowFor2(QQuickWindow* win, QPoint* offset);
QMetaObject* QQuickRenderControl_virtualbase_metaObject(const void* self);
void* QQuickRenderControl_virtualbase_metacast(void* self, const char* param1);
int QQuickRenderControl_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QWindow* QQuickRenderControl_virtualbase_renderWindow(void* self, QPoint* offset);
bool QQuickRenderControl_virtualbase_event(void* self, QEvent* event);
bool QQuickRenderControl_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickRenderControl_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QQuickRenderControl_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickRenderControl_virtualbase_customEvent(void* self, QEvent* event);
void QQuickRenderControl_virtualbase_connectNotify(void* self, QMetaMethod* signal);
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
