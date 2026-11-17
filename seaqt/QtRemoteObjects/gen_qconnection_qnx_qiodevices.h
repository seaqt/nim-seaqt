#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QCONNECTION_QNX_QIODEVICES_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QCONNECTION_QNX_QIODEVICES_H

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
class QIODevice;
class QIODeviceBase;
class QIOQnxSource;
class QMetaMethod;
class QMetaObject;
class QObject;
class QQnxNativeIo;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QIODeviceBase QIODeviceBase;
typedef struct QIOQnxSource QIOQnxSource;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQnxNativeIo QQnxNativeIo;
typedef struct QTimerEvent QTimerEvent;
#endif

typedef struct VirtualQQnxNativeIo VirtualQQnxNativeIo;
typedef struct QQnxNativeIo_VTable{
	void (*destructor)(VirtualQQnxNativeIo* self);
	QMetaObject* (*metaObject)(const VirtualQQnxNativeIo* self);
	void* (*metacast)(VirtualQQnxNativeIo* self, const char* param1);
	int (*metacall)(VirtualQQnxNativeIo* self, int param1, int param2, void** param3);
	bool (*isSequential)(const VirtualQQnxNativeIo* self);
	long long (*bytesAvailable)(const VirtualQQnxNativeIo* self);
	long long (*bytesToWrite)(const VirtualQQnxNativeIo* self);
	bool (*open)(VirtualQQnxNativeIo* self, int openMode);
	void (*close)(VirtualQQnxNativeIo* self);
	bool (*waitForBytesWritten)(VirtualQQnxNativeIo* self, int msecs);
	bool (*waitForReadyRead)(VirtualQQnxNativeIo* self, int msecs);
	long long (*readData)(VirtualQQnxNativeIo* self, char* param1, long long param2);
	long long (*writeData)(VirtualQQnxNativeIo* self, const char* param1, long long param2);
	long long (*pos)(const VirtualQQnxNativeIo* self);
	long long (*size)(const VirtualQQnxNativeIo* self);
	bool (*seek)(VirtualQQnxNativeIo* self, long long pos);
	bool (*atEnd)(const VirtualQQnxNativeIo* self);
	bool (*reset)(VirtualQQnxNativeIo* self);
	bool (*canReadLine)(const VirtualQQnxNativeIo* self);
	long long (*readLineData)(VirtualQQnxNativeIo* self, char* data, long long maxlen);
	long long (*skipData)(VirtualQQnxNativeIo* self, long long maxSize);
	bool (*event)(VirtualQQnxNativeIo* self, QEvent* event);
	bool (*eventFilter)(VirtualQQnxNativeIo* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQQnxNativeIo* self, QTimerEvent* event);
	void (*childEvent)(VirtualQQnxNativeIo* self, QChildEvent* event);
	void (*customEvent)(VirtualQQnxNativeIo* self, QEvent* event);
	void (*connectNotify)(VirtualQQnxNativeIo* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQQnxNativeIo* self, QMetaMethod* signal);
}QQnxNativeIo_VTable;

void* QQnxNativeIo_vdata(VirtualQQnxNativeIo* self);
VirtualQQnxNativeIo* vdata_QQnxNativeIo(void* vdata);

VirtualQQnxNativeIo* QQnxNativeIo_new(const QQnxNativeIo_VTable* vtbl, size_t vdata);
VirtualQQnxNativeIo* QQnxNativeIo_new_parent(const QQnxNativeIo_VTable* vtbl, size_t vdata, QObject* parent);

