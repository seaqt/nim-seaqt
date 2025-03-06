#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkConfiguration>
#include <QNetworkConfigurationManager>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qnetworkconfigmanager.h>
#include "gen_qnetworkconfigmanager.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QNetworkConfigurationManager_configurationAdded(intptr_t, QNetworkConfiguration*);
void miqt_exec_callback_QNetworkConfigurationManager_configurationRemoved(intptr_t, QNetworkConfiguration*);
void miqt_exec_callback_QNetworkConfigurationManager_configurationChanged(intptr_t, QNetworkConfiguration*);
void miqt_exec_callback_QNetworkConfigurationManager_onlineStateChanged(intptr_t, bool);
void miqt_exec_callback_QNetworkConfigurationManager_updateCompleted(intptr_t);
QMetaObject* miqt_exec_callback_QNetworkConfigurationManager_metaObject(const QNetworkConfigurationManager*, intptr_t);
void* miqt_exec_callback_QNetworkConfigurationManager_metacast(QNetworkConfigurationManager*, intptr_t, const char*);
int miqt_exec_callback_QNetworkConfigurationManager_metacall(QNetworkConfigurationManager*, intptr_t, int, int, void**);
bool miqt_exec_callback_QNetworkConfigurationManager_event(QNetworkConfigurationManager*, intptr_t, QEvent*);
bool miqt_exec_callback_QNetworkConfigurationManager_eventFilter(QNetworkConfigurationManager*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QNetworkConfigurationManager_timerEvent(QNetworkConfigurationManager*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QNetworkConfigurationManager_childEvent(QNetworkConfigurationManager*, intptr_t, QChildEvent*);
void miqt_exec_callback_QNetworkConfigurationManager_customEvent(QNetworkConfigurationManager*, intptr_t, QEvent*);
void miqt_exec_callback_QNetworkConfigurationManager_connectNotify(QNetworkConfigurationManager*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QNetworkConfigurationManager_disconnectNotify(QNetworkConfigurationManager*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQNetworkConfigurationManager final : public QNetworkConfigurationManager {
public:

	VirtualQNetworkConfigurationManager(): QNetworkConfigurationManager() {};
	VirtualQNetworkConfigurationManager(QObject* parent): QNetworkConfigurationManager(parent) {};

	virtual ~VirtualQNetworkConfigurationManager() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QNetworkConfigurationManager::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QNetworkConfigurationManager_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QNetworkConfigurationManager_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QNetworkConfigurationManager::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QNetworkConfigurationManager_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QNetworkConfigurationManager_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QNetworkConfigurationManager::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QNetworkConfigurationManager_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QNetworkConfigurationManager_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QNetworkConfigurationManager::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QNetworkConfigurationManager_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QNetworkConfigurationManager_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QNetworkConfigurationManager::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QNetworkConfigurationManager_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QNetworkConfigurationManager_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QNetworkConfigurationManager::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QNetworkConfigurationManager_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QNetworkConfigurationManager_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QNetworkConfigurationManager::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QNetworkConfigurationManager_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QNetworkConfigurationManager_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QNetworkConfigurationManager::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QNetworkConfigurationManager_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QNetworkConfigurationManager_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QNetworkConfigurationManager::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QNetworkConfigurationManager_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QNetworkConfigurationManager_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QNetworkConfigurationManager::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QNetworkConfigurationManager_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QNetworkConfigurationManager_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QNetworkConfigurationManager_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QNetworkConfigurationManager_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QNetworkConfigurationManager_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QNetworkConfigurationManager_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QNetworkConfigurationManager* QNetworkConfigurationManager_new() {
	return new VirtualQNetworkConfigurationManager();
}

QNetworkConfigurationManager* QNetworkConfigurationManager_new2(QObject* parent) {
	return new VirtualQNetworkConfigurationManager(parent);
}

void QNetworkConfigurationManager_virtbase(QNetworkConfigurationManager* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QNetworkConfigurationManager_metaObject(const QNetworkConfigurationManager* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNetworkConfigurationManager_metacast(QNetworkConfigurationManager* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNetworkConfigurationManager_metacall(QNetworkConfigurationManager* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QNetworkConfigurationManager_tr(const char* s) {
	QString _ret = QNetworkConfigurationManager::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkConfigurationManager_trUtf8(const char* s) {
	QString _ret = QNetworkConfigurationManager::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QNetworkConfigurationManager_capabilities(const QNetworkConfigurationManager* self) {
	QNetworkConfigurationManager::Capabilities _ret = self->capabilities();
	return static_cast<int>(_ret);
}

QNetworkConfiguration* QNetworkConfigurationManager_defaultConfiguration(const QNetworkConfigurationManager* self) {
	return new QNetworkConfiguration(self->defaultConfiguration());
}

struct miqt_array /* of QNetworkConfiguration* */  QNetworkConfigurationManager_allConfigurations(const QNetworkConfigurationManager* self) {
	QList<QNetworkConfiguration> _ret = self->allConfigurations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QNetworkConfiguration** _arr = static_cast<QNetworkConfiguration**>(malloc(sizeof(QNetworkConfiguration*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QNetworkConfiguration(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QNetworkConfiguration* QNetworkConfigurationManager_configurationFromIdentifier(const QNetworkConfigurationManager* self, struct miqt_string identifier) {
	QString identifier_QString = QString::fromUtf8(identifier.data, identifier.len);
	return new QNetworkConfiguration(self->configurationFromIdentifier(identifier_QString));
}

bool QNetworkConfigurationManager_isOnline(const QNetworkConfigurationManager* self) {
	return self->isOnline();
}

void QNetworkConfigurationManager_updateConfigurations(QNetworkConfigurationManager* self) {
	self->updateConfigurations();
}

void QNetworkConfigurationManager_configurationAdded(QNetworkConfigurationManager* self, QNetworkConfiguration* config) {
	self->configurationAdded(*config);
}

void QNetworkConfigurationManager_connect_configurationAdded(QNetworkConfigurationManager* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager::connect(self, static_cast<void (QNetworkConfigurationManager::*)(const QNetworkConfiguration&)>(&QNetworkConfigurationManager::configurationAdded), self, [=](const QNetworkConfiguration& config) {
		const QNetworkConfiguration& config_ret = config;
		// Cast returned reference into pointer
		QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&config_ret);
		miqt_exec_callback_QNetworkConfigurationManager_configurationAdded(slot, sigval1);
	});
}

void QNetworkConfigurationManager_configurationRemoved(QNetworkConfigurationManager* self, QNetworkConfiguration* config) {
	self->configurationRemoved(*config);
}

void QNetworkConfigurationManager_connect_configurationRemoved(QNetworkConfigurationManager* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager::connect(self, static_cast<void (QNetworkConfigurationManager::*)(const QNetworkConfiguration&)>(&QNetworkConfigurationManager::configurationRemoved), self, [=](const QNetworkConfiguration& config) {
		const QNetworkConfiguration& config_ret = config;
		// Cast returned reference into pointer
		QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&config_ret);
		miqt_exec_callback_QNetworkConfigurationManager_configurationRemoved(slot, sigval1);
	});
}

void QNetworkConfigurationManager_configurationChanged(QNetworkConfigurationManager* self, QNetworkConfiguration* config) {
	self->configurationChanged(*config);
}

void QNetworkConfigurationManager_connect_configurationChanged(QNetworkConfigurationManager* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager::connect(self, static_cast<void (QNetworkConfigurationManager::*)(const QNetworkConfiguration&)>(&QNetworkConfigurationManager::configurationChanged), self, [=](const QNetworkConfiguration& config) {
		const QNetworkConfiguration& config_ret = config;
		// Cast returned reference into pointer
		QNetworkConfiguration* sigval1 = const_cast<QNetworkConfiguration*>(&config_ret);
		miqt_exec_callback_QNetworkConfigurationManager_configurationChanged(slot, sigval1);
	});
}

void QNetworkConfigurationManager_onlineStateChanged(QNetworkConfigurationManager* self, bool isOnline) {
	self->onlineStateChanged(isOnline);
}

void QNetworkConfigurationManager_connect_onlineStateChanged(QNetworkConfigurationManager* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager::connect(self, static_cast<void (QNetworkConfigurationManager::*)(bool)>(&QNetworkConfigurationManager::onlineStateChanged), self, [=](bool isOnline) {
		bool sigval1 = isOnline;
		miqt_exec_callback_QNetworkConfigurationManager_onlineStateChanged(slot, sigval1);
	});
}

void QNetworkConfigurationManager_updateCompleted(QNetworkConfigurationManager* self) {
	self->updateCompleted();
}

void QNetworkConfigurationManager_connect_updateCompleted(QNetworkConfigurationManager* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager::connect(self, static_cast<void (QNetworkConfigurationManager::*)()>(&QNetworkConfigurationManager::updateCompleted), self, [=]() {
		miqt_exec_callback_QNetworkConfigurationManager_updateCompleted(slot);
	});
}

struct miqt_string QNetworkConfigurationManager_tr2(const char* s, const char* c) {
	QString _ret = QNetworkConfigurationManager::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkConfigurationManager_tr3(const char* s, const char* c, int n) {
	QString _ret = QNetworkConfigurationManager::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkConfigurationManager_trUtf82(const char* s, const char* c) {
	QString _ret = QNetworkConfigurationManager::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkConfigurationManager_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QNetworkConfigurationManager::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QNetworkConfiguration* */  QNetworkConfigurationManager_allConfigurations1(const QNetworkConfigurationManager* self, int flags) {
	QList<QNetworkConfiguration> _ret = self->allConfigurations(static_cast<QNetworkConfiguration::StateFlags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	QNetworkConfiguration** _arr = static_cast<QNetworkConfiguration**>(malloc(sizeof(QNetworkConfiguration*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QNetworkConfiguration(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QNetworkConfigurationManager_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QNetworkConfigurationManager_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::metaObject();

}

bool QNetworkConfigurationManager_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QNetworkConfigurationManager_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::qt_metacast(param1);

}

bool QNetworkConfigurationManager_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QNetworkConfigurationManager_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QNetworkConfigurationManager_override_virtual_event(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QNetworkConfigurationManager_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::event(event);

}

bool QNetworkConfigurationManager_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QNetworkConfigurationManager_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::eventFilter(watched, event);

}

bool QNetworkConfigurationManager_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QNetworkConfigurationManager_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::timerEvent(event);

}

bool QNetworkConfigurationManager_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QNetworkConfigurationManager_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::childEvent(event);

}

bool QNetworkConfigurationManager_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QNetworkConfigurationManager_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::customEvent(event);

}

bool QNetworkConfigurationManager_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QNetworkConfigurationManager_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::connectNotify(*signal);

}

bool QNetworkConfigurationManager_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QNetworkConfigurationManager_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQNetworkConfigurationManager*)(self) )->QNetworkConfigurationManager::disconnectNotify(*signal);

}

const QMetaObject* QNetworkConfigurationManager_staticMetaObject() { return &QNetworkConfigurationManager::staticMetaObject; }
QObject* QNetworkConfigurationManager_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QNetworkConfigurationManager_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QNetworkConfigurationManager_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QNetworkConfigurationManager_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQNetworkConfigurationManager* self_cast = dynamic_cast<VirtualQNetworkConfigurationManager*>( (QNetworkConfigurationManager*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QNetworkConfigurationManager_delete(QNetworkConfigurationManager* self) {
	delete self;
}

