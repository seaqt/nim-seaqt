#include <QChildEvent>
#include <QEvent>
#include <QGesture>
#include <QGestureEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPanGesture>
#include <QPinchGesture>
#include <QPointF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSwipeGesture>
#include <QTapAndHoldGesture>
#include <QTapGesture>
#include <QTimerEvent>
#include <QWidget>
#include <qgesture.h>
#include "gen_qgesture.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGesture final : public QGesture {
	struct QGesture_VTable* vtbl;
public:

	VirtualQGesture(struct QGesture_VTable* vtbl): QGesture(), vtbl(vtbl) {};
	VirtualQGesture(struct QGesture_VTable* vtbl, QObject* parent): QGesture(parent), vtbl(vtbl) {};

	virtual ~VirtualQGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGesture_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGesture_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGesture_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGesture_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGesture_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QGesture* QGesture_new(struct QGesture_VTable* vtbl) {
	return new VirtualQGesture(vtbl);
}

QGesture* QGesture_new2(struct QGesture_VTable* vtbl, QObject* parent) {
	return new VirtualQGesture(vtbl, parent);
}

void QGesture_virtbase(QGesture* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGesture_metaObject(const QGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGesture_metacast(QGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGesture_metacall(QGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGesture_tr(const char* s) {
	QString _ret = QGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QGesture_gestureType(const QGesture* self) {
	Qt::GestureType _ret = self->gestureType();
	return static_cast<int>(_ret);
}

int QGesture_state(const QGesture* self) {
	Qt::GestureState _ret = self->state();
	return static_cast<int>(_ret);
}

QPointF* QGesture_hotSpot(const QGesture* self) {
	return new QPointF(self->hotSpot());
}

void QGesture_setHotSpot(QGesture* self, QPointF* value) {
	self->setHotSpot(*value);
}

bool QGesture_hasHotSpot(const QGesture* self) {
	return self->hasHotSpot();
}

void QGesture_unsetHotSpot(QGesture* self) {
	self->unsetHotSpot();
}

void QGesture_setGestureCancelPolicy(QGesture* self, int policy) {
	self->setGestureCancelPolicy(static_cast<QGesture::GestureCancelPolicy>(policy));
}

int QGesture_gestureCancelPolicy(const QGesture* self) {
	QGesture::GestureCancelPolicy _ret = self->gestureCancelPolicy();
	return static_cast<int>(_ret);
}

struct miqt_string QGesture_tr2(const char* s, const char* c) {
	QString _ret = QGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGesture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGesture*)(self) )->QGesture::metaObject();

}

void* QGesture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGesture*)(self) )->QGesture::qt_metacast(param1);

}

int QGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGesture*)(self) )->QGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QGesture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGesture*)(self) )->QGesture::event(event);

}

bool QGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGesture*)(self) )->QGesture::eventFilter(watched, event);

}

void QGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGesture*)(self) )->QGesture::timerEvent(event);

}

void QGesture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGesture*)(self) )->QGesture::childEvent(event);

}

void QGesture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGesture*)(self) )->QGesture::customEvent(event);

}

void QGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGesture*)(self) )->QGesture::connectNotify(*signal);

}

void QGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGesture*)(self) )->QGesture::disconnectNotify(*signal);

}

