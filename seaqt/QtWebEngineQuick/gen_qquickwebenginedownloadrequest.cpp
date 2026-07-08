#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuickWebEngineDownloadRequest>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWebEngineDownloadRequest>
#include <qquickwebenginedownloadrequest.h>
#include "gen_qquickwebenginedownloadrequest.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QQuickWebEngineDownloadRequest_virtbase(QQuickWebEngineDownloadRequest* src, QWebEngineDownloadRequest** outptr_QWebEngineDownloadRequest) {
	*outptr_QWebEngineDownloadRequest = static_cast<QWebEngineDownloadRequest*>(src);
}

QMetaObject* QQuickWebEngineDownloadRequest_metaObject(const QQuickWebEngineDownloadRequest* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickWebEngineDownloadRequest_metacast(QQuickWebEngineDownloadRequest* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickWebEngineDownloadRequest_metacall(QQuickWebEngineDownloadRequest* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQuickWebEngineDownloadRequest_tr_s(const char* s) {
	QString _ret = QQuickWebEngineDownloadRequest::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickWebEngineDownloadRequest_qmlMarker_uncreatable(QQuickWebEngineDownloadRequest* self) {
	self->qt_qmlMarker_uncreatable();
}

struct seaqt_string QQuickWebEngineDownloadRequest_tr_s_c(const char* s, const char* c) {
	QString _ret = QQuickWebEngineDownloadRequest::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQuickWebEngineDownloadRequest_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQuickWebEngineDownloadRequest::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QQuickWebEngineDownloadRequest_staticMetaObject() { return &QQuickWebEngineDownloadRequest::staticMetaObject; }
void QQuickWebEngineDownloadRequest_delete(QQuickWebEngineDownloadRequest* self) {
	delete self;
}

