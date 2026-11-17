#include <QChildEvent>
#include <QEvent>
#include <QMediaCaptureSession>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QScreen>
#include <QScreenCapture>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qscreencapture.h>
#include "gen_qscreencapture.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQScreenCapture final : public QScreenCapture {
	const QScreenCapture_VTable* vtbl;
public:
	friend void* QScreenCapture_vdata(VirtualQScreenCapture* self);
	friend VirtualQScreenCapture* vdata_QScreenCapture(void* vdata);

	VirtualQScreenCapture(const QScreenCapture_VTable* vtbl): QScreenCapture(), vtbl(vtbl) {}
	VirtualQScreenCapture(const QScreenCapture_VTable* vtbl, QObject* parent): QScreenCapture(parent), vtbl(vtbl) {}

	virtual ~VirtualQScreenCapture() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScreenCapture::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QScreenCapture_virtualbase_metaObject(const VirtualQScreenCapture* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScreenCapture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QScreenCapture_virtualbase_metacast(VirtualQScreenCapture* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScreenCapture::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QScreenCapture_virtualbase_metacall(VirtualQScreenCapture* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QScreenCapture::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QScreenCapture_virtualbase_event(VirtualQScreenCapture* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QScreenCapture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QScreenCapture_virtualbase_eventFilter(VirtualQScreenCapture* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QScreenCapture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QScreenCapture_virtualbase_timerEvent(VirtualQScreenCapture* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScreenCapture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QScreenCapture_virtualbase_childEvent(VirtualQScreenCapture* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScreenCapture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QScreenCapture_virtualbase_customEvent(VirtualQScreenCapture* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScreenCapture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QScreenCapture_virtualbase_connectNotify(VirtualQScreenCapture* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScreenCapture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QScreenCapture_virtualbase_disconnectNotify(VirtualQScreenCapture* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QScreenCapture_protectedbase_sender(const VirtualQScreenCapture* self);
	friend int QScreenCapture_protectedbase_senderSignalIndex(const VirtualQScreenCapture* self);
	friend int QScreenCapture_protectedbase_receivers(const VirtualQScreenCapture* self, const char* signal);
	friend bool QScreenCapture_protectedbase_isSignalConnected(const VirtualQScreenCapture* self, QMetaMethod* signal);
};

VirtualQScreenCapture* QScreenCapture_new(const QScreenCapture_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQScreenCapture>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQScreenCapture(vtbl) : nullptr;
}

VirtualQScreenCapture* QScreenCapture_new_parent(const QScreenCapture_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQScreenCapture>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQScreenCapture(vtbl, parent) : nullptr;
}

void QScreenCapture_virtbase(QScreenCapture* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QScreenCapture_metaObject(const QScreenCapture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScreenCapture_metacast(QScreenCapture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScreenCapture_metacall(QScreenCapture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QScreenCapture_tr_s(const char* s) {
	QString _ret = QScreenCapture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMediaCaptureSession* QScreenCapture_captureSession(const QScreenCapture* self) {
	return self->captureSession();
}

void QScreenCapture_setScreen(QScreenCapture* self, QScreen* screen) {
	self->setScreen(screen);
}

QScreen* QScreenCapture_screen(const QScreenCapture* self) {
	return self->screen();
}

bool QScreenCapture_isActive(const QScreenCapture* self) {
	return self->isActive();
}

int QScreenCapture_error(const QScreenCapture* self) {
	QScreenCapture::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct seaqt_string QScreenCapture_errorString(const QScreenCapture* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QScreenCapture_setActive(QScreenCapture* self, bool active) {
	self->setActive(active);
}

void QScreenCapture_start(QScreenCapture* self) {
	self->start();
}

void QScreenCapture_stop(QScreenCapture* self) {
	self->stop();
}

void QScreenCapture_activeChanged(QScreenCapture* self, bool param1) {
	self->activeChanged(param1);
}

void QScreenCapture_connect_activeChanged(QScreenCapture* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QScreenCapture::connect(self, static_cast<void (QScreenCapture::*)(bool)>(&QScreenCapture::activeChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool param1) {
			bool sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QScreenCapture_errorChanged(QScreenCapture* self) {
	self->errorChanged();
}

void QScreenCapture_connect_errorChanged(QScreenCapture* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QScreenCapture::connect(self, static_cast<void (QScreenCapture::*)()>(&QScreenCapture::errorChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QScreenCapture_screenChanged(QScreenCapture* self, QScreen* param1) {
	self->screenChanged(param1);
}

void QScreenCapture_connect_screenChanged(QScreenCapture* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) {
	QScreenCapture::connect(self, static_cast<void (QScreenCapture::*)(QScreen*)>(&QScreenCapture::screenChanged), self, [callback, release = seaqt::release_callback{slot,release}](QScreen* param1) {
			QScreen* sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QScreenCapture_errorOccurred(QScreenCapture* self, int error, struct seaqt_string errorString) {
	QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->errorOccurred(static_cast<QScreenCapture::Error>(error), errorString_QString);
}

void QScreenCapture_connect_errorOccurred(QScreenCapture* self, intptr_t slot, void (*callback)(intptr_t, int, struct seaqt_string), void (*release)(intptr_t)) {
	QScreenCapture::connect(self, static_cast<void (QScreenCapture::*)(QScreenCapture::Error, const QString&)>(&QScreenCapture::errorOccurred), self, [callback, release = seaqt::release_callback{slot,release}](QScreenCapture::Error error, const QString& errorString) {
			QScreenCapture::Error error_ret = error;
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

struct seaqt_string QScreenCapture_tr_s_c(const char* s, const char* c) {
	QString _ret = QScreenCapture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QScreenCapture_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QScreenCapture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QScreenCapture_staticMetaObject() { return &QScreenCapture::staticMetaObject; }
void* QScreenCapture_vdata(VirtualQScreenCapture* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQScreenCapture>()); }
VirtualQScreenCapture* vdata_QScreenCapture(void* vdata) { return reinterpret_cast<VirtualQScreenCapture*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQScreenCapture>()); }

QMetaObject* QScreenCapture_virtualbase_metaObject(const VirtualQScreenCapture* self) {

	return (QMetaObject*) self->QScreenCapture::metaObject();
}

void* QScreenCapture_virtualbase_metacast(VirtualQScreenCapture* self, const char* param1) {

	return self->QScreenCapture::qt_metacast(param1);
}

int QScreenCapture_virtualbase_metacall(VirtualQScreenCapture* self, int param1, int param2, void** param3) {

	return self->QScreenCapture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QScreenCapture_virtualbase_event(VirtualQScreenCapture* self, QEvent* event) {

	return self->QScreenCapture::event(event);
}

bool QScreenCapture_virtualbase_eventFilter(VirtualQScreenCapture* self, QObject* watched, QEvent* event) {

	return self->QScreenCapture::eventFilter(watched, event);
}

void QScreenCapture_virtualbase_timerEvent(VirtualQScreenCapture* self, QTimerEvent* event) {

	self->QScreenCapture::timerEvent(event);
}

void QScreenCapture_virtualbase_childEvent(VirtualQScreenCapture* self, QChildEvent* event) {

	self->QScreenCapture::childEvent(event);
}

void QScreenCapture_virtualbase_customEvent(VirtualQScreenCapture* self, QEvent* event) {

	self->QScreenCapture::customEvent(event);
}

void QScreenCapture_virtualbase_connectNotify(VirtualQScreenCapture* self, QMetaMethod* signal) {

	self->QScreenCapture::connectNotify(*signal);
}

void QScreenCapture_virtualbase_disconnectNotify(VirtualQScreenCapture* self, QMetaMethod* signal) {

	self->QScreenCapture::disconnectNotify(*signal);
}

QObject* QScreenCapture_protectedbase_sender(const VirtualQScreenCapture* self) {
	return self->QScreenCapture::sender();
}

int QScreenCapture_protectedbase_senderSignalIndex(const VirtualQScreenCapture* self) {
	return self->QScreenCapture::senderSignalIndex();
}

int QScreenCapture_protectedbase_receivers(const VirtualQScreenCapture* self, const char* signal) {
	return self->QScreenCapture::receivers(signal);
}

bool QScreenCapture_protectedbase_isSignalConnected(const VirtualQScreenCapture* self, QMetaMethod* signal) {
	return self->QScreenCapture::isSignalConnected(*signal);
}

void QScreenCapture_delete(QScreenCapture* self) {
	delete self;
}