const QMetaObject* QGesture_staticMetaObject() { return &QGesture::staticMetaObject; }
QObject* QGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGesture* self_cast = dynamic_cast<VirtualQGesture*>( (QGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQGesture* self_cast = dynamic_cast<VirtualQGesture*>( (QGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQGesture* self_cast = dynamic_cast<VirtualQGesture*>( (QGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQGesture* self_cast = dynamic_cast<VirtualQGesture*>( (QGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGesture_delete(QGesture* self) {
	delete self;
}

class VirtualQPanGesture final : public QPanGesture {
	struct QPanGesture_VTable* vtbl;
public:

	VirtualQPanGesture(struct QPanGesture_VTable* vtbl): QPanGesture(), vtbl(vtbl) {};
	VirtualQPanGesture(struct QPanGesture_VTable* vtbl, QObject* parent): QPanGesture(parent), vtbl(vtbl) {};

	virtual ~VirtualQPanGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPanGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QPanGesture_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPanGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QPanGesture_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPanGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPanGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPanGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPanGesture_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPanGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPanGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPanGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QPanGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPanGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QPanGesture_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPanGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QPanGesture_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPanGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QPanGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPanGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QPanGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPanGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QPanGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QPanGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QPanGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QPanGesture* QPanGesture_new(struct QPanGesture_VTable* vtbl) {
	return new VirtualQPanGesture(vtbl);
}

QPanGesture* QPanGesture_new2(struct QPanGesture_VTable* vtbl, QObject* parent) {
	return new VirtualQPanGesture(vtbl, parent);
}

void QPanGesture_virtbase(QPanGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QPanGesture_metaObject(const QPanGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPanGesture_metacast(QPanGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPanGesture_metacall(QPanGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPanGesture_tr(const char* s) {
	QString _ret = QPanGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPointF* QPanGesture_lastOffset(const QPanGesture* self) {
	return new QPointF(self->lastOffset());
}

QPointF* QPanGesture_offset(const QPanGesture* self) {
	return new QPointF(self->offset());
}

QPointF* QPanGesture_delta(const QPanGesture* self) {
	return new QPointF(self->delta());
}

double QPanGesture_acceleration(const QPanGesture* self) {
	qreal _ret = self->acceleration();
	return static_cast<double>(_ret);
}

void QPanGesture_setLastOffset(QPanGesture* self, QPointF* value) {
	self->setLastOffset(*value);
}

void QPanGesture_setOffset(QPanGesture* self, QPointF* value) {
	self->setOffset(*value);
}

void QPanGesture_setAcceleration(QPanGesture* self, double value) {
	self->setAcceleration(static_cast<qreal>(value));
}

struct miqt_string QPanGesture_tr2(const char* s, const char* c) {
	QString _ret = QPanGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPanGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QPanGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPanGesture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQPanGesture*)(self) )->QPanGesture::metaObject();

}

void* QPanGesture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQPanGesture*)(self) )->QPanGesture::qt_metacast(param1);

}

int QPanGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQPanGesture*)(self) )->QPanGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QPanGesture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQPanGesture*)(self) )->QPanGesture::event(event);

}

bool QPanGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQPanGesture*)(self) )->QPanGesture::eventFilter(watched, event);

}

void QPanGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQPanGesture*)(self) )->QPanGesture::timerEvent(event);

}

void QPanGesture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQPanGesture*)(self) )->QPanGesture::childEvent(event);

}

void QPanGesture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQPanGesture*)(self) )->QPanGesture::customEvent(event);

}

void QPanGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPanGesture*)(self) )->QPanGesture::connectNotify(*signal);

}

void QPanGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPanGesture*)(self) )->QPanGesture::disconnectNotify(*signal);

}

