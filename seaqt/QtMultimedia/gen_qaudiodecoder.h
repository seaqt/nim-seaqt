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

struct QAudioDecoder_VTable {
	void (*destructor)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self);
	QMetaObject* (*metaObject)(struct QAudioDecoder_VTable* vtbl, const QAudioDecoder* self);
	void* (*metacast)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, const char* param1);
	int (*metacall)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QEvent* event);
	bool (*eventFilter)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QChildEvent* event);
	void (*customEvent)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QEvent* event);
	void (*connectNotify)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QMetaMethod* signal);
};
QAudioDecoder* QAudioDecoder_new(struct QAudioDecoder_VTable* vtbl);
QAudioDecoder* QAudioDecoder_new2(struct QAudioDecoder_VTable* vtbl, QObject* parent);
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
void QAudioDecoder_connect_bufferAvailableChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAudioDecoder_bufferReady(QAudioDecoder* self);
void QAudioDecoder_connect_bufferReady(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioDecoder_finished(QAudioDecoder* self);
void QAudioDecoder_connect_finished(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioDecoder_isDecodingChanged(QAudioDecoder* self, bool param1);
void QAudioDecoder_connect_isDecodingChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t));
void QAudioDecoder_formatChanged(QAudioDecoder* self, QAudioFormat* format);
void QAudioDecoder_connect_formatChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, QAudioFormat*), void (*release)(intptr_t));
void QAudioDecoder_errorWithError(QAudioDecoder* self, int error);
void QAudioDecoder_connect_errorWithError(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QAudioDecoder_sourceChanged(QAudioDecoder* self);
void QAudioDecoder_connect_sourceChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QAudioDecoder_positionChanged(QAudioDecoder* self, long long position);
void QAudioDecoder_connect_positionChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
void QAudioDecoder_durationChanged(QAudioDecoder* self, long long duration);
void QAudioDecoder_connect_durationChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t));
struct miqt_string QAudioDecoder_tr2(const char* s, const char* c);
struct miqt_string QAudioDecoder_tr3(const char* s, const char* c, int n);
QMetaObject* QAudioDecoder_virtualbase_metaObject(const void* self);
void* QAudioDecoder_virtualbase_metacast(void* self, const char* param1);
int QAudioDecoder_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioDecoder_virtualbase_event(void* self, QEvent* event);
bool QAudioDecoder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioDecoder_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioDecoder_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioDecoder_virtualbase_customEvent(void* self, QEvent* event);
void QAudioDecoder_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioDecoder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioDecoder_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QAudioDecoder_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QAudioDecoder_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QAudioDecoder_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QAudioDecoder_staticMetaObject();
void QAudioDecoder_delete(QAudioDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
