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
class VirtualQGesture final : public QGesture {
	const QGesture_VTable* vtbl;
	void* vdata;
public:
	friend const QGesture_VTable* QGesture_vtbl(const VirtualQGesture* self);
	friend void* QGesture_vdata(const VirtualQGesture* self);
	friend void QGesture_setVdata(VirtualQGesture* self, void* vdata);

	VirtualQGesture(const QGesture_VTable* vtbl, void* vdata): QGesture(), vtbl(vtbl), vdata(vdata) {}
	VirtualQGesture(const QGesture_VTable* vtbl, void* vdata, QObject* parent): QGesture(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGesture() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QGesture_virtualbase_metaObject(const VirtualQGesture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QGesture_virtualbase_metacast(VirtualQGesture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGesture_virtualbase_metacall(VirtualQGesture* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QGesture_virtualbase_event(VirtualQGesture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGesture_virtualbase_eventFilter(VirtualQGesture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QGesture_virtualbase_timerEvent(VirtualQGesture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QGesture_virtualbase_childEvent(VirtualQGesture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QGesture_virtualbase_customEvent(VirtualQGesture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QGesture_virtualbase_connectNotify(VirtualQGesture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QGesture_virtualbase_disconnectNotify(VirtualQGesture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QGesture_protectedbase_sender(const VirtualQGesture* self);
	friend int QGesture_protectedbase_senderSignalIndex(const VirtualQGesture* self);
	friend int QGesture_protectedbase_receivers(const VirtualQGesture* self, const char* signal);
	friend bool QGesture_protectedbase_isSignalConnected(const VirtualQGesture* self, QMetaMethod* signal);
};

VirtualQGesture* QGesture_new(const QGesture_VTable* vtbl, void* vdata) {
	return new VirtualQGesture(vtbl, vdata);
}

VirtualQGesture* QGesture_new2(const QGesture_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQGesture(vtbl, vdata, parent);
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

QMetaObject* QGesture_virtualbase_metaObject(const VirtualQGesture* self) {

	return (QMetaObject*) self->QGesture::metaObject();
}

void* QGesture_virtualbase_metacast(VirtualQGesture* self, const char* param1) {

	return self->QGesture::qt_metacast(param1);
}

int QGesture_virtualbase_metacall(VirtualQGesture* self, int param1, int param2, void** param3) {

	return self->QGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QGesture_virtualbase_event(VirtualQGesture* self, QEvent* event) {

	return self->QGesture::event(event);
}

bool QGesture_virtualbase_eventFilter(VirtualQGesture* self, QObject* watched, QEvent* event) {

	return self->QGesture::eventFilter(watched, event);
}

void QGesture_virtualbase_timerEvent(VirtualQGesture* self, QTimerEvent* event) {

	self->QGesture::timerEvent(event);
}

void QGesture_virtualbase_childEvent(VirtualQGesture* self, QChildEvent* event) {

	self->QGesture::childEvent(event);
}

void QGesture_virtualbase_customEvent(VirtualQGesture* self, QEvent* event) {

	self->QGesture::customEvent(event);
}

void QGesture_virtualbase_connectNotify(VirtualQGesture* self, QMetaMethod* signal) {

	self->QGesture::connectNotify(*signal);
}

void QGesture_virtualbase_disconnectNotify(VirtualQGesture* self, QMetaMethod* signal) {

	self->QGesture::disconnectNotify(*signal);
}

const QMetaObject* QGesture_staticMetaObject() { return &QGesture::staticMetaObject; }

const QGesture_VTable* QGesture_vtbl(const VirtualQGesture* self) { return self->vtbl; }
void* QGesture_vdata(const VirtualQGesture* self) { return self->vdata; }
void QGesture_setVdata(VirtualQGesture* self, void* vdata) { self->vdata = vdata; }

QObject* QGesture_protectedbase_sender(const VirtualQGesture* self) {
	return self->sender();
}

int QGesture_protectedbase_senderSignalIndex(const VirtualQGesture* self) {
	return self->senderSignalIndex();
}

int QGesture_protectedbase_receivers(const VirtualQGesture* self, const char* signal) {
	return self->receivers(signal);
}

bool QGesture_protectedbase_isSignalConnected(const VirtualQGesture* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QGesture_delete(QGesture* self) {
	delete self;
}

class VirtualQPanGesture final : public QPanGesture {
	const QPanGesture_VTable* vtbl;
	void* vdata;
public:
	friend const QPanGesture_VTable* QPanGesture_vtbl(const VirtualQPanGesture* self);
	friend void* QPanGesture_vdata(const VirtualQPanGesture* self);
	friend void QPanGesture_setVdata(VirtualQPanGesture* self, void* vdata);

	VirtualQPanGesture(const QPanGesture_VTable* vtbl, void* vdata): QPanGesture(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPanGesture(const QPanGesture_VTable* vtbl, void* vdata, QObject* parent): QPanGesture(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPanGesture() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPanGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPanGesture_virtualbase_metaObject(const VirtualQPanGesture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPanGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPanGesture_virtualbase_metacast(VirtualQPanGesture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPanGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPanGesture_virtualbase_metacall(VirtualQPanGesture* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPanGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPanGesture_virtualbase_event(VirtualQPanGesture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPanGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPanGesture_virtualbase_eventFilter(VirtualQPanGesture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPanGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPanGesture_virtualbase_timerEvent(VirtualQPanGesture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPanGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPanGesture_virtualbase_childEvent(VirtualQPanGesture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPanGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPanGesture_virtualbase_customEvent(VirtualQPanGesture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPanGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPanGesture_virtualbase_connectNotify(VirtualQPanGesture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPanGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPanGesture_virtualbase_disconnectNotify(VirtualQPanGesture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPanGesture_protectedbase_sender(const VirtualQPanGesture* self);
	friend int QPanGesture_protectedbase_senderSignalIndex(const VirtualQPanGesture* self);
	friend int QPanGesture_protectedbase_receivers(const VirtualQPanGesture* self, const char* signal);
	friend bool QPanGesture_protectedbase_isSignalConnected(const VirtualQPanGesture* self, QMetaMethod* signal);
};

VirtualQPanGesture* QPanGesture_new(const QPanGesture_VTable* vtbl, void* vdata) {
	return new VirtualQPanGesture(vtbl, vdata);
}

VirtualQPanGesture* QPanGesture_new2(const QPanGesture_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQPanGesture(vtbl, vdata, parent);
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

QMetaObject* QPanGesture_virtualbase_metaObject(const VirtualQPanGesture* self) {

	return (QMetaObject*) self->QPanGesture::metaObject();
}

void* QPanGesture_virtualbase_metacast(VirtualQPanGesture* self, const char* param1) {

	return self->QPanGesture::qt_metacast(param1);
}

int QPanGesture_virtualbase_metacall(VirtualQPanGesture* self, int param1, int param2, void** param3) {

	return self->QPanGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPanGesture_virtualbase_event(VirtualQPanGesture* self, QEvent* event) {

	return self->QPanGesture::event(event);
}

bool QPanGesture_virtualbase_eventFilter(VirtualQPanGesture* self, QObject* watched, QEvent* event) {

	return self->QPanGesture::eventFilter(watched, event);
}

void QPanGesture_virtualbase_timerEvent(VirtualQPanGesture* self, QTimerEvent* event) {

	self->QPanGesture::timerEvent(event);
}

void QPanGesture_virtualbase_childEvent(VirtualQPanGesture* self, QChildEvent* event) {

	self->QPanGesture::childEvent(event);
}

void QPanGesture_virtualbase_customEvent(VirtualQPanGesture* self, QEvent* event) {

	self->QPanGesture::customEvent(event);
}

void QPanGesture_virtualbase_connectNotify(VirtualQPanGesture* self, QMetaMethod* signal) {

	self->QPanGesture::connectNotify(*signal);
}

void QPanGesture_virtualbase_disconnectNotify(VirtualQPanGesture* self, QMetaMethod* signal) {

	self->QPanGesture::disconnectNotify(*signal);
}

const QMetaObject* QPanGesture_staticMetaObject() { return &QPanGesture::staticMetaObject; }

const QPanGesture_VTable* QPanGesture_vtbl(const VirtualQPanGesture* self) { return self->vtbl; }
void* QPanGesture_vdata(const VirtualQPanGesture* self) { return self->vdata; }
void QPanGesture_setVdata(VirtualQPanGesture* self, void* vdata) { self->vdata = vdata; }

QObject* QPanGesture_protectedbase_sender(const VirtualQPanGesture* self) {
	return self->sender();
}

int QPanGesture_protectedbase_senderSignalIndex(const VirtualQPanGesture* self) {
	return self->senderSignalIndex();
}

int QPanGesture_protectedbase_receivers(const VirtualQPanGesture* self, const char* signal) {
	return self->receivers(signal);
}

bool QPanGesture_protectedbase_isSignalConnected(const VirtualQPanGesture* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPanGesture_delete(QPanGesture* self) {
	delete self;
}

class VirtualQPinchGesture final : public QPinchGesture {
	const QPinchGesture_VTable* vtbl;
	void* vdata;
public:
	friend const QPinchGesture_VTable* QPinchGesture_vtbl(const VirtualQPinchGesture* self);
	friend void* QPinchGesture_vdata(const VirtualQPinchGesture* self);
	friend void QPinchGesture_setVdata(VirtualQPinchGesture* self, void* vdata);

	VirtualQPinchGesture(const QPinchGesture_VTable* vtbl, void* vdata): QPinchGesture(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPinchGesture(const QPinchGesture_VTable* vtbl, void* vdata, QObject* parent): QPinchGesture(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPinchGesture() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPinchGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPinchGesture_virtualbase_metaObject(const VirtualQPinchGesture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPinchGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPinchGesture_virtualbase_metacast(VirtualQPinchGesture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPinchGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPinchGesture_virtualbase_metacall(VirtualQPinchGesture* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPinchGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPinchGesture_virtualbase_event(VirtualQPinchGesture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPinchGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPinchGesture_virtualbase_eventFilter(VirtualQPinchGesture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPinchGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPinchGesture_virtualbase_timerEvent(VirtualQPinchGesture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPinchGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPinchGesture_virtualbase_childEvent(VirtualQPinchGesture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPinchGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPinchGesture_virtualbase_customEvent(VirtualQPinchGesture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPinchGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPinchGesture_virtualbase_connectNotify(VirtualQPinchGesture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPinchGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPinchGesture_virtualbase_disconnectNotify(VirtualQPinchGesture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPinchGesture_protectedbase_sender(const VirtualQPinchGesture* self);
	friend int QPinchGesture_protectedbase_senderSignalIndex(const VirtualQPinchGesture* self);
	friend int QPinchGesture_protectedbase_receivers(const VirtualQPinchGesture* self, const char* signal);
	friend bool QPinchGesture_protectedbase_isSignalConnected(const VirtualQPinchGesture* self, QMetaMethod* signal);
};

VirtualQPinchGesture* QPinchGesture_new(const QPinchGesture_VTable* vtbl, void* vdata) {
	return new VirtualQPinchGesture(vtbl, vdata);
}

VirtualQPinchGesture* QPinchGesture_new2(const QPinchGesture_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQPinchGesture(vtbl, vdata, parent);
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

QMetaObject* QPinchGesture_virtualbase_metaObject(const VirtualQPinchGesture* self) {

	return (QMetaObject*) self->QPinchGesture::metaObject();
}

void* QPinchGesture_virtualbase_metacast(VirtualQPinchGesture* self, const char* param1) {

	return self->QPinchGesture::qt_metacast(param1);
}

int QPinchGesture_virtualbase_metacall(VirtualQPinchGesture* self, int param1, int param2, void** param3) {

	return self->QPinchGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPinchGesture_virtualbase_event(VirtualQPinchGesture* self, QEvent* event) {

	return self->QPinchGesture::event(event);
}

bool QPinchGesture_virtualbase_eventFilter(VirtualQPinchGesture* self, QObject* watched, QEvent* event) {

	return self->QPinchGesture::eventFilter(watched, event);
}

void QPinchGesture_virtualbase_timerEvent(VirtualQPinchGesture* self, QTimerEvent* event) {

	self->QPinchGesture::timerEvent(event);
}

void QPinchGesture_virtualbase_childEvent(VirtualQPinchGesture* self, QChildEvent* event) {

	self->QPinchGesture::childEvent(event);
}

void QPinchGesture_virtualbase_customEvent(VirtualQPinchGesture* self, QEvent* event) {

	self->QPinchGesture::customEvent(event);
}

void QPinchGesture_virtualbase_connectNotify(VirtualQPinchGesture* self, QMetaMethod* signal) {

	self->QPinchGesture::connectNotify(*signal);
}

void QPinchGesture_virtualbase_disconnectNotify(VirtualQPinchGesture* self, QMetaMethod* signal) {

	self->QPinchGesture::disconnectNotify(*signal);
}

const QMetaObject* QPinchGesture_staticMetaObject() { return &QPinchGesture::staticMetaObject; }

const QPinchGesture_VTable* QPinchGesture_vtbl(const VirtualQPinchGesture* self) { return self->vtbl; }
void* QPinchGesture_vdata(const VirtualQPinchGesture* self) { return self->vdata; }
void QPinchGesture_setVdata(VirtualQPinchGesture* self, void* vdata) { self->vdata = vdata; }

QObject* QPinchGesture_protectedbase_sender(const VirtualQPinchGesture* self) {
	return self->sender();
}

int QPinchGesture_protectedbase_senderSignalIndex(const VirtualQPinchGesture* self) {
	return self->senderSignalIndex();
}

int QPinchGesture_protectedbase_receivers(const VirtualQPinchGesture* self, const char* signal) {
	return self->receivers(signal);
}

bool QPinchGesture_protectedbase_isSignalConnected(const VirtualQPinchGesture* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPinchGesture_delete(QPinchGesture* self) {
	delete self;
}

class VirtualQSwipeGesture final : public QSwipeGesture {
	const QSwipeGesture_VTable* vtbl;
	void* vdata;
public:
	friend const QSwipeGesture_VTable* QSwipeGesture_vtbl(const VirtualQSwipeGesture* self);
	friend void* QSwipeGesture_vdata(const VirtualQSwipeGesture* self);
	friend void QSwipeGesture_setVdata(VirtualQSwipeGesture* self, void* vdata);

	VirtualQSwipeGesture(const QSwipeGesture_VTable* vtbl, void* vdata): QSwipeGesture(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSwipeGesture(const QSwipeGesture_VTable* vtbl, void* vdata, QObject* parent): QSwipeGesture(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSwipeGesture() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSwipeGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSwipeGesture_virtualbase_metaObject(const VirtualQSwipeGesture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSwipeGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSwipeGesture_virtualbase_metacast(VirtualQSwipeGesture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSwipeGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSwipeGesture_virtualbase_metacall(VirtualQSwipeGesture* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSwipeGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSwipeGesture_virtualbase_event(VirtualQSwipeGesture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSwipeGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSwipeGesture_virtualbase_eventFilter(VirtualQSwipeGesture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSwipeGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_timerEvent(VirtualQSwipeGesture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSwipeGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_childEvent(VirtualQSwipeGesture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSwipeGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_customEvent(VirtualQSwipeGesture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSwipeGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_connectNotify(VirtualQSwipeGesture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSwipeGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSwipeGesture_virtualbase_disconnectNotify(VirtualQSwipeGesture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSwipeGesture_protectedbase_sender(const VirtualQSwipeGesture* self);
	friend int QSwipeGesture_protectedbase_senderSignalIndex(const VirtualQSwipeGesture* self);
	friend int QSwipeGesture_protectedbase_receivers(const VirtualQSwipeGesture* self, const char* signal);
	friend bool QSwipeGesture_protectedbase_isSignalConnected(const VirtualQSwipeGesture* self, QMetaMethod* signal);
};

VirtualQSwipeGesture* QSwipeGesture_new(const QSwipeGesture_VTable* vtbl, void* vdata) {
	return new VirtualQSwipeGesture(vtbl, vdata);
}

VirtualQSwipeGesture* QSwipeGesture_new2(const QSwipeGesture_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQSwipeGesture(vtbl, vdata, parent);
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

QMetaObject* QSwipeGesture_virtualbase_metaObject(const VirtualQSwipeGesture* self) {

	return (QMetaObject*) self->QSwipeGesture::metaObject();
}

void* QSwipeGesture_virtualbase_metacast(VirtualQSwipeGesture* self, const char* param1) {

	return self->QSwipeGesture::qt_metacast(param1);
}

int QSwipeGesture_virtualbase_metacall(VirtualQSwipeGesture* self, int param1, int param2, void** param3) {

	return self->QSwipeGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSwipeGesture_virtualbase_event(VirtualQSwipeGesture* self, QEvent* event) {

	return self->QSwipeGesture::event(event);
}

bool QSwipeGesture_virtualbase_eventFilter(VirtualQSwipeGesture* self, QObject* watched, QEvent* event) {

	return self->QSwipeGesture::eventFilter(watched, event);
}

void QSwipeGesture_virtualbase_timerEvent(VirtualQSwipeGesture* self, QTimerEvent* event) {

	self->QSwipeGesture::timerEvent(event);
}

void QSwipeGesture_virtualbase_childEvent(VirtualQSwipeGesture* self, QChildEvent* event) {

	self->QSwipeGesture::childEvent(event);
}

void QSwipeGesture_virtualbase_customEvent(VirtualQSwipeGesture* self, QEvent* event) {

	self->QSwipeGesture::customEvent(event);
}

void QSwipeGesture_virtualbase_connectNotify(VirtualQSwipeGesture* self, QMetaMethod* signal) {

	self->QSwipeGesture::connectNotify(*signal);
}

void QSwipeGesture_virtualbase_disconnectNotify(VirtualQSwipeGesture* self, QMetaMethod* signal) {

	self->QSwipeGesture::disconnectNotify(*signal);
}

const QMetaObject* QSwipeGesture_staticMetaObject() { return &QSwipeGesture::staticMetaObject; }

const QSwipeGesture_VTable* QSwipeGesture_vtbl(const VirtualQSwipeGesture* self) { return self->vtbl; }
void* QSwipeGesture_vdata(const VirtualQSwipeGesture* self) { return self->vdata; }
void QSwipeGesture_setVdata(VirtualQSwipeGesture* self, void* vdata) { self->vdata = vdata; }

QObject* QSwipeGesture_protectedbase_sender(const VirtualQSwipeGesture* self) {
	return self->sender();
}

int QSwipeGesture_protectedbase_senderSignalIndex(const VirtualQSwipeGesture* self) {
	return self->senderSignalIndex();
}

int QSwipeGesture_protectedbase_receivers(const VirtualQSwipeGesture* self, const char* signal) {
	return self->receivers(signal);
}

bool QSwipeGesture_protectedbase_isSignalConnected(const VirtualQSwipeGesture* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSwipeGesture_delete(QSwipeGesture* self) {
	delete self;
}

class VirtualQTapGesture final : public QTapGesture {
	const QTapGesture_VTable* vtbl;
	void* vdata;
public:
	friend const QTapGesture_VTable* QTapGesture_vtbl(const VirtualQTapGesture* self);
	friend void* QTapGesture_vdata(const VirtualQTapGesture* self);
	friend void QTapGesture_setVdata(VirtualQTapGesture* self, void* vdata);

	VirtualQTapGesture(const QTapGesture_VTable* vtbl, void* vdata): QTapGesture(), vtbl(vtbl), vdata(vdata) {}
	VirtualQTapGesture(const QTapGesture_VTable* vtbl, void* vdata, QObject* parent): QTapGesture(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTapGesture() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTapGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTapGesture_virtualbase_metaObject(const VirtualQTapGesture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTapGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTapGesture_virtualbase_metacast(VirtualQTapGesture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTapGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTapGesture_virtualbase_metacall(VirtualQTapGesture* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTapGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTapGesture_virtualbase_event(VirtualQTapGesture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTapGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTapGesture_virtualbase_eventFilter(VirtualQTapGesture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTapGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTapGesture_virtualbase_timerEvent(VirtualQTapGesture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTapGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTapGesture_virtualbase_childEvent(VirtualQTapGesture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTapGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTapGesture_virtualbase_customEvent(VirtualQTapGesture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTapGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTapGesture_virtualbase_connectNotify(VirtualQTapGesture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTapGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTapGesture_virtualbase_disconnectNotify(VirtualQTapGesture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QTapGesture_protectedbase_sender(const VirtualQTapGesture* self);
	friend int QTapGesture_protectedbase_senderSignalIndex(const VirtualQTapGesture* self);
	friend int QTapGesture_protectedbase_receivers(const VirtualQTapGesture* self, const char* signal);
	friend bool QTapGesture_protectedbase_isSignalConnected(const VirtualQTapGesture* self, QMetaMethod* signal);
};

VirtualQTapGesture* QTapGesture_new(const QTapGesture_VTable* vtbl, void* vdata) {
	return new VirtualQTapGesture(vtbl, vdata);
}

VirtualQTapGesture* QTapGesture_new2(const QTapGesture_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQTapGesture(vtbl, vdata, parent);
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

QMetaObject* QTapGesture_virtualbase_metaObject(const VirtualQTapGesture* self) {

	return (QMetaObject*) self->QTapGesture::metaObject();
}

void* QTapGesture_virtualbase_metacast(VirtualQTapGesture* self, const char* param1) {

	return self->QTapGesture::qt_metacast(param1);
}

int QTapGesture_virtualbase_metacall(VirtualQTapGesture* self, int param1, int param2, void** param3) {

	return self->QTapGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QTapGesture_virtualbase_event(VirtualQTapGesture* self, QEvent* event) {

	return self->QTapGesture::event(event);
}

bool QTapGesture_virtualbase_eventFilter(VirtualQTapGesture* self, QObject* watched, QEvent* event) {

	return self->QTapGesture::eventFilter(watched, event);
}

void QTapGesture_virtualbase_timerEvent(VirtualQTapGesture* self, QTimerEvent* event) {

	self->QTapGesture::timerEvent(event);
}

void QTapGesture_virtualbase_childEvent(VirtualQTapGesture* self, QChildEvent* event) {

	self->QTapGesture::childEvent(event);
}

void QTapGesture_virtualbase_customEvent(VirtualQTapGesture* self, QEvent* event) {

	self->QTapGesture::customEvent(event);
}

void QTapGesture_virtualbase_connectNotify(VirtualQTapGesture* self, QMetaMethod* signal) {

	self->QTapGesture::connectNotify(*signal);
}

void QTapGesture_virtualbase_disconnectNotify(VirtualQTapGesture* self, QMetaMethod* signal) {

	self->QTapGesture::disconnectNotify(*signal);
}

const QMetaObject* QTapGesture_staticMetaObject() { return &QTapGesture::staticMetaObject; }

const QTapGesture_VTable* QTapGesture_vtbl(const VirtualQTapGesture* self) { return self->vtbl; }
void* QTapGesture_vdata(const VirtualQTapGesture* self) { return self->vdata; }
void QTapGesture_setVdata(VirtualQTapGesture* self, void* vdata) { self->vdata = vdata; }

QObject* QTapGesture_protectedbase_sender(const VirtualQTapGesture* self) {
	return self->sender();
}

int QTapGesture_protectedbase_senderSignalIndex(const VirtualQTapGesture* self) {
	return self->senderSignalIndex();
}

int QTapGesture_protectedbase_receivers(const VirtualQTapGesture* self, const char* signal) {
	return self->receivers(signal);
}

bool QTapGesture_protectedbase_isSignalConnected(const VirtualQTapGesture* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTapGesture_delete(QTapGesture* self) {
	delete self;
}

class VirtualQTapAndHoldGesture final : public QTapAndHoldGesture {
	const QTapAndHoldGesture_VTable* vtbl;
	void* vdata;
public:
	friend const QTapAndHoldGesture_VTable* QTapAndHoldGesture_vtbl(const VirtualQTapAndHoldGesture* self);
	friend void* QTapAndHoldGesture_vdata(const VirtualQTapAndHoldGesture* self);
	friend void QTapAndHoldGesture_setVdata(VirtualQTapAndHoldGesture* self, void* vdata);

	VirtualQTapAndHoldGesture(const QTapAndHoldGesture_VTable* vtbl, void* vdata): QTapAndHoldGesture(), vtbl(vtbl), vdata(vdata) {}
	VirtualQTapAndHoldGesture(const QTapAndHoldGesture_VTable* vtbl, void* vdata, QObject* parent): QTapAndHoldGesture(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTapAndHoldGesture() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTapAndHoldGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTapAndHoldGesture_virtualbase_metaObject(const VirtualQTapAndHoldGesture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTapAndHoldGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTapAndHoldGesture_virtualbase_metacast(VirtualQTapAndHoldGesture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTapAndHoldGesture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTapAndHoldGesture_virtualbase_metacall(VirtualQTapAndHoldGesture* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTapAndHoldGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTapAndHoldGesture_virtualbase_event(VirtualQTapAndHoldGesture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTapAndHoldGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTapAndHoldGesture_virtualbase_eventFilter(VirtualQTapAndHoldGesture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTapAndHoldGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_timerEvent(VirtualQTapAndHoldGesture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTapAndHoldGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_childEvent(VirtualQTapAndHoldGesture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTapAndHoldGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_customEvent(VirtualQTapAndHoldGesture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTapAndHoldGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_connectNotify(VirtualQTapAndHoldGesture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTapAndHoldGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTapAndHoldGesture_virtualbase_disconnectNotify(VirtualQTapAndHoldGesture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QTapAndHoldGesture_protectedbase_sender(const VirtualQTapAndHoldGesture* self);
	friend int QTapAndHoldGesture_protectedbase_senderSignalIndex(const VirtualQTapAndHoldGesture* self);
	friend int QTapAndHoldGesture_protectedbase_receivers(const VirtualQTapAndHoldGesture* self, const char* signal);
	friend bool QTapAndHoldGesture_protectedbase_isSignalConnected(const VirtualQTapAndHoldGesture* self, QMetaMethod* signal);
};

VirtualQTapAndHoldGesture* QTapAndHoldGesture_new(const QTapAndHoldGesture_VTable* vtbl, void* vdata) {
	return new VirtualQTapAndHoldGesture(vtbl, vdata);
}

VirtualQTapAndHoldGesture* QTapAndHoldGesture_new2(const QTapAndHoldGesture_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQTapAndHoldGesture(vtbl, vdata, parent);
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

QMetaObject* QTapAndHoldGesture_virtualbase_metaObject(const VirtualQTapAndHoldGesture* self) {

	return (QMetaObject*) self->QTapAndHoldGesture::metaObject();
}

void* QTapAndHoldGesture_virtualbase_metacast(VirtualQTapAndHoldGesture* self, const char* param1) {

	return self->QTapAndHoldGesture::qt_metacast(param1);
}

int QTapAndHoldGesture_virtualbase_metacall(VirtualQTapAndHoldGesture* self, int param1, int param2, void** param3) {

	return self->QTapAndHoldGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QTapAndHoldGesture_virtualbase_event(VirtualQTapAndHoldGesture* self, QEvent* event) {

	return self->QTapAndHoldGesture::event(event);
}

bool QTapAndHoldGesture_virtualbase_eventFilter(VirtualQTapAndHoldGesture* self, QObject* watched, QEvent* event) {

	return self->QTapAndHoldGesture::eventFilter(watched, event);
}

void QTapAndHoldGesture_virtualbase_timerEvent(VirtualQTapAndHoldGesture* self, QTimerEvent* event) {

	self->QTapAndHoldGesture::timerEvent(event);
}

void QTapAndHoldGesture_virtualbase_childEvent(VirtualQTapAndHoldGesture* self, QChildEvent* event) {

	self->QTapAndHoldGesture::childEvent(event);
}

void QTapAndHoldGesture_virtualbase_customEvent(VirtualQTapAndHoldGesture* self, QEvent* event) {

	self->QTapAndHoldGesture::customEvent(event);
}

void QTapAndHoldGesture_virtualbase_connectNotify(VirtualQTapAndHoldGesture* self, QMetaMethod* signal) {

	self->QTapAndHoldGesture::connectNotify(*signal);
}

void QTapAndHoldGesture_virtualbase_disconnectNotify(VirtualQTapAndHoldGesture* self, QMetaMethod* signal) {

	self->QTapAndHoldGesture::disconnectNotify(*signal);
}

const QMetaObject* QTapAndHoldGesture_staticMetaObject() { return &QTapAndHoldGesture::staticMetaObject; }

const QTapAndHoldGesture_VTable* QTapAndHoldGesture_vtbl(const VirtualQTapAndHoldGesture* self) { return self->vtbl; }
void* QTapAndHoldGesture_vdata(const VirtualQTapAndHoldGesture* self) { return self->vdata; }
void QTapAndHoldGesture_setVdata(VirtualQTapAndHoldGesture* self, void* vdata) { self->vdata = vdata; }

QObject* QTapAndHoldGesture_protectedbase_sender(const VirtualQTapAndHoldGesture* self) {
	return self->sender();
}

int QTapAndHoldGesture_protectedbase_senderSignalIndex(const VirtualQTapAndHoldGesture* self) {
	return self->senderSignalIndex();
}

int QTapAndHoldGesture_protectedbase_receivers(const VirtualQTapAndHoldGesture* self, const char* signal) {
	return self->receivers(signal);
}

bool QTapAndHoldGesture_protectedbase_isSignalConnected(const VirtualQTapAndHoldGesture* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTapAndHoldGesture_delete(QTapAndHoldGesture* self) {
	delete self;
}

class VirtualQGestureEvent final : public QGestureEvent {
	const QGestureEvent_VTable* vtbl;
	void* vdata;
public:
	friend const QGestureEvent_VTable* QGestureEvent_vtbl(const VirtualQGestureEvent* self);
	friend void* QGestureEvent_vdata(const VirtualQGestureEvent* self);
	friend void QGestureEvent_setVdata(VirtualQGestureEvent* self, void* vdata);

	VirtualQGestureEvent(const QGestureEvent_VTable* vtbl, void* vdata, const QList<QGesture *>& gestures): QGestureEvent(gestures), vtbl(vtbl), vdata(vdata) {}
	VirtualQGestureEvent(const QGestureEvent_VTable* vtbl, void* vdata, const QGestureEvent& param1): QGestureEvent(param1), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQGestureEvent() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGestureEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(this, sigval1);

	}

	friend void QGestureEvent_virtualbase_setAccepted(VirtualQGestureEvent* self, bool accepted);

	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGestureEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QEvent* QGestureEvent_virtualbase_clone(const VirtualQGestureEvent* self);

};

VirtualQGestureEvent* QGestureEvent_new(const QGestureEvent_VTable* vtbl, void* vdata, struct miqt_array /* of QGesture* */  gestures) {
	QList<QGesture *> gestures_QList;
	gestures_QList.reserve(gestures.len);
	QGesture** gestures_arr = static_cast<QGesture**>(gestures.data);
	for(size_t i = 0; i < gestures.len; ++i) {
		gestures_QList.push_back(gestures_arr[i]);
	}
	return new VirtualQGestureEvent(vtbl, vdata, gestures_QList);
}

VirtualQGestureEvent* QGestureEvent_new2(const QGestureEvent_VTable* vtbl, void* vdata, QGestureEvent* param1) {
	return new VirtualQGestureEvent(vtbl, vdata, *param1);
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

void QGestureEvent_virtualbase_setAccepted(VirtualQGestureEvent* self, bool accepted) {

	self->QGestureEvent::setAccepted(accepted);
}

QEvent* QGestureEvent_virtualbase_clone(const VirtualQGestureEvent* self) {

	return self->QGestureEvent::clone();
}

const QGestureEvent_VTable* QGestureEvent_vtbl(const VirtualQGestureEvent* self) { return self->vtbl; }
void* QGestureEvent_vdata(const VirtualQGestureEvent* self) { return self->vdata; }
void QGestureEvent_setVdata(VirtualQGestureEvent* self, void* vdata) { self->vdata = vdata; }

void QGestureEvent_delete(QGestureEvent* self) {
	delete self;
}

