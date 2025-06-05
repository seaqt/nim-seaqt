#include <QSslCertificate>
#include <QUrl>
#include <QVector>
#include <QWebEngineClientCertificateSelection>
#include <qwebengineclientcertificateselection.h>
#include "gen_qwebengineclientcertificateselection.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QWebEngineClientCertificateSelection* QWebEngineClientCertificateSelection_new(QWebEngineClientCertificateSelection* param1) {
	return new (std::nothrow) QWebEngineClientCertificateSelection(*param1);
}

void QWebEngineClientCertificateSelection_operatorAssign(QWebEngineClientCertificateSelection* self, QWebEngineClientCertificateSelection* param1) {
	self->operator=(*param1);
}

QUrl* QWebEngineClientCertificateSelection_host(const QWebEngineClientCertificateSelection* self) {
	return new QUrl(self->host());
}

void QWebEngineClientCertificateSelection_select(QWebEngineClientCertificateSelection* self, QSslCertificate* certificate) {
	self->select(*certificate);
}

void QWebEngineClientCertificateSelection_selectNone(QWebEngineClientCertificateSelection* self) {
	self->selectNone();
}

struct seaqt_array /* of QSslCertificate* */  QWebEngineClientCertificateSelection_certificates(const QWebEngineClientCertificateSelection* self) {
	QVector<QSslCertificate> _ret = self->certificates();
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

void QWebEngineClientCertificateSelection_delete(QWebEngineClientCertificateSelection* self) {
	delete self;
}

