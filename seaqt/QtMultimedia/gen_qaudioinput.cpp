#include <QAudioDevice>
#include <QAudioInput>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudioinput.h>
#include "gen_qaudioinput.h"
class VirtualQAudioInput final : public QAudioInput {
	const QAudioInput_VTable* vtbl;
	void* vdata;
public:
	friend const QAudioInput_VTable* QAudioInput_vtbl(const VirtualQAudioInput* self);
	friend void* QAudioInput_vdata(const VirtualQAudioInput* self);
	friend void QAudioInput_setVdata(VirtualQAudioInput* self, void* vdata);

	VirtualQAudioInput(const QAudioInput_VTable* vtbl, void* vdata): QAudioInput(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioInput(const QAudioInput_VTable* vtbl, void* vdata, const QAudioDevice& deviceInfo): QAudioInput(deviceInfo), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioInput(const QAudioInput_VTable* vtbl, void* vdata, QObject* parent): QAudioInput(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioInput(const QAudioInput_VTable* vtbl, void* vdata, const QAudioDevice& deviceInfo, QObject* parent): QAudioInput(deviceInfo, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAudioInput() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioInput::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioInput_virtualbase_metaObject(const VirtualQAudioInput* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioInput::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioInput_virtualbase_metacast(VirtualQAudioInput* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioInput::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioInput_virtualbase_metacall(VirtualQAudioInput* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioInput::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioInput_virtualbase_event(VirtualQAudioInput* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioInput::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioInput_virtualbase_eventFilter(VirtualQAudioInput* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioInput::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAudioInput_virtualbase_timerEvent(VirtualQAudioInput* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioInput::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAudioInput_virtualbase_childEvent(VirtualQAudioInput* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioInput::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAudioInput_virtualbase_customEvent(VirtualQAudioInput* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioInput::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAudioInput_virtualbase_connectNotify(VirtualQAudioInput* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioInput::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAudioInput_virtualbase_disconnectNotify(VirtualQAudioInput* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioInput_protectedbase_sender(const VirtualQAudioInput* self);
	friend int QAudioInput_protectedbase_senderSignalIndex(const VirtualQAudioInput* self);
	friend int QAudioInput_protectedbase_receivers(const VirtualQAudioInput* self, const char* signal);
	friend bool QAudioInput_protectedbase_isSignalConnected(const VirtualQAudioInput* self, QMetaMethod* signal);
};

VirtualQAudioInput* QAudioInput_new(const QAudioInput_VTable* vtbl, void* vdata) {
	return new VirtualQAudioInput(vtbl, vdata);
}

VirtualQAudioInput* QAudioInput_new2(const QAudioInput_VTable* vtbl, void* vdata, QAudioDevice* deviceInfo) {
	return new VirtualQAudioInput(vtbl, vdata, *deviceInfo);
}

VirtualQAudioInput* QAudioInput_new3(const QAudioInput_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAudioInput(vtbl, vdata, parent);
}

VirtualQAudioInput* QAudioInput_new4(const QAudioInput_VTable* vtbl, void* vdata, QAudioDevice* deviceInfo, QObject* parent) {
	return new VirtualQAudioInput(vtbl, vdata, *deviceInfo, parent);
}

void QAudioInput_virtbase(QAudioInput* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioInput_metaObject(const QAudioInput* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioInput_metacast(QAudioInput* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioInput_metacall(QAudioInput* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioInput_tr(const char* s) {
	QString _ret = QAudioInput::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioDevice* QAudioInput_device(const QAudioInput* self) {
	return new QAudioDevice(self->device());
}

float QAudioInput_volume(const QAudioInput* self) {
	return self->volume();
}

bool QAudioInput_isMuted(const QAudioInput* self) {
	return self->isMuted();
}

void QAudioInput_setDevice(QAudioInput* self, QAudioDevice* device) {
	self->setDevice(*device);
}

void QAudioInput_setVolume(QAudioInput* self, float volume) {
	self->setVolume(static_cast<float>(volume));
}

void QAudioInput_setMuted(QAudioInput* self, bool muted) {
	self->setMuted(muted);
}

void QAudioInput_deviceChanged(QAudioInput* self) {
	self->deviceChanged();
}

void QAudioInput_connect_deviceChanged(VirtualQAudioInput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioInput::connect(self, static_cast<void (QAudioInput::*)()>(&QAudioInput::deviceChanged), self, local_caller{slot, callback, release});
}

void QAudioInput_volumeChanged(QAudioInput* self, float volume) {
	self->volumeChanged(static_cast<float>(volume));
}

void QAudioInput_connect_volumeChanged(VirtualQAudioInput* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, float);
		void operator()(float volume) {
			float sigval1 = volume;
			callback(slot, sigval1);
		}
	};
	VirtualQAudioInput::connect(self, static_cast<void (QAudioInput::*)(float)>(&QAudioInput::volumeChanged), self, local_caller{slot, callback, release});
}

void QAudioInput_mutedChanged(QAudioInput* self, bool muted) {
	self->mutedChanged(muted);
}

void QAudioInput_connect_mutedChanged(VirtualQAudioInput* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool muted) {
			bool sigval1 = muted;
			callback(slot, sigval1);
		}
	};
	VirtualQAudioInput::connect(self, static_cast<void (QAudioInput::*)(bool)>(&QAudioInput::mutedChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAudioInput_tr2(const char* s, const char* c) {
	QString _ret = QAudioInput::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioInput_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioInput::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioInput_virtualbase_metaObject(const VirtualQAudioInput* self) {

	return (QMetaObject*) self->QAudioInput::metaObject();
}

void* QAudioInput_virtualbase_metacast(VirtualQAudioInput* self, const char* param1) {

	return self->QAudioInput::qt_metacast(param1);
}

int QAudioInput_virtualbase_metacall(VirtualQAudioInput* self, int param1, int param2, void** param3) {

	return self->QAudioInput::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioInput_virtualbase_event(VirtualQAudioInput* self, QEvent* event) {

	return self->QAudioInput::event(event);
}

bool QAudioInput_virtualbase_eventFilter(VirtualQAudioInput* self, QObject* watched, QEvent* event) {

	return self->QAudioInput::eventFilter(watched, event);
}

void QAudioInput_virtualbase_timerEvent(VirtualQAudioInput* self, QTimerEvent* event) {

	self->QAudioInput::timerEvent(event);
}

void QAudioInput_virtualbase_childEvent(VirtualQAudioInput* self, QChildEvent* event) {

	self->QAudioInput::childEvent(event);
}

void QAudioInput_virtualbase_customEvent(VirtualQAudioInput* self, QEvent* event) {

	self->QAudioInput::customEvent(event);
}

void QAudioInput_virtualbase_connectNotify(VirtualQAudioInput* self, QMetaMethod* signal) {

	self->QAudioInput::connectNotify(*signal);
}

void QAudioInput_virtualbase_disconnectNotify(VirtualQAudioInput* self, QMetaMethod* signal) {

	self->QAudioInput::disconnectNotify(*signal);
}

const QMetaObject* QAudioInput_staticMetaObject() { return &QAudioInput::staticMetaObject; }

const QAudioInput_VTable* QAudioInput_vtbl(const VirtualQAudioInput* self) { return self->vtbl; }
void* QAudioInput_vdata(const VirtualQAudioInput* self) { return self->vdata; }
void QAudioInput_setVdata(VirtualQAudioInput* self, void* vdata) { self->vdata = vdata; }

QObject* QAudioInput_protectedbase_sender(const VirtualQAudioInput* self) {
	return self->sender();
}

int QAudioInput_protectedbase_senderSignalIndex(const VirtualQAudioInput* self) {
	return self->senderSignalIndex();
}

int QAudioInput_protectedbase_receivers(const VirtualQAudioInput* self, const char* signal) {
	return self->receivers(signal);
}

bool QAudioInput_protectedbase_isSignalConnected(const VirtualQAudioInput* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAudioInput_delete(QAudioInput* self) {
	delete self;
}

