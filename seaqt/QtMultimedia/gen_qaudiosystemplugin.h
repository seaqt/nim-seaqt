#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOSYSTEMPLUGIN_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOSYSTEMPLUGIN_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt/libseaqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractAudioDeviceInfo;
class QAbstractAudioInput;
class QAbstractAudioOutput;
class QAudioSystemFactoryInterface;
class QAudioSystemPlugin;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAbstractAudioDeviceInfo QAbstractAudioDeviceInfo;
typedef struct QAbstractAudioInput QAbstractAudioInput;
typedef struct QAbstractAudioOutput QAbstractAudioOutput;
typedef struct QAudioSystemFactoryInterface QAudioSystemFactoryInterface;
typedef struct QAudioSystemPlugin QAudioSystemPlugin;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct miqt_array /* of struct miqt_string */  QAudioSystemFactoryInterface_availableDevices(const QAudioSystemFactoryInterface* self, int param1);
QAbstractAudioInput* QAudioSystemFactoryInterface_createInput(QAudioSystemFactoryInterface* self, struct miqt_string device);
QAbstractAudioOutput* QAudioSystemFactoryInterface_createOutput(QAudioSystemFactoryInterface* self, struct miqt_string device);
QAbstractAudioDeviceInfo* QAudioSystemFactoryInterface_createDeviceInfo(QAudioSystemFactoryInterface* self, struct miqt_string device, int mode);
void QAudioSystemFactoryInterface_operatorAssign(QAudioSystemFactoryInterface* self, QAudioSystemFactoryInterface* param1);

void QAudioSystemFactoryInterface_delete(QAudioSystemFactoryInterface* self);

typedef struct VirtualQAudioSystemPlugin VirtualQAudioSystemPlugin;
typedef struct QAudioSystemPlugin_VTable{
	void (*destructor)(VirtualQAudioSystemPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQAudioSystemPlugin* self);
	void* (*metacast)(VirtualQAudioSystemPlugin* self, const char* param1);
	int (*metacall)(VirtualQAudioSystemPlugin* self, int param1, int param2, void** param3);
	struct miqt_array /* of struct miqt_string */  (*availableDevices)(const VirtualQAudioSystemPlugin* self, int param1);
	QAbstractAudioInput* (*createInput)(VirtualQAudioSystemPlugin* self, struct miqt_string device);
	QAbstractAudioOutput* (*createOutput)(VirtualQAudioSystemPlugin* self, struct miqt_string device);
	QAbstractAudioDeviceInfo* (*createDeviceInfo)(VirtualQAudioSystemPlugin* self, struct miqt_string device, int mode);
	bool (*event)(VirtualQAudioSystemPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioSystemPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioSystemPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioSystemPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioSystemPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioSystemPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioSystemPlugin* self, QMetaMethod* signal);
}QAudioSystemPlugin_VTable;

const QAudioSystemPlugin_VTable* QAudioSystemPlugin_vtbl(const VirtualQAudioSystemPlugin* self);
void* QAudioSystemPlugin_vdata(const VirtualQAudioSystemPlugin* self);
void QAudioSystemPlugin_setVdata(VirtualQAudioSystemPlugin* self, void* vdata);

VirtualQAudioSystemPlugin* QAudioSystemPlugin_new(const QAudioSystemPlugin_VTable* vtbl, void* vdata);
VirtualQAudioSystemPlugin* QAudioSystemPlugin_new2(const QAudioSystemPlugin_VTable* vtbl, void* vdata, QObject* parent);

