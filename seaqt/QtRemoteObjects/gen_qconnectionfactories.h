#pragma once
#ifndef SEAQT_QTREMOTEOBJECTS_GEN_QCONNECTIONFACTORIES_H
#define SEAQT_QTREMOTEOBJECTS_GEN_QCONNECTIONFACTORIES_H

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
class QConnectionAbstractServer;
class QEvent;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QUrl;
class QtROClientFactory;
class QtROClientIoDevice;
class QtROIoDeviceBase;
class QtROServerFactory;
class QtROServerIoDevice;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QConnectionAbstractServer QConnectionAbstractServer;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QtROClientFactory QtROClientFactory;
typedef struct QtROClientIoDevice QtROClientIoDevice;
typedef struct QtROIoDeviceBase QtROIoDeviceBase;
typedef struct QtROServerFactory QtROServerFactory;
typedef struct QtROServerIoDevice QtROServerIoDevice;
#endif

typedef struct VirtualQtROIoDeviceBase VirtualQtROIoDeviceBase;
typedef struct QtROIoDeviceBase_VTable{
	void (*destructor)(VirtualQtROIoDeviceBase* self);
	QMetaObject* (*metaObject)(const VirtualQtROIoDeviceBase* self);
	void* (*metacast)(VirtualQtROIoDeviceBase* self, const char* param1);
	int (*metacall)(VirtualQtROIoDeviceBase* self, int param1, int param2, void** param3);
	void (*write_QByteArray)(VirtualQtROIoDeviceBase* self, struct seaqt_string data);
	void (*write_QByteArray_qint64)(VirtualQtROIoDeviceBase* self, struct seaqt_string data, long long param2);
	bool (*isOpen)(const VirtualQtROIoDeviceBase* self);
	void (*close)(VirtualQtROIoDeviceBase* self);
	long long (*bytesAvailable)(const VirtualQtROIoDeviceBase* self);
	QIODevice* (*connection)(const VirtualQtROIoDeviceBase* self);
	struct seaqt_string (*deviceType)(const VirtualQtROIoDeviceBase* self);
	void (*doClose)(VirtualQtROIoDeviceBase* self);
	bool (*event)(VirtualQtROIoDeviceBase* self, QEvent* event);
	bool (*eventFilter)(VirtualQtROIoDeviceBase* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQtROIoDeviceBase* self, QTimerEvent* event);
	void (*childEvent)(VirtualQtROIoDeviceBase* self, QChildEvent* event);
	void (*customEvent)(VirtualQtROIoDeviceBase* self, QEvent* event);
	void (*connectNotify)(VirtualQtROIoDeviceBase* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQtROIoDeviceBase* self, QMetaMethod* signal);
}QtROIoDeviceBase_VTable;

void* QtROIoDeviceBase_vdata(VirtualQtROIoDeviceBase* self);
VirtualQtROIoDeviceBase* vdata_QtROIoDeviceBase(void* vdata);

VirtualQtROIoDeviceBase* QtROIoDeviceBase_new(const QtROIoDeviceBase_VTable* vtbl, size_t vdata);
VirtualQtROIoDeviceBase* QtROIoDeviceBase_new_parent(const QtROIoDeviceBase_VTable* vtbl, size_t vdata, QObject* parent);

