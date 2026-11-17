#include <QAudioBuffer>
#include <QAudioDecoder>
#include <QAudioFormat>
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
#include <QUrl>
#include <qaudiodecoder.h>
#include "gen_qaudiodecoder.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAudioDecoder final : public QAudioDecoder {
	const QAudioDecoder_VTable* vtbl;
public:
	friend void* QAudioDecoder_vdata(VirtualQAudioDecoder* self);
	friend VirtualQAudioDecoder* vdata_QAudioDecoder(void* vdata);

	VirtualQAudioDecoder(const QAudioDecoder_VTable* vtbl): QAudioDecoder(), vtbl(vtbl) {}
	VirtualQAudioDecoder(const QAudioDecoder_VTable* vtbl, QObject* parent): QAudioDecoder(parent), vtbl(vtbl) {}

	virtual ~VirtualQAudioDecoder() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioDecoder::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAudioDecoder_virtualbase_metaObject(const VirtualQAudioDecoder* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioDecoder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAudioDecoder_virtualbase_metacast(VirtualQAudioDecoder* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioDecoder::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAudioDecoder_virtualbase_metacall(VirtualQAudioDecoder* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioDecoder::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAudioDecoder_virtualbase_event(VirtualQAudioDecoder* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioDecoder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAudioDecoder_virtualbase_eventFilter(VirtualQAudioDecoder* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioDecoder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAudioDecoder_virtualbase_timerEvent(VirtualQAudioDecoder* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioDecoder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAudioDecoder_virtualbase_childEvent(VirtualQAudioDecoder* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioDecoder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAudioDecoder_virtualbase_customEvent(VirtualQAudioDecoder* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioDecoder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAudioDecoder_virtualbase_connectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioDecoder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAudioDecoder_virtualbase_disconnectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioDecoder_protectedbase_sender(const VirtualQAudioDecoder* self);
	friend int QAudioDecoder_protectedbase_senderSignalIndex(const VirtualQAudioDecoder* self);
	friend int QAudioDecoder_protectedbase_receivers(const VirtualQAudioDecoder* self, const char* signal);
	friend bool QAudioDecoder_protectedbase_isSignalConnected(const VirtualQAudioDecoder* self, QMetaMethod* signal);
};

VirtualQAudioDecoder* QAudioDecoder_new(const QAudioDecoder_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioDecoder>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioDecoder(vtbl) : nullptr;
}

VirtualQAudioDecoder* QAudioDecoder_new_parent(const QAudioDecoder_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioDecoder>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioDecoder(vtbl, parent) : nullptr;
}

void QAudioDecoder_virtbase(QAudioDecoder* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioDecoder_metaObject(const QAudioDecoder* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioDecoder_metacast(QAudioDecoder* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioDecoder_metacall(QAudioDecoder* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAudioDecoder_tr_s(const char* s) {
	QString _ret = QAudioDecoder::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioDecoder_isSupported(const QAudioDecoder* self) {
	return self->isSupported();
}

bool QAudioDecoder_isDecoding(const QAudioDecoder* self) {
	return self->isDecoding();
}

QUrl* QAudioDecoder_source(const QAudioDecoder* self) {
	return new QUrl(self->source());
}

void QAudioDecoder_setSource(QAudioDecoder* self, QUrl* fileName) {
	self->setSource(*fileName);
}

QIODevice* QAudioDecoder_sourceDevice(const QAudioDecoder* self) {
	return self->sourceDevice();
}

void QAudioDecoder_setSourceDevice(QAudioDecoder* self, QIODevice* device) {
	self->setSourceDevice(device);
}

QAudioFormat* QAudioDecoder_audioFormat(const QAudioDecoder* self) {
	return new QAudioFormat(self->audioFormat());
}

void QAudioDecoder_setAudioFormat(QAudioDecoder* self, QAudioFormat* format) {
	self->setAudioFormat(*format);
}

int QAudioDecoder_error(const QAudioDecoder* self) {
	QAudioDecoder::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QAudioDecoder_errorString(const QAudioDecoder* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioBuffer* QAudioDecoder_read(const QAudioDecoder* self) {
	return new QAudioBuffer(self->read());
}

bool QAudioDecoder_bufferAvailable(const QAudioDecoder* self) {
	return self->bufferAvailable();
}

long long QAudioDecoder_position(const QAudioDecoder* self) {
	qint64 _ret = self->position();
	return static_cast<long long>(_ret);
}

long long QAudioDecoder_duration(const QAudioDecoder* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

void QAudioDecoder_start(QAudioDecoder* self) {
	self->start();
}

void QAudioDecoder_stop(QAudioDecoder* self) {
	self->stop();
}

void QAudioDecoder_bufferAvailableChanged(QAudioDecoder* self, bool param1) {
	self->bufferAvailableChanged(param1);
}

void QAudioDecoder_connect_bufferAvailableChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(bool)>(&QAudioDecoder::bufferAvailableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool param1) {
			bool sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QAudioDecoder_bufferReady(QAudioDecoder* self) {
	self->bufferReady();
}

void QAudioDecoder_connect_bufferReady(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)()>(&QAudioDecoder::bufferReady), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAudioDecoder_finished(QAudioDecoder* self) {
	self->finished();
}

void QAudioDecoder_connect_finished(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)()>(&QAudioDecoder::finished), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAudioDecoder_isDecodingChanged(QAudioDecoder* self, bool param1) {
	self->isDecodingChanged(param1);
}

void QAudioDecoder_connect_isDecodingChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(bool)>(&QAudioDecoder::isDecodingChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool param1) {
			bool sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QAudioDecoder_formatChanged(QAudioDecoder* self, QAudioFormat* format) {
	self->formatChanged(*format);
}

void QAudioDecoder_connect_formatChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, QAudioFormat*), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(const QAudioFormat&)>(&QAudioDecoder::formatChanged), self, [callback, release = seaqt::release_callback{slot,release}](const QAudioFormat& format) {
			const QAudioFormat& format_ret = format;
			// Cast returned reference into pointer
			QAudioFormat* sigval1 = const_cast<QAudioFormat*>(&format_ret);
			callback(release.slot, sigval1);
	});
}

void QAudioDecoder_error_error(QAudioDecoder* self, int error) {
	self->error(static_cast<QAudioDecoder::Error>(error));
}

void QAudioDecoder_connect_error_error(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(QAudioDecoder::Error)>(&QAudioDecoder::error), self, [callback, release = seaqt::release_callback{slot,release}](QAudioDecoder::Error error) {
			QAudioDecoder::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			callback(release.slot, sigval1);
	});
}

void QAudioDecoder_sourceChanged(QAudioDecoder* self) {
	self->sourceChanged();
}

void QAudioDecoder_connect_sourceChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)()>(&QAudioDecoder::sourceChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QAudioDecoder_positionChanged(QAudioDecoder* self, long long position) {
	self->positionChanged(static_cast<qint64>(position));
}

void QAudioDecoder_connect_positionChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(qint64)>(&QAudioDecoder::positionChanged), self, [callback, release = seaqt::release_callback{slot,release}](qint64 position) {
			qint64 position_ret = position;
			long long sigval1 = static_cast<long long>(position_ret);
			callback(release.slot, sigval1);
	});
}

void QAudioDecoder_durationChanged(QAudioDecoder* self, long long duration) {
	self->durationChanged(static_cast<qint64>(duration));
}

void QAudioDecoder_connect_durationChanged(QAudioDecoder* self, intptr_t slot, void (*callback)(intptr_t, long long), void (*release)(intptr_t)) {
	QAudioDecoder::connect(self, static_cast<void (QAudioDecoder::*)(qint64)>(&QAudioDecoder::durationChanged), self, [callback, release = seaqt::release_callback{slot,release}](qint64 duration) {
			qint64 duration_ret = duration;
			long long sigval1 = static_cast<long long>(duration_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QAudioDecoder_tr_s_c(const char* s, const char* c) {
	QString _ret = QAudioDecoder::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioDecoder_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAudioDecoder::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAudioDecoder_staticMetaObject() { return &QAudioDecoder::staticMetaObject; }
void* QAudioDecoder_vdata(VirtualQAudioDecoder* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAudioDecoder>()); }
VirtualQAudioDecoder* vdata_QAudioDecoder(void* vdata) { return reinterpret_cast<VirtualQAudioDecoder*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAudioDecoder>()); }

QMetaObject* QAudioDecoder_virtualbase_metaObject(const VirtualQAudioDecoder* self) {

	return (QMetaObject*) self->QAudioDecoder::metaObject();
}

void* QAudioDecoder_virtualbase_metacast(VirtualQAudioDecoder* self, const char* param1) {

	return self->QAudioDecoder::qt_metacast(param1);
}

int QAudioDecoder_virtualbase_metacall(VirtualQAudioDecoder* self, int param1, int param2, void** param3) {

	return self->QAudioDecoder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioDecoder_virtualbase_event(VirtualQAudioDecoder* self, QEvent* event) {

	return self->QAudioDecoder::event(event);
}

bool QAudioDecoder_virtualbase_eventFilter(VirtualQAudioDecoder* self, QObject* watched, QEvent* event) {

	return self->QAudioDecoder::eventFilter(watched, event);
}

void QAudioDecoder_virtualbase_timerEvent(VirtualQAudioDecoder* self, QTimerEvent* event) {

	self->QAudioDecoder::timerEvent(event);
}

void QAudioDecoder_virtualbase_childEvent(VirtualQAudioDecoder* self, QChildEvent* event) {

	self->QAudioDecoder::childEvent(event);
}

void QAudioDecoder_virtualbase_customEvent(VirtualQAudioDecoder* self, QEvent* event) {

	self->QAudioDecoder::customEvent(event);
}

void QAudioDecoder_virtualbase_connectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal) {

	self->QAudioDecoder::connectNotify(*signal);
}

void QAudioDecoder_virtualbase_disconnectNotify(VirtualQAudioDecoder* self, QMetaMethod* signal) {

	self->QAudioDecoder::disconnectNotify(*signal);
}

QObject* QAudioDecoder_protectedbase_sender(const VirtualQAudioDecoder* self) {
	return self->QAudioDecoder::sender();
}

int QAudioDecoder_protectedbase_senderSignalIndex(const VirtualQAudioDecoder* self) {
	return self->QAudioDecoder::senderSignalIndex();
}

int QAudioDecoder_protectedbase_receivers(const VirtualQAudioDecoder* self, const char* signal) {
	return self->QAudioDecoder::receivers(signal);
}

bool QAudioDecoder_protectedbase_isSignalConnected(const VirtualQAudioDecoder* self, QMetaMethod* signal) {
	return self->QAudioDecoder::isSignalConnected(*signal);
}

void QAudioDecoder_delete(QAudioDecoder* self) {
	delete self;
}