void QAudioSystemPlugin_virtbase(QAudioSystemPlugin* src, QObject** outptr_QObject, QAudioSystemFactoryInterface** outptr_QAudioSystemFactoryInterface);
QMetaObject* QAudioSystemPlugin_metaObject(const QAudioSystemPlugin* self);
void* QAudioSystemPlugin_metacast(QAudioSystemPlugin* self, const char* param1);
int QAudioSystemPlugin_metacall(QAudioSystemPlugin* self, int param1, int param2, void** param3);
struct miqt_string QAudioSystemPlugin_tr(const char* s);
struct miqt_string QAudioSystemPlugin_trUtf8(const char* s);
struct miqt_array /* of struct miqt_string */  QAudioSystemPlugin_availableDevices(const QAudioSystemPlugin* self, int param1);
QAbstractAudioInput* QAudioSystemPlugin_createInput(QAudioSystemPlugin* self, struct miqt_string device);
QAbstractAudioOutput* QAudioSystemPlugin_createOutput(QAudioSystemPlugin* self, struct miqt_string device);
QAbstractAudioDeviceInfo* QAudioSystemPlugin_createDeviceInfo(QAudioSystemPlugin* self, struct miqt_string device, int mode);
struct miqt_string QAudioSystemPlugin_tr2(const char* s, const char* c);
struct miqt_string QAudioSystemPlugin_tr3(const char* s, const char* c, int n);
struct miqt_string QAudioSystemPlugin_trUtf82(const char* s, const char* c);
struct miqt_string QAudioSystemPlugin_trUtf83(const char* s, const char* c, int n);

QMetaObject* QAudioSystemPlugin_virtualbase_metaObject(const VirtualQAudioSystemPlugin* self);
void* QAudioSystemPlugin_virtualbase_metacast(VirtualQAudioSystemPlugin* self, const char* param1);
int QAudioSystemPlugin_virtualbase_metacall(VirtualQAudioSystemPlugin* self, int param1, int param2, void** param3);
struct miqt_array /* of struct miqt_string */  QAudioSystemPlugin_virtualbase_availableDevices(const VirtualQAudioSystemPlugin* self, int param1);
QAbstractAudioInput* QAudioSystemPlugin_virtualbase_createInput(VirtualQAudioSystemPlugin* self, struct miqt_string device);
QAbstractAudioOutput* QAudioSystemPlugin_virtualbase_createOutput(VirtualQAudioSystemPlugin* self, struct miqt_string device);
QAbstractAudioDeviceInfo* QAudioSystemPlugin_virtualbase_createDeviceInfo(VirtualQAudioSystemPlugin* self, struct miqt_string device, int mode);
bool QAudioSystemPlugin_virtualbase_event(VirtualQAudioSystemPlugin* self, QEvent* event);
bool QAudioSystemPlugin_virtualbase_eventFilter(VirtualQAudioSystemPlugin* self, QObject* watched, QEvent* event);
void QAudioSystemPlugin_virtualbase_timerEvent(VirtualQAudioSystemPlugin* self, QTimerEvent* event);
void QAudioSystemPlugin_virtualbase_childEvent(VirtualQAudioSystemPlugin* self, QChildEvent* event);
void QAudioSystemPlugin_virtualbase_customEvent(VirtualQAudioSystemPlugin* self, QEvent* event);
void QAudioSystemPlugin_virtualbase_connectNotify(VirtualQAudioSystemPlugin* self, QMetaMethod* signal);
void QAudioSystemPlugin_virtualbase_disconnectNotify(VirtualQAudioSystemPlugin* self, QMetaMethod* signal);

QObject* QAudioSystemPlugin_protectedbase_sender(const VirtualQAudioSystemPlugin* self);
int QAudioSystemPlugin_protectedbase_senderSignalIndex(const VirtualQAudioSystemPlugin* self);
int QAudioSystemPlugin_protectedbase_receivers(const VirtualQAudioSystemPlugin* self, const char* signal);
bool QAudioSystemPlugin_protectedbase_isSignalConnected(const VirtualQAudioSystemPlugin* self, QMetaMethod* signal);

const QMetaObject* QAudioSystemPlugin_staticMetaObject();
void QAudioSystemPlugin_delete(QAudioSystemPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
