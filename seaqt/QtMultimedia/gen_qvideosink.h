#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QVIDEOSINK_H
#define SEAQT_QTMULTIMEDIA_GEN_QVIDEOSINK_H

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
class QSize;
class QTimerEvent;
class QVideoFrame;
class QVideoSink;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVideoFrame QVideoFrame;
typedef struct QVideoSink QVideoSink;
#endif

typedef struct VirtualQVideoSink VirtualQVideoSink;
typedef struct QVideoSink_VTable{
	void (*destructor)(VirtualQVideoSink* self);
	QMetaObject* (*metaObject)(const VirtualQVideoSink* self);
	void* (*metacast)(VirtualQVideoSink* self, const char* param1);
	int (*metacall)(VirtualQVideoSink* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQVideoSink* self, QEvent* event);
	bool (*eventFilter)(VirtualQVideoSink* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQVideoSink* self, QTimerEvent* event);
	void (*childEvent)(VirtualQVideoSink* self, QChildEvent* event);
	void (*customEvent)(VirtualQVideoSink* self, QEvent* event);
	void (*connectNotify)(VirtualQVideoSink* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQVideoSink* self, QMetaMethod* signal);
}QVideoSink_VTable;

const QVideoSink_VTable* QVideoSink_vtbl(const VirtualQVideoSink* self);
void* QVideoSink_vdata(const VirtualQVideoSink* self);
void QVideoSink_setVdata(VirtualQVideoSink* self, void* vdata);

VirtualQVideoSink* QVideoSink_new(const QVideoSink_VTable* vtbl, void* vdata);
VirtualQVideoSink* QVideoSink_new2(const QVideoSink_VTable* vtbl, void* vdata, QObject* parent);

void QVideoSink_virtbase(QVideoSink* src, QObject** outptr_QObject);
QMetaObject* QVideoSink_metaObject(const QVideoSink* self);
void* QVideoSink_metacast(QVideoSink* self, const char* param1);
int QVideoSink_metacall(QVideoSink* self, int param1, int param2, void** param3);
struct miqt_string QVideoSink_tr(const char* s);
QSize* QVideoSink_videoSize(const QVideoSink* self);
struct miqt_string QVideoSink_subtitleText(const QVideoSink* self);
void QVideoSink_setSubtitleText(QVideoSink* self, struct miqt_string subtitle);
void QVideoSink_setVideoFrame(QVideoSink* self, QVideoFrame* frame);
QVideoFrame* QVideoSink_videoFrame(const QVideoSink* self);
void QVideoSink_videoFrameChanged(const QVideoSink* self, QVideoFrame* frame);
void QVideoSink_connect_videoFrameChanged(VirtualQVideoSink* self, intptr_t slot, void (*callback)(intptr_t, QVideoFrame*), void (*release)(intptr_t));
void QVideoSink_subtitleTextChanged(const QVideoSink* self, struct miqt_string subtitleText);
void QVideoSink_connect_subtitleTextChanged(VirtualQVideoSink* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t));
void QVideoSink_videoSizeChanged(QVideoSink* self);
void QVideoSink_connect_videoSizeChanged(VirtualQVideoSink* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QVideoSink_tr2(const char* s, const char* c);
struct miqt_string QVideoSink_tr3(const char* s, const char* c, int n);

QMetaObject* QVideoSink_virtualbase_metaObject(const VirtualQVideoSink* self);
void* QVideoSink_virtualbase_metacast(VirtualQVideoSink* self, const char* param1);
int QVideoSink_virtualbase_metacall(VirtualQVideoSink* self, int param1, int param2, void** param3);
bool QVideoSink_virtualbase_event(VirtualQVideoSink* self, QEvent* event);
bool QVideoSink_virtualbase_eventFilter(VirtualQVideoSink* self, QObject* watched, QEvent* event);
void QVideoSink_virtualbase_timerEvent(VirtualQVideoSink* self, QTimerEvent* event);
void QVideoSink_virtualbase_childEvent(VirtualQVideoSink* self, QChildEvent* event);
void QVideoSink_virtualbase_customEvent(VirtualQVideoSink* self, QEvent* event);
void QVideoSink_virtualbase_connectNotify(VirtualQVideoSink* self, QMetaMethod* signal);
void QVideoSink_virtualbase_disconnectNotify(VirtualQVideoSink* self, QMetaMethod* signal);

QObject* QVideoSink_protectedbase_sender(const VirtualQVideoSink* self);
int QVideoSink_protectedbase_senderSignalIndex(const VirtualQVideoSink* self);
int QVideoSink_protectedbase_receivers(const VirtualQVideoSink* self, const char* signal);
bool QVideoSink_protectedbase_isSignalConnected(const VirtualQVideoSink* self, QMetaMethod* signal);

const QMetaObject* QVideoSink_staticMetaObject();
void QVideoSink_delete(QVideoSink* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
