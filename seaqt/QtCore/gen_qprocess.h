#pragma once
#ifndef SEAQT_QTCORE_GEN_QPROCESS_H
#define SEAQT_QTCORE_GEN_QPROCESS_H

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
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QProcess;
class QProcessEnvironment;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QProcess QProcess;
typedef struct QProcessEnvironment QProcessEnvironment;
typedef struct QTimerEvent QTimerEvent;
#endif

QProcessEnvironment* QProcessEnvironment_new();
QProcessEnvironment* QProcessEnvironment_new2(QProcessEnvironment* other);

void QProcessEnvironment_operatorAssign(QProcessEnvironment* self, QProcessEnvironment* other);
void QProcessEnvironment_swap(QProcessEnvironment* self, QProcessEnvironment* other);
bool QProcessEnvironment_operatorEqual(const QProcessEnvironment* self, QProcessEnvironment* other);
bool QProcessEnvironment_operatorNotEqual(const QProcessEnvironment* self, QProcessEnvironment* other);
bool QProcessEnvironment_isEmpty(const QProcessEnvironment* self);
void QProcessEnvironment_clear(QProcessEnvironment* self);
bool QProcessEnvironment_contains(const QProcessEnvironment* self, struct miqt_string name);
void QProcessEnvironment_insert(QProcessEnvironment* self, struct miqt_string name, struct miqt_string value);
void QProcessEnvironment_remove(QProcessEnvironment* self, struct miqt_string name);
struct miqt_string QProcessEnvironment_value(const QProcessEnvironment* self, struct miqt_string name);
struct miqt_array /* of struct miqt_string */  QProcessEnvironment_toStringList(const QProcessEnvironment* self);
struct miqt_array /* of struct miqt_string */  QProcessEnvironment_keys(const QProcessEnvironment* self);
void QProcessEnvironment_insertWithQProcessEnvironment(QProcessEnvironment* self, QProcessEnvironment* e);
QProcessEnvironment* QProcessEnvironment_systemEnvironment();
struct miqt_string QProcessEnvironment_value2(const QProcessEnvironment* self, struct miqt_string name, struct miqt_string defaultValue);

void QProcessEnvironment_delete(QProcessEnvironment* self);

typedef struct VirtualQProcess VirtualQProcess;
typedef struct QProcess_VTable{
	void (*destructor)(VirtualQProcess* self);
	QMetaObject* (*metaObject)(const VirtualQProcess* self);
	void* (*metacast)(VirtualQProcess* self, const char* param1);
	int (*metacall)(VirtualQProcess* self, int param1, int param2, void** param3);
	bool (*open)(VirtualQProcess* self, int mode);
	bool (*waitForReadyRead)(VirtualQProcess* self, int msecs);
	bool (*waitForBytesWritten)(VirtualQProcess* self, int msecs);
	long long (*bytesAvailable)(const VirtualQProcess* self);
	long long (*bytesToWrite)(const VirtualQProcess* self);
	bool (*isSequential)(const VirtualQProcess* self);
	bool (*canReadLine)(const VirtualQProcess* self);
	void (*close)(VirtualQProcess* self);
	bool (*atEnd)(const VirtualQProcess* self);
	void (*setupChildProcess)(VirtualQProcess* self);
	long long (*readData)(VirtualQProcess* self, char* data, long long maxlen);
	long long (*writeData)(VirtualQProcess* self, const char* data, long long len);
	long long (*pos)(const VirtualQProcess* self);
	long long (*size)(const VirtualQProcess* self);
	bool (*seek)(VirtualQProcess* self, long long pos);
	bool (*reset)(VirtualQProcess* self);
	long long (*readLineData)(VirtualQProcess* self, char* data, long long maxlen);
	bool (*event)(VirtualQProcess* self, QEvent* event);
	bool (*eventFilter)(VirtualQProcess* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQProcess* self, QTimerEvent* event);
	void (*childEvent)(VirtualQProcess* self, QChildEvent* event);
	void (*customEvent)(VirtualQProcess* self, QEvent* event);
	void (*connectNotify)(VirtualQProcess* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQProcess* self, QMetaMethod* signal);
}QProcess_VTable;

const QProcess_VTable* QProcess_vtbl(const VirtualQProcess* self);
void* QProcess_vdata(const VirtualQProcess* self);
void QProcess_setVdata(VirtualQProcess* self, void* vdata);

