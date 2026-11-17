#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineDownloadItem>
#include <QWebEnginePage>
#include <qwebenginedownloaditem.h>
#include "gen_qwebenginedownloaditem.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QWebEngineDownloadItem_virtbase(QWebEngineDownloadItem* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineDownloadItem_metaObject(const QWebEngineDownloadItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineDownloadItem_metacast(QWebEngineDownloadItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineDownloadItem_metacall(QWebEngineDownloadItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebEngineDownloadItem_tr_s(const char* s) {
	QString _ret = QWebEngineDownloadItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineDownloadItem_trUtf8_s(const char* s) {
	QString _ret = QWebEngineDownloadItem::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

unsigned int QWebEngineDownloadItem_id(const QWebEngineDownloadItem* self) {
	quint32 _ret = self->id();
	return static_cast<unsigned int>(_ret);
}

int QWebEngineDownloadItem_state(const QWebEngineDownloadItem* self) {
	QWebEngineDownloadItem::DownloadState _ret = self->state();
	return static_cast<int>(_ret);
}

long long QWebEngineDownloadItem_totalBytes(const QWebEngineDownloadItem* self) {
	qint64 _ret = self->totalBytes();
	return static_cast<long long>(_ret);
}

long long QWebEngineDownloadItem_receivedBytes(const QWebEngineDownloadItem* self) {
	qint64 _ret = self->receivedBytes();
	return static_cast<long long>(_ret);
}

QUrl* QWebEngineDownloadItem_url(const QWebEngineDownloadItem* self) {
	return new QUrl(self->url());
}

struct seaqt_string QWebEngineDownloadItem_mimeType(const QWebEngineDownloadItem* self) {
	QString _ret = self->mimeType();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineDownloadItem_path(const QWebEngineDownloadItem* self) {
	QString _ret = self->path();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineDownloadItem_setPath(QWebEngineDownloadItem* self, struct seaqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->setPath(path_QString);
}

bool QWebEngineDownloadItem_isFinished(const QWebEngineDownloadItem* self) {
	return self->isFinished();
}

bool QWebEngineDownloadItem_isPaused(const QWebEngineDownloadItem* self) {
	return self->isPaused();
}

int QWebEngineDownloadItem_savePageFormat(const QWebEngineDownloadItem* self) {
	QWebEngineDownloadItem::SavePageFormat _ret = self->savePageFormat();
	return static_cast<int>(_ret);
}

void QWebEngineDownloadItem_setSavePageFormat(QWebEngineDownloadItem* self, int format) {
	self->setSavePageFormat(static_cast<QWebEngineDownloadItem::SavePageFormat>(format));
}

int QWebEngineDownloadItem_type(const QWebEngineDownloadItem* self) {
	QWebEngineDownloadItem::DownloadType _ret = self->type();
	return static_cast<int>(_ret);
}

int QWebEngineDownloadItem_interruptReason(const QWebEngineDownloadItem* self) {
	QWebEngineDownloadItem::DownloadInterruptReason _ret = self->interruptReason();
	return static_cast<int>(_ret);
}

struct seaqt_string QWebEngineDownloadItem_interruptReasonString(const QWebEngineDownloadItem* self) {
	QString _ret = self->interruptReasonString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebEngineDownloadItem_isSavePageDownload(const QWebEngineDownloadItem* self) {
	return self->isSavePageDownload();
}

struct seaqt_string QWebEngineDownloadItem_suggestedFileName(const QWebEngineDownloadItem* self) {
	QString _ret = self->suggestedFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineDownloadItem_downloadDirectory(const QWebEngineDownloadItem* self) {
	QString _ret = self->downloadDirectory();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineDownloadItem_setDownloadDirectory(QWebEngineDownloadItem* self, struct seaqt_string directory) {
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	self->setDownloadDirectory(directory_QString);
}

struct seaqt_string QWebEngineDownloadItem_downloadFileName(const QWebEngineDownloadItem* self) {
	QString _ret = self->downloadFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineDownloadItem_setDownloadFileName(QWebEngineDownloadItem* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setDownloadFileName(fileName_QString);
}

QWebEnginePage* QWebEngineDownloadItem_page(const QWebEngineDownloadItem* self) {
	return self->page();
}

void QWebEngineDownloadItem_accept(QWebEngineDownloadItem* self) {
	self->accept();
}

void QWebEngineDownloadItem_cancel(QWebEngineDownloadItem* self) {
	self->cancel();
}

void QWebEngineDownloadItem_pause(QWebEngineDownloadItem* self) {
	self->pause();
}

void QWebEngineDownloadItem_resume(QWebEngineDownloadItem* self) {
	self->resume();
}

void QWebEngineDownloadItem_finished(QWebEngineDownloadItem* self) {
	self->finished();
}

void QWebEngineDownloadItem_connect_finished(QWebEngineDownloadItem* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineDownloadItem::connect(self, static_cast<void (QWebEngineDownloadItem::*)()>(&QWebEngineDownloadItem::finished), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadItem_stateChanged(QWebEngineDownloadItem* self, int state) {
	self->stateChanged(static_cast<QWebEngineDownloadItem::DownloadState>(state));
}

void QWebEngineDownloadItem_connect_stateChanged(QWebEngineDownloadItem* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QWebEngineDownloadItem::DownloadState state) {
			QWebEngineDownloadItem::DownloadState state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	QWebEngineDownloadItem::connect(self, static_cast<void (QWebEngineDownloadItem::*)(QWebEngineDownloadItem::DownloadState)>(&QWebEngineDownloadItem::stateChanged), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadItem_downloadProgress(QWebEngineDownloadItem* self, long long bytesReceived, long long bytesTotal) {
	self->downloadProgress(static_cast<qint64>(bytesReceived), static_cast<qint64>(bytesTotal));
}

void QWebEngineDownloadItem_connect_downloadProgress(QWebEngineDownloadItem* self, intptr_t slot, void (*callback)(intptr_t, long long, long long), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, long long, long long), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, long long, long long);
		void operator()(qint64 bytesReceived, qint64 bytesTotal) {
			qint64 bytesReceived_ret = bytesReceived;
			long long sigval1 = static_cast<long long>(bytesReceived_ret);
			qint64 bytesTotal_ret = bytesTotal;
			long long sigval2 = static_cast<long long>(bytesTotal_ret);
			callback(slot, sigval1, sigval2);
		}
	};
	QWebEngineDownloadItem::connect(self, static_cast<void (QWebEngineDownloadItem::*)(qint64, qint64)>(&QWebEngineDownloadItem::downloadProgress), self, local_caller{slot, callback, release});
}

void QWebEngineDownloadItem_isPausedChanged(QWebEngineDownloadItem* self, bool isPaused) {
	self->isPausedChanged(isPaused);
}

void QWebEngineDownloadItem_connect_isPausedChanged(QWebEngineDownloadItem* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool isPaused) {
			bool sigval1 = isPaused;
			callback(slot, sigval1);
		}
	};
	QWebEngineDownloadItem::connect(self, static_cast<void (QWebEngineDownloadItem::*)(bool)>(&QWebEngineDownloadItem::isPausedChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QWebEngineDownloadItem_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebEngineDownloadItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineDownloadItem_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebEngineDownloadItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineDownloadItem_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QWebEngineDownloadItem::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineDownloadItem_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebEngineDownloadItem::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebEngineDownloadItem_staticMetaObject() { return &QWebEngineDownloadItem::staticMetaObject; }
void QWebEngineDownloadItem_delete(QWebEngineDownloadItem* self) {
	delete self;
}

