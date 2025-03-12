#include <QAbstractAnimation>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPauseAnimation>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpauseanimation.h>
#include "gen_qpauseanimation.h"
class VirtualQPauseAnimation final : public QPauseAnimation {
	const QPauseAnimation_VTable* vtbl;
	void* vdata;
public:
	friend const QPauseAnimation_VTable* QPauseAnimation_vtbl(const VirtualQPauseAnimation* self);
	friend void* QPauseAnimation_vdata(const VirtualQPauseAnimation* self);
	friend void QPauseAnimation_setVdata(VirtualQPauseAnimation* self, void* vdata);

	VirtualQPauseAnimation(const QPauseAnimation_VTable* vtbl, void* vdata): QPauseAnimation(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPauseAnimation(const QPauseAnimation_VTable* vtbl, void* vdata, int msecs): QPauseAnimation(msecs), vtbl(vtbl), vdata(vdata) {}
	VirtualQPauseAnimation(const QPauseAnimation_VTable* vtbl, void* vdata, QObject* parent): QPauseAnimation(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPauseAnimation(const QPauseAnimation_VTable* vtbl, void* vdata, int msecs, QObject* parent): QPauseAnimation(msecs, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPauseAnimation() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPauseAnimation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPauseAnimation_virtualbase_metaObject(const VirtualQPauseAnimation* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPauseAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPauseAnimation_virtualbase_metacast(VirtualQPauseAnimation* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPauseAnimation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPauseAnimation_virtualbase_metacall(VirtualQPauseAnimation* self, int param1, int param2, void** param3);

	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QPauseAnimation::duration();
		}


		int callback_return_value = vtbl->duration(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPauseAnimation_virtualbase_duration(const VirtualQPauseAnimation* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QPauseAnimation::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPauseAnimation_virtualbase_event(VirtualQPauseAnimation* self, QEvent* e);

	virtual void updateCurrentTime(int param1) override {
		if (vtbl->updateCurrentTime == 0) {
			QPauseAnimation::updateCurrentTime(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->updateCurrentTime(this, sigval1);

	}

	friend void QPauseAnimation_virtualbase_updateCurrentTime(VirtualQPauseAnimation* self, int param1);

	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QPauseAnimation::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);

		vtbl->updateState(this, sigval1, sigval2);

	}

	friend void QPauseAnimation_virtualbase_updateState(VirtualQPauseAnimation* self, int newState, int oldState);

	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QPauseAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(this, sigval1);

	}

	friend void QPauseAnimation_virtualbase_updateDirection(VirtualQPauseAnimation* self, int direction);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPauseAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPauseAnimation_virtualbase_eventFilter(VirtualQPauseAnimation* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPauseAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPauseAnimation_virtualbase_timerEvent(VirtualQPauseAnimation* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPauseAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPauseAnimation_virtualbase_childEvent(VirtualQPauseAnimation* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPauseAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPauseAnimation_virtualbase_customEvent(VirtualQPauseAnimation* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPauseAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPauseAnimation_virtualbase_connectNotify(VirtualQPauseAnimation* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPauseAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPauseAnimation_virtualbase_disconnectNotify(VirtualQPauseAnimation* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPauseAnimation_protectedbase_sender(const VirtualQPauseAnimation* self);
	friend int QPauseAnimation_protectedbase_senderSignalIndex(const VirtualQPauseAnimation* self);
	friend int QPauseAnimation_protectedbase_receivers(const VirtualQPauseAnimation* self, const char* signal);
	friend bool QPauseAnimation_protectedbase_isSignalConnected(const VirtualQPauseAnimation* self, QMetaMethod* signal);
};

VirtualQPauseAnimation* QPauseAnimation_new(const QPauseAnimation_VTable* vtbl, void* vdata) {
	return new VirtualQPauseAnimation(vtbl, vdata);
}

VirtualQPauseAnimation* QPauseAnimation_new2(const QPauseAnimation_VTable* vtbl, void* vdata, int msecs) {
	return new VirtualQPauseAnimation(vtbl, vdata, static_cast<int>(msecs));
}

VirtualQPauseAnimation* QPauseAnimation_new3(const QPauseAnimation_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQPauseAnimation(vtbl, vdata, parent);
}

VirtualQPauseAnimation* QPauseAnimation_new4(const QPauseAnimation_VTable* vtbl, void* vdata, int msecs, QObject* parent) {
	return new VirtualQPauseAnimation(vtbl, vdata, static_cast<int>(msecs), parent);
}

void QPauseAnimation_virtbase(QPauseAnimation* src, QAbstractAnimation** outptr_QAbstractAnimation) {
	*outptr_QAbstractAnimation = static_cast<QAbstractAnimation*>(src);
}

QMetaObject* QPauseAnimation_metaObject(const QPauseAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPauseAnimation_metacast(QPauseAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPauseAnimation_metacall(QPauseAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPauseAnimation_tr(const char* s) {
	QString _ret = QPauseAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPauseAnimation_duration(const QPauseAnimation* self) {
	return self->duration();
}

void QPauseAnimation_setDuration(QPauseAnimation* self, int msecs) {
	self->setDuration(static_cast<int>(msecs));
}

struct miqt_string QPauseAnimation_tr2(const char* s, const char* c) {
	QString _ret = QPauseAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPauseAnimation_tr3(const char* s, const char* c, int n) {
	QString _ret = QPauseAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPauseAnimation_virtualbase_metaObject(const VirtualQPauseAnimation* self) {

	return (QMetaObject*) self->QPauseAnimation::metaObject();
}

void* QPauseAnimation_virtualbase_metacast(VirtualQPauseAnimation* self, const char* param1) {

	return self->QPauseAnimation::qt_metacast(param1);
}

int QPauseAnimation_virtualbase_metacall(VirtualQPauseAnimation* self, int param1, int param2, void** param3) {

	return self->QPauseAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QPauseAnimation_virtualbase_duration(const VirtualQPauseAnimation* self) {

	return self->QPauseAnimation::duration();
}

bool QPauseAnimation_virtualbase_event(VirtualQPauseAnimation* self, QEvent* e) {

	return self->QPauseAnimation::event(e);
}

void QPauseAnimation_virtualbase_updateCurrentTime(VirtualQPauseAnimation* self, int param1) {

	self->QPauseAnimation::updateCurrentTime(static_cast<int>(param1));
}

void QPauseAnimation_virtualbase_updateState(VirtualQPauseAnimation* self, int newState, int oldState) {

	self->QPauseAnimation::updateState(static_cast<VirtualQPauseAnimation::State>(newState), static_cast<VirtualQPauseAnimation::State>(oldState));
}

void QPauseAnimation_virtualbase_updateDirection(VirtualQPauseAnimation* self, int direction) {

	self->QPauseAnimation::updateDirection(static_cast<VirtualQPauseAnimation::Direction>(direction));
}

bool QPauseAnimation_virtualbase_eventFilter(VirtualQPauseAnimation* self, QObject* watched, QEvent* event) {

	return self->QPauseAnimation::eventFilter(watched, event);
}

void QPauseAnimation_virtualbase_timerEvent(VirtualQPauseAnimation* self, QTimerEvent* event) {

	self->QPauseAnimation::timerEvent(event);
}

void QPauseAnimation_virtualbase_childEvent(VirtualQPauseAnimation* self, QChildEvent* event) {

	self->QPauseAnimation::childEvent(event);
}

void QPauseAnimation_virtualbase_customEvent(VirtualQPauseAnimation* self, QEvent* event) {

	self->QPauseAnimation::customEvent(event);
}

void QPauseAnimation_virtualbase_connectNotify(VirtualQPauseAnimation* self, QMetaMethod* signal) {

	self->QPauseAnimation::connectNotify(*signal);
}

void QPauseAnimation_virtualbase_disconnectNotify(VirtualQPauseAnimation* self, QMetaMethod* signal) {

	self->QPauseAnimation::disconnectNotify(*signal);
}

const QMetaObject* QPauseAnimation_staticMetaObject() { return &QPauseAnimation::staticMetaObject; }

const QPauseAnimation_VTable* QPauseAnimation_vtbl(const VirtualQPauseAnimation* self) { return self->vtbl; }
void* QPauseAnimation_vdata(const VirtualQPauseAnimation* self) { return self->vdata; }
void QPauseAnimation_setVdata(VirtualQPauseAnimation* self, void* vdata) { self->vdata = vdata; }

QObject* QPauseAnimation_protectedbase_sender(const VirtualQPauseAnimation* self) {
	return self->sender();
}

int QPauseAnimation_protectedbase_senderSignalIndex(const VirtualQPauseAnimation* self) {
	return self->senderSignalIndex();
}

int QPauseAnimation_protectedbase_receivers(const VirtualQPauseAnimation* self, const char* signal) {
	return self->receivers(signal);
}

bool QPauseAnimation_protectedbase_isSignalConnected(const VirtualQPauseAnimation* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPauseAnimation_delete(QPauseAnimation* self) {
	delete self;
}

