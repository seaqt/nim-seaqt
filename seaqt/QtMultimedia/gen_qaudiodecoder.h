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
class QMediaObject;
class QMediaService;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAudioBuffer QAudioBuffer;
typedef struct QAudioDecoder QAudioDecoder;
typedef struct QAudioFormat QAudioFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QAudioDecoder_VTable {
	void (*destructor)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self);
	QMetaObject* (*metaObject)(struct QAudioDecoder_VTable* vtbl, const QAudioDecoder* self);
	void* (*metacast)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, const char* param1);
	int (*metacall)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, int param1, int param2, void** param3);
	bool (*bind)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QObject* param1);
	void (*unbind)(struct QAudioDecoder_VTable* vtbl, QAudioDecoder* self, QObject* param1);
	bool (*isAvailable)(struct QAudioDecoder_VTable* vtbl, const QAudioDecoder* self);
	int (*availability)(struct QAudioDecoder_VTable* vtbl, const QAudioDecoder* self);
	QMediaService* (*service)(struct QAudioDecoder_VTable* vtbl, const QAudioDecoder* self);
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
void QAudioDecoder_virtbase(QAudioDecoder* src, QMediaObject** outptr_QMediaObject);
QMetaObject* QAudioDecoder_metaObject(const QAudioDecoder* self);
void* QAudioDecoder_metacast(QAudioDecoder* self, const char* param1);
int QAudioDecoder_metacall(QAudioDecoder* self, int param1, int param2, void** param3);
struct miqt_string QAudioDecoder_tr(const char* s);
struct miqt_string QAudioDecoder_trUtf8(const char* s);
int QAudioDecoder_hasSupport(struct miqt_string mimeType);
int QAudioDecoder_state(const QAudioDecoder* self);
struct miqt_string QAudioDecoder_sourceFilename(const QAudioDecoder* self);
void QAudioDecoder_setSourceFilename(QAudioDecoder* self, struct miqt_string fileName);
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
void QAudioDecoder_stateChanged(QAudioDecoder* self, int newState);
void QAudioDecoder_connect_stateChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
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
bool QAudioDecoder_bind(QAudioDecoder* self, QObject* param1);
void QAudioDecoder_unbind(QAudioDecoder* self, QObject* param1);
struct miqt_string QAudioDecoder_tr2(const char* s, const char* c);
struct miqt_string QAudioDecoder_tr3(const char* s, const char* c, int n);
struct miqt_string QAudioDecoder_trUtf82(const char* s, const char* c);
struct miqt_string QAudioDecoder_trUtf83(const char* s, const char* c, int n);
int QAudioDecoder_hasSupport2(struct miqt_string mimeType, struct miqt_array /* of struct miqt_string */  codecs);
QMetaObject* QAudioDecoder_virtualbase_metaObject(const void* self);
void* QAudioDecoder_virtualbase_metacast(void* self, const char* param1);
int QAudioDecoder_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioDecoder_virtualbase_bind(void* self, QObject* param1);
void QAudioDecoder_virtualbase_unbind(void* self, QObject* param1);
bool QAudioDecoder_virtualbase_isAvailable(const void* self);
int QAudioDecoder_virtualbase_availability(const void* self);
QMediaService* QAudioDecoder_virtualbase_service(const void* self);
bool QAudioDecoder_virtualbase_event(void* self, QEvent* event);
bool QAudioDecoder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioDecoder_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioDecoder_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioDecoder_virtualbase_customEvent(void* self, QEvent* event);
void QAudioDecoder_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioDecoder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QAudioDecoder_protectedbase_addPropertyWatch(void* self, struct miqt_string name);
void QAudioDecoder_protectedbase_removePropertyWatch(void* self, struct miqt_string name);
QObject* QAudioDecoder_protectedbase_sender(const void* self);
int QAudioDecoder_protectedbase_senderSignalIndex(const void* self);
int QAudioDecoder_protectedbase_receivers(const void* self, const char* signal);
bool QAudioDecoder_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QAudioDecoder_staticMetaObject();
void QAudioDecoder_delete(QAudioDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
