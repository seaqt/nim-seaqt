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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQNetworkSession final : public QNetworkSession {
	struct QNetworkSession_VTable* vtbl;
public:

	VirtualQNetworkSession(struct QNetworkSession_VTable* vtbl, const QNetworkConfiguration& connConfig): QNetworkSession(connConfig), vtbl(vtbl) {};
	VirtualQNetworkSession(struct QNetworkSession_VTable* vtbl, const QNetworkConfiguration& connConfig, QObject* parent): QNetworkSession(connConfig, parent), vtbl(vtbl) {};

	virtual ~VirtualQNetworkSession() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QNetworkSession::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QNetworkSession_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QNetworkSession::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QNetworkSession_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QNetworkSession::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QNetworkSession_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QNetworkSession::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QNetworkSession_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QNetworkSession::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QNetworkSession_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QNetworkSession::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QNetworkSession_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QNetworkSession::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QNetworkSession_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QNetworkSession::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QNetworkSession_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QNetworkSession::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QNetworkSession_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QNetworkSession::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QNetworkSession_virtualbase_customEvent(void* self, QEvent* event);

	// Wrappers to allow calling protected methods:
	friend QObject* QNetworkSession_protectedbase_sender(const void* self);
	friend int QNetworkSession_protectedbase_senderSignalIndex(const void* self);
	friend int QNetworkSession_protectedbase_receivers(const void* self, const char* signal);
	friend bool QNetworkSession_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QNetworkSession* QNetworkSession_new(struct QNetworkSession_VTable* vtbl, QNetworkConfiguration* connConfig) {
	return new VirtualQNetworkSession(vtbl, *connConfig);
}

QNetworkSession* QNetworkSession_new2(struct QNetworkSession_VTable* vtbl, QNetworkConfiguration* connConfig, QObject* parent) {
	return new VirtualQNetworkSession(vtbl, *connConfig, parent);
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

void QNetworkSession_connect_stateChanged(QNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QNetworkSession_connect_opened(QNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QNetworkSession_connect_closed(QNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QNetworkSession_connect_errorWithQNetworkSessionSessionError(QNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

void QNetworkSession_connect_preferredConfigurationChanged(QNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, QNetworkConfiguration*, bool), void (*release)(intptr_t)) {
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

void QNetworkSession_connect_newConfigurationActivated(QNetworkSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QNetworkSession_connect_usagePoliciesChanged(QNetworkSession* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

QMetaObject* QNetworkSession_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQNetworkSession*)(self) )->QNetworkSession::metaObject();

}

void* QNetworkSession_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQNetworkSession*)(self) )->QNetworkSession::qt_metacast(param1);

}

int QNetworkSession_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQNetworkSession*)(self) )->QNetworkSession::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QNetworkSession_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQNetworkSession*)(self) )->QNetworkSession::connectNotify(*signal);

}

void QNetworkSession_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQNetworkSession*)(self) )->QNetworkSession::disconnectNotify(*signal);

}

bool QNetworkSession_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQNetworkSession*)(self) )->QNetworkSession::event(event);

}

bool QNetworkSession_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQNetworkSession*)(self) )->QNetworkSession::eventFilter(watched, event);

}

void QNetworkSession_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQNetworkSession*)(self) )->QNetworkSession::timerEvent(event);

}

void QNetworkSession_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQNetworkSession*)(self) )->QNetworkSession::childEvent(event);

}

void QNetworkSession_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQNetworkSession*)(self) )->QNetworkSession::customEvent(event);

}

const QMetaObject* QNetworkSession_staticMetaObject() { return &QNetworkSession::staticMetaObject; }
QObject* QNetworkSession_protectedbase_sender(const void* self) {
	VirtualQNetworkSession* self_cast = static_cast<VirtualQNetworkSession*>( (QNetworkSession*)(self) );
	
	return self_cast->sender();

}

int QNetworkSession_protectedbase_senderSignalIndex(const void* self) {
	VirtualQNetworkSession* self_cast = static_cast<VirtualQNetworkSession*>( (QNetworkSession*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QNetworkSession_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQNetworkSession* self_cast = static_cast<VirtualQNetworkSession*>( (QNetworkSession*)(self) );
	
	return self_cast->receivers(signal);

}

bool QNetworkSession_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQNetworkSession* self_cast = static_cast<VirtualQNetworkSession*>( (QNetworkSession*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QNetworkSession_delete(QNetworkSession* self) {
	delete self;
}

