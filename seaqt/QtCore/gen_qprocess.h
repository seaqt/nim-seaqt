#pragma once
#ifndef SEAQT_QTCORE_GEN_QPROCESS_H
#define SEAQT_QTCORE_GEN_QPROCESS_H

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
QProcessEnvironment* QProcessEnvironment_new_from(QProcessEnvironment* from);

void QProcessEnvironment_operatorAssign(QProcessEnvironment* self, QProcessEnvironment* from);
void QProcessEnvironment_swap(QProcessEnvironment* self, QProcessEnvironment* other);
bool QProcessEnvironment_operatorEqual(const QProcessEnvironment* self, QProcessEnvironment* other);
bool QProcessEnvironment_operatorNotEqual(const QProcessEnvironment* self, QProcessEnvironment* other);
bool QProcessEnvironment_isEmpty(const QProcessEnvironment* self);
void QProcessEnvironment_clear(QProcessEnvironment* self);
bool QProcessEnvironment_contains(const QProcessEnvironment* self, struct seaqt_string name);
void QProcessEnvironment_insert_name_value(QProcessEnvironment* self, struct seaqt_string name, struct seaqt_string value);
void QProcessEnvironment_remove(QProcessEnvironment* self, struct seaqt_string name);
struct seaqt_string QProcessEnvironment_value_name(const QProcessEnvironment* self, struct seaqt_string name);
struct seaqt_array /* of struct seaqt_string */  QProcessEnvironment_toStringList(const QProcessEnvironment* self);
struct seaqt_array /* of struct seaqt_string */  QProcessEnvironment_keys(const QProcessEnvironment* self);
void QProcessEnvironment_insert_e(QProcessEnvironment* self, QProcessEnvironment* e);
QProcessEnvironment* QProcessEnvironment_systemEnvironment();
struct seaqt_string QProcessEnvironment_value_name_defaultValue(const QProcessEnvironment* self, struct seaqt_string name, struct seaqt_string defaultValue);

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

void* QProcess_vdata(VirtualQProcess* self);
VirtualQProcess* vdata_QProcess(void* vdata);

VirtualQProcess* QProcess_new(const QProcess_VTable* vtbl, size_t vdata);
VirtualQProcess* QProcess_new_parent(const QProcess_VTable* vtbl, size_t vdata, QObject* parent);

