#include <QAudioInput>
#include <QAudioOutput>
#include <QCamera>
#include <QChildEvent>
#include <QEvent>
#include <QImageCapture>
#include <QMediaCaptureSession>
#include <QMediaRecorder>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVideoSink>
#include <qmediacapturesession.h>
#include "gen_qmediacapturesession.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQMediaCaptureSession final : public QMediaCaptureSession {
	const QMediaCaptureSession_VTable* vtbl;
public:
	friend void* QMediaCaptureSession_vdata(VirtualQMediaCaptureSession* self);
	friend VirtualQMediaCaptureSession* vdata_QMediaCaptureSession(void* vdata);

	VirtualQMediaCaptureSession(const QMediaCaptureSession_VTable* vtbl): QMediaCaptureSession(), vtbl(vtbl) {}
	VirtualQMediaCaptureSession(const QMediaCaptureSession_VTable* vtbl, QObject* parent): QMediaCaptureSession(parent), vtbl(vtbl) {}

	virtual ~VirtualQMediaCaptureSession() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaCaptureSession::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QMediaCaptureSession_virtualbase_metaObject(const VirtualQMediaCaptureSession* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaCaptureSession::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QMediaCaptureSession_virtualbase_metacast(VirtualQMediaCaptureSession* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaCaptureSession::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QMediaCaptureSession_virtualbase_metacall(VirtualQMediaCaptureSession* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaCaptureSession::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QMediaCaptureSession_virtualbase_event(VirtualQMediaCaptureSession* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaCaptureSession::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QMediaCaptureSession_virtualbase_eventFilter(VirtualQMediaCaptureSession* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaCaptureSession::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QMediaCaptureSession_virtualbase_timerEvent(VirtualQMediaCaptureSession* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaCaptureSession::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QMediaCaptureSession_virtualbase_childEvent(VirtualQMediaCaptureSession* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaCaptureSession::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QMediaCaptureSession_virtualbase_customEvent(VirtualQMediaCaptureSession* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaCaptureSession::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QMediaCaptureSession_virtualbase_connectNotify(VirtualQMediaCaptureSession* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaCaptureSession::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QMediaCaptureSession_virtualbase_disconnectNotify(VirtualQMediaCaptureSession* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QMediaCaptureSession_protectedbase_sender(const VirtualQMediaCaptureSession* self);
	friend int QMediaCaptureSession_protectedbase_senderSignalIndex(const VirtualQMediaCaptureSession* self);
	friend int QMediaCaptureSession_protectedbase_receivers(const VirtualQMediaCaptureSession* self, const char* signal);
	friend bool QMediaCaptureSession_protectedbase_isSignalConnected(const VirtualQMediaCaptureSession* self, QMetaMethod* signal);
};

VirtualQMediaCaptureSession* QMediaCaptureSession_new(const QMediaCaptureSession_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMediaCaptureSession>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMediaCaptureSession(vtbl) : nullptr;
}

VirtualQMediaCaptureSession* QMediaCaptureSession_new_parent(const QMediaCaptureSession_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQMediaCaptureSession>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQMediaCaptureSession(vtbl, parent) : nullptr;
}

void QMediaCaptureSession_virtbase(QMediaCaptureSession* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QMediaCaptureSession_metaObject(const QMediaCaptureSession* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaCaptureSession_metacast(QMediaCaptureSession* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaCaptureSession_metacall(QMediaCaptureSession* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QMediaCaptureSession_tr_s(const char* s) {
	QString _ret = QMediaCaptureSession::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioInput* QMediaCaptureSession_audioInput(const QMediaCaptureSession* self) {
	return self->audioInput();
}

void QMediaCaptureSession_setAudioInput(QMediaCaptureSession* self, QAudioInput* input) {
	self->setAudioInput(input);
}

QCamera* QMediaCaptureSession_camera(const QMediaCaptureSession* self) {
	return self->camera();
}

void QMediaCaptureSession_setCamera(QMediaCaptureSession* self, QCamera* camera) {
	self->setCamera(camera);
}

QImageCapture* QMediaCaptureSession_imageCapture(QMediaCaptureSession* self) {
	return self->imageCapture();
}

void QMediaCaptureSession_setImageCapture(QMediaCaptureSession* self, QImageCapture* imageCapture) {
	self->setImageCapture(imageCapture);
}

QMediaRecorder* QMediaCaptureSession_recorder(QMediaCaptureSession* self) {
	return self->recorder();
}

void QMediaCaptureSession_setRecorder(QMediaCaptureSession* self, QMediaRecorder* recorder) {
	self->setRecorder(recorder);
}

void QMediaCaptureSession_setVideoOutput(QMediaCaptureSession* self, QObject* output) {
	self->setVideoOutput(output);
}

QObject* QMediaCaptureSession_videoOutput(const QMediaCaptureSession* self) {
	return self->videoOutput();
}

void QMediaCaptureSession_setVideoSink(QMediaCaptureSession* self, QVideoSink* sink) {
	self->setVideoSink(sink);
}

QVideoSink* QMediaCaptureSession_videoSink(const QMediaCaptureSession* self) {
	return self->videoSink();
}

void QMediaCaptureSession_setAudioOutput(QMediaCaptureSession* self, QAudioOutput* output) {
	self->setAudioOutput(output);
}

QAudioOutput* QMediaCaptureSession_audioOutput(const QMediaCaptureSession* self) {
	return self->audioOutput();
}

void QMediaCaptureSession_audioInputChanged(QMediaCaptureSession* self) {
	self->audioInputChanged();
}

void QMediaCaptureSession_connect_audioInputChanged(QMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::audioInputChanged), self, local_caller{slot, callback, release});
}

void QMediaCaptureSession_cameraChanged(QMediaCaptureSession* self) {
	self->cameraChanged();
}

void QMediaCaptureSession_connect_cameraChanged(QMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::cameraChanged), self, local_caller{slot, callback, release});
}

void QMediaCaptureSession_imageCaptureChanged(QMediaCaptureSession* self) {
	self->imageCaptureChanged();
}

void QMediaCaptureSession_connect_imageCaptureChanged(QMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::imageCaptureChanged), self, local_caller{slot, callback, release});
}

void QMediaCaptureSession_recorderChanged(QMediaCaptureSession* self) {
	self->recorderChanged();
}

void QMediaCaptureSession_connect_recorderChanged(QMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::recorderChanged), self, local_caller{slot, callback, release});
}

void QMediaCaptureSession_videoOutputChanged(QMediaCaptureSession* self) {
	self->videoOutputChanged();
}

void QMediaCaptureSession_connect_videoOutputChanged(QMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::videoOutputChanged), self, local_caller{slot, callback, release});
}

void QMediaCaptureSession_audioOutputChanged(QMediaCaptureSession* self) {
	self->audioOutputChanged();
}

void QMediaCaptureSession_connect_audioOutputChanged(QMediaCaptureSession* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::audioOutputChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QMediaCaptureSession_tr_s_c(const char* s, const char* c) {
	QString _ret = QMediaCaptureSession::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QMediaCaptureSession_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QMediaCaptureSession::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaCaptureSession_staticMetaObject() { return &QMediaCaptureSession::staticMetaObject; }
void* QMediaCaptureSession_vdata(VirtualQMediaCaptureSession* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQMediaCaptureSession>()); }
VirtualQMediaCaptureSession* vdata_QMediaCaptureSession(void* vdata) { return reinterpret_cast<VirtualQMediaCaptureSession*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQMediaCaptureSession>()); }

QMetaObject* QMediaCaptureSession_virtualbase_metaObject(const VirtualQMediaCaptureSession* self) {

	return (QMetaObject*) self->QMediaCaptureSession::metaObject();
}

void* QMediaCaptureSession_virtualbase_metacast(VirtualQMediaCaptureSession* self, const char* param1) {

	return self->QMediaCaptureSession::qt_metacast(param1);
}

int QMediaCaptureSession_virtualbase_metacall(VirtualQMediaCaptureSession* self, int param1, int param2, void** param3) {

	return self->QMediaCaptureSession::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QMediaCaptureSession_virtualbase_event(VirtualQMediaCaptureSession* self, QEvent* event) {

	return self->QMediaCaptureSession::event(event);
}

bool QMediaCaptureSession_virtualbase_eventFilter(VirtualQMediaCaptureSession* self, QObject* watched, QEvent* event) {

	return self->QMediaCaptureSession::eventFilter(watched, event);
}

void QMediaCaptureSession_virtualbase_timerEvent(VirtualQMediaCaptureSession* self, QTimerEvent* event) {

	self->QMediaCaptureSession::timerEvent(event);
}

void QMediaCaptureSession_virtualbase_childEvent(VirtualQMediaCaptureSession* self, QChildEvent* event) {

	self->QMediaCaptureSession::childEvent(event);
}

void QMediaCaptureSession_virtualbase_customEvent(VirtualQMediaCaptureSession* self, QEvent* event) {

	self->QMediaCaptureSession::customEvent(event);
}

void QMediaCaptureSession_virtualbase_connectNotify(VirtualQMediaCaptureSession* self, QMetaMethod* signal) {

	self->QMediaCaptureSession::connectNotify(*signal);
}

void QMediaCaptureSession_virtualbase_disconnectNotify(VirtualQMediaCaptureSession* self, QMetaMethod* signal) {

	self->QMediaCaptureSession::disconnectNotify(*signal);
}

QObject* QMediaCaptureSession_protectedbase_sender(const VirtualQMediaCaptureSession* self) {
	return self->sender();
}

int QMediaCaptureSession_protectedbase_senderSignalIndex(const VirtualQMediaCaptureSession* self) {
	return self->senderSignalIndex();
}

int QMediaCaptureSession_protectedbase_receivers(const VirtualQMediaCaptureSession* self, const char* signal) {
	return self->receivers(signal);
}

bool QMediaCaptureSession_protectedbase_isSignalConnected(const VirtualQMediaCaptureSession* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMediaCaptureSession_delete(QMediaCaptureSession* self) {
	delete self;
}

