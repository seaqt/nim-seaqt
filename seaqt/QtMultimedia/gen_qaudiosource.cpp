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
class VirtualQAudioSource final : public QAudioSource {
	const QAudioSource_VTable* vtbl;
	void* vdata;
public:
	friend const QAudioSource_VTable* QAudioSource_vtbl(const VirtualQAudioSource* self);
	friend void* QAudioSource_vdata(const VirtualQAudioSource* self);
	friend void QAudioSource_setVdata(VirtualQAudioSource* self, void* vdata);

	VirtualQAudioSource(const QAudioSource_VTable* vtbl, void* vdata): QAudioSource(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, void* vdata, const QAudioDevice& audioDeviceInfo): QAudioSource(audioDeviceInfo), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, void* vdata, const QAudioFormat& format): QAudioSource(format), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, void* vdata, const QAudioFormat& format, QObject* parent): QAudioSource(format, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, void* vdata, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format): QAudioSource(audioDeviceInfo, format), vtbl(vtbl), vdata(vdata) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, void* vdata, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format, QObject* parent): QAudioSource(audioDeviceInfo, format, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAudioSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioSource::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioSource_virtualbase_metaObject(const VirtualQAudioSource* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioSource_virtualbase_metacast(VirtualQAudioSource* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioSource::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioSource_virtualbase_metacall(VirtualQAudioSource* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioSource::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioSource_virtualbase_event(VirtualQAudioSource* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioSource_virtualbase_eventFilter(VirtualQAudioSource* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAudioSource_virtualbase_timerEvent(VirtualQAudioSource* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAudioSource_virtualbase_childEvent(VirtualQAudioSource* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAudioSource_virtualbase_customEvent(VirtualQAudioSource* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAudioSource_virtualbase_connectNotify(VirtualQAudioSource* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAudioSource_virtualbase_disconnectNotify(VirtualQAudioSource* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioSource_protectedbase_sender(const VirtualQAudioSource* self);
	friend int QAudioSource_protectedbase_senderSignalIndex(const VirtualQAudioSource* self);
	friend int QAudioSource_protectedbase_receivers(const VirtualQAudioSource* self, const char* signal);
	friend bool QAudioSource_protectedbase_isSignalConnected(const VirtualQAudioSource* self, QMetaMethod* signal);
};

VirtualQAudioSource* QAudioSource_new(const QAudioSource_VTable* vtbl, void* vdata) {
	return new VirtualQAudioSource(vtbl, vdata);
}

VirtualQAudioSource* QAudioSource_new2(const QAudioSource_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo) {
	return new VirtualQAudioSource(vtbl, vdata, *audioDeviceInfo);
}

VirtualQAudioSource* QAudioSource_new3(const QAudioSource_VTable* vtbl, void* vdata, QAudioFormat* format) {
	return new VirtualQAudioSource(vtbl, vdata, *format);
}

VirtualQAudioSource* QAudioSource_new4(const QAudioSource_VTable* vtbl, void* vdata, QAudioFormat* format, QObject* parent) {
	return new VirtualQAudioSource(vtbl, vdata, *format, parent);
}

VirtualQAudioSource* QAudioSource_new5(const QAudioSource_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format) {
	return new VirtualQAudioSource(vtbl, vdata, *audioDeviceInfo, *format);
}

VirtualQAudioSource* QAudioSource_new6(const QAudioSource_VTable* vtbl, void* vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
	return new VirtualQAudioSource(vtbl, vdata, *audioDeviceInfo, *format, parent);
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

void QAudioSource_connect_stateChanged(VirtualQAudioSource* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
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

QMetaObject* QAudioSource_virtualbase_metaObject(const VirtualQAudioSource* self) {

	return (QMetaObject*) self->QAudioSource::metaObject();
}

void* QAudioSource_virtualbase_metacast(VirtualQAudioSource* self, const char* param1) {

	return self->QAudioSource::qt_metacast(param1);
}

int QAudioSource_virtualbase_metacall(VirtualQAudioSource* self, int param1, int param2, void** param3) {

	return self->QAudioSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioSource_virtualbase_event(VirtualQAudioSource* self, QEvent* event) {

	return self->QAudioSource::event(event);
}

bool QAudioSource_virtualbase_eventFilter(VirtualQAudioSource* self, QObject* watched, QEvent* event) {

	return self->QAudioSource::eventFilter(watched, event);
}

void QAudioSource_virtualbase_timerEvent(VirtualQAudioSource* self, QTimerEvent* event) {

	self->QAudioSource::timerEvent(event);
}

void QAudioSource_virtualbase_childEvent(VirtualQAudioSource* self, QChildEvent* event) {

	self->QAudioSource::childEvent(event);
}

void QAudioSource_virtualbase_customEvent(VirtualQAudioSource* self, QEvent* event) {

	self->QAudioSource::customEvent(event);
}

void QAudioSource_virtualbase_connectNotify(VirtualQAudioSource* self, QMetaMethod* signal) {

	self->QAudioSource::connectNotify(*signal);
}

void QAudioSource_virtualbase_disconnectNotify(VirtualQAudioSource* self, QMetaMethod* signal) {

	self->QAudioSource::disconnectNotify(*signal);
}

const QMetaObject* QAudioSource_staticMetaObject() { return &QAudioSource::staticMetaObject; }

const QAudioSource_VTable* QAudioSource_vtbl(const VirtualQAudioSource* self) { return self->vtbl; }
void* QAudioSource_vdata(const VirtualQAudioSource* self) { return self->vdata; }
void QAudioSource_setVdata(VirtualQAudioSource* self, void* vdata) { self->vdata = vdata; }

QObject* QAudioSource_protectedbase_sender(const VirtualQAudioSource* self) {
	return self->sender();
}

int QAudioSource_protectedbase_senderSignalIndex(const VirtualQAudioSource* self) {
	return self->senderSignalIndex();
}

int QAudioSource_protectedbase_receivers(const VirtualQAudioSource* self, const char* signal) {
	return self->receivers(signal);
}

bool QAudioSource_protectedbase_isSignalConnected(const VirtualQAudioSource* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAudioSource_delete(QAudioSource* self) {
	delete self;
}

