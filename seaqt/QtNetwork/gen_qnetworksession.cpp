#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkConfiguration>
#include <QNetworkInterface>
#include <QNetworkSession>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qnetworksession.h>
#include "gen_qnetworksession.h"
class VirtualQNetworkSession final : public QNetworkSession {
	const QNetworkSession_VTable* vtbl;
	void* vdata;
public:
	friend const QNetworkSession_VTable* QNetworkSession_vtbl(const VirtualQNetworkSession* self);
	friend void* QNetworkSession_vdata(const VirtualQNetworkSession* self);
	friend void QNetworkSession_setVdata(VirtualQNetworkSession* self, void* vdata);

	VirtualQNetworkSession(const QNetworkSession_VTable* vtbl, void* vdata, const QNetworkConfiguration& connConfig): QNetworkSession(connConfig), vtbl(vtbl), vdata(vdata) {}
	VirtualQNetworkSession(const QNetworkSession_VTable* vtbl, void* vdata, const QNetworkConfiguration& connConfig, QObject* parent): QNetworkSession(connConfig, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQNetworkSession() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QNetworkSession::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QNetworkSession_virtualbase_metaObject(const VirtualQNetworkSession* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QNetworkSession::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QNetworkSession_virtualbase_metacast(VirtualQNetworkSession* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QNetworkSession::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QNetworkSession_virtualbase_metacall(VirtualQNetworkSession* self, int param1, int param2, void** param3);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QNetworkSession::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QNetworkSession_virtualbase_connectNotify(VirtualQNetworkSession* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QNetworkSession::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QNetworkSession_virtualbase_disconnectNotify(VirtualQNetworkSession* self, QMetaMethod* signal);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QNetworkSession::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QNetworkSession_virtualbase_event(VirtualQNetworkSession* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QNetworkSession::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QNetworkSession_virtualbase_eventFilter(VirtualQNetworkSession* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QNetworkSession::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QNetworkSession_virtualbase_timerEvent(VirtualQNetworkSession* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QNetworkSession::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QNetworkSession_virtualbase_childEvent(VirtualQNetworkSession* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QNetworkSession::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QNetworkSession_virtualbase_customEvent(VirtualQNetworkSession* self, QEvent* event);

	// Wrappers to allow calling protected methods:
	friend QObject* QNetworkSession_protectedbase_sender(const VirtualQNetworkSession* self);
	friend int QNetworkSession_protectedbase_senderSignalIndex(const VirtualQNetworkSession* self);
	friend int QNetworkSession_protectedbase_receivers(const VirtualQNetworkSession* self, const char* signal);
	friend bool QNetworkSession_protectedbase_isSignalConnected(const VirtualQNetworkSession* self, QMetaMethod* signal);
};

VirtualQNetworkSession* QNetworkSession_new(const QNetworkSession_VTable* vtbl, void* vdata, QNetworkConfiguration* connConfig) {
	return new VirtualQNetworkSession(vtbl, vdata, *connConfig);
}

VirtualQNetworkSession* QNetworkSession_new2(const QNetworkSession_VTable* vtbl, void* vdata, QNetworkConfiguration* connConfig, QObject* parent) {
	return new VirtualQNetworkSession(vtbl, vdata, *connConfig, parent);
}

void QNetworkSession_virtbase(QNetworkSession* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QNetworkSession_metaObject(const QNetworkSession* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNetworkSession_metacast(QNetworkSession* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNetworkSession_metacall(QNetworkSession* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QNetworkSession_tr(const char* s) {
	QString _ret = QNetworkSession::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkSession_trUtf8(const char* s) {
	QString _ret = QNetworkSession::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QNetworkSession_isOpen(const QNetworkSession* self) {
	return self->isOpen();
}

QNetworkConfiguration* QNetworkSession_configuration(const QNetworkSession* self) {
	return new QNetworkConfiguration(self->configuration());
}

QNetworkInterface* QNetworkSession_interface(const QNetworkSession* self) {
	return new QNetworkInterface(self->interface());
}

int QNetworkSession_state(const QNetworkSession* self) {
	QNetworkSession::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QNetworkSession_error(const QNetworkSession* self) {
	QNetworkSession::SessionError _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QNetworkSession_errorString(const QNetworkSession* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QNetworkSession_sessionProperty(const QNetworkSession* self, struct miqt_string key) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QVariant(self->sessionProperty(key_QString));
}

void QNetworkSession_setSessionProperty(QNetworkSession* self, struct miqt_string key, QVariant* value) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->setSessionProperty(key_QString, *value);
}

unsigned long long QNetworkSession_bytesWritten(const QNetworkSession* self) {
	quint64 _ret = self->bytesWritten();
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QNetworkSession_bytesReceived(const QNetworkSession* self) {
	quint64 _ret = self->bytesReceived();
	return static_cast<unsigned long long>(_ret);
}

unsigned long long QNetworkSession_activeTime(const QNetworkSession* self) {
	quint64 _ret = self->activeTime();
	return static_cast<unsigned long long>(_ret);
}

int QNetworkSession_usagePolicies(const QNetworkSession* self) {
	QNetworkSession::UsagePolicies _ret = self->usagePolicies();
	return static_cast<int>(_ret);
}

bool QNetworkSession_waitForOpened(QNetworkSession* self) {
	return self->waitForOpened();
}

void QNetworkSession_open(QNetworkSession* self) {
	self->open();
}

void QNetworkSession_close(QNetworkSession* self) {
	self->close();
}

void QNetworkSession_stop(QNetworkSession* self) {
	self->stop();
}

void QNetworkSession_migrate(QNetworkSession* self) {
	self->migrate();
}

void QNetworkSession_ignore(QNetworkSession* self) {
	self->ignore();
}

void QNetworkSession_accept(QNetworkSession* self) {
	self->accept();
}

void QNetworkSession_reject(QNetworkSession* self) {
	self->reject();
}

void QNetworkSession_stateChanged(QNetworkSession* self, int param1) {
	self->stateChanged(static_cast<QNetworkSession::State>(param1));
}

void QNetworkSession_connect_stateChanged(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QNetworkSession::State param1) {
			QNetworkSession::State param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQNetworkSession::connect(self, static_cast<void (QNetworkSession::*)(QNetworkSession::State)>(&QNetworkSession::stateChanged), self, local_caller{slot, callback, release});
}

void QNetworkSession_opened(QNetworkSession* self) {
	self->opened();
}

void QNetworkSession_connect_opened(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQNetworkSession::connect(self, static_cast<void (QNetworkSession::*)()>(&QNetworkSession::opened), self, local_caller{slot, callback, release});
}

void QNetworkSession_closed(QNetworkSession* self) {
	self->closed();
}

void QNetworkSession_connect_closed(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQNetworkSession::connect(self, static_cast<void (QNetworkSession::*)()>(&QNetworkSession::closed), self, local_caller{slot, callback, release});
}

void QNetworkSession_errorWithQNetworkSessionSessionError(QNetworkSession* self, int param1) {
	self->error(static_cast<QNetworkSession::SessionError>(param1));
}

void QNetworkSession_connect_errorWithQNetworkSessionSessionError(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QNetworkSession::SessionError param1) {
			QNetworkSession::SessionError param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQNetworkSession::connect(self, static_cast<void (QNetworkSession::*)(QNetworkSession::SessionError)>(&QNetworkSession::error), self, local_caller{slot, callback, release});
}

void QNetworkSession_preferredConfigurationChanged(QNetworkSession* self, QNetworkConfiguration* config, bool isSeamless) {
	self->preferredConfigurationChanged(*config, isSeamless);
}

void QNetworkSession_connect_preferredConfigurationChanged(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QNetworkConfiguration*, bool);
		void operator()(const QNetworkConfiguration& config, bool isSeamless) {
			const QNetworkConfiguration& config_ret = config;
			// Cast returned reference into pointer
			QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&config_ret);
			bool sigval2 = isSeamless;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQNetworkSession::connect(self, static_cast<void (QNetworkSession::*)(const QNetworkConfiguration&, bool)>(&QNetworkSession::preferredConfigurationChanged), self, local_caller{slot, callback, release});
}

void QNetworkSession_newConfigurationActivated(QNetworkSession* self) {
	self->newConfigurationActivated();
}

void QNetworkSession_connect_newConfigurationActivated(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQNetworkSession::connect(self, static_cast<void (QNetworkSession::*)()>(&QNetworkSession::newConfigurationActivated), self, local_caller{slot, callback, release});
}

void QNetworkSession_usagePoliciesChanged(QNetworkSession* self, int usagePolicies) {
	self->usagePoliciesChanged(static_cast<QNetworkSession::UsagePolicies>(usagePolicies));
}

void QNetworkSession_connect_usagePoliciesChanged(VirtualQNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QNetworkSession::UsagePolicies usagePolicies) {
			QNetworkSession::UsagePolicies usagePolicies_ret = usagePolicies;
			int sigval1 = static_cast<int>(usagePolicies_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQNetworkSession::connect(self, static_cast<void (QNetworkSession::*)(QNetworkSession::UsagePolicies)>(&QNetworkSession::usagePoliciesChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QNetworkSession_tr2(const char* s, const char* c) {
	QString _ret = QNetworkSession::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkSession_tr3(const char* s, const char* c, int n) {
	QString _ret = QNetworkSession::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkSession_trUtf82(const char* s, const char* c) {
	QString _ret = QNetworkSession::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkSession_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QNetworkSession::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QNetworkSession_waitForOpened1(QNetworkSession* self, int msecs) {
	return self->waitForOpened(static_cast<int>(msecs));
}

QMetaObject* QNetworkSession_virtualbase_metaObject(const VirtualQNetworkSession* self) {

	return (QMetaObject*) self->QNetworkSession::metaObject();
}

void* QNetworkSession_virtualbase_metacast(VirtualQNetworkSession* self, const char* param1) {

	return self->QNetworkSession::qt_metacast(param1);
}

int QNetworkSession_virtualbase_metacall(VirtualQNetworkSession* self, int param1, int param2, void** param3) {

	return self->QNetworkSession::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QNetworkSession_virtualbase_connectNotify(VirtualQNetworkSession* self, QMetaMethod* signal) {

	self->QNetworkSession::connectNotify(*signal);
}

void QNetworkSession_virtualbase_disconnectNotify(VirtualQNetworkSession* self, QMetaMethod* signal) {

	self->QNetworkSession::disconnectNotify(*signal);
}

bool QNetworkSession_virtualbase_event(VirtualQNetworkSession* self, QEvent* event) {

	return self->QNetworkSession::event(event);
}

bool QNetworkSession_virtualbase_eventFilter(VirtualQNetworkSession* self, QObject* watched, QEvent* event) {

	return self->QNetworkSession::eventFilter(watched, event);
}

void QNetworkSession_virtualbase_timerEvent(VirtualQNetworkSession* self, QTimerEvent* event) {

	self->QNetworkSession::timerEvent(event);
}

void QNetworkSession_virtualbase_childEvent(VirtualQNetworkSession* self, QChildEvent* event) {

	self->QNetworkSession::childEvent(event);
}

void QNetworkSession_virtualbase_customEvent(VirtualQNetworkSession* self, QEvent* event) {

	self->QNetworkSession::customEvent(event);
}

const QMetaObject* QNetworkSession_staticMetaObject() { return &QNetworkSession::staticMetaObject; }

const QNetworkSession_VTable* QNetworkSession_vtbl(const VirtualQNetworkSession* self) { return self->vtbl; }
void* QNetworkSession_vdata(const VirtualQNetworkSession* self) { return self->vdata; }
void QNetworkSession_setVdata(VirtualQNetworkSession* self, void* vdata) { self->vdata = vdata; }

QObject* QNetworkSession_protectedbase_sender(const VirtualQNetworkSession* self) {
	return self->sender();
}

int QNetworkSession_protectedbase_senderSignalIndex(const VirtualQNetworkSession* self) {
	return self->senderSignalIndex();
}

int QNetworkSession_protectedbase_receivers(const VirtualQNetworkSession* self, const char* signal) {
	return self->receivers(signal);
}

bool QNetworkSession_protectedbase_isSignalConnected(const VirtualQNetworkSession* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QNetworkSession_delete(QNetworkSession* self) {
	delete self;
}

