#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <QWebEngineNavigationRequest>
#include <qwebenginenavigationrequest.h>
#include "gen_qwebenginenavigationrequest.h"
void QWebEngineNavigationRequest_virtbase(QWebEngineNavigationRequest* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineNavigationRequest_metaObject(const QWebEngineNavigationRequest* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineNavigationRequest_metacast(QWebEngineNavigationRequest* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineNavigationRequest_metacall(QWebEngineNavigationRequest* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineNavigationRequest_tr(const char* s) {
	QString _ret = QWebEngineNavigationRequest::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QWebEngineNavigationRequest_url(const QWebEngineNavigationRequest* self) {
	return new QUrl(self->url());
}

bool QWebEngineNavigationRequest_isMainFrame(const QWebEngineNavigationRequest* self) {
	return self->isMainFrame();
}

int QWebEngineNavigationRequest_navigationType(const QWebEngineNavigationRequest* self) {
	QWebEngineNavigationRequest::NavigationType _ret = self->navigationType();
	return static_cast<int>(_ret);
}

void QWebEngineNavigationRequest_accept(QWebEngineNavigationRequest* self) {
	self->accept();
}

void QWebEngineNavigationRequest_reject(QWebEngineNavigationRequest* self) {
	self->reject();
}

void QWebEngineNavigationRequest_actionChanged(QWebEngineNavigationRequest* self) {
	self->actionChanged();
}

void QWebEngineNavigationRequest_connect_actionChanged(QWebEngineNavigationRequest* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QWebEngineNavigationRequest::connect(self, static_cast<void (QWebEngineNavigationRequest::*)()>(&QWebEngineNavigationRequest::actionChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QWebEngineNavigationRequest_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineNavigationRequest::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineNavigationRequest_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineNavigationRequest::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebEngineNavigationRequest_staticMetaObject() { return &QWebEngineNavigationRequest::staticMetaObject; }

void QWebEngineNavigationRequest_delete(QWebEngineNavigationRequest* self) {
	delete self;
}

