#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWebEngineWebAuthPinRequest>
#include <QWebEngineWebAuthUxRequest>
#include <qwebenginewebauthuxrequest.h>
#include "gen_qwebenginewebauthuxrequest.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QWebEngineWebAuthUxRequest_virtbase(QWebEngineWebAuthUxRequest* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineWebAuthUxRequest_metaObject(const QWebEngineWebAuthUxRequest* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineWebAuthUxRequest_metacast(QWebEngineWebAuthUxRequest* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineWebAuthUxRequest_metacall(QWebEngineWebAuthUxRequest* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebEngineWebAuthUxRequest_tr_s(const char* s) {
	QString _ret = QWebEngineWebAuthUxRequest::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of struct seaqt_string */  QWebEngineWebAuthUxRequest_userNames(const QWebEngineWebAuthUxRequest* self) {
	QStringList _ret = self->userNames();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QWebEngineWebAuthUxRequest_relyingPartyId(const QWebEngineWebAuthUxRequest* self) {
	QString _ret = self->relyingPartyId();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebEngineWebAuthPinRequest* QWebEngineWebAuthUxRequest_pinRequest(const QWebEngineWebAuthUxRequest* self) {
	return new QWebEngineWebAuthPinRequest(self->pinRequest());
}

int QWebEngineWebAuthUxRequest_state(const QWebEngineWebAuthUxRequest* self) {
	QWebEngineWebAuthUxRequest::WebAuthUxState _ret = self->state();
	return static_cast<int>(_ret);
}

int QWebEngineWebAuthUxRequest_requestFailureReason(const QWebEngineWebAuthUxRequest* self) {
	QWebEngineWebAuthUxRequest::RequestFailureReason _ret = self->requestFailureReason();
	return static_cast<int>(_ret);
}

void QWebEngineWebAuthUxRequest_stateChanged(QWebEngineWebAuthUxRequest* self, int state) {
	self->stateChanged(static_cast<QWebEngineWebAuthUxRequest::WebAuthUxState>(state));
}

void QWebEngineWebAuthUxRequest_connect_stateChanged(QWebEngineWebAuthUxRequest* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QWebEngineWebAuthUxRequest::connect(self, static_cast<void (QWebEngineWebAuthUxRequest::*)(QWebEngineWebAuthUxRequest::WebAuthUxState)>(&QWebEngineWebAuthUxRequest::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QWebEngineWebAuthUxRequest::WebAuthUxState state) {
			QWebEngineWebAuthUxRequest::WebAuthUxState state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(release.slot, sigval1);
	});
}

void QWebEngineWebAuthUxRequest_cancel(QWebEngineWebAuthUxRequest* self) {
	self->cancel();
}

void QWebEngineWebAuthUxRequest_retry(QWebEngineWebAuthUxRequest* self) {
	self->retry();
}

void QWebEngineWebAuthUxRequest_setSelectedAccount(QWebEngineWebAuthUxRequest* self, struct seaqt_string selectedAccount) {
	QString selectedAccount_QString = QString::fromUtf8(selectedAccount.data, selectedAccount.len);
	self->setSelectedAccount(selectedAccount_QString);
}

void QWebEngineWebAuthUxRequest_setPin(QWebEngineWebAuthUxRequest* self, struct seaqt_string pin) {
	QString pin_QString = QString::fromUtf8(pin.data, pin.len);
	self->setPin(pin_QString);
}

struct seaqt_string QWebEngineWebAuthUxRequest_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebEngineWebAuthUxRequest::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineWebAuthUxRequest_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebEngineWebAuthUxRequest::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebEngineWebAuthUxRequest_staticMetaObject() { return &QWebEngineWebAuthUxRequest::staticMetaObject; }
void QWebEngineWebAuthUxRequest_delete(QWebEngineWebAuthUxRequest* self) {
	delete self;
}

int QWebEngineWebAuthPinRequest_reason(const QWebEngineWebAuthPinRequest* self) {
	QWebEngineWebAuthUxRequest::PinEntryReason reason_ret = self->reason;
	return static_cast<int>(reason_ret);
}

void QWebEngineWebAuthPinRequest_setReason(QWebEngineWebAuthPinRequest* self, int reason) {
	self->reason = static_cast<QWebEngineWebAuthUxRequest::PinEntryReason>(reason);
}

int QWebEngineWebAuthPinRequest_error(const QWebEngineWebAuthPinRequest* self) {
	QWebEngineWebAuthUxRequest::PinEntryError error_ret = self->error;
	return static_cast<int>(error_ret);
}

void QWebEngineWebAuthPinRequest_setError(QWebEngineWebAuthPinRequest* self, int error) {
	self->error = static_cast<QWebEngineWebAuthUxRequest::PinEntryError>(error);
}

int QWebEngineWebAuthPinRequest_minPinLength(const QWebEngineWebAuthPinRequest* self) {
	qint32 minPinLength_ret = self->minPinLength;
	return static_cast<int>(minPinLength_ret);
}

void QWebEngineWebAuthPinRequest_setMinPinLength(QWebEngineWebAuthPinRequest* self, int minPinLength) {
	self->minPinLength = static_cast<qint32>(minPinLength);
}

int QWebEngineWebAuthPinRequest_remainingAttempts(const QWebEngineWebAuthPinRequest* self) {
	return self->remainingAttempts;
}

void QWebEngineWebAuthPinRequest_setRemainingAttempts(QWebEngineWebAuthPinRequest* self, int remainingAttempts) {
	self->remainingAttempts = static_cast<int>(remainingAttempts);
}

const QMetaObject* QWebEngineWebAuthPinRequest_staticMetaObject() { return &QWebEngineWebAuthPinRequest::staticMetaObject; }
void QWebEngineWebAuthPinRequest_delete(QWebEngineWebAuthPinRequest* self) {
	delete self;
}

