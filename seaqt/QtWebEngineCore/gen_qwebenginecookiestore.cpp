#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkCookie>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineCookieStore>
#define WORKAROUND_INNER_CLASS_DEFINITION_QWebEngineCookieStore__FilterRequest
#include <qwebenginecookiestore.h>
#include "gen_qwebenginecookiestore.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QWebEngineCookieStore_virtbase(QWebEngineCookieStore* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineCookieStore_metaObject(const QWebEngineCookieStore* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineCookieStore_metacast(QWebEngineCookieStore* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineCookieStore_metacall(QWebEngineCookieStore* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebEngineCookieStore_tr_s(const char* s) {
	QString _ret = QWebEngineCookieStore::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineCookieStore_trUtf8_s(const char* s) {
	QString _ret = QWebEngineCookieStore::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineCookieStore_setCookie_cookie(QWebEngineCookieStore* self, QNetworkCookie* cookie) {
	self->setCookie(*cookie);
}

void QWebEngineCookieStore_deleteCookie_cookie(QWebEngineCookieStore* self, QNetworkCookie* cookie) {
	self->deleteCookie(*cookie);
}

void QWebEngineCookieStore_deleteSessionCookies(QWebEngineCookieStore* self) {
	self->deleteSessionCookies();
}

void QWebEngineCookieStore_deleteAllCookies(QWebEngineCookieStore* self) {
	self->deleteAllCookies();
}

void QWebEngineCookieStore_loadAllCookies(QWebEngineCookieStore* self) {
	self->loadAllCookies();
}

void QWebEngineCookieStore_cookieAdded(QWebEngineCookieStore* self, QNetworkCookie* cookie) {
	self->cookieAdded(*cookie);
}

void QWebEngineCookieStore_connect_cookieAdded(QWebEngineCookieStore* self, intptr_t slot, void (*callback)(intptr_t, QNetworkCookie*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QNetworkCookie*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QNetworkCookie*);
		void operator()(const QNetworkCookie& cookie) {
			const QNetworkCookie& cookie_ret = cookie;
			// Cast returned reference into pointer
			QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
			callback(slot, sigval1);
		}
	};
	QWebEngineCookieStore::connect(self, static_cast<void (QWebEngineCookieStore::*)(const QNetworkCookie&)>(&QWebEngineCookieStore::cookieAdded), self, local_caller{slot, callback, release});
}

void QWebEngineCookieStore_cookieRemoved(QWebEngineCookieStore* self, QNetworkCookie* cookie) {
	self->cookieRemoved(*cookie);
}

void QWebEngineCookieStore_connect_cookieRemoved(QWebEngineCookieStore* self, intptr_t slot, void (*callback)(intptr_t, QNetworkCookie*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QNetworkCookie*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QNetworkCookie*);
		void operator()(const QNetworkCookie& cookie) {
			const QNetworkCookie& cookie_ret = cookie;
			// Cast returned reference into pointer
			QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
			callback(slot, sigval1);
		}
	};
	QWebEngineCookieStore::connect(self, static_cast<void (QWebEngineCookieStore::*)(const QNetworkCookie&)>(&QWebEngineCookieStore::cookieRemoved), self, local_caller{slot, callback, release});
}

struct seaqt_string QWebEngineCookieStore_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebEngineCookieStore::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineCookieStore_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebEngineCookieStore::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineCookieStore_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebEngineCookieStore::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineCookieStore_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebEngineCookieStore::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineCookieStore_setCookie_cookie_origin(QWebEngineCookieStore* self, QNetworkCookie* cookie, QUrl* origin) {
	self->setCookie(*cookie, *origin);
}

void QWebEngineCookieStore_deleteCookie_cookie_origin(QWebEngineCookieStore* self, QNetworkCookie* cookie, QUrl* origin) {
	self->deleteCookie(*cookie, *origin);
}

const QMetaObject* QWebEngineCookieStore_staticMetaObject() { return &QWebEngineCookieStore::staticMetaObject; }
void QWebEngineCookieStore_delete(QWebEngineCookieStore* self) {
	delete self;
}

QWebEngineCookieStore__FilterRequest* QWebEngineCookieStore__FilterRequest_new(QWebEngineCookieStore__FilterRequest* from) {
	return new (std::nothrow) QWebEngineCookieStore__FilterRequest(*from);
}

QUrl* QWebEngineCookieStore__FilterRequest_firstPartyUrl(const QWebEngineCookieStore__FilterRequest* self) {
	return new QUrl(self->firstPartyUrl);
}

void QWebEngineCookieStore__FilterRequest_setFirstPartyUrl(QWebEngineCookieStore__FilterRequest* self, QUrl* firstPartyUrl) {
	self->firstPartyUrl = *firstPartyUrl;
}

QUrl* QWebEngineCookieStore__FilterRequest_origin(const QWebEngineCookieStore__FilterRequest* self) {
	return new QUrl(self->origin);
}

void QWebEngineCookieStore__FilterRequest_setOrigin(QWebEngineCookieStore__FilterRequest* self, QUrl* origin) {
	self->origin = *origin;
}

bool QWebEngineCookieStore__FilterRequest_thirdParty(const QWebEngineCookieStore__FilterRequest* self) {
	return self->thirdParty;
}

void QWebEngineCookieStore__FilterRequest_setThirdParty(QWebEngineCookieStore__FilterRequest* self, bool thirdParty) {
	self->thirdParty = thirdParty;
}

bool QWebEngineCookieStore__FilterRequest__reservedFlag(const QWebEngineCookieStore__FilterRequest* self) {
	return self->_reservedFlag;
}

void QWebEngineCookieStore__FilterRequest_set_reservedFlag(QWebEngineCookieStore__FilterRequest* self, bool _reservedFlag) {
	self->_reservedFlag = _reservedFlag;
}

unsigned short QWebEngineCookieStore__FilterRequest__reservedType(const QWebEngineCookieStore__FilterRequest* self) {
	ushort _reservedType_ret = self->_reservedType;
	return static_cast<unsigned short>(_reservedType_ret);
}

void QWebEngineCookieStore__FilterRequest_set_reservedType(QWebEngineCookieStore__FilterRequest* self, unsigned short _reservedType) {
	self->_reservedType = static_cast<ushort>(_reservedType);
}

void QWebEngineCookieStore__FilterRequest_operatorAssign(QWebEngineCookieStore__FilterRequest* self, QWebEngineCookieStore__FilterRequest* from) {
	self->operator=(*from);
}

void QWebEngineCookieStore__FilterRequest_delete(QWebEngineCookieStore__FilterRequest* self) {
	delete self;
}

