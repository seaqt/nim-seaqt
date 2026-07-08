#pragma once
#ifndef SEAQT_QTQUICK_GEN_QQUICKRENDERCONTROL_H
#define SEAQT_QTQUICK_GEN_QQUICKRENDERCONTROL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QImage;
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
typedef struct QImage QImage;
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

typedef struct VirtualQQuickRenderControl VirtualQQuickRenderControl;
typedef struct QQuickRenderControl_VTable{
	void (*destructor)(VirtualQQuickRenderControl* self);
	QMetaObject* (*metaObject)(const VirtualQQuickRenderControl* self);
	void* (*metacast)(VirtualQQuickRenderControl* self, const char* param1);
	int (*metacall)(VirtualQQuickRenderControl* self, int param1, int param2, void** param3);
	QWindow* (*renderWindow)(VirtualQQuickRenderControl* self, QPoint* offset);
	bool (*event)(VirtualQQuickRenderControl* self, QEvent* event);
	bool (*eventFilter)(VirtualQQuickRenderControl* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQuickRenderControl* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQuickRenderControl* self, QChildEvent* event);
	void (*customEvent)(VirtualQQuickRenderControl* self, QEvent* event);
	void (*connectNotify)(VirtualQQuickRenderControl* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQuickRenderControl* self, QMetaMethod* signal);
}QQuickRenderControl_VTable;

void* QQuickRenderControl_vdata(VirtualQQuickRenderControl* self);
VirtualQQuickRenderControl* vdata_QQuickRenderControl(void* vdata);

VirtualQQuickRenderControl* QQuickRenderControl_new(const QQuickRenderControl_VTable* vtbl, size_t vdata);
VirtualQQuickRenderControl* QQuickRenderControl_new_parent(const QQuickRenderControl_VTable* vtbl, size_t vdata, QObject* parent);

void QQuickRenderControl_virtbase(QQuickRenderControl* src, QObject** outptr_QObject);
QMetaObject* QQuickRenderControl_metaObject(const QQuickRenderControl* self);
void* QQuickRenderControl_metacast(QQuickRenderControl* self, const char* param1);
int QQuickRenderControl_metacall(QQuickRenderControl* self, int param1, int param2, void** param3);
struct seaqt_string QQuickRenderControl_tr_s(const char* s);
struct seaqt_string QQuickRenderControl_trUtf8_s(const char* s);
void QQuickRenderControl_prepareThread(QQuickRenderControl* self, QThread* targetThread);
void QQuickRenderControl_invalidate(QQuickRenderControl* self);
void QQuickRenderControl_polishItems(QQuickRenderControl* self);
void QQuickRenderControl_render(QQuickRenderControl* self);
bool QQuickRenderControl_sync(QQuickRenderControl* self);
QImage* QQuickRenderControl_grab(QQuickRenderControl* self);
QWindow* QQuickRenderControl_renderWindowFor_win(QQuickWindow* win);
QWindow* QQuickRenderControl_renderWindow(QQuickRenderControl* self, QPoint* offset);
void QQuickRenderControl_renderRequested(QQuickRenderControl* self);
void QQuickRenderControl_connect_renderRequested(QQuickRenderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQuickRenderControl_sceneChanged(QQuickRenderControl* self);
void QQuickRenderControl_connect_sceneChanged(QQuickRenderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QQuickRenderControl_tr_s_c(const char* s, const char* c);
struct seaqt_string QQuickRenderControl_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QQuickRenderControl_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QQuickRenderControl_trUtf8_s_c_n(const char* s, const char* c, int n);
QWindow* QQuickRenderControl_renderWindowFor_win_offset(QQuickWindow* win, QPoint* offset);

QMetaObject* QQuickRenderControl_virtualbase_metaObject(const VirtualQQuickRenderControl* self);
void* QQuickRenderControl_virtualbase_metacast(VirtualQQuickRenderControl* self, const char* param1);
int QQuickRenderControl_virtualbase_metacall(VirtualQQuickRenderControl* self, int param1, int param2, void** param3);
QWindow* QQuickRenderControl_virtualbase_renderWindow(VirtualQQuickRenderControl* self, QPoint* offset);
bool QQuickRenderControl_virtualbase_event(VirtualQQuickRenderControl* self, QEvent* event);
bool QQuickRenderControl_virtualbase_eventFilter(VirtualQQuickRenderControl* self, QObject* watched, QEvent* event);
void QQuickRenderControl_virtualbase_timerEvent(VirtualQQuickRenderControl* self, QTimerEvent* event);
void QQuickRenderControl_virtualbase_childEvent(VirtualQQuickRenderControl* self, QChildEvent* event);
void QQuickRenderControl_virtualbase_customEvent(VirtualQQuickRenderControl* self, QEvent* event);
void QQuickRenderControl_virtualbase_connectNotify(VirtualQQuickRenderControl* self, QMetaMethod* signal);
void QQuickRenderControl_virtualbase_disconnectNotify(VirtualQQuickRenderControl* self, QMetaMethod* signal);

QObject* QQuickRenderControl_protectedbase_sender(const VirtualQQuickRenderControl* self);
int QQuickRenderControl_protectedbase_senderSignalIndex(const VirtualQQuickRenderControl* self);
int QQuickRenderControl_protectedbase_receivers(const VirtualQQuickRenderControl* self, const char* signal);
bool QQuickRenderControl_protectedbase_isSignalConnected(const VirtualQQuickRenderControl* self, QMetaMethod* signal);

void QQuickRenderControl_delete(QQuickRenderControl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
