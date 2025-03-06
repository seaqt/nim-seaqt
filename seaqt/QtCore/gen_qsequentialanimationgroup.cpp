#include <QAbstractAnimation>
#include <QAnimationGroup>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPauseAnimation>
#include <QSequentialAnimationGroup>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsequentialanimationgroup.h>
#include "gen_qsequentialanimationgroup.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSequentialAnimationGroup final : public QSequentialAnimationGroup {
	struct QSequentialAnimationGroup_VTable* vtbl;
public:

	VirtualQSequentialAnimationGroup(struct QSequentialAnimationGroup_VTable* vtbl): QSequentialAnimationGroup(), vtbl(vtbl) {};
	VirtualQSequentialAnimationGroup(struct QSequentialAnimationGroup_VTable* vtbl, QObject* parent): QSequentialAnimationGroup(parent), vtbl(vtbl) {};

	virtual ~VirtualQSequentialAnimationGroup() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSequentialAnimationGroup::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSequentialAnimationGroup_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSequentialAnimationGroup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSequentialAnimationGroup_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSequentialAnimationGroup::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSequentialAnimationGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QSequentialAnimationGroup::duration();
		}


		int callback_return_value = vtbl->duration(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSequentialAnimationGroup_virtualbase_duration(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSequentialAnimationGroup::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSequentialAnimationGroup_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentTime(int param1) override {
		if (vtbl->updateCurrentTime == 0) {
			QSequentialAnimationGroup::updateCurrentTime(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->updateCurrentTime(vtbl, this, sigval1);

	}

	friend void QSequentialAnimationGroup_virtualbase_updateCurrentTime(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QSequentialAnimationGroup::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);

		vtbl->updateState(vtbl, this, sigval1, sigval2);

	}

	friend void QSequentialAnimationGroup_virtualbase_updateState(void* self, int newState, int oldState);

	// Subclass to allow providing a Go implementation
	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QSequentialAnimationGroup::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(vtbl, this, sigval1);

	}

	friend void QSequentialAnimationGroup_virtualbase_updateDirection(void* self, int direction);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSequentialAnimationGroup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSequentialAnimationGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSequentialAnimationGroup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSequentialAnimationGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSequentialAnimationGroup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSequentialAnimationGroup_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSequentialAnimationGroup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSequentialAnimationGroup_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSequentialAnimationGroup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSequentialAnimationGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSequentialAnimationGroup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSequentialAnimationGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSequentialAnimationGroup_protectedbase_sender(const void* self);
	friend int QSequentialAnimationGroup_protectedbase_senderSignalIndex(const void* self);
	friend int QSequentialAnimationGroup_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSequentialAnimationGroup_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSequentialAnimationGroup* QSequentialAnimationGroup_new(struct QSequentialAnimationGroup_VTable* vtbl) {
	return new VirtualQSequentialAnimationGroup(vtbl);
}

QSequentialAnimationGroup* QSequentialAnimationGroup_new2(struct QSequentialAnimationGroup_VTable* vtbl, QObject* parent) {
	return new VirtualQSequentialAnimationGroup(vtbl, parent);
}

void QSequentialAnimationGroup_virtbase(QSequentialAnimationGroup* src, QAnimationGroup** outptr_QAnimationGroup) {
	*outptr_QAnimationGroup = static_cast<QAnimationGroup*>(src);
}

QMetaObject* QSequentialAnimationGroup_metaObject(const QSequentialAnimationGroup* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSequentialAnimationGroup_metacast(QSequentialAnimationGroup* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSequentialAnimationGroup_metacall(QSequentialAnimationGroup* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSequentialAnimationGroup_tr(const char* s) {
	QString _ret = QSequentialAnimationGroup::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPauseAnimation* QSequentialAnimationGroup_addPause(QSequentialAnimationGroup* self, int msecs) {
	return self->addPause(static_cast<int>(msecs));
}

QPauseAnimation* QSequentialAnimationGroup_insertPause(QSequentialAnimationGroup* self, int index, int msecs) {
	return self->insertPause(static_cast<int>(index), static_cast<int>(msecs));
}

QAbstractAnimation* QSequentialAnimationGroup_currentAnimation(const QSequentialAnimationGroup* self) {
	return self->currentAnimation();
}

int QSequentialAnimationGroup_duration(const QSequentialAnimationGroup* self) {
	return self->duration();
}

void QSequentialAnimationGroup_currentAnimationChanged(QSequentialAnimationGroup* self, QAbstractAnimation* current) {
	self->currentAnimationChanged(current);
}

void QSequentialAnimationGroup_connect_currentAnimationChanged(QSequentialAnimationGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractAnimation*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAbstractAnimation*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAbstractAnimation*);
		void operator()(QAbstractAnimation* current) {
			QAbstractAnimation* sigval1 = current;
			callback(slot, sigval1);
		}
	};
	VirtualQSequentialAnimationGroup::connect(self, static_cast<void (QSequentialAnimationGroup::*)(QAbstractAnimation*)>(&QSequentialAnimationGroup::currentAnimationChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QSequentialAnimationGroup_tr2(const char* s, const char* c) {
	QString _ret = QSequentialAnimationGroup::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSequentialAnimationGroup_tr3(const char* s, const char* c, int n) {
	QString _ret = QSequentialAnimationGroup::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSequentialAnimationGroup_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::metaObject();

}

void* QSequentialAnimationGroup_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::qt_metacast(param1);

}

int QSequentialAnimationGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

int QSequentialAnimationGroup_virtualbase_duration(const void* self) {

	return ( (const VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::duration();

}

bool QSequentialAnimationGroup_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::event(event);

}

void QSequentialAnimationGroup_virtualbase_updateCurrentTime(void* self, int param1) {

	( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::updateCurrentTime(static_cast<int>(param1));

}

void QSequentialAnimationGroup_virtualbase_updateState(void* self, int newState, int oldState) {

	( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::updateState(static_cast<VirtualQSequentialAnimationGroup::State>(newState), static_cast<VirtualQSequentialAnimationGroup::State>(oldState));

}

void QSequentialAnimationGroup_virtualbase_updateDirection(void* self, int direction) {

	( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::updateDirection(static_cast<VirtualQSequentialAnimationGroup::Direction>(direction));

}

bool QSequentialAnimationGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::eventFilter(watched, event);

}

void QSequentialAnimationGroup_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::timerEvent(event);

}

void QSequentialAnimationGroup_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::childEvent(event);

}

void QSequentialAnimationGroup_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::customEvent(event);

}

void QSequentialAnimationGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::connectNotify(*signal);

}

void QSequentialAnimationGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSequentialAnimationGroup*)(self) )->QSequentialAnimationGroup::disconnectNotify(*signal);

}

const QMetaObject* QSequentialAnimationGroup_staticMetaObject() { return &QSequentialAnimationGroup::staticMetaObject; }
QObject* QSequentialAnimationGroup_protectedbase_sender(const void* self) {
	VirtualQSequentialAnimationGroup* self_cast = static_cast<VirtualQSequentialAnimationGroup*>( (QSequentialAnimationGroup*)(self) );
	
	return self_cast->sender();

}

int QSequentialAnimationGroup_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSequentialAnimationGroup* self_cast = static_cast<VirtualQSequentialAnimationGroup*>( (QSequentialAnimationGroup*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSequentialAnimationGroup_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSequentialAnimationGroup* self_cast = static_cast<VirtualQSequentialAnimationGroup*>( (QSequentialAnimationGroup*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSequentialAnimationGroup_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSequentialAnimationGroup* self_cast = static_cast<VirtualQSequentialAnimationGroup*>( (QSequentialAnimationGroup*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSequentialAnimationGroup_delete(QSequentialAnimationGroup* self) {
	delete self;
}

