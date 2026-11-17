#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQnxNativeServer>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qconnection_qnx_server.h>
#include "gen_qconnection_qnx_server.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQnxNativeServer final : public QQnxNativeServer {
	const QQnxNativeServer_VTable* vtbl;
public:
	friend void* QQnxNativeServer_vdata(VirtualQQnxNativeServer* self);
	friend VirtualQQnxNativeServer* vdata_QQnxNativeServer(void* vdata);

	VirtualQQnxNativeServer(const QQnxNativeServer_VTable* vtbl): QQnxNativeServer(), vtbl(vtbl) {}
	VirtualQQnxNativeServer(const QQnxNativeServer_VTable* vtbl, QObject* parent): QQnxNativeServer(parent), vtbl(vtbl) {}

	virtual ~VirtualQQnxNativeServer() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQnxNativeServer::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQnxNativeServer_virtualbase_metaObject(const VirtualQQnxNativeServer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQnxNativeServer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQnxNativeServer_virtualbase_metacast(VirtualQQnxNativeServer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQnxNativeServer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQnxNativeServer_virtualbase_metacall(VirtualQQnxNativeServer* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQnxNativeServer::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQnxNativeServer_virtualbase_event(VirtualQQnxNativeServer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQnxNativeServer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQnxNativeServer_virtualbase_eventFilter(VirtualQQnxNativeServer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQnxNativeServer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQnxNativeServer_virtualbase_timerEvent(VirtualQQnxNativeServer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQnxNativeServer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQnxNativeServer_virtualbase_childEvent(VirtualQQnxNativeServer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQnxNativeServer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQnxNativeServer_virtualbase_customEvent(VirtualQQnxNativeServer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQnxNativeServer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQnxNativeServer_virtualbase_connectNotify(VirtualQQnxNativeServer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQnxNativeServer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQnxNativeServer_virtualbase_disconnectNotify(VirtualQQnxNativeServer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQnxNativeServer_protectedbase_sender(const VirtualQQnxNativeServer* self);
	friend int QQnxNativeServer_protectedbase_senderSignalIndex(const VirtualQQnxNativeServer* self);
	friend int QQnxNativeServer_protectedbase_receivers(const VirtualQQnxNativeServer* self, const char* signal);
	friend bool QQnxNativeServer_protectedbase_isSignalConnected(const VirtualQQnxNativeServer* self, QMetaMethod* signal);
};

VirtualQQnxNativeServer* QQnxNativeServer_new(const QQnxNativeServer_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQnxNativeServer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQnxNativeServer(vtbl) : nullptr;
}

VirtualQQnxNativeServer* QQnxNativeServer_new_parent(const QQnxNativeServer_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQnxNativeServer>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQnxNativeServer(vtbl, parent) : nullptr;
}

void QQnxNativeServer_virtbase(QQnxNativeServer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQnxNativeServer_metaObject(const QQnxNativeServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQnxNativeServer_metacast(QQnxNativeServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQnxNativeServer_metacall(QQnxNativeServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQnxNativeServer_tr_s(const char* s) {
	QString _ret = QQnxNativeServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQnxNativeServer_newConnection(QQnxNativeServer* self) {
	self->newConnection();
}

void QQnxNativeServer_connect_newConnection(QQnxNativeServer* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQnxNativeServer::connect(self, static_cast<void (QQnxNativeServer::*)()>(&QQnxNativeServer::newConnection), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQnxNativeServer_close(QQnxNativeServer* self) {
	self->close();
}

bool QQnxNativeServer_hasPendingConnections(const QQnxNativeServer* self) {
	return self->hasPendingConnections();
}

bool QQnxNativeServer_isListening(const QQnxNativeServer* self) {
	return self->isListening();
}

bool QQnxNativeServer_listen(QQnxNativeServer* self, struct seaqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->listen(name_QString);
}

struct seaqt_string QQnxNativeServer_serverName(const QQnxNativeServer* self) {
	QString _ret = self->serverName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQnxNativeServer_waitForNewConnection(QQnxNativeServer* self) {
	return self->waitForNewConnection();
}

struct seaqt_string QQnxNativeServer_tr_s_c(const char* s, const char* c) {
	QString _ret = QQnxNativeServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQnxNativeServer_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQnxNativeServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQnxNativeServer_waitForNewConnection_msec(QQnxNativeServer* self, int msec) {
	return self->waitForNewConnection(static_cast<int>(msec));
}

bool QQnxNativeServer_waitForNewConnection_msec_timedOut(QQnxNativeServer* self, int msec, bool* timedOut) {
	return self->waitForNewConnection(static_cast<int>(msec), timedOut);
}

const QMetaObject* QQnxNativeServer_staticMetaObject() { return &QQnxNativeServer::staticMetaObject; }
void* QQnxNativeServer_vdata(VirtualQQnxNativeServer* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQnxNativeServer>()); }
VirtualQQnxNativeServer* vdata_QQnxNativeServer(void* vdata) { return reinterpret_cast<VirtualQQnxNativeServer*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQnxNativeServer>()); }

QMetaObject* QQnxNativeServer_virtualbase_metaObject(const VirtualQQnxNativeServer* self) {

	return (QMetaObject*) self->QQnxNativeServer::metaObject();
}

void* QQnxNativeServer_virtualbase_metacast(VirtualQQnxNativeServer* self, const char* param1) {

	return self->QQnxNativeServer::qt_metacast(param1);
}

int QQnxNativeServer_virtualbase_metacall(VirtualQQnxNativeServer* self, int param1, int param2, void** param3) {

	return self->QQnxNativeServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QQnxNativeServer_virtualbase_event(VirtualQQnxNativeServer* self, QEvent* event) {

	return self->QQnxNativeServer::event(event);
}

bool QQnxNativeServer_virtualbase_eventFilter(VirtualQQnxNativeServer* self, QObject* watched, QEvent* event) {

	return self->QQnxNativeServer::eventFilter(watched, event);
}

void QQnxNativeServer_virtualbase_timerEvent(VirtualQQnxNativeServer* self, QTimerEvent* event) {

	self->QQnxNativeServer::timerEvent(event);
}

void QQnxNativeServer_virtualbase_childEvent(VirtualQQnxNativeServer* self, QChildEvent* event) {

	self->QQnxNativeServer::childEvent(event);
}

void QQnxNativeServer_virtualbase_customEvent(VirtualQQnxNativeServer* self, QEvent* event) {

	self->QQnxNativeServer::customEvent(event);
}

void QQnxNativeServer_virtualbase_connectNotify(VirtualQQnxNativeServer* self, QMetaMethod* signal) {

	self->QQnxNativeServer::connectNotify(*signal);
}

void QQnxNativeServer_virtualbase_disconnectNotify(VirtualQQnxNativeServer* self, QMetaMethod* signal) {

	self->QQnxNativeServer::disconnectNotify(*signal);
}

QObject* QQnxNativeServer_protectedbase_sender(const VirtualQQnxNativeServer* self) {
	return self->QQnxNativeServer::sender();
}

int QQnxNativeServer_protectedbase_senderSignalIndex(const VirtualQQnxNativeServer* self) {
	return self->QQnxNativeServer::senderSignalIndex();
}

int QQnxNativeServer_protectedbase_receivers(const VirtualQQnxNativeServer* self, const char* signal) {
	return self->QQnxNativeServer::receivers(signal);
}

bool QQnxNativeServer_protectedbase_isSignalConnected(const VirtualQQnxNativeServer* self, QMetaMethod* signal) {
	return self->QQnxNativeServer::isSignalConnected(*signal);
}

void QQnxNativeServer_delete(QQnxNativeServer* self) {
	delete self;
}

