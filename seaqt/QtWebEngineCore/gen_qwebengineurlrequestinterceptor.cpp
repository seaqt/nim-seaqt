#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebEngineUrlRequestInfo>
#include <QWebEngineUrlRequestInterceptor>
#include <qwebengineurlrequestinterceptor.h>
#include "gen_qwebengineurlrequestinterceptor.h"
class VirtualQWebEngineUrlRequestInterceptor final : public QWebEngineUrlRequestInterceptor {
	const QWebEngineUrlRequestInterceptor_VTable* vtbl;
	void* vdata;
public:
	friend const QWebEngineUrlRequestInterceptor_VTable* QWebEngineUrlRequestInterceptor_vtbl(const VirtualQWebEngineUrlRequestInterceptor* self);
	friend void* QWebEngineUrlRequestInterceptor_vdata(const VirtualQWebEngineUrlRequestInterceptor* self);
	friend void QWebEngineUrlRequestInterceptor_setVdata(VirtualQWebEngineUrlRequestInterceptor* self, void* vdata);

	VirtualQWebEngineUrlRequestInterceptor(const QWebEngineUrlRequestInterceptor_VTable* vtbl, void* vdata): QWebEngineUrlRequestInterceptor(), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebEngineUrlRequestInterceptor(const QWebEngineUrlRequestInterceptor_VTable* vtbl, void* vdata, QObject* p): QWebEngineUrlRequestInterceptor(p), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWebEngineUrlRequestInterceptor() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebEngineUrlRequestInterceptor::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWebEngineUrlRequestInterceptor_virtualbase_metaObject(const VirtualQWebEngineUrlRequestInterceptor* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebEngineUrlRequestInterceptor::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWebEngineUrlRequestInterceptor_virtualbase_metacast(VirtualQWebEngineUrlRequestInterceptor* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebEngineUrlRequestInterceptor::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineUrlRequestInterceptor_virtualbase_metacall(VirtualQWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3);

	virtual void interceptRequest(QWebEngineUrlRequestInfo& info) override {
		if (vtbl->interceptRequest == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWebEngineUrlRequestInfo& info_ret = info;
		// Cast returned reference into pointer
		QWebEngineUrlRequestInfo* sigval1 = &info_ret;

		vtbl->interceptRequest(this, sigval1);

	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebEngineUrlRequestInterceptor::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWebEngineUrlRequestInterceptor_virtualbase_event(VirtualQWebEngineUrlRequestInterceptor* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebEngineUrlRequestInterceptor::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebEngineUrlRequestInterceptor_virtualbase_eventFilter(VirtualQWebEngineUrlRequestInterceptor* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebEngineUrlRequestInterceptor::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWebEngineUrlRequestInterceptor_virtualbase_timerEvent(VirtualQWebEngineUrlRequestInterceptor* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebEngineUrlRequestInterceptor::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWebEngineUrlRequestInterceptor_virtualbase_childEvent(VirtualQWebEngineUrlRequestInterceptor* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebEngineUrlRequestInterceptor::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWebEngineUrlRequestInterceptor_virtualbase_customEvent(VirtualQWebEngineUrlRequestInterceptor* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebEngineUrlRequestInterceptor::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWebEngineUrlRequestInterceptor_virtualbase_connectNotify(VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebEngineUrlRequestInterceptor::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebEngineUrlRequestInterceptor_protectedbase_sender(const VirtualQWebEngineUrlRequestInterceptor* self);
	friend int QWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex(const VirtualQWebEngineUrlRequestInterceptor* self);
	friend int QWebEngineUrlRequestInterceptor_protectedbase_receivers(const VirtualQWebEngineUrlRequestInterceptor* self, const char* signal);
	friend bool QWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected(const VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal);
};

VirtualQWebEngineUrlRequestInterceptor* QWebEngineUrlRequestInterceptor_new(const QWebEngineUrlRequestInterceptor_VTable* vtbl, void* vdata) {
	return new VirtualQWebEngineUrlRequestInterceptor(vtbl, vdata);
}

VirtualQWebEngineUrlRequestInterceptor* QWebEngineUrlRequestInterceptor_new2(const QWebEngineUrlRequestInterceptor_VTable* vtbl, void* vdata, QObject* p) {
	return new VirtualQWebEngineUrlRequestInterceptor(vtbl, vdata, p);
}

void QWebEngineUrlRequestInterceptor_virtbase(QWebEngineUrlRequestInterceptor* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineUrlRequestInterceptor_metaObject(const QWebEngineUrlRequestInterceptor* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineUrlRequestInterceptor_metacast(QWebEngineUrlRequestInterceptor* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineUrlRequestInterceptor_metacall(QWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineUrlRequestInterceptor_tr(const char* s) {
	QString _ret = QWebEngineUrlRequestInterceptor::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlRequestInterceptor_trUtf8(const char* s) {
	QString _ret = QWebEngineUrlRequestInterceptor::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineUrlRequestInterceptor_interceptRequest(QWebEngineUrlRequestInterceptor* self, QWebEngineUrlRequestInfo* info) {
	self->interceptRequest(*info);
}

struct miqt_string QWebEngineUrlRequestInterceptor_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineUrlRequestInterceptor::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlRequestInterceptor_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineUrlRequestInterceptor::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlRequestInterceptor_trUtf82(const char* s, const char* c) {
	QString _ret = QWebEngineUrlRequestInterceptor::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlRequestInterceptor_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebEngineUrlRequestInterceptor::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebEngineUrlRequestInterceptor_virtualbase_metaObject(const VirtualQWebEngineUrlRequestInterceptor* self) {

	return (QMetaObject*) self->QWebEngineUrlRequestInterceptor::metaObject();
}

void* QWebEngineUrlRequestInterceptor_virtualbase_metacast(VirtualQWebEngineUrlRequestInterceptor* self, const char* param1) {

	return self->QWebEngineUrlRequestInterceptor::qt_metacast(param1);
}

int QWebEngineUrlRequestInterceptor_virtualbase_metacall(VirtualQWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3) {

	return self->QWebEngineUrlRequestInterceptor::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWebEngineUrlRequestInterceptor_virtualbase_event(VirtualQWebEngineUrlRequestInterceptor* self, QEvent* event) {

	return self->QWebEngineUrlRequestInterceptor::event(event);
}

bool QWebEngineUrlRequestInterceptor_virtualbase_eventFilter(VirtualQWebEngineUrlRequestInterceptor* self, QObject* watched, QEvent* event) {

	return self->QWebEngineUrlRequestInterceptor::eventFilter(watched, event);
}

void QWebEngineUrlRequestInterceptor_virtualbase_timerEvent(VirtualQWebEngineUrlRequestInterceptor* self, QTimerEvent* event) {

	self->QWebEngineUrlRequestInterceptor::timerEvent(event);
}

void QWebEngineUrlRequestInterceptor_virtualbase_childEvent(VirtualQWebEngineUrlRequestInterceptor* self, QChildEvent* event) {

	self->QWebEngineUrlRequestInterceptor::childEvent(event);
}

void QWebEngineUrlRequestInterceptor_virtualbase_customEvent(VirtualQWebEngineUrlRequestInterceptor* self, QEvent* event) {

	self->QWebEngineUrlRequestInterceptor::customEvent(event);
}

void QWebEngineUrlRequestInterceptor_virtualbase_connectNotify(VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal) {

	self->QWebEngineUrlRequestInterceptor::connectNotify(*signal);
}

void QWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal) {

	self->QWebEngineUrlRequestInterceptor::disconnectNotify(*signal);
}

const QMetaObject* QWebEngineUrlRequestInterceptor_staticMetaObject() { return &QWebEngineUrlRequestInterceptor::staticMetaObject; }

const QWebEngineUrlRequestInterceptor_VTable* QWebEngineUrlRequestInterceptor_vtbl(const VirtualQWebEngineUrlRequestInterceptor* self) { return self->vtbl; }
void* QWebEngineUrlRequestInterceptor_vdata(const VirtualQWebEngineUrlRequestInterceptor* self) { return self->vdata; }
void QWebEngineUrlRequestInterceptor_setVdata(VirtualQWebEngineUrlRequestInterceptor* self, void* vdata) { self->vdata = vdata; }

QObject* QWebEngineUrlRequestInterceptor_protectedbase_sender(const VirtualQWebEngineUrlRequestInterceptor* self) {
	return self->sender();
}

int QWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex(const VirtualQWebEngineUrlRequestInterceptor* self) {
	return self->senderSignalIndex();
}

int QWebEngineUrlRequestInterceptor_protectedbase_receivers(const VirtualQWebEngineUrlRequestInterceptor* self, const char* signal) {
	return self->receivers(signal);
}

bool QWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected(const VirtualQWebEngineUrlRequestInterceptor* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWebEngineUrlRequestInterceptor_delete(QWebEngineUrlRequestInterceptor* self) {
	delete self;
}

