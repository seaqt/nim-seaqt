#include <QChildEvent>
#include <QEvent>
#include <QGraphicsRotation>
#include <QGraphicsScale>
#include <QGraphicsTransform>
#include <QMatrix4x4>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVector3D>
#include <qgraphicstransform.h>
#include "gen_qgraphicstransform.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsTransform final : public QGraphicsTransform {
	struct QGraphicsTransform_VTable* vtbl;
public:

	VirtualQGraphicsTransform(struct QGraphicsTransform_VTable* vtbl): QGraphicsTransform(), vtbl(vtbl) {};
	VirtualQGraphicsTransform(struct QGraphicsTransform_VTable* vtbl, QObject* parent): QGraphicsTransform(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsTransform() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsTransform::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsTransform_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsTransform::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsTransform_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsTransform::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsTransform_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsTransform::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsTransform_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsTransform::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsTransform_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsTransform::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsTransform::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsTransform::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsTransform::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsTransform::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsTransform_protectedbase_update(void* self);
	friend QObject* QGraphicsTransform_protectedbase_sender(const void* self);
	friend int QGraphicsTransform_protectedbase_senderSignalIndex(const void* self);
	friend int QGraphicsTransform_protectedbase_receivers(const void* self, const char* signal);
	friend bool QGraphicsTransform_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QGraphicsTransform* QGraphicsTransform_new(struct QGraphicsTransform_VTable* vtbl) {
	return new VirtualQGraphicsTransform(vtbl);
}

QGraphicsTransform* QGraphicsTransform_new2(struct QGraphicsTransform_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsTransform(vtbl, parent);
}

void QGraphicsTransform_virtbase(QGraphicsTransform* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGraphicsTransform_metaObject(const QGraphicsTransform* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsTransform_metacast(QGraphicsTransform* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsTransform_metacall(QGraphicsTransform* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsTransform_tr(const char* s) {
	QString _ret = QGraphicsTransform::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsTransform_applyTo(const QGraphicsTransform* self, QMatrix4x4* matrix) {
	self->applyTo(matrix);
}

struct miqt_string QGraphicsTransform_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsTransform::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTransform_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsTransform::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsTransform_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::metaObject();

}

void* QGraphicsTransform_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::qt_metacast(param1);

}

int QGraphicsTransform_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QGraphicsTransform_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::event(event);

}

bool QGraphicsTransform_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::eventFilter(watched, event);

}

void QGraphicsTransform_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::timerEvent(event);

}

void QGraphicsTransform_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::childEvent(event);

}

void QGraphicsTransform_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::customEvent(event);

}

void QGraphicsTransform_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::connectNotify(*signal);

}

void QGraphicsTransform_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsTransform*)(self) )->QGraphicsTransform::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsTransform_staticMetaObject() { return &QGraphicsTransform::staticMetaObject; }
void QGraphicsTransform_protectedbase_update(void* self) {
	VirtualQGraphicsTransform* self_cast = static_cast<VirtualQGraphicsTransform*>( (QGraphicsTransform*)(self) );
	
	self_cast->update();

}

QObject* QGraphicsTransform_protectedbase_sender(const void* self) {
	VirtualQGraphicsTransform* self_cast = static_cast<VirtualQGraphicsTransform*>( (QGraphicsTransform*)(self) );
	
	return self_cast->sender();

}