VirtualQProcess* QProcess_new(const QProcess_VTable* vtbl, void* vdata);
VirtualQProcess* QProcess_new2(const QProcess_VTable* vtbl, void* vdata, QObject* parent);

void QProcess_virtbase(QProcess* src, QIODevice** outptr_QIODevice);
QMetaObject* QProcess_metaObject(const QProcess* self);
void* QProcess_metacast(QProcess* self, const char* param1);
int QProcess_metacall(QProcess* self, int param1, int param2, void** param3);
struct miqt_string QProcess_tr(const char* s);
struct miqt_string QProcess_trUtf8(const char* s);
void QProcess_start(QProcess* self, struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments);
void QProcess_startWithCommand(QProcess* self, struct miqt_string command);
void QProcess_start2(QProcess* self);
bool QProcess_startDetached(QProcess* self);
bool QProcess_open(QProcess* self, int mode);
struct miqt_string QProcess_program(const QProcess* self);
void QProcess_setProgram(QProcess* self, struct miqt_string program);
struct miqt_array /* of struct miqt_string */  QProcess_arguments(const QProcess* self);
void QProcess_setArguments(QProcess* self, struct miqt_array /* of struct miqt_string */  arguments);
int QProcess_readChannelMode(const QProcess* self);
void QProcess_setReadChannelMode(QProcess* self, int mode);
int QProcess_processChannelMode(const QProcess* self);
void QProcess_setProcessChannelMode(QProcess* self, int mode);
int QProcess_inputChannelMode(const QProcess* self);
void QProcess_setInputChannelMode(QProcess* self, int mode);
int QProcess_readChannel(const QProcess* self);
void QProcess_setReadChannel(QProcess* self, int channel);
void QProcess_closeReadChannel(QProcess* self, int channel);
void QProcess_closeWriteChannel(QProcess* self);
void QProcess_setStandardInputFile(QProcess* self, struct miqt_string fileName);
void QProcess_setStandardOutputFile(QProcess* self, struct miqt_string fileName);
void QProcess_setStandardErrorFile(QProcess* self, struct miqt_string fileName);
void QProcess_setStandardOutputProcess(QProcess* self, QProcess* destination);
struct miqt_string QProcess_workingDirectory(const QProcess* self);
void QProcess_setWorkingDirectory(QProcess* self, struct miqt_string dir);
void QProcess_setEnvironment(QProcess* self, struct miqt_array /* of struct miqt_string */  environment);
struct miqt_array /* of struct miqt_string */  QProcess_environment(const QProcess* self);
void QProcess_setProcessEnvironment(QProcess* self, QProcessEnvironment* environment);
QProcessEnvironment* QProcess_processEnvironment(const QProcess* self);
int QProcess_error(const QProcess* self);
int QProcess_state(const QProcess* self);
long long QProcess_pid(const QProcess* self);
long long QProcess_processId(const QProcess* self);
bool QProcess_waitForStarted(QProcess* self);
bool QProcess_waitForReadyRead(QProcess* self, int msecs);
bool QProcess_waitForBytesWritten(QProcess* self, int msecs);
bool QProcess_waitForFinished(QProcess* self);
struct miqt_string QProcess_readAllStandardOutput(QProcess* self);
struct miqt_string QProcess_readAllStandardError(QProcess* self);
int QProcess_exitCode(const QProcess* self);
int QProcess_exitStatus(const QProcess* self);
long long QProcess_bytesAvailable(const QProcess* self);
long long QProcess_bytesToWrite(const QProcess* self);
bool QProcess_isSequential(const QProcess* self);
bool QProcess_canReadLine(const QProcess* self);
void QProcess_close(QProcess* self);
bool QProcess_atEnd(const QProcess* self);
int QProcess_execute(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments);
int QProcess_executeWithCommand(struct miqt_string command);
bool QProcess_startDetached2(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, struct miqt_string workingDirectory);
bool QProcess_startDetached3(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments);
bool QProcess_startDetachedWithCommand(struct miqt_string command);
struct miqt_array /* of struct miqt_string */  QProcess_systemEnvironment();
struct miqt_string QProcess_nullDevice();
void QProcess_terminate(QProcess* self);
void QProcess_kill(QProcess* self);
void QProcess_finished(QProcess* self, int exitCode);
void QProcess_connect_finished(VirtualQProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QProcess_finished2(QProcess* self, int exitCode, int exitStatus);
void QProcess_connect_finished2(VirtualQProcess* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QProcess_errorWithError(QProcess* self, int error);
void QProcess_connect_errorWithError(VirtualQProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QProcess_errorOccurred(QProcess* self, int error);
void QProcess_connect_errorOccurred(VirtualQProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QProcess_setupChildProcess(QProcess* self);
long long QProcess_readData(QProcess* self, char* data, long long maxlen);
long long QProcess_writeData(QProcess* self, const char* data, long long len);
struct miqt_string QProcess_tr2(const char* s, const char* c);
struct miqt_string QProcess_tr3(const char* s, const char* c, int n);
struct miqt_string QProcess_trUtf82(const char* s, const char* c);
struct miqt_string QProcess_trUtf83(const char* s, const char* c, int n);
void QProcess_start3(QProcess* self, struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, int mode);
void QProcess_start22(QProcess* self, struct miqt_string command, int mode);
void QProcess_start1(QProcess* self, int mode);
bool QProcess_startDetached1(QProcess* self, long long* pid);
void QProcess_setStandardOutputFile2(QProcess* self, struct miqt_string fileName, int mode);
void QProcess_setStandardErrorFile2(QProcess* self, struct miqt_string fileName, int mode);
bool QProcess_waitForStarted1(QProcess* self, int msecs);
bool QProcess_waitForFinished1(QProcess* self, int msecs);
bool QProcess_startDetached4(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, struct miqt_string workingDirectory, long long* pid);

QMetaObject* QProcess_virtualbase_metaObject(const VirtualQProcess* self);
void* QProcess_virtualbase_metacast(VirtualQProcess* self, const char* param1);
int QProcess_virtualbase_metacall(VirtualQProcess* self, int param1, int param2, void** param3);
bool QProcess_virtualbase_open(VirtualQProcess* self, int mode);
bool QProcess_virtualbase_waitForReadyRead(VirtualQProcess* self, int msecs);
bool QProcess_virtualbase_waitForBytesWritten(VirtualQProcess* self, int msecs);
long long QProcess_virtualbase_bytesAvailable(const VirtualQProcess* self);
long long QProcess_virtualbase_bytesToWrite(const VirtualQProcess* self);
bool QProcess_virtualbase_isSequential(const VirtualQProcess* self);
bool QProcess_virtualbase_canReadLine(const VirtualQProcess* self);
void QProcess_virtualbase_close(VirtualQProcess* self);
bool QProcess_virtualbase_atEnd(const VirtualQProcess* self);
void QProcess_virtualbase_setupChildProcess(VirtualQProcess* self);
long long QProcess_virtualbase_readData(VirtualQProcess* self, char* data, long long maxlen);
long long QProcess_virtualbase_writeData(VirtualQProcess* self, const char* data, long long len);
long long QProcess_virtualbase_pos(const VirtualQProcess* self);
long long QProcess_virtualbase_size(const VirtualQProcess* self);
bool QProcess_virtualbase_seek(VirtualQProcess* self, long long pos);
bool QProcess_virtualbase_reset(VirtualQProcess* self);
long long QProcess_virtualbase_readLineData(VirtualQProcess* self, char* data, long long maxlen);
bool QProcess_virtualbase_event(VirtualQProcess* self, QEvent* event);
bool QProcess_virtualbase_eventFilter(VirtualQProcess* self, QObject* watched, QEvent* event);
void QProcess_virtualbase_timerEvent(VirtualQProcess* self, QTimerEvent* event);
void QProcess_virtualbase_childEvent(VirtualQProcess* self, QChildEvent* event);
void QProcess_virtualbase_customEvent(VirtualQProcess* self, QEvent* event);
void QProcess_virtualbase_connectNotify(VirtualQProcess* self, QMetaMethod* signal);
void QProcess_virtualbase_disconnectNotify(VirtualQProcess* self, QMetaMethod* signal);

void QProcess_protectedbase_setProcessState(VirtualQProcess* self, int state);
void QProcess_protectedbase_setOpenMode(VirtualQProcess* self, int openMode);
void QProcess_protectedbase_setErrorString(VirtualQProcess* self, struct miqt_string errorString);
QObject* QProcess_protectedbase_sender(const VirtualQProcess* self);
int QProcess_protectedbase_senderSignalIndex(const VirtualQProcess* self);
int QProcess_protectedbase_receivers(const VirtualQProcess* self, const char* signal);
bool QProcess_protectedbase_isSignalConnected(const VirtualQProcess* self, QMetaMethod* signal);

const QMetaObject* QProcess_staticMetaObject();
void QProcess_delete(QProcess* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
