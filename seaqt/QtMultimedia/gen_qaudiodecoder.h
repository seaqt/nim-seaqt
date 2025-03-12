#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIODECODER_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIODECODER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioBuffer;
class QAudioDecoder;
class QAudioFormat;
class QChildEvent;
class QEvent;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QUrl;
#else
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioDecoder QAudioDecoder;
typedef struct QAudioFormat QAudioFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

typedef struct VirtualQAudioDecoder VirtualQAudioDecoder;
typedef struct QAudioDecoder_VTable{
	void (*destructor)(VirtualQAudioDecoder* self);
	QMetaObject* (*metaObject)(const VirtualQAudioDecoder* self);
	void* (*metacast)(VirtualQAudioDecoder* self, const char* param1);
	int (*metacall)(VirtualQAudioDecoder* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQAudioDecoder* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioDecoder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioDecoder* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioDecoder* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioDecoder* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioDecoder* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioDecoder* self, QMetaMethod* signal);
}QAudioDecoder_VTable;

const QAudioDecoder_VTable* QAudioDecoder_vtbl(const VirtualQAudioDecoder* self);
void* QAudioDecoder_vdata(const VirtualQAudioDecoder* self);
void QAudioDecoder_setVdata(VirtualQAudioDecoder* self, void* vdata);

VirtualQAudioDecoder* QAudioDecoder_new(const QAudioDecoder_VTable* vtbl, void* vdata);
VirtualQAudioDecoder* QAudioDecoder_new2(const QAudioDecoder_VTable* vtbl, void* vdata, QObject* parent);

void QAudioDecoder_virtbase(QAudioDecoder* src, QObject** outptr_QObject);
QMetaObject* QAudioDecoder_metaObject(const QAudioDecoder* self);
void* QAudioDecoder_metacast(QAudioDecoder* self, const char* param1);
int QAudioDecoder_metacall(QAudioDecoder* self, int param1, int param2, void** param3);
struct miqt_string QAudioDecoder_tr(const char* s);
bool QAudioDecoder_isSupported(const QAudioDecoder* self);
bool QAudioDecoder_isDecoding(const QAudioDecoder* self);
QUrl* QAudioDecoder_source(const QAudioDecoder* self);
void QAudioDecoder_setSource(QAudioDecoder* self, QUrl* fileName);
QIODevice* QAudioDecoder_sourceDevice(const QAudioDecoder* self);
void QAudioDecoder_setSourceDevice(QAudioDecoder* self, QIODevice* device);
QAudioFormat* QAudioDecoder_audioFormat(const QAudioDecoder* self);
void QAudioDecoder_setAudioFormat(QAudioDecoder* self, QAudioFormat* format);
int QAudioDecoder_error(const QAudioDecoder* self);
struct miqt_string QAudioDecoder_errorString(const QAudioDecoder* self);
QAudioBuffer* QAudioDecoder_read(const QAudioDecoder* self);
bool QAudioDecoder_bufferAvailable(const QAudioDecoder* self);
long long QAudioDecoder_position(const QAudioDecoder* self);
long long QAudioDecoder_duration(const QAudioDecoder* self);
void QAudioDecoder_start(QAudioDecoder* self);
void QAudioDecoder_stop(QAudioDecoder* self);
void QAudioDecoder_bufferAvailableChanged(QAudioDecoder* self, bool param1);
void QAudioDecoder_connect_bufferAvailableChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAudioDecoder_bufferReady(QAudioDecoder* self);
void QAudioDecoder_connect_bufferReady(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioDecoder_finished(QAudioDecoder* self);
void QAudioDecoder_connect_finished(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioDecoder_isDecodingChanged(QAudioDecoder* self, bool param1);
void QAudioDecoder_connect_isDecodingChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAudioDecoder_formatChanged(QAudioDecoder* self, QAudioFormat* format);
void QAudioDecoder_connect_formatChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, QAudioFormat*), void (*release)(intptr_t));
void QAudioDecoder_errorWithError(QAudioDecoder* self, int error);
void QAudioDecoder_connect_errorWithError(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAudioDecoder_sourceChanged(QAudioDecoder* self);
void QAudioDecoder_connect_sourceChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioDecoder_positionChanged(QAudioDecoder* self, long long position);
void QAudioDecoder_connect_positionChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QAudioDecoder_durationChanged(QAudioDecoder* self, long long duration);
void QAudioDecoder_connect_durationChanged(VirtualQAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
struct miqt_string QAudioDecoder_tr2(const char* s, const char* c);
struct miqt_string QAudioDecoder_tr3(const char* s, const char* c, int n);

QMetaObject* QAudioDecoder_virtualbase_metaObject(const VirtualQAudioDecoder* self);
void* QAudioDecoder_virtualbase_metacast(VirtualQAudioDecoder* self, const char* param1);
int QAudioDecoder_virtualbase_metacall(VirtualQAudioDecoder* self, int param1, int param2, void** param3);
bool QAudioDecoder_virtualbase_event(VirtualQAudioDecoder* self, QEvent* event);
bool QAudioDecoder_virtualbase_eventFilter(VirtualQAudioDecoder* self, QObject* watched, QEvent* event);
void QAudioDecoder_virtualbase_timerEvent(VirtualQAudioDecoder* self, QTimerEvent* event);
void QAudioDecoder_virtualbase_childEvent(VirtualQAudioDecoder* self, QChildEvent* event);
void QAudioDecoder_virtualbase_customEvent(VirtualQAudioDecoder* self, QEvent* event);
void QAudioDecoder_virtualbase_connectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal);
void QAudioDecoder_virtualbase_disconnectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal);

QObject* QAudioDecoder_protectedbase_sender(const VirtualQAudioDecoder* self);
int QAudioDecoder_protectedbase_senderSignalIndex(const VirtualQAudioDecoder* self);
int QAudioDecoder_protectedbase_receivers(const VirtualQAudioDecoder* self, const char* signal);
bool QAudioDecoder_protectedbase_isSignalConnected(const VirtualQAudioDecoder* self, QMetaMethod* signal);

const QMetaObject* QAudioDecoder_staticMetaObject();
void QAudioDecoder_delete(QAudioDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
