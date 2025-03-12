#include <QEvent>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuickItemGrabResult>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <qquickitemgrabresult.h>
#include "gen_qquickitemgrabresult.h"
void QQuickItemGrabResult_virtbase(QQuickItemGrabResult* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickItemGrabResult_metaObject(const QQuickItemGrabResult* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickItemGrabResult_metacast(QQuickItemGrabResult* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickItemGrabResult_metacall(QQuickItemGrabResult* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickItemGrabResult_tr(const char* s) {
	QString _ret = QQuickItemGrabResult::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItemGrabResult_trUtf8(const char* s) {
	QString _ret = QQuickItemGrabResult::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QImage* QQuickItemGrabResult_image(const QQuickItemGrabResult* self) {
	return new QImage(self->image());
}

QUrl* QQuickItemGrabResult_url(const QQuickItemGrabResult* self) {
	return new QUrl(self->url());
}

bool QQuickItemGrabResult_saveToFile(QQuickItemGrabResult* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->saveToFile(fileName_QString);
}

bool QQuickItemGrabResult_saveToFileWithFileName(const QQuickItemGrabResult* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return self->saveToFile(fileName_QString);
}

void QQuickItemGrabResult_ready(QQuickItemGrabResult* self) {
	self->ready();
}

void QQuickItemGrabResult_connect_ready(QQuickItemGrabResult* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QQuickItemGrabResult::connect(self, static_cast<void (QQuickItemGrabResult::*)()>(&QQuickItemGrabResult::ready), self, local_caller{slot, callback, release});
}

struct miqt_string QQuickItemGrabResult_tr2(const char* s, const char* c) {
	QString _ret = QQuickItemGrabResult::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItemGrabResult_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickItemGrabResult::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItemGrabResult_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickItemGrabResult::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItemGrabResult_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickItemGrabResult::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QQuickItemGrabResult_staticMetaObject() { return &QQuickItemGrabResult::staticMetaObject; }

void QQuickItemGrabResult_delete(QQuickItemGrabResult* self) {
	delete self;
}

