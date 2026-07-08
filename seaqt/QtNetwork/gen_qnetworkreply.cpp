#include <QAnyStringView>
#include <QString>
#include <QByteArray>
#include <QAnyStringView>
#include <QByteArray>
#include <QByteArrayView>
#include <QHttpHeaders>
#include <QIODevice>
#include <QIODeviceBase>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QObject>
#include <QSslConfiguration>
#include <QSslError>
#include <QSslPreSharedKeyAuthenticator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QVariant>
#include <qnetworkreply.h>
#include "gen_qnetworkreply.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QNetworkReply_virtbase(QNetworkReply* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QNetworkReply_metaObject(const QNetworkReply* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNetworkReply_metacast(QNetworkReply* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNetworkReply_metacall(QNetworkReply* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QNetworkReply_tr_s(const char* s) {
	QString _ret = QNetworkReply::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QNetworkReply_close(QNetworkReply* self) {
	self->close();
}

bool QNetworkReply_isSequential(const QNetworkReply* self) {
	return self->isSequential();
}

long long QNetworkReply_readBufferSize(const QNetworkReply* self) {
	qint64 _ret = self->readBufferSize();
	return static_cast<long long>(_ret);
}

void QNetworkReply_setReadBufferSize(QNetworkReply* self, long long size) {
	self->setReadBufferSize(static_cast<qint64>(size));
}

QNetworkAccessManager* QNetworkReply_manager(const QNetworkReply* self) {
	return self->manager();
}

int QNetworkReply_operation(const QNetworkReply* self) {
	QNetworkAccessManager::Operation _ret = self->operation();
	return static_cast<int>(_ret);
}

QNetworkRequest* QNetworkReply_request(const QNetworkReply* self) {
	return new QNetworkRequest(self->request());
}

int QNetworkReply_error(const QNetworkReply* self) {
	QNetworkReply::NetworkError _ret = self->error();
	return static_cast<int>(_ret);
}

bool QNetworkReply_isFinished(const QNetworkReply* self) {
	return self->isFinished();
}

bool QNetworkReply_isRunning(const QNetworkReply* self) {
	return self->isRunning();
}

QUrl* QNetworkReply_url(const QNetworkReply* self) {
	return new QUrl(self->url());
}

QVariant* QNetworkReply_header(const QNetworkReply* self, int header) {
	return new QVariant(self->header(static_cast<QNetworkRequest::KnownHeaders>(header)));
}

bool QNetworkReply_hasRawHeader(const QNetworkReply* self, struct seaqt_string headerName) {
	QAnyStringView headerName_QString = QAnyStringView(headerName.data, headerName.len);
	return self->hasRawHeader(headerName_QString);
}

struct seaqt_array /* of struct seaqt_string */  QNetworkReply_rawHeaderList(const QNetworkReply* self) {
	QList<QByteArray> _ret = self->rawHeaderList();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct seaqt_string* _arr = static_cast<struct seaqt_string*>(malloc(sizeof(struct seaqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QByteArray _lv_qb = _ret[i];
		struct seaqt_string _lv_ms;
		_lv_ms.len = _lv_qb.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_qb.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct seaqt_string QNetworkReply_rawHeader(const QNetworkReply* self, struct seaqt_string headerName) {
	QAnyStringView headerName_QString = QAnyStringView(headerName.data, headerName.len);
	QByteArray _qb = self->rawHeader(headerName_QString);
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QHttpHeaders* QNetworkReply_headers(const QNetworkReply* self) {
	return new QHttpHeaders(self->headers());
}

QVariant* QNetworkReply_attribute(const QNetworkReply* self, int code) {
	return new QVariant(self->attribute(static_cast<QNetworkRequest::Attribute>(code)));
}

QSslConfiguration* QNetworkReply_sslConfiguration(const QNetworkReply* self) {
	return new QSslConfiguration(self->sslConfiguration());
}

void QNetworkReply_setSslConfiguration(QNetworkReply* self, QSslConfiguration* configuration) {
	self->setSslConfiguration(*configuration);
}

void QNetworkReply_ignoreSslErrors_errors(QNetworkReply* self, struct seaqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->ignoreSslErrors(errors_QList);
}

void QNetworkReply_abort(QNetworkReply* self) {
	self->abort();
}

void QNetworkReply_ignoreSslErrors(QNetworkReply* self) {
	self->ignoreSslErrors();
}

void QNetworkReply_socketStartedConnecting(QNetworkReply* self) {
	self->socketStartedConnecting();
}

void QNetworkReply_connect_socketStartedConnecting(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)()>(&QNetworkReply::socketStartedConnecting), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QNetworkReply_requestSent(QNetworkReply* self) {
	self->requestSent();
}

void QNetworkReply_connect_requestSent(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)()>(&QNetworkReply::requestSent), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QNetworkReply_metaDataChanged(QNetworkReply* self) {
	self->metaDataChanged();
}

void QNetworkReply_connect_metaDataChanged(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)()>(&QNetworkReply::metaDataChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QNetworkReply_finished(QNetworkReply* self) {
	self->finished();
}

void QNetworkReply_connect_finished(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)()>(&QNetworkReply::finished), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QNetworkReply_errorOccurred(QNetworkReply* self, int param1) {
	self->errorOccurred(static_cast<QNetworkReply::NetworkError>(param1));
}

void QNetworkReply_connect_errorOccurred(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)(QNetworkReply::NetworkError)>(&QNetworkReply::errorOccurred), self, [callback, release = seaqt::release_callback{slot,release}](QNetworkReply::NetworkError param1) {
			QNetworkReply::NetworkError param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(release.slot, sigval1);
	});
}

void QNetworkReply_encrypted(QNetworkReply* self) {
	self->encrypted();
}

void QNetworkReply_connect_encrypted(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)()>(&QNetworkReply::encrypted), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QNetworkReply_sslErrors(QNetworkReply* self, struct seaqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->sslErrors(errors_QList);
}

void QNetworkReply_connect_sslErrors(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t, struct seaqt_array /* of QSslError* */ ), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)(const QList<QSslError>&)>(&QNetworkReply::sslErrors), self, [callback, release = seaqt::release_callback{slot,release}](const QList<QSslError>& errors) {
			const QList<QSslError>& errors_ret = errors;
			// Convert QList<> from C++ memory to manually-managed C memory
			QSslError** errors_arr = static_cast<QSslError**>(malloc(sizeof(QSslError*) * errors_ret.length()));
			for (size_t i = 0, e = errors_ret.length(); i < e; ++i) {
				errors_arr[i] = new QSslError(errors_ret[i]);
			}
			struct seaqt_array errors_out;
			errors_out.len = errors_ret.length();
			errors_out.data = static_cast<void*>(errors_arr);
			struct seaqt_array /* of QSslError* */  sigval1 = errors_out;
			callback(release.slot, sigval1);
	});
}

void QNetworkReply_preSharedKeyAuthenticationRequired(QNetworkReply* self, QSslPreSharedKeyAuthenticator* authenticator) {
	self->preSharedKeyAuthenticationRequired(authenticator);
}

void QNetworkReply_connect_preSharedKeyAuthenticationRequired(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t, QSslPreSharedKeyAuthenticator*), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)(QSslPreSharedKeyAuthenticator*)>(&QNetworkReply::preSharedKeyAuthenticationRequired), self, [callback, release = seaqt::release_callback{slot,release}](QSslPreSharedKeyAuthenticator* authenticator) {
			QSslPreSharedKeyAuthenticator* sigval1 = authenticator;
			callback(release.slot, sigval1);
	});
}