void QtROIoDeviceBase_virtbase(QtROIoDeviceBase* src, QObject** outptr_QObject);
QMetaObject* QtROIoDeviceBase_metaObject(const QtROIoDeviceBase* self);
void* QtROIoDeviceBase_metacast(QtROIoDeviceBase* self, const char* param1);
int QtROIoDeviceBase_metacall(QtROIoDeviceBase* self, int param1, int param2, void** param3);
struct seaqt_string QtROIoDeviceBase_tr_s(const char* s);
bool QtROIoDeviceBase_read(QtROIoDeviceBase* self, int* param1, struct seaqt_string param2);
void QtROIoDeviceBase_write_QByteArray(QtROIoDeviceBase* self, struct seaqt_string data);
void QtROIoDeviceBase_write_QByteArray_qint64(QtROIoDeviceBase* self, struct seaqt_string data, long long param2);
bool QtROIoDeviceBase_isOpen(const QtROIoDeviceBase* self);
void QtROIoDeviceBase_close(QtROIoDeviceBase* self);
long long QtROIoDeviceBase_bytesAvailable(const QtROIoDeviceBase* self);
QIODevice* QtROIoDeviceBase_connection(const QtROIoDeviceBase* self);
void QtROIoDeviceBase_initializeDataStream(QtROIoDeviceBase* self);
bool QtROIoDeviceBase_isClosing(const QtROIoDeviceBase* self);
void QtROIoDeviceBase_addSource(QtROIoDeviceBase* self, struct seaqt_string param1);
void QtROIoDeviceBase_removeSource(QtROIoDeviceBase* self, struct seaqt_string param1);
struct seaqt_array /* set of struct seaqt_string */  QtROIoDeviceBase_remoteObjects(const QtROIoDeviceBase* self);
void QtROIoDeviceBase_readyRead(QtROIoDeviceBase* self);
void QtROIoDeviceBase_connect_readyRead(QtROIoDeviceBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
void QtROIoDeviceBase_disconnected(QtROIoDeviceBase* self);
void QtROIoDeviceBase_connect_disconnected(QtROIoDeviceBase* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QtROIoDeviceBase_deviceType(const QtROIoDeviceBase* self);
void QtROIoDeviceBase_doClose(QtROIoDeviceBase* self);
struct seaqt_string QtROIoDeviceBase_tr_s_c(const char* s, const char* c);
struct seaqt_string QtROIoDeviceBase_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QtROIoDeviceBase_virtualbase_metaObject(const VirtualQtROIoDeviceBase* self);
void* QtROIoDeviceBase_virtualbase_metacast(VirtualQtROIoDeviceBase* self, const char* param1);
int QtROIoDeviceBase_virtualbase_metacall(VirtualQtROIoDeviceBase* self, int param1, int param2, void** param3);
void QtROIoDeviceBase_virtualbase_write_QByteArray(VirtualQtROIoDeviceBase* self, struct seaqt_string data);
void QtROIoDeviceBase_virtualbase_write_QByteArray_qint64(VirtualQtROIoDeviceBase* self, struct seaqt_string data, long long param2);
bool QtROIoDeviceBase_virtualbase_isOpen(const VirtualQtROIoDeviceBase* self);
void QtROIoDeviceBase_virtualbase_close(VirtualQtROIoDeviceBase* self);
long long QtROIoDeviceBase_virtualbase_bytesAvailable(const VirtualQtROIoDeviceBase* self);
QIODevice* QtROIoDeviceBase_virtualbase_connection(const VirtualQtROIoDeviceBase* self);
struct seaqt_string QtROIoDeviceBase_virtualbase_deviceType(const VirtualQtROIoDeviceBase* self);
void QtROIoDeviceBase_virtualbase_doClose(VirtualQtROIoDeviceBase* self);
bool QtROIoDeviceBase_virtualbase_event(VirtualQtROIoDeviceBase* self, QEvent* event);
bool QtROIoDeviceBase_virtualbase_eventFilter(VirtualQtROIoDeviceBase* self, QObject* watched, QEvent* event);
void QtROIoDeviceBase_virtualbase_timerEvent(VirtualQtROIoDeviceBase* self, QTimerEvent* event);
void QtROIoDeviceBase_virtualbase_childEvent(VirtualQtROIoDeviceBase* self, QChildEvent* event);
void QtROIoDeviceBase_virtualbase_customEvent(VirtualQtROIoDeviceBase* self, QEvent* event);
void QtROIoDeviceBase_virtualbase_connectNotify(VirtualQtROIoDeviceBase* self, QMetaMethod* signal);
void QtROIoDeviceBase_virtualbase_disconnectNotify(VirtualQtROIoDeviceBase* self, QMetaMethod* signal);

QObject* QtROIoDeviceBase_protectedbase_sender(const VirtualQtROIoDeviceBase* self);
int QtROIoDeviceBase_protectedbase_senderSignalIndex(const VirtualQtROIoDeviceBase* self);
int QtROIoDeviceBase_protectedbase_receivers(const VirtualQtROIoDeviceBase* self, const char* signal);
bool QtROIoDeviceBase_protectedbase_isSignalConnected(const VirtualQtROIoDeviceBase* self, QMetaMethod* signal);

const QMetaObject* QtROIoDeviceBase_staticMetaObject();
void QtROIoDeviceBase_delete(QtROIoDeviceBase* self);

typedef struct VirtualQtROServerIoDevice VirtualQtROServerIoDevice;
typedef struct QtROServerIoDevice_VTable{
	void (*destructor)(VirtualQtROServerIoDevice* self);
	QMetaObject* (*metaObject)(const VirtualQtROServerIoDevice* self);
	void* (*metacast)(VirtualQtROServerIoDevice* self, const char* param1);
	int (*metacall)(VirtualQtROServerIoDevice* self, int param1, int param2, void** param3);
	struct seaqt_string (*deviceType)(const VirtualQtROServerIoDevice* self);
	void (*write_QByteArray)(VirtualQtROServerIoDevice* self, struct seaqt_string data);
	bool (*isOpen)(const VirtualQtROServerIoDevice* self);
	void (*close)(VirtualQtROServerIoDevice* self);
	long long (*bytesAvailable)(const VirtualQtROServerIoDevice* self);
	QIODevice* (*connection)(const VirtualQtROServerIoDevice* self);
	void (*doClose)(VirtualQtROServerIoDevice* self);
	bool (*event)(VirtualQtROServerIoDevice* self, QEvent* event);
	bool (*eventFilter)(VirtualQtROServerIoDevice* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQtROServerIoDevice* self, QTimerEvent* event);
	void (*childEvent)(VirtualQtROServerIoDevice* self, QChildEvent* event);
	void (*customEvent)(VirtualQtROServerIoDevice* self, QEvent* event);
	void (*connectNotify)(VirtualQtROServerIoDevice* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQtROServerIoDevice* self, QMetaMethod* signal);
}QtROServerIoDevice_VTable;

void* QtROServerIoDevice_vdata(VirtualQtROServerIoDevice* self);
VirtualQtROServerIoDevice* vdata_QtROServerIoDevice(void* vdata);

VirtualQtROServerIoDevice* QtROServerIoDevice_new(const QtROServerIoDevice_VTable* vtbl, size_t vdata);
VirtualQtROServerIoDevice* QtROServerIoDevice_new_parent(const QtROServerIoDevice_VTable* vtbl, size_t vdata, QObject* parent);

void QtROServerIoDevice_virtbase(QtROServerIoDevice* src, QtROIoDeviceBase** outptr_QtROIoDeviceBase);
QMetaObject* QtROServerIoDevice_metaObject(const QtROServerIoDevice* self);
void* QtROServerIoDevice_metacast(QtROServerIoDevice* self, const char* param1);
int QtROServerIoDevice_metacall(QtROServerIoDevice* self, int param1, int param2, void** param3);
struct seaqt_string QtROServerIoDevice_tr_s(const char* s);
struct seaqt_string QtROServerIoDevice_deviceType(const QtROServerIoDevice* self);
struct seaqt_string QtROServerIoDevice_tr_s_c(const char* s, const char* c);
struct seaqt_string QtROServerIoDevice_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QtROServerIoDevice_virtualbase_metaObject(const VirtualQtROServerIoDevice* self);
void* QtROServerIoDevice_virtualbase_metacast(VirtualQtROServerIoDevice* self, const char* param1);
int QtROServerIoDevice_virtualbase_metacall(VirtualQtROServerIoDevice* self, int param1, int param2, void** param3);
struct seaqt_string QtROServerIoDevice_virtualbase_deviceType(const VirtualQtROServerIoDevice* self);
void QtROServerIoDevice_virtualbase_write_QByteArray(VirtualQtROServerIoDevice* self, struct seaqt_string data);
bool QtROServerIoDevice_virtualbase_isOpen(const VirtualQtROServerIoDevice* self);
void QtROServerIoDevice_virtualbase_close(VirtualQtROServerIoDevice* self);
long long QtROServerIoDevice_virtualbase_bytesAvailable(const VirtualQtROServerIoDevice* self);
QIODevice* QtROServerIoDevice_virtualbase_connection(const VirtualQtROServerIoDevice* self);
void QtROServerIoDevice_virtualbase_doClose(VirtualQtROServerIoDevice* self);
bool QtROServerIoDevice_virtualbase_event(VirtualQtROServerIoDevice* self, QEvent* event);
bool QtROServerIoDevice_virtualbase_eventFilter(VirtualQtROServerIoDevice* self, QObject* watched, QEvent* event);
void QtROServerIoDevice_virtualbase_timerEvent(VirtualQtROServerIoDevice* self, QTimerEvent* event);
void QtROServerIoDevice_virtualbase_childEvent(VirtualQtROServerIoDevice* self, QChildEvent* event);
void QtROServerIoDevice_virtualbase_customEvent(VirtualQtROServerIoDevice* self, QEvent* event);
void QtROServerIoDevice_virtualbase_connectNotify(VirtualQtROServerIoDevice* self, QMetaMethod* signal);
void QtROServerIoDevice_virtualbase_disconnectNotify(VirtualQtROServerIoDevice* self, QMetaMethod* signal);

QObject* QtROServerIoDevice_protectedbase_sender(const VirtualQtROServerIoDevice* self);
int QtROServerIoDevice_protectedbase_senderSignalIndex(const VirtualQtROServerIoDevice* self);
int QtROServerIoDevice_protectedbase_receivers(const VirtualQtROServerIoDevice* self, const char* signal);
bool QtROServerIoDevice_protectedbase_isSignalConnected(const VirtualQtROServerIoDevice* self, QMetaMethod* signal);

const QMetaObject* QtROServerIoDevice_staticMetaObject();
void QtROServerIoDevice_delete(QtROServerIoDevice* self);

typedef struct VirtualQConnectionAbstractServer VirtualQConnectionAbstractServer;
typedef struct QConnectionAbstractServer_VTable{
	void (*destructor)(VirtualQConnectionAbstractServer* self);
	QMetaObject* (*metaObject)(const VirtualQConnectionAbstractServer* self);
	void* (*metacast)(VirtualQConnectionAbstractServer* self, const char* param1);
	int (*metacall)(VirtualQConnectionAbstractServer* self, int param1, int param2, void** param3);
	bool (*hasPendingConnections)(const VirtualQConnectionAbstractServer* self);
	QUrl* (*address)(const VirtualQConnectionAbstractServer* self);
	bool (*listen)(VirtualQConnectionAbstractServer* self, QUrl* address);
	int (*serverError)(const VirtualQConnectionAbstractServer* self);
	void (*close)(VirtualQConnectionAbstractServer* self);
	QtROServerIoDevice* (*configureNewConnection)(VirtualQConnectionAbstractServer* self);
	bool (*event)(VirtualQConnectionAbstractServer* self, QEvent* event);
	bool (*eventFilter)(VirtualQConnectionAbstractServer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQConnectionAbstractServer* self, QTimerEvent* event);
	void (*childEvent)(VirtualQConnectionAbstractServer* self, QChildEvent* event);
	void (*customEvent)(VirtualQConnectionAbstractServer* self, QEvent* event);
	void (*connectNotify)(VirtualQConnectionAbstractServer* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQConnectionAbstractServer* self, QMetaMethod* signal);
}QConnectionAbstractServer_VTable;

void* QConnectionAbstractServer_vdata(VirtualQConnectionAbstractServer* self);
VirtualQConnectionAbstractServer* vdata_QConnectionAbstractServer(void* vdata);

VirtualQConnectionAbstractServer* QConnectionAbstractServer_new(const QConnectionAbstractServer_VTable* vtbl, size_t vdata);
VirtualQConnectionAbstractServer* QConnectionAbstractServer_new_parent(const QConnectionAbstractServer_VTable* vtbl, size_t vdata, QObject* parent);

void QConnectionAbstractServer_virtbase(QConnectionAbstractServer* src, QObject** outptr_QObject);
QMetaObject* QConnectionAbstractServer_metaObject(const QConnectionAbstractServer* self);
void* QConnectionAbstractServer_metacast(QConnectionAbstractServer* self, const char* param1);
int QConnectionAbstractServer_metacall(QConnectionAbstractServer* self, int param1, int param2, void** param3);
struct seaqt_string QConnectionAbstractServer_tr_s(const char* s);
bool QConnectionAbstractServer_hasPendingConnections(const QConnectionAbstractServer* self);
QtROServerIoDevice* QConnectionAbstractServer_nextPendingConnection(QConnectionAbstractServer* self);
QUrl* QConnectionAbstractServer_address(const QConnectionAbstractServer* self);
bool QConnectionAbstractServer_listen(QConnectionAbstractServer* self, QUrl* address);
int QConnectionAbstractServer_serverError(const QConnectionAbstractServer* self);
void QConnectionAbstractServer_close(QConnectionAbstractServer* self);
QtROServerIoDevice* QConnectionAbstractServer_configureNewConnection(QConnectionAbstractServer* self);
void QConnectionAbstractServer_newConnection(QConnectionAbstractServer* self);
void QConnectionAbstractServer_connect_newConnection(QConnectionAbstractServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t));
struct seaqt_string QConnectionAbstractServer_tr_s_c(const char* s, const char* c);
struct seaqt_string QConnectionAbstractServer_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QConnectionAbstractServer_virtualbase_metaObject(const VirtualQConnectionAbstractServer* self);
void* QConnectionAbstractServer_virtualbase_metacast(VirtualQConnectionAbstractServer* self, const char* param1);
int QConnectionAbstractServer_virtualbase_metacall(VirtualQConnectionAbstractServer* self, int param1, int param2, void** param3);
bool QConnectionAbstractServer_virtualbase_hasPendingConnections(const VirtualQConnectionAbstractServer* self);
QUrl* QConnectionAbstractServer_virtualbase_address(const VirtualQConnectionAbstractServer* self);
bool QConnectionAbstractServer_virtualbase_listen(VirtualQConnectionAbstractServer* self, QUrl* address);
int QConnectionAbstractServer_virtualbase_serverError(const VirtualQConnectionAbstractServer* self);
void QConnectionAbstractServer_virtualbase_close(VirtualQConnectionAbstractServer* self);
QtROServerIoDevice* QConnectionAbstractServer_virtualbase_configureNewConnection(VirtualQConnectionAbstractServer* self);
bool QConnectionAbstractServer_virtualbase_event(VirtualQConnectionAbstractServer* self, QEvent* event);
bool QConnectionAbstractServer_virtualbase_eventFilter(VirtualQConnectionAbstractServer* self, QObject* watched, QEvent* event);
void QConnectionAbstractServer_virtualbase_timerEvent(VirtualQConnectionAbstractServer* self, QTimerEvent* event);
void QConnectionAbstractServer_virtualbase_childEvent(VirtualQConnectionAbstractServer* self, QChildEvent* event);
void QConnectionAbstractServer_virtualbase_customEvent(VirtualQConnectionAbstractServer* self, QEvent* event);
void QConnectionAbstractServer_virtualbase_connectNotify(VirtualQConnectionAbstractServer* self, QMetaMethod* signal);
void QConnectionAbstractServer_virtualbase_disconnectNotify(VirtualQConnectionAbstractServer* self, QMetaMethod* signal);

QObject* QConnectionAbstractServer_protectedbase_sender(const VirtualQConnectionAbstractServer* self);
int QConnectionAbstractServer_protectedbase_senderSignalIndex(const VirtualQConnectionAbstractServer* self);
int QConnectionAbstractServer_protectedbase_receivers(const VirtualQConnectionAbstractServer* self, const char* signal);
bool QConnectionAbstractServer_protectedbase_isSignalConnected(const VirtualQConnectionAbstractServer* self, QMetaMethod* signal);

const QMetaObject* QConnectionAbstractServer_staticMetaObject();
void QConnectionAbstractServer_delete(QConnectionAbstractServer* self);

typedef struct VirtualQtROClientIoDevice VirtualQtROClientIoDevice;
typedef struct QtROClientIoDevice_VTable{
	void (*destructor)(VirtualQtROClientIoDevice* self);
	QMetaObject* (*metaObject)(const VirtualQtROClientIoDevice* self);
	void* (*metacast)(VirtualQtROClientIoDevice* self, const char* param1);
	int (*metacall)(VirtualQtROClientIoDevice* self, int param1, int param2, void** param3);
	void (*connectToServer)(VirtualQtROClientIoDevice* self);
	void (*doDisconnectFromServer)(VirtualQtROClientIoDevice* self);
	struct seaqt_string (*deviceType)(const VirtualQtROClientIoDevice* self);
	void (*write_QByteArray)(VirtualQtROClientIoDevice* self, struct seaqt_string data);
	bool (*isOpen)(const VirtualQtROClientIoDevice* self);
	void (*close)(VirtualQtROClientIoDevice* self);
	long long (*bytesAvailable)(const VirtualQtROClientIoDevice* self);
	QIODevice* (*connection)(const VirtualQtROClientIoDevice* self);
	void (*doClose)(VirtualQtROClientIoDevice* self);
	bool (*event)(VirtualQtROClientIoDevice* self, QEvent* event);
	bool (*eventFilter)(VirtualQtROClientIoDevice* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQtROClientIoDevice* self, QTimerEvent* event);
	void (*childEvent)(VirtualQtROClientIoDevice* self, QChildEvent* event);
	void (*customEvent)(VirtualQtROClientIoDevice* self, QEvent* event);
	void (*connectNotify)(VirtualQtROClientIoDevice* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQtROClientIoDevice* self, QMetaMethod* signal);
}QtROClientIoDevice_VTable;

void* QtROClientIoDevice_vdata(VirtualQtROClientIoDevice* self);
VirtualQtROClientIoDevice* vdata_QtROClientIoDevice(void* vdata);

VirtualQtROClientIoDevice* QtROClientIoDevice_new(const QtROClientIoDevice_VTable* vtbl, size_t vdata);
VirtualQtROClientIoDevice* QtROClientIoDevice_new_parent(const QtROClientIoDevice_VTable* vtbl, size_t vdata, QObject* parent);

void QtROClientIoDevice_virtbase(QtROClientIoDevice* src, QtROIoDeviceBase** outptr_QtROIoDeviceBase);
QMetaObject* QtROClientIoDevice_metaObject(const QtROClientIoDevice* self);
void* QtROClientIoDevice_metacast(QtROClientIoDevice* self, const char* param1);
int QtROClientIoDevice_metacall(QtROClientIoDevice* self, int param1, int param2, void** param3);
struct seaqt_string QtROClientIoDevice_tr_s(const char* s);
void QtROClientIoDevice_disconnectFromServer(QtROClientIoDevice* self);
void QtROClientIoDevice_connectToServer(QtROClientIoDevice* self);
QUrl* QtROClientIoDevice_url(const QtROClientIoDevice* self);
void QtROClientIoDevice_shouldReconnect(QtROClientIoDevice* self, QtROClientIoDevice* param1);
void QtROClientIoDevice_connect_shouldReconnect(QtROClientIoDevice* self, intptr_t slot, void (*callback)(intptr_t, QtROClientIoDevice*), void (*release)(intptr_t));
void QtROClientIoDevice_doDisconnectFromServer(QtROClientIoDevice* self);
struct seaqt_string QtROClientIoDevice_deviceType(const QtROClientIoDevice* self);
struct seaqt_string QtROClientIoDevice_tr_s_c(const char* s, const char* c);
struct seaqt_string QtROClientIoDevice_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QtROClientIoDevice_virtualbase_metaObject(const VirtualQtROClientIoDevice* self);
void* QtROClientIoDevice_virtualbase_metacast(VirtualQtROClientIoDevice* self, const char* param1);
int QtROClientIoDevice_virtualbase_metacall(VirtualQtROClientIoDevice* self, int param1, int param2, void** param3);
void QtROClientIoDevice_virtualbase_connectToServer(VirtualQtROClientIoDevice* self);
void QtROClientIoDevice_virtualbase_doDisconnectFromServer(VirtualQtROClientIoDevice* self);
struct seaqt_string QtROClientIoDevice_virtualbase_deviceType(const VirtualQtROClientIoDevice* self);
void QtROClientIoDevice_virtualbase_write_QByteArray(VirtualQtROClientIoDevice* self, struct seaqt_string data);
bool QtROClientIoDevice_virtualbase_isOpen(const VirtualQtROClientIoDevice* self);
void QtROClientIoDevice_virtualbase_close(VirtualQtROClientIoDevice* self);
long long QtROClientIoDevice_virtualbase_bytesAvailable(const VirtualQtROClientIoDevice* self);
QIODevice* QtROClientIoDevice_virtualbase_connection(const VirtualQtROClientIoDevice* self);
void QtROClientIoDevice_virtualbase_doClose(VirtualQtROClientIoDevice* self);
bool QtROClientIoDevice_virtualbase_event(VirtualQtROClientIoDevice* self, QEvent* event);
bool QtROClientIoDevice_virtualbase_eventFilter(VirtualQtROClientIoDevice* self, QObject* watched, QEvent* event);
void QtROClientIoDevice_virtualbase_timerEvent(VirtualQtROClientIoDevice* self, QTimerEvent* event);
void QtROClientIoDevice_virtualbase_childEvent(VirtualQtROClientIoDevice* self, QChildEvent* event);
void QtROClientIoDevice_virtualbase_customEvent(VirtualQtROClientIoDevice* self, QEvent* event);
void QtROClientIoDevice_virtualbase_connectNotify(VirtualQtROClientIoDevice* self, QMetaMethod* signal);
void QtROClientIoDevice_virtualbase_disconnectNotify(VirtualQtROClientIoDevice* self, QMetaMethod* signal);

void QtROClientIoDevice_protectedbase_setUrl(VirtualQtROClientIoDevice* self, QUrl* url);
QObject* QtROClientIoDevice_protectedbase_sender(const VirtualQtROClientIoDevice* self);
int QtROClientIoDevice_protectedbase_senderSignalIndex(const VirtualQtROClientIoDevice* self);
int QtROClientIoDevice_protectedbase_receivers(const VirtualQtROClientIoDevice* self, const char* signal);
bool QtROClientIoDevice_protectedbase_isSignalConnected(const VirtualQtROClientIoDevice* self, QMetaMethod* signal);

const QMetaObject* QtROClientIoDevice_staticMetaObject();
void QtROClientIoDevice_delete(QtROClientIoDevice* self);

QtROServerFactory* QtROServerFactory_new(QtROServerFactory* from);

QtROServerFactory* QtROServerFactory_instance();
QConnectionAbstractServer* QtROServerFactory_create_url(QtROServerFactory* self, QUrl* url);
bool QtROServerFactory_isValid(QtROServerFactory* self, QUrl* url);
void QtROServerFactory_operatorAssign(QtROServerFactory* self, QtROServerFactory* from);
QConnectionAbstractServer* QtROServerFactory_create_url_parent(QtROServerFactory* self, QUrl* url, QObject* parent);

void QtROServerFactory_delete(QtROServerFactory* self);

QtROClientFactory* QtROClientFactory_new(QtROClientFactory* from);

QtROClientFactory* QtROClientFactory_instance();
QtROClientIoDevice* QtROClientFactory_create_url(QtROClientFactory* self, QUrl* url);
bool QtROClientFactory_isValid(QtROClientFactory* self, QUrl* url);
void QtROClientFactory_operatorAssign(QtROClientFactory* self, QtROClientFactory* from);
QtROClientIoDevice* QtROClientFactory_create_url_parent(QtROClientFactory* self, QUrl* url, QObject* parent);

void QtROClientFactory_delete(QtROClientFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
