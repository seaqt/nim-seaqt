#include <QAudioEngine>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuaternion>
#include <QSpatialSound>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVector3D>
#include <qspatialsound.h>
#include "gen_qspatialsound.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSpatialSound final : public QSpatialSound {
	struct QSpatialSound_VTable* vtbl;
public:

	VirtualQSpatialSound(struct QSpatialSound_VTable* vtbl, QAudioEngine* engine): QSpatialSound(engine), vtbl(vtbl) {};

	virtual ~VirtualQSpatialSound() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSpatialSound::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSpatialSound_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSpatialSound::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSpatialSound_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSpatialSound::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpatialSound_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSpatialSound::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSpatialSound_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSpatialSound::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSpatialSound_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSpatialSound::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSpatialSound_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSpatialSound::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSpatialSound_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSpatialSound::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSpatialSound_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSpatialSound::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSpatialSound_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSpatialSound::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSpatialSound_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSpatialSound_protectedbase_sender(const void* self);
	friend int QSpatialSound_protectedbase_senderSignalIndex(const void* self);
	friend int QSpatialSound_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSpatialSound_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSpatialSound* QSpatialSound_new(struct QSpatialSound_VTable* vtbl, QAudioEngine* engine) {
	return new VirtualQSpatialSound(vtbl, engine);
}

void QSpatialSound_virtbase(QSpatialSound* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSpatialSound_metaObject(const QSpatialSound* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSpatialSound_metacast(QSpatialSound* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSpatialSound_metacall(QSpatialSound* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSpatialSound_tr(const char* s) {
	QString _ret = QSpatialSound::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSpatialSound_setSource(QSpatialSound* self, QUrl* url) {
	self->setSource(*url);
}

QUrl* QSpatialSound_source(const QSpatialSound* self) {
	return new QUrl(self->source());
}

int QSpatialSound_loops(const QSpatialSound* self) {
	return self->loops();
}

void QSpatialSound_setLoops(QSpatialSound* self, int loops) {
	self->setLoops(static_cast<int>(loops));
}

bool QSpatialSound_autoPlay(const QSpatialSound* self) {
	return self->autoPlay();
}

void QSpatialSound_setAutoPlay(QSpatialSound* self, bool autoPlay) {
	self->setAutoPlay(autoPlay);
}

void QSpatialSound_setPosition(QSpatialSound* self, QVector3D* pos) {
	self->setPosition(*pos);
}

QVector3D* QSpatialSound_position(const QSpatialSound* self) {
	return new QVector3D(self->position());
}

void QSpatialSound_setRotation(QSpatialSound* self, QQuaternion* q) {
	self->setRotation(*q);
}

QQuaternion* QSpatialSound_rotation(const QSpatialSound* self) {
	return new QQuaternion(self->rotation());
}

void QSpatialSound_setVolume(QSpatialSound* self, float volume) {
	self->setVolume(static_cast<float>(volume));
}

float QSpatialSound_volume(const QSpatialSound* self) {
	return self->volume();
}

void QSpatialSound_setDistanceModel(QSpatialSound* self, int model) {
	self->setDistanceModel(static_cast<QSpatialSound::DistanceModel>(model));
}

int QSpatialSound_distanceModel(const QSpatialSound* self) {
	QSpatialSound::DistanceModel _ret = self->distanceModel();
	return static_cast<int>(_ret);
}

void QSpatialSound_setSize(QSpatialSound* self, float size) {
	self->setSize(static_cast<float>(size));
}

float QSpatialSound_size(const QSpatialSound* self) {
	return self->size();
}

void QSpatialSound_setDistanceCutoff(QSpatialSound* self, float cutoff) {
	self->setDistanceCutoff(static_cast<float>(cutoff));
}

float QSpatialSound_distanceCutoff(const QSpatialSound* self) {
	return self->distanceCutoff();
}

void QSpatialSound_setManualAttenuation(QSpatialSound* self, float attenuation) {
	self->setManualAttenuation(static_cast<float>(attenuation));
}

float QSpatialSound_manualAttenuation(const QSpatialSound* self) {
	return self->manualAttenuation();
}

void QSpatialSound_setOcclusionIntensity(QSpatialSound* self, float occlusion) {
	self->setOcclusionIntensity(static_cast<float>(occlusion));
}

float QSpatialSound_occlusionIntensity(const QSpatialSound* self) {
	return self->occlusionIntensity();
}

void QSpatialSound_setDirectivity(QSpatialSound* self, float alpha) {
	self->setDirectivity(static_cast<float>(alpha));
}

float QSpatialSound_directivity(const QSpatialSound* self) {
	return self->directivity();
}

void QSpatialSound_setDirectivityOrder(QSpatialSound* self, float alpha) {
	self->setDirectivityOrder(static_cast<float>(alpha));
}

float QSpatialSound_directivityOrder(const QSpatialSound* self) {
	return self->directivityOrder();
}

void QSpatialSound_setNearFieldGain(QSpatialSound* self, float gain) {
	self->setNearFieldGain(static_cast<float>(gain));
}

float QSpatialSound_nearFieldGain(const QSpatialSound* self) {
	return self->nearFieldGain();
}

QAudioEngine* QSpatialSound_engine(const QSpatialSound* self) {
	return self->engine();
}

void QSpatialSound_sourceChanged(QSpatialSound* self) {
	self->sourceChanged();
}

void QSpatialSound_connect_sourceChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::sourceChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_loopsChanged(QSpatialSound* self) {
	self->loopsChanged();
}

void QSpatialSound_connect_loopsChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::loopsChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_autoPlayChanged(QSpatialSound* self) {
	self->autoPlayChanged();
}

void QSpatialSound_connect_autoPlayChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::autoPlayChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_positionChanged(QSpatialSound* self) {
	self->positionChanged();
}

void QSpatialSound_connect_positionChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::positionChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_rotationChanged(QSpatialSound* self) {
	self->rotationChanged();
}

void QSpatialSound_connect_rotationChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::rotationChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_volumeChanged(QSpatialSound* self) {
	self->volumeChanged();
}

void QSpatialSound_connect_volumeChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::volumeChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_distanceModelChanged(QSpatialSound* self) {
	self->distanceModelChanged();
}

void QSpatialSound_connect_distanceModelChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::distanceModelChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_sizeChanged(QSpatialSound* self) {
	self->sizeChanged();
}

void QSpatialSound_connect_sizeChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::sizeChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_distanceCutoffChanged(QSpatialSound* self) {
	self->distanceCutoffChanged();
}

void QSpatialSound_connect_distanceCutoffChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::distanceCutoffChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_manualAttenuationChanged(QSpatialSound* self) {
	self->manualAttenuationChanged();
}

void QSpatialSound_connect_manualAttenuationChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::manualAttenuationChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_occlusionIntensityChanged(QSpatialSound* self) {
	self->occlusionIntensityChanged();
}

void QSpatialSound_connect_occlusionIntensityChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::occlusionIntensityChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_directivityChanged(QSpatialSound* self) {
	self->directivityChanged();
}

void QSpatialSound_connect_directivityChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::directivityChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_directivityOrderChanged(QSpatialSound* self) {
	self->directivityOrderChanged();
}

void QSpatialSound_connect_directivityOrderChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::directivityOrderChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_nearFieldGainChanged(QSpatialSound* self) {
	self->nearFieldGainChanged();
}

void QSpatialSound_connect_nearFieldGainChanged(QSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQSpatialSound::connect(self, static_cast<void (QSpatialSound::*)()>(&QSpatialSound::nearFieldGainChanged), self, local_caller{slot, callback, release});
}

void QSpatialSound_play(QSpatialSound* self) {
	self->play();
}

void QSpatialSound_pause(QSpatialSound* self) {
	self->pause();
}

void QSpatialSound_stop(QSpatialSound* self) {
	self->stop();
}

struct miqt_string QSpatialSound_tr2(const char* s, const char* c) {
	QString _ret = QSpatialSound::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpatialSound_tr3(const char* s, const char* c, int n) {
	QString _ret = QSpatialSound::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSpatialSound_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSpatialSound*)(self) )->QSpatialSound::metaObject();

}

void* QSpatialSound_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSpatialSound*)(self) )->QSpatialSound::qt_metacast(param1);

}

int QSpatialSound_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSpatialSound*)(self) )->QSpatialSound::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSpatialSound_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSpatialSound*)(self) )->QSpatialSound::event(event);

}

