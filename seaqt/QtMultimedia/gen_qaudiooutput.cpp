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

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAudioOutput_deviceChanged(intptr_t);
void miqt_exec_callback_QAudioOutput_volumeChanged(intptr_t, float);
void miqt_exec_callback_QAudioOutput_mutedChanged(intptr_t, bool);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAudioOutput final : public QAudioOutput {
	struct QAudioOutput_VTable* vtbl;
public:

	VirtualQAudioOutput(struct QAudioOutput_VTable* vtbl): QAudioOutput(), vtbl(vtbl) {};
	VirtualQAudioOutput(struct QAudioOutput_VTable* vtbl, const QAudioDevice& device): QAudioOutput(device), vtbl(vtbl) {};
	VirtualQAudioOutput(struct QAudioOutput_VTable* vtbl, QObject* parent): QAudioOutput(parent), vtbl(vtbl) {};
	VirtualQAudioOutput(struct QAudioOutput_VTable* vtbl, const QAudioDevice& device, QObject* parent): QAudioOutput(device, parent), vtbl(vtbl) {};

	virtual ~VirtualQAudioOutput() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioOutput::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioOutput_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioOutput::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioOutput_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioOutput::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioOutput_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioOutput::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioOutput_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioOutput::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioOutput_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioOutput::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioOutput_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioOutput::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioOutput_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioOutput::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioOutput_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioOutput::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioOutput_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioOutput::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioOutput_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioOutput_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioOutput_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioOutput_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAudioOutput_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAudioOutput* QAudioOutput_new(struct QAudioOutput_VTable* vtbl) {
	return new VirtualQAudioOutput(vtbl);
}

QAudioOutput* QAudioOutput_new2(struct QAudioOutput_VTable* vtbl, QAudioDevice* device) {
	return new VirtualQAudioOutput(vtbl, *device);
}

QAudioOutput* QAudioOutput_new3(struct QAudioOutput_VTable* vtbl, QObject* parent) {
	return new VirtualQAudioOutput(vtbl, parent);
}

QAudioOutput* QAudioOutput_new4(struct QAudioOutput_VTable* vtbl, QAudioDevice* device, QObject* parent) {
	return new VirtualQAudioOutput(vtbl, *device, parent);
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

void QAudioOutput_connect_deviceChanged(QAudioOutput* self, intptr_t slot) {
	VirtualQAudioOutput::connect(self, static_cast<void (QAudioOutput::*)()>(&QAudioOutput::deviceChanged), self, [=]() {
		miqt_exec_callback_QAudioOutput_deviceChanged(slot);
	});
}

void QAudioOutput_volumeChanged(QAudioOutput* self, float volume) {
	self->volumeChanged(static_cast<float>(volume));
}

void QAudioOutput_connect_volumeChanged(QAudioOutput* self, intptr_t slot) {
	VirtualQAudioOutput::connect(self, static_cast<void (QAudioOutput::*)(float)>(&QAudioOutput::volumeChanged), self, [=](float volume) {
		float sigval1 = volume;
		miqt_exec_callback_QAudioOutput_volumeChanged(slot, sigval1);
	});
}

void QAudioOutput_mutedChanged(QAudioOutput* self, bool muted) {
	self->mutedChanged(muted);
}

void QAudioOutput_connect_mutedChanged(QAudioOutput* self, intptr_t slot) {
	VirtualQAudioOutput::connect(self, static_cast<void (QAudioOutput::*)(bool)>(&QAudioOutput::mutedChanged), self, [=](bool muted) {
		bool sigval1 = muted;
		miqt_exec_callback_QAudioOutput_mutedChanged(slot, sigval1);
	});
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

QMetaObject* QAudioOutput_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAudioOutput*)(self) )->QAudioOutput::metaObject();

}

void* QAudioOutput_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAudioOutput*)(self) )->QAudioOutput::qt_metacast(param1);

}

int QAudioOutput_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAudioOutput*)(self) )->QAudioOutput::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioOutput_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAudioOutput*)(self) )->QAudioOutput::event(event);

}

bool QAudioOutput_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAudioOutput*)(self) )->QAudioOutput::eventFilter(watched, event);

}

void QAudioOutput_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAudioOutput*)(self) )->QAudioOutput::timerEvent(event);

}

void QAudioOutput_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAudioOutput*)(self) )->QAudioOutput::childEvent(event);

}

void QAudioOutput_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAudioOutput*)(self) )->QAudioOutput::customEvent(event);

}

void QAudioOutput_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioOutput*)(self) )->QAudioOutput::connectNotify(*signal);

}

void QAudioOutput_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioOutput*)(self) )->QAudioOutput::disconnectNotify(*signal);

}

const QMetaObject* QAudioOutput_staticMetaObject() { return &QAudioOutput::staticMetaObject; }
QObject* QAudioOutput_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioOutput* self_cast = dynamic_cast<VirtualQAudioOutput*>( (QAudioOutput*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAudioOutput_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioOutput* self_cast = dynamic_cast<VirtualQAudioOutput*>( (QAudioOutput*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAudioOutput_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAudioOutput* self_cast = dynamic_cast<VirtualQAudioOutput*>( (QAudioOutput*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAudioOutput_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAudioOutput* self_cast = dynamic_cast<VirtualQAudioOutput*>( (QAudioOutput*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioOutput_delete(QAudioOutput* self) {
	delete self;
}

