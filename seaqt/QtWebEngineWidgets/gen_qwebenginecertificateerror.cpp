#include <QList>
#include <QSslCertificate>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineCertificateError>
#include <qwebenginecertificateerror.h>
#include "gen_qwebenginecertificateerror.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineCertificateError* QWebEngineCertificateError_new_error_url_overridable_errorDescription(int error, QUrl* url, bool overridable, struct seaqt_string errorDescription) {
	QString errorDescription_QString = QString::fromUtf8(errorDescription.data, errorDescription.len);
	return new (std::nothrow) QWebEngineCertificateError(static_cast<int>(error), *url, overridable, errorDescription_QString);
}

QWebEngineCertificateError* QWebEngineCertificateError_new_from(QWebEngineCertificateError* from) {
	return new (std::nothrow) QWebEngineCertificateError(*from);
}

int QWebEngineCertificateError_error(const QWebEngineCertificateError* self) {
	QWebEngineCertificateError::Error _ret = self->error();
	return static_cast<int>(_ret);
}

QUrl* QWebEngineCertificateError_url(const QWebEngineCertificateError* self) {
	return new QUrl(self->url());
}

bool QWebEngineCertificateError_isOverridable(const QWebEngineCertificateError* self) {
	return self->isOverridable();
}

struct seaqt_string QWebEngineCertificateError_errorDescription(const QWebEngineCertificateError* self) {
	QString _ret = self->errorDescription();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineCertificateError_operatorAssign(QWebEngineCertificateError* self, QWebEngineCertificateError* from) {
	self->operator=(*from);
}

void QWebEngineCertificateError_defer(QWebEngineCertificateError* self) {
	self->defer();
}

bool QWebEngineCertificateError_deferred(const QWebEngineCertificateError* self) {
	return self->deferred();
}

void QWebEngineCertificateError_rejectCertificate(QWebEngineCertificateError* self) {
	self->rejectCertificate();
}

void QWebEngineCertificateError_ignoreCertificateError(QWebEngineCertificateError* self) {
	self->ignoreCertificateError();
}

bool QWebEngineCertificateError_answered(const QWebEngineCertificateError* self) {
	return self->answered();
}

struct seaqt_array /* of QSslCertificate* */  QWebEngineCertificateError_certificateChain(const QWebEngineCertificateError* self) {
	QList<QSslCertificate> _ret = self->certificateChain();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSslCertificate** _arr = static_cast<QSslCertificate**>(malloc(sizeof(QSslCertificate*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSslCertificate(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QWebEngineCertificateError_delete(QWebEngineCertificateError* self) {
	delete self;
}

