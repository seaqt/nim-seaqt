#include <QAudioEngine>
#include <QAudioRoom>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuaternion>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVector3D>
#include <qaudioroom.h>
#include "gen_qaudioroom.h"
class VirtualQAudioRoom final : public QAudioRoom {
	const QAudioRoom_VTable* vtbl;
	void* vdata;
public:
	friend const QAudioRoom_VTable* QAudioRoom_vtbl(const VirtualQAudioRoom* self);
	friend void* QAudioRoom_vdata(const VirtualQAudioRoom* self);
	friend void QAudioRoom_setVdata(VirtualQAudioRoom* self, void* vdata);

	VirtualQAudioRoom(const QAudioRoom_VTable* vtbl, void* vdata, QAudioEngine* engine): QAudioRoom(engine), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAudioRoom() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioRoom::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioRoom_virtualbase_metaObject(const VirtualQAudioRoom* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioRoom::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioRoom_virtualbase_metacast(VirtualQAudioRoom* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioRoom::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioRoom_virtualbase_metacall(VirtualQAudioRoom* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioRoom::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioRoom_virtualbase_event(VirtualQAudioRoom* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioRoom::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioRoom_virtualbase_eventFilter(VirtualQAudioRoom* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioRoom::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAudioRoom_virtualbase_timerEvent(VirtualQAudioRoom* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioRoom::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAudioRoom_virtualbase_childEvent(VirtualQAudioRoom* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioRoom::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAudioRoom_virtualbase_customEvent(VirtualQAudioRoom* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioRoom::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAudioRoom_virtualbase_connectNotify(VirtualQAudioRoom* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioRoom::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAudioRoom_virtualbase_disconnectNotify(VirtualQAudioRoom* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioRoom_protectedbase_sender(const VirtualQAudioRoom* self);
	friend int QAudioRoom_protectedbase_senderSignalIndex(const VirtualQAudioRoom* self);
	friend int QAudioRoom_protectedbase_receivers(const VirtualQAudioRoom* self, const char* signal);
	friend bool QAudioRoom_protectedbase_isSignalConnected(const VirtualQAudioRoom* self, QMetaMethod* signal);
};

VirtualQAudioRoom* QAudioRoom_new(const QAudioRoom_VTable* vtbl, void* vdata, QAudioEngine* engine) {
	return new VirtualQAudioRoom(vtbl, vdata, engine);
}

void QAudioRoom_virtbase(QAudioRoom* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioRoom_metaObject(const QAudioRoom* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioRoom_metacast(QAudioRoom* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioRoom_metacall(QAudioRoom* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioRoom_tr(const char* s) {
	QString _ret = QAudioRoom::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAudioRoom_setPosition(QAudioRoom* self, QVector3D* pos) {
	self->setPosition(*pos);
}

QVector3D* QAudioRoom_position(const QAudioRoom* self) {
	return new QVector3D(self->position());
}

void QAudioRoom_setDimensions(QAudioRoom* self, QVector3D* dim) {
	self->setDimensions(*dim);
}

QVector3D* QAudioRoom_dimensions(const QAudioRoom* self) {
	return new QVector3D(self->dimensions());
}

void QAudioRoom_setRotation(QAudioRoom* self, QQuaternion* q) {
	self->setRotation(*q);
}

QQuaternion* QAudioRoom_rotation(const QAudioRoom* self) {
	return new QQuaternion(self->rotation());
}

void QAudioRoom_setWallMaterial(QAudioRoom* self, int wall, int material) {
	self->setWallMaterial(static_cast<QAudioRoom::Wall>(wall), static_cast<QAudioRoom::Material>(material));
}

int QAudioRoom_wallMaterial(const QAudioRoom* self, int wall) {
	QAudioRoom::Material _ret = self->wallMaterial(static_cast<QAudioRoom::Wall>(wall));
	return static_cast<int>(_ret);
}

void QAudioRoom_setReflectionGain(QAudioRoom* self, float factor) {
	self->setReflectionGain(static_cast<float>(factor));
}

float QAudioRoom_reflectionGain(const QAudioRoom* self) {
	return self->reflectionGain();
}

void QAudioRoom_setReverbGain(QAudioRoom* self, float factor) {
	self->setReverbGain(static_cast<float>(factor));
}

float QAudioRoom_reverbGain(const QAudioRoom* self) {
	return self->reverbGain();
}

void QAudioRoom_setReverbTime(QAudioRoom* self, float factor) {
	self->setReverbTime(static_cast<float>(factor));
}

float QAudioRoom_reverbTime(const QAudioRoom* self) {
	return self->reverbTime();
}

void QAudioRoom_setReverbBrightness(QAudioRoom* self, float factor) {
	self->setReverbBrightness(static_cast<float>(factor));
}

float QAudioRoom_reverbBrightness(const QAudioRoom* self) {
	return self->reverbBrightness();
}

void QAudioRoom_positionChanged(QAudioRoom* self) {
	self->positionChanged();
}

void QAudioRoom_connect_positionChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRoom::connect(self, static_cast<void (QAudioRoom::*)()>(&QAudioRoom::positionChanged), self, local_caller{slot, callback, release});
}

void QAudioRoom_dimensionsChanged(QAudioRoom* self) {
	self->dimensionsChanged();
}

void QAudioRoom_connect_dimensionsChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRoom::connect(self, static_cast<void (QAudioRoom::*)()>(&QAudioRoom::dimensionsChanged), self, local_caller{slot, callback, release});
}

void QAudioRoom_rotationChanged(QAudioRoom* self) {
	self->rotationChanged();
}

void QAudioRoom_connect_rotationChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRoom::connect(self, static_cast<void (QAudioRoom::*)()>(&QAudioRoom::rotationChanged), self, local_caller{slot, callback, release});
}

void QAudioRoom_wallsChanged(QAudioRoom* self) {
	self->wallsChanged();
}

void QAudioRoom_connect_wallsChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRoom::connect(self, static_cast<void (QAudioRoom::*)()>(&QAudioRoom::wallsChanged), self, local_caller{slot, callback, release});
}

void QAudioRoom_reflectionGainChanged(QAudioRoom* self) {
	self->reflectionGainChanged();
}

void QAudioRoom_connect_reflectionGainChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRoom::connect(self, static_cast<void (QAudioRoom::*)()>(&QAudioRoom::reflectionGainChanged), self, local_caller{slot, callback, release});
}

void QAudioRoom_reverbGainChanged(QAudioRoom* self) {
	self->reverbGainChanged();
}

void QAudioRoom_connect_reverbGainChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRoom::connect(self, static_cast<void (QAudioRoom::*)()>(&QAudioRoom::reverbGainChanged), self, local_caller{slot, callback, release});
}

void QAudioRoom_reverbTimeChanged(QAudioRoom* self) {
	self->reverbTimeChanged();
}

void QAudioRoom_connect_reverbTimeChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRoom::connect(self, static_cast<void (QAudioRoom::*)()>(&QAudioRoom::reverbTimeChanged), self, local_caller{slot, callback, release});
}

void QAudioRoom_reverbBrightnessChanged(QAudioRoom* self) {
	self->reverbBrightnessChanged();
}

void QAudioRoom_connect_reverbBrightnessChanged(VirtualQAudioRoom* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioRoom::connect(self, static_cast<void (QAudioRoom::*)()>(&QAudioRoom::reverbBrightnessChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAudioRoom_tr2(const char* s, const char* c) {
	QString _ret = QAudioRoom::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioRoom_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioRoom::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioRoom_virtualbase_metaObject(const VirtualQAudioRoom* self) {

	return (QMetaObject*) self->QAudioRoom::metaObject();
}

void* QAudioRoom_virtualbase_metacast(VirtualQAudioRoom* self, const char* param1) {

	return self->QAudioRoom::qt_metacast(param1);
}

int QAudioRoom_virtualbase_metacall(VirtualQAudioRoom* self, int param1, int param2, void** param3) {

	return self->QAudioRoom::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioRoom_virtualbase_event(VirtualQAudioRoom* self, QEvent* event) {

	return self->QAudioRoom::event(event);
}

bool QAudioRoom_virtualbase_eventFilter(VirtualQAudioRoom* self, QObject* watched, QEvent* event) {

	return self->QAudioRoom::eventFilter(watched, event);
}

void QAudioRoom_virtualbase_timerEvent(VirtualQAudioRoom* self, QTimerEvent* event) {

	self->QAudioRoom::timerEvent(event);
}

void QAudioRoom_virtualbase_childEvent(VirtualQAudioRoom* self, QChildEvent* event) {

	self->QAudioRoom::childEvent(event);
}

void QAudioRoom_virtualbase_customEvent(VirtualQAudioRoom* self, QEvent* event) {

	self->QAudioRoom::customEvent(event);
}

void QAudioRoom_virtualbase_connectNotify(VirtualQAudioRoom* self, QMetaMethod* signal) {

	self->QAudioRoom::connectNotify(*signal);
}

void QAudioRoom_virtualbase_disconnectNotify(VirtualQAudioRoom* self, QMetaMethod* signal) {

	self->QAudioRoom::disconnectNotify(*signal);
}

const QMetaObject* QAudioRoom_staticMetaObject() { return &QAudioRoom::staticMetaObject; }

const QAudioRoom_VTable* QAudioRoom_vtbl(const VirtualQAudioRoom* self) { return self->vtbl; }
void* QAudioRoom_vdata(const VirtualQAudioRoom* self) { return self->vdata; }
void QAudioRoom_setVdata(VirtualQAudioRoom* self, void* vdata) { self->vdata = vdata; }

QObject* QAudioRoom_protectedbase_sender(const VirtualQAudioRoom* self) {
	return self->sender();
}

int QAudioRoom_protectedbase_senderSignalIndex(const VirtualQAudioRoom* self) {
	return self->senderSignalIndex();
}

int QAudioRoom_protectedbase_receivers(const VirtualQAudioRoom* self, const char* signal) {
	return self->receivers(signal);
}

bool QAudioRoom_protectedbase_isSignalConnected(const VirtualQAudioRoom* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAudioRoom_delete(QAudioRoom* self) {
	delete self;
}

