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

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAudioSource final : public QAudioSource {
	struct QAudioSource_VTable* vtbl;
public:

	VirtualQAudioSource(struct QAudioSource_VTable* vtbl): QAudioSource(), vtbl(vtbl) {};
	VirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo): QAudioSource(audioDeviceInfo), vtbl(vtbl) {};
	VirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioFormat& format): QAudioSource(format), vtbl(vtbl) {};
	VirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioFormat& format, QObject* parent): QAudioSource(format, parent), vtbl(vtbl) {};
	VirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format): QAudioSource(audioDeviceInfo, format), vtbl(vtbl) {};
	VirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format, QObject* parent): QAudioSource(audioDeviceInfo, format, parent), vtbl(vtbl) {};

	virtual ~VirtualQAudioSource() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioSource::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioSource_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioSource_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioSource::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioSource_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioSource::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioSource_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioSource_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioSource_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioSource_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioSource_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioSource_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioSource_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioSource_protectedbase_sender(const void* self);
	friend int QAudioSource_protectedbase_senderSignalIndex(const void* self);
	friend int QAudioSource_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAudioSource_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAudioSource* QAudioSource_new(struct QAudioSource_VTable* vtbl) {
	return new VirtualQAudioSource(vtbl);
}

QAudioSource* QAudioSource_new2(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo) {
	return new VirtualQAudioSource(vtbl, *audioDeviceInfo);
}

QAudioSource* QAudioSource_new3(struct QAudioSource_VTable* vtbl, QAudioFormat* format) {
	return new VirtualQAudioSource(vtbl, *format);
}

QAudioSource* QAudioSource_new4(struct QAudioSource_VTable* vtbl, QAudioFormat* format, QObject* parent) {
	return new VirtualQAudioSource(vtbl, *format, parent);
}

QAudioSource* QAudioSource_new5(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format) {
	return new VirtualQAudioSource(vtbl, *audioDeviceInfo, *format);
}

QAudioSource* QAudioSource_new6(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
	return new VirtualQAudioSource(vtbl, *audioDeviceInfo, *format, parent);
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

void QAudioSource_connect_stateChanged(QAudioSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QAudio::State state) {
			QAudio::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQAudioSource::connect(self, static_cast<void (QAudioSource::*)(QAudio::State)>(&QAudioSource::stateChanged), self, local_caller{slot, callback, release});
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

QMetaObject* QAudioSource_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAudioSource*)(self) )->QAudioSource::metaObject();

}

void* QAudioSource_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAudioSource*)(self) )->QAudioSource::qt_metacast(param1);

}

int QAudioSource_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAudioSource*)(self) )->QAudioSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioSource_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAudioSource*)(self) )->QAudioSource::event(event);

}

bool QAudioSource_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAudioSource*)(self) )->QAudioSource::eventFilter(watched, event);

}

void QAudioSource_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::timerEvent(event);

}

void QAudioSource_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::childEvent(event);

}

void QAudioSource_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::customEvent(event);

}

void QAudioSource_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::connectNotify(*signal);

}

void QAudioSource_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAudioSource*)(self) )->QAudioSource::disconnectNotify(*signal);

}

const QMetaObject* QAudioSource_staticMetaObject() { return &QAudioSource::staticMetaObject; }
QObject* QAudioSource_protectedbase_sender(const void* self) {
	VirtualQAudioSource* self_cast = static_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	
	return self_cast->sender();

}

int QAudioSource_protectedbase_senderSignalIndex(const void* self) {
	VirtualQAudioSource* self_cast = static_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAudioSource_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQAudioSource* self_cast = static_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAudioSource_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQAudioSource* self_cast = static_cast<VirtualQAudioSource*>( (QAudioSource*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioSource_delete(QAudioSource* self) {
	delete self;
}