void QProcess_virtbase(QProcess* src, QIODevice** outptr_QIODevice);
QMetaObject* QProcess_metaObject(const QProcess* self);
void* QProcess_metacast(QProcess* self, const char* param1);
int QProcess_metacall(QProcess* self, int param1, int param2, void** param3);
struct seaqt_string QProcess_tr_s(const char* s);
struct seaqt_string QProcess_trUtf8_s(const char* s);
void QProcess_start_program_arguments(QProcess* self, struct seaqt_string program, struct seaqt_array /* of struct seaqt_string */  arguments);
void QProcess_start_command(QProcess* self, struct seaqt_string command);
void QProcess_start(QProcess* self);
bool QProcess_startDetached(QProcess* self);
bool QProcess_open(QProcess* self, int mode);
struct seaqt_string QProcess_program(const QProcess* self);
void QProcess_setProgram(QProcess* self, struct seaqt_string program);
struct seaqt_array /* of struct seaqt_string */  QProcess_arguments(const QProcess* self);
void QProcess_setArguments(QProcess* self, struct seaqt_array /* of struct seaqt_string */  arguments);
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
void QProcess_setStandardInputFile(QProcess* self, struct seaqt_string fileName);
void QProcess_setStandardOutputFile_fileName(QProcess* self, struct seaqt_string fileName);
void QProcess_setStandardErrorFile_fileName(QProcess* self, struct seaqt_string fileName);
void QProcess_setStandardOutputProcess(QProcess* self, QProcess* destination);
struct seaqt_string QProcess_workingDirectory(const QProcess* self);
void QProcess_setWorkingDirectory(QProcess* self, struct seaqt_string dir);
void QProcess_setEnvironment(QProcess* self, struct seaqt_array /* of struct seaqt_string */  environment);
struct seaqt_array /* of struct seaqt_string */  QProcess_environment(const QProcess* self);
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
struct seaqt_string QProcess_readAllStandardOutput(QProcess* self);
struct seaqt_string QProcess_readAllStandardError(QProcess* self);
int QProcess_exitCode(const QProcess* self);
int QProcess_exitStatus(const QProcess* self);
long long QProcess_bytesAvailable(const QProcess* self);
long long QProcess_bytesToWrite(const QProcess* self);
bool QProcess_isSequential(const QProcess* self);
bool QProcess_canReadLine(const QProcess* self);
void QProcess_close(QProcess* self);
bool QProcess_atEnd(const QProcess* self);
int QProcess_execute_program_arguments(struct seaqt_string program, struct seaqt_array /* of struct seaqt_string */  arguments);
int QProcess_execute_command(struct seaqt_string command);
bool QProcess_startDetached_program_arguments_workingDirectory(struct seaqt_string program, struct seaqt_array /* of struct seaqt_string */  arguments, struct seaqt_string workingDirectory);
bool QProcess_startDetached_program_arguments(struct seaqt_string program, struct seaqt_array /* of struct seaqt_string */  arguments);
bool QProcess_startDetached_command(struct seaqt_string command);
struct seaqt_array /* of struct seaqt_string */  QProcess_systemEnvironment();
struct seaqt_string QProcess_nullDevice();
void QProcess_terminate(QProcess* self);
void QProcess_kill(QProcess* self);
void QProcess_finished_exitCode(QProcess* self, int exitCode);
void QProcess_connect_finished_exitCode(QProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QProcess_finished_exitCode_exitStatus(QProcess* self, int exitCode, int exitStatus);
void QProcess_connect_finished_exitCode_exitStatus(QProcess* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t));
void QProcess_error_error(QProcess* self, int error);
void QProcess_connect_error_error(QProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QProcess_errorOccurred(QProcess* self, int error);
void QProcess_connect_errorOccurred(QProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QProcess_setupChildProcess(QProcess* self);
long long QProcess_readData(QProcess* self, char* data, long long maxlen);
long long QProcess_writeData(QProcess* self, const char* data, long long len);
struct seaqt_string QProcess_tr_s_c(const char* s, const char* c);
struct seaqt_string QProcess_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QProcess_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QProcess_trUtf8_s_c_n(const char* s, const char* c, int n);
void QProcess_start_program_arguments_mode(QProcess* self, struct seaqt_string program, struct seaqt_array /* of struct seaqt_string */  arguments, int mode);
void QProcess_start_command_mode(QProcess* self, struct seaqt_string command, int mode);
void QProcess_start_mode(QProcess* self, int mode);
bool QProcess_startDetached_pid(QProcess* self, long long* pid);
void QProcess_setStandardOutputFile_fileName_mode(QProcess* self, struct seaqt_string fileName, int mode);
void QProcess_setStandardErrorFile_fileName_mode(QProcess* self, struct seaqt_string fileName, int mode);
bool QProcess_waitForStarted_msecs(QProcess* self, int msecs);
bool QProcess_waitForFinished_msecs(QProcess* self, int msecs);
bool QProcess_startDetached_program_arguments_workingDirectory_pid(struct seaqt_string program, struct seaqt_array /* of struct seaqt_string */  arguments, struct seaqt_string workingDirectory, long long* pid);

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
void QProcess_protectedbase_setErrorString(VirtualQProcess* self, struct seaqt_string errorString);
QObject* QProcess_protectedbase_sender(const VirtualQProcess* self);
int QProcess_protectedbase_senderSignalIndex(const VirtualQProcess* self);
int QProcess_protectedbase_receivers(const VirtualQProcess* self, const char* signal);
bool QProcess_protectedbase_isSignalConnected(const VirtualQProcess* self, QMetaMethod* signal);

void QProcess_connect_started(QProcess* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QProcess_connect_stateChanged(QProcess* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t));
void QProcess_connect_readyReadStandardOutput(QProcess* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QProcess_connect_readyReadStandardError(QProcess* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));

const QMetaObject* QProcess_staticMetaObject();
void QProcess_delete(QProcess* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