int QGraphicsTransform_protectedbase_senderSignalIndex(const void* self) {
	VirtualQGraphicsTransform* self_cast = static_cast<VirtualQGraphicsTransform*>( (QGraphicsTransform*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QGraphicsTransform_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQGraphicsTransform* self_cast = static_cast<VirtualQGraphicsTransform*>( (QGraphicsTransform*)(self) );
	
	return self_cast->receivers(signal);

}

bool QGraphicsTransform_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQGraphicsTransform* self_cast = static_cast<VirtualQGraphicsTransform*>( (QGraphicsTransform*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsTransform_delete(QGraphicsTransform* self) {
	delete self;
}

class VirtualQGraphicsScale final : public QGraphicsScale {
	struct QGraphicsScale_VTable* vtbl;
public:

	VirtualQGraphicsScale(struct QGraphicsScale_VTable* vtbl): QGraphicsScale(), vtbl(vtbl) {};
	VirtualQGraphicsScale(struct QGraphicsScale_VTable* vtbl, QObject* parent): QGraphicsScale(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsScale() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsScale::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsScale_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsScale::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsScale_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsScale::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsScale_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			QGraphicsScale::applyTo(matrix);
			return;
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(vtbl, this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_applyTo(const void* self, QMatrix4x4* matrix);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsScale::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsScale_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsScale::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsScale_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsScale::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsScale::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsScale::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsScale::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsScale::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsScale_protectedbase_update(void* self);
	friend QObject* QGraphicsScale_protectedbase_sender(const void* self);
	friend int QGraphicsScale_protectedbase_senderSignalIndex(const void* self);
	friend int QGraphicsScale_protectedbase_receivers(const void* self, const char* signal);
	friend bool QGraphicsScale_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QGraphicsScale* QGraphicsScale_new(struct QGraphicsScale_VTable* vtbl) {
	return new VirtualQGraphicsScale(vtbl);
}

QGraphicsScale* QGraphicsScale_new2(struct QGraphicsScale_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsScale(vtbl, parent);
}

void QGraphicsScale_virtbase(QGraphicsScale* src, QGraphicsTransform** outptr_QGraphicsTransform) {
	*outptr_QGraphicsTransform = static_cast<QGraphicsTransform*>(src);
}

QMetaObject* QGraphicsScale_metaObject(const QGraphicsScale* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsScale_metacast(QGraphicsScale* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsScale_metacall(QGraphicsScale* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsScale_tr(const char* s) {
	QString _ret = QGraphicsScale::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVector3D* QGraphicsScale_origin(const QGraphicsScale* self) {
	return new QVector3D(self->origin());
}

void QGraphicsScale_setOrigin(QGraphicsScale* self, QVector3D* point) {
	self->setOrigin(*point);
}

double QGraphicsScale_xScale(const QGraphicsScale* self) {
	qreal _ret = self->xScale();
	return static_cast<double>(_ret);
}

void QGraphicsScale_setXScale(QGraphicsScale* self, double xScale) {
	self->setXScale(static_cast<qreal>(xScale));
}

double QGraphicsScale_yScale(const QGraphicsScale* self) {
	qreal _ret = self->yScale();
	return static_cast<double>(_ret);
}

void QGraphicsScale_setYScale(QGraphicsScale* self, double yScale) {
	self->setYScale(static_cast<qreal>(yScale));
}

double QGraphicsScale_zScale(const QGraphicsScale* self) {
	qreal _ret = self->zScale();
	return static_cast<double>(_ret);
}

void QGraphicsScale_setZScale(QGraphicsScale* self, double zScale) {
	self->setZScale(static_cast<qreal>(zScale));
}

void QGraphicsScale_applyTo(const QGraphicsScale* self, QMatrix4x4* matrix) {
	self->applyTo(matrix);
}

void QGraphicsScale_originChanged(QGraphicsScale* self) {
	self->originChanged();
}

void QGraphicsScale_connect_originChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::originChanged), self, local_caller{slot, callback, release});
}

void QGraphicsScale_xScaleChanged(QGraphicsScale* self) {
	self->xScaleChanged();
}

void QGraphicsScale_connect_xScaleChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::xScaleChanged), self, local_caller{slot, callback, release});
}

void QGraphicsScale_yScaleChanged(QGraphicsScale* self) {
	self->yScaleChanged();
}

void QGraphicsScale_connect_yScaleChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::yScaleChanged), self, local_caller{slot, callback, release});
}

void QGraphicsScale_zScaleChanged(QGraphicsScale* self) {
	self->zScaleChanged();
}

void QGraphicsScale_connect_zScaleChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::zScaleChanged), self, local_caller{slot, callback, release});
}

void QGraphicsScale_scaleChanged(QGraphicsScale* self) {
	self->scaleChanged();
}