void QNetworkReply_redirected(QNetworkReply* self, QUrl* url) {
	self->redirected(*url);
}

void QNetworkReply_connect_redirected(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)(const QUrl&)>(&QNetworkReply::redirected), self, [callback, release = seaqt::release_callback{slot,release}](const QUrl& url) {
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
			callback(release.slot, sigval1);
	});
}

void QNetworkReply_redirectAllowed(QNetworkReply* self) {
	self->redirectAllowed();
}

void QNetworkReply_connect_redirectAllowed(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)()>(&QNetworkReply::redirectAllowed), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QNetworkReply_uploadProgress(QNetworkReply* self, long long bytesSent, long long bytesTotal) {
	self->uploadProgress(static_cast<qint64>(bytesSent), static_cast<qint64>(bytesTotal));
}

void QNetworkReply_connect_uploadProgress(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t, long long, long long), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)(qint64, qint64)>(&QNetworkReply::uploadProgress), self, [callback, release = seaqt::release_callback{slot,release}](qint64 bytesSent, qint64 bytesTotal) {
			qint64 bytesSent_ret = bytesSent;
			long long sigval1 = static_cast<long long>(bytesSent_ret);
			qint64 bytesTotal_ret = bytesTotal;
			long long sigval2 = static_cast<long long>(bytesTotal_ret);
			callback(release.slot, sigval1, sigval2);
	});
}

void QNetworkReply_downloadProgress(QNetworkReply* self, long long bytesReceived, long long bytesTotal) {
	self->downloadProgress(static_cast<qint64>(bytesReceived), static_cast<qint64>(bytesTotal));
}

void QNetworkReply_connect_downloadProgress(QNetworkReply* self, intptr_t slot, void (*callback)(intptr_t, long long, long long), void (*release)(intptr_t)) {
	QNetworkReply::connect(self, static_cast<void (QNetworkReply::*)(qint64, qint64)>(&QNetworkReply::downloadProgress), self, [callback, release = seaqt::release_callback{slot,release}](qint64 bytesReceived, qint64 bytesTotal) {
			qint64 bytesReceived_ret = bytesReceived;
			long long sigval1 = static_cast<long long>(bytesReceived_ret);
			qint64 bytesTotal_ret = bytesTotal;
			long long sigval2 = static_cast<long long>(bytesTotal_ret);
			callback(release.slot, sigval1, sigval2);
	});
}

struct seaqt_string QNetworkReply_tr_s_c(const char* s, const char* c) {
	QString _ret = QNetworkReply::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QNetworkReply_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QNetworkReply::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QNetworkReply_staticMetaObject() { return &QNetworkReply::staticMetaObject; }
void QNetworkReply_delete(QNetworkReply* self) {
	delete self;
}

