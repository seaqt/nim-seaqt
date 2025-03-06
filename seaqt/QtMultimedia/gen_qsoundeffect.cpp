#include <QAudioDevice>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSoundEffect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qsoundeffect.h>
#include "gen_qsoundeffect.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSoundEffect final : public QSoundEffect {
	struct QSoundEffect_VTable* vtbl;
public:

	VirtualQSoundEffect(struct QSoundEffect_VTable* vtbl): QSoundEffect(), vtbl(vtbl) {};
	VirtualQSoundEffect(struct QSoundEffect_VTable* vtbl, const QAudioDevice& audioDevice): QSoundEffect(audioDevice), vtbl(vtbl) {};
	VirtualQSoundEffect(struct QSoundEffect_VTable* vtbl, QObject* parent): QSoundEffect(parent), vtbl(vtbl) {};
	VirtualQSoundEffect(struct QSoundEffect_VTable* vtbl, const QAudioDevice& audioDevice, QObject* parent): QSoundEffect(audioDevice, parent), vtbl(vtbl) {};

	virtual ~VirtualQSoundEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSoundEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSoundEffect_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSoundEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSoundEffect_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSoundEffect::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSoundEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSoundEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSoundEffect_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSoundEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSoundEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSoundEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSoundEffect_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSoundEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSoundEffect_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSoundEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSoundEffect_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSoundEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSoundEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSoundEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSoundEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSoundEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSoundEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSoundEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSoundEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSoundEffect* QSoundEffect_new(struct QSoundEffect_VTable* vtbl) {
	return new VirtualQSoundEffect(vtbl);
}

QSoundEffect* QSoundEffect_new2(struct QSoundEffect_VTable* vtbl, QAudioDevice* audioDevice) {
	return new VirtualQSoundEffect(vtbl, *audioDevice);
}

QSoundEffect* QSoundEffect_new3(struct QSoundEffect_VTable* vtbl, QObject* parent) {
	return new VirtualQSoundEffect(vtbl, parent);
}

QSoundEffect* QSoundEffect_new4(struct QSoundEffect_VTable* vtbl, QAudioDevice* audioDevice, QObject* parent) {
	return new VirtualQSoundEffect(vtbl, *audioDevice, parent);
}

void QSoundEffect_virtbase(QSoundEffect* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSoundEffect_metaObject(const QSoundEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSoundEffect_metacast(QSoundEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSoundEffect_metacall(QSoundEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSoundEffect_tr(const char* s) {
	QString _ret = QSoundEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QSoundEffect_supportedMimeTypes() {
	QStringList _ret = QSoundEffect::supportedMimeTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QUrl* QSoundEffect_source(const QSoundEffect* self) {
	return new QUrl(self->source());
}

void QSoundEffect_setSource(QSoundEffect* self, QUrl* url) {
	self->setSource(*url);
}

int QSoundEffect_loopCount(const QSoundEffect* self) {
	return self->loopCount();
}

int QSoundEffect_loopsRemaining(const QSoundEffect* self) {
	return self->loopsRemaining();
}

void QSoundEffect_setLoopCount(QSoundEffect* self, int loopCount) {
	self->setLoopCount(static_cast<int>(loopCount));
}

QAudioDevice* QSoundEffect_audioDevice(QSoundEffect* self) {
	return new QAudioDevice(self->audioDevice());
}

void QSoundEffect_setAudioDevice(QSoundEffect* self, QAudioDevice* device) {
	self->setAudioDevice(*device);
}

float QSoundEffect_volume(const QSoundEffect* self) {
	return self->volume();
}

void QSoundEffect_setVolume(QSoundEffect* self, float volume) {
	self->setVolume(static_cast<float>(volume));
}

bool QSoundEffect_isMuted(const QSoundEffect* self) {
	return self->isMuted();
}

void QSoundEffect_setMuted(QSoundEffect* self, bool muted) {
	self->setMuted(muted);
}

bool QSoundEffect_isLoaded(const QSoundEffect* self) {
	return self->isLoaded();
}

bool QSoundEffect_isPlaying(const QSoundEffect* self) {
	return self->isPlaying();
}

int QSoundEffect_status(const QSoundEffect* self) {
	QSoundEffect::Status _ret = self->status();
	return static_cast<int>(_ret);
}

void QSoundEffect_sourceChanged(QSoundEffect* self) {
	self->sourceChanged();
}

void QSoundEffect_connect_sourceChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::sourceChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_loopCountChanged(QSoundEffect* self) {
	self->loopCountChanged();
}

void QSoundEffect_connect_loopCountChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loopCountChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_loopsRemainingChanged(QSoundEffect* self) {
	self->loopsRemainingChanged();
}

void QSoundEffect_connect_loopsRemainingChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loopsRemainingChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_volumeChanged(QSoundEffect* self) {
	self->volumeChanged();
}

void QSoundEffect_connect_volumeChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::volumeChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_mutedChanged(QSoundEffect* self) {
	self->mutedChanged();
}

void QSoundEffect_connect_mutedChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::mutedChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_loadedChanged(QSoundEffect* self) {
	self->loadedChanged();
}

void QSoundEffect_connect_loadedChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loadedChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_playingChanged(QSoundEffect* self) {
	self->playingChanged();
}

void QSoundEffect_connect_playingChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::playingChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_statusChanged(QSoundEffect* self) {
	self->statusChanged();
}

void QSoundEffect_connect_statusChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::statusChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_audioDeviceChanged(QSoundEffect* self) {
	self->audioDeviceChanged();
}

void QSoundEffect_connect_audioDeviceChanged(QSoundEffect* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::audioDeviceChanged), self, local_caller{slot, callback, release});
}

void QSoundEffect_play(QSoundEffect* self) {
	self->play();
}

void QSoundEffect_stop(QSoundEffect* self) {
	self->stop();
}

struct miqt_string QSoundEffect_tr2(const char* s, const char* c) {
	QString _ret = QSoundEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QSoundEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSoundEffect_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSoundEffect*)(self) )->QSoundEffect::metaObject();

}

void* QSoundEffect_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSoundEffect*)(self) )->QSoundEffect::qt_metacast(param1);

}

int QSoundEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSoundEffect*)(self) )->QSoundEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSoundEffect_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSoundEffect*)(self) )->QSoundEffect::event(event);

}

bool QSoundEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSoundEffect*)(self) )->QSoundEffect::eventFilter(watched, event);

}

void QSoundEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSoundEffect*)(self) )->QSoundEffect::timerEvent(event);

}

void QSoundEffect_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSoundEffect*)(self) )->QSoundEffect::childEvent(event);

}

void QSoundEffect_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSoundEffect*)(self) )->QSoundEffect::customEvent(event);

}

void QSoundEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSoundEffect*)(self) )->QSoundEffect::connectNotify(*signal);

}

void QSoundEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSoundEffect*)(self) )->QSoundEffect::disconnectNotify(*signal);

}

const QMetaObject* QSoundEffect_staticMetaObject() { return &QSoundEffect::staticMetaObject; }
QObject* QSoundEffect_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSoundEffect* self_cast = dynamic_cast<VirtualQSoundEffect*>( (QSoundEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSoundEffect_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSoundEffect* self_cast = dynamic_cast<VirtualQSoundEffect*>( (QSoundEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSoundEffect_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSoundEffect* self_cast = dynamic_cast<VirtualQSoundEffect*>( (QSoundEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSoundEffect_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSoundEffect* self_cast = dynamic_cast<VirtualQSoundEffect*>( (QSoundEffect*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSoundEffect_delete(QSoundEffect* self) {
	delete self;
}

