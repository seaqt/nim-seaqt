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

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAudioInput_deviceChanged(intptr_t);
void miqt_exec_callback_QAudioInput_volumeChanged(intptr_t, float);
void miqt_exec_callback_QAudioInput_mutedChanged(intptr_t, bool);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAudioInput final : public QAudioInput {
	struct QAudioInput_VTable* vtbl;
public:

	VirtualQAudioInput(struct QAudioInput_VTable* vtbl): QAudioInput(), vtbl(vtbl) {};
	VirtualQAudioInput(struct QAudioInput_VTable* vtbl, const QAudioDevice& deviceInfo): QAudioInput(deviceInfo), vtbl(vtbl) {};
	VirtualQAudioInput(struct QAudioInput_VTable* vtbl, QObject* parent): QAudioInput(parent), vtbl(vtbl) {};
	VirtualQAudioInput(struct QAudioInput_VTable* vtbl, const QAudioDevice& deviceInfo, QObject* parent): QAudioInput(deviceInfo, parent), vtbl(vtbl) {};

	virtual ~VirtualQAudioInput() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioInput::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioInput_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioInput::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioInput_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioInput::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioInput_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioInput::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioInput_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioInput::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioInput_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioInput::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioInput_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioInput::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioInput_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioInput::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioInput_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioInput::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioInput_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioInput::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioInput_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioInput_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioInput_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioInput_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAudioInput_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAudioInput* QAudioInput_new(struct QAudioInput_VTable* vtbl) {
	return new VirtualQAudioInput(vtbl);
}

QAudioInput* QAudioInput_new2(struct QAudioInput_VTable* vtbl, QAudioDevice* deviceInfo) {
	return new VirtualQAudioInput(vtbl, *deviceInfo);
}

QAudioInput* QAudioInput_new3(struct QAudioInput_VTable* vtbl, QObject* parent) {
	return new VirtualQAudioInput(vtbl, parent);
}

QAudioInput* QAudioInput_new4(struct QAudioInput_VTable* vtbl, QAudioDevice* deviceInfo, QObject* parent) {
	return new VirtualQAudioInput(vtbl, *deviceInfo, parent);
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

void QAudioInput_connect_deviceChanged(QAudioInput* self, intptr_t slot) {
	VirtualQAudioInput::connect(self, static_cast<void (QAudioInput::*)()>(&QAudioInput::deviceChanged), self, [=]() {
		miqt_exec_callback_QAudioInput_deviceChanged(slot);
	});
}

void QAudioInput_volumeChanged(QAudioInput* self, float volume) {
	self->volumeChanged(static_cast<float>(volume));
}

void QAudioInput_connect_volumeChanged(QAudioInput* self, intptr_t slot) {
	VirtualQAudioInput::connect(self, static_cast<void (QAudioInput::*)(float)>(&QAudioInput::volumeChanged), self, [=](float volume) {
		float sigval1 = volume;
		miqt_exec_callback_QAudioInput_volumeChanged(slot, sigval1);
	});
}

void QAudioInput_mutedChanged(QAudioInput* self, bool muted) {
	self->mutedChanged(muted);
}

void QAudioInput_connect_mutedChanged(QAudioInput* self, intptr_t slot) {
	VirtualQAudioInput::connect(self, static_cast<void (QAudioInput::*)(bool)>(&QAudioInput::mutedChanged), self, [=](bool muted) {
		bool sigval1 = muted;
		miqt_exec_callback_QAudioInput_mutedChanged(slot, sigval1);
	});
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

QMetaObject* QAudioInput_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAudioInput*)(self) )->QAudioInput::metaObject();

}

void* QAudioInput_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAudioInput*)(self) )->QAudioInput::qt_metacast(param1);

}

int QAudioInput_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAudioInput*)(self) )->QAudioInput::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioInput_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAudioInput*)(self) )->QAudioInput::event(event);

}

bool QAudioInput_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAudioInput*)(self) )->QAudioInput::eventFilter(watched, event);

}

void QAudioInput_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAudioInput*)(self) )->QAudioInput::timerEvent(event);

}

void QAudioInput_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAudioInput*)(self) )->QAudioInput::childEvent(event);

}

void QAudioInput_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAudioInput*)(self) )->QAudioInput::customEvent(event);

}

void QAudioInput_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioInput*)(self) )->QAudioInput::connectNotify(*signal);

}

void QAudioInput_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioInput*)(self) )->QAudioInput::disconnectNotify(*signal);

}

const QMetaObject* QAudioInput_staticMetaObject() { return &QAudioInput::staticMetaObject; }
QObject* QAudioInput_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioInput* self_cast = dynamic_cast<VirtualQAudioInput*>( (QAudioInput*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAudioInput_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioInput* self_cast = dynamic_cast<VirtualQAudioInput*>( (QAudioInput*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAudioInput_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAudioInput* self_cast = dynamic_cast<VirtualQAudioInput*>( (QAudioInput*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAudioInput_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAudioInput* self_cast = dynamic_cast<VirtualQAudioInput*>( (QAudioInput*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioInput_delete(QAudioInput* self) {
	delete self;
}

