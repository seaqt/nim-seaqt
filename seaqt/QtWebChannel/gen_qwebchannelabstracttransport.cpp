#include <QChildEvent>
#include <QEvent>
#include <QJsonObject>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebChannelAbstractTransport>
#include <qwebchannelabstracttransport.h>
#include "gen_qwebchannelabstracttransport.h"
class VirtualQWebChannelAbstractTransport final : public QWebChannelAbstractTransport {
	const QWebChannelAbstractTransport_VTable* vtbl;
	void* vdata;
public:
	friend const QWebChannelAbstractTransport_VTable* QWebChannelAbstractTransport_vtbl(const VirtualQWebChannelAbstractTransport* self);
	friend void* QWebChannelAbstractTransport_vdata(const VirtualQWebChannelAbstractTransport* self);
	friend void QWebChannelAbstractTransport_setVdata(VirtualQWebChannelAbstractTransport* self, void* vdata);

	VirtualQWebChannelAbstractTransport(const QWebChannelAbstractTransport_VTable* vtbl, void* vdata): QWebChannelAbstractTransport(), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebChannelAbstractTransport(const QWebChannelAbstractTransport_VTable* vtbl, void* vdata, QObject* parent): QWebChannelAbstractTransport(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWebChannelAbstractTransport() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebChannelAbstractTransport::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWebChannelAbstractTransport_virtualbase_metaObject(const VirtualQWebChannelAbstractTransport* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebChannelAbstractTransport::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWebChannelAbstractTransport_virtualbase_metacast(VirtualQWebChannelAbstractTransport* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebChannelAbstractTransport::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebChannelAbstractTransport_virtualbase_metacall(VirtualQWebChannelAbstractTransport* self, int param1, int param2, void** param3);

	virtual void sendMessage(const QJsonObject& message) override {
		if (vtbl->sendMessage == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QJsonObject& message_ret = message;
		// Cast returned reference into pointer
		QJsonObject* sigval1 = const_cast<QJsonObject*>(&message_ret);

		vtbl->sendMessage(this, sigval1);

	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebChannelAbstractTransport::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWebChannelAbstractTransport_virtualbase_event(VirtualQWebChannelAbstractTransport* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebChannelAbstractTransport::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebChannelAbstractTransport_virtualbase_eventFilter(VirtualQWebChannelAbstractTransport* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebChannelAbstractTransport::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWebChannelAbstractTransport_virtualbase_timerEvent(VirtualQWebChannelAbstractTransport* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebChannelAbstractTransport::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWebChannelAbstractTransport_virtualbase_childEvent(VirtualQWebChannelAbstractTransport* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebChannelAbstractTransport::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWebChannelAbstractTransport_virtualbase_customEvent(VirtualQWebChannelAbstractTransport* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebChannelAbstractTransport::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWebChannelAbstractTransport_virtualbase_connectNotify(VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebChannelAbstractTransport::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWebChannelAbstractTransport_virtualbase_disconnectNotify(VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebChannelAbstractTransport_protectedbase_sender(const VirtualQWebChannelAbstractTransport* self);
	friend int QWebChannelAbstractTransport_protectedbase_senderSignalIndex(const VirtualQWebChannelAbstractTransport* self);
	friend int QWebChannelAbstractTransport_protectedbase_receivers(const VirtualQWebChannelAbstractTransport* self, const char* signal);
	friend bool QWebChannelAbstractTransport_protectedbase_isSignalConnected(const VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal);
};

VirtualQWebChannelAbstractTransport* QWebChannelAbstractTransport_new(const QWebChannelAbstractTransport_VTable* vtbl, void* vdata) {
	return new VirtualQWebChannelAbstractTransport(vtbl, vdata);
}

VirtualQWebChannelAbstractTransport* QWebChannelAbstractTransport_new2(const QWebChannelAbstractTransport_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQWebChannelAbstractTransport(vtbl, vdata, parent);
}

void QWebChannelAbstractTransport_virtbase(QWebChannelAbstractTransport* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebChannelAbstractTransport_metaObject(const QWebChannelAbstractTransport* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebChannelAbstractTransport_metacast(QWebChannelAbstractTransport* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebChannelAbstractTransport_metacall(QWebChannelAbstractTransport* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebChannelAbstractTransport_tr(const char* s) {
	QString _ret = QWebChannelAbstractTransport::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannelAbstractTransport_trUtf8(const char* s) {
	QString _ret = QWebChannelAbstractTransport::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebChannelAbstractTransport_sendMessage(QWebChannelAbstractTransport* self, QJsonObject* message) {
	self->sendMessage(*message);
}

void QWebChannelAbstractTransport_messageReceived(QWebChannelAbstractTransport* self, QJsonObject* message, QWebChannelAbstractTransport* transport) {
	self->messageReceived(*message, transport);
}

void QWebChannelAbstractTransport_connect_messageReceived(VirtualQWebChannelAbstractTransport* self, intptr_t slot, void (*callback)(intptr_t, QJsonObject*, QWebChannelAbstractTransport*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QJsonObject*, QWebChannelAbstractTransport*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QJsonObject*, QWebChannelAbstractTransport*);
		void operator()(const QJsonObject& message, QWebChannelAbstractTransport* transport) {
			const QJsonObject& message_ret = message;
			// Cast returned reference into pointer
			QJsonObject* sigval1 = const_cast<QJsonObject*>(&message_ret);
			QWebChannelAbstractTransport* sigval2 = transport;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQWebChannelAbstractTransport::connect(self, static_cast<void (QWebChannelAbstractTransport::*)(const QJsonObject&, QWebChannelAbstractTransport*)>(&QWebChannelAbstractTransport::messageReceived), self, local_caller{slot, callback, release});
}

struct miqt_string QWebChannelAbstractTransport_tr2(const char* s, const char* c) {
	QString _ret = QWebChannelAbstractTransport::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannelAbstractTransport_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebChannelAbstractTransport::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannelAbstractTransport_trUtf82(const char* s, const char* c) {
	QString _ret = QWebChannelAbstractTransport::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannelAbstractTransport_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebChannelAbstractTransport::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebChannelAbstractTransport_virtualbase_metaObject(const VirtualQWebChannelAbstractTransport* self) {

	return (QMetaObject*) self->QWebChannelAbstractTransport::metaObject();
}

void* QWebChannelAbstractTransport_virtualbase_metacast(VirtualQWebChannelAbstractTransport* self, const char* param1) {

	return self->QWebChannelAbstractTransport::qt_metacast(param1);
}

int QWebChannelAbstractTransport_virtualbase_metacall(VirtualQWebChannelAbstractTransport* self, int param1, int param2, void** param3) {

	return self->QWebChannelAbstractTransport::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWebChannelAbstractTransport_virtualbase_event(VirtualQWebChannelAbstractTransport* self, QEvent* event) {

	return self->QWebChannelAbstractTransport::event(event);
}

bool QWebChannelAbstractTransport_virtualbase_eventFilter(VirtualQWebChannelAbstractTransport* self, QObject* watched, QEvent* event) {

	return self->QWebChannelAbstractTransport::eventFilter(watched, event);
}

void QWebChannelAbstractTransport_virtualbase_timerEvent(VirtualQWebChannelAbstractTransport* self, QTimerEvent* event) {

	self->QWebChannelAbstractTransport::timerEvent(event);
}

void QWebChannelAbstractTransport_virtualbase_childEvent(VirtualQWebChannelAbstractTransport* self, QChildEvent* event) {

	self->QWebChannelAbstractTransport::childEvent(event);
}

void QWebChannelAbstractTransport_virtualbase_customEvent(VirtualQWebChannelAbstractTransport* self, QEvent* event) {

	self->QWebChannelAbstractTransport::customEvent(event);
}

void QWebChannelAbstractTransport_virtualbase_connectNotify(VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal) {

	self->QWebChannelAbstractTransport::connectNotify(*signal);
}

void QWebChannelAbstractTransport_virtualbase_disconnectNotify(VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal) {

	self->QWebChannelAbstractTransport::disconnectNotify(*signal);
}

const QMetaObject* QWebChannelAbstractTransport_staticMetaObject() { return &QWebChannelAbstractTransport::staticMetaObject; }

const QWebChannelAbstractTransport_VTable* QWebChannelAbstractTransport_vtbl(const VirtualQWebChannelAbstractTransport* self) { return self->vtbl; }
void* QWebChannelAbstractTransport_vdata(const VirtualQWebChannelAbstractTransport* self) { return self->vdata; }
void QWebChannelAbstractTransport_setVdata(VirtualQWebChannelAbstractTransport* self, void* vdata) { self->vdata = vdata; }

QObject* QWebChannelAbstractTransport_protectedbase_sender(const VirtualQWebChannelAbstractTransport* self) {
	return self->sender();
}

int QWebChannelAbstractTransport_protectedbase_senderSignalIndex(const VirtualQWebChannelAbstractTransport* self) {
	return self->senderSignalIndex();
}

int QWebChannelAbstractTransport_protectedbase_receivers(const VirtualQWebChannelAbstractTransport* self, const char* signal) {
	return self->receivers(signal);
}

bool QWebChannelAbstractTransport_protectedbase_isSignalConnected(const VirtualQWebChannelAbstractTransport* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWebChannelAbstractTransport_delete(QWebChannelAbstractTransport* self) {
	delete self;
}

