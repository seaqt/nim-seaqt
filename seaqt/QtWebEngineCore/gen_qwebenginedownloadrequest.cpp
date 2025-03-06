#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineDownloadRequest>
#include <QWebEnginePage>
#include <qwebenginedownloadrequest.h>
#include "gen_qwebenginedownloadrequest.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

void QWebEngineDownloadRequest_virtbase(QWebEngineDownloadRequest* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineDownloadRequest_metaObject(const QWebEngineDownloadRequest* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineDownloadRequest_metacast(QWebEngineDownloadRequest* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineDownloadRequest_metacall(QWebEngineDownloadRequest* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineDownloadRequest_tr(const char* s) {
	QString _ret = QWebEngineDownloadRequest::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned int QWebEngineDownloadRequest_id(const QWebEngineDownloadRequest* self) {
	quint32 _ret = self->id();
	return static_cast<unsigned int>(_ret);
}

int QWebEngineDownloadRequest_state(const QWebEngineDownloadRequest* self) {
	QWebEngineDownloadRequest::DownloadState _ret = self->state();
	return static_cast<int>(_ret);
}

long long QWebEngineDownloadRequest_totalBytes(const QWebEngineDownloadRequest* self) {
	qint64 _ret = self->totalBytes();
	return static_cast<long long>(_ret);
}

long long QWebEngineDownloadRequest_receivedBytes(const QWebEngineDownloadRequest* self) {
	qint64 _ret = self->receivedBytes();
	return static_cast<long long>(_ret);
}

QUrl* QWebEngineDownloadRequest_url(const QWebEngineDownloadRequest* self) {
	return new QUrl(self->url());
}

struct miqt_string QWebEngineDownloadRequest_mimeType(const QWebEngineDownloadRequest* self) {
	QString _ret = self->mimeType();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebEngineDownloadRequest_isFinished(const QWebEngineDownloadRequest* self) {
	return self->isFinished();
}

bool QWebEngineDownloadRequest_isPaused(const QWebEngineDownloadRequest* self) {
	return self->isPaused();
}

int QWebEngineDownloadRequest_savePageFormat(const QWebEngineDownloadRequest* self) {
	QWebEngineDownloadRequest::SavePageFormat _ret = self->savePageFormat();
	return static_cast<int>(_ret);
}

void QWebEngineDownloadRequest_setSavePageFormat(QWebEngineDownloadRequest* self, int format) {
	self->setSavePageFormat(static_cast<QWebEngineDownloadRequest::SavePageFormat>(format));
}

int QWebEngineDownloadRequest_interruptReason(const QWebEngineDownloadRequest* self) {
	QWebEngineDownloadRequest::DownloadInterruptReason _ret = self->interruptReason();
	return static_cast<int>(_ret);
}

struct miqt_string QWebEngineDownloadRequest_interruptReasonString(const QWebEngineDownloadRequest* self) {
	QString _ret = self->interruptReasonString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebEngineDownloadRequest_isSavePageDownload(const QWebEngineDownloadRequest* self) {
	return self->isSavePageDownload();
}

struct miqt_string QWebEngineDownloadRequest_suggestedFileName(const QWebEngineDownloadRequest* self) {
	QString _ret = self->suggestedFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineDownloadRequest_downloadDirectory(const QWebEngineDownloadRequest* self) {
	QString _ret = self->downloadDirectory();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineDownloadRequest_setDownloadDirectory(QWebEngineDownloadRequest* self, struct miqt_string directory) {
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	self->setDownloadDirectory(directory_QString);
}

struct miqt_string QWebEngineDownloadRequest_downloadFileName(const QWebEngineDownloadRequest* self) {
	QString _ret = self->downloadFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineDownloadRequest_setDownloadFileName(QWebEngineDownloadRequest* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setDownloadFileName(fileName_QString);
}

QWebEnginePage* QWebEngineDownloadRequest_page(const QWebEngineDownloadRequest* self) {
	return self->page();
}

void QWebEngineDownloadRequest_accept(QWebEngineDownloadRequest* self) {
	self->accept();
}

void QWebEngineDownloadRequest_cancel(QWebEngineDownloadRequest* self) {
	self->cancel();
}

void QWebEngineDownloadRequest_pause(QWebEngineDownloadRequest* self) {
	self->pause();
}

void QWebEngineDownloadRequest_resume(QWebEngineDownloadRequest* self) {
	self->resume();
}

void QWebEngineDownloadRequest_stateChanged(QWebEngineDownloadRequest* self, int state) {
	self->stateChanged(static_cast<QWebEngineDownloadRequest::DownloadState>(state));
}

void QWebEngineDownloadRequest_connect_stateChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QWebEngineDownloadRequest::DownloadState state) {
			QWebEngineDownloadRequest::DownloadState state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)(QWebEngineDownloadRequest::DownloadState)>(&QWebEngineDownloadRequest::stateChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadRequest_savePageFormatChanged(QWebEngineDownloadRequest* self) {
	self->savePageFormatChanged();
}

void QWebEngineDownloadRequest_connect_savePageFormatChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)()>(&QWebEngineDownloadRequest::savePageFormatChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadRequest_receivedBytesChanged(QWebEngineDownloadRequest* self) {
	self->receivedBytesChanged();
}

void QWebEngineDownloadRequest_connect_receivedBytesChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)()>(&QWebEngineDownloadRequest::receivedBytesChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadRequest_totalBytesChanged(QWebEngineDownloadRequest* self) {
	self->totalBytesChanged();
}

void QWebEngineDownloadRequest_connect_totalBytesChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)()>(&QWebEngineDownloadRequest::totalBytesChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadRequest_interruptReasonChanged(QWebEngineDownloadRequest* self) {
	self->interruptReasonChanged();
}

void QWebEngineDownloadRequest_connect_interruptReasonChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)()>(&QWebEngineDownloadRequest::interruptReasonChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadRequest_isFinishedChanged(QWebEngineDownloadRequest* self) {
	self->isFinishedChanged();
}

void QWebEngineDownloadRequest_connect_isFinishedChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)()>(&QWebEngineDownloadRequest::isFinishedChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadRequest_isPausedChanged(QWebEngineDownloadRequest* self) {
	self->isPausedChanged();
}

void QWebEngineDownloadRequest_connect_isPausedChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)()>(&QWebEngineDownloadRequest::isPausedChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadRequest_downloadDirectoryChanged(QWebEngineDownloadRequest* self) {
	self->downloadDirectoryChanged();
}

void QWebEngineDownloadRequest_connect_downloadDirectoryChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)()>(&QWebEngineDownloadRequest::downloadDirectoryChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadRequest_downloadFileNameChanged(QWebEngineDownloadRequest* self) {
	self->downloadFileNameChanged();
}

void QWebEngineDownloadRequest_connect_downloadFileNameChanged(QWebEngineDownloadRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadRequest::connect(self, static_cast<void (QWebEngineDownloadRequest::*)()>(&QWebEngineDownloadRequest::downloadFileNameChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QWebEngineDownloadRequest_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineDownloadRequest::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineDownloadRequest_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineDownloadRequest::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebEngineDownloadRequest_staticMetaObject() { return &QWebEngineDownloadRequest::staticMetaObject; }
void QWebEngineDownloadRequest_delete(QWebEngineDownloadRequest* self) {
	delete self;
}