const QMetaObject* QPanGesture_staticMetaObject() { return &QPanGesture::staticMetaObject; }
QObject* QPanGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPanGesture* self_cast = dynamic_cast<VirtualQPanGesture*>( (QPanGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QPanGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPanGesture* self_cast = dynamic_cast<VirtualQPanGesture*>( (QPanGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QPanGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQPanGesture* self_cast = dynamic_cast<VirtualQPanGesture*>( (QPanGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QPanGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQPanGesture* self_cast = dynamic_cast<VirtualQPanGesture*>( (QPanGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QPanGesture_delete(QPanGesture* self) {
	delete self;
}

class VirtualQPinchGesture final : public QPinchGesture {
	struct QPinchGesture_VTable* vtbl;
public:

	VirtualQPinchGesture(struct QPinchGesture_VTable* vtbl): QPinchGesture(), vtbl(vtbl) {};
	VirtualQPinchGesture(struct QPinchGesture_VTable* vtbl, QObject* parent): QPinchGesture(parent), vtbl(vtbl) {};

	virtual ~VirtualQPinchGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPinchGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QPinchGesture_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPinchGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QPinchGesture_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPinchGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPinchGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPinchGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QPinchGesture_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPinchGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPinchGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPinchGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QPinchGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPinchGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QPinchGesture_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPinchGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QPinchGesture_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPinchGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QPinchGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPinchGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QPinchGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPinchGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QPinchGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QPinchGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QPinchGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QPinchGesture* QPinchGesture_new(struct QPinchGesture_VTable* vtbl) {
	return new VirtualQPinchGesture(vtbl);
}

QPinchGesture* QPinchGesture_new2(struct QPinchGesture_VTable* vtbl, QObject* parent) {
	return new VirtualQPinchGesture(vtbl, parent);
}

void QPinchGesture_virtbase(QPinchGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QPinchGesture_metaObject(const QPinchGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPinchGesture_metacast(QPinchGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPinchGesture_metacall(QPinchGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPinchGesture_tr(const char* s) {
	QString _ret = QPinchGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPinchGesture_totalChangeFlags(const QPinchGesture* self) {
	QPinchGesture::ChangeFlags _ret = self->totalChangeFlags();
	return static_cast<int>(_ret);
}

void QPinchGesture_setTotalChangeFlags(QPinchGesture* self, int value) {
	self->setTotalChangeFlags(static_cast<QPinchGesture::ChangeFlags>(value));
}

int QPinchGesture_changeFlags(const QPinchGesture* self) {
	QPinchGesture::ChangeFlags _ret = self->changeFlags();
	return static_cast<int>(_ret);
}

void QPinchGesture_setChangeFlags(QPinchGesture* self, int value) {
	self->setChangeFlags(static_cast<QPinchGesture::ChangeFlags>(value));
}

QPointF* QPinchGesture_startCenterPoint(const QPinchGesture* self) {
	return new QPointF(self->startCenterPoint());
}

QPointF* QPinchGesture_lastCenterPoint(const QPinchGesture* self) {
	return new QPointF(self->lastCenterPoint());
}

QPointF* QPinchGesture_centerPoint(const QPinchGesture* self) {
	return new QPointF(self->centerPoint());
}

void QPinchGesture_setStartCenterPoint(QPinchGesture* self, QPointF* value) {
	self->setStartCenterPoint(*value);
}

void QPinchGesture_setLastCenterPoint(QPinchGesture* self, QPointF* value) {
	self->setLastCenterPoint(*value);
}

void QPinchGesture_setCenterPoint(QPinchGesture* self, QPointF* value) {
	self->setCenterPoint(*value);
}

double QPinchGesture_totalScaleFactor(const QPinchGesture* self) {
	qreal _ret = self->totalScaleFactor();
	return static_cast<double>(_ret);
}

double QPinchGesture_lastScaleFactor(const QPinchGesture* self) {
	qreal _ret = self->lastScaleFactor();
	return static_cast<double>(_ret);
}

double QPinchGesture_scaleFactor(const QPinchGesture* self) {
	qreal _ret = self->scaleFactor();
	return static_cast<double>(_ret);
}

void QPinchGesture_setTotalScaleFactor(QPinchGesture* self, double value) {
	self->setTotalScaleFactor(static_cast<qreal>(value));
}

void QPinchGesture_setLastScaleFactor(QPinchGesture* self, double value) {
	self->setLastScaleFactor(static_cast<qreal>(value));
}

void QPinchGesture_setScaleFactor(QPinchGesture* self, double value) {
	self->setScaleFactor(static_cast<qreal>(value));
}

double QPinchGesture_totalRotationAngle(const QPinchGesture* self) {
	qreal _ret = self->totalRotationAngle();
	return static_cast<double>(_ret);
}

double QPinchGesture_lastRotationAngle(const QPinchGesture* self) {
	qreal _ret = self->lastRotationAngle();
	return static_cast<double>(_ret);
}

double QPinchGesture_rotationAngle(const QPinchGesture* self) {
	qreal _ret = self->rotationAngle();
	return static_cast<double>(_ret);
}

void QPinchGesture_setTotalRotationAngle(QPinchGesture* self, double value) {
	self->setTotalRotationAngle(static_cast<qreal>(value));
}

void QPinchGesture_setLastRotationAngle(QPinchGesture* self, double value) {
	self->setLastRotationAngle(static_cast<qreal>(value));
}

void QPinchGesture_setRotationAngle(QPinchGesture* self, double value) {
	self->setRotationAngle(static_cast<qreal>(value));
}

struct miqt_string QPinchGesture_tr2(const char* s, const char* c) {
	QString _ret = QPinchGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPinchGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QPinchGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPinchGesture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQPinchGesture*)(self) )->QPinchGesture::metaObject();

}

void* QPinchGesture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQPinchGesture*)(self) )->QPinchGesture::qt_metacast(param1);

}

int QPinchGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQPinchGesture*)(self) )->QPinchGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QPinchGesture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQPinchGesture*)(self) )->QPinchGesture::event(event);

}

bool QPinchGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQPinchGesture*)(self) )->QPinchGesture::eventFilter(watched, event);

}

void QPinchGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQPinchGesture*)(self) )->QPinchGesture::timerEvent(event);

}

