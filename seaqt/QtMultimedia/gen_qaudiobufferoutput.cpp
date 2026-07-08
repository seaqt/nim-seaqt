#include <QAudioBuffer>
#include <QAudioBufferOutput>
#include <QAudioFormat>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudiobufferoutput.h>
#include "gen_qaudiobufferoutput.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAudioBufferOutput final : public QAudioBufferOutput {
	const QAudioBufferOutput_VTable* vtbl;
public:
	friend void* QAudioBufferOutput_vdata(VirtualQAudioBufferOutput* self);
	friend VirtualQAudioBufferOutput* vdata_QAudioBufferOutput(void* vdata);

	VirtualQAudioBufferOutput(const QAudioBufferOutput_VTable* vtbl): QAudioBufferOutput(), vtbl(vtbl) {}
	VirtualQAudioBufferOutput(const QAudioBufferOutput_VTable* vtbl, const QAudioFormat& format): QAudioBufferOutput(format), vtbl(vtbl) {}
	VirtualQAudioBufferOutput(const QAudioBufferOutput_VTable* vtbl, QObject* parent): QAudioBufferOutput(parent), vtbl(vtbl) {}
	VirtualQAudioBufferOutput(const QAudioBufferOutput_VTable* vtbl, const QAudioFormat& format, QObject* parent): QAudioBufferOutput(format, parent), vtbl(vtbl) {}

	virtual ~VirtualQAudioBufferOutput() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioBufferOutput::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAudioBufferOutput_virtualbase_metaObject(const VirtualQAudioBufferOutput* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioBufferOutput::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAudioBufferOutput_virtualbase_metacast(VirtualQAudioBufferOutput* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioBufferOutput::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAudioBufferOutput_virtualbase_metacall(VirtualQAudioBufferOutput* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioBufferOutput::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAudioBufferOutput_virtualbase_event(VirtualQAudioBufferOutput* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioBufferOutput::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAudioBufferOutput_virtualbase_eventFilter(VirtualQAudioBufferOutput* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioBufferOutput::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAudioBufferOutput_virtualbase_timerEvent(VirtualQAudioBufferOutput* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioBufferOutput::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAudioBufferOutput_virtualbase_childEvent(VirtualQAudioBufferOutput* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioBufferOutput::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAudioBufferOutput_virtualbase_customEvent(VirtualQAudioBufferOutput* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioBufferOutput::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAudioBufferOutput_virtualbase_connectNotify(VirtualQAudioBufferOutput* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioBufferOutput::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAudioBufferOutput_virtualbase_disconnectNotify(VirtualQAudioBufferOutput* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioBufferOutput_protectedbase_sender(const VirtualQAudioBufferOutput* self);
	friend int QAudioBufferOutput_protectedbase_senderSignalIndex(const VirtualQAudioBufferOutput* self);
	friend int QAudioBufferOutput_protectedbase_receivers(const VirtualQAudioBufferOutput* self, const char* signal);
	friend bool QAudioBufferOutput_protectedbase_isSignalConnected(const VirtualQAudioBufferOutput* self, QMetaMethod* signal);
};

VirtualQAudioBufferOutput* QAudioBufferOutput_new(const QAudioBufferOutput_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioBufferOutput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioBufferOutput(vtbl) : nullptr;
}

VirtualQAudioBufferOutput* QAudioBufferOutput_new_format(const QAudioBufferOutput_VTable* vtbl, size_t vdata, QAudioFormat* format) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioBufferOutput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioBufferOutput(vtbl, *format) : nullptr;
}

VirtualQAudioBufferOutput* QAudioBufferOutput_new_parent(const QAudioBufferOutput_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioBufferOutput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioBufferOutput(vtbl, parent) : nullptr;
}

VirtualQAudioBufferOutput* QAudioBufferOutput_new_format_parent(const QAudioBufferOutput_VTable* vtbl, size_t vdata, QAudioFormat* format, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAudioBufferOutput>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAudioBufferOutput(vtbl, *format, parent) : nullptr;
}

void QAudioBufferOutput_virtbase(QAudioBufferOutput* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioBufferOutput_metaObject(const QAudioBufferOutput* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioBufferOutput_metacast(QAudioBufferOutput* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioBufferOutput_metacall(QAudioBufferOutput* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAudioBufferOutput_tr_s(const char* s) {
	QString _ret = QAudioBufferOutput::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioFormat* QAudioBufferOutput_format(const QAudioBufferOutput* self) {
	return new QAudioFormat(self->format());
}

void QAudioBufferOutput_audioBufferReceived(QAudioBufferOutput* self, QAudioBuffer* buffer) {
	self->audioBufferReceived(*buffer);
}

void QAudioBufferOutput_connect_audioBufferReceived(QAudioBufferOutput* self, intptr_t slot, void (*callback)(intptr_t, QAudioBuffer*), void (*release)(intptr_t)) {
	QAudioBufferOutput::connect(self, static_cast<void (QAudioBufferOutput::*)(const QAudioBuffer&)>(&QAudioBufferOutput::audioBufferReceived), self, [callback, release = seaqt::release_callback{slot,release}](const QAudioBuffer& buffer) {
			const QAudioBuffer& buffer_ret = buffer;
			// Cast returned reference into pointer
			QAudioBuffer* sigval1 = const_cast<QAudioBuffer*>(&buffer_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QAudioBufferOutput_tr_s_c(const char* s, const char* c) {
	QString _ret = QAudioBufferOutput::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAudioBufferOutput_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAudioBufferOutput::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAudioBufferOutput_staticMetaObject() { return &QAudioBufferOutput::staticMetaObject; }
void* QAudioBufferOutput_vdata(VirtualQAudioBufferOutput* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAudioBufferOutput>()); }
VirtualQAudioBufferOutput* vdata_QAudioBufferOutput(void* vdata) { return reinterpret_cast<VirtualQAudioBufferOutput*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAudioBufferOutput>()); }

QMetaObject* QAudioBufferOutput_virtualbase_metaObject(const VirtualQAudioBufferOutput* self) {

	return (QMetaObject*) self->QAudioBufferOutput::metaObject();
}

void* QAudioBufferOutput_virtualbase_metacast(VirtualQAudioBufferOutput* self, const char* param1) {

	return self->QAudioBufferOutput::qt_metacast(param1);
}

int QAudioBufferOutput_virtualbase_metacall(VirtualQAudioBufferOutput* self, int param1, int param2, void** param3) {

	return self->QAudioBufferOutput::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAudioBufferOutput_virtualbase_event(VirtualQAudioBufferOutput* self, QEvent* event) {

	return self->QAudioBufferOutput::event(event);
}

bool QAudioBufferOutput_virtualbase_eventFilter(VirtualQAudioBufferOutput* self, QObject* watched, QEvent* event) {

	return self->QAudioBufferOutput::eventFilter(watched, event);
}

void QAudioBufferOutput_virtualbase_timerEvent(VirtualQAudioBufferOutput* self, QTimerEvent* event) {

	self->QAudioBufferOutput::timerEvent(event);
}

void QAudioBufferOutput_virtualbase_childEvent(VirtualQAudioBufferOutput* self, QChildEvent* event) {

	self->QAudioBufferOutput::childEvent(event);
}

void QAudioBufferOutput_virtualbase_customEvent(VirtualQAudioBufferOutput* self, QEvent* event) {

	self->QAudioBufferOutput::customEvent(event);
}

void QAudioBufferOutput_virtualbase_connectNotify(VirtualQAudioBufferOutput* self, QMetaMethod* signal) {

	self->QAudioBufferOutput::connectNotify(*signal);
}

void QAudioBufferOutput_virtualbase_disconnectNotify(VirtualQAudioBufferOutput* self, QMetaMethod* signal) {

	self->QAudioBufferOutput::disconnectNotify(*signal);
}

QObject* QAudioBufferOutput_protectedbase_sender(const VirtualQAudioBufferOutput* self) {
	return self->QAudioBufferOutput::sender();
}

int QAudioBufferOutput_protectedbase_senderSignalIndex(const VirtualQAudioBufferOutput* self) {
	return self->QAudioBufferOutput::senderSignalIndex();
}

int QAudioBufferOutput_protectedbase_receivers(const VirtualQAudioBufferOutput* self, const char* signal) {
	return self->QAudioBufferOutput::receivers(signal);
}

bool QAudioBufferOutput_protectedbase_isSignalConnected(const VirtualQAudioBufferOutput* self, QMetaMethod* signal) {
	return self->QAudioBufferOutput::isSignalConnected(*signal);
}

void QAudioBufferOutput_delete(QAudioBufferOutput* self) {
	delete self;
}

