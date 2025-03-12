#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSctpServer>
#include <QSctpSocket>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpServer>
#include <QTcpSocket>
#include <QTimerEvent>
#include <qsctpserver.h>
#include "gen_qsctpserver.h"
class VirtualQSctpServer final : public QSctpServer {
	const QSctpServer_VTable* vtbl;
	void* vdata;
public:
	friend const QSctpServer_VTable* QSctpServer_vtbl(const VirtualQSctpServer* self);
	friend void* QSctpServer_vdata(const VirtualQSctpServer* self);
	friend void QSctpServer_setVdata(VirtualQSctpServer* self, void* vdata);

	VirtualQSctpServer(const QSctpServer_VTable* vtbl, void* vdata): QSctpServer(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSctpServer(const QSctpServer_VTable* vtbl, void* vdata, QObject* parent): QSctpServer(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSctpServer() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSctpServer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSctpServer_virtualbase_metaObject(const VirtualQSctpServer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSctpServer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSctpServer_virtualbase_metacast(VirtualQSctpServer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSctpServer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSctpServer_virtualbase_metacall(VirtualQSctpServer* self, int param1, int param2, void** param3);

	virtual void incomingConnection(qintptr handle) override {
		if (vtbl->incomingConnection == 0) {
			QSctpServer::incomingConnection(handle);
			return;
		}

		qintptr handle_ret = handle;
		intptr_t sigval1 = (intptr_t)(handle_ret);

		vtbl->incomingConnection(this, sigval1);

	}

	friend void QSctpServer_virtualbase_incomingConnection(VirtualQSctpServer* self, intptr_t handle);

	virtual bool hasPendingConnections() const override {
		if (vtbl->hasPendingConnections == 0) {
			return QSctpServer::hasPendingConnections();
		}


		bool callback_return_value = vtbl->hasPendingConnections(this);

		return callback_return_value;
	}

	friend bool QSctpServer_virtualbase_hasPendingConnections(const VirtualQSctpServer* self);

	virtual QTcpSocket* nextPendingConnection() override {
		if (vtbl->nextPendingConnection == 0) {
			return QSctpServer::nextPendingConnection();
		}


		QTcpSocket* callback_return_value = vtbl->nextPendingConnection(this);

		return callback_return_value;
	}

	friend QTcpSocket* QSctpServer_virtualbase_nextPendingConnection(VirtualQSctpServer* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSctpServer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSctpServer_virtualbase_event(VirtualQSctpServer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSctpServer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSctpServer_virtualbase_eventFilter(VirtualQSctpServer* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSctpServer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSctpServer_virtualbase_timerEvent(VirtualQSctpServer* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSctpServer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSctpServer_virtualbase_childEvent(VirtualQSctpServer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSctpServer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSctpServer_virtualbase_customEvent(VirtualQSctpServer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSctpServer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSctpServer_virtualbase_connectNotify(VirtualQSctpServer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSctpServer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSctpServer_virtualbase_disconnectNotify(VirtualQSctpServer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSctpServer_protectedbase_addPendingConnection(VirtualQSctpServer* self, QTcpSocket* socket);
	friend QObject* QSctpServer_protectedbase_sender(const VirtualQSctpServer* self);
	friend int QSctpServer_protectedbase_senderSignalIndex(const VirtualQSctpServer* self);
	friend int QSctpServer_protectedbase_receivers(const VirtualQSctpServer* self, const char* signal);
	friend bool QSctpServer_protectedbase_isSignalConnected(const VirtualQSctpServer* self, QMetaMethod* signal);
};

VirtualQSctpServer* QSctpServer_new(const QSctpServer_VTable* vtbl, void* vdata) {
	return new VirtualQSctpServer(vtbl, vdata);
}

VirtualQSctpServer* QSctpServer_new2(const QSctpServer_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSctpServer(vtbl, vdata, parent);
}

void QSctpServer_virtbase(QSctpServer* src, QTcpServer** outptr_QTcpServer) {
	*outptr_QTcpServer = static_cast<QTcpServer*>(src);
}

QMetaObject* QSctpServer_metaObject(const QSctpServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSctpServer_metacast(QSctpServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSctpServer_metacall(QSctpServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSctpServer_tr(const char* s) {
	QString _ret = QSctpServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSctpServer_setMaximumChannelCount(QSctpServer* self, int count) {
	self->setMaximumChannelCount(static_cast<int>(count));
}

int QSctpServer_maximumChannelCount(const QSctpServer* self) {
	return self->maximumChannelCount();
}

QSctpSocket* QSctpServer_nextPendingDatagramConnection(QSctpServer* self) {
	return self->nextPendingDatagramConnection();
}

struct miqt_string QSctpServer_tr2(const char* s, const char* c) {
	QString _ret = QSctpServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSctpServer_tr3(const char* s, const char* c, int n) {
	QString _ret = QSctpServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSctpServer_virtualbase_metaObject(const VirtualQSctpServer* self) {

	return (QMetaObject*) self->QSctpServer::metaObject();
}

void* QSctpServer_virtualbase_metacast(VirtualQSctpServer* self, const char* param1) {

	return self->QSctpServer::qt_metacast(param1);
}

int QSctpServer_virtualbase_metacall(VirtualQSctpServer* self, int param1, int param2, void** param3) {

	return self->QSctpServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QSctpServer_virtualbase_incomingConnection(VirtualQSctpServer* self, intptr_t handle) {

	self->QSctpServer::incomingConnection((qintptr)(handle));
}

bool QSctpServer_virtualbase_hasPendingConnections(const VirtualQSctpServer* self) {

	return self->QSctpServer::hasPendingConnections();
}

QTcpSocket* QSctpServer_virtualbase_nextPendingConnection(VirtualQSctpServer* self) {

	return self->QSctpServer::nextPendingConnection();
}

bool QSctpServer_virtualbase_event(VirtualQSctpServer* self, QEvent* event) {

	return self->QSctpServer::event(event);
}

bool QSctpServer_virtualbase_eventFilter(VirtualQSctpServer* self, QObject* watched, QEvent* event) {

	return self->QSctpServer::eventFilter(watched, event);
}

void QSctpServer_virtualbase_timerEvent(VirtualQSctpServer* self, QTimerEvent* event) {

	self->QSctpServer::timerEvent(event);
}

void QSctpServer_virtualbase_childEvent(VirtualQSctpServer* self, QChildEvent* event) {

	self->QSctpServer::childEvent(event);
}

void QSctpServer_virtualbase_customEvent(VirtualQSctpServer* self, QEvent* event) {

	self->QSctpServer::customEvent(event);
}

void QSctpServer_virtualbase_connectNotify(VirtualQSctpServer* self, QMetaMethod* signal) {

	self->QSctpServer::connectNotify(*signal);
}

void QSctpServer_virtualbase_disconnectNotify(VirtualQSctpServer* self, QMetaMethod* signal) {

	self->QSctpServer::disconnectNotify(*signal);
}

const QMetaObject* QSctpServer_staticMetaObject() { return &QSctpServer::staticMetaObject; }

const QSctpServer_VTable* QSctpServer_vtbl(const VirtualQSctpServer* self) { return self->vtbl; }
void* QSctpServer_vdata(const VirtualQSctpServer* self) { return self->vdata; }
void QSctpServer_setVdata(VirtualQSctpServer* self, void* vdata) { self->vdata = vdata; }

void QSctpServer_protectedbase_addPendingConnection(VirtualQSctpServer* self, QTcpSocket* socket) {
	self->addPendingConnection(socket);
}

QObject* QSctpServer_protectedbase_sender(const VirtualQSctpServer* self) {
	return self->sender();
}

int QSctpServer_protectedbase_senderSignalIndex(const VirtualQSctpServer* self) {
	return self->senderSignalIndex();
}

int QSctpServer_protectedbase_receivers(const VirtualQSctpServer* self, const char* signal) {
	return self->receivers(signal);
}

bool QSctpServer_protectedbase_isSignalConnected(const VirtualQSctpServer* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSctpServer_delete(QSctpServer* self) {
	delete self;
}

