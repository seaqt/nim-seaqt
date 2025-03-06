#include <QAbstractAnimation>
#include <QAbstractState>
#include <QAbstractTransition>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QState>
#include <QStateMachine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qabstracttransition.h>
#include "gen_qabstracttransition.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAbstractTransition final : public QAbstractTransition {
	struct QAbstractTransition_VTable* vtbl;
public:

	VirtualQAbstractTransition(struct QAbstractTransition_VTable* vtbl): QAbstractTransition(), vtbl(vtbl) {};
	VirtualQAbstractTransition(struct QAbstractTransition_VTable* vtbl, QState* sourceState): QAbstractTransition(sourceState), vtbl(vtbl) {};

	virtual ~VirtualQAbstractTransition() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractTransition::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractTransition_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractTransition::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractTransition_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractTransition::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool eventTest(QEvent* event) override {
		if (vtbl->eventTest == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->eventTest(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void onTransition(QEvent* event) override {
		if (vtbl->onTransition == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QEvent* sigval1 = event;

		vtbl->onTransition(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QAbstractTransition::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractTransition_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractTransition::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractTransition::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAbstractTransition_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractTransition::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAbstractTransition_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractTransition::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAbstractTransition_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractTransition::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractTransition::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAbstractTransition_protectedbase_sender(const void* self);
	friend int QAbstractTransition_protectedbase_senderSignalIndex(const void* self);
	friend int QAbstractTransition_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAbstractTransition_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAbstractTransition* QAbstractTransition_new(struct QAbstractTransition_VTable* vtbl) {
	return new VirtualQAbstractTransition(vtbl);
}

QAbstractTransition* QAbstractTransition_new2(struct QAbstractTransition_VTable* vtbl, QState* sourceState) {
	return new VirtualQAbstractTransition(vtbl, sourceState);
}

void QAbstractTransition_virtbase(QAbstractTransition* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractTransition_metaObject(const QAbstractTransition* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractTransition_metacast(QAbstractTransition* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractTransition_metacall(QAbstractTransition* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractTransition_tr(const char* s) {
	QString _ret = QAbstractTransition::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTransition_trUtf8(const char* s) {
	QString _ret = QAbstractTransition::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QState* QAbstractTransition_sourceState(const QAbstractTransition* self) {
	return self->sourceState();
}

QAbstractState* QAbstractTransition_targetState(const QAbstractTransition* self) {
	return self->targetState();
}

void QAbstractTransition_setTargetState(QAbstractTransition* self, QAbstractState* target) {
	self->setTargetState(target);
}

struct miqt_array /* of QAbstractState* */  QAbstractTransition_targetStates(const QAbstractTransition* self) {
	QList<QAbstractState *> _ret = self->targetStates();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractState** _arr = static_cast<QAbstractState**>(malloc(sizeof(QAbstractState*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QAbstractTransition_setTargetStates(QAbstractTransition* self, struct miqt_array /* of QAbstractState* */  targets) {
	QList<QAbstractState *> targets_QList;
	targets_QList.reserve(targets.len);
	QAbstractState** targets_arr = static_cast<QAbstractState**>(targets.data);
	for(size_t i = 0; i < targets.len; ++i) {
		targets_QList.push_back(targets_arr[i]);
	}
	self->setTargetStates(targets_QList);
}

int QAbstractTransition_transitionType(const QAbstractTransition* self) {
	QAbstractTransition::TransitionType _ret = self->transitionType();
	return static_cast<int>(_ret);
}

void QAbstractTransition_setTransitionType(QAbstractTransition* self, int type) {
	self->setTransitionType(static_cast<QAbstractTransition::TransitionType>(type));
}

QStateMachine* QAbstractTransition_machine(const QAbstractTransition* self) {
	return self->machine();
}

void QAbstractTransition_addAnimation(QAbstractTransition* self, QAbstractAnimation* animation) {
	self->addAnimation(animation);
}

void QAbstractTransition_removeAnimation(QAbstractTransition* self, QAbstractAnimation* animation) {
	self->removeAnimation(animation);
}

struct miqt_array /* of QAbstractAnimation* */  QAbstractTransition_animations(const QAbstractTransition* self) {
	QList<QAbstractAnimation *> _ret = self->animations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractAnimation** _arr = static_cast<QAbstractAnimation**>(malloc(sizeof(QAbstractAnimation*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QAbstractTransition_tr2(const char* s, const char* c) {
	QString _ret = QAbstractTransition::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTransition_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractTransition::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTransition_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractTransition::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTransition_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractTransition::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractTransition_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAbstractTransition*)(self) )->QAbstractTransition::metaObject();

}

void* QAbstractTransition_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::qt_metacast(param1);

}

int QAbstractTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAbstractTransition_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::event(e);

}

bool QAbstractTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::eventFilter(watched, event);

}

void QAbstractTransition_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::timerEvent(event);

}

void QAbstractTransition_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::childEvent(event);

}

void QAbstractTransition_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::customEvent(event);

}

void QAbstractTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::connectNotify(*signal);

}

void QAbstractTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractTransition*)(self) )->QAbstractTransition::disconnectNotify(*signal);

}

const QMetaObject* QAbstractTransition_staticMetaObject() { return &QAbstractTransition::staticMetaObject; }
QObject* QAbstractTransition_protectedbase_sender(const void* self) {
	VirtualQAbstractTransition* self_cast = static_cast<VirtualQAbstractTransition*>( (QAbstractTransition*)(self) );
	
	return self_cast->sender();

}

int QAbstractTransition_protectedbase_senderSignalIndex(const void* self) {
	VirtualQAbstractTransition* self_cast = static_cast<VirtualQAbstractTransition*>( (QAbstractTransition*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAbstractTransition_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQAbstractTransition* self_cast = static_cast<VirtualQAbstractTransition*>( (QAbstractTransition*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAbstractTransition_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQAbstractTransition* self_cast = static_cast<VirtualQAbstractTransition*>( (QAbstractTransition*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractTransition_delete(QAbstractTransition* self) {
	delete self;
}

