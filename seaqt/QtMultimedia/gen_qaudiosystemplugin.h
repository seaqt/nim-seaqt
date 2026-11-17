#pragma once
#ifndef SEAQT_QTMULTIMEDIA_GEN_QAUDIOSYSTEMPLUGIN_H
#define SEAQT_QTMULTIMEDIA_GEN_QAUDIOSYSTEMPLUGIN_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

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

struct seaqt_array /* of struct seaqt_string */  QAudioSystemFactoryInterface_availableDevices(const QAudioSystemFactoryInterface* self, int param1);
QAbstractAudioInput* QAudioSystemFactoryInterface_createInput(QAudioSystemFactoryInterface* self, struct seaqt_string device);
QAbstractAudioOutput* QAudioSystemFactoryInterface_createOutput(QAudioSystemFactoryInterface* self, struct seaqt_string device);
QAbstractAudioDeviceInfo* QAudioSystemFactoryInterface_createDeviceInfo(QAudioSystemFactoryInterface* self, struct seaqt_string device, int mode);
void QAudioSystemFactoryInterface_operatorAssign(QAudioSystemFactoryInterface* self, QAudioSystemFactoryInterface* from);

void QAudioSystemFactoryInterface_delete(QAudioSystemFactoryInterface* self);

typedef struct VirtualQAudioSystemPlugin VirtualQAudioSystemPlugin;
typedef struct QAudioSystemPlugin_VTable{
	void (*destructor)(VirtualQAudioSystemPlugin* self);
	QMetaObject* (*metaObject)(const VirtualQAudioSystemPlugin* self);
	void* (*metacast)(VirtualQAudioSystemPlugin* self, const char* param1);
	int (*metacall)(VirtualQAudioSystemPlugin* self, int param1, int param2, void** param3);
	struct seaqt_array /* of struct seaqt_string */  (*availableDevices)(const VirtualQAudioSystemPlugin* self, int param1);
	QAbstractAudioInput* (*createInput)(VirtualQAudioSystemPlugin* self, struct seaqt_string device);
	QAbstractAudioOutput* (*createOutput)(VirtualQAudioSystemPlugin* self, struct seaqt_string device);
	QAbstractAudioDeviceInfo* (*createDeviceInfo)(VirtualQAudioSystemPlugin* self, struct seaqt_string device, int mode);
	bool (*event)(VirtualQAudioSystemPlugin* self, QEvent* event);
	bool (*eventFilter)(VirtualQAudioSystemPlugin* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQAudioSystemPlugin* self, QTimerEvent* event);
	void (*childEvent)(VirtualQAudioSystemPlugin* self, QChildEvent* event);
	void (*customEvent)(VirtualQAudioSystemPlugin* self, QEvent* event);
	void (*connectNotify)(VirtualQAudioSystemPlugin* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQAudioSystemPlugin* self, QMetaMethod* signal);
}QAudioSystemPlugin_VTable;

void* QAudioSystemPlugin_vdata(VirtualQAudioSystemPlugin* self);
VirtualQAudioSystemPlugin* vdata_QAudioSystemPlugin(void* vdata);

VirtualQAudioSystemPlugin* QAudioSystemPlugin_new(const QAudioSystemPlugin_VTable* vtbl, size_t vdata);
VirtualQAudioSystemPlugin* QAudioSystemPlugin_new_parent(const QAudioSystemPlugin_VTable* vtbl, size_t vdata, QObject* parent);

void QAudioSystemPlugin_virtbase(QAudioSystemPlugin* src, QObject** outptr_QObject, QAudioSystemFactoryInterface** outptr_QAudioSystemFactoryInterface);
QMetaObject* QAudioSystemPlugin_metaObject(const QAudioSystemPlugin* self);
void* QAudioSystemPlugin_metacast(QAudioSystemPlugin* self, const char* param1);
int QAudioSystemPlugin_metacall(QAudioSystemPlugin* self, int param1, int param2, void** param3);
struct seaqt_string QAudioSystemPlugin_tr_s(const char* s);
struct seaqt_string QAudioSystemPlugin_trUtf8_s(const char* s);
struct seaqt_array /* of struct seaqt_string */  QAudioSystemPlugin_availableDevices(const QAudioSystemPlugin* self, int param1);
QAbstractAudioInput* QAudioSystemPlugin_createInput(QAudioSystemPlugin* self, struct seaqt_string device);
QAbstractAudioOutput* QAudioSystemPlugin_createOutput(QAudioSystemPlugin* self, struct seaqt_string device);
QAbstractAudioDeviceInfo* QAudioSystemPlugin_createDeviceInfo(QAudioSystemPlugin* self, struct seaqt_string device, int mode);
struct seaqt_string QAudioSystemPlugin_tr_s_c(const char* s, const char* c);
struct seaqt_string QAudioSystemPlugin_tr_s_c_n(const char* s, const char* c, int n);
struct seaqt_string QAudioSystemPlugin_trUtf8_s_c(const char* s, const char* c);
struct seaqt_string QAudioSystemPlugin_trUtf8_s_c_n(const char* s, const char* c, int n);

QMetaObject* QAudioSystemPlugin_virtualbase_metaObject(const VirtualQAudioSystemPlugin* self);
void* QAudioSystemPlugin_virtualbase_metacast(VirtualQAudioSystemPlugin* self, const char* param1);
int QAudioSystemPlugin_virtualbase_metacall(VirtualQAudioSystemPlugin* self, int param1, int param2, void** param3);
struct seaqt_array /* of struct seaqt_string */  QAudioSystemPlugin_virtualbase_availableDevices(const VirtualQAudioSystemPlugin* self, int param1);
QAbstractAudioInput* QAudioSystemPlugin_virtualbase_createInput(VirtualQAudioSystemPlugin* self, struct seaqt_string device);
QAbstractAudioOutput* QAudioSystemPlugin_virtualbase_createOutput(VirtualQAudioSystemPlugin* self, struct seaqt_string device);
QAbstractAudioDeviceInfo* QAudioSystemPlugin_virtualbase_createDeviceInfo(VirtualQAudioSystemPlugin* self, struct seaqt_string device, int mode);
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

void QAudioSystemPlugin_delete(QAudioSystemPlugin* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
