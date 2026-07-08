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
#include <QVideoFrame>
#include <QVideoFrameFormat>
#include <QVideoFrameInput>
#include <qvideoframeinput.h>
#include "gen_qvideoframeinput.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQVideoFrameInput final : public QVideoFrameInput {
	const QVideoFrameInput_VTable* vtbl;
public:
	friend void* QVideoFrameInput_vdata(VirtualQVideoFrameInput* self);
	friend VirtualQVideoFrameInput* vdata_QVideoFrameInput(void* vdata);

	VirtualQVideoFrameInput(const QVideoFrameInput_VTable* vtbl): QVideoFrameInput(), vtbl(vtbl) {}
	VirtualQVideoFrameInput(const QVideoFrameInput_VTable* vtbl, const QVideoFrameFormat& format): QVideoFrameInput(format), vtbl(vtbl) {}
	VirtualQVideoFrameInput(const QVideoFrameInput_VTable* vtbl, QObject* parent): QVideoFrameInput(parent), vtbl(vtbl) {}
	VirtualQVideoFrameInput(const QVideoFrameInput_VTable* vtbl, const QVideoFrameFormat& format, QObject* parent): QVideoFrameInput(format, parent), vtbl(vtbl) {}

	virtual ~VirtualQVideoFrameInput() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVideoFrameInput::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QVideoFrameInput_virtualbase_metaObject(const VirtualQVideoFrameInput* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVideoFrameInput::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QVideoFrameInput_virtualbase_metacast(VirtualQVideoFrameInput* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVideoFrameInput::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QVideoFrameInput_virtualbase_metacall(VirtualQVideoFrameInput* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVideoFrameInput::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QVideoFrameInput_virtualbase_event(VirtualQVideoFrameInput* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVideoFrameInput::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QVideoFrameInput_virtualbase_eventFilter(VirtualQVideoFrameInput* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVideoFrameInput::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QVideoFrameInput_virtualbase_timerEvent(VirtualQVideoFrameInput* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVideoFrameInput::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QVideoFrameInput_virtualbase_childEvent(VirtualQVideoFrameInput* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVideoFrameInput::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QVideoFrameInput_virtualbase_customEvent(VirtualQVideoFrameInput* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVideoFrameInput::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QVideoFrameInput_virtualbase_connectNotify(VirtualQVideoFrameInput* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVideoFrameInput::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QVideoFrameInput_virtualbase_disconnectNotify(VirtualQVideoFrameInput* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QVideoFrameInput_protectedbase_sender(const VirtualQVideoFrameInput* self);
	friend int QVideoFrameInput_protectedbase_senderSignalIndex(const VirtualQVideoFrameInput* self);
	friend int QVideoFrameInput_protectedbase_receivers(const VirtualQVideoFrameInput* self, const char* signal);
	friend bool QVideoFrameInput_protectedbase_isSignalConnected(const VirtualQVideoFrameInput* self, QMetaMethod* signal);
};

VirtualQVideoFrameInput* QVideoFrameInput_new(const QVideoFrameInput_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQVideoFrameInput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQVideoFrameInput(vtbl) : nullptr;
}

VirtualQVideoFrameInput* QVideoFrameInput_new_format(const QVideoFrameInput_VTable* vtbl, size_t vdata, QVideoFrameFormat* format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQVideoFrameInput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQVideoFrameInput(vtbl, *format) : nullptr;
}

VirtualQVideoFrameInput* QVideoFrameInput_new_parent(const QVideoFrameInput_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQVideoFrameInput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQVideoFrameInput(vtbl, parent) : nullptr;
}

VirtualQVideoFrameInput* QVideoFrameInput_new_format_parent(const QVideoFrameInput_VTable* vtbl, size_t vdata, QVideoFrameFormat* format, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQVideoFrameInput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQVideoFrameInput(vtbl, *format, parent) : nullptr;
}

void QVideoFrameInput_virtbase(QVideoFrameInput* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QVideoFrameInput_metaObject(const QVideoFrameInput* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoFrameInput_metacast(QVideoFrameInput* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoFrameInput_metacall(QVideoFrameInput* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QVideoFrameInput_tr_s(const char* s) {
	QString _ret = QVideoFrameInput::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QVideoFrameInput_sendVideoFrame(QVideoFrameInput* self, QVideoFrame* frame) {
	return self->sendVideoFrame(*frame);
}

QVideoFrameFormat* QVideoFrameInput_format(const QVideoFrameInput* self) {
	return new QVideoFrameFormat(self->format());
}

QMediaCaptureSession* QVideoFrameInput_captureSession(const QVideoFrameInput* self) {
	return self->captureSession();
}

void QVideoFrameInput_readyToSendVideoFrame(QVideoFrameInput* self) {
	self->readyToSendVideoFrame();
}

void QVideoFrameInput_connect_readyToSendVideoFrame(QVideoFrameInput* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QVideoFrameInput::connect(self, static_cast<void (QVideoFrameInput::*)()>(&QVideoFrameInput::readyToSendVideoFrame), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QVideoFrameInput_tr_s_c(const char* s, const char* c) {
	QString _ret = QVideoFrameInput::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QVideoFrameInput_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QVideoFrameInput::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QVideoFrameInput_staticMetaObject() { return &QVideoFrameInput::staticMetaObject; }
void* QVideoFrameInput_vdata(VirtualQVideoFrameInput* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQVideoFrameInput>()); }
VirtualQVideoFrameInput* vdata_QVideoFrameInput(void* vdata) { return reinterpret_cast<VirtualQVideoFrameInput*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQVideoFrameInput>()); }

QMetaObject* QVideoFrameInput_virtualbase_metaObject(const VirtualQVideoFrameInput* self) {

	return (QMetaObject*) self->QVideoFrameInput::metaObject();
}

void* QVideoFrameInput_virtualbase_metacast(VirtualQVideoFrameInput* self, const char* param1) {

	return self->QVideoFrameInput::qt_metacast(param1);
}

int QVideoFrameInput_virtualbase_metacall(VirtualQVideoFrameInput* self, int param1, int param2, void** param3) {

	return self->QVideoFrameInput::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QVideoFrameInput_virtualbase_event(VirtualQVideoFrameInput* self, QEvent* event) {

	return self->QVideoFrameInput::event(event);
}

bool QVideoFrameInput_virtualbase_eventFilter(VirtualQVideoFrameInput* self, QObject* watched, QEvent* event) {

	return self->QVideoFrameInput::eventFilter(watched, event);
}

void QVideoFrameInput_virtualbase_timerEvent(VirtualQVideoFrameInput* self, QTimerEvent* event) {

	self->QVideoFrameInput::timerEvent(event);
}

void QVideoFrameInput_virtualbase_childEvent(VirtualQVideoFrameInput* self, QChildEvent* event) {

	self->QVideoFrameInput::childEvent(event);
}

void QVideoFrameInput_virtualbase_customEvent(VirtualQVideoFrameInput* self, QEvent* event) {

	self->QVideoFrameInput::customEvent(event);
}

void QVideoFrameInput_virtualbase_connectNotify(VirtualQVideoFrameInput* self, QMetaMethod* signal) {

	self->QVideoFrameInput::connectNotify(*signal);
}

void QVideoFrameInput_virtualbase_disconnectNotify(VirtualQVideoFrameInput* self, QMetaMethod* signal) {

	self->QVideoFrameInput::disconnectNotify(*signal);
}

QObject* QVideoFrameInput_protectedbase_sender(const VirtualQVideoFrameInput* self) {
	return self->QVideoFrameInput::sender();
}

int QVideoFrameInput_protectedbase_senderSignalIndex(const VirtualQVideoFrameInput* self) {
	return self->QVideoFrameInput::senderSignalIndex();
}

int QVideoFrameInput_protectedbase_receivers(const VirtualQVideoFrameInput* self, const char* signal) {
	return self->QVideoFrameInput::receivers(signal);
}

bool QVideoFrameInput_protectedbase_isSignalConnected(const VirtualQVideoFrameInput* self, QMetaMethod* signal) {
	return self->QVideoFrameInput::isSignalConnected(*signal);
}

void QVideoFrameInput_delete(QVideoFrameInput* self) {
	delete self;
}

