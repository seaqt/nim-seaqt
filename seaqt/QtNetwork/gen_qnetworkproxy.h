#pragma once
#ifndef SEAQT_QTNETWORK_GEN_QNETWORKPROXY_H
#define SEAQT_QTNETWORK_GEN_QNETWORKPROXY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libseaqt-runtime.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QNetworkProxy;
class QNetworkProxyFactory;
class QNetworkProxyQuery;
class QUrl;
class QVariant;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkProxy QNetworkProxy;
typedef struct QNetworkProxyFactory QNetworkProxyFactory;
typedef struct QNetworkProxyQuery QNetworkProxyQuery;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

QNetworkProxyQuery* QNetworkProxyQuery_new();
QNetworkProxyQuery* QNetworkProxyQuery_new2(QUrl* requestUrl);
QNetworkProxyQuery* QNetworkProxyQuery_new3(struct seaqt_string hostname, int port);
QNetworkProxyQuery* QNetworkProxyQuery_new4(unsigned short bindPort);
QNetworkProxyQuery* QNetworkProxyQuery_new5(QNetworkProxyQuery* other);
QNetworkProxyQuery* QNetworkProxyQuery_new6(QUrl* requestUrl, int queryType);
QNetworkProxyQuery* QNetworkProxyQuery_new7(struct seaqt_string hostname, int port, struct seaqt_string protocolTag);
QNetworkProxyQuery* QNetworkProxyQuery_new8(struct seaqt_string hostname, int port, struct seaqt_string protocolTag, int queryType);
QNetworkProxyQuery* QNetworkProxyQuery_new9(unsigned short bindPort, struct seaqt_string protocolTag);
QNetworkProxyQuery* QNetworkProxyQuery_new10(unsigned short bindPort, struct seaqt_string protocolTag, int queryType);

void QNetworkProxyQuery_operatorAssign(QNetworkProxyQuery* self, QNetworkProxyQuery* other);
void QNetworkProxyQuery_swap(QNetworkProxyQuery* self, QNetworkProxyQuery* other);
bool QNetworkProxyQuery_operatorEqual(const QNetworkProxyQuery* self, QNetworkProxyQuery* other);
bool QNetworkProxyQuery_operatorNotEqual(const QNetworkProxyQuery* self, QNetworkProxyQuery* other);
int QNetworkProxyQuery_queryType(const QNetworkProxyQuery* self);
void QNetworkProxyQuery_setQueryType(QNetworkProxyQuery* self, int type);
int QNetworkProxyQuery_peerPort(const QNetworkProxyQuery* self);
void QNetworkProxyQuery_setPeerPort(QNetworkProxyQuery* self, int port);
struct seaqt_string QNetworkProxyQuery_peerHostName(const QNetworkProxyQuery* self);
void QNetworkProxyQuery_setPeerHostName(QNetworkProxyQuery* self, struct seaqt_string hostname);
int QNetworkProxyQuery_localPort(const QNetworkProxyQuery* self);
void QNetworkProxyQuery_setLocalPort(QNetworkProxyQuery* self, int port);
struct seaqt_string QNetworkProxyQuery_protocolTag(const QNetworkProxyQuery* self);
void QNetworkProxyQuery_setProtocolTag(QNetworkProxyQuery* self, struct seaqt_string protocolTag);
QUrl* QNetworkProxyQuery_url(const QNetworkProxyQuery* self);
void QNetworkProxyQuery_setUrl(QNetworkProxyQuery* self, QUrl* url);

const QMetaObject* QNetworkProxyQuery_staticMetaObject();
void QNetworkProxyQuery_delete(QNetworkProxyQuery* self);

QNetworkProxy* QNetworkProxy_new();
QNetworkProxy* QNetworkProxy_new2(int type);
QNetworkProxy* QNetworkProxy_new3(QNetworkProxy* other);
QNetworkProxy* QNetworkProxy_new4(int type, struct seaqt_string hostName);
QNetworkProxy* QNetworkProxy_new5(int type, struct seaqt_string hostName, unsigned short port);
QNetworkProxy* QNetworkProxy_new6(int type, struct seaqt_string hostName, unsigned short port, struct seaqt_string user);
QNetworkProxy* QNetworkProxy_new7(int type, struct seaqt_string hostName, unsigned short port, struct seaqt_string user, struct seaqt_string password);

