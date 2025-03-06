#include <QAudioDevice>
#include <QAudioFormat>
#include <QAudioSource>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudiosource.h>
#include "gen_qaudiosource.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAudioSource_stateChanged(intptr_t, int);
QMetaObject* miqt_exec_callback_QAudioSource_metaObject(const QAudioSource*, intptr_t);
void* miqt_exec_callback_QAudioSource_metacast(QAudioSource*, intptr_t, const char*);
int miqt_exec_callback_QAudioSource_metacall(QAudioSource*, intptr_t, int, int, void**);
bool miqt_exec_callback_QAudioSource_event(QAudioSource*, intptr_t, QEvent*);
bool miqt_exec_callback_QAudioSource_eventFilter(QAudioSource*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QAudioSource_timerEvent(QAudioSource*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QAudioSource_childEvent(QAudioSource*, intptr_t, QChildEvent*);
void miqt_exec_callback_QAudioSource_customEvent(QAudioSource*, intptr_t, QEvent*);
void miqt_exec_callback_QAudioSource_connectNotify(QAudioSource*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QAudioSource_disconnectNotify(QAudioSource*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAudioSource final : public QAudioSource {
public:

	VirtualQAudioSource(): QAudioSource() {};
	VirtualQAudioSource(const QAudioDevice& audioDeviceInfo): QAudioSource(audioDeviceInfo) {};
	VirtualQAudioSource(const QAudioFormat& format): QAudioSource(format) {};
	VirtualQAudioSource(const QAudioFormat& format, QObject* parent): QAudioSource(format, parent) {};
	VirtualQAudioSource(const QAudioDevice& audioDeviceInfo, const QAudioFormat& format): QAudioSource(audioDeviceInfo, format) {};
	VirtualQAudioSource(const QAudioDevice& audioDeviceInfo, const QAudioFormat& format, QObject* parent): QAudioSource(audioDeviceInfo, format, parent) {};

	virtual ~VirtualQAudioSource() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QAudioSource::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QAudioSource_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	friend QMetaObject* QAudioSource_virtualbase_metaObject(const void* self);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QAudioSource::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QAudioSource_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	friend void* QAudioSource_virtualbase_metacast(void* self, const char* param1);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QAudioSource::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QAudioSource_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioSource_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QAudioSource::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QAudioSource_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	friend bool QAudioSource_virtualbase_event(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QAudioSource::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QAudioSource_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioSource_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QAudioSource::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QAudioSource_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	friend void QAudioSource_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QAudioSource::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QAudioSource_childEvent(this, handle__childEvent, sigval1);

		
	}

	friend void QAudioSource_virtualbase_childEvent(void* self, QChildEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QAudioSource::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QAudioSource_customEvent(this, handle__customEvent, sigval1);

		
	}

	friend void QAudioSource_virtualbase_customEvent(void* self, QEvent* event);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QAudioSource::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QAudioSource_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	friend void QAudioSource_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QAudioSource::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QAudioSource_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	friend void QAudioSource_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioSource_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioSource_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioSource_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAudioSource_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAudioSource* QAudioSource_new() {
	return new VirtualQAudioSource();
}

QAudioSource* QAudioSource_new2(QAudioDevice* audioDeviceInfo) {
	return new VirtualQAudioSource(*audioDeviceInfo);
}

QAudioSource* QAudioSource_new3(QAudioFormat* format) {
	return new VirtualQAudioSource(*format);
}

QAudioSource* QAudioSource_new4(QAudioFormat* format, QObject* parent) {
	return new VirtualQAudioSource(*format, parent);
}

QAudioSource* QAudioSource_new5(QAudioDevice* audioDeviceInfo, QAudioFormat* format) {
	return new VirtualQAudioSource(*audioDeviceInfo, *format);
}

QAudioSource* QAudioSource_new6(QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
	return new VirtualQAudioSource(*audioDeviceInfo, *format, parent);
}

void QAudioSource_virtbase(QAudioSource* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioSource_metaObject(const QAudioSource* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioSource_metacast(QAudioSource* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioSource_metacall(QAudioSource* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioSource_tr(const char* s) {
	QString _ret = QAudioSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioSource_isNull(const QAudioSource* self) {
	return self->isNull();
}

QAudioFormat* QAudioSource_format(const QAudioSource* self) {
	return new QAudioFormat(self->format());
}

void QAudioSource_start(QAudioSource* self, QIODevice* device) {
	self->start(device);
}

QIODevice* QAudioSource_start2(QAudioSource* self) {
	return self->start();
}

void QAudioSource_stop(QAudioSource* self) {
	self->stop();
}

void QAudioSource_reset(QAudioSource* self) {
	self->reset();
}

void QAudioSource_suspend(QAudioSource* self) {
	self->suspend();
}

void QAudioSource_resume(QAudioSource* self) {
	self->resume();
}

void QAudioSource_setBufferSize(QAudioSource* self, ptrdiff_t bytes) {
	self->setBufferSize((qsizetype)(bytes));
}

ptrdiff_t QAudioSource_bufferSize(const QAudioSource* self) {
	qsizetype _ret = self->bufferSize();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QAudioSource_bytesAvailable(const QAudioSource* self) {
	qsizetype _ret = self->bytesAvailable();
	return static_cast<ptrdiff_t>(_ret);
}

void QAudioSource_setVolume(QAudioSource* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

double QAudioSource_volume(const QAudioSource* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

long long QAudioSource_processedUSecs(const QAudioSource* self) {
	qint64 _ret = self->processedUSecs();
	return static_cast<long long>(_ret);
}

long long QAudioSource_elapsedUSecs(const QAudioSource* self) {
	qint64 _ret = self->elapsedUSecs();
	return static_cast<long long>(_ret);
}

int QAudioSource_error(const QAudioSource* self) {
	QAudio::Error _ret = self->error();
	return static_cast<int>(_ret);
}

int QAudioSource_state(const QAudioSource* self) {
	QAudio::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QAudioSource_stateChanged(QAudioSource* self, int state) {
	self->stateChanged(static_cast<QAudio::State>(state));
}

void QAudioSource_connect_stateChanged(QAudioSource* self, intptr_t slot) {
	VirtualQAudioSource::connect(self, static_cast<void (QAudioSource::*)(QAudio::State)>(&QAudioSource::stateChanged), self, [=](QAudio::State state) {
		QAudio::State state_ret = state;
		int sigval1 = static_cast<int>(state_ret);
		miqt_exec_callback_QAudioSource_stateChanged(slot, sigval1);
	});
}

struct miqt_string QAudioSource_tr2(const char* s, const char* c) {
	QString _ret = QAudioSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioSource_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioSource_override_virtual_metaObject(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QAudioSource_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAudioSource*)(self) )->QAudioSource::metaObject();

}

bool QAudioSource_override_virtual_metacast(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QAudioSource_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAudioSource*)(self) )->QAudioSource::qt_metacast(param1);

}

bool QAudioSource_override_virtual_metacall(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QAudioSource_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAudioSource*)(self) )->QAudioSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioSource_override_virtual_event(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QAudioSource_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAudioSource*)(self) )->QAudioSource::event(event);

}

bool QAudioSource_override_virtual_eventFilter(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QAudioSource_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAudioSource*)(self) )->QAudioSource::eventFilter(watched, event);

}

bool QAudioSource_override_virtual_timerEvent(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QAudioSource_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::timerEvent(event);

}

bool QAudioSource_override_virtual_childEvent(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QAudioSource_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::childEvent(event);

}

bool QAudioSource_override_virtual_customEvent(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QAudioSource_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::customEvent(event);

}

bool QAudioSource_override_virtual_connectNotify(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QAudioSource_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::connectNotify(*signal);

}

bool QAudioSource_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QAudioSource_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::disconnectNotify(*signal);

}

const QMetaObject* QAudioSource_staticMetaObject() { return &QAudioSource::staticMetaObject; }
QObject* QAudioSource_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAudioSource_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAudioSource_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAudioSource_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAudioSource* self_cast = dynamic_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioSource_delete(QAudioSource* self) {
	delete self;
}

