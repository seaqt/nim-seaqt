#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebHistoryInterface>
#include <qwebhistoryinterface.h>
#include "gen_qwebhistoryinterface.h"

#ifdef __cplusplus
extern "C" {
#endif

QMetaObject* miqt_exec_callback_QWebHistoryInterface_metaObject(const QWebHistoryInterface*, intptr_t);
void* miqt_exec_callback_QWebHistoryInterface_metacast(QWebHistoryInterface*, intptr_t, const char*);
int miqt_exec_callback_QWebHistoryInterface_metacall(QWebHistoryInterface*, intptr_t, int, int, void**);
bool miqt_exec_callback_QWebHistoryInterface_historyContains(const QWebHistoryInterface*, intptr_t, struct miqt_string);
void miqt_exec_callback_QWebHistoryInterface_addHistoryEntry(QWebHistoryInterface*, intptr_t, struct miqt_string);
bool miqt_exec_callback_QWebHistoryInterface_event(QWebHistoryInterface*, intptr_t, QEvent*);
bool miqt_exec_callback_QWebHistoryInterface_eventFilter(QWebHistoryInterface*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QWebHistoryInterface_timerEvent(QWebHistoryInterface*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QWebHistoryInterface_childEvent(QWebHistoryInterface*, intptr_t, QChildEvent*);
void miqt_exec_callback_QWebHistoryInterface_customEvent(QWebHistoryInterface*, intptr_t, QEvent*);
void miqt_exec_callback_QWebHistoryInterface_connectNotify(QWebHistoryInterface*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QWebHistoryInterface_disconnectNotify(QWebHistoryInterface*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQWebHistoryInterface final : public QWebHistoryInterface {
public:

	VirtualQWebHistoryInterface(): QWebHistoryInterface() {};
	VirtualQWebHistoryInterface(QObject* parent): QWebHistoryInterface(parent) {};

	virtual ~VirtualQWebHistoryInterface() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QWebHistoryInterface::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QWebHistoryInterface_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QWebHistoryInterface_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QWebHistoryInterface::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QWebHistoryInterface_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QWebHistoryInterface_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QWebHistoryInterface::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QWebHistoryInterface_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebHistoryInterface_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__historyContains = 0;

	// Subclass to allow providing a Go implementation
	virtual bool historyContains(const QString& url) const override {
		if (handle__historyContains == 0) {
			return false; // Pure virtual, there is no base we can call
		}
		
		const QString url_ret = url;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray url_b = url_ret.toUtf8();
		struct miqt_string url_ms;
		url_ms.len = url_b.length();
		url_ms.data = static_cast<char*>(malloc(url_ms.len));
		memcpy(url_ms.data, url_b.data(), url_ms.len);
		struct miqt_string sigval1 = url_ms;

		bool callback_return_value = miqt_exec_callback_QWebHistoryInterface_historyContains(this, handle__historyContains, sigval1);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__addHistoryEntry = 0;

	// Subclass to allow providing a Go implementation
	virtual void addHistoryEntry(const QString& url) override {
		if (handle__addHistoryEntry == 0) {
			return; // Pure virtual, there is no base we can call
		}
		
		const QString url_ret = url;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray url_b = url_ret.toUtf8();
		struct miqt_string url_ms;
		url_ms.len = url_b.length();
		url_ms.data = static_cast<char*>(malloc(url_ms.len));
		memcpy(url_ms.data, url_b.data(), url_ms.len);
		struct miqt_string sigval1 = url_ms;

		miqt_exec_callback_QWebHistoryInterface_addHistoryEntry(this, handle__addHistoryEntry, sigval1);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QWebHistoryInterface::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QWebHistoryInterface_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QWebHistoryInterface_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QWebHistoryInterface::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QWebHistoryInterface_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebHistoryInterface_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QWebHistoryInterface::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QWebHistoryInterface_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QWebHistoryInterface_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QWebHistoryInterface::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QWebHistoryInterface_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QWebHistoryInterface_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QWebHistoryInterface::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QWebHistoryInterface_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QWebHistoryInterface_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QWebHistoryInterface::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QWebHistoryInterface_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QWebHistoryInterface_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QWebHistoryInterface::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QWebHistoryInterface_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QWebHistoryInterface_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebHistoryInterface_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QWebHistoryInterface_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QWebHistoryInterface_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QWebHistoryInterface_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QWebHistoryInterface* QWebHistoryInterface_new() {
	return new VirtualQWebHistoryInterface();
}

QWebHistoryInterface* QWebHistoryInterface_new2(QObject* parent) {
	return new VirtualQWebHistoryInterface(parent);
}

void QWebHistoryInterface_virtbase(QWebHistoryInterface* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebHistoryInterface_metaObject(const QWebHistoryInterface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebHistoryInterface_metacast(QWebHistoryInterface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebHistoryInterface_metacall(QWebHistoryInterface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebHistoryInterface_tr(const char* s) {
	QString _ret = QWebHistoryInterface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebHistoryInterface_trUtf8(const char* s) {
	QString _ret = QWebHistoryInterface::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebHistoryInterface_setDefaultInterface(QWebHistoryInterface* defaultInterface) {
	QWebHistoryInterface::setDefaultInterface(defaultInterface);
}

QWebHistoryInterface* QWebHistoryInterface_defaultInterface() {
	return QWebHistoryInterface::defaultInterface();
}

bool QWebHistoryInterface_historyContains(const QWebHistoryInterface* self, struct miqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	return self->historyContains(url_QString);
}

void QWebHistoryInterface_addHistoryEntry(QWebHistoryInterface* self, struct miqt_string url) {
	QString url_QString = QString::fromUtf8(url.data, url.len);
	self->addHistoryEntry(url_QString);
}

struct miqt_string QWebHistoryInterface_tr2(const char* s, const char* c) {
	QString _ret = QWebHistoryInterface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebHistoryInterface_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebHistoryInterface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebHistoryInterface_trUtf82(const char* s, const char* c) {
	QString _ret = QWebHistoryInterface::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebHistoryInterface_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebHistoryInterface::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QWebHistoryInterface_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QWebHistoryInterface_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::metaObject();

}

bool QWebHistoryInterface_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QWebHistoryInterface_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::qt_metacast(param1);

}

bool QWebHistoryInterface_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QWebHistoryInterface_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QWebHistoryInterface_override_virtual_historyContains(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__historyContains = slot;
	return true;
}

bool QWebHistoryInterface_override_virtual_addHistoryEntry(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__addHistoryEntry = slot;
	return true;
}

bool QWebHistoryInterface_override_virtual_event(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QWebHistoryInterface_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::event(event);

}

bool QWebHistoryInterface_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QWebHistoryInterface_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::eventFilter(watched, event);

}

bool QWebHistoryInterface_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QWebHistoryInterface_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::timerEvent(event);

}

bool QWebHistoryInterface_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QWebHistoryInterface_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::childEvent(event);

}

bool QWebHistoryInterface_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QWebHistoryInterface_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::customEvent(event);

}

bool QWebHistoryInterface_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QWebHistoryInterface_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::connectNotify(*signal);

}

bool QWebHistoryInterface_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QWebHistoryInterface_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQWebHistoryInterface*)(self) )->QWebHistoryInterface::disconnectNotify(*signal);

}

const QMetaObject* QWebHistoryInterface_staticMetaObject() { return &QWebHistoryInterface::staticMetaObject; }
QObject* QWebHistoryInterface_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QWebHistoryInterface_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QWebHistoryInterface_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QWebHistoryInterface_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQWebHistoryInterface* self_cast = dynamic_cast<VirtualQWebHistoryInterface*>( (QWebHistoryInterface*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QWebHistoryInterface_delete(QWebHistoryInterface* self) {
	delete self;
}

