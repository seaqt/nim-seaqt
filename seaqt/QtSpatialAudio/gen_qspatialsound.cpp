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
class VirtualQSpatialSound final : public QSpatialSound {
	const QSpatialSound_VTable* vtbl;
	void* vdata;
public:
	friend const QSpatialSound_VTable* QSpatialSound_vtbl(const VirtualQSpatialSound* self);
	friend void* QSpatialSound_vdata(const VirtualQSpatialSound* self);
	friend void QSpatialSound_setVdata(VirtualQSpatialSound* self, void* vdata);

	VirtualQSpatialSound(const QSpatialSound_VTable* vtbl, void* vdata, QAudioEngine* engine): QSpatialSound(engine), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSpatialSound() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSpatialSound::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSpatialSound_virtualbase_metaObject(const VirtualQSpatialSound* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSpatialSound::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSpatialSound_virtualbase_metacast(VirtualQSpatialSound* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSpatialSound::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpatialSound_virtualbase_metacall(VirtualQSpatialSound* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSpatialSound::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSpatialSound_virtualbase_event(VirtualQSpatialSound* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSpatialSound::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSpatialSound_virtualbase_eventFilter(VirtualQSpatialSound* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSpatialSound::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSpatialSound_virtualbase_timerEvent(VirtualQSpatialSound* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSpatialSound::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSpatialSound_virtualbase_childEvent(VirtualQSpatialSound* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSpatialSound::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSpatialSound_virtualbase_customEvent(VirtualQSpatialSound* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSpatialSound::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSpatialSound_virtualbase_connectNotify(VirtualQSpatialSound* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSpatialSound::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSpatialSound_virtualbase_disconnectNotify(VirtualQSpatialSound* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSpatialSound_protectedbase_sender(const VirtualQSpatialSound* self);
	friend int QSpatialSound_protectedbase_senderSignalIndex(const VirtualQSpatialSound* self);
	friend int QSpatialSound_protectedbase_receivers(const VirtualQSpatialSound* self, const char* signal);
	friend bool QSpatialSound_protectedbase_isSignalConnected(const VirtualQSpatialSound* self, QMetaMethod* signal);
};

VirtualQSpatialSound* QSpatialSound_new(const QSpatialSound_VTable* vtbl, void* vdata, QAudioEngine* engine) {
	return new VirtualQSpatialSound(vtbl, vdata, engine);
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

void QSpatialSound_connect_sourceChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_loopsChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_autoPlayChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_positionChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_rotationChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_volumeChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_distanceModelChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_sizeChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_distanceCutoffChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_manualAttenuationChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_occlusionIntensityChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_directivityChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_directivityOrderChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

void QSpatialSound_connect_nearFieldGainChanged(VirtualQSpatialSound* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
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

QMetaObject* QSpatialSound_virtualbase_metaObject(const VirtualQSpatialSound* self) {

	return (QMetaObject*) self->QSpatialSound::metaObject();
}

void* QSpatialSound_virtualbase_metacast(VirtualQSpatialSound* self, const char* param1) {

	return self->QSpatialSound::qt_metacast(param1);
}

int QSpatialSound_virtualbase_metacall(VirtualQSpatialSound* self, int param1, int param2, void** param3) {

	return self->QSpatialSound::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSpatialSound_virtualbase_event(VirtualQSpatialSound* self, QEvent* event) {

	return self->QSpatialSound::event(event);
}

bool QSpatialSound_virtualbase_eventFilter(VirtualQSpatialSound* self, QObject* watched, QEvent* event) {

	return self->QSpatialSound::eventFilter(watched, event);
}

void QSpatialSound_virtualbase_timerEvent(VirtualQSpatialSound* self, QTimerEvent* event) {

	self->QSpatialSound::timerEvent(event);
}

void QSpatialSound_virtualbase_childEvent(VirtualQSpatialSound* self, QChildEvent* event) {

	self->QSpatialSound::childEvent(event);
}

void QSpatialSound_virtualbase_customEvent(VirtualQSpatialSound* self, QEvent* event) {

	self->QSpatialSound::customEvent(event);
}

void QSpatialSound_virtualbase_connectNotify(VirtualQSpatialSound* self, QMetaMethod* signal) {

	self->QSpatialSound::connectNotify(*signal);
}

void QSpatialSound_virtualbase_disconnectNotify(VirtualQSpatialSound* self, QMetaMethod* signal) {

	self->QSpatialSound::disconnectNotify(*signal);
}

const QMetaObject* QSpatialSound_staticMetaObject() { return &QSpatialSound::staticMetaObject; }

const QSpatialSound_VTable* QSpatialSound_vtbl(const VirtualQSpatialSound* self) { return self->vtbl; }
void* QSpatialSound_vdata(const VirtualQSpatialSound* self) { return self->vdata; }
void QSpatialSound_setVdata(VirtualQSpatialSound* self, void* vdata) { self->vdata = vdata; }

QObject* QSpatialSound_protectedbase_sender(const VirtualQSpatialSound* self) {
	return self->sender();
}

int QSpatialSound_protectedbase_senderSignalIndex(const VirtualQSpatialSound* self) {
	return self->senderSignalIndex();
}

int QSpatialSound_protectedbase_receivers(const VirtualQSpatialSound* self, const char* signal) {
	return self->receivers(signal);
}

bool QSpatialSound_protectedbase_isSignalConnected(const VirtualQSpatialSound* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSpatialSound_delete(QSpatialSound* self) {
	delete self;
}

