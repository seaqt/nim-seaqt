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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTimeLine final : public QTimeLine {
	struct QTimeLine_VTable* vtbl;
public:

	VirtualQTimeLine(struct QTimeLine_VTable* vtbl): QTimeLine(), vtbl(vtbl) {};
	VirtualQTimeLine(struct QTimeLine_VTable* vtbl, int duration): QTimeLine(duration), vtbl(vtbl) {};
	VirtualQTimeLine(struct QTimeLine_VTable* vtbl, int duration, QObject* parent): QTimeLine(duration, parent), vtbl(vtbl) {};

	virtual ~VirtualQTimeLine() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTimeLine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTimeLine_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTimeLine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTimeLine_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTimeLine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeLine_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual qreal valueForTime(int msec) const override {
		if (vtbl->valueForTime == 0) {
			return QTimeLine::valueForTime(msec);
		}

		int sigval1 = msec;

		double callback_return_value = vtbl->valueForTime(vtbl, this, sigval1);

		return static_cast<qreal>(callback_return_value);
	}

	friend double QTimeLine_virtualbase_valueForTime(const void* self, int msec);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTimeLine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTimeLine_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTimeLine::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTimeLine_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTimeLine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTimeLine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTimeLine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTimeLine_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTimeLine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTimeLine_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTimeLine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTimeLine_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTimeLine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTimeLine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QTimeLine_protectedbase_sender(const void* self);
	friend int QTimeLine_protectedbase_senderSignalIndex(const void* self);
	friend int QTimeLine_protectedbase_receivers(const void* self, const char* signal);
	friend bool QTimeLine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QTimeLine* QTimeLine_new(struct QTimeLine_VTable* vtbl) {
	return new VirtualQTimeLine(vtbl);
}

QTimeLine* QTimeLine_new2(struct QTimeLine_VTable* vtbl, int duration) {
	return new VirtualQTimeLine(vtbl, static_cast<int>(duration));
}

QTimeLine* QTimeLine_new3(struct QTimeLine_VTable* vtbl, int duration, QObject* parent) {
	return new VirtualQTimeLine(vtbl, static_cast<int>(duration), parent);
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

struct miqt_string QTimeLine_tr(const char* s) {
	QString _ret = QTimeLine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeLine_trUtf8(const char* s) {
	QString _ret = QTimeLine::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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

int QTimeLine_curveShape(const QTimeLine* self) {
	QTimeLine::CurveShape _ret = self->curveShape();
	return static_cast<int>(_ret);
}

void QTimeLine_setCurveShape(QTimeLine* self, int shape) {
	self->setCurveShape(static_cast<QTimeLine::CurveShape>(shape));
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

struct miqt_string QTimeLine_tr2(const char* s, const char* c) {
	QString _ret = QTimeLine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeLine_tr3(const char* s, const char* c, int n) {
	QString _ret = QTimeLine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeLine_trUtf82(const char* s, const char* c) {
	QString _ret = QTimeLine::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeLine_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTimeLine::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTimeLine_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTimeLine*)(self) )->QTimeLine::metaObject();

}

void* QTimeLine_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTimeLine*)(self) )->QTimeLine::qt_metacast(param1);

}

int QTimeLine_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTimeLine*)(self) )->QTimeLine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

double QTimeLine_virtualbase_valueForTime(const void* self, int msec) {

	qreal _ret = ( (const VirtualQTimeLine*)(self) )->QTimeLine::valueForTime(static_cast<int>(msec));
	return static_cast<double>(_ret);

}

void QTimeLine_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTimeLine*)(self) )->QTimeLine::timerEvent(event);

}

bool QTimeLine_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQTimeLine*)(self) )->QTimeLine::event(event);

}

bool QTimeLine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQTimeLine*)(self) )->QTimeLine::eventFilter(watched, event);

}

void QTimeLine_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTimeLine*)(self) )->QTimeLine::childEvent(event);

}

void QTimeLine_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTimeLine*)(self) )->QTimeLine::customEvent(event);

}

void QTimeLine_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTimeLine*)(self) )->QTimeLine::connectNotify(*signal);

}

void QTimeLine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTimeLine*)(self) )->QTimeLine::disconnectNotify(*signal);

}

const QMetaObject* QTimeLine_staticMetaObject() { return &QTimeLine::staticMetaObject; }
QObject* QTimeLine_protectedbase_sender(const void* self) {
	VirtualQTimeLine* self_cast = static_cast<VirtualQTimeLine*>( (QTimeLine*)(self) );
	
	return self_cast->sender();

}

int QTimeLine_protectedbase_senderSignalIndex(const void* self) {
	VirtualQTimeLine* self_cast = static_cast<VirtualQTimeLine*>( (QTimeLine*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QTimeLine_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQTimeLine* self_cast = static_cast<VirtualQTimeLine*>( (QTimeLine*)(self) );
	
	return self_cast->receivers(signal);

}

bool QTimeLine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQTimeLine* self_cast = static_cast<VirtualQTimeLine*>( (QTimeLine*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QTimeLine_delete(QTimeLine* self) {
	delete self;
}

