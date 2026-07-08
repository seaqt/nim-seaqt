#include <QCapturableWindow>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaCaptureSession>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWindowCapture>
#include <qwindowcapture.h>
#include "gen_qwindowcapture.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQWindowCapture final : public QWindowCapture {
	const QWindowCapture_VTable* vtbl;
public:
	friend void* QWindowCapture_vdata(VirtualQWindowCapture* self);
	friend VirtualQWindowCapture* vdata_QWindowCapture(void* vdata);

	VirtualQWindowCapture(const QWindowCapture_VTable* vtbl): QWindowCapture(), vtbl(vtbl) {}
	VirtualQWindowCapture(const QWindowCapture_VTable* vtbl, QObject* parent): QWindowCapture(parent), vtbl(vtbl) {}

	virtual ~VirtualQWindowCapture() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWindowCapture::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QWindowCapture_virtualbase_metaObject(const VirtualQWindowCapture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWindowCapture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QWindowCapture_virtualbase_metacast(VirtualQWindowCapture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWindowCapture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QWindowCapture_virtualbase_metacall(VirtualQWindowCapture* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWindowCapture::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QWindowCapture_virtualbase_event(VirtualQWindowCapture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWindowCapture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QWindowCapture_virtualbase_eventFilter(VirtualQWindowCapture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWindowCapture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QWindowCapture_virtualbase_timerEvent(VirtualQWindowCapture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWindowCapture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QWindowCapture_virtualbase_childEvent(VirtualQWindowCapture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWindowCapture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QWindowCapture_virtualbase_customEvent(VirtualQWindowCapture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWindowCapture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QWindowCapture_virtualbase_connectNotify(VirtualQWindowCapture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWindowCapture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QWindowCapture_virtualbase_disconnectNotify(VirtualQWindowCapture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QWindowCapture_protectedbase_sender(const VirtualQWindowCapture* self);
	friend int QWindowCapture_protectedbase_senderSignalIndex(const VirtualQWindowCapture* self);
	friend int QWindowCapture_protectedbase_receivers(const VirtualQWindowCapture* self, const char* signal);
	friend bool QWindowCapture_protectedbase_isSignalConnected(const VirtualQWindowCapture* self, QMetaMethod* signal);
};

VirtualQWindowCapture* QWindowCapture_new(const QWindowCapture_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWindowCapture>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWindowCapture(vtbl) : nullptr;
}

VirtualQWindowCapture* QWindowCapture_new_parent(const QWindowCapture_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQWindowCapture>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQWindowCapture(vtbl, parent) : nullptr;
}

void QWindowCapture_virtbase(QWindowCapture* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWindowCapture_metaObject(const QWindowCapture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWindowCapture_metacast(QWindowCapture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWindowCapture_metacall(QWindowCapture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QWindowCapture_tr_s(const char* s) {
	QString _ret = QWindowCapture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_array /* of QCapturableWindow* */  QWindowCapture_capturableWindows() {
	QList<QCapturableWindow> _ret = QWindowCapture::capturableWindows();
	// Convert QList<> from C++ memory to manually-managed C memory
	QCapturableWindow** _arr = static_cast<QCapturableWindow**>(malloc(sizeof(QCapturableWindow*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QCapturableWindow(_ret[i]);
	}
	struct seaqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMediaCaptureSession* QWindowCapture_captureSession(const QWindowCapture* self) {
	return self->captureSession();
}

void QWindowCapture_setWindow(QWindowCapture* self, QCapturableWindow* window) {
	self->setWindow(*window);
}

QCapturableWindow* QWindowCapture_window(const QWindowCapture* self) {
	return new QCapturableWindow(self->window());
}

bool QWindowCapture_isActive(const QWindowCapture* self) {
	return self->isActive();
}

int QWindowCapture_error(const QWindowCapture* self) {
	QWindowCapture::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QWindowCapture_errorString(const QWindowCapture* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWindowCapture_setActive(QWindowCapture* self, bool active) {
	self->setActive(active);
}

void QWindowCapture_start(QWindowCapture* self) {
	self->start();
}

void QWindowCapture_stop(QWindowCapture* self) {
	self->stop();
}

void QWindowCapture_activeChanged(QWindowCapture* self, bool param1) {
	self->activeChanged(param1);
}

void QWindowCapture_connect_activeChanged(QWindowCapture* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QWindowCapture::connect(self, static_cast<void (QWindowCapture::*)(bool)>(&QWindowCapture::activeChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool param1) {
			bool sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QWindowCapture_windowChanged(QWindowCapture* self, QCapturableWindow* window) {
	self->windowChanged(*window);
}

void QWindowCapture_connect_windowChanged(QWindowCapture* self, intptr_t slot, void (*callback)(intptr_t, QCapturableWindow*), void (*release)(intptr_t)) {
	QWindowCapture::connect(self, static_cast<void (QWindowCapture::*)(QCapturableWindow)>(&QWindowCapture::windowChanged), self, [callback, release = seaqt::release_callback{slot,release}](QCapturableWindow window) {
			QCapturableWindow* sigval1 = new QCapturableWindow(window);
			callback(release.slot, sigval1);
	});
}

void QWindowCapture_errorChanged(QWindowCapture* self) {
	self->errorChanged();
}

void QWindowCapture_connect_errorChanged(QWindowCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QWindowCapture::connect(self, static_cast<void (QWindowCapture::*)()>(&QWindowCapture::errorChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QWindowCapture_errorOccurred(QWindowCapture* self, int error, struct seaqt_string errorString) {
	QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->errorOccurred(static_cast<QWindowCapture::Error>(error), errorString_QString);
}

void QWindowCapture_connect_errorOccurred(QWindowCapture* self, intptr_t slot, void (*callback)(intptr_t, int, struct seaqt_string), void (*release)(intptr_t)) {
	QWindowCapture::connect(self, static_cast<void (QWindowCapture::*)(QWindowCapture::Error, const QString&)>(&QWindowCapture::errorOccurred), self, [callback, release = seaqt::release_callback{slot,release}](QWindowCapture::Error error, const QString& errorString) {
			QWindowCapture::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			const QString errorString_ret = errorString;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray errorString_b = errorString_ret.toUtf8();
			struct seaqt_string errorString_ms;
			errorString_ms.len = errorString_b.length();
			errorString_ms.data = static_cast<char*>(malloc(errorString_ms.len));
			memcpy(errorString_ms.data, errorString_b.data(), errorString_ms.len);
			struct seaqt_string sigval2 = errorString_ms;
			callback(release.slot, sigval1, sigval2);
	});
}

struct seaqt_string QWindowCapture_tr_s_c(const char* s, const char* c) {
	QString _ret = QWindowCapture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QWindowCapture_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QWindowCapture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QWindowCapture_staticMetaObject() { return &QWindowCapture::staticMetaObject; }
void* QWindowCapture_vdata(VirtualQWindowCapture* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQWindowCapture>()); }
VirtualQWindowCapture* vdata_QWindowCapture(void* vdata) { return reinterpret_cast<VirtualQWindowCapture*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQWindowCapture>()); }

QMetaObject* QWindowCapture_virtualbase_metaObject(const VirtualQWindowCapture* self) {

	return (QMetaObject*) self->QWindowCapture::metaObject();
}

void* QWindowCapture_virtualbase_metacast(VirtualQWindowCapture* self, const char* param1) {

	return self->QWindowCapture::qt_metacast(param1);
}

int QWindowCapture_virtualbase_metacall(VirtualQWindowCapture* self, int param1, int param2, void** param3) {

	return self->QWindowCapture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWindowCapture_virtualbase_event(VirtualQWindowCapture* self, QEvent* event) {

	return self->QWindowCapture::event(event);
}

bool QWindowCapture_virtualbase_eventFilter(VirtualQWindowCapture* self, QObject* watched, QEvent* event) {

	return self->QWindowCapture::eventFilter(watched, event);
}

void QWindowCapture_virtualbase_timerEvent(VirtualQWindowCapture* self, QTimerEvent* event) {

	self->QWindowCapture::timerEvent(event);
}

void QWindowCapture_virtualbase_childEvent(VirtualQWindowCapture* self, QChildEvent* event) {

	self->QWindowCapture::childEvent(event);
}

void QWindowCapture_virtualbase_customEvent(VirtualQWindowCapture* self, QEvent* event) {

	self->QWindowCapture::customEvent(event);
}

void QWindowCapture_virtualbase_connectNotify(VirtualQWindowCapture* self, QMetaMethod* signal) {

	self->QWindowCapture::connectNotify(*signal);
}

void QWindowCapture_virtualbase_disconnectNotify(VirtualQWindowCapture* self, QMetaMethod* signal) {

	self->QWindowCapture::disconnectNotify(*signal);
}

QObject* QWindowCapture_protectedbase_sender(const VirtualQWindowCapture* self) {
	return self->QWindowCapture::sender();
}

int QWindowCapture_protectedbase_senderSignalIndex(const VirtualQWindowCapture* self) {
	return self->QWindowCapture::senderSignalIndex();
}

int QWindowCapture_protectedbase_receivers(const VirtualQWindowCapture* self, const char* signal) {
	return self->QWindowCapture::receivers(signal);
}

bool QWindowCapture_protectedbase_isSignalConnected(const VirtualQWindowCapture* self, QMetaMethod* signal) {
	return self->QWindowCapture::isSignalConnected(*signal);
}

void QWindowCapture_delete(QWindowCapture* self) {
	delete self;
}