void QPinchGesture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQPinchGesture*)(self) )->QPinchGesture::childEvent(event);

}

void QPinchGesture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQPinchGesture*)(self) )->QPinchGesture::customEvent(event);

}

void QPinchGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPinchGesture*)(self) )->QPinchGesture::connectNotify(*signal);

}

void QPinchGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQPinchGesture*)(self) )->QPinchGesture::disconnectNotify(*signal);

}

const QMetaObject* QPinchGesture_staticMetaObject() { return &QPinchGesture::staticMetaObject; }
QObject* QPinchGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPinchGesture* self_cast = dynamic_cast<VirtualQPinchGesture*>( (QPinchGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QPinchGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQPinchGesture* self_cast = dynamic_cast<VirtualQPinchGesture*>( (QPinchGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QPinchGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQPinchGesture* self_cast = dynamic_cast<VirtualQPinchGesture*>( (QPinchGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QPinchGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQPinchGesture* self_cast = dynamic_cast<VirtualQPinchGesture*>( (QPinchGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QPinchGesture_delete(QPinchGesture* self) {
	delete self;
}

class VirtualQSwipeGesture final : public QSwipeGesture {
	struct QSwipeGesture_VTable* vtbl;
public:

	VirtualQSwipeGesture(struct QSwipeGesture_VTable* vtbl): QSwipeGesture(), vtbl(vtbl) {};
	VirtualQSwipeGesture(struct QSwipeGesture_VTable* vtbl, QObject* parent): QSwipeGesture(parent), vtbl(vtbl) {};

	virtual ~VirtualQSwipeGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSwipeGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSwipeGesture_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSwipeGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSwipeGesture_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSwipeGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSwipeGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSwipeGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSwipeGesture_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSwipeGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSwipeGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSwipeGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSwipeGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSwipeGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSwipeGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSwipeGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSwipeGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSwipeGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSwipeGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSwipeGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSwipeGesture* QSwipeGesture_new(struct QSwipeGesture_VTable* vtbl) {
	return new VirtualQSwipeGesture(vtbl);
}

QSwipeGesture* QSwipeGesture_new2(struct QSwipeGesture_VTable* vtbl, QObject* parent) {
	return new VirtualQSwipeGesture(vtbl, parent);
}

void QSwipeGesture_virtbase(QSwipeGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QSwipeGesture_metaObject(const QSwipeGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSwipeGesture_metacast(QSwipeGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSwipeGesture_metacall(QSwipeGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSwipeGesture_tr(const char* s) {
	QString _ret = QSwipeGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSwipeGesture_horizontalDirection(const QSwipeGesture* self) {
	QSwipeGesture::SwipeDirection _ret = self->horizontalDirection();
	return static_cast<int>(_ret);
}

int QSwipeGesture_verticalDirection(const QSwipeGesture* self) {
	QSwipeGesture::SwipeDirection _ret = self->verticalDirection();
	return static_cast<int>(_ret);
}

double QSwipeGesture_swipeAngle(const QSwipeGesture* self) {
	qreal _ret = self->swipeAngle();
	return static_cast<double>(_ret);
}

void QSwipeGesture_setSwipeAngle(QSwipeGesture* self, double value) {
	self->setSwipeAngle(static_cast<qreal>(value));
}

struct miqt_string QSwipeGesture_tr2(const char* s, const char* c) {
	QString _ret = QSwipeGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSwipeGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QSwipeGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSwipeGesture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSwipeGesture*)(self) )->QSwipeGesture::metaObject();

}

void* QSwipeGesture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::qt_metacast(param1);

}

int QSwipeGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSwipeGesture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::event(event);

}

bool QSwipeGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::eventFilter(watched, event);

}

void QSwipeGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::timerEvent(event);

}

void QSwipeGesture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::childEvent(event);

}

void QSwipeGesture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::customEvent(event);

}

void QSwipeGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::connectNotify(*signal);

}

void QSwipeGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSwipeGesture*)(self) )->QSwipeGesture::disconnectNotify(*signal);

}

const QMetaObject* QSwipeGesture_staticMetaObject() { return &QSwipeGesture::staticMetaObject; }
QObject* QSwipeGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSwipeGesture* self_cast = dynamic_cast<VirtualQSwipeGesture*>( (QSwipeGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSwipeGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSwipeGesture* self_cast = dynamic_cast<VirtualQSwipeGesture*>( (QSwipeGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSwipeGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSwipeGesture* self_cast = dynamic_cast<VirtualQSwipeGesture*>( (QSwipeGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSwipeGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSwipeGesture* self_cast = dynamic_cast<VirtualQSwipeGesture*>( (QSwipeGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSwipeGesture_delete(QSwipeGesture* self) {
	delete self;
}

class VirtualQTapGesture final : public QTapGesture {
	struct QTapGesture_VTable* vtbl;
public:

	VirtualQTapGesture(struct QTapGesture_VTable* vtbl): QTapGesture(), vtbl(vtbl) {};
	VirtualQTapGesture(struct QTapGesture_VTable* vtbl, QObject* parent): QTapGesture(parent), vtbl(vtbl) {};

	virtual ~VirtualQTapGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTapGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTapGesture_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTapGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTapGesture_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTapGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTapGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTapGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTapGesture_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTapGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTapGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTapGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTapGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTapGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTapGesture_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTapGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTapGesture_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTapGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTapGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTapGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTapGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QTapGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTapGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTapGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTapGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTapGesture* QTapGesture_new(struct QTapGesture_VTable* vtbl) {
	return new VirtualQTapGesture(vtbl);
}

QTapGesture* QTapGesture_new2(struct QTapGesture_VTable* vtbl, QObject* parent) {
	return new VirtualQTapGesture(vtbl, parent);
}

void QTapGesture_virtbase(QTapGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QTapGesture_metaObject(const QTapGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTapGesture_metacast(QTapGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTapGesture_metacall(QTapGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTapGesture_tr(const char* s) {
	QString _ret = QTapGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPointF* QTapGesture_position(const QTapGesture* self) {
	return new QPointF(self->position());
}

void QTapGesture_setPosition(QTapGesture* self, QPointF* pos) {
	self->setPosition(*pos);
}

struct miqt_string QTapGesture_tr2(const char* s, const char* c) {
	QString _ret = QTapGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTapGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QTapGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTapGesture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTapGesture*)(self) )->QTapGesture::metaObject();

}

void* QTapGesture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTapGesture*)(self) )->QTapGesture::qt_metacast(param1);

}

int QTapGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTapGesture*)(self) )->QTapGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QTapGesture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQTapGesture*)(self) )->QTapGesture::event(event);

}

bool QTapGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQTapGesture*)(self) )->QTapGesture::eventFilter(watched, event);

}

void QTapGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTapGesture*)(self) )->QTapGesture::timerEvent(event);

}

