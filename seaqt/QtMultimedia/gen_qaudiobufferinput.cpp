#include <QAudioBuffer>
#include <QAudioBufferInput>
#include <QAudioFormat>
#include <QChildEvent>
#include <QEvent>
#include <QMediaCaptureSession>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudiobufferinput.h>
#include "gen_qaudiobufferinput.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAudioBufferInput final : public QAudioBufferInput {
	const QAudioBufferInput_VTable* vtbl;
public:
	friend void* QAudioBufferInput_vdata(VirtualQAudioBufferInput* self);
	friend VirtualQAudioBufferInput* vdata_QAudioBufferInput(void* vdata);

	VirtualQAudioBufferInput(const QAudioBufferInput_VTable* vtbl): QAudioBufferInput(), vtbl(vtbl) {}
	VirtualQAudioBufferInput(const QAudioBufferInput_VTable* vtbl, const QAudioFormat& format): QAudioBufferInput(format), vtbl(vtbl) {}
	VirtualQAudioBufferInput(const QAudioBufferInput_VTable* vtbl, QObject* parent): QAudioBufferInput(parent), vtbl(vtbl) {}
	VirtualQAudioBufferInput(const QAudioBufferInput_VTable* vtbl, const QAudioFormat& format, QObject* parent): QAudioBufferInput(format, parent), vtbl(vtbl) {}

	virtual ~VirtualQAudioBufferInput() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioBufferInput::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAudioBufferInput_virtualbase_metaObject(const VirtualQAudioBufferInput* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioBufferInput::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAudioBufferInput_virtualbase_metacast(VirtualQAudioBufferInput* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioBufferInput::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAudioBufferInput_virtualbase_metacall(VirtualQAudioBufferInput* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioBufferInput::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAudioBufferInput_virtualbase_event(VirtualQAudioBufferInput* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioBufferInput::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAudioBufferInput_virtualbase_eventFilter(VirtualQAudioBufferInput* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioBufferInput::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAudioBufferInput_virtualbase_timerEvent(VirtualQAudioBufferInput* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioBufferInput::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAudioBufferInput_virtualbase_childEvent(VirtualQAudioBufferInput* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioBufferInput::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAudioBufferInput_virtualbase_customEvent(VirtualQAudioBufferInput* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioBufferInput::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAudioBufferInput_virtualbase_connectNotify(VirtualQAudioBufferInput* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioBufferInput::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAudioBufferInput_virtualbase_disconnectNotify(VirtualQAudioBufferInput* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioBufferInput_protectedbase_sender(const VirtualQAudioBufferInput* self);
	friend int QAudioBufferInput_protectedbase_senderSignalIndex(const VirtualQAudioBufferInput* self);
	friend int QAudioBufferInput_protectedbase_receivers(const VirtualQAudioBufferInput* self, const char* signal);
	friend bool QAudioBufferInput_protectedbase_isSignalConnected(const VirtualQAudioBufferInput* self, QMetaMethod* signal);
};

VirtualQAudioBufferInput* QAudioBufferInput_new(const QAudioBufferInput_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioBufferInput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioBufferInput(vtbl) : nullptr;
}

VirtualQAudioBufferInput* QAudioBufferInput_new_format(const QAudioBufferInput_VTable* vtbl, size_t vdata, QAudioFormat* format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioBufferInput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioBufferInput(vtbl, *format) : nullptr;
}

VirtualQAudioBufferInput* QAudioBufferInput_new_parent(const QAudioBufferInput_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioBufferInput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioBufferInput(vtbl, parent) : nullptr;
}

VirtualQAudioBufferInput* QAudioBufferInput_new_format_parent(const QAudioBufferInput_VTable* vtbl, size_t vdata, QAudioFormat* format, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioBufferInput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioBufferInput(vtbl, *format, parent) : nullptr;
}

void QAudioBufferInput_virtbase(QAudioBufferInput* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioBufferInput_metaObject(const QAudioBufferInput* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioBufferInput_metacast(QAudioBufferInput* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioBufferInput_metacall(QAudioBufferInput* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAudioBufferInput_tr_s(const char* s) {
	QString _ret = QAudioBufferInput::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioBufferInput_sendAudioBuffer(QAudioBufferInput* self, QAudioBuffer* audioBuffer) {
	return self->sendAudioBuffer(*audioBuffer);
}

QAudioFormat* QAudioBufferInput_format(const QAudioBufferInput* self) {
	return new QAudioFormat(self->format());
}

QMediaCaptureSession* QAudioBufferInput_captureSession(const QAudioBufferInput* self) {
	return self->captureSession();
}

void QAudioBufferInput_readyToSendAudioBuffer(QAudioBufferInput* self) {
	self->readyToSendAudioBuffer();
}

void QAudioBufferInput_connect_readyToSendAudioBuffer(QAudioBufferInput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAudioBufferInput::connect(self, static_cast<void (QAudioBufferInput::*)()>(&QAudioBufferInput::readyToSendAudioBuffer), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QAudioBufferInput_tr_s_c(const char* s, const char* c) {
	QString _ret = QAudioBufferInput::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioBufferInput_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAudioBufferInput::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAudioBufferInput_staticMetaObject() { return &QAudioBufferInput::staticMetaObject; }
void* QAudioBufferInput_vdata(VirtualQAudioBufferInput* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAudioBufferInput>()); }
VirtualQAudioBufferInput* vdata_QAudioBufferInput(void* vdata) { return reinterpret_cast<VirtualQAudioBufferInput*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAudioBufferInput>()); }

QMetaObject* QAudioBufferInput_virtualbase_metaObject(const VirtualQAudioBufferInput* self) {

	return (QMetaObject*) self->QAudioBufferInput::metaObject();
}

void* QAudioBufferInput_virtualbase_metacast(VirtualQAudioBufferInput* self, const char* param1) {

	return self->QAudioBufferInput::qt_metacast(param1);
}

int QAudioBufferInput_virtualbase_metacall(VirtualQAudioBufferInput* self, int param1, int param2, void** param3) {

	return self->QAudioBufferInput::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioBufferInput_virtualbase_event(VirtualQAudioBufferInput* self, QEvent* event) {

	return self->QAudioBufferInput::event(event);
}

bool QAudioBufferInput_virtualbase_eventFilter(VirtualQAudioBufferInput* self, QObject* watched, QEvent* event) {

	return self->QAudioBufferInput::eventFilter(watched, event);
}

void QAudioBufferInput_virtualbase_timerEvent(VirtualQAudioBufferInput* self, QTimerEvent* event) {

	self->QAudioBufferInput::timerEvent(event);
}

void QAudioBufferInput_virtualbase_childEvent(VirtualQAudioBufferInput* self, QChildEvent* event) {

	self->QAudioBufferInput::childEvent(event);
}

void QAudioBufferInput_virtualbase_customEvent(VirtualQAudioBufferInput* self, QEvent* event) {

	self->QAudioBufferInput::customEvent(event);
}

void QAudioBufferInput_virtualbase_connectNotify(VirtualQAudioBufferInput* self, QMetaMethod* signal) {

	self->QAudioBufferInput::connectNotify(*signal);
}

void QAudioBufferInput_virtualbase_disconnectNotify(VirtualQAudioBufferInput* self, QMetaMethod* signal) {

	self->QAudioBufferInput::disconnectNotify(*signal);
}

QObject* QAudioBufferInput_protectedbase_sender(const VirtualQAudioBufferInput* self) {
	return self->QAudioBufferInput::sender();
}

int QAudioBufferInput_protectedbase_senderSignalIndex(const VirtualQAudioBufferInput* self) {
	return self->QAudioBufferInput::senderSignalIndex();
}

int QAudioBufferInput_protectedbase_receivers(const VirtualQAudioBufferInput* self, const char* signal) {
	return self->QAudioBufferInput::receivers(signal);
}

bool QAudioBufferInput_protectedbase_isSignalConnected(const VirtualQAudioBufferInput* self, QMetaMethod* signal) {
	return self->QAudioBufferInput::isSignalConnected(*signal);
}

void QAudioBufferInput_delete(QAudioBufferInput* self) {
	delete self;
}

