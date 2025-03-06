#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QWAVEDECODER_H
#define SEAQT_QTMULTIMEDIA_GEN_QWAVEDECODER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioFormat;
class QChildEvent;
class QEvent;
class QIODevice;
class QIODeviceBase;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QWaveDecoder;
#else
typedef struct QAudioFormat QAudioFormat;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWaveDecoder QWaveDecoder;
#endif

struct QWaveDecoder_VTable {
	void (*destructor)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self);
	QMetaObject* (*metaObject)(struct QWaveDecoder_VTable* vtbl, const QWaveDecoder* self);
	void* (*metacast)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, const char* param1);
	int (*metacall)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, int param1, int param2, void** param3);
	bool (*open)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, int mode);
	void (*close)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self);
	bool (*seek)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, long long pos);
	long long (*pos)(struct QWaveDecoder_VTable* vtbl, const QWaveDecoder* self);
	long long (*size)(struct QWaveDecoder_VTable* vtbl, const QWaveDecoder* self);
	bool (*isSequential)(struct QWaveDecoder_VTable* vtbl, const QWaveDecoder* self);
	long long (*bytesAvailable)(struct QWaveDecoder_VTable* vtbl, const QWaveDecoder* self);
	bool (*atEnd)(struct QWaveDecoder_VTable* vtbl, const QWaveDecoder* self);
	bool (*reset)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self);
	long long (*bytesToWrite)(struct QWaveDecoder_VTable* vtbl, const QWaveDecoder* self);
	bool (*canReadLine)(struct QWaveDecoder_VTable* vtbl, const QWaveDecoder* self);
	bool (*waitForReadyRead)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, int msecs);
	bool (*waitForBytesWritten)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, int msecs);
	long long (*readLineData)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, char* data, long long maxlen);
	long long (*skipData)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, long long maxSize);
	bool (*event)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, QEvent* event);
	bool (*eventFilter)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, QTimerEvent* event);
	void (*childEvent)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, QChildEvent* event);
	void (*customEvent)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, QEvent* event);
	void (*connectNotify)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QWaveDecoder_VTable* vtbl, QWaveDecoder* self, QMetaMethod* signal);
};
QWaveDecoder* QWaveDecoder_new(struct QWaveDecoder_VTable* vtbl, QIODevice* device);
QWaveDecoder* QWaveDecoder_new2(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QAudioFormat* format);
QWaveDecoder* QWaveDecoder_new3(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QObject* parent);
QWaveDecoder* QWaveDecoder_new4(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QAudioFormat* format, QObject* parent);
void QWaveDecoder_virtbase(QWaveDecoder* src, QIODevice** outptr_QIODevice);
QMetaObject* QWaveDecoder_metaObject(const QWaveDecoder* self);
void* QWaveDecoder_metacast(QWaveDecoder* self, const char* param1);
int QWaveDecoder_metacall(QWaveDecoder* self, int param1, int param2, void** param3);
struct miqt_string QWaveDecoder_tr(const char* s);
QAudioFormat* QWaveDecoder_audioFormat(const QWaveDecoder* self);
QIODevice* QWaveDecoder_getDevice(QWaveDecoder* self);
int QWaveDecoder_duration(const QWaveDecoder* self);
long long QWaveDecoder_headerLength();
bool QWaveDecoder_open(QWaveDecoder* self, int mode);
void QWaveDecoder_close(QWaveDecoder* self);
bool QWaveDecoder_seek(QWaveDecoder* self, long long pos);
long long QWaveDecoder_pos(const QWaveDecoder* self);
long long QWaveDecoder_size(const QWaveDecoder* self);
bool QWaveDecoder_isSequential(const QWaveDecoder* self);
long long QWaveDecoder_bytesAvailable(const QWaveDecoder* self);
void QWaveDecoder_formatKnown(QWaveDecoder* self);
void QWaveDecoder_connect_formatKnown(QWaveDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWaveDecoder_parsingError(QWaveDecoder* self);
void QWaveDecoder_connect_parsingError(QWaveDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QWaveDecoder_tr2(const char* s, const char* c);
struct miqt_string QWaveDecoder_tr3(const char* s, const char* c, int n);
QMetaObject* QWaveDecoder_virtualbase_metaObject(const void* self);
void* QWaveDecoder_virtualbase_metacast(void* self, const char* param1);
int QWaveDecoder_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QWaveDecoder_virtualbase_open(void* self, int mode);
void QWaveDecoder_virtualbase_close(void* self);
bool QWaveDecoder_virtualbase_seek(void* self, long long pos);
long long QWaveDecoder_virtualbase_pos(const void* self);
long long QWaveDecoder_virtualbase_size(const void* self);
bool QWaveDecoder_virtualbase_isSequential(const void* self);
long long QWaveDecoder_virtualbase_bytesAvailable(const void* self);
bool QWaveDecoder_virtualbase_atEnd(const void* self);
bool QWaveDecoder_virtualbase_reset(void* self);
long long QWaveDecoder_virtualbase_bytesToWrite(const void* self);
bool QWaveDecoder_virtualbase_canReadLine(const void* self);
bool QWaveDecoder_virtualbase_waitForReadyRead(void* self, int msecs);
bool QWaveDecoder_virtualbase_waitForBytesWritten(void* self, int msecs);
long long QWaveDecoder_virtualbase_readLineData(void* self, char* data, long long maxlen);
long long QWaveDecoder_virtualbase_skipData(void* self, long long maxSize);
bool QWaveDecoder_virtualbase_event(void* self, QEvent* event);
bool QWaveDecoder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QWaveDecoder_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QWaveDecoder_virtualbase_childEvent(void* self, QChildEvent* event);
void QWaveDecoder_virtualbase_customEvent(void* self, QEvent* event);
void QWaveDecoder_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QWaveDecoder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QWaveDecoder_protectedbase_setOpenMode(bool* _dynamic_cast_ok, void* self, int openMode);
void QWaveDecoder_protectedbase_setErrorString(bool* _dynamic_cast_ok, void* self, struct miqt_string errorString);
QObject* QWaveDecoder_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QWaveDecoder_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QWaveDecoder_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QWaveDecoder_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QWaveDecoder_staticMetaObject();
void QWaveDecoder_delete(QWaveDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
