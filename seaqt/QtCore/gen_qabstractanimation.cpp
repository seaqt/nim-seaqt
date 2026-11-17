#include <QAbstractAnimation>
#include <QAnimationDriver>
#include <QAnimationGroup>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qabstractanimation.h>
#include "gen_qabstractanimation.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAbstractAnimation final : public QAbstractAnimation {
	const QAbstractAnimation_VTable* vtbl;
public:
	friend void* QAbstractAnimation_vdata(VirtualQAbstractAnimation* self);
	friend VirtualQAbstractAnimation* vdata_QAbstractAnimation(void* vdata);

	VirtualQAbstractAnimation(const QAbstractAnimation_VTable* vtbl): QAbstractAnimation(), vtbl(vtbl) {}
	VirtualQAbstractAnimation(const QAbstractAnimation_VTable* vtbl, QObject* parent): QAbstractAnimation(parent), vtbl(vtbl) {}

	virtual ~VirtualQAbstractAnimation() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractAnimation::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAbstractAnimation_virtualbase_metaObject(const VirtualQAbstractAnimation* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAbstractAnimation_virtualbase_metacast(VirtualQAbstractAnimation* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractAnimation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractAnimation_virtualbase_metacall(VirtualQAbstractAnimation* self, int param1, int param2, void** param3);

	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		int callback_return_value = vtbl->duration(this);
		return static_cast<int>(callback_return_value);
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractAnimation::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAbstractAnimation_virtualbase_event(VirtualQAbstractAnimation* self, QEvent* event);

	virtual void updateCurrentTime(int currentTime) override {
		if (vtbl->updateCurrentTime == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = currentTime;
		vtbl->updateCurrentTime(this, sigval1);
	}

	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QAbstractAnimation::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);
		vtbl->updateState(this, sigval1, sigval2);
	}

	friend void QAbstractAnimation_virtualbase_updateState(VirtualQAbstractAnimation* self, int newState, int oldState);

	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QAbstractAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);
		vtbl->updateDirection(this, sigval1);
	}

	friend void QAbstractAnimation_virtualbase_updateDirection(VirtualQAbstractAnimation* self, int direction);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAbstractAnimation_virtualbase_eventFilter(VirtualQAbstractAnimation* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAbstractAnimation_virtualbase_timerEvent(VirtualQAbstractAnimation* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAbstractAnimation_virtualbase_childEvent(VirtualQAbstractAnimation* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAbstractAnimation_virtualbase_customEvent(VirtualQAbstractAnimation* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAbstractAnimation_virtualbase_connectNotify(VirtualQAbstractAnimation* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAbstractAnimation_virtualbase_disconnectNotify(VirtualQAbstractAnimation* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAbstractAnimation_protectedbase_sender(const VirtualQAbstractAnimation* self);
	friend int QAbstractAnimation_protectedbase_senderSignalIndex(const VirtualQAbstractAnimation* self);
	friend int QAbstractAnimation_protectedbase_receivers(const VirtualQAbstractAnimation* self, const char* signal);
	friend bool QAbstractAnimation_protectedbase_isSignalConnected(const VirtualQAbstractAnimation* self, QMetaMethod* signal);
};

VirtualQAbstractAnimation* QAbstractAnimation_new(const QAbstractAnimation_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAbstractAnimation>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAbstractAnimation(vtbl) : nullptr;
}

VirtualQAbstractAnimation* QAbstractAnimation_new_parent(const QAbstractAnimation_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAbstractAnimation>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAbstractAnimation(vtbl, parent) : nullptr;
}

void QAbstractAnimation_virtbase(QAbstractAnimation* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractAnimation_metaObject(const QAbstractAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractAnimation_metacast(QAbstractAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractAnimation_metacall(QAbstractAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAbstractAnimation_tr_s(const char* s) {
	QString _ret = QAbstractAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractAnimation_trUtf8_s(const char* s) {
	QString _ret = QAbstractAnimation::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAbstractAnimation_state(const QAbstractAnimation* self) {
	QAbstractAnimation::State _ret = self->state();
	return static_cast<int>(_ret);
}

QAnimationGroup* QAbstractAnimation_group(const QAbstractAnimation* self) {
	return self->group();
}

int QAbstractAnimation_direction(const QAbstractAnimation* self) {
	QAbstractAnimation::Direction _ret = self->direction();
	return static_cast<int>(_ret);
}

void QAbstractAnimation_setDirection(QAbstractAnimation* self, int direction) {
	self->setDirection(static_cast<QAbstractAnimation::Direction>(direction));
}

int QAbstractAnimation_currentTime(const QAbstractAnimation* self) {
	return self->currentTime();
}

int QAbstractAnimation_currentLoopTime(const QAbstractAnimation* self) {
	return self->currentLoopTime();
}

int QAbstractAnimation_loopCount(const QAbstractAnimation* self) {
	return self->loopCount();
}

void QAbstractAnimation_setLoopCount(QAbstractAnimation* self, int loopCount) {
	self->setLoopCount(static_cast<int>(loopCount));
}

int QAbstractAnimation_currentLoop(const QAbstractAnimation* self) {
	return self->currentLoop();
}

int QAbstractAnimation_duration(const QAbstractAnimation* self) {
	return self->duration();
}

int QAbstractAnimation_totalDuration(const QAbstractAnimation* self) {
	return self->totalDuration();
}

void QAbstractAnimation_finished(QAbstractAnimation* self) {
	self->finished();
}

void QAbstractAnimation_connect_finished(QAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAbstractAnimation::connect(self, static_cast<void (QAbstractAnimation::*)()>(&QAbstractAnimation::finished), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAbstractAnimation_stateChanged(QAbstractAnimation* self, int newState, int oldState) {
	self->stateChanged(static_cast<QAbstractAnimation::State>(newState), static_cast<QAbstractAnimation::State>(oldState));
}

void QAbstractAnimation_connect_stateChanged(QAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	QAbstractAnimation::connect(self, static_cast<void (QAbstractAnimation::*)(QAbstractAnimation::State, QAbstractAnimation::State)>(&QAbstractAnimation::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractAnimation::State newState, QAbstractAnimation::State oldState) {
			QAbstractAnimation::State newState_ret = newState;
			int sigval1 = static_cast<int>(newState_ret);
			QAbstractAnimation::State oldState_ret = oldState;
			int sigval2 = static_cast<int>(oldState_ret);
			callback(release.slot, sigval1, sigval2);
	});
}

void QAbstractAnimation_currentLoopChanged(QAbstractAnimation* self, int currentLoop) {
	self->currentLoopChanged(static_cast<int>(currentLoop));
}

void QAbstractAnimation_connect_currentLoopChanged(QAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QAbstractAnimation::connect(self, static_cast<void (QAbstractAnimation::*)(int)>(&QAbstractAnimation::currentLoopChanged), self, [callback, release = seaqt::release_callback{slot,release}](int currentLoop) {
			int sigval1 = currentLoop;
			callback(release.slot, sigval1);
	});
}

void QAbstractAnimation_directionChanged(QAbstractAnimation* self, int param1) {
	self->directionChanged(static_cast<QAbstractAnimation::Direction>(param1));
}

void QAbstractAnimation_connect_directionChanged(QAbstractAnimation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QAbstractAnimation::connect(self, static_cast<void (QAbstractAnimation::*)(QAbstractAnimation::Direction)>(&QAbstractAnimation::directionChanged), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractAnimation::Direction param1) {
			QAbstractAnimation::Direction param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			callback(release.slot, sigval1);
	});
}

void QAbstractAnimation_start(QAbstractAnimation* self) {
	self->start();
}

void QAbstractAnimation_pause(QAbstractAnimation* self) {
	self->pause();
}

void QAbstractAnimation_resume(QAbstractAnimation* self) {
	self->resume();
}

void QAbstractAnimation_setPaused(QAbstractAnimation* self, bool paused) {
	self->setPaused(paused);
}

void QAbstractAnimation_stop(QAbstractAnimation* self) {
	self->stop();
}

void QAbstractAnimation_setCurrentTime(QAbstractAnimation* self, int msecs) {
	self->setCurrentTime(static_cast<int>(msecs));
}

struct seaqt_string QAbstractAnimation_tr_s_c(const char* s, const char* c) {
	QString _ret = QAbstractAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractAnimation_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAbstractAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractAnimation_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QAbstractAnimation::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractAnimation_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAbstractAnimation::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractAnimation_start_policy(QAbstractAnimation* self, int policy) {
	self->start(static_cast<QAbstractAnimation::DeletionPolicy>(policy));
}

const QMetaObject* QAbstractAnimation_staticMetaObject() { return &QAbstractAnimation::staticMetaObject; }
void* QAbstractAnimation_vdata(VirtualQAbstractAnimation* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAbstractAnimation>()); }
VirtualQAbstractAnimation* vdata_QAbstractAnimation(void* vdata) { return reinterpret_cast<VirtualQAbstractAnimation*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAbstractAnimation>()); }

QMetaObject* QAbstractAnimation_virtualbase_metaObject(const VirtualQAbstractAnimation* self) {

	return (QMetaObject*) self->QAbstractAnimation::metaObject();
}

void* QAbstractAnimation_virtualbase_metacast(VirtualQAbstractAnimation* self, const char* param1) {

	return self->QAbstractAnimation::qt_metacast(param1);
}

int QAbstractAnimation_virtualbase_metacall(VirtualQAbstractAnimation* self, int param1, int param2, void** param3) {

	return self->QAbstractAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAbstractAnimation_virtualbase_event(VirtualQAbstractAnimation* self, QEvent* event) {

	return self->QAbstractAnimation::event(event);
}

void QAbstractAnimation_virtualbase_updateState(VirtualQAbstractAnimation* self, int newState, int oldState) {

	self->QAbstractAnimation::updateState(static_cast<VirtualQAbstractAnimation::State>(newState), static_cast<VirtualQAbstractAnimation::State>(oldState));
}

void QAbstractAnimation_virtualbase_updateDirection(VirtualQAbstractAnimation* self, int direction) {

	self->QAbstractAnimation::updateDirection(static_cast<VirtualQAbstractAnimation::Direction>(direction));
}

bool QAbstractAnimation_virtualbase_eventFilter(VirtualQAbstractAnimation* self, QObject* watched, QEvent* event) {

	return self->QAbstractAnimation::eventFilter(watched, event);
}

void QAbstractAnimation_virtualbase_timerEvent(VirtualQAbstractAnimation* self, QTimerEvent* event) {

	self->QAbstractAnimation::timerEvent(event);
}

void QAbstractAnimation_virtualbase_childEvent(VirtualQAbstractAnimation* self, QChildEvent* event) {

	self->QAbstractAnimation::childEvent(event);
}

void QAbstractAnimation_virtualbase_customEvent(VirtualQAbstractAnimation* self, QEvent* event) {

	self->QAbstractAnimation::customEvent(event);
}

void QAbstractAnimation_virtualbase_connectNotify(VirtualQAbstractAnimation* self, QMetaMethod* signal) {

	self->QAbstractAnimation::connectNotify(*signal);
}

void QAbstractAnimation_virtualbase_disconnectNotify(VirtualQAbstractAnimation* self, QMetaMethod* signal) {

	self->QAbstractAnimation::disconnectNotify(*signal);
}

QObject* QAbstractAnimation_protectedbase_sender(const VirtualQAbstractAnimation* self) {
	return self->sender();
}

int QAbstractAnimation_protectedbase_senderSignalIndex(const VirtualQAbstractAnimation* self) {
	return self->senderSignalIndex();
}

int QAbstractAnimation_protectedbase_receivers(const VirtualQAbstractAnimation* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractAnimation_protectedbase_isSignalConnected(const VirtualQAbstractAnimation* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractAnimation_delete(QAbstractAnimation* self) {
	delete self;
}

class VirtualQAnimationDriver final : public QAnimationDriver {
	const QAnimationDriver_VTable* vtbl;
public:
	friend void* QAnimationDriver_vdata(VirtualQAnimationDriver* self);
	friend VirtualQAnimationDriver* vdata_QAnimationDriver(void* vdata);

	VirtualQAnimationDriver(const QAnimationDriver_VTable* vtbl): QAnimationDriver(), vtbl(vtbl) {}
	VirtualQAnimationDriver(const QAnimationDriver_VTable* vtbl, QObject* parent): QAnimationDriver(parent), vtbl(vtbl) {}

	virtual ~VirtualQAnimationDriver() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAnimationDriver::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAnimationDriver_virtualbase_metaObject(const VirtualQAnimationDriver* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAnimationDriver::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAnimationDriver_virtualbase_metacast(VirtualQAnimationDriver* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAnimationDriver::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAnimationDriver_virtualbase_metacall(VirtualQAnimationDriver* self, int param1, int param2, void** param3);

	virtual void advance() override {
		if (vtbl->advance == 0) {
			QAnimationDriver::advance();
			return;
		}

		vtbl->advance(this);
	}

	friend void QAnimationDriver_virtualbase_advance(VirtualQAnimationDriver* self);

	virtual qint64 elapsed() const override {
		if (vtbl->elapsed == 0) {
			return QAnimationDriver::elapsed();
		}

		long long callback_return_value = vtbl->elapsed(this);
		return static_cast<qint64>(callback_return_value);
	}

	friend long long QAnimationDriver_virtualbase_elapsed(const VirtualQAnimationDriver* self);

	virtual void start() override {
		if (vtbl->start == 0) {
			QAnimationDriver::start();
			return;
		}

		vtbl->start(this);
	}

	friend void QAnimationDriver_virtualbase_start(VirtualQAnimationDriver* self);

	virtual void stop() override {
		if (vtbl->stop == 0) {
			QAnimationDriver::stop();
			return;
		}

		vtbl->stop(this);
	}

	friend void QAnimationDriver_virtualbase_stop(VirtualQAnimationDriver* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAnimationDriver::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAnimationDriver_virtualbase_event(VirtualQAnimationDriver* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAnimationDriver::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAnimationDriver_virtualbase_eventFilter(VirtualQAnimationDriver* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAnimationDriver::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAnimationDriver_virtualbase_timerEvent(VirtualQAnimationDriver* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAnimationDriver::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAnimationDriver_virtualbase_childEvent(VirtualQAnimationDriver* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAnimationDriver::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAnimationDriver_virtualbase_customEvent(VirtualQAnimationDriver* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAnimationDriver::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAnimationDriver_virtualbase_connectNotify(VirtualQAnimationDriver* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAnimationDriver::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAnimationDriver_virtualbase_disconnectNotify(VirtualQAnimationDriver* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAnimationDriver_protectedbase_advanceAnimation(VirtualQAnimationDriver* self);
	friend void QAnimationDriver_protectedbase_advanceAnimation_timeStep(VirtualQAnimationDriver* self, long long timeStep);
	friend QObject* QAnimationDriver_protectedbase_sender(const VirtualQAnimationDriver* self);
	friend int QAnimationDriver_protectedbase_senderSignalIndex(const VirtualQAnimationDriver* self);
	friend int QAnimationDriver_protectedbase_receivers(const VirtualQAnimationDriver* self, const char* signal);
	friend bool QAnimationDriver_protectedbase_isSignalConnected(const VirtualQAnimationDriver* self, QMetaMethod* signal);
};

VirtualQAnimationDriver* QAnimationDriver_new(const QAnimationDriver_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAnimationDriver>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAnimationDriver(vtbl) : nullptr;
}

VirtualQAnimationDriver* QAnimationDriver_new_parent(const QAnimationDriver_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAnimationDriver>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAnimationDriver(vtbl, parent) : nullptr;
}

void QAnimationDriver_virtbase(QAnimationDriver* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAnimationDriver_metaObject(const QAnimationDriver* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAnimationDriver_metacast(QAnimationDriver* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAnimationDriver_metacall(QAnimationDriver* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAnimationDriver_tr_s(const char* s) {
	QString _ret = QAnimationDriver::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAnimationDriver_trUtf8_s(const char* s) {
	QString _ret = QAnimationDriver::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAnimationDriver_advance(QAnimationDriver* self) {
	self->advance();
}

void QAnimationDriver_install(QAnimationDriver* self) {
	self->install();
}

void QAnimationDriver_uninstall(QAnimationDriver* self) {
	self->uninstall();
}

bool QAnimationDriver_isRunning(const QAnimationDriver* self) {
	return self->isRunning();
}

long long QAnimationDriver_elapsed(const QAnimationDriver* self) {
	qint64 _ret = self->elapsed();
	return static_cast<long long>(_ret);
}

void QAnimationDriver_setStartTime(QAnimationDriver* self, long long startTime) {
	self->setStartTime(static_cast<qint64>(startTime));
}

long long QAnimationDriver_startTime(const QAnimationDriver* self) {
	qint64 _ret = self->startTime();
	return static_cast<long long>(_ret);
}

void QAnimationDriver_started(QAnimationDriver* self) {
	self->started();
}

void QAnimationDriver_connect_started(QAnimationDriver* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAnimationDriver::connect(self, static_cast<void (QAnimationDriver::*)()>(&QAnimationDriver::started), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAnimationDriver_stopped(QAnimationDriver* self) {
	self->stopped();
}

void QAnimationDriver_connect_stopped(QAnimationDriver* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAnimationDriver::connect(self, static_cast<void (QAnimationDriver::*)()>(&QAnimationDriver::stopped), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QAnimationDriver_tr_s_c(const char* s, const char* c) {
	QString _ret = QAnimationDriver::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAnimationDriver_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAnimationDriver::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAnimationDriver_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QAnimationDriver::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAnimationDriver_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAnimationDriver::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAnimationDriver_staticMetaObject() { return &QAnimationDriver::staticMetaObject; }
void* QAnimationDriver_vdata(VirtualQAnimationDriver* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAnimationDriver>()); }
VirtualQAnimationDriver* vdata_QAnimationDriver(void* vdata) { return reinterpret_cast<VirtualQAnimationDriver*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAnimationDriver>()); }

QMetaObject* QAnimationDriver_virtualbase_metaObject(const VirtualQAnimationDriver* self) {

	return (QMetaObject*) self->QAnimationDriver::metaObject();
}

void* QAnimationDriver_virtualbase_metacast(VirtualQAnimationDriver* self, const char* param1) {

	return self->QAnimationDriver::qt_metacast(param1);
}

int QAnimationDriver_virtualbase_metacall(VirtualQAnimationDriver* self, int param1, int param2, void** param3) {

	return self->QAnimationDriver::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QAnimationDriver_virtualbase_advance(VirtualQAnimationDriver* self) {

	self->QAnimationDriver::advance();
}

long long QAnimationDriver_virtualbase_elapsed(const VirtualQAnimationDriver* self) {

	qint64 _ret = self->QAnimationDriver::elapsed();
	return static_cast<long long>(_ret);
}

void QAnimationDriver_virtualbase_start(VirtualQAnimationDriver* self) {

	self->QAnimationDriver::start();
}

void QAnimationDriver_virtualbase_stop(VirtualQAnimationDriver* self) {

	self->QAnimationDriver::stop();
}

bool QAnimationDriver_virtualbase_event(VirtualQAnimationDriver* self, QEvent* event) {

	return self->QAnimationDriver::event(event);
}

bool QAnimationDriver_virtualbase_eventFilter(VirtualQAnimationDriver* self, QObject* watched, QEvent* event) {

	return self->QAnimationDriver::eventFilter(watched, event);
}

void QAnimationDriver_virtualbase_timerEvent(VirtualQAnimationDriver* self, QTimerEvent* event) {

	self->QAnimationDriver::timerEvent(event);
}

void QAnimationDriver_virtualbase_childEvent(VirtualQAnimationDriver* self, QChildEvent* event) {

	self->QAnimationDriver::childEvent(event);
}

void QAnimationDriver_virtualbase_customEvent(VirtualQAnimationDriver* self, QEvent* event) {

	self->QAnimationDriver::customEvent(event);
}

void QAnimationDriver_virtualbase_connectNotify(VirtualQAnimationDriver* self, QMetaMethod* signal) {

	self->QAnimationDriver::connectNotify(*signal);
}

void QAnimationDriver_virtualbase_disconnectNotify(VirtualQAnimationDriver* self, QMetaMethod* signal) {

	self->QAnimationDriver::disconnectNotify(*signal);
}

void QAnimationDriver_protectedbase_advanceAnimation(VirtualQAnimationDriver* self) {
	self->advanceAnimation();
}

void QAnimationDriver_protectedbase_advanceAnimation_timeStep(VirtualQAnimationDriver* self, long long timeStep) {
	self->advanceAnimation(static_cast<qint64>(timeStep));
}

QObject* QAnimationDriver_protectedbase_sender(const VirtualQAnimationDriver* self) {
	return self->sender();
}

int QAnimationDriver_protectedbase_senderSignalIndex(const VirtualQAnimationDriver* self) {
	return self->senderSignalIndex();
}

int QAnimationDriver_protectedbase_receivers(const VirtualQAnimationDriver* self, const char* signal) {
	return self->receivers(signal);
}

bool QAnimationDriver_protectedbase_isSignalConnected(const VirtualQAnimationDriver* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAnimationDriver_delete(QAnimationDriver* self) {
	delete self;
}

