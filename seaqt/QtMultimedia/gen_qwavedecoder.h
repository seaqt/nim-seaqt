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

typedef struct VirtualQWaveDecoder VirtualQWaveDecoder;
typedef struct QWaveDecoder_VTable{
	void (*destructor)(VirtualQWaveDecoder* self);
	QMetaObject* (*metaObject)(const VirtualQWaveDecoder* self);
	void* (*metacast)(VirtualQWaveDecoder* self, const char* param1);
	int (*metacall)(VirtualQWaveDecoder* self, int param1, int param2, void** param3);
	bool (*open)(VirtualQWaveDecoder* self, int mode);
	void (*close)(VirtualQWaveDecoder* self);
	bool (*seek)(VirtualQWaveDecoder* self, long long pos);
	long long (*pos)(const VirtualQWaveDecoder* self);
	long long (*size)(const VirtualQWaveDecoder* self);
	bool (*isSequential)(const VirtualQWaveDecoder* self);
	long long (*bytesAvailable)(const VirtualQWaveDecoder* self);
	bool (*atEnd)(const VirtualQWaveDecoder* self);
	bool (*reset)(VirtualQWaveDecoder* self);
	long long (*bytesToWrite)(const VirtualQWaveDecoder* self);
	bool (*canReadLine)(const VirtualQWaveDecoder* self);
	bool (*waitForReadyRead)(VirtualQWaveDecoder* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQWaveDecoder* self, int msecs);
	long long (*readLineData)(VirtualQWaveDecoder* self, char* data, long long maxlen);
	long long (*skipData)(VirtualQWaveDecoder* self, long long maxSize);
	bool (*event)(VirtualQWaveDecoder* self, QEvent* event);
	bool (*eventFilter)(VirtualQWaveDecoder* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQWaveDecoder* self, QTimerEvent* event);
	void (*childEvent)(VirtualQWaveDecoder* self, QChildEvent* event);
	void (*customEvent)(VirtualQWaveDecoder* self, QEvent* event);
	void (*connectNotify)(VirtualQWaveDecoder* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQWaveDecoder* self, QMetaMethod* signal);
}QWaveDecoder_VTable;

const QWaveDecoder_VTable* QWaveDecoder_vtbl(const VirtualQWaveDecoder* self);
void* QWaveDecoder_vdata(const VirtualQWaveDecoder* self);
void QWaveDecoder_setVdata(VirtualQWaveDecoder* self, void* vdata);

VirtualQWaveDecoder* QWaveDecoder_new(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device);
VirtualQWaveDecoder* QWaveDecoder_new2(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, QAudioFormat* format);
VirtualQWaveDecoder* QWaveDecoder_new3(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, QObject* parent);
VirtualQWaveDecoder* QWaveDecoder_new4(const QWaveDecoder_VTable* vtbl, void* vdata, QIODevice* device, QAudioFormat* format, QObject* parent);

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
void QWaveDecoder_connect_formatKnown(VirtualQWaveDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QWaveDecoder_parsingError(QWaveDecoder* self);
void QWaveDecoder_connect_parsingError(VirtualQWaveDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct miqt_string QWaveDecoder_tr2(const char* s, const char* c);
struct miqt_string QWaveDecoder_tr3(const char* s, const char* c, int n);

QMetaObject* QWaveDecoder_virtualbase_metaObject(const VirtualQWaveDecoder* self);
void* QWaveDecoder_virtualbase_metacast(VirtualQWaveDecoder* self, const char* param1);
int QWaveDecoder_virtualbase_metacall(VirtualQWaveDecoder* self, int param1, int param2, void** param3);
bool QWaveDecoder_virtualbase_open(VirtualQWaveDecoder* self, int mode);
void QWaveDecoder_virtualbase_close(VirtualQWaveDecoder* self);
bool QWaveDecoder_virtualbase_seek(VirtualQWaveDecoder* self, long long pos);
long long QWaveDecoder_virtualbase_pos(const VirtualQWaveDecoder* self);
long long QWaveDecoder_virtualbase_size(const VirtualQWaveDecoder* self);
bool QWaveDecoder_virtualbase_isSequential(const VirtualQWaveDecoder* self);
long long QWaveDecoder_virtualbase_bytesAvailable(const VirtualQWaveDecoder* self);
bool QWaveDecoder_virtualbase_atEnd(const VirtualQWaveDecoder* self);
bool QWaveDecoder_virtualbase_reset(VirtualQWaveDecoder* self);
long long QWaveDecoder_virtualbase_bytesToWrite(const VirtualQWaveDecoder* self);
bool QWaveDecoder_virtualbase_canReadLine(const VirtualQWaveDecoder* self);
bool QWaveDecoder_virtualbase_waitForReadyRead(VirtualQWaveDecoder* self, int msecs);
bool QWaveDecoder_virtualbase_waitForBytesWritten(VirtualQWaveDecoder* self, int msecs);
long long QWaveDecoder_virtualbase_readLineData(VirtualQWaveDecoder* self, char* data, long long maxlen);
long long QWaveDecoder_virtualbase_skipData(VirtualQWaveDecoder* self, long long maxSize);
bool QWaveDecoder_virtualbase_event(VirtualQWaveDecoder* self, QEvent* event);
bool QWaveDecoder_virtualbase_eventFilter(VirtualQWaveDecoder* self, QObject* watched, QEvent* event);
void QWaveDecoder_virtualbase_timerEvent(VirtualQWaveDecoder* self, QTimerEvent* event);
void QWaveDecoder_virtualbase_childEvent(VirtualQWaveDecoder* self, QChildEvent* event);
void QWaveDecoder_virtualbase_customEvent(VirtualQWaveDecoder* self, QEvent* event);
void QWaveDecoder_virtualbase_connectNotify(VirtualQWaveDecoder* self, QMetaMethod* signal);
void QWaveDecoder_virtualbase_disconnectNotify(VirtualQWaveDecoder* self, QMetaMethod* signal);

void QWaveDecoder_protectedbase_setOpenMode(VirtualQWaveDecoder* self, int openMode);
void QWaveDecoder_protectedbase_setErrorString(VirtualQWaveDecoder* self, struct miqt_string errorString);
QObject* QWaveDecoder_protectedbase_sender(const VirtualQWaveDecoder* self);
int QWaveDecoder_protectedbase_senderSignalIndex(const VirtualQWaveDecoder* self);
int QWaveDecoder_protectedbase_receivers(const VirtualQWaveDecoder* self, const char* signal);
bool QWaveDecoder_protectedbase_isSignalConnected(const VirtualQWaveDecoder* self, QMetaMethod* signal);

const QMetaObject* QWaveDecoder_staticMetaObject();
void QWaveDecoder_delete(QWaveDecoder* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
