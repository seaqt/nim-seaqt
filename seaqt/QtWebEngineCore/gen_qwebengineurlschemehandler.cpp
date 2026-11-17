#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebEngineUrlRequestJob>
#include <QWebEngineUrlSchemeHandler>
#include <qwebengineurlschemehandler.h>
#include "gen_qwebengineurlschemehandler.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQWebEngineUrlSchemeHandler final : public QWebEngineUrlSchemeHandler {
	const QWebEngineUrlSchemeHandler_VTable* vtbl;
public:
	friend void* QWebEngineUrlSchemeHandler_vdata(VirtualQWebEngineUrlSchemeHandler* self);
	friend VirtualQWebEngineUrlSchemeHandler* vdata_QWebEngineUrlSchemeHandler(void* vdata);

	VirtualQWebEngineUrlSchemeHandler(const QWebEngineUrlSchemeHandler_VTable* vtbl): QWebEngineUrlSchemeHandler(), vtbl(vtbl) {}
	VirtualQWebEngineUrlSchemeHandler(const QWebEngineUrlSchemeHandler_VTable* vtbl, QObject* parent): QWebEngineUrlSchemeHandler(parent), vtbl(vtbl) {}

	virtual ~VirtualQWebEngineUrlSchemeHandler() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebEngineUrlSchemeHandler::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const VirtualQWebEngineUrlSchemeHandler* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebEngineUrlSchemeHandler::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QWebEngineUrlSchemeHandler_virtualbase_metacast(VirtualQWebEngineUrlSchemeHandler* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebEngineUrlSchemeHandler::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineUrlSchemeHandler_virtualbase_metacall(VirtualQWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3);

	virtual void requestStarted(QWebEngineUrlRequestJob* param1) override {
		if (vtbl->requestStarted == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWebEngineUrlRequestJob* sigval1 = param1;
		vtbl->requestStarted(this, sigval1);
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebEngineUrlSchemeHandler::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QWebEngineUrlSchemeHandler_virtualbase_event(VirtualQWebEngineUrlSchemeHandler* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebEngineUrlSchemeHandler::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(VirtualQWebEngineUrlSchemeHandler* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebEngineUrlSchemeHandler::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(VirtualQWebEngineUrlSchemeHandler* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebEngineUrlSchemeHandler::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_childEvent(VirtualQWebEngineUrlSchemeHandler* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebEngineUrlSchemeHandler::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_customEvent(VirtualQWebEngineUrlSchemeHandler* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebEngineUrlSchemeHandler::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebEngineUrlSchemeHandler::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWebEngineUrlSchemeHandler_protectedbase_sender(const VirtualQWebEngineUrlSchemeHandler* self);
	friend int QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(const VirtualQWebEngineUrlSchemeHandler* self);
	friend int QWebEngineUrlSchemeHandler_protectedbase_receivers(const VirtualQWebEngineUrlSchemeHandler* self, const char* signal);
	friend bool QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(const VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal);
};

VirtualQWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new(const QWebEngineUrlSchemeHandler_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebEngineUrlSchemeHandler>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebEngineUrlSchemeHandler(vtbl) : nullptr;
}

VirtualQWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new_parent(const QWebEngineUrlSchemeHandler_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWebEngineUrlSchemeHandler>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWebEngineUrlSchemeHandler(vtbl, parent) : nullptr;
}

void QWebEngineUrlSchemeHandler_virtbase(QWebEngineUrlSchemeHandler* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineUrlSchemeHandler_metaObject(const QWebEngineUrlSchemeHandler* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineUrlSchemeHandler_metacast(QWebEngineUrlSchemeHandler* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineUrlSchemeHandler_metacall(QWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWebEngineUrlSchemeHandler_tr_s(const char* s) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineUrlSchemeHandler_requestStarted(QWebEngineUrlSchemeHandler* self, QWebEngineUrlRequestJob* param1) {
	self->requestStarted(param1);
}

struct seaqt_string QWebEngineUrlSchemeHandler_tr_s_c(const char* s, const char* c) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWebEngineUrlSchemeHandler_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWebEngineUrlSchemeHandler_staticMetaObject() { return &QWebEngineUrlSchemeHandler::staticMetaObject; }
void* QWebEngineUrlSchemeHandler_vdata(VirtualQWebEngineUrlSchemeHandler* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQWebEngineUrlSchemeHandler>()); }
VirtualQWebEngineUrlSchemeHandler* vdata_QWebEngineUrlSchemeHandler(void* vdata) { return reinterpret_cast<VirtualQWebEngineUrlSchemeHandler*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQWebEngineUrlSchemeHandler>()); }

QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const VirtualQWebEngineUrlSchemeHandler* self) {

	return (QMetaObject*) self->QWebEngineUrlSchemeHandler::metaObject();
}

void* QWebEngineUrlSchemeHandler_virtualbase_metacast(VirtualQWebEngineUrlSchemeHandler* self, const char* param1) {

	return self->QWebEngineUrlSchemeHandler::qt_metacast(param1);
}

int QWebEngineUrlSchemeHandler_virtualbase_metacall(VirtualQWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3) {

	return self->QWebEngineUrlSchemeHandler::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWebEngineUrlSchemeHandler_virtualbase_event(VirtualQWebEngineUrlSchemeHandler* self, QEvent* event) {

	return self->QWebEngineUrlSchemeHandler::event(event);
}

bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(VirtualQWebEngineUrlSchemeHandler* self, QObject* watched, QEvent* event) {

	return self->QWebEngineUrlSchemeHandler::eventFilter(watched, event);
}

void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(VirtualQWebEngineUrlSchemeHandler* self, QTimerEvent* event) {

	self->QWebEngineUrlSchemeHandler::timerEvent(event);
}

void QWebEngineUrlSchemeHandler_virtualbase_childEvent(VirtualQWebEngineUrlSchemeHandler* self, QChildEvent* event) {

	self->QWebEngineUrlSchemeHandler::childEvent(event);
}

void QWebEngineUrlSchemeHandler_virtualbase_customEvent(VirtualQWebEngineUrlSchemeHandler* self, QEvent* event) {

	self->QWebEngineUrlSchemeHandler::customEvent(event);
}

void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal) {

	self->QWebEngineUrlSchemeHandler::connectNotify(*signal);
}

void QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal) {

	self->QWebEngineUrlSchemeHandler::disconnectNotify(*signal);
}

QObject* QWebEngineUrlSchemeHandler_protectedbase_sender(const VirtualQWebEngineUrlSchemeHandler* self) {
	return self->sender();
}

int QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(const VirtualQWebEngineUrlSchemeHandler* self) {
	return self->senderSignalIndex();
}

int QWebEngineUrlSchemeHandler_protectedbase_receivers(const VirtualQWebEngineUrlSchemeHandler* self, const char* signal) {
	return self->receivers(signal);
}

bool QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(const VirtualQWebEngineUrlSchemeHandler* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWebEngineUrlSchemeHandler_delete(QWebEngineUrlSchemeHandler* self) {
	delete self;
}

