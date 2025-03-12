#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimer>
#include <QTimerEvent>
#include <qtimer.h>
#include "gen_qtimer.h"
class VirtualQTimer final : public QTimer {
	const QTimer_VTable* vtbl;
	void* vdata;
public:
	friend const QTimer_VTable* QTimer_vtbl(const VirtualQTimer* self);
	friend void* QTimer_vdata(const VirtualQTimer* self);
	friend void QTimer_setVdata(VirtualQTimer* self, void* vdata);

	VirtualQTimer(const QTimer_VTable* vtbl, void* vdata): QTimer(), vtbl(vtbl), vdata(vdata) {}
	VirtualQTimer(const QTimer_VTable* vtbl, void* vdata, QObject* parent): QTimer(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTimer() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTimer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTimer_virtualbase_metaObject(const VirtualQTimer* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTimer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTimer_virtualbase_metacast(VirtualQTimer* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTimer::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimer_virtualbase_metacall(VirtualQTimer* self, int param1, int param2, void** param3);

	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QTimer::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTimer_virtualbase_timerEvent(VirtualQTimer* self, QTimerEvent* param1);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTimer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTimer_virtualbase_event(VirtualQTimer* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTimer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTimer_virtualbase_eventFilter(VirtualQTimer* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTimer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTimer_virtualbase_childEvent(VirtualQTimer* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTimer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTimer_virtualbase_customEvent(VirtualQTimer* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTimer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTimer_virtualbase_connectNotify(VirtualQTimer* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTimer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTimer_virtualbase_disconnectNotify(VirtualQTimer* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QTimer_protectedbase_sender(const VirtualQTimer* self);
	friend int QTimer_protectedbase_senderSignalIndex(const VirtualQTimer* self);
	friend int QTimer_protectedbase_receivers(const VirtualQTimer* self, const char* signal);
	friend bool QTimer_protectedbase_isSignalConnected(const VirtualQTimer* self, QMetaMethod* signal);
};

VirtualQTimer* QTimer_new(const QTimer_VTable* vtbl, void* vdata) {
	return new VirtualQTimer(vtbl, vdata);
}

VirtualQTimer* QTimer_new2(const QTimer_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQTimer(vtbl, vdata, parent);
}

void QTimer_virtbase(QTimer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QTimer_metaObject(const QTimer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTimer_metacast(QTimer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTimer_metacall(QTimer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTimer_tr(const char* s) {
	QString _ret = QTimer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTimer_isActive(const QTimer* self) {
	return self->isActive();
}

int QTimer_timerId(const QTimer* self) {
	return self->timerId();
}

void QTimer_setInterval(QTimer* self, int msec) {
	self->setInterval(static_cast<int>(msec));
}

int QTimer_interval(const QTimer* self) {
	return self->interval();
}

int QTimer_remainingTime(const QTimer* self) {
	return self->remainingTime();
}

void QTimer_setTimerType(QTimer* self, int atype) {
	self->setTimerType(static_cast<Qt::TimerType>(atype));
}

int QTimer_timerType(const QTimer* self) {
	Qt::TimerType _ret = self->timerType();
	return static_cast<int>(_ret);
}

void QTimer_setSingleShot(QTimer* self, bool singleShot) {
	self->setSingleShot(singleShot);
}

bool QTimer_isSingleShot(const QTimer* self) {
	return self->isSingleShot();
}

void QTimer_start(QTimer* self, int msec) {
	self->start(static_cast<int>(msec));
}

void QTimer_start2(QTimer* self) {
	self->start();
}

void QTimer_stop(QTimer* self) {
	self->stop();
}

struct miqt_string QTimer_tr2(const char* s, const char* c) {
	QString _ret = QTimer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimer_tr3(const char* s, const char* c, int n) {
	QString _ret = QTimer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTimer_virtualbase_metaObject(const VirtualQTimer* self) {

	return (QMetaObject*) self->QTimer::metaObject();
}

void* QTimer_virtualbase_metacast(VirtualQTimer* self, const char* param1) {

	return self->QTimer::qt_metacast(param1);
}

int QTimer_virtualbase_metacall(VirtualQTimer* self, int param1, int param2, void** param3) {

	return self->QTimer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QTimer_virtualbase_timerEvent(VirtualQTimer* self, QTimerEvent* param1) {

	self->QTimer::timerEvent(param1);
}

bool QTimer_virtualbase_event(VirtualQTimer* self, QEvent* event) {

	return self->QTimer::event(event);
}

bool QTimer_virtualbase_eventFilter(VirtualQTimer* self, QObject* watched, QEvent* event) {

	return self->QTimer::eventFilter(watched, event);
}

void QTimer_virtualbase_childEvent(VirtualQTimer* self, QChildEvent* event) {

	self->QTimer::childEvent(event);
}

void QTimer_virtualbase_customEvent(VirtualQTimer* self, QEvent* event) {

	self->QTimer::customEvent(event);
}

void QTimer_virtualbase_connectNotify(VirtualQTimer* self, QMetaMethod* signal) {

	self->QTimer::connectNotify(*signal);
}

void QTimer_virtualbase_disconnectNotify(VirtualQTimer* self, QMetaMethod* signal) {

	self->QTimer::disconnectNotify(*signal);
}

const QMetaObject* QTimer_staticMetaObject() { return &QTimer::staticMetaObject; }

const QTimer_VTable* QTimer_vtbl(const VirtualQTimer* self) { return self->vtbl; }
void* QTimer_vdata(const VirtualQTimer* self) { return self->vdata; }
void QTimer_setVdata(VirtualQTimer* self, void* vdata) { self->vdata = vdata; }

QObject* QTimer_protectedbase_sender(const VirtualQTimer* self) {
	return self->sender();
}

int QTimer_protectedbase_senderSignalIndex(const VirtualQTimer* self) {
	return self->senderSignalIndex();
}

int QTimer_protectedbase_receivers(const VirtualQTimer* self, const char* signal) {
	return self->receivers(signal);
}

bool QTimer_protectedbase_isSignalConnected(const VirtualQTimer* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTimer_delete(QTimer* self) {
	delete self;
}