void QQnxNativeIo_virtbase(QQnxNativeIo* src, QIODevice** outptr_QIODevice);
QMetaObject* QQnxNativeIo_metaObject(const QQnxNativeIo* self);
void* QQnxNativeIo_metacast(QQnxNativeIo* self, const char* param1);
int QQnxNativeIo_metacall(QQnxNativeIo* self, int param1, int param2, void** param3);
struct seaqt_string QQnxNativeIo_tr_s(const char* s);
bool QQnxNativeIo_connectToServer(QQnxNativeIo* self);
bool QQnxNativeIo_connectToServer_name(QQnxNativeIo* self, struct seaqt_string name);
void QQnxNativeIo_disconnectFromServer(QQnxNativeIo* self);
void QQnxNativeIo_setServerName(QQnxNativeIo* self, struct seaqt_string name);
struct seaqt_string QQnxNativeIo_serverName(const QQnxNativeIo* self);
void QQnxNativeIo_abort(QQnxNativeIo* self);
bool QQnxNativeIo_isSequential(const QQnxNativeIo* self);
long long QQnxNativeIo_bytesAvailable(const QQnxNativeIo* self);
long long QQnxNativeIo_bytesToWrite(const QQnxNativeIo* self);
bool QQnxNativeIo_open(QQnxNativeIo* self, int openMode);
void QQnxNativeIo_close(QQnxNativeIo* self);
int QQnxNativeIo_error(const QQnxNativeIo* self);
bool QQnxNativeIo_flush(QQnxNativeIo* self);
bool QQnxNativeIo_isValid(const QQnxNativeIo* self);
int QQnxNativeIo_state(const QQnxNativeIo* self);
bool QQnxNativeIo_waitForBytesWritten(QQnxNativeIo* self, int msecs);
bool QQnxNativeIo_waitForConnected(QQnxNativeIo* self);
bool QQnxNativeIo_waitForDisconnected(QQnxNativeIo* self);
bool QQnxNativeIo_waitForReadyRead(QQnxNativeIo* self, int msecs);
void QQnxNativeIo_connected(QQnxNativeIo* self);
void QQnxNativeIo_connect_connected(QQnxNativeIo* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQnxNativeIo_disconnected(QQnxNativeIo* self);
void QQnxNativeIo_connect_disconnected(QQnxNativeIo* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QQnxNativeIo_error_socketError(QQnxNativeIo* self, int socketError);
void QQnxNativeIo_connect_error_socketError(QQnxNativeIo* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QQnxNativeIo_stateChanged(QQnxNativeIo* self, int socketState);
void QQnxNativeIo_connect_stateChanged(QQnxNativeIo* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
long long QQnxNativeIo_readData(QQnxNativeIo* self, char* param1, long long param2);
long long QQnxNativeIo_writeData(QQnxNativeIo* self, const char* param1, long long param2);
struct seaqt_string QQnxNativeIo_tr_s_c(const char* s, const char* c);
struct seaqt_string QQnxNativeIo_tr_s_c_n(const char* s, const char* c, int n);
bool QQnxNativeIo_connectToServer_openMode(QQnxNativeIo* self, int openMode);
bool QQnxNativeIo_connectToServer_name_openMode(QQnxNativeIo* self, struct seaqt_string name, int openMode);
bool QQnxNativeIo_waitForConnected_msecs(QQnxNativeIo* self, int msecs);
bool QQnxNativeIo_waitForDisconnected_msecs(QQnxNativeIo* self, int msecs);

QMetaObject* QQnxNativeIo_virtualbase_metaObject(const VirtualQQnxNativeIo* self);
void* QQnxNativeIo_virtualbase_metacast(VirtualQQnxNativeIo* self, const char* param1);
int QQnxNativeIo_virtualbase_metacall(VirtualQQnxNativeIo* self, int param1, int param2, void** param3);
bool QQnxNativeIo_virtualbase_isSequential(const VirtualQQnxNativeIo* self);
long long QQnxNativeIo_virtualbase_bytesAvailable(const VirtualQQnxNativeIo* self);
long long QQnxNativeIo_virtualbase_bytesToWrite(const VirtualQQnxNativeIo* self);
bool QQnxNativeIo_virtualbase_open(VirtualQQnxNativeIo* self, int openMode);
void QQnxNativeIo_virtualbase_close(VirtualQQnxNativeIo* self);
bool QQnxNativeIo_virtualbase_waitForBytesWritten(VirtualQQnxNativeIo* self, int msecs);
bool QQnxNativeIo_virtualbase_waitForReadyRead(VirtualQQnxNativeIo* self, int msecs);
long long QQnxNativeIo_virtualbase_readData(VirtualQQnxNativeIo* self, char* param1, long long param2);
long long QQnxNativeIo_virtualbase_writeData(VirtualQQnxNativeIo* self, const char* param1, long long param2);
long long QQnxNativeIo_virtualbase_pos(const VirtualQQnxNativeIo* self);
long long QQnxNativeIo_virtualbase_size(const VirtualQQnxNativeIo* self);
bool QQnxNativeIo_virtualbase_seek(VirtualQQnxNativeIo* self, long long pos);
bool QQnxNativeIo_virtualbase_atEnd(const VirtualQQnxNativeIo* self);
bool QQnxNativeIo_virtualbase_reset(VirtualQQnxNativeIo* self);
bool QQnxNativeIo_virtualbase_canReadLine(const VirtualQQnxNativeIo* self);
long long QQnxNativeIo_virtualbase_readLineData(VirtualQQnxNativeIo* self, char* data, long long maxlen);
long long QQnxNativeIo_virtualbase_skipData(VirtualQQnxNativeIo* self, long long maxSize);
bool QQnxNativeIo_virtualbase_event(VirtualQQnxNativeIo* self, QEvent* event);
bool QQnxNativeIo_virtualbase_eventFilter(VirtualQQnxNativeIo* self, QObject* watched, QEvent* event);
void QQnxNativeIo_virtualbase_timerEvent(VirtualQQnxNativeIo* self, QTimerEvent* event);
void QQnxNativeIo_virtualbase_childEvent(VirtualQQnxNativeIo* self, QChildEvent* event);
void QQnxNativeIo_virtualbase_customEvent(VirtualQQnxNativeIo* self, QEvent* event);
void QQnxNativeIo_virtualbase_connectNotify(VirtualQQnxNativeIo* self, QMetaMethod* signal);
void QQnxNativeIo_virtualbase_disconnectNotify(VirtualQQnxNativeIo* self, QMetaMethod* signal);

void QQnxNativeIo_protectedbase_setOpenMode(VirtualQQnxNativeIo* self, int openMode);
void QQnxNativeIo_protectedbase_setErrorString(VirtualQQnxNativeIo* self, struct seaqt_string errorString);
QObject* QQnxNativeIo_protectedbase_sender(const VirtualQQnxNativeIo* self);
int QQnxNativeIo_protectedbase_senderSignalIndex(const VirtualQQnxNativeIo* self);
int QQnxNativeIo_protectedbase_receivers(const VirtualQQnxNativeIo* self, const char* signal);
bool QQnxNativeIo_protectedbase_isSignalConnected(const VirtualQQnxNativeIo* self, QMetaMethod* signal);

const QMetaObject* QQnxNativeIo_staticMetaObject();
void QQnxNativeIo_delete(QQnxNativeIo* self);

typedef struct VirtualQIOQnxSource VirtualQIOQnxSource;
typedef struct QIOQnxSource_VTable{
	void (*destructor)(VirtualQIOQnxSource* self);
	QMetaObject* (*metaObject)(const VirtualQIOQnxSource* self);
	void* (*metacast)(VirtualQIOQnxSource* self, const char* param1);
	int (*metacall)(VirtualQIOQnxSource* self, int param1, int param2, void** param3);
	bool (*isSequential)(const VirtualQIOQnxSource* self);
	long long (*bytesAvailable)(const VirtualQIOQnxSource* self);
	long long (*bytesToWrite)(const VirtualQIOQnxSource* self);
	void (*close)(VirtualQIOQnxSource* self);
	bool (*waitForBytesWritten)(VirtualQIOQnxSource* self, int msecs);
	bool (*waitForReadyRead)(VirtualQIOQnxSource* self, int msecs);
	long long (*readData)(VirtualQIOQnxSource* self, char* param1, long long param2);
	long long (*writeData)(VirtualQIOQnxSource* self, const char* param1, long long param2);
	bool (*open)(VirtualQIOQnxSource* self, int openMode);
	long long (*pos)(const VirtualQIOQnxSource* self);
	long long (*size)(const VirtualQIOQnxSource* self);
	bool (*seek)(VirtualQIOQnxSource* self, long long pos);
	bool (*atEnd)(const VirtualQIOQnxSource* self);
	bool (*reset)(VirtualQIOQnxSource* self);
	bool (*canReadLine)(const VirtualQIOQnxSource* self);
	long long (*readLineData)(VirtualQIOQnxSource* self, char* data, long long maxlen);
	long long (*skipData)(VirtualQIOQnxSource* self, long long maxSize);
	bool (*event)(VirtualQIOQnxSource* self, QEvent* event);
	bool (*eventFilter)(VirtualQIOQnxSource* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQIOQnxSource* self, QTimerEvent* event);
	void (*childEvent)(VirtualQIOQnxSource* self, QChildEvent* event);
	void (*customEvent)(VirtualQIOQnxSource* self, QEvent* event);
	void (*connectNotify)(VirtualQIOQnxSource* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQIOQnxSource* self, QMetaMethod* signal);
}QIOQnxSource_VTable;

void* QIOQnxSource_vdata(VirtualQIOQnxSource* self);
VirtualQIOQnxSource* vdata_QIOQnxSource(void* vdata);

VirtualQIOQnxSource* QIOQnxSource_new_rcvid(const QIOQnxSource_VTable* vtbl, size_t vdata, int rcvid);
VirtualQIOQnxSource* QIOQnxSource_new_rcvid_parent(const QIOQnxSource_VTable* vtbl, size_t vdata, int rcvid, QObject* parent);

void QIOQnxSource_virtbase(QIOQnxSource* src, QIODevice** outptr_QIODevice);
QMetaObject* QIOQnxSource_metaObject(const QIOQnxSource* self);
void* QIOQnxSource_metacast(QIOQnxSource* self, const char* param1);
int QIOQnxSource_metacall(QIOQnxSource* self, int param1, int param2, void** param3);
struct seaqt_string QIOQnxSource_tr_s(const char* s);
bool QIOQnxSource_isSequential(const QIOQnxSource* self);
long long QIOQnxSource_bytesAvailable(const QIOQnxSource* self);
long long QIOQnxSource_bytesToWrite(const QIOQnxSource* self);
void QIOQnxSource_close(QIOQnxSource* self);
int QIOQnxSource_error(const QIOQnxSource* self);
bool QIOQnxSource_isValid(const QIOQnxSource* self);
int QIOQnxSource_state(const QIOQnxSource* self);
bool QIOQnxSource_waitForBytesWritten(QIOQnxSource* self, int msecs);
bool QIOQnxSource_waitForConnected(QIOQnxSource* self);
bool QIOQnxSource_waitForDisconnected(QIOQnxSource* self);
bool QIOQnxSource_waitForReadyRead(QIOQnxSource* self, int msecs);
void QIOQnxSource_disconnected(QIOQnxSource* self);
void QIOQnxSource_connect_disconnected(QIOQnxSource* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QIOQnxSource_error_socketError(QIOQnxSource* self, int socketError);
void QIOQnxSource_connect_error_socketError(QIOQnxSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QIOQnxSource_stateChanged(QIOQnxSource* self, int socketState);
void QIOQnxSource_connect_stateChanged(QIOQnxSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
long long QIOQnxSource_readData(QIOQnxSource* self, char* param1, long long param2);
long long QIOQnxSource_writeData(QIOQnxSource* self, const char* param1, long long param2);
bool QIOQnxSource_open(QIOQnxSource* self, int openMode);
struct seaqt_string QIOQnxSource_tr_s_c(const char* s, const char* c);
struct seaqt_string QIOQnxSource_tr_s_c_n(const char* s, const char* c, int n);
bool QIOQnxSource_waitForConnected_msecs(QIOQnxSource* self, int msecs);
bool QIOQnxSource_waitForDisconnected_msecs(QIOQnxSource* self, int msecs);

QMetaObject* QIOQnxSource_virtualbase_metaObject(const VirtualQIOQnxSource* self);
void* QIOQnxSource_virtualbase_metacast(VirtualQIOQnxSource* self, const char* param1);
int QIOQnxSource_virtualbase_metacall(VirtualQIOQnxSource* self, int param1, int param2, void** param3);
bool QIOQnxSource_virtualbase_isSequential(const VirtualQIOQnxSource* self);
long long QIOQnxSource_virtualbase_bytesAvailable(const VirtualQIOQnxSource* self);
long long QIOQnxSource_virtualbase_bytesToWrite(const VirtualQIOQnxSource* self);
void QIOQnxSource_virtualbase_close(VirtualQIOQnxSource* self);
bool QIOQnxSource_virtualbase_waitForBytesWritten(VirtualQIOQnxSource* self, int msecs);
bool QIOQnxSource_virtualbase_waitForReadyRead(VirtualQIOQnxSource* self, int msecs);
long long QIOQnxSource_virtualbase_readData(VirtualQIOQnxSource* self, char* param1, long long param2);
long long QIOQnxSource_virtualbase_writeData(VirtualQIOQnxSource* self, const char* param1, long long param2);
bool QIOQnxSource_virtualbase_open(VirtualQIOQnxSource* self, int openMode);
long long QIOQnxSource_virtualbase_pos(const VirtualQIOQnxSource* self);
long long QIOQnxSource_virtualbase_size(const VirtualQIOQnxSource* self);
bool QIOQnxSource_virtualbase_seek(VirtualQIOQnxSource* self, long long pos);
bool QIOQnxSource_virtualbase_atEnd(const VirtualQIOQnxSource* self);
bool QIOQnxSource_virtualbase_reset(VirtualQIOQnxSource* self);
bool QIOQnxSource_virtualbase_canReadLine(const VirtualQIOQnxSource* self);
long long QIOQnxSource_virtualbase_readLineData(VirtualQIOQnxSource* self, char* data, long long maxlen);
long long QIOQnxSource_virtualbase_skipData(VirtualQIOQnxSource* self, long long maxSize);
bool QIOQnxSource_virtualbase_event(VirtualQIOQnxSource* self, QEvent* event);
bool QIOQnxSource_virtualbase_eventFilter(VirtualQIOQnxSource* self, QObject* watched, QEvent* event);
void QIOQnxSource_virtualbase_timerEvent(VirtualQIOQnxSource* self, QTimerEvent* event);
void QIOQnxSource_virtualbase_childEvent(VirtualQIOQnxSource* self, QChildEvent* event);
void QIOQnxSource_virtualbase_customEvent(VirtualQIOQnxSource* self, QEvent* event);
void QIOQnxSource_virtualbase_connectNotify(VirtualQIOQnxSource* self, QMetaMethod* signal);
void QIOQnxSource_virtualbase_disconnectNotify(VirtualQIOQnxSource* self, QMetaMethod* signal);

void QIOQnxSource_protectedbase_setOpenMode(VirtualQIOQnxSource* self, int openMode);
void QIOQnxSource_protectedbase_setErrorString(VirtualQIOQnxSource* self, struct seaqt_string errorString);
QObject* QIOQnxSource_protectedbase_sender(const VirtualQIOQnxSource* self);
int QIOQnxSource_protectedbase_senderSignalIndex(const VirtualQIOQnxSource* self);
int QIOQnxSource_protectedbase_receivers(const VirtualQIOQnxSource* self, const char* signal);
bool QIOQnxSource_protectedbase_isSignalConnected(const VirtualQIOQnxSource* self, QMetaMethod* signal);

const QMetaObject* QIOQnxSource_staticMetaObject();
void QIOQnxSource_delete(QIOQnxSource* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
