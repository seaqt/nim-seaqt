#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QVIDEOPROBE_H
#define SEAQT_QTMULTIMEDIA_GEN_QVIDEOPROBE_H

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
class QMediaObject;
class QMediaRecorder;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QVideoFrame;
class QVideoProbe;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaRecorder QMediaRecorder;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoProbe QVideoProbe;
#endif

struct QVideoProbe_VTable {
	void (*destructor)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self);
	QMetaObject* (*metaObject)(struct QVideoProbe_VTable* vtbl, const QVideoProbe* self);
	void* (*metacast)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, const char* param1);
	int (*metacall)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, int param1, int param2, void** param3);
	bool (*event)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, QEvent* event);
	bool (*eventFilter)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, QTimerEvent* event);
	void (*childEvent)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, QChildEvent* event);
	void (*customEvent)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, QEvent* event);
	void (*connectNotify)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QVideoProbe_VTable* vtbl, QVideoProbe* self, QMetaMethod* signal);
};
QVideoProbe* QVideoProbe_new(struct QVideoProbe_VTable* vtbl);
QVideoProbe* QVideoProbe_new2(struct QVideoProbe_VTable* vtbl, QObject* parent);
void QVideoProbe_virtbase(QVideoProbe* src, QObject** outptr_QObject);
QMetaObject* QVideoProbe_metaObject(const QVideoProbe* self);
void* QVideoProbe_metacast(QVideoProbe* self, const char* param1);
int QVideoProbe_metacall(QVideoProbe* self, int param1, int param2, void** param3);
struct miqt_string QVideoProbe_tr(const char* s);
struct miqt_string QVideoProbe_trUtf8(const char* s);
bool QVideoProbe_setSource(QVideoProbe* self, QMediaObject* source);
bool QVideoProbe_setSourceWithSource(QVideoProbe* self, QMediaRecorder* source);
bool QVideoProbe_isActive(const QVideoProbe* self);
void QVideoProbe_videoFrameProbed(QVideoProbe* self, QVideoFrame* frame);
void QVideoProbe_connect_videoFrameProbed(QVideoProbe* self, intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t));
void QVideoProbe_flush(QVideoProbe* self);
void QVideoProbe_connect_flush(QVideoProbe* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QVideoProbe_tr2(const char* s, const char* c);
struct miqt_string QVideoProbe_tr3(const char* s, const char* c, int n);
struct miqt_string QVideoProbe_trUtf82(const char* s, const char* c);
struct miqt_string QVideoProbe_trUtf83(const char* s, const char* c, int n);
QMetaObject* QVideoProbe_virtualbase_metaObject(const void* self);
void* QVideoProbe_virtualbase_metacast(void* self, const char* param1);
int QVideoProbe_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QVideoProbe_virtualbase_event(void* self, QEvent* event);
bool QVideoProbe_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QVideoProbe_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QVideoProbe_virtualbase_childEvent(void* self, QChildEvent* event);
void QVideoProbe_virtualbase_customEvent(void* self, QEvent* event);
void QVideoProbe_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QVideoProbe_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QVideoProbe_protectedbase_sender(const void* self);
int QVideoProbe_protectedbase_senderSignalIndex(const void* self);
int QVideoProbe_protectedbase_receivers(const void* self, const char* signal);
bool QVideoProbe_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QVideoProbe_staticMetaObject();
void QVideoProbe_delete(QVideoProbe* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
