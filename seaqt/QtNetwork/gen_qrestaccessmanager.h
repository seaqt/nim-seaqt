#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QRESTACCESSMANAGER_H
#define SEAQT_QTNETWORK_GEN_QRESTACCESSMANAGER_H

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
class QHttpMultiPart;
class QIODevice;
class QJsonDocument;
class QMetaMethod;
class QMetaObject;
class QNetworkAccessManager;
class QNetworkReply;
class QNetworkRequest;
class QObject;
class QRestAccessManager;
class QTimerEvent;
class QVariant;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QHttpMultiPart QHttpMultiPart;
typedef struct QIODevice QIODevice;
typedef struct QJsonDocument QJsonDocument;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkAccessManager QNetworkAccessManager;
typedef struct QNetworkReply QNetworkReply;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QRestAccessManager QRestAccessManager;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

typedef struct VirtualQRestAccessManager VirtualQRestAccessManager;
typedef struct QRestAccessManager_VTable{
	void (*destructor)(VirtualQRestAccessManager* self);
	QMetaObject* (*metaObject)(const VirtualQRestAccessManager* self);
	void* (*metacast)(VirtualQRestAccessManager* self, const char* param1);
	int (*metacall)(VirtualQRestAccessManager* self, int param1, int param2, void** param3);
	bool (*event)(VirtualQRestAccessManager* self, QEvent* event);
	bool (*eventFilter)(VirtualQRestAccessManager* self, QObject* watched, QEvent* event);
	void (*timerEvent)(VirtualQRestAccessManager* self, QTimerEvent* event);
	void (*childEvent)(VirtualQRestAccessManager* self, QChildEvent* event);
	void (*customEvent)(VirtualQRestAccessManager* self, QEvent* event);
	void (*connectNotify)(VirtualQRestAccessManager* self, QMetaMethod* signal);
	void (*disconnectNotify)(VirtualQRestAccessManager* self, QMetaMethod* signal);
}QRestAccessManager_VTable;

void* QRestAccessManager_vdata(VirtualQRestAccessManager* self);
VirtualQRestAccessManager* vdata_QRestAccessManager(void* vdata);

VirtualQRestAccessManager* QRestAccessManager_new_manager(const QRestAccessManager_VTable* vtbl, size_t vdata, QNetworkAccessManager* manager);
VirtualQRestAccessManager* QRestAccessManager_new_manager_parent(const QRestAccessManager_VTable* vtbl, size_t vdata, QNetworkAccessManager* manager, QObject* parent);

