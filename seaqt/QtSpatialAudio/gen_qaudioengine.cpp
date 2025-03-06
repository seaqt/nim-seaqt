#include <QAudioDevice>
#include <QAudioEngine>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudioengine.h>
#include "gen_qaudioengine.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAudioEngine final : public QAudioEngine {
	struct QAudioEngine_VTable* vtbl;
public:

	VirtualQAudioEngine(struct QAudioEngine_VTable* vtbl): QAudioEngine(), vtbl(vtbl) {};
	VirtualQAudioEngine(struct QAudioEngine_VTable* vtbl, QObject* parent): QAudioEngine(parent), vtbl(vtbl) {};
	VirtualQAudioEngine(struct QAudioEngine_VTable* vtbl, int sampleRate): QAudioEngine(sampleRate), vtbl(vtbl) {};
	VirtualQAudioEngine(struct QAudioEngine_VTable* vtbl, int sampleRate, QObject* parent): QAudioEngine(sampleRate, parent), vtbl(vtbl) {};

	virtual ~VirtualQAudioEngine() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioEngine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioEngine_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioEngine_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioEngine::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioEngine::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioEngine_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioEngine_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioEngine_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioEngine_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioEngine_protectedbase_sender(const void* self);
	friend int QAudioEngine_protectedbase_senderSignalIndex(const void* self);
	friend int QAudioEngine_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAudioEngine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAudioEngine* QAudioEngine_new(struct QAudioEngine_VTable* vtbl) {
	return new VirtualQAudioEngine(vtbl);
}

QAudioEngine* QAudioEngine_new2(struct QAudioEngine_VTable* vtbl, QObject* parent) {
	return new VirtualQAudioEngine(vtbl, parent);
}

QAudioEngine* QAudioEngine_new3(struct QAudioEngine_VTable* vtbl, int sampleRate) {
	return new VirtualQAudioEngine(vtbl, static_cast<int>(sampleRate));
}

QAudioEngine* QAudioEngine_new4(struct QAudioEngine_VTable* vtbl, int sampleRate, QObject* parent) {
	return new VirtualQAudioEngine(vtbl, static_cast<int>(sampleRate), parent);
}

void QAudioEngine_virtbase(QAudioEngine* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioEngine_metaObject(const QAudioEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioEngine_metacast(QAudioEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioEngine_metacall(QAudioEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioEngine_tr(const char* s) {
	QString _ret = QAudioEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAudioEngine_setOutputMode(QAudioEngine* self, int mode) {
	self->setOutputMode(static_cast<QAudioEngine::OutputMode>(mode));
}

int QAudioEngine_outputMode(const QAudioEngine* self) {
	QAudioEngine::OutputMode _ret = self->outputMode();
	return static_cast<int>(_ret);
}

int QAudioEngine_sampleRate(const QAudioEngine* self) {
	return self->sampleRate();
}

void QAudioEngine_setOutputDevice(QAudioEngine* self, QAudioDevice* device) {
	self->setOutputDevice(*device);
}

QAudioDevice* QAudioEngine_outputDevice(const QAudioEngine* self) {
	return new QAudioDevice(self->outputDevice());
}

void QAudioEngine_setMasterVolume(QAudioEngine* self, float volume) {
	self->setMasterVolume(static_cast<float>(volume));
}

float QAudioEngine_masterVolume(const QAudioEngine* self) {
	return self->masterVolume();
}

void QAudioEngine_setPaused(QAudioEngine* self, bool paused) {
	self->setPaused(paused);
}

bool QAudioEngine_paused(const QAudioEngine* self) {
	return self->paused();
}

void QAudioEngine_setRoomEffectsEnabled(QAudioEngine* self, bool enabled) {
	self->setRoomEffectsEnabled(enabled);
}

bool QAudioEngine_roomEffectsEnabled(const QAudioEngine* self) {
	return self->roomEffectsEnabled();
}

void QAudioEngine_setDistanceScale(QAudioEngine* self, float scale) {
	self->setDistanceScale(static_cast<float>(scale));
}

float QAudioEngine_distanceScale(const QAudioEngine* self) {
	return self->distanceScale();
}

void QAudioEngine_outputModeChanged(QAudioEngine* self) {
	self->outputModeChanged();
}

void QAudioEngine_connect_outputModeChanged(QAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::outputModeChanged), self, local_caller{slot, callback, release});
}

void QAudioEngine_outputDeviceChanged(QAudioEngine* self) {
	self->outputDeviceChanged();
}

void QAudioEngine_connect_outputDeviceChanged(QAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::outputDeviceChanged), self, local_caller{slot, callback, release});
}

void QAudioEngine_masterVolumeChanged(QAudioEngine* self) {
	self->masterVolumeChanged();
}

void QAudioEngine_connect_masterVolumeChanged(QAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::masterVolumeChanged), self, local_caller{slot, callback, release});
}

void QAudioEngine_pausedChanged(QAudioEngine* self) {
	self->pausedChanged();
}

void QAudioEngine_connect_pausedChanged(QAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::pausedChanged), self, local_caller{slot, callback, release});
}

void QAudioEngine_distanceScaleChanged(QAudioEngine* self) {
	self->distanceScaleChanged();
}

void QAudioEngine_connect_distanceScaleChanged(QAudioEngine* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::distanceScaleChanged), self, local_caller{slot, callback, release});
}

void QAudioEngine_start(QAudioEngine* self) {
	self->start();
}

void QAudioEngine_stop(QAudioEngine* self) {
	self->stop();
}

void QAudioEngine_pause(QAudioEngine* self) {
	self->pause();
}

void QAudioEngine_resume(QAudioEngine* self) {
	self->resume();
}

struct miqt_string QAudioEngine_tr2(const char* s, const char* c) {
	QString _ret = QAudioEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioEngine_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioEngine_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAudioEngine*)(self) )->QAudioEngine::metaObject();

}

void* QAudioEngine_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAudioEngine*)(self) )->QAudioEngine::qt_metacast(param1);

}

int QAudioEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAudioEngine*)(self) )->QAudioEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioEngine_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAudioEngine*)(self) )->QAudioEngine::event(event);

}

bool QAudioEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAudioEngine*)(self) )->QAudioEngine::eventFilter(watched, event);

}

void QAudioEngine_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAudioEngine*)(self) )->QAudioEngine::timerEvent(event);

}

void QAudioEngine_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAudioEngine*)(self) )->QAudioEngine::childEvent(event);

}

void QAudioEngine_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAudioEngine*)(self) )->QAudioEngine::customEvent(event);

}

void QAudioEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioEngine*)(self) )->QAudioEngine::connectNotify(*signal);

}

void QAudioEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioEngine*)(self) )->QAudioEngine::disconnectNotify(*signal);

}

const QMetaObject* QAudioEngine_staticMetaObject() { return &QAudioEngine::staticMetaObject; }
QObject* QAudioEngine_protectedbase_sender(const void* self) {
	VirtualQAudioEngine* self_cast = static_cast<VirtualQAudioEngine*>( (QAudioEngine*)(self) );
	
	return self_cast->sender();

}

int QAudioEngine_protectedbase_senderSignalIndex(const void* self) {
	VirtualQAudioEngine* self_cast = static_cast<VirtualQAudioEngine*>( (QAudioEngine*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAudioEngine_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQAudioEngine* self_cast = static_cast<VirtualQAudioEngine*>( (QAudioEngine*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAudioEngine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQAudioEngine* self_cast = static_cast<VirtualQAudioEngine*>( (QAudioEngine*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioEngine_delete(QAudioEngine* self) {
	delete self;
}

