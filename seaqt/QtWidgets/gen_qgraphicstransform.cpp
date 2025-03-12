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
class VirtualQGraphicsTransform final : public QGraphicsTransform {
	const QGraphicsTransform_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsTransform_VTable* QGraphicsTransform_vtbl(const VirtualQGraphicsTransform* self);
	friend void* QGraphicsTransform_vdata(const VirtualQGraphicsTransform* self);
	friend void QGraphicsTransform_setVdata(VirtualQGraphicsTransform* self, void* vdata);

	VirtualQGraphicsTransform(const QGraphicsTransform_VTable* vtbl, void* vdata): QGraphicsTransform(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsTransform(const QGraphicsTransform_VTable* vtbl, void* vdata, QObject* parent): QGraphicsTransform(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsTransform() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsTransform::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsTransform_virtualbase_metaObject(const VirtualQGraphicsTransform* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsTransform::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsTransform_virtualbase_metacast(VirtualQGraphicsTransform* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsTransform::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsTransform_virtualbase_metacall(VirtualQGraphicsTransform* self, int param1, int param2, void** param3);

	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(this, sigval1);

	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsTransform::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsTransform_virtualbase_event(VirtualQGraphicsTransform* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsTransform::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsTransform_virtualbase_eventFilter(VirtualQGraphicsTransform* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsTransform::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_timerEvent(VirtualQGraphicsTransform* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsTransform::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_childEvent(VirtualQGraphicsTransform* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsTransform::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_customEvent(VirtualQGraphicsTransform* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsTransform::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_connectNotify(VirtualQGraphicsTransform* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsTransform::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsTransform_virtualbase_disconnectNotify(VirtualQGraphicsTransform* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsTransform_protectedbase_update(VirtualQGraphicsTransform* self);
	friend QObject* QGraphicsTransform_protectedbase_sender(const VirtualQGraphicsTransform* self);
	friend int QGraphicsTransform_protectedbase_senderSignalIndex(const VirtualQGraphicsTransform* self);
	friend int QGraphicsTransform_protectedbase_receivers(const VirtualQGraphicsTransform* self, const char* signal);
	friend bool QGraphicsTransform_protectedbase_isSignalConnected(const VirtualQGraphicsTransform* self, QMetaMethod* signal);
};

VirtualQGraphicsTransform* QGraphicsTransform_new(const QGraphicsTransform_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsTransform(vtbl, vdata);
}

VirtualQGraphicsTransform* QGraphicsTransform_new2(const QGraphicsTransform_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGraphicsTransform(vtbl, vdata, parent);
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

QMetaObject* QGraphicsTransform_virtualbase_metaObject(const VirtualQGraphicsTransform* self) {

	return (QMetaObject*) self->QGraphicsTransform::metaObject();
}

void* QGraphicsTransform_virtualbase_metacast(VirtualQGraphicsTransform* self, const char* param1) {

	return self->QGraphicsTransform::qt_metacast(param1);
}

int QGraphicsTransform_virtualbase_metacall(VirtualQGraphicsTransform* self, int param1, int param2, void** param3) {

	return self->QGraphicsTransform::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QGraphicsTransform_virtualbase_event(VirtualQGraphicsTransform* self, QEvent* event) {

	return self->QGraphicsTransform::event(event);
}

bool QGraphicsTransform_virtualbase_eventFilter(VirtualQGraphicsTransform* self, QObject* watched, QEvent* event) {

	return self->QGraphicsTransform::eventFilter(watched, event);
}

void QGraphicsTransform_virtualbase_timerEvent(VirtualQGraphicsTransform* self, QTimerEvent* event) {

	self->QGraphicsTransform::timerEvent(event);
}

void QGraphicsTransform_virtualbase_childEvent(VirtualQGraphicsTransform* self, QChildEvent* event) {

	self->QGraphicsTransform::childEvent(event);
}

void QGraphicsTransform_virtualbase_customEvent(VirtualQGraphicsTransform* self, QEvent* event) {

	self->QGraphicsTransform::customEvent(event);
}

void QGraphicsTransform_virtualbase_connectNotify(VirtualQGraphicsTransform* self, QMetaMethod* signal) {

	self->QGraphicsTransform::connectNotify(*signal);
}

void QGraphicsTransform_virtualbase_disconnectNotify(VirtualQGraphicsTransform* self, QMetaMethod* signal) {

	self->QGraphicsTransform::disconnectNotify(*signal);
}

const QMetaObject* QGraphicsTransform_staticMetaObject() { return &QGraphicsTransform::staticMetaObject; }

const QGraphicsTransform_VTable* QGraphicsTransform_vtbl(const VirtualQGraphicsTransform* self) { return self->vtbl; }
void* QGraphicsTransform_vdata(const VirtualQGraphicsTransform* self) { return self->vdata; }
void QGraphicsTransform_setVdata(VirtualQGraphicsTransform* self, void* vdata) { self->vdata = vdata; }

void QGraphicsTransform_protectedbase_update(VirtualQGraphicsTransform* self) {
	self->update();
}

QObject* QGraphicsTransform_protectedbase_sender(const VirtualQGraphicsTransform* self) {
	return self->sender();
}

int QGraphicsTransform_protectedbase_senderSignalIndex(const VirtualQGraphicsTransform* self) {
	return self->senderSignalIndex();
}

int QGraphicsTransform_protectedbase_receivers(const VirtualQGraphicsTransform* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsTransform_protectedbase_isSignalConnected(const VirtualQGraphicsTransform* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsTransform_delete(QGraphicsTransform* self) {
	delete self;
}

class VirtualQGraphicsScale final : public QGraphicsScale {
	const QGraphicsScale_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsScale_VTable* QGraphicsScale_vtbl(const VirtualQGraphicsScale* self);
	friend void* QGraphicsScale_vdata(const VirtualQGraphicsScale* self);
	friend void QGraphicsScale_setVdata(VirtualQGraphicsScale* self, void* vdata);

	VirtualQGraphicsScale(const QGraphicsScale_VTable* vtbl, void* vdata): QGraphicsScale(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsScale(const QGraphicsScale_VTable* vtbl, void* vdata, QObject* parent): QGraphicsScale(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsScale() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsScale::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsScale_virtualbase_metaObject(const VirtualQGraphicsScale* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsScale::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsScale_virtualbase_metacast(VirtualQGraphicsScale* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsScale::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsScale_virtualbase_metacall(VirtualQGraphicsScale* self, int param1, int param2, void** param3);

	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			QGraphicsScale::applyTo(matrix);
			return;
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_applyTo(const VirtualQGraphicsScale* self, QMatrix4x4* matrix);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsScale::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsScale_virtualbase_event(VirtualQGraphicsScale* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsScale::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsScale_virtualbase_eventFilter(VirtualQGraphicsScale* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsScale::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_timerEvent(VirtualQGraphicsScale* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsScale::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_childEvent(VirtualQGraphicsScale* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsScale::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_customEvent(VirtualQGraphicsScale* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsScale::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_connectNotify(VirtualQGraphicsScale* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsScale::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsScale_virtualbase_disconnectNotify(VirtualQGraphicsScale* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsScale_protectedbase_update(VirtualQGraphicsScale* self);
	friend QObject* QGraphicsScale_protectedbase_sender(const VirtualQGraphicsScale* self);
	friend int QGraphicsScale_protectedbase_senderSignalIndex(const VirtualQGraphicsScale* self);
	friend int QGraphicsScale_protectedbase_receivers(const VirtualQGraphicsScale* self, const char* signal);
	friend bool QGraphicsScale_protectedbase_isSignalConnected(const VirtualQGraphicsScale* self, QMetaMethod* signal);
};

VirtualQGraphicsScale* QGraphicsScale_new(const QGraphicsScale_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsScale(vtbl, vdata);
}

VirtualQGraphicsScale* QGraphicsScale_new2(const QGraphicsScale_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGraphicsScale(vtbl, vdata, parent);
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

void QGraphicsScale_connect_originChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QGraphicsScale_connect_xScaleChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QGraphicsScale_connect_yScaleChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QGraphicsScale_connect_zScaleChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QGraphicsScale_connect_scaleChanged(VirtualQGraphicsScale* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

QMetaObject* QGraphicsScale_virtualbase_metaObject(const VirtualQGraphicsScale* self) {

	return (QMetaObject*) self->QGraphicsScale::metaObject();
}

void* QGraphicsScale_virtualbase_metacast(VirtualQGraphicsScale* self, const char* param1) {

	return self->QGraphicsScale::qt_metacast(param1);
}

int QGraphicsScale_virtualbase_metacall(VirtualQGraphicsScale* self, int param1, int param2, void** param3) {

	return self->QGraphicsScale::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGraphicsScale_virtualbase_applyTo(const VirtualQGraphicsScale* self, QMatrix4x4* matrix) {

	self->QGraphicsScale::applyTo(matrix);
}

bool QGraphicsScale_virtualbase_event(VirtualQGraphicsScale* self, QEvent* event) {

	return self->QGraphicsScale::event(event);
}

bool QGraphicsScale_virtualbase_eventFilter(VirtualQGraphicsScale* self, QObject* watched, QEvent* event) {

	return self->QGraphicsScale::eventFilter(watched, event);
}

void QGraphicsScale_virtualbase_timerEvent(VirtualQGraphicsScale* self, QTimerEvent* event) {

	self->QGraphicsScale::timerEvent(event);
}

void QGraphicsScale_virtualbase_childEvent(VirtualQGraphicsScale* self, QChildEvent* event) {

	self->QGraphicsScale::childEvent(event);
}

void QGraphicsScale_virtualbase_customEvent(VirtualQGraphicsScale* self, QEvent* event) {

	self->QGraphicsScale::customEvent(event);
}

void QGraphicsScale_virtualbase_connectNotify(VirtualQGraphicsScale* self, QMetaMethod* signal) {

	self->QGraphicsScale::connectNotify(*signal);
}

void QGraphicsScale_virtualbase_disconnectNotify(VirtualQGraphicsScale* self, QMetaMethod* signal) {

	self->QGraphicsScale::disconnectNotify(*signal);
}

const QMetaObject* QGraphicsScale_staticMetaObject() { return &QGraphicsScale::staticMetaObject; }

const QGraphicsScale_VTable* QGraphicsScale_vtbl(const VirtualQGraphicsScale* self) { return self->vtbl; }
void* QGraphicsScale_vdata(const VirtualQGraphicsScale* self) { return self->vdata; }
void QGraphicsScale_setVdata(VirtualQGraphicsScale* self, void* vdata) { self->vdata = vdata; }

void QGraphicsScale_protectedbase_update(VirtualQGraphicsScale* self) {
	self->update();
}

QObject* QGraphicsScale_protectedbase_sender(const VirtualQGraphicsScale* self) {
	return self->sender();
}

int QGraphicsScale_protectedbase_senderSignalIndex(const VirtualQGraphicsScale* self) {
	return self->senderSignalIndex();
}

int QGraphicsScale_protectedbase_receivers(const VirtualQGraphicsScale* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsScale_protectedbase_isSignalConnected(const VirtualQGraphicsScale* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsScale_delete(QGraphicsScale* self) {
	delete self;
}

class VirtualQGraphicsRotation final : public QGraphicsRotation {
	const QGraphicsRotation_VTable* vtbl;
	void* vdata;
public:
	friend const QGraphicsRotation_VTable* QGraphicsRotation_vtbl(const VirtualQGraphicsRotation* self);
	friend void* QGraphicsRotation_vdata(const VirtualQGraphicsRotation* self);
	friend void QGraphicsRotation_setVdata(VirtualQGraphicsRotation* self, void* vdata);

	VirtualQGraphicsRotation(const QGraphicsRotation_VTable* vtbl, void* vdata): QGraphicsRotation(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGraphicsRotation(const QGraphicsRotation_VTable* vtbl, void* vdata, QObject* parent): QGraphicsRotation(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGraphicsRotation() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsRotation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsRotation_virtualbase_metaObject(const VirtualQGraphicsRotation* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsRotation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsRotation_virtualbase_metacast(VirtualQGraphicsRotation* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsRotation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsRotation_virtualbase_metacall(VirtualQGraphicsRotation* self, int param1, int param2, void** param3);

	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			QGraphicsRotation::applyTo(matrix);
			return;
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_applyTo(const VirtualQGraphicsRotation* self, QMatrix4x4* matrix);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsRotation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsRotation_virtualbase_event(VirtualQGraphicsRotation* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsRotation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsRotation_virtualbase_eventFilter(VirtualQGraphicsRotation* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsRotation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_timerEvent(VirtualQGraphicsRotation* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsRotation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_childEvent(VirtualQGraphicsRotation* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsRotation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_customEvent(VirtualQGraphicsRotation* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsRotation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_connectNotify(VirtualQGraphicsRotation* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsRotation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGraphicsRotation_virtualbase_disconnectNotify(VirtualQGraphicsRotation* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsRotation_protectedbase_update(VirtualQGraphicsRotation* self);
	friend QObject* QGraphicsRotation_protectedbase_sender(const VirtualQGraphicsRotation* self);
	friend int QGraphicsRotation_protectedbase_senderSignalIndex(const VirtualQGraphicsRotation* self);
	friend int QGraphicsRotation_protectedbase_receivers(const VirtualQGraphicsRotation* self, const char* signal);
	friend bool QGraphicsRotation_protectedbase_isSignalConnected(const VirtualQGraphicsRotation* self, QMetaMethod* signal);
};

VirtualQGraphicsRotation* QGraphicsRotation_new(const QGraphicsRotation_VTable* vtbl, void* vdata) {
	return new VirtualQGraphicsRotation(vtbl, vdata);
}

VirtualQGraphicsRotation* QGraphicsRotation_new2(const QGraphicsRotation_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGraphicsRotation(vtbl, vdata, parent);
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

void QGraphicsRotation_connect_originChanged(VirtualQGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QGraphicsRotation_connect_angleChanged(VirtualQGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QGraphicsRotation_connect_axisChanged(VirtualQGraphicsRotation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

QMetaObject* QGraphicsRotation_virtualbase_metaObject(const VirtualQGraphicsRotation* self) {

	return (QMetaObject*) self->QGraphicsRotation::metaObject();
}

void* QGraphicsRotation_virtualbase_metacast(VirtualQGraphicsRotation* self, const char* param1) {

	return self->QGraphicsRotation::qt_metacast(param1);
}

int QGraphicsRotation_virtualbase_metacall(VirtualQGraphicsRotation* self, int param1, int param2, void** param3) {

	return self->QGraphicsRotation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QGraphicsRotation_virtualbase_applyTo(const VirtualQGraphicsRotation* self, QMatrix4x4* matrix) {

	self->QGraphicsRotation::applyTo(matrix);
}

bool QGraphicsRotation_virtualbase_event(VirtualQGraphicsRotation* self, QEvent* event) {

	return self->QGraphicsRotation::event(event);
}

bool QGraphicsRotation_virtualbase_eventFilter(VirtualQGraphicsRotation* self, QObject* watched, QEvent* event) {

	return self->QGraphicsRotation::eventFilter(watched, event);
}

void QGraphicsRotation_virtualbase_timerEvent(VirtualQGraphicsRotation* self, QTimerEvent* event) {

	self->QGraphicsRotation::timerEvent(event);
}

void QGraphicsRotation_virtualbase_childEvent(VirtualQGraphicsRotation* self, QChildEvent* event) {

	self->QGraphicsRotation::childEvent(event);
}

void QGraphicsRotation_virtualbase_customEvent(VirtualQGraphicsRotation* self, QEvent* event) {

	self->QGraphicsRotation::customEvent(event);
}

void QGraphicsRotation_virtualbase_connectNotify(VirtualQGraphicsRotation* self, QMetaMethod* signal) {

	self->QGraphicsRotation::connectNotify(*signal);
}

void QGraphicsRotation_virtualbase_disconnectNotify(VirtualQGraphicsRotation* self, QMetaMethod* signal) {

	self->QGraphicsRotation::disconnectNotify(*signal);
}

const QMetaObject* QGraphicsRotation_staticMetaObject() { return &QGraphicsRotation::staticMetaObject; }

const QGraphicsRotation_VTable* QGraphicsRotation_vtbl(const VirtualQGraphicsRotation* self) { return self->vtbl; }
void* QGraphicsRotation_vdata(const VirtualQGraphicsRotation* self) { return self->vdata; }
void QGraphicsRotation_setVdata(VirtualQGraphicsRotation* self, void* vdata) { self->vdata = vdata; }

void QGraphicsRotation_protectedbase_update(VirtualQGraphicsRotation* self) {
	self->update();
}

QObject* QGraphicsRotation_protectedbase_sender(const VirtualQGraphicsRotation* self) {
	return self->sender();
}

int QGraphicsRotation_protectedbase_senderSignalIndex(const VirtualQGraphicsRotation* self) {
	return self->senderSignalIndex();
}

int QGraphicsRotation_protectedbase_receivers(const VirtualQGraphicsRotation* self, const char* signal) {
	return self->receivers(signal);
}

bool QGraphicsRotation_protectedbase_isSignalConnected(const VirtualQGraphicsRotation* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGraphicsRotation_delete(QGraphicsRotation* self) {
	delete self;
}

