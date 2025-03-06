#include <QAbstractTransition>
#include <QChildEvent>
#include <QEvent>
#include <QEventTransition>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEventTransition>
#include <QObject>
#include <QPainterPath>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qmouseeventtransition.h>
#include "gen_qmouseeventtransition.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQMouseEventTransition final : public QMouseEventTransition {
	struct QMouseEventTransition_VTable* vtbl;
public:

	VirtualQMouseEventTransition(struct QMouseEventTransition_VTable* vtbl): QMouseEventTransition(), vtbl(vtbl) {};
	VirtualQMouseEventTransition(struct QMouseEventTransition_VTable* vtbl, QObject* object, QEvent::Type type, Qt::MouseButton button): QMouseEventTransition(object, type, button), vtbl(vtbl) {};
	VirtualQMouseEventTransition(struct QMouseEventTransition_VTable* vtbl, QState* sourceState): QMouseEventTransition(sourceState), vtbl(vtbl) {};
	VirtualQMouseEventTransition(struct QMouseEventTransition_VTable* vtbl, QObject* object, QEvent::Type type, Qt::MouseButton button, QState* sourceState): QMouseEventTransition(object, type, button, sourceState), vtbl(vtbl) {};

	virtual ~VirtualQMouseEventTransition() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMouseEventTransition::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QMouseEventTransition_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMouseEventTransition::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QMouseEventTransition_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMouseEventTransition::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMouseEventTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void onTransition(QEvent* event) override {
		if (vtbl->onTransition == 0) {
			QMouseEventTransition::onTransition(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onTransition(vtbl, this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_onTransition(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventTest(QEvent* event) override {
		if (vtbl->eventTest == 0) {
			return QMouseEventTransition::eventTest(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->eventTest(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMouseEventTransition_virtualbase_eventTest(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QMouseEventTransition::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMouseEventTransition_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMouseEventTransition::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMouseEventTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMouseEventTransition::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMouseEventTransition::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMouseEventTransition::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMouseEventTransition::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMouseEventTransition::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QMouseEventTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMouseEventTransition_protectedbase_sender(const void* self);
	friend int QMouseEventTransition_protectedbase_senderSignalIndex(const void* self);
	friend int QMouseEventTransition_protectedbase_receivers(const void* self, const char* signal);
	friend bool QMouseEventTransition_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QMouseEventTransition* QMouseEventTransition_new(struct QMouseEventTransition_VTable* vtbl) {
	return new VirtualQMouseEventTransition(vtbl);
}

QMouseEventTransition* QMouseEventTransition_new2(struct QMouseEventTransition_VTable* vtbl, QObject* object, int type, int button) {
	return new VirtualQMouseEventTransition(vtbl, object, static_cast<QEvent::Type>(type), static_cast<Qt::MouseButton>(button));
}

QMouseEventTransition* QMouseEventTransition_new3(struct QMouseEventTransition_VTable* vtbl, QState* sourceState) {
	return new VirtualQMouseEventTransition(vtbl, sourceState);
}

QMouseEventTransition* QMouseEventTransition_new4(struct QMouseEventTransition_VTable* vtbl, QObject* object, int type, int button, QState* sourceState) {
	return new VirtualQMouseEventTransition(vtbl, object, static_cast<QEvent::Type>(type), static_cast<Qt::MouseButton>(button), sourceState);
}

void QMouseEventTransition_virtbase(QMouseEventTransition* src, QEventTransition** outptr_QEventTransition) {
	*outptr_QEventTransition = static_cast<QEventTransition*>(src);
}

QMetaObject* QMouseEventTransition_metaObject(const QMouseEventTransition* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMouseEventTransition_metacast(QMouseEventTransition* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMouseEventTransition_metacall(QMouseEventTransition* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMouseEventTransition_tr(const char* s) {
	QString _ret = QMouseEventTransition::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMouseEventTransition_trUtf8(const char* s) {
	QString _ret = QMouseEventTransition::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMouseEventTransition_button(const QMouseEventTransition* self) {
	Qt::MouseButton _ret = self->button();
	return static_cast<int>(_ret);
}

void QMouseEventTransition_setButton(QMouseEventTransition* self, int button) {
	self->setButton(static_cast<Qt::MouseButton>(button));
}

int QMouseEventTransition_modifierMask(const QMouseEventTransition* self) {
	Qt::KeyboardModifiers _ret = self->modifierMask();
	return static_cast<int>(_ret);
}

void QMouseEventTransition_setModifierMask(QMouseEventTransition* self, int modifiers) {
	self->setModifierMask(static_cast<Qt::KeyboardModifiers>(modifiers));
}

QPainterPath* QMouseEventTransition_hitTestPath(const QMouseEventTransition* self) {
	return new QPainterPath(self->hitTestPath());
}

void QMouseEventTransition_setHitTestPath(QMouseEventTransition* self, QPainterPath* path) {
	self->setHitTestPath(*path);
}

struct miqt_string QMouseEventTransition_tr2(const char* s, const char* c) {
	QString _ret = QMouseEventTransition::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMouseEventTransition_tr3(const char* s, const char* c, int n) {
	QString _ret = QMouseEventTransition::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMouseEventTransition_trUtf82(const char* s, const char* c) {
	QString _ret = QMouseEventTransition::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMouseEventTransition_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMouseEventTransition::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QMouseEventTransition_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::metaObject();

}

void* QMouseEventTransition_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::qt_metacast(param1);

}

int QMouseEventTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QMouseEventTransition_virtualbase_onTransition(void* self, QEvent* event) {

	( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::onTransition(event);

}

bool QMouseEventTransition_virtualbase_eventTest(void* self, QEvent* event) {

	return ( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::eventTest(event);

}

bool QMouseEventTransition_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::event(e);

}

bool QMouseEventTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::eventFilter(watched, event);

}

void QMouseEventTransition_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::timerEvent(event);

}

void QMouseEventTransition_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::childEvent(event);

}

void QMouseEventTransition_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::customEvent(event);

}

void QMouseEventTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::connectNotify(*signal);

}

void QMouseEventTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMouseEventTransition*)(self) )->QMouseEventTransition::disconnectNotify(*signal);

}

const QMetaObject* QMouseEventTransition_staticMetaObject() { return &QMouseEventTransition::staticMetaObject; }
QObject* QMouseEventTransition_protectedbase_sender(const void* self) {
	VirtualQMouseEventTransition* self_cast = static_cast<VirtualQMouseEventTransition*>( (QMouseEventTransition*)(self) );
	
	return self_cast->sender();

}

int QMouseEventTransition_protectedbase_senderSignalIndex(const void* self) {
	VirtualQMouseEventTransition* self_cast = static_cast<VirtualQMouseEventTransition*>( (QMouseEventTransition*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QMouseEventTransition_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQMouseEventTransition* self_cast = static_cast<VirtualQMouseEventTransition*>( (QMouseEventTransition*)(self) );
	
	return self_cast->receivers(signal);

}

bool QMouseEventTransition_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQMouseEventTransition* self_cast = static_cast<VirtualQMouseEventTransition*>( (QMouseEventTransition*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QMouseEventTransition_delete(QMouseEventTransition* self) {
	delete self;
}

