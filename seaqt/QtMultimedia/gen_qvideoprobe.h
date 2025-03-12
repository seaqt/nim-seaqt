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

typedef struct VirtualQVideoProbe VirtualQVideoProbe;
typedef struct QVideoProbe_VTable{
	void (*destructor)(VirtualQVideoProbe* self);
	QMetaObject* (*metaObject)(const VirtualQVideoProbe* self);
	void* (*metacast)(VirtualQVideoProbe* self, const char* param1);
	int (*metacall)(VirtualQVideoProbe* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQVideoProbe* self, QEvent* event);
	bool (*eventFilter)(VirtualQVideoProbe* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQVideoProbe* self, QTimerEvent* event);
	void (*childEvent)(VirtualQVideoProbe* self, QChildEvent* event);
	void (*customEvent)(VirtualQVideoProbe* self, QEvent* event);
	void (*connectNotify)(VirtualQVideoProbe* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQVideoProbe* self, QMetaMethod* signal);
}QVideoProbe_VTable;

const QVideoProbe_VTable* QVideoProbe_vtbl(const VirtualQVideoProbe* self);
void* QVideoProbe_vdata(const VirtualQVideoProbe* self);
void QVideoProbe_setVdata(VirtualQVideoProbe* self, void* vdata);

VirtualQVideoProbe* QVideoProbe_new(const QVideoProbe_VTable* vtbl, void* vdata);
VirtualQVideoProbe* QVideoProbe_new2(const QVideoProbe_VTable* vtbl, void* vdata, QObject* parent);

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
void QVideoProbe_connect_videoFrameProbed(VirtualQVideoProbe* self, intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t));
void QVideoProbe_flush(QVideoProbe* self);
void QVideoProbe_connect_flush(VirtualQVideoProbe* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QVideoProbe_tr2(const char* s, const char* c);
struct miqt_string QVideoProbe_tr3(const char* s, const char* c, int n);
struct miqt_string QVideoProbe_trUtf82(const char* s, const char* c);
struct miqt_string QVideoProbe_trUtf83(const char* s, const char* c, int n);

QMetaObject* QVideoProbe_virtualbase_metaObject(const VirtualQVideoProbe* self);
void* QVideoProbe_virtualbase_metacast(VirtualQVideoProbe* self, const char* param1);
int QVideoProbe_virtualbase_metacall(VirtualQVideoProbe* self, int param1, int param2, void** param3);
bool QVideoProbe_virtualbase_event(VirtualQVideoProbe* self, QEvent* event);
bool QVideoProbe_virtualbase_eventFilter(VirtualQVideoProbe* self, QObject* watched, QEvent* event);
void QVideoProbe_virtualbase_timerEvent(VirtualQVideoProbe* self, QTimerEvent* event);
void QVideoProbe_virtualbase_childEvent(VirtualQVideoProbe* self, QChildEvent* event);
void QVideoProbe_virtualbase_customEvent(VirtualQVideoProbe* self, QEvent* event);
void QVideoProbe_virtualbase_connectNotify(VirtualQVideoProbe* self, QMetaMethod* signal);
void QVideoProbe_virtualbase_disconnectNotify(VirtualQVideoProbe* self, QMetaMethod* signal);

QObject* QVideoProbe_protectedbase_sender(const VirtualQVideoProbe* self);
int QVideoProbe_protectedbase_senderSignalIndex(const VirtualQVideoProbe* self);
int QVideoProbe_protectedbase_receivers(const VirtualQVideoProbe* self, const char* signal);
bool QVideoProbe_protectedbase_isSignalConnected(const VirtualQVideoProbe* self, QMetaMethod* signal);

const QMetaObject* QVideoProbe_staticMetaObject();
void QVideoProbe_delete(QVideoProbe* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
