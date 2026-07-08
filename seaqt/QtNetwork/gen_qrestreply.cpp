#include <QByteArray>
#include <QNetworkReply>
#include <QRestReply>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qrestreply.h>
#include "gen_qrestreply.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QRestReply* QRestReply_new(QNetworkReply* reply) {
	return new (std::nothrow) QRestReply(reply);
}

void QRestReply_swap(QRestReply* self, QRestReply* other) {
	self->swap(*other);
}

QNetworkReply* QRestReply_networkReply(const QRestReply* self) {
	return self->networkReply();
}

struct seaqt_string QRestReply_readBody(QRestReply* self) {
	QByteArray _qb = self->readBody();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct seaqt_string QRestReply_readText(QRestReply* self) {
	QString _ret = self->readText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QRestReply_isSuccess(const QRestReply* self) {
	return self->isSuccess();
}

int QRestReply_httpStatus(const QRestReply* self) {
	return self->httpStatus();
}

bool QRestReply_isHttpStatusSuccess(const QRestReply* self) {
	return self->isHttpStatusSuccess();
}

bool QRestReply_hasError(const QRestReply* self) {
	return self->hasError();
}

int QRestReply_error(const QRestReply* self) {
	QNetworkReply::NetworkError _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QRestReply_errorString(const QRestReply* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QRestReply_delete(QRestReply* self) {
	delete self;
}

