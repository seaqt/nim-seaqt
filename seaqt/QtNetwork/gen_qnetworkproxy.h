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
class QNetworkConfiguration;
class QNetworkProxy;
class QNetworkProxyFactory;
class QNetworkProxyQuery;
class QUrl;
class QVariant;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkConfiguration QNetworkConfiguration;
typedef struct QNetworkProxy QNetworkProxy;
typedef struct QNetworkProxyFactory QNetworkProxyFactory;
typedef struct QNetworkProxyQuery QNetworkProxyQuery;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
#endif

QNetworkProxyQuery* QNetworkProxyQuery_new();
QNetworkProxyQuery* QNetworkProxyQuery_new_requestUrl(QUrl* requestUrl);
QNetworkProxyQuery* QNetworkProxyQuery_new_hostname_port(struct seaqt_string hostname, int port);
QNetworkProxyQuery* QNetworkProxyQuery_new_bindPort(unsigned short bindPort);
QNetworkProxyQuery* QNetworkProxyQuery_new_networkConfiguration_requestUrl(QNetworkConfiguration* networkConfiguration, QUrl* requestUrl);
QNetworkProxyQuery* QNetworkProxyQuery_new_networkConfiguration_hostname_port(QNetworkConfiguration* networkConfiguration, struct seaqt_string hostname, int port);
QNetworkProxyQuery* QNetworkProxyQuery_new_networkConfiguration_bindPort(QNetworkConfiguration* networkConfiguration, unsigned short bindPort);
QNetworkProxyQuery* QNetworkProxyQuery_new_from(QNetworkProxyQuery* from);
QNetworkProxyQuery* QNetworkProxyQuery_new_requestUrl_queryType(QUrl* requestUrl, int queryType);
QNetworkProxyQuery* QNetworkProxyQuery_new_hostname_port_protocolTag(struct seaqt_string hostname, int port, struct seaqt_string protocolTag);
QNetworkProxyQuery* QNetworkProxyQuery_new_hostname_port_protocolTag_queryType(struct seaqt_string hostname, int port, struct seaqt_string protocolTag, int queryType);
QNetworkProxyQuery* QNetworkProxyQuery_new_bindPort_protocolTag(unsigned short bindPort, struct seaqt_string protocolTag);
QNetworkProxyQuery* QNetworkProxyQuery_new_bindPort_protocolTag_queryType(unsigned short bindPort, struct seaqt_string protocolTag, int queryType);
QNetworkProxyQuery* QNetworkProxyQuery_new_networkConfiguration_requestUrl_queryType(QNetworkConfiguration* networkConfiguration, QUrl* requestUrl, int queryType);
QNetworkProxyQuery* QNetworkProxyQuery_new_networkConfiguration_hostname_port_protocolTag(QNetworkConfiguration* networkConfiguration, struct seaqt_string hostname, int port, struct seaqt_string protocolTag);
QNetworkProxyQuery* QNetworkProxyQuery_new_networkConfiguration_hostname_port_protocolTag_queryType(QNetworkConfiguration* networkConfiguration, struct seaqt_string hostname, int port, struct seaqt_string protocolTag, int queryType);
QNetworkProxyQuery* QNetworkProxyQuery_new_networkConfiguration_bindPort_protocolTag(QNetworkConfiguration* networkConfiguration, unsigned short bindPort, struct seaqt_string protocolTag);
QNetworkProxyQuery* QNetworkProxyQuery_new_networkConfiguration_bindPort_protocolTag_queryType(QNetworkConfiguration* networkConfiguration, unsigned short bindPort, struct seaqt_string protocolTag, int queryType);

void QNetworkProxyQuery_operatorAssign(QNetworkProxyQuery* self, QNetworkProxyQuery* from);
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
QNetworkConfiguration* QNetworkProxyQuery_networkConfiguration(const QNetworkProxyQuery* self);
void QNetworkProxyQuery_setNetworkConfiguration(QNetworkProxyQuery* self, QNetworkConfiguration* networkConfiguration);

const QMetaObject* QNetworkProxyQuery_staticMetaObject();
void QNetworkProxyQuery_delete(QNetworkProxyQuery* self);

QNetworkProxy* QNetworkProxy_new();
QNetworkProxy* QNetworkProxy_new_type(int type);
QNetworkProxy* QNetworkProxy_new_from(QNetworkProxy* from);
QNetworkProxy* QNetworkProxy_new_type_hostName(int type, struct seaqt_string hostName);
QNetworkProxy* QNetworkProxy_new_type_hostName_port(int type, struct seaqt_string hostName, unsigned short port);
QNetworkProxy* QNetworkProxy_new_type_hostName_port_user(int type, struct seaqt_string hostName, unsigned short port, struct seaqt_string user);
QNetworkProxy* QNetworkProxy_new_type_hostName_port_user_password(int type, struct seaqt_string hostName, unsigned short port, struct seaqt_string user, struct seaqt_string password);

void QNetworkProxy_operatorAssign(QNetworkProxy* self, QNetworkProxy* from);
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
void QNetworkProxyFactory_operatorAssign(QNetworkProxyFactory* self, QNetworkProxyFactory* from);
struct seaqt_array /* of QNetworkProxy* */  QNetworkProxyFactory_systemProxyForQuery_query(QNetworkProxyQuery* query);

struct seaqt_array /* of QNetworkProxy* */  QNetworkProxyFactory_virtualbase_queryProxy(VirtualQNetworkProxyFactory* self, QNetworkProxyQuery* query);

void QNetworkProxyFactory_delete(QNetworkProxyFactory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
