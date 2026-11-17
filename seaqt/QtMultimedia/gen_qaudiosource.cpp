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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAudioSource final : public QAudioSource {
	const QAudioSource_VTable* vtbl;
public:
	friend void* QAudioSource_vdata(VirtualQAudioSource* self);
	friend VirtualQAudioSource* vdata_QAudioSource(void* vdata);

	VirtualQAudioSource(const QAudioSource_VTable* vtbl): QAudioSource(), vtbl(vtbl) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo): QAudioSource(audioDeviceInfo), vtbl(vtbl) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, const QAudioFormat& format): QAudioSource(format), vtbl(vtbl) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, const QAudioFormat& format, QObject* parent): QAudioSource(format, parent), vtbl(vtbl) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format): QAudioSource(audioDeviceInfo, format), vtbl(vtbl) {}
	VirtualQAudioSource(const QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format, QObject* parent): QAudioSource(audioDeviceInfo, format, parent), vtbl(vtbl) {}

	virtual ~VirtualQAudioSource() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
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

VirtualQAudioSource* QAudioSource_new(const QAudioSource_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSource(vtbl) : nullptr;
}

VirtualQAudioSource* QAudioSource_new_audioDeviceInfo(const QAudioSource_VTable* vtbl, size_t vdata, QAudioDevice* audioDeviceInfo) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSource(vtbl, *audioDeviceInfo) : nullptr;
}

VirtualQAudioSource* QAudioSource_new_format(const QAudioSource_VTable* vtbl, size_t vdata, QAudioFormat* format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSource(vtbl, *format) : nullptr;
}

VirtualQAudioSource* QAudioSource_new_format_parent(const QAudioSource_VTable* vtbl, size_t vdata, QAudioFormat* format, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSource(vtbl, *format, parent) : nullptr;
}

VirtualQAudioSource* QAudioSource_new_audioDeviceInfo_format(const QAudioSource_VTable* vtbl, size_t vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSource(vtbl, *audioDeviceInfo, *format) : nullptr;
}

VirtualQAudioSource* QAudioSource_new_audioDeviceInfo_format_parent(const QAudioSource_VTable* vtbl, size_t vdata, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioSource>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioSource(vtbl, *audioDeviceInfo, *format, parent) : nullptr;
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

struct seaqt_string QAudioSource_tr_s(const char* s) {
	QString _ret = QAudioSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

void QAudioSource_start_device(QAudioSource* self, QIODevice* device) {
	self->start(device);
}

QIODevice* QAudioSource_start(QAudioSource* self) {
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
	QAudioSource::connect(self, static_cast<void (QAudioSource::*)(QAudio::State)>(&QAudioSource::stateChanged), self, [callback, release = seaqt::release_callback{slot,release}](QAudio::State state) {
			QAudio::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QAudioSource_tr_s_c(const char* s, const char* c) {
	QString _ret = QAudioSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioSource_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAudioSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAudioSource_staticMetaObject() { return &QAudioSource::staticMetaObject; }
void* QAudioSource_vdata(VirtualQAudioSource* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAudioSource>()); }
VirtualQAudioSource* vdata_QAudioSource(void* vdata) { return reinterpret_cast<VirtualQAudioSource*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAudioSource>()); }

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