void QGraphicsScale_connect_scaleChanged(QGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::scaleChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QGraphicsScale_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsScale::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsScale_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsScale::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsScale_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsScale*)(self) )->QGraphicsScale::metaObject();

}

void* QGraphicsScale_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::qt_metacast(param1);

}

int QGraphicsScale_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QGraphicsScale_virtualbase_applyTo(const void* self, QMatrix4x4* matrix) {

	( (const VirtualQGraphicsScale*)(self) )->QGraphicsScale::applyTo(matrix);

}

bool QGraphicsScale_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::event(event);

}

bool QGraphicsScale_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::eventFilter(watched, event);

}

void QGraphicsScale_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::timerEvent(event);

}

void QGraphicsScale_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::childEvent(event);

}

void QGraphicsScale_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::customEvent(event);

}

void QGraphicsScale_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::connectNotify(*signal);

}

void QGraphicsScale_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsScale*)(self) )->QGraphicsScale::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsScale_staticMetaObject() { return &QGraphicsScale::staticMetaObject; }
void QGraphicsScale_protectedbase_update(void* self) {
	VirtualQGraphicsScale* self_cast = static_cast<VirtualQGraphicsScale*>( (QGraphicsScale*)(self) );
	
	self_cast->update();

}

QObject* QGraphicsScale_protectedbase_sender(const void* self) {
	VirtualQGraphicsScale* self_cast = static_cast<VirtualQGraphicsScale*>( (QGraphicsScale*)(self) );
	
	return self_cast->sender();

}

