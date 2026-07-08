#include <QByteArray>
#include <QHttpHeaders>
#include <QNetworkRequest>
#include <QNetworkRequestFactory>
#include <QSslConfiguration>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QUrlQuery>
#include <QVariant>
#include <qnetworkrequestfactory.h>
#include "gen_qnetworkrequestfactory.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QNetworkRequestFactory* QNetworkRequestFactory_new() {
	return new (std::nothrow) QNetworkRequestFactory();
}

QNetworkRequestFactory* QNetworkRequestFactory_new_baseUrl(QUrl* baseUrl) {
	return new (std::nothrow) QNetworkRequestFactory(*baseUrl);
}

QNetworkRequestFactory* QNetworkRequestFactory_new_from(QNetworkRequestFactory* from) {
	return new (std::nothrow) QNetworkRequestFactory(*from);
}

void QNetworkRequestFactory_operatorAssign(QNetworkRequestFactory* self, QNetworkRequestFactory* from) {
	self->operator=(*from);
}

void QNetworkRequestFactory_swap(QNetworkRequestFactory* self, QNetworkRequestFactory* other) {
	self->swap(*other);
}

QUrl* QNetworkRequestFactory_baseUrl(const QNetworkRequestFactory* self) {
	return new QUrl(self->baseUrl());
}

void QNetworkRequestFactory_setBaseUrl(QNetworkRequestFactory* self, QUrl* url) {
	self->setBaseUrl(*url);
}

QSslConfiguration* QNetworkRequestFactory_sslConfiguration(const QNetworkRequestFactory* self) {
	return new QSslConfiguration(self->sslConfiguration());
}

void QNetworkRequestFactory_setSslConfiguration(QNetworkRequestFactory* self, QSslConfiguration* configuration) {
	self->setSslConfiguration(*configuration);
}

QNetworkRequest* QNetworkRequestFactory_createRequest(const QNetworkRequestFactory* self) {
	return new QNetworkRequest(self->createRequest());
}

QNetworkRequest* QNetworkRequestFactory_createRequest_query(const QNetworkRequestFactory* self, QUrlQuery* query) {
	return new QNetworkRequest(self->createRequest(*query));
}

QNetworkRequest* QNetworkRequestFactory_createRequest_path(const QNetworkRequestFactory* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new QNetworkRequest(self->createRequest(path_QString));
}

QNetworkRequest* QNetworkRequestFactory_createRequest_path_query(const QNetworkRequestFactory* self, struct seaqt_string path, QUrlQuery* query) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	return new QNetworkRequest(self->createRequest(path_QString, *query));
}

void QNetworkRequestFactory_setCommonHeaders(QNetworkRequestFactory* self, QHttpHeaders* headers) {
	self->setCommonHeaders(*headers);
}

QHttpHeaders* QNetworkRequestFactory_commonHeaders(const QNetworkRequestFactory* self) {
	return new QHttpHeaders(self->commonHeaders());
}

void QNetworkRequestFactory_clearCommonHeaders(QNetworkRequestFactory* self) {
	self->clearCommonHeaders();
}

struct seaqt_string QNetworkRequestFactory_bearerToken(const QNetworkRequestFactory* self) {
	QByteArray _qb = self->bearerToken();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QNetworkRequestFactory_setBearerToken(QNetworkRequestFactory* self, struct seaqt_string token) {
	QByteArray token_QByteArray(token.data, token.len);
	self->setBearerToken(token_QByteArray);
}

void QNetworkRequestFactory_clearBearerToken(QNetworkRequestFactory* self) {
	self->clearBearerToken();
}

struct seaqt_string QNetworkRequestFactory_userName(const QNetworkRequestFactory* self) {
	QString _ret = self->userName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QNetworkRequestFactory_setUserName(QNetworkRequestFactory* self, struct seaqt_string userName) {
	QString userName_QString = QString::fromUtf8(userName.data, userName.len);
	self->setUserName(userName_QString);
}

void QNetworkRequestFactory_clearUserName(QNetworkRequestFactory* self) {
	self->clearUserName();
}

struct seaqt_string QNetworkRequestFactory_password(const QNetworkRequestFactory* self) {
	QString _ret = self->password();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QNetworkRequestFactory_setPassword(QNetworkRequestFactory* self, struct seaqt_string password) {
	QString password_QString = QString::fromUtf8(password.data, password.len);
	self->setPassword(password_QString);
}

void QNetworkRequestFactory_clearPassword(QNetworkRequestFactory* self) {
	self->clearPassword();
}

QUrlQuery* QNetworkRequestFactory_queryParameters(const QNetworkRequestFactory* self) {
	return new QUrlQuery(self->queryParameters());
}

void QNetworkRequestFactory_setQueryParameters(QNetworkRequestFactory* self, QUrlQuery* query) {
	self->setQueryParameters(*query);
}

void QNetworkRequestFactory_clearQueryParameters(QNetworkRequestFactory* self) {
	self->clearQueryParameters();
}

void QNetworkRequestFactory_setPriority(QNetworkRequestFactory* self, int priority) {
	self->setPriority(static_cast<QNetworkRequest::Priority>(priority));
}

int QNetworkRequestFactory_priority(const QNetworkRequestFactory* self) {
	QNetworkRequest::Priority _ret = self->priority();
	return static_cast<int>(_ret);
}

QVariant* QNetworkRequestFactory_attribute_attribute(const QNetworkRequestFactory* self, int attribute) {
	return new QVariant(self->attribute(static_cast<QNetworkRequest::Attribute>(attribute)));
}

QVariant* QNetworkRequestFactory_attribute_attribute_defaultValue(const QNetworkRequestFactory* self, int attribute, QVariant* defaultValue) {
	return new QVariant(self->attribute(static_cast<QNetworkRequest::Attribute>(attribute), *defaultValue));
}

void QNetworkRequestFactory_setAttribute(QNetworkRequestFactory* self, int attribute, QVariant* value) {
	self->setAttribute(static_cast<QNetworkRequest::Attribute>(attribute), *value);
}

void QNetworkRequestFactory_clearAttribute(QNetworkRequestFactory* self, int attribute) {
	self->clearAttribute(static_cast<QNetworkRequest::Attribute>(attribute));
}

void QNetworkRequestFactory_clearAttributes(QNetworkRequestFactory* self) {
	self->clearAttributes();
}

void QNetworkRequestFactory_delete(QNetworkRequestFactory* self) {
	delete self;
}

