#include <QAudioDevice>
#include <QAudioOutput>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudiooutput.h>
#include "gen_qaudiooutput.h"
class VirtualQAudioOutput final : public QAudioOutput {
	const QAudioOutput_VTable* vtbl;
	void* vdata;
public:
	friend const QAudioOutput_VTable* QAudioOutput_vtbl(const VirtualQAudioOutput* self);
	friend void* QAudioOutput_vdata(const VirtualQAudioOutput* self);
	friend void QAudioOutput_setVdata(VirtualQAudioOutput* self, void* vdata);

	VirtualQAudioOutput(const QAudioOutput_VTable* vtbl, void* vdata): QAudioOutput(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioOutput(const QAudioOutput_VTable* vtbl, void* vdata, const QAudioDevice& device): QAudioOutput(device), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioOutput(const QAudioOutput_VTable* vtbl, void* vdata, QObject* parent): QAudioOutput(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioOutput(const QAudioOutput_VTable* vtbl, void* vdata, const QAudioDevice& device, QObject* parent): QAudioOutput(device, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAudioOutput() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioOutput::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioOutput_virtualbase_metaObject(const VirtualQAudioOutput* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioOutput::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioOutput_virtualbase_metacast(VirtualQAudioOutput* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioOutput::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioOutput_virtualbase_metacall(VirtualQAudioOutput* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioOutput::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioOutput_virtualbase_event(VirtualQAudioOutput* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioOutput::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioOutput_virtualbase_eventFilter(VirtualQAudioOutput* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioOutput::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAudioOutput_virtualbase_timerEvent(VirtualQAudioOutput* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioOutput::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAudioOutput_virtualbase_childEvent(VirtualQAudioOutput* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioOutput::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAudioOutput_virtualbase_customEvent(VirtualQAudioOutput* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioOutput::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAudioOutput_virtualbase_connectNotify(VirtualQAudioOutput* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioOutput::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAudioOutput_virtualbase_disconnectNotify(VirtualQAudioOutput* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioOutput_protectedbase_sender(const VirtualQAudioOutput* self);
	friend int QAudioOutput_protectedbase_senderSignalIndex(const VirtualQAudioOutput* self);
	friend int QAudioOutput_protectedbase_receivers(const VirtualQAudioOutput* self, const char* signal);
	friend bool QAudioOutput_protectedbase_isSignalConnected(const VirtualQAudioOutput* self, QMetaMethod* signal);
};

VirtualQAudioOutput* QAudioOutput_new(const QAudioOutput_VTable* vtbl, void* vdata) {
	return new VirtualQAudioOutput(vtbl, vdata);
}

VirtualQAudioOutput* QAudioOutput_new2(const QAudioOutput_VTable* vtbl, void* vdata, QAudioDevice* device) {
	return new VirtualQAudioOutput(vtbl, vdata, *device);
}

VirtualQAudioOutput* QAudioOutput_new3(const QAudioOutput_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAudioOutput(vtbl, vdata, parent);
}

VirtualQAudioOutput* QAudioOutput_new4(const QAudioOutput_VTable* vtbl, void* vdata, QAudioDevice* device, QObject* parent) {
	return new VirtualQAudioOutput(vtbl, vdata, *device, parent);
}

void QAudioOutput_virtbase(QAudioOutput* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioOutput_metaObject(const QAudioOutput* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioOutput_metacast(QAudioOutput* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioOutput_metacall(QAudioOutput* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioOutput_tr(const char* s) {
	QString _ret = QAudioOutput::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioDevice* QAudioOutput_device(const QAudioOutput* self) {
	return new QAudioDevice(self->device());
}

float QAudioOutput_volume(const QAudioOutput* self) {
	return self->volume();
}

bool QAudioOutput_isMuted(const QAudioOutput* self) {
	return self->isMuted();
}

void QAudioOutput_setDevice(QAudioOutput* self, QAudioDevice* device) {
	self->setDevice(*device);
}

void QAudioOutput_setVolume(QAudioOutput* self, float volume) {
	self->setVolume(static_cast<float>(volume));
}

void QAudioOutput_setMuted(QAudioOutput* self, bool muted) {
	self->setMuted(muted);
}

void QAudioOutput_deviceChanged(QAudioOutput* self) {
	self->deviceChanged();
}

void QAudioOutput_connect_deviceChanged(VirtualQAudioOutput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAudioOutput::connect(self, static_cast<void (QAudioOutput::*)()>(&QAudioOutput::deviceChanged), self, local_caller{slot, callback, release});
}

void QAudioOutput_volumeChanged(QAudioOutput* self, float volume) {
	self->volumeChanged(static_cast<float>(volume));
}

void QAudioOutput_connect_volumeChanged(VirtualQAudioOutput* self, intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, float), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, float);
		void operator()(float volume) {
			float sigval1 = volume;
			callback(slot, sigval1);
		}
	};
	VirtualQAudioOutput::connect(self, static_cast<void (QAudioOutput::*)(float)>(&QAudioOutput::volumeChanged), self, local_caller{slot, callback, release});
}

void QAudioOutput_mutedChanged(QAudioOutput* self, bool muted) {
	self->mutedChanged(muted);
}

void QAudioOutput_connect_mutedChanged(VirtualQAudioOutput* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool muted) {
			bool sigval1 = muted;
			callback(slot, sigval1);
		}
	};
	VirtualQAudioOutput::connect(self, static_cast<void (QAudioOutput::*)(bool)>(&QAudioOutput::mutedChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QAudioOutput_tr2(const char* s, const char* c) {
	QString _ret = QAudioOutput::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioOutput_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioOutput::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioOutput_virtualbase_metaObject(const VirtualQAudioOutput* self) {

	return (QMetaObject*) self->QAudioOutput::metaObject();
}

void* QAudioOutput_virtualbase_metacast(VirtualQAudioOutput* self, const char* param1) {

	return self->QAudioOutput::qt_metacast(param1);
}

int QAudioOutput_virtualbase_metacall(VirtualQAudioOutput* self, int param1, int param2, void** param3) {

	return self->QAudioOutput::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioOutput_virtualbase_event(VirtualQAudioOutput* self, QEvent* event) {

	return self->QAudioOutput::event(event);
}

bool QAudioOutput_virtualbase_eventFilter(VirtualQAudioOutput* self, QObject* watched, QEvent* event) {

	return self->QAudioOutput::eventFilter(watched, event);
}

void QAudioOutput_virtualbase_timerEvent(VirtualQAudioOutput* self, QTimerEvent* event) {

	self->QAudioOutput::timerEvent(event);
}

void QAudioOutput_virtualbase_childEvent(VirtualQAudioOutput* self, QChildEvent* event) {

	self->QAudioOutput::childEvent(event);
}

void QAudioOutput_virtualbase_customEvent(VirtualQAudioOutput* self, QEvent* event) {

	self->QAudioOutput::customEvent(event);
}

void QAudioOutput_virtualbase_connectNotify(VirtualQAudioOutput* self, QMetaMethod* signal) {

	self->QAudioOutput::connectNotify(*signal);
}

void QAudioOutput_virtualbase_disconnectNotify(VirtualQAudioOutput* self, QMetaMethod* signal) {

	self->QAudioOutput::disconnectNotify(*signal);
}

const QMetaObject* QAudioOutput_staticMetaObject() { return &QAudioOutput::staticMetaObject; }

const QAudioOutput_VTable* QAudioOutput_vtbl(const VirtualQAudioOutput* self) { return self->vtbl; }
void* QAudioOutput_vdata(const VirtualQAudioOutput* self) { return self->vdata; }
void QAudioOutput_setVdata(VirtualQAudioOutput* self, void* vdata) { self->vdata = vdata; }

QObject* QAudioOutput_protectedbase_sender(const VirtualQAudioOutput* self) {
	return self->sender();
}

int QAudioOutput_protectedbase_senderSignalIndex(const VirtualQAudioOutput* self) {
	return self->senderSignalIndex();
}

int QAudioOutput_protectedbase_receivers(const VirtualQAudioOutput* self, const char* signal) {
	return self->receivers(signal);
}

bool QAudioOutput_protectedbase_isSignalConnected(const VirtualQAudioOutput* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAudioOutput_delete(QAudioOutput* self) {
	delete self;
}