void QRestAccessManager_virtbase(QRestAccessManager* src, QObject** outptr_QObject);
QMetaObject* QRestAccessManager_metaObject(const QRestAccessManager* self);
void* QRestAccessManager_metacast(QRestAccessManager* self, const char* param1);
int QRestAccessManager_metacall(QRestAccessManager* self, int param1, int param2, void** param3);
struct seaqt_string QRestAccessManager_tr_s(const char* s);
QNetworkAccessManager* QRestAccessManager_networkAccessManager(const QRestAccessManager* self);
QNetworkReply* QRestAccessManager_deleteResource(QRestAccessManager* self, QNetworkRequest* request);
QNetworkReply* QRestAccessManager_head(QRestAccessManager* self, QNetworkRequest* request);
QNetworkReply* QRestAccessManager_get_QNetworkRequest(QRestAccessManager* self, QNetworkRequest* request);
QNetworkReply* QRestAccessManager_get_QNetworkRequest_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string data);
QNetworkReply* QRestAccessManager_get_QNetworkRequest_QJsonDocument(QRestAccessManager* self, QNetworkRequest* request, QJsonDocument* data);
QNetworkReply* QRestAccessManager_get_QNetworkRequest_QIODevice(QRestAccessManager* self, QNetworkRequest* request, QIODevice* data);
QNetworkReply* QRestAccessManager_post_QNetworkRequest_QJsonDocument(QRestAccessManager* self, QNetworkRequest* request, QJsonDocument* data);
QNetworkReply* QRestAccessManager_post_QNetworkRequest_QVariantMap(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_map /* of struct seaqt_string to QVariant* */  data);
QNetworkReply* QRestAccessManager_post_QNetworkRequest_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string data);
QNetworkReply* QRestAccessManager_post_QNetworkRequest_QHttpMultiPart(QRestAccessManager* self, QNetworkRequest* request, QHttpMultiPart* data);
QNetworkReply* QRestAccessManager_post_QNetworkRequest_QIODevice(QRestAccessManager* self, QNetworkRequest* request, QIODevice* data);
QNetworkReply* QRestAccessManager_put_QNetworkRequest_QJsonDocument(QRestAccessManager* self, QNetworkRequest* request, QJsonDocument* data);
QNetworkReply* QRestAccessManager_put_QNetworkRequest_QVariantMap(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_map /* of struct seaqt_string to QVariant* */  data);
QNetworkReply* QRestAccessManager_put_QNetworkRequest_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string data);
QNetworkReply* QRestAccessManager_put_QNetworkRequest_QHttpMultiPart(QRestAccessManager* self, QNetworkRequest* request, QHttpMultiPart* data);
QNetworkReply* QRestAccessManager_put_QNetworkRequest_QIODevice(QRestAccessManager* self, QNetworkRequest* request, QIODevice* data);
QNetworkReply* QRestAccessManager_patch_QNetworkRequest_QJsonDocument(QRestAccessManager* self, QNetworkRequest* request, QJsonDocument* data);
QNetworkReply* QRestAccessManager_patch_QNetworkRequest_QVariantMap(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_map /* of struct seaqt_string to QVariant* */  data);
QNetworkReply* QRestAccessManager_patch_QNetworkRequest_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string data);
QNetworkReply* QRestAccessManager_patch_QNetworkRequest_QIODevice(QRestAccessManager* self, QNetworkRequest* request, QIODevice* data);
QNetworkReply* QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QByteArray(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string method, struct seaqt_string data);
QNetworkReply* QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QIODevice(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string method, QIODevice* data);
QNetworkReply* QRestAccessManager_sendCustomRequest_QNetworkRequest_QByteArray_QHttpMultiPart(QRestAccessManager* self, QNetworkRequest* request, struct seaqt_string method, QHttpMultiPart* data);
struct seaqt_string QRestAccessManager_tr_s_c(const char* s, const char* c);
struct seaqt_string QRestAccessManager_tr_s_c_n(const char* s, const char* c, int n);

QMetaObject* QRestAccessManager_virtualbase_metaObject(const VirtualQRestAccessManager* self);
void* QRestAccessManager_virtualbase_metacast(VirtualQRestAccessManager* self, const char* param1);
int QRestAccessManager_virtualbase_metacall(VirtualQRestAccessManager* self, int param1, int param2, void** param3);
bool QRestAccessManager_virtualbase_event(VirtualQRestAccessManager* self, QEvent* event);
bool QRestAccessManager_virtualbase_eventFilter(VirtualQRestAccessManager* self, QObject* watched, QEvent* event);
void QRestAccessManager_virtualbase_timerEvent(VirtualQRestAccessManager* self, QTimerEvent* event);
void QRestAccessManager_virtualbase_childEvent(VirtualQRestAccessManager* self, QChildEvent* event);
void QRestAccessManager_virtualbase_customEvent(VirtualQRestAccessManager* self, QEvent* event);
void QRestAccessManager_virtualbase_connectNotify(VirtualQRestAccessManager* self, QMetaMethod* signal);
void QRestAccessManager_virtualbase_disconnectNotify(VirtualQRestAccessManager* self, QMetaMethod* signal);

QObject* QRestAccessManager_protectedbase_sender(const VirtualQRestAccessManager* self);
int QRestAccessManager_protectedbase_senderSignalIndex(const VirtualQRestAccessManager* self);
int QRestAccessManager_protectedbase_receivers(const VirtualQRestAccessManager* self, const char* signal);
bool QRestAccessManager_protectedbase_isSignalConnected(const VirtualQRestAccessManager* self, QMetaMethod* signal);

const QMetaObject* QRestAccessManager_staticMetaObject();
void QRestAccessManager_delete(QRestAccessManager* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
