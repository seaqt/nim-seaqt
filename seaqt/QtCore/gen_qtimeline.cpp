#include <QChildEvent>
#include <QEasingCurve>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimeLine>
#include <QTimerEvent>
#include <qtimeline.h>
#include "gen_qtimeline.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQTimeLine final : public QTimeLine {
	const QTimeLine_VTable* vtbl;
public:
	friend void* QTimeLine_vdata(VirtualQTimeLine* self);
	friend VirtualQTimeLine* vdata_QTimeLine(void* vdata);

	VirtualQTimeLine(const QTimeLine_VTable* vtbl): QTimeLine(), vtbl(vtbl) {}
	VirtualQTimeLine(const QTimeLine_VTable* vtbl, int duration): QTimeLine(duration), vtbl(vtbl) {}
	VirtualQTimeLine(const QTimeLine_VTable* vtbl, int duration, QObject* parent): QTimeLine(duration, parent), vtbl(vtbl) {}

	virtual ~VirtualQTimeLine() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTimeLine::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QTimeLine_virtualbase_metaObject(const VirtualQTimeLine* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTimeLine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QTimeLine_virtualbase_metacast(VirtualQTimeLine* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTimeLine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QTimeLine_virtualbase_metacall(VirtualQTimeLine* self, int param1, int param2, void** param3);

	virtual qreal valueForTime(int msec) const override {
		if (vtbl->valueForTime == 0) {
			return QTimeLine::valueForTime(msec);
		}

		int sigval1 = msec;
		double callback_return_value = vtbl->valueForTime(this, sigval1);
		return static_cast<qreal>(callback_return_value);
	}

	friend double QTimeLine_virtualbase_valueForTime(const VirtualQTimeLine* self, int msec);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTimeLine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QTimeLine_virtualbase_timerEvent(VirtualQTimeLine* self, QTimerEvent* event);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTimeLine::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QTimeLine_virtualbase_event(VirtualQTimeLine* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTimeLine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QTimeLine_virtualbase_eventFilter(VirtualQTimeLine* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTimeLine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QTimeLine_virtualbase_childEvent(VirtualQTimeLine* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTimeLine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QTimeLine_virtualbase_customEvent(VirtualQTimeLine* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTimeLine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QTimeLine_virtualbase_connectNotify(VirtualQTimeLine* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTimeLine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QTimeLine_virtualbase_disconnectNotify(VirtualQTimeLine* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QTimeLine_protectedbase_sender(const VirtualQTimeLine* self);
	friend int QTimeLine_protectedbase_senderSignalIndex(const VirtualQTimeLine* self);
	friend int QTimeLine_protectedbase_receivers(const VirtualQTimeLine* self, const char* signal);
	friend bool QTimeLine_protectedbase_isSignalConnected(const VirtualQTimeLine* self, QMetaMethod* signal);
};

VirtualQTimeLine* QTimeLine_new(const QTimeLine_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQTimeLine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQTimeLine(vtbl) : nullptr;
}

VirtualQTimeLine* QTimeLine_new_duration(const QTimeLine_VTable* vtbl, size_t vdata, int duration) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQTimeLine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQTimeLine(vtbl, static_cast<int>(duration)) : nullptr;
}

VirtualQTimeLine* QTimeLine_new_duration_parent(const QTimeLine_VTable* vtbl, size_t vdata, int duration, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQTimeLine>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQTimeLine(vtbl, static_cast<int>(duration), parent) : nullptr;
}

void QTimeLine_virtbase(QTimeLine* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QTimeLine_metaObject(const QTimeLine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTimeLine_metacast(QTimeLine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTimeLine_metacall(QTimeLine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QTimeLine_tr_s(const char* s) {
	QString _ret = QTimeLine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTimeLine_state(const QTimeLine* self) {
	QTimeLine::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QTimeLine_loopCount(const QTimeLine* self) {
	return self->loopCount();
}

void QTimeLine_setLoopCount(QTimeLine* self, int count) {
	self->setLoopCount(static_cast<int>(count));
}

int QTimeLine_direction(const QTimeLine* self) {
	QTimeLine::Direction _ret = self->direction();
	return static_cast<int>(_ret);
}

void QTimeLine_setDirection(QTimeLine* self, int direction) {
	self->setDirection(static_cast<QTimeLine::Direction>(direction));
}

int QTimeLine_duration(const QTimeLine* self) {
	return self->duration();
}

void QTimeLine_setDuration(QTimeLine* self, int duration) {
	self->setDuration(static_cast<int>(duration));
}

int QTimeLine_startFrame(const QTimeLine* self) {
	return self->startFrame();
}

void QTimeLine_setStartFrame(QTimeLine* self, int frame) {
	self->setStartFrame(static_cast<int>(frame));
}

int QTimeLine_endFrame(const QTimeLine* self) {
	return self->endFrame();
}

void QTimeLine_setEndFrame(QTimeLine* self, int frame) {
	self->setEndFrame(static_cast<int>(frame));
}

void QTimeLine_setFrameRange(QTimeLine* self, int startFrame, int endFrame) {
	self->setFrameRange(static_cast<int>(startFrame), static_cast<int>(endFrame));
}

int QTimeLine_updateInterval(const QTimeLine* self) {
	return self->updateInterval();
}

void QTimeLine_setUpdateInterval(QTimeLine* self, int interval) {
	self->setUpdateInterval(static_cast<int>(interval));
}

QEasingCurve* QTimeLine_easingCurve(const QTimeLine* self) {
	return new QEasingCurve(self->easingCurve());
}

void QTimeLine_setEasingCurve(QTimeLine* self, QEasingCurve* curve) {
	self->setEasingCurve(*curve);
}

int QTimeLine_currentTime(const QTimeLine* self) {
	return self->currentTime();
}

int QTimeLine_currentFrame(const QTimeLine* self) {
	return self->currentFrame();
}

double QTimeLine_currentValue(const QTimeLine* self) {
	qreal _ret = self->currentValue();
	return static_cast<double>(_ret);
}

int QTimeLine_frameForTime(const QTimeLine* self, int msec) {
	return self->frameForTime(static_cast<int>(msec));
}

double QTimeLine_valueForTime(const QTimeLine* self, int msec) {
	qreal _ret = self->valueForTime(static_cast<int>(msec));
	return static_cast<double>(_ret);
}

void QTimeLine_start(QTimeLine* self) {
	self->start();
}

void QTimeLine_resume(QTimeLine* self) {
	self->resume();
}

void QTimeLine_stop(QTimeLine* self) {
	self->stop();
}

void QTimeLine_setPaused(QTimeLine* self, bool paused) {
	self->setPaused(paused);
}

void QTimeLine_setCurrentTime(QTimeLine* self, int msec) {
	self->setCurrentTime(static_cast<int>(msec));
}

void QTimeLine_toggleDirection(QTimeLine* self) {
	self->toggleDirection();
}

struct seaqt_string QTimeLine_tr_s_c(const char* s, const char* c) {
	QString _ret = QTimeLine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QTimeLine_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QTimeLine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTimeLine_connect_valueChanged(QTimeLine* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	QTimeLine::connect(self, &QTimeLine::valueChanged, self, [callback, release = seaqt::release_callback{slot,release}](qreal x, auto) {
			double sigval1 = x;
			callback(release.slot, sigval1);
	});
}

void QTimeLine_connect_frameChanged(QTimeLine* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QTimeLine::connect(self, &QTimeLine::frameChanged, self, [callback, release = seaqt::release_callback{slot,release}](int param1, auto) {
			int sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QTimeLine_connect_stateChanged(QTimeLine* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QTimeLine::connect(self, &QTimeLine::stateChanged, self, [callback, release = seaqt::release_callback{slot,release}](QTimeLine::State newState, auto) {
			QTimeLine::State newState_ret = newState;
			int sigval1 = static_cast<int>(newState_ret);
			callback(release.slot, sigval1);
	});
}

void QTimeLine_connect_finished(QTimeLine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QTimeLine::connect(self, &QTimeLine::finished, self, [callback, release = seaqt::release_callback{slot,release}](auto) {
			callback(release.slot);
	});
}

const QMetaObject* QTimeLine_staticMetaObject() { return &QTimeLine::staticMetaObject; }
void* QTimeLine_vdata(VirtualQTimeLine* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQTimeLine>()); }
VirtualQTimeLine* vdata_QTimeLine(void* vdata) { return reinterpret_cast<VirtualQTimeLine*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQTimeLine>()); }

QMetaObject* QTimeLine_virtualbase_metaObject(const VirtualQTimeLine* self) {

	return (QMetaObject*) self->QTimeLine::metaObject();
}

void* QTimeLine_virtualbase_metacast(VirtualQTimeLine* self, const char* param1) {

	return self->QTimeLine::qt_metacast(param1);
}

int QTimeLine_virtualbase_metacall(VirtualQTimeLine* self, int param1, int param2, void** param3) {

	return self->QTimeLine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

double QTimeLine_virtualbase_valueForTime(const VirtualQTimeLine* self, int msec) {

	qreal _ret = self->QTimeLine::valueForTime(static_cast<int>(msec));
	return static_cast<double>(_ret);
}

void QTimeLine_virtualbase_timerEvent(VirtualQTimeLine* self, QTimerEvent* event) {

	self->QTimeLine::timerEvent(event);
}

bool QTimeLine_virtualbase_event(VirtualQTimeLine* self, QEvent* event) {

	return self->QTimeLine::event(event);
}

bool QTimeLine_virtualbase_eventFilter(VirtualQTimeLine* self, QObject* watched, QEvent* event) {

	return self->QTimeLine::eventFilter(watched, event);
}

void QTimeLine_virtualbase_childEvent(VirtualQTimeLine* self, QChildEvent* event) {

	self->QTimeLine::childEvent(event);
}

void QTimeLine_virtualbase_customEvent(VirtualQTimeLine* self, QEvent* event) {

	self->QTimeLine::customEvent(event);
}

void QTimeLine_virtualbase_connectNotify(VirtualQTimeLine* self, QMetaMethod* signal) {

	self->QTimeLine::connectNotify(*signal);
}

void QTimeLine_virtualbase_disconnectNotify(VirtualQTimeLine* self, QMetaMethod* signal) {

	self->QTimeLine::disconnectNotify(*signal);
}

QObject* QTimeLine_protectedbase_sender(const VirtualQTimeLine* self) {
	return self->QTimeLine::sender();
}

int QTimeLine_protectedbase_senderSignalIndex(const VirtualQTimeLine* self) {
	return self->QTimeLine::senderSignalIndex();
}

int QTimeLine_protectedbase_receivers(const VirtualQTimeLine* self, const char* signal) {
	return self->QTimeLine::receivers(signal);
}

bool QTimeLine_protectedbase_isSignalConnected(const VirtualQTimeLine* self, QMetaMethod* signal) {
	return self->QTimeLine::isSignalConnected(*signal);
}

void QTimeLine_delete(QTimeLine* self) {
	delete self;
}