bool QSpatialSound_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSpatialSound*)(self) )->QSpatialSound::eventFilter(watched, event);

}

void QSpatialSound_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSpatialSound*)(self) )->QSpatialSound::timerEvent(event);

}

void QSpatialSound_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSpatialSound*)(self) )->QSpatialSound::childEvent(event);

}

void QSpatialSound_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSpatialSound*)(self) )->QSpatialSound::customEvent(event);

}

void QSpatialSound_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSpatialSound*)(self) )->QSpatialSound::connectNotify(*signal);

}

void QSpatialSound_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSpatialSound*)(self) )->QSpatialSound::disconnectNotify(*signal);

}

const QMetaObject* QSpatialSound_staticMetaObject() { return &QSpatialSound::staticMetaObject; }
QObject* QSpatialSound_protectedbase_sender(const void* self) {
	VirtualQSpatialSound* self_cast = static_cast<VirtualQSpatialSound*>( (QSpatialSound*)(self) );
	
	return self_cast->sender();

}

int QSpatialSound_protectedbase_senderSignalIndex(const void* self) {
	VirtualQSpatialSound* self_cast = static_cast<VirtualQSpatialSound*>( (QSpatialSound*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSpatialSound_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQSpatialSound* self_cast = static_cast<VirtualQSpatialSound*>( (QSpatialSound*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSpatialSound_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQSpatialSound* self_cast = static_cast<VirtualQSpatialSound*>( (QSpatialSound*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSpatialSound_delete(QSpatialSound* self) {
	delete self;
}