void QTapGesture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTapGesture*)(self) )->QTapGesture::childEvent(event);

}

void QTapGesture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTapGesture*)(self) )->QTapGesture::customEvent(event);

}

void QTapGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTapGesture*)(self) )->QTapGesture::connectNotify(*signal);

}

void QTapGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTapGesture*)(self) )->QTapGesture::disconnectNotify(*signal);

}

const QMetaObject* QTapGesture_staticMetaObject() { return &QTapGesture::staticMetaObject; }
QObject* QTapGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTapGesture* self_cast = dynamic_cast<VirtualQTapGesture*>( (QTapGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTapGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTapGesture* self_cast = dynamic_cast<VirtualQTapGesture*>( (QTapGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTapGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQTapGesture* self_cast = dynamic_cast<VirtualQTapGesture*>( (QTapGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTapGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQTapGesture* self_cast = dynamic_cast<VirtualQTapGesture*>( (QTapGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTapGesture_delete(QTapGesture* self) {
	delete self;
}

class VirtualQTapAndHoldGesture final : public QTapAndHoldGesture {
	struct QTapAndHoldGesture_VTable* vtbl;
public:

	VirtualQTapAndHoldGesture(struct QTapAndHoldGesture_VTable* vtbl): QTapAndHoldGesture(), vtbl(vtbl) {};
	VirtualQTapAndHoldGesture(struct QTapAndHoldGesture_VTable* vtbl, QObject* parent): QTapAndHoldGesture(parent), vtbl(vtbl) {};

	virtual ~VirtualQTapAndHoldGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTapAndHoldGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTapAndHoldGesture_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTapAndHoldGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTapAndHoldGesture_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTapAndHoldGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTapAndHoldGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTapAndHoldGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTapAndHoldGesture_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTapAndHoldGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTapAndHoldGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTapAndHoldGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTapAndHoldGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTapAndHoldGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTapAndHoldGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTapAndHoldGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QTapAndHoldGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTapAndHoldGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTapAndHoldGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTapAndHoldGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTapAndHoldGesture* QTapAndHoldGesture_new(struct QTapAndHoldGesture_VTable* vtbl) {
	return new VirtualQTapAndHoldGesture(vtbl);
}

QTapAndHoldGesture* QTapAndHoldGesture_new2(struct QTapAndHoldGesture_VTable* vtbl, QObject* parent) {
	return new VirtualQTapAndHoldGesture(vtbl, parent);
}

void QTapAndHoldGesture_virtbase(QTapAndHoldGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QTapAndHoldGesture_metaObject(const QTapAndHoldGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTapAndHoldGesture_metacast(QTapAndHoldGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTapAndHoldGesture_metacall(QTapAndHoldGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTapAndHoldGesture_tr(const char* s) {
	QString _ret = QTapAndHoldGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPointF* QTapAndHoldGesture_position(const QTapAndHoldGesture* self) {
	return new QPointF(self->position());
}

void QTapAndHoldGesture_setPosition(QTapAndHoldGesture* self, QPointF* pos) {
	self->setPosition(*pos);
}

void QTapAndHoldGesture_setTimeout(int msecs) {
	QTapAndHoldGesture::setTimeout(static_cast<int>(msecs));
}

int QTapAndHoldGesture_timeout() {
	return QTapAndHoldGesture::timeout();
}

struct miqt_string QTapAndHoldGesture_tr2(const char* s, const char* c) {
	QString _ret = QTapAndHoldGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTapAndHoldGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QTapAndHoldGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTapAndHoldGesture_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::metaObject();

}

void* QTapAndHoldGesture_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::qt_metacast(param1);

}

int QTapAndHoldGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QTapAndHoldGesture_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::event(event);

}

bool QTapAndHoldGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::eventFilter(watched, event);

}

void QTapAndHoldGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::timerEvent(event);

}

void QTapAndHoldGesture_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::childEvent(event);

}

void QTapAndHoldGesture_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::customEvent(event);

}

void QTapAndHoldGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::connectNotify(*signal);

}

void QTapAndHoldGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTapAndHoldGesture*)(self) )->QTapAndHoldGesture::disconnectNotify(*signal);

}

const QMetaObject* QTapAndHoldGesture_staticMetaObject() { return &QTapAndHoldGesture::staticMetaObject; }
QObject* QTapAndHoldGesture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTapAndHoldGesture* self_cast = dynamic_cast<VirtualQTapAndHoldGesture*>( (QTapAndHoldGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTapAndHoldGesture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTapAndHoldGesture* self_cast = dynamic_cast<VirtualQTapAndHoldGesture*>( (QTapAndHoldGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTapAndHoldGesture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQTapAndHoldGesture* self_cast = dynamic_cast<VirtualQTapAndHoldGesture*>( (QTapAndHoldGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTapAndHoldGesture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQTapAndHoldGesture* self_cast = dynamic_cast<VirtualQTapAndHoldGesture*>( (QTapAndHoldGesture*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTapAndHoldGesture_delete(QTapAndHoldGesture* self) {
	delete self;
}

class VirtualQGestureEvent final : public QGestureEvent {
	struct QGestureEvent_VTable* vtbl;
public:

	VirtualQGestureEvent(struct QGestureEvent_VTable* vtbl, const QList<QGesture *>& gestures): QGestureEvent(gestures), vtbl(vtbl) {};
	VirtualQGestureEvent(struct QGestureEvent_VTable* vtbl, const QGestureEvent& param1): QGestureEvent(param1), vtbl(vtbl) {};

	virtual ~VirtualQGestureEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGestureEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	friend void QGestureEvent_virtualbase_setAccepted(void* self, bool accepted);

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGestureEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QEvent* QGestureEvent_virtualbase_clone(const void* self);

};

QGestureEvent* QGestureEvent_new(struct QGestureEvent_VTable* vtbl, struct miqt_array /* of QGesture* */  gestures) {
	QList<QGesture *> gestures_QList;
	gestures_QList.reserve(gestures.len);
	QGesture** gestures_arr = static_cast<QGesture**>(gestures.data);
	for(size_t i = 0; i < gestures.len; ++i) {
		gestures_QList.push_back(gestures_arr[i]);
	}
	return new VirtualQGestureEvent(vtbl, gestures_QList);
}

QGestureEvent* QGestureEvent_new2(struct QGestureEvent_VTable* vtbl, QGestureEvent* param1) {
	return new VirtualQGestureEvent(vtbl, *param1);
}

void QGestureEvent_virtbase(QGestureEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

struct miqt_array /* of QGesture* */  QGestureEvent_gestures(const QGestureEvent* self) {
	QList<QGesture *> _ret = self->gestures();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGesture** _arr = static_cast<QGesture**>(malloc(sizeof(QGesture*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QGesture* QGestureEvent_gesture(const QGestureEvent* self, int type) {
	return self->gesture(static_cast<Qt::GestureType>(type));
}

struct miqt_array /* of QGesture* */  QGestureEvent_activeGestures(const QGestureEvent* self) {
	QList<QGesture *> _ret = self->activeGestures();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGesture** _arr = static_cast<QGesture**>(malloc(sizeof(QGesture*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGesture* */  QGestureEvent_canceledGestures(const QGestureEvent* self) {
	QList<QGesture *> _ret = self->canceledGestures();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGesture** _arr = static_cast<QGesture**>(malloc(sizeof(QGesture*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGestureEvent_setAccepted(QGestureEvent* self, QGesture* param1, bool param2) {
	self->setAccepted(param1, param2);
}

void QGestureEvent_accept(QGestureEvent* self, QGesture* param1) {
	self->accept(param1);
}

void QGestureEvent_ignore(QGestureEvent* self, QGesture* param1) {
	self->ignore(param1);
}

bool QGestureEvent_isAccepted(const QGestureEvent* self, QGesture* param1) {
	return self->isAccepted(param1);
}

void QGestureEvent_setAccepted2(QGestureEvent* self, int param1, bool param2) {
	self->setAccepted(static_cast<Qt::GestureType>(param1), param2);
}

void QGestureEvent_acceptWithQtGestureType(QGestureEvent* self, int param1) {
	self->accept(static_cast<Qt::GestureType>(param1));
}

void QGestureEvent_ignoreWithQtGestureType(QGestureEvent* self, int param1) {
	self->ignore(static_cast<Qt::GestureType>(param1));
}

bool QGestureEvent_isAcceptedWithQtGestureType(const QGestureEvent* self, int param1) {
	return self->isAccepted(static_cast<Qt::GestureType>(param1));
}

void QGestureEvent_setWidget(QGestureEvent* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QGestureEvent_widget(const QGestureEvent* self) {
	return self->widget();
}

QPointF* QGestureEvent_mapToGraphicsScene(const QGestureEvent* self, QPointF* gesturePoint) {
	return new QPointF(self->mapToGraphicsScene(*gesturePoint));
}

void QGestureEvent_virtualbase_setAccepted(void* self, bool accepted) {

	( (VirtualQGestureEvent*)(self) )->QGestureEvent::setAccepted(accepted);

}

QEvent* QGestureEvent_virtualbase_clone(const void* self) {

	return ( (const VirtualQGestureEvent*)(self) )->QGestureEvent::clone();

}

void QGestureEvent_delete(QGestureEvent* self) {
	delete self;
}

