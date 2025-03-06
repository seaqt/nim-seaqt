#include <QAmbientSound>
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
#include <QUrl>
#include <qambientsound.h>
#include "gen_qambientsound.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAmbientSound final : public QAmbientSound {
	struct QAmbientSound_VTable* vtbl;
public:

	VirtualQAmbientSound(struct QAmbientSound_VTable* vtbl, QAudioEngine* engine): QAmbientSound(engine), vtbl(vtbl) {};

	virtual ~VirtualQAmbientSound() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAmbientSound::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAmbientSound_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAmbientSound::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAmbientSound_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAmbientSound::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAmbientSound_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAmbientSound::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAmbientSound_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAmbientSound::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAmbientSound_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAmbientSound::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAmbientSound_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAmbientSound::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAmbientSound_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAmbientSound::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAmbientSound_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAmbientSound::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAmbientSound_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAmbientSound::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAmbientSound_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAmbientSound_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAmbientSound_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAmbientSound_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAmbientSound_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAmbientSound* QAmbientSound_new(struct QAmbientSound_VTable* vtbl, QAudioEngine* engine) {
	return new VirtualQAmbientSound(vtbl, engine);
}

void QAmbientSound_virtbase(QAmbientSound* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAmbientSound_metaObject(const QAmbientSound* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAmbientSound_metacast(QAmbientSound* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAmbientSound_metacall(QAmbientSound* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAmbientSound_tr(const char* s) {
	QString _ret = QAmbientSound::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAmbientSound_setSource(QAmbientSound* self, QUrl* url) {
	self->setSource(*url);
}

QUrl* QAmbientSound_source(const QAmbientSound* self) {
	return new QUrl(self->source());
}

int QAmbientSound_loops(const QAmbientSound* self) {
	return self->loops();
}

void QAmbientSound_setLoops(QAmbientSound* self, int loops) {
	self->setLoops(static_cast<int>(loops));
}

bool QAmbientSound_autoPlay(const QAmbientSound* self) {
	return self->autoPlay();
}

void QAmbientSound_setAutoPlay(QAmbientSound* self, bool autoPlay) {
	self->setAutoPlay(autoPlay);
}

void QAmbientSound_setVolume(QAmbientSound* self, float volume) {
	self->setVolume(static_cast<float>(volume));
}

float QAmbientSound_volume(const QAmbientSound* self) {
	return self->volume();
}

QAudioEngine* QAmbientSound_engine(const QAmbientSound* self) {
	return self->engine();
}

void QAmbientSound_sourceChanged(QAmbientSound* self) {
	self->sourceChanged();
}

void QAmbientSound_connect_sourceChanged(QAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAmbientSound::connect(self, static_cast<void (QAmbientSound::*)()>(&QAmbientSound::sourceChanged), self, local_caller{slot, callback, release});
}

void QAmbientSound_loopsChanged(QAmbientSound* self) {
	self->loopsChanged();
}

void QAmbientSound_connect_loopsChanged(QAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAmbientSound::connect(self, static_cast<void (QAmbientSound::*)()>(&QAmbientSound::loopsChanged), self, local_caller{slot, callback, release});
}

void QAmbientSound_autoPlayChanged(QAmbientSound* self) {
	self->autoPlayChanged();
}

void QAmbientSound_connect_autoPlayChanged(QAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAmbientSound::connect(self, static_cast<void (QAmbientSound::*)()>(&QAmbientSound::autoPlayChanged), self, local_caller{slot, callback, release});
}

void QAmbientSound_volumeChanged(QAmbientSound* self) {
	self->volumeChanged();
}

void QAmbientSound_connect_volumeChanged(QAmbientSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAmbientSound::connect(self, static_cast<void (QAmbientSound::*)()>(&QAmbientSound::volumeChanged), self, local_caller{slot, callback, release});
}

void QAmbientSound_play(QAmbientSound* self) {
	self->play();
}

void QAmbientSound_pause(QAmbientSound* self) {
	self->pause();
}

void QAmbientSound_stop(QAmbientSound* self) {
	self->stop();
}

struct miqt_string QAmbientSound_tr2(const char* s, const char* c) {
	QString _ret = QAmbientSound::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAmbientSound_tr3(const char* s, const char* c, int n) {
	QString _ret = QAmbientSound::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAmbientSound_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAmbientSound*)(self) )->QAmbientSound::metaObject();

}

void* QAmbientSound_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAmbientSound*)(self) )->QAmbientSound::qt_metacast(param1);

}

int QAmbientSound_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAmbientSound*)(self) )->QAmbientSound::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAmbientSound_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAmbientSound*)(self) )->QAmbientSound::event(event);

}

bool QAmbientSound_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAmbientSound*)(self) )->QAmbientSound::eventFilter(watched, event);

}

void QAmbientSound_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAmbientSound*)(self) )->QAmbientSound::timerEvent(event);

}

void QAmbientSound_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAmbientSound*)(self) )->QAmbientSound::childEvent(event);

}

void QAmbientSound_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAmbientSound*)(self) )->QAmbientSound::customEvent(event);

}

void QAmbientSound_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAmbientSound*)(self) )->QAmbientSound::connectNotify(*signal);

}

void QAmbientSound_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAmbientSound*)(self) )->QAmbientSound::disconnectNotify(*signal);

}

const QMetaObject* QAmbientSound_staticMetaObject() { return &QAmbientSound::staticMetaObject; }
QObject* QAmbientSound_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAmbientSound* self_cast = dynamic_cast<VirtualQAmbientSound*>( (QAmbientSound*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAmbientSound_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAmbientSound* self_cast = dynamic_cast<VirtualQAmbientSound*>( (QAmbientSound*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAmbientSound_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAmbientSound* self_cast = dynamic_cast<VirtualQAmbientSound*>( (QAmbientSound*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAmbientSound_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAmbientSound* self_cast = dynamic_cast<VirtualQAmbientSound*>( (QAmbientSound*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAmbientSound_delete(QAmbientSound* self) {
	delete self;
}

