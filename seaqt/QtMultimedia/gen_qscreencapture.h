#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QSCREENCAPTURE_H
#define SEAQT_QTMULTIMEDIA_GEN_QSCREENCAPTURE_H

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
class QMediaCaptureSession;
class QMetaMethod;
class QMetaObject;
class QObject;
class QScreen;
class QScreenCapture;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaCaptureSession QMediaCaptureSession;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QScreen QScreen;
typedef struct QScreenCapture QScreenCapture;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQScreenCapture VirtualQScreenCapture;
typedef struct QScreenCapture_VTable{
	void (*destructor)(VirtualQScreenCapture* self);
	QMetaObject* (*metaObject)(const VirtualQScreenCapture* self);
	void* (*metacast)(VirtualQScreenCapture* self, const char* param1);
	int (*metacall)(VirtualQScreenCapture* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQScreenCapture* self, QEvent* event);
	bool (*eventFilter)(VirtualQScreenCapture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQScreenCapture* self, QTimerEvent* event);
	void (*childEvent)(VirtualQScreenCapture* self, QChildEvent* event);
	void (*customEvent)(VirtualQScreenCapture* self, QEvent* event);
	void (*connectNotify)(VirtualQScreenCapture* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQScreenCapture* self, QMetaMethod* signal);
}QScreenCapture_VTable;

void* QScreenCapture_vdata(VirtualQScreenCapture* self);
VirtualQScreenCapture* vdata_QScreenCapture(void* vdata);

VirtualQScreenCapture* QScreenCapture_new(const QScreenCapture_VTable* vtbl, size_t vdata);
VirtualQScreenCapture* QScreenCapture_new_parent(const QScreenCapture_VTable* vtbl, size_t vdata, QObject* parent);

void QScreenCapture_virtbase(QScreenCapture* src, QObject** outptr_QObject);
QMetaObject* QScreenCapture_metaObject(const QScreenCapture* self);
void* QScreenCapture_metacast(QScreenCapture* self, const char* param1);
int QScreenCapture_metacall(QScreenCapture* self, int param1, int param2, void** param3);
struct seaqt_string QScreenCapture_tr_s(const char* s);
QMediaCaptureSession* QScreenCapture_captureSession(const QScreenCapture* self);
void QScreenCapture_setScreen(QScreenCapture* self, QScreen* screen);
QScreen* QScreenCapture_screen(const QScreenCapture* self);
bool QScreenCapture_isActive(const QScreenCapture* self);
int QScreenCapture_error(const QScreenCapture* self);
struct seaqt_string QScreenCapture_errorString(const QScreenCapture* self);
void QScreenCapture_setActive(QScreenCapture* self, bool active);
void QScreenCapture_start(QScreenCapture* self);
void QScreenCapture_stop(QScreenCapture* self);
void QScreenCapture_activeChanged(QScreenCapture* self, bool param1);
void QScreenCapture_connect_activeChanged(QScreenCapture* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QScreenCapture_errorChanged(QScreenCapture* self);
void QScreenCapture_connect_errorChanged(QScreenCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QScreenCapture_screenChanged(QScreenCapture* self, QScreen* param1);
void QScreenCapture_connect_screenChanged(QScreenCapture* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t));
void QScreenCapture_errorOccurred(QScreenCapture* self, int error, struct seaqt_string errorString);
void QScreenCapture_connect_errorOccurred(QScreenCapture* self, intptr_t slot, void (*callback)(intptr_t, int, struct seaqt_string), void (*release)(intptr_t));
struct seaqt_string QScreenCapture_tr_s_c(const char* s, const char* c);
struct seaqt_string QScreenCapture_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QScreenCapture_virtualbase_metaObject(const VirtualQScreenCapture* self);
void* QScreenCapture_virtualbase_metacast(VirtualQScreenCapture* self, const char* param1);
int QScreenCapture_virtualbase_metacall(VirtualQScreenCapture* self, int param1, int param2, void** param3);
bool QScreenCapture_virtualbase_event(VirtualQScreenCapture* self, QEvent* event);
bool QScreenCapture_virtualbase_eventFilter(VirtualQScreenCapture* self, QObject* watched, QEvent* event);
void QScreenCapture_virtualbase_timerEvent(VirtualQScreenCapture* self, QTimerEvent* event);
void QScreenCapture_virtualbase_childEvent(VirtualQScreenCapture* self, QChildEvent* event);
void QScreenCapture_virtualbase_customEvent(VirtualQScreenCapture* self, QEvent* event);
void QScreenCapture_virtualbase_connectNotify(VirtualQScreenCapture* self, QMetaMethod* signal);
void QScreenCapture_virtualbase_disconnectNotify(VirtualQScreenCapture* self, QMetaMethod* signal);

QObject* QScreenCapture_protectedbase_sender(const VirtualQScreenCapture* self);
int QScreenCapture_protectedbase_senderSignalIndex(const VirtualQScreenCapture* self);
int QScreenCapture_protectedbase_receivers(const VirtualQScreenCapture* self, const char* signal);
bool QScreenCapture_protectedbase_isSignalConnected(const VirtualQScreenCapture* self, QMetaMethod* signal);

const QMetaObject* QScreenCapture_staticMetaObject();
void QScreenCapture_delete(QScreenCapture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
