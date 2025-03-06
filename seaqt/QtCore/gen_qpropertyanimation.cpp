#include <QAbstractAnimation>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPropertyAnimation>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <QVariantAnimation>
#include <qpropertyanimation.h>
#include "gen_qpropertyanimation.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQPropertyAnimation final : public QPropertyAnimation {
	struct QPropertyAnimation_VTable* vtbl;
public:

	VirtualQPropertyAnimation(struct QPropertyAnimation_VTable* vtbl): QPropertyAnimation(), vtbl(vtbl) {};
	VirtualQPropertyAnimation(struct QPropertyAnimation_VTable* vtbl, QObject* target, const QByteArray& propertyName): QPropertyAnimation(target, propertyName), vtbl(vtbl) {};
	VirtualQPropertyAnimation(struct QPropertyAnimation_VTable* vtbl, QObject* parent): QPropertyAnimation(parent), vtbl(vtbl) {};
	VirtualQPropertyAnimation(struct QPropertyAnimation_VTable* vtbl, QObject* target, const QByteArray& propertyName, QObject* parent): QPropertyAnimation(target, propertyName, parent), vtbl(vtbl) {};

	virtual ~VirtualQPropertyAnimation() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPropertyAnimation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QPropertyAnimation_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPropertyAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QPropertyAnimation_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPropertyAnimation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPropertyAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPropertyAnimation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPropertyAnimation_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentValue(const QVariant& value) override {
		if (vtbl->updateCurrentValue == 0) {
			QPropertyAnimation::updateCurrentValue(value);
			return;
		}

		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&value_ret);

		vtbl->updateCurrentValue(vtbl, this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_updateCurrentValue(void* self, QVariant* value);

	// Subclass to allow providing a Go implementation
	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QPropertyAnimation::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);

		vtbl->updateState(vtbl, this, sigval1, sigval2);

	}

	friend void QPropertyAnimation_virtualbase_updateState(void* self, int newState, int oldState);

	// Subclass to allow providing a Go implementation
	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QPropertyAnimation::duration();
		}


		int callback_return_value = vtbl->duration(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPropertyAnimation_virtualbase_duration(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentTime(int param1) override {
		if (vtbl->updateCurrentTime == 0) {
			QPropertyAnimation::updateCurrentTime(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->updateCurrentTime(vtbl, this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_updateCurrentTime(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant interpolated(const QVariant& from, const QVariant& to, qreal progress) const override {
		if (vtbl->interpolated == 0) {
			return QPropertyAnimation::interpolated(from, to, progress);
		}

		const QVariant& from_ret = from;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&from_ret);
		const QVariant& to_ret = to;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&to_ret);
		qreal progress_ret = progress;
		double sigval3 = static_cast<double>(progress_ret);

		QVariant* callback_return_value = vtbl->interpolated(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	friend QVariant* QPropertyAnimation_virtualbase_interpolated(const void* self, QVariant* from, QVariant* to, double progress);

	// Subclass to allow providing a Go implementation
	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QPropertyAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(vtbl, this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_updateDirection(void* self, int direction);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPropertyAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPropertyAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPropertyAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPropertyAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPropertyAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPropertyAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPropertyAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QPropertyAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPropertyAnimation_protectedbase_sender(const void* self);
	friend int QPropertyAnimation_protectedbase_senderSignalIndex(const void* self);
	friend int QPropertyAnimation_protectedbase_receivers(const void* self, const char* signal);
	friend bool QPropertyAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QPropertyAnimation* QPropertyAnimation_new(struct QPropertyAnimation_VTable* vtbl) {
	return new VirtualQPropertyAnimation(vtbl);
}

QPropertyAnimation* QPropertyAnimation_new2(struct QPropertyAnimation_VTable* vtbl, QObject* target, struct miqt_string propertyName) {
	QByteArray propertyName_QByteArray(propertyName.data, propertyName.len);
	return new VirtualQPropertyAnimation(vtbl, target, propertyName_QByteArray);
}

QPropertyAnimation* QPropertyAnimation_new3(struct QPropertyAnimation_VTable* vtbl, QObject* parent) {
	return new VirtualQPropertyAnimation(vtbl, parent);
}

QPropertyAnimation* QPropertyAnimation_new4(struct QPropertyAnimation_VTable* vtbl, QObject* target, struct miqt_string propertyName, QObject* parent) {
	QByteArray propertyName_QByteArray(propertyName.data, propertyName.len);
	return new VirtualQPropertyAnimation(vtbl, target, propertyName_QByteArray, parent);
}

void QPropertyAnimation_virtbase(QPropertyAnimation* src, QVariantAnimation** outptr_QVariantAnimation) {
	*outptr_QVariantAnimation = static_cast<QVariantAnimation*>(src);
}

QMetaObject* QPropertyAnimation_metaObject(const QPropertyAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPropertyAnimation_metacast(QPropertyAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPropertyAnimation_metacall(QPropertyAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPropertyAnimation_tr(const char* s) {
	QString _ret = QPropertyAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPropertyAnimation_trUtf8(const char* s) {
	QString _ret = QPropertyAnimation::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QPropertyAnimation_targetObject(const QPropertyAnimation* self) {
	return self->targetObject();
}

void QPropertyAnimation_setTargetObject(QPropertyAnimation* self, QObject* target) {
	self->setTargetObject(target);
}

struct miqt_string QPropertyAnimation_propertyName(const QPropertyAnimation* self) {
	QByteArray _qb = self->propertyName();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QPropertyAnimation_setPropertyName(QPropertyAnimation* self, struct miqt_string propertyName) {
	QByteArray propertyName_QByteArray(propertyName.data, propertyName.len);
	self->setPropertyName(propertyName_QByteArray);
}

struct miqt_string QPropertyAnimation_tr2(const char* s, const char* c) {
	QString _ret = QPropertyAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPropertyAnimation_tr3(const char* s, const char* c, int n) {
	QString _ret = QPropertyAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPropertyAnimation_trUtf82(const char* s, const char* c) {
	QString _ret = QPropertyAnimation::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPropertyAnimation_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPropertyAnimation::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPropertyAnimation_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::metaObject();

}

void* QPropertyAnimation_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::qt_metacast(param1);

}

int QPropertyAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QPropertyAnimation_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::event(event);

}

void QPropertyAnimation_virtualbase_updateCurrentValue(void* self, QVariant* value) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::updateCurrentValue(*value);

}

void QPropertyAnimation_virtualbase_updateState(void* self, int newState, int oldState) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::updateState(static_cast<VirtualQPropertyAnimation::State>(newState), static_cast<VirtualQPropertyAnimation::State>(oldState));

}

int QPropertyAnimation_virtualbase_duration(const void* self) {

	return ( (const VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::duration();

}

void QPropertyAnimation_virtualbase_updateCurrentTime(void* self, int param1) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::updateCurrentTime(static_cast<int>(param1));

}

QVariant* QPropertyAnimation_virtualbase_interpolated(const void* self, QVariant* from, QVariant* to, double progress) {

	return new QVariant(( (const VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::interpolated(*from, *to, static_cast<qreal>(progress)));

}

void QPropertyAnimation_virtualbase_updateDirection(void* self, int direction) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::updateDirection(static_cast<VirtualQPropertyAnimation::Direction>(direction));

}

bool QPropertyAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::eventFilter(watched, event);

}

void QPropertyAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::timerEvent(event);

}

void QPropertyAnimation_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::childEvent(event);

}

void QPropertyAnimation_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::customEvent(event);

}

void QPropertyAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::connectNotify(*signal);

}

void QPropertyAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPropertyAnimation*)(self) )->QPropertyAnimation::disconnectNotify(*signal);

}

const QMetaObject* QPropertyAnimation_staticMetaObject() { return &QPropertyAnimation::staticMetaObject; }
QObject* QPropertyAnimation_protectedbase_sender(const void* self) {
	VirtualQPropertyAnimation* self_cast = static_cast<VirtualQPropertyAnimation*>( (QPropertyAnimation*)(self) );
	
	return self_cast->sender();

}

int QPropertyAnimation_protectedbase_senderSignalIndex(const void* self) {
	VirtualQPropertyAnimation* self_cast = static_cast<VirtualQPropertyAnimation*>( (QPropertyAnimation*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QPropertyAnimation_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQPropertyAnimation* self_cast = static_cast<VirtualQPropertyAnimation*>( (QPropertyAnimation*)(self) );
	
	return self_cast->receivers(signal);

}

bool QPropertyAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQPropertyAnimation* self_cast = static_cast<VirtualQPropertyAnimation*>( (QPropertyAnimation*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QPropertyAnimation_delete(QPropertyAnimation* self) {
	delete self;
}

