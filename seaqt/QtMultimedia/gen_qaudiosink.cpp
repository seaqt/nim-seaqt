#include <QAudioDevice>
#include <QAudioFormat>
#include <QAudioSink>
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
#include <qaudiosink.h>
#include "gen_qaudiosink.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAudioSink final : public QAudioSink {
	const QAudioSink_VTable* vtbl;
public:
	friend void* QAudioSink_vdata(VirtualQAudioSink* self);
	friend VirtualQAudioSink* vdata_QAudioSink(void* vdata);

	VirtualQAudioSink(const QAudioSink_VTable* vtbl): QAudioSink(), vtbl(vtbl) {}
	VirtualQAudioSink(const QAudioSink_VTable* vtbl, const QAudioDevice& audioDeviceInfo): QAudioSink(audioDeviceInfo), vtbl(vtbl) {}
	VirtualQAudioSink(const QAudioSink_VTable* vtbl, const QAudioFormat& format): QAudioSink(format), vtbl(vtbl) {}
	VirtualQAudioSink(const QAudioSink_VTable* vtbl, const QAudioFormat& format, QObject* parent): QAudioSink(format, parent), vtbl(vtbl) {}
	VirtualQAudioSink(const QAudioSink_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format): QAudioSink(audioDeviceInfo, format), vtbl(vtbl) {}
	VirtualQAudioSink(const QAudioSink_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format, QObject* parent): QAudioSink(audioDeviceInfo, format, parent), vtbl(vtbl) {}

	virtual ~VirtualQAudioSink() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioSink::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAudioSink_virtualbase_metaObject(const VirtualQAudioSink* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioSink::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAudioSink_virtualbase_metacast(VirtualQAudioSink* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioSink::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAudioSink_virtualbase_metacall(VirtualQAudioSink* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioSink::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAudioSink_virtualbase_event(VirtualQAudioSink* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioSink::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAudioSink_virtualbase_eventFilter(VirtualQAudioSink* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioSink::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAudioSink_virtualbase_timerEvent(VirtualQAudioSink* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioSink::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAudioSink_virtualbase_childEvent(VirtualQAudioSink* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioSink::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAudioSink_virtualbase_customEvent(VirtualQAudioSink* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioSink::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAudioSink_virtualbase_connectNotify(VirtualQAudioSink* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioSink::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAudioSink_virtualbase_disconnectNotify(VirtualQAudioSink* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioSink_protectedbase_sender(const VirtualQAudioSink* self);
	friend int QAudioSink_protectedbase_senderSignalIndex(const VirtualQAudioSink* self);
	friend int QAudioSink_protectedbase_receivers(const VirtualQAudioSink* self, const char* signal);
	friend bool QAudioSink_protectedbase_isSignalConnected(const VirtualQAudioSink* self, QMetaMethod* signal);
};

VirtualQAudioSink* QAudioSink_new(const QAudioSink_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSink>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSink(vtbl) : nullptr;
}

VirtualQAudioSink* QAudioSink_new_audioDeviceInfo(const QAudioSink_VTable* vtbl, size_t vdata, QAudioDevice* audioDeviceInfo) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSink>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSink(vtbl, *audioDeviceInfo) : nullptr;
}

VirtualQAudioSink* QAudioSink_new_format(const QAudioSink_VTable* vtbl, size_t vdata, QAudioFormat* format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSink>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSink(vtbl, *format) : nullptr;
}

VirtualQAudioSink* QAudioSink_new_format_parent(const QAudioSink_VTable* vtbl, size_t vdata, QAudioFormat* format, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSink>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSink(vtbl, *format, parent) : nullptr;
}

VirtualQAudioSink* QAudioSink_new_audioDeviceInfo_format(const QAudioSink_VTable* vtbl, size_t vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSink>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSink(vtbl, *audioDeviceInfo, *format) : nullptr;
}

VirtualQAudioSink* QAudioSink_new_audioDeviceInfo_format_parent(const QAudioSink_VTable* vtbl, size_t vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSink>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSink(vtbl, *audioDeviceInfo, *format, parent) : nullptr;
}

void QAudioSink_virtbase(QAudioSink* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioSink_metaObject(const QAudioSink* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioSink_metacast(QAudioSink* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioSink_metacall(QAudioSink* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAudioSink_tr_s(const char* s) {
	QString _ret = QAudioSink::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioSink_isNull(const QAudioSink* self) {
	return self->isNull();
}

QAudioFormat* QAudioSink_format(const QAudioSink* self) {
	return new QAudioFormat(self->format());
}

void QAudioSink_start_device(QAudioSink* self, QIODevice* device) {
	self->start(device);
}

QIODevice* QAudioSink_start(QAudioSink* self) {
	return self->start();
}

void QAudioSink_stop(QAudioSink* self) {
	self->stop();
}

void QAudioSink_reset(QAudioSink* self) {
	self->reset();
}

void QAudioSink_suspend(QAudioSink* self) {
	self->suspend();
}

void QAudioSink_resume(QAudioSink* self) {
	self->resume();
}

void QAudioSink_setBufferSize(QAudioSink* self, ptrdiff_t bytes) {
	self->setBufferSize((qsizetype)(bytes));
}

ptrdiff_t QAudioSink_bufferSize(const QAudioSink* self) {
	qsizetype _ret = self->bufferSize();
	return static_cast<ptrdiff_t>(_ret);
}

void QAudioSink_setBufferFrameCount(QAudioSink* self, ptrdiff_t framesCount) {
	self->setBufferFrameCount((qsizetype)(framesCount));
}

ptrdiff_t QAudioSink_bufferFrameCount(const QAudioSink* self) {
	qsizetype _ret = self->bufferFrameCount();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QAudioSink_bytesFree(const QAudioSink* self) {
	qsizetype _ret = self->bytesFree();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QAudioSink_framesFree(const QAudioSink* self) {
	qsizetype _ret = self->framesFree();
	return static_cast<ptrdiff_t>(_ret);
}

long long QAudioSink_processedUSecs(const QAudioSink* self) {
	qint64 _ret = self->processedUSecs();
	return static_cast<long long>(_ret);
}

long long QAudioSink_elapsedUSecs(const QAudioSink* self) {
	qint64 _ret = self->elapsedUSecs();
	return static_cast<long long>(_ret);
}

int QAudioSink_error(const QAudioSink* self) {
	QtAudio::Error _ret = self->error();
	return static_cast<int>(_ret);
}

int QAudioSink_state(const QAudioSink* self) {
	QtAudio::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QAudioSink_setVolume(QAudioSink* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

double QAudioSink_volume(const QAudioSink* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

void QAudioSink_stateChanged(QAudioSink* self, int state) {
	self->stateChanged(static_cast<QAudio::State>(state));
}

void QAudioSink_connect_stateChanged(QAudioSink* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QAudioSink::connect(self, static_cast<void (QAudioSink::*)(QAudio::State)>(&QAudioSink::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QAudio::State state) {
			QAudio::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QAudioSink_tr_s_c(const char* s, const char* c) {
	QString _ret = QAudioSink::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioSink_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAudioSink::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAudioSink_staticMetaObject() { return &QAudioSink::staticMetaObject; }
void* QAudioSink_vdata(VirtualQAudioSink* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAudioSink>()); }
VirtualQAudioSink* vdata_QAudioSink(void* vdata) { return reinterpret_cast<VirtualQAudioSink*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAudioSink>()); }

QMetaObject* QAudioSink_virtualbase_metaObject(const VirtualQAudioSink* self) {

	return (QMetaObject*) self->QAudioSink::metaObject();
}

void* QAudioSink_virtualbase_metacast(VirtualQAudioSink* self, const char* param1) {

	return self->QAudioSink::qt_metacast(param1);
}

int QAudioSink_virtualbase_metacall(VirtualQAudioSink* self, int param1, int param2, void** param3) {

	return self->QAudioSink::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioSink_virtualbase_event(VirtualQAudioSink* self, QEvent* event) {

	return self->QAudioSink::event(event);
}

bool QAudioSink_virtualbase_eventFilter(VirtualQAudioSink* self, QObject* watched, QEvent* event) {

	return self->QAudioSink::eventFilter(watched, event);
}

void QAudioSink_virtualbase_timerEvent(VirtualQAudioSink* self, QTimerEvent* event) {

	self->QAudioSink::timerEvent(event);
}

void QAudioSink_virtualbase_childEvent(VirtualQAudioSink* self, QChildEvent* event) {

	self->QAudioSink::childEvent(event);
}

void QAudioSink_virtualbase_customEvent(VirtualQAudioSink* self, QEvent* event) {

	self->QAudioSink::customEvent(event);
}

void QAudioSink_virtualbase_connectNotify(VirtualQAudioSink* self, QMetaMethod* signal) {

	self->QAudioSink::connectNotify(*signal);
}

void QAudioSink_virtualbase_disconnectNotify(VirtualQAudioSink* self, QMetaMethod* signal) {

	self->QAudioSink::disconnectNotify(*signal);
}

QObject* QAudioSink_protectedbase_sender(const VirtualQAudioSink* self) {
	return self->QAudioSink::sender();
}

int QAudioSink_protectedbase_senderSignalIndex(const VirtualQAudioSink* self) {
	return self->QAudioSink::senderSignalIndex();
}

int QAudioSink_protectedbase_receivers(const VirtualQAudioSink* self, const char* signal) {
	return self->QAudioSink::receivers(signal);
}

bool QAudioSink_protectedbase_isSignalConnected(const VirtualQAudioSink* self, QMetaMethod* signal) {
	return self->QAudioSink::isSignalConnected(*signal);
}

void QAudioSink_delete(QAudioSink* self) {
	delete self;
}

