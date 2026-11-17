#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QWINDOWCAPTURE_H
#define SEAQT_QTMULTIMEDIA_GEN_QWINDOWCAPTURE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QCapturableWindow;
class QChildEvent;
class QEvent;
class QMediaCaptureSession;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QWindowCapture;
#else
typedef struct QCapturableWindow QCapturableWindow;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWindowCapture QWindowCapture;
#endif

typedef struct VirtualQWindowCapture VirtualQWindowCapture;
typedef struct QWindowCapture_VTable{
	void (*destructor)(VirtualQWindowCapture* self);
	QMetaObject* (*metaObject)(const VirtualQWindowCapture* self);
	void* (*metacast)(VirtualQWindowCapture* self, const char* param1);
	int (*metacall)(VirtualQWindowCapture* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQWindowCapture* self, QEvent* event);
	bool (*eventFilter)(VirtualQWindowCapture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWindowCapture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWindowCapture* self, QChildEvent* event);
	void (*customEvent)(VirtualQWindowCapture* self, QEvent* event);
	void (*connectNotify)(VirtualQWindowCapture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWindowCapture* self, QMetaMethod* signal);
}QWindowCapture_VTable;

void* QWindowCapture_vdata(VirtualQWindowCapture* self);
VirtualQWindowCapture* vdata_QWindowCapture(void* vdata);

VirtualQWindowCapture* QWindowCapture_new(const QWindowCapture_VTable* vtbl, size_t vdata);
VirtualQWindowCapture* QWindowCapture_new_parent(const QWindowCapture_VTable* vtbl, size_t vdata, QObject* parent);

void QWindowCapture_virtbase(QWindowCapture* src, QObject** outptr_QObject);
QMetaObject* QWindowCapture_metaObject(const QWindowCapture* self);
void* QWindowCapture_metacast(QWindowCapture* self, const char* param1);
int QWindowCapture_metacall(QWindowCapture* self, int param1, int param2, void** param3);
struct seaqt_string QWindowCapture_tr_s(const char* s);
struct seaqt_array /* of QCapturableWindow* */  QWindowCapture_capturableWindows();
QMediaCaptureSession* QWindowCapture_captureSession(const QWindowCapture* self);
void QWindowCapture_setWindow(QWindowCapture* self, QCapturableWindow* window);
QCapturableWindow* QWindowCapture_window(const QWindowCapture* self);
bool QWindowCapture_isActive(const QWindowCapture* self);
int QWindowCapture_error(const QWindowCapture* self);
struct seaqt_string QWindowCapture_errorString(const QWindowCapture* self);
void QWindowCapture_setActive(QWindowCapture* self, bool active);
void QWindowCapture_start(QWindowCapture* self);
void QWindowCapture_stop(QWindowCapture* self);
void QWindowCapture_activeChanged(QWindowCapture* self, bool param1);
void QWindowCapture_connect_activeChanged(QWindowCapture* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QWindowCapture_windowChanged(QWindowCapture* self, QCapturableWindow* window);
void QWindowCapture_connect_windowChanged(QWindowCapture* self, intptr_t slot, void (*callback)(intptr_t, QCapturableWindow*), void (*release)(intptr_t));
void QWindowCapture_errorChanged(QWindowCapture* self);
void QWindowCapture_connect_errorChanged(QWindowCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWindowCapture_errorOccurred(QWindowCapture* self, int error, struct seaqt_string errorString);
void QWindowCapture_connect_errorOccurred(QWindowCapture* self, intptr_t slot, void (*callback)(intptr_t, int, struct seaqt_string), void (*release)(intptr_t));
struct seaqt_string QWindowCapture_tr_s_c(const char* s, const char* c);
struct seaqt_string QWindowCapture_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QWindowCapture_virtualbase_metaObject(const VirtualQWindowCapture* self);
void* QWindowCapture_virtualbase_metacast(VirtualQWindowCapture* self, const char* param1);
int QWindowCapture_virtualbase_metacall(VirtualQWindowCapture* self, int param1, int param2, void** param3);
bool QWindowCapture_virtualbase_event(VirtualQWindowCapture* self, QEvent* event);
bool QWindowCapture_virtualbase_eventFilter(VirtualQWindowCapture* self, QObject* watched, QEvent* event);
void QWindowCapture_virtualbase_timerEvent(VirtualQWindowCapture* self, QTimerEvent* event);
void QWindowCapture_virtualbase_childEvent(VirtualQWindowCapture* self, QChildEvent* event);
void QWindowCapture_virtualbase_customEvent(VirtualQWindowCapture* self, QEvent* event);
void QWindowCapture_virtualbase_connectNotify(VirtualQWindowCapture* self, QMetaMethod* signal);
void QWindowCapture_virtualbase_disconnectNotify(VirtualQWindowCapture* self, QMetaMethod* signal);

QObject* QWindowCapture_protectedbase_sender(const VirtualQWindowCapture* self);
int QWindowCapture_protectedbase_senderSignalIndex(const VirtualQWindowCapture* self);
int QWindowCapture_protectedbase_receivers(const VirtualQWindowCapture* self, const char* signal);
bool QWindowCapture_protectedbase_isSignalConnected(const VirtualQWindowCapture* self, QMetaMethod* signal);

const QMetaObject* QWindowCapture_staticMetaObject();
void QWindowCapture_delete(QWindowCapture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