int QGraphicsScale_protectedbase_senderSignalIndex(const void* self) {
	VirtualQGraphicsScale* self_cast = static_cast<VirtualQGraphicsScale*>( (QGraphicsScale*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QGraphicsScale_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQGraphicsScale* self_cast = static_cast<VirtualQGraphicsScale*>( (QGraphicsScale*)(self) );
	
	return self_cast->receivers(signal);

}

bool QGraphicsScale_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQGraphicsScale* self_cast = static_cast<VirtualQGraphicsScale*>( (QGraphicsScale*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsScale_delete(QGraphicsScale* self) {
	delete self;
}

class VirtualQGraphicsRotation final : public QGraphicsRotation {
	struct QGraphicsRotation_VTable* vtbl;
public:

	VirtualQGraphicsRotation(struct QGraphicsRotation_VTable* vtbl): QGraphicsRotation(), vtbl(vtbl) {};
	VirtualQGraphicsRotation(struct QGraphicsRotation_VTable* vtbl, QObject* parent): QGraphicsRotation(parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsRotation() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsRotation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsRotation_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsRotation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsRotation_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsRotation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsRotation_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			QGraphicsRotation::applyTo(matrix);
			return;
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(vtbl, this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_applyTo(const void* self, QMatrix4x4* matrix);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsRotation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsRotation_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsRotation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsRotation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsRotation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsRotation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsRotation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsRotation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsRotation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsRotation_protectedbase_update(void* self);
	friend QObject* QGraphicsRotation_protectedbase_sender(const void* self);
	friend int QGraphicsRotation_protectedbase_senderSignalIndex(const void* self);
	friend int QGraphicsRotation_protectedbase_receivers(const void* self, const char* signal);
	friend bool QGraphicsRotation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QGraphicsRotation* QGraphicsRotation_new(struct QGraphicsRotation_VTable* vtbl) {
	return new VirtualQGraphicsRotation(vtbl);
}

QGraphicsRotation* QGraphicsRotation_new2(struct QGraphicsRotation_VTable* vtbl, QObject* parent) {
	return new VirtualQGraphicsRotation(vtbl, parent);
}

void QGraphicsRotation_virtbase(QGraphicsRotation* src, QGraphicsTransform** outptr_QGraphicsTransform) {
	*outptr_QGraphicsTransform = static_cast<QGraphicsTransform*>(src);
}

QMetaObject* QGraphicsRotation_metaObject(const QGraphicsRotation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsRotation_metacast(QGraphicsRotation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsRotation_metacall(QGraphicsRotation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsRotation_tr(const char* s) {
	QString _ret = QGraphicsRotation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVector3D* QGraphicsRotation_origin(const QGraphicsRotation* self) {
	return new QVector3D(self->origin());
}

void QGraphicsRotation_setOrigin(QGraphicsRotation* self, QVector3D* point) {
	self->setOrigin(*point);
}

double QGraphicsRotation_angle(const QGraphicsRotation* self) {
	qreal _ret = self->angle();
	return static_cast<double>(_ret);
}

void QGraphicsRotation_setAngle(QGraphicsRotation* self, double angle) {
	self->setAngle(static_cast<qreal>(angle));
}

QVector3D* QGraphicsRotation_axis(const QGraphicsRotation* self) {
	return new QVector3D(self->axis());
}

void QGraphicsRotation_setAxis(QGraphicsRotation* self, QVector3D* axis) {
	self->setAxis(*axis);
}

void QGraphicsRotation_setAxisWithAxis(QGraphicsRotation* self, int axis) {
	self->setAxis(static_cast<Qt::Axis>(axis));
}

void QGraphicsRotation_applyTo(const QGraphicsRotation* self, QMatrix4x4* matrix) {
	self->applyTo(matrix);
}

void QGraphicsRotation_originChanged(QGraphicsRotation* self) {
	self->originChanged();
}

void QGraphicsRotation_connect_originChanged(QGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsRotation::connect(self, static_cast<void (QGraphicsRotation::*)()>(&QGraphicsRotation::originChanged), self, local_caller{slot, callback, release});
}

void QGraphicsRotation_angleChanged(QGraphicsRotation* self) {
	self->angleChanged();
}

void QGraphicsRotation_connect_angleChanged(QGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsRotation::connect(self, static_cast<void (QGraphicsRotation::*)()>(&QGraphicsRotation::angleChanged), self, local_caller{slot, callback, release});
}

void QGraphicsRotation_axisChanged(QGraphicsRotation* self) {
	self->axisChanged();
}

void QGraphicsRotation_connect_axisChanged(QGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQGraphicsRotation::connect(self, static_cast<void (QGraphicsRotation::*)()>(&QGraphicsRotation::axisChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QGraphicsRotation_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsRotation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsRotation_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsRotation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsRotation_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::metaObject();

}

void* QGraphicsRotation_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::qt_metacast(param1);

}

int QGraphicsRotation_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QGraphicsRotation_virtualbase_applyTo(const void* self, QMatrix4x4* matrix) {

	( (const VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::applyTo(matrix);

}

bool QGraphicsRotation_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::event(event);

}

bool QGraphicsRotation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::eventFilter(watched, event);

}

void QGraphicsRotation_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::timerEvent(event);

}

void QGraphicsRotation_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::childEvent(event);

}

void QGraphicsRotation_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::customEvent(event);

}

void QGraphicsRotation_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::connectNotify(*signal);

}

void QGraphicsRotation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsRotation*)(self) )->QGraphicsRotation::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsRotation_staticMetaObject() { return &QGraphicsRotation::staticMetaObject; }
void QGraphicsRotation_protectedbase_update(void* self) {
	VirtualQGraphicsRotation* self_cast = static_cast<VirtualQGraphicsRotation*>( (QGraphicsRotation*)(self) );
	
	self_cast->update();

}

QObject* QGraphicsRotation_protectedbase_sender(const void* self) {
	VirtualQGraphicsRotation* self_cast = static_cast<VirtualQGraphicsRotation*>( (QGraphicsRotation*)(self) );
	
	return self_cast->sender();

}

int QGraphicsRotation_protectedbase_senderSignalIndex(const void* self) {
	VirtualQGraphicsRotation* self_cast = static_cast<VirtualQGraphicsRotation*>( (QGraphicsRotation*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QGraphicsRotation_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQGraphicsRotation* self_cast = static_cast<VirtualQGraphicsRotation*>( (QGraphicsRotation*)(self) );
	
	return self_cast->receivers(signal);

}

bool QGraphicsRotation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQGraphicsRotation* self_cast = static_cast<VirtualQGraphicsRotation*>( (QGraphicsRotation*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsRotation_delete(QGraphicsRotation* self) {
	delete self;
}

