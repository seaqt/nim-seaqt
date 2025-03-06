#include <QAbstractTransition>
#include <QChildEvent>
#include <QEvent>
#include <QEventTransition>
#include <QKeyEventTransition>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qkeyeventtransition.h>
#include "gen_qkeyeventtransition.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQKeyEventTransition final : public QKeyEventTransition {
	struct QKeyEventTransition_VTable* vtbl;
public:

	VirtualQKeyEventTransition(struct QKeyEventTransition_VTable* vtbl): QKeyEventTransition(), vtbl(vtbl) {};
	VirtualQKeyEventTransition(struct QKeyEventTransition_VTable* vtbl, QObject* object, QEvent::Type type, int key): QKeyEventTransition(object, type, key), vtbl(vtbl) {};
	VirtualQKeyEventTransition(struct QKeyEventTransition_VTable* vtbl, QState* sourceState): QKeyEventTransition(sourceState), vtbl(vtbl) {};
	VirtualQKeyEventTransition(struct QKeyEventTransition_VTable* vtbl, QObject* object, QEvent::Type type, int key, QState* sourceState): QKeyEventTransition(object, type, key, sourceState), vtbl(vtbl) {};

	virtual ~VirtualQKeyEventTransition() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QKeyEventTransition::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QKeyEventTransition_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QKeyEventTransition::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QKeyEventTransition_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QKeyEventTransition::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QKeyEventTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void onTransition(QEvent* event) override {
		if (vtbl->onTransition == 0) {
			QKeyEventTransition::onTransition(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onTransition(vtbl, this, sigval1);

	}

	friend void QKeyEventTransition_virtualbase_onTransition(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventTest(QEvent* event) override {
		if (vtbl->eventTest == 0) {
			return QKeyEventTransition::eventTest(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->eventTest(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QKeyEventTransition_virtualbase_eventTest(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QKeyEventTransition::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QKeyEventTransition_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QKeyEventTransition::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QKeyEventTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QKeyEventTransition::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QKeyEventTransition_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QKeyEventTransition::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QKeyEventTransition_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QKeyEventTransition::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QKeyEventTransition_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QKeyEventTransition::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QKeyEventTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QKeyEventTransition::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QKeyEventTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QKeyEventTransition_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QKeyEventTransition_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QKeyEventTransition_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QKeyEventTransition_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QKeyEventTransition* QKeyEventTransition_new(struct QKeyEventTransition_VTable* vtbl) {
	return new VirtualQKeyEventTransition(vtbl);
}

QKeyEventTransition* QKeyEventTransition_new2(struct QKeyEventTransition_VTable* vtbl, QObject* object, int type, int key) {
	return new VirtualQKeyEventTransition(vtbl, object, static_cast<QEvent::Type>(type), static_cast<int>(key));
}

QKeyEventTransition* QKeyEventTransition_new3(struct QKeyEventTransition_VTable* vtbl, QState* sourceState) {
	return new VirtualQKeyEventTransition(vtbl, sourceState);
}

QKeyEventTransition* QKeyEventTransition_new4(struct QKeyEventTransition_VTable* vtbl, QObject* object, int type, int key, QState* sourceState) {
	return new VirtualQKeyEventTransition(vtbl, object, static_cast<QEvent::Type>(type), static_cast<int>(key), sourceState);
}

void QKeyEventTransition_virtbase(QKeyEventTransition* src, QEventTransition** outptr_QEventTransition) {
	*outptr_QEventTransition = static_cast<QEventTransition*>(src);
}

QMetaObject* QKeyEventTransition_metaObject(const QKeyEventTransition* self) {
	return (QMetaObject*) self->metaObject();
}

void* QKeyEventTransition_metacast(QKeyEventTransition* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QKeyEventTransition_metacall(QKeyEventTransition* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QKeyEventTransition_tr(const char* s) {
	QString _ret = QKeyEventTransition::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeyEventTransition_trUtf8(const char* s) {
	QString _ret = QKeyEventTransition::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QKeyEventTransition_key(const QKeyEventTransition* self) {
	return self->key();
}

void QKeyEventTransition_setKey(QKeyEventTransition* self, int key) {
	self->setKey(static_cast<int>(key));
}

int QKeyEventTransition_modifierMask(const QKeyEventTransition* self) {
	Qt::KeyboardModifiers _ret = self->modifierMask();
	return static_cast<int>(_ret);
}

void QKeyEventTransition_setModifierMask(QKeyEventTransition* self, int modifiers) {
	self->setModifierMask(static_cast<Qt::KeyboardModifiers>(modifiers));
}

struct miqt_string QKeyEventTransition_tr2(const char* s, const char* c) {
	QString _ret = QKeyEventTransition::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeyEventTransition_tr3(const char* s, const char* c, int n) {
	QString _ret = QKeyEventTransition::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeyEventTransition_trUtf82(const char* s, const char* c) {
	QString _ret = QKeyEventTransition::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeyEventTransition_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QKeyEventTransition::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QKeyEventTransition_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::metaObject();

}

void* QKeyEventTransition_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::qt_metacast(param1);

}

int QKeyEventTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QKeyEventTransition_virtualbase_onTransition(void* self, QEvent* event) {

	( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::onTransition(event);

}

bool QKeyEventTransition_virtualbase_eventTest(void* self, QEvent* event) {

	return ( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::eventTest(event);

}

bool QKeyEventTransition_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::event(e);

}

bool QKeyEventTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::eventFilter(watched, event);

}

void QKeyEventTransition_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::timerEvent(event);

}

void QKeyEventTransition_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::childEvent(event);

}

void QKeyEventTransition_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::customEvent(event);

}

void QKeyEventTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::connectNotify(*signal);

}

void QKeyEventTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQKeyEventTransition*)(self) )->QKeyEventTransition::disconnectNotify(*signal);

}

const QMetaObject* QKeyEventTransition_staticMetaObject() { return &QKeyEventTransition::staticMetaObject; }
QObject* QKeyEventTransition_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQKeyEventTransition* self_cast = dynamic_cast<VirtualQKeyEventTransition*>( (QKeyEventTransition*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QKeyEventTransition_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQKeyEventTransition* self_cast = dynamic_cast<VirtualQKeyEventTransition*>( (QKeyEventTransition*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QKeyEventTransition_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQKeyEventTransition* self_cast = dynamic_cast<VirtualQKeyEventTransition*>( (QKeyEventTransition*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QKeyEventTransition_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQKeyEventTransition* self_cast = dynamic_cast<VirtualQKeyEventTransition*>( (QKeyEventTransition*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QKeyEventTransition_delete(QKeyEventTransition* self) {
	delete self;
}