void QNetworkProxy_operatorAssign(QNetworkProxy* self, QNetworkProxy* other);
void QNetworkProxy_swap(QNetworkProxy* self, QNetworkProxy* other);
bool QNetworkProxy_operatorEqual(const QNetworkProxy* self, QNetworkProxy* other);
bool QNetworkProxy_operatorNotEqual(const QNetworkProxy* self, QNetworkProxy* other);
void QNetworkProxy_setType(QNetworkProxy* self, int type);
int QNetworkProxy_type(const QNetworkProxy* self);
void QNetworkProxy_setCapabilities(QNetworkProxy* self, int capab);
int QNetworkProxy_capabilities(const QNetworkProxy* self);
bool QNetworkProxy_isCachingProxy(const QNetworkProxy* self);
bool QNetworkProxy_isTransparentProxy(const QNetworkProxy* self);
void QNetworkProxy_setUser(QNetworkProxy* self, struct seaqt_string userName);
struct seaqt_string QNetworkProxy_user(const QNetworkProxy* self);
void QNetworkProxy_setPassword(QNetworkProxy* self, struct seaqt_string password);
struct seaqt_string QNetworkProxy_password(const QNetworkProxy* self);
void QNetworkProxy_setHostName(QNetworkProxy* self, struct seaqt_string hostName);
struct seaqt_string QNetworkProxy_hostName(const QNetworkProxy* self);
void QNetworkProxy_setPort(QNetworkProxy* self, unsigned short port);
unsigned short QNetworkProxy_port(const QNetworkProxy* self);
void QNetworkProxy_setApplicationProxy(QNetworkProxy* proxy);
QNetworkProxy* QNetworkProxy_applicationProxy();
QVariant* QNetworkProxy_header(const QNetworkProxy* self, int header);
void QNetworkProxy_setHeader(QNetworkProxy* self, int header, QVariant* value);
bool QNetworkProxy_hasRawHeader(const QNetworkProxy* self, struct seaqt_string headerName);
struct seaqt_array /* of struct seaqt_string */  QNetworkProxy_rawHeaderList(const QNetworkProxy* self);
struct seaqt_string QNetworkProxy_rawHeader(const QNetworkProxy* self, struct seaqt_string headerName);
void QNetworkProxy_setRawHeader(QNetworkProxy* self, struct seaqt_string headerName, struct seaqt_string value);

void QNetworkProxy_delete(QNetworkProxy* self);

typedef struct VirtualQNetworkProxyFactory VirtualQNetworkProxyFactory;
typedef struct QNetworkProxyFactory_VTable{
	void (*destructor)(VirtualQNetworkProxyFactory* self);
	struct seaqt_array /* of QNetworkProxy* */  (*queryProxy)(VirtualQNetworkProxyFactory* self, QNetworkProxyQuery* query);
}QNetworkProxyFactory_VTable;

void* QNetworkProxyFactory_vdata(VirtualQNetworkProxyFactory* self);
VirtualQNetworkProxyFactory* vdata_QNetworkProxyFactory(void* vdata);

VirtualQNetworkProxyFactory* QNetworkProxyFactory_new(const QNetworkProxyFactory_VTable* vtbl, size_t vdata);

struct seaqt_array /* of QNetworkProxy* */  QNetworkProxyFactory_queryProxy(QNetworkProxyFactory* self, QNetworkProxyQuery* query);
bool QNetworkProxyFactory_usesSystemConfiguration();
void QNetworkProxyFactory_setUseSystemConfiguration(bool enable);
void QNetworkProxyFactory_setApplicationProxyFactory(QNetworkProxyFactory* factory);
struct seaqt_array /* of QNetworkProxy* */  QNetworkProxyFactory_proxyForQuery(QNetworkProxyQuery* query);
struct seaqt_array /* of QNetworkProxy* */  QNetworkProxyFactory_systemProxyForQuery();
void QNetworkProxyFactory_operatorAssign(QNetworkProxyFactory* self, QNetworkProxyFactory* param1);
struct seaqt_array /* of QNetworkProxy* */  QNetworkProxyFactory_systemProxyForQueryWithQuery(QNetworkProxyQuery* query);

struct seaqt_array /* of QNetworkProxy* */  QNetworkProxyFactory_virtualbase_queryProxy(VirtualQNetworkProxyFactory* self, QNetworkProxyQuery* query);

void QNetworkProxyFactory_delete(QNetworkProxyFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
