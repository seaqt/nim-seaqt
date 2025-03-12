#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QOffscreenSurface>
#include <QScreen>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSurface>
#include <QSurfaceFormat>
#include <QTimerEvent>
#include <qoffscreensurface.h>
#include "gen_qoffscreensurface.h"
class VirtualQOffscreenSurface final : public QOffscreenSurface {
	const QOffscreenSurface_VTable* vtbl;
	void* vdata;
public:
	friend const QOffscreenSurface_VTable* QOffscreenSurface_vtbl(const VirtualQOffscreenSurface* self);
	friend void* QOffscreenSurface_vdata(const VirtualQOffscreenSurface* self);
	friend void QOffscreenSurface_setVdata(VirtualQOffscreenSurface* self, void* vdata);

	VirtualQOffscreenSurface(const QOffscreenSurface_VTable* vtbl, void* vdata): QOffscreenSurface(), vtbl(vtbl), vdata(vdata) {}
	VirtualQOffscreenSurface(const QOffscreenSurface_VTable* vtbl, void* vdata, QScreen* screen): QOffscreenSurface(screen), vtbl(vtbl), vdata(vdata) {}
	VirtualQOffscreenSurface(const QOffscreenSurface_VTable* vtbl, void* vdata, QScreen* screen, QObject* parent): QOffscreenSurface(screen, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQOffscreenSurface() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QOffscreenSurface::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QOffscreenSurface_virtualbase_metaObject(const VirtualQOffscreenSurface* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QOffscreenSurface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QOffscreenSurface_virtualbase_metacast(VirtualQOffscreenSurface* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QOffscreenSurface::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QOffscreenSurface_virtualbase_metacall(VirtualQOffscreenSurface* self, int param1, int param2, void** param3);

	virtual QSurface::SurfaceType surfaceType() const override {
		if (vtbl->surfaceType == 0) {
			return QOffscreenSurface::surfaceType();
		}


		int callback_return_value = vtbl->surfaceType(this);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	friend int QOffscreenSurface_virtualbase_surfaceType(const VirtualQOffscreenSurface* self);

	virtual QSurfaceFormat format() const override {
		if (vtbl->format == 0) {
			return QOffscreenSurface::format();
		}


		QSurfaceFormat* callback_return_value = vtbl->format(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSurfaceFormat* QOffscreenSurface_virtualbase_format(const VirtualQOffscreenSurface* self);

	virtual QSize size() const override {
		if (vtbl->size == 0) {
			return QOffscreenSurface::size();
		}


		QSize* callback_return_value = vtbl->size(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QOffscreenSurface_virtualbase_size(const VirtualQOffscreenSurface* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QOffscreenSurface::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QOffscreenSurface_virtualbase_event(VirtualQOffscreenSurface* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QOffscreenSurface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QOffscreenSurface_virtualbase_eventFilter(VirtualQOffscreenSurface* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QOffscreenSurface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QOffscreenSurface_virtualbase_timerEvent(VirtualQOffscreenSurface* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QOffscreenSurface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QOffscreenSurface_virtualbase_childEvent(VirtualQOffscreenSurface* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QOffscreenSurface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QOffscreenSurface_virtualbase_customEvent(VirtualQOffscreenSurface* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QOffscreenSurface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QOffscreenSurface_virtualbase_connectNotify(VirtualQOffscreenSurface* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QOffscreenSurface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QOffscreenSurface_virtualbase_disconnectNotify(VirtualQOffscreenSurface* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void* QOffscreenSurface_protectedbase_resolveInterface(const VirtualQOffscreenSurface* self, const char* name, int revision);
	friend QObject* QOffscreenSurface_protectedbase_sender(const VirtualQOffscreenSurface* self);
	friend int QOffscreenSurface_protectedbase_senderSignalIndex(const VirtualQOffscreenSurface* self);
	friend int QOffscreenSurface_protectedbase_receivers(const VirtualQOffscreenSurface* self, const char* signal);
	friend bool QOffscreenSurface_protectedbase_isSignalConnected(const VirtualQOffscreenSurface* self, QMetaMethod* signal);
};

VirtualQOffscreenSurface* QOffscreenSurface_new(const QOffscreenSurface_VTable* vtbl, void* vdata) {
	return new VirtualQOffscreenSurface(vtbl, vdata);
}

VirtualQOffscreenSurface* QOffscreenSurface_new2(const QOffscreenSurface_VTable* vtbl, void* vdata, QScreen* screen) {
	return new VirtualQOffscreenSurface(vtbl, vdata, screen);
}

VirtualQOffscreenSurface* QOffscreenSurface_new3(const QOffscreenSurface_VTable* vtbl, void* vdata, QScreen* screen, QObject* parent) {
	return new VirtualQOffscreenSurface(vtbl, vdata, screen, parent);
}

void QOffscreenSurface_virtbase(QOffscreenSurface* src, QObject** outptr_QObject, QSurface** outptr_QSurface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QSurface = static_cast<QSurface*>(src);
}

QMetaObject* QOffscreenSurface_metaObject(const QOffscreenSurface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QOffscreenSurface_metacast(QOffscreenSurface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QOffscreenSurface_metacall(QOffscreenSurface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QOffscreenSurface_tr(const char* s) {
	QString _ret = QOffscreenSurface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QOffscreenSurface_surfaceType(const QOffscreenSurface* self) {
	QSurface::SurfaceType _ret = self->surfaceType();
	return static_cast<int>(_ret);
}

void QOffscreenSurface_create(QOffscreenSurface* self) {
	self->create();
}

void QOffscreenSurface_destroy(QOffscreenSurface* self) {
	self->destroy();
}

bool QOffscreenSurface_isValid(const QOffscreenSurface* self) {
	return self->isValid();
}

void QOffscreenSurface_setFormat(QOffscreenSurface* self, QSurfaceFormat* format) {
	self->setFormat(*format);
}

QSurfaceFormat* QOffscreenSurface_format(const QOffscreenSurface* self) {
	return new QSurfaceFormat(self->format());
}

QSurfaceFormat* QOffscreenSurface_requestedFormat(const QOffscreenSurface* self) {
	return new QSurfaceFormat(self->requestedFormat());
}

QSize* QOffscreenSurface_size(const QOffscreenSurface* self) {
	return new QSize(self->size());
}

QScreen* QOffscreenSurface_screen(const QOffscreenSurface* self) {
	return self->screen();
}

void QOffscreenSurface_setScreen(QOffscreenSurface* self, QScreen* screen) {
	self->setScreen(screen);
}

void QOffscreenSurface_screenChanged(QOffscreenSurface* self, QScreen* screen) {
	self->screenChanged(screen);
}

void QOffscreenSurface_connect_screenChanged(VirtualQOffscreenSurface* self, intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QScreen*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QScreen*);
		void operator()(QScreen* screen) {
			QScreen* sigval1 = screen;
			callback(slot, sigval1);
		}
	};
	VirtualQOffscreenSurface::connect(self, static_cast<void (QOffscreenSurface::*)(QScreen*)>(&QOffscreenSurface::screenChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QOffscreenSurface_tr2(const char* s, const char* c) {
	QString _ret = QOffscreenSurface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QOffscreenSurface_tr3(const char* s, const char* c, int n) {
	QString _ret = QOffscreenSurface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QOffscreenSurface_virtualbase_metaObject(const VirtualQOffscreenSurface* self) {

	return (QMetaObject*) self->QOffscreenSurface::metaObject();
}

void* QOffscreenSurface_virtualbase_metacast(VirtualQOffscreenSurface* self, const char* param1) {

	return self->QOffscreenSurface::qt_metacast(param1);
}

int QOffscreenSurface_virtualbase_metacall(VirtualQOffscreenSurface* self, int param1, int param2, void** param3) {

	return self->QOffscreenSurface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QOffscreenSurface_virtualbase_surfaceType(const VirtualQOffscreenSurface* self) {

	VirtualQOffscreenSurface::SurfaceType _ret = self->QOffscreenSurface::surfaceType();
	return static_cast<int>(_ret);
}

QSurfaceFormat* QOffscreenSurface_virtualbase_format(const VirtualQOffscreenSurface* self) {

	return new QSurfaceFormat(self->QOffscreenSurface::format());
}

QSize* QOffscreenSurface_virtualbase_size(const VirtualQOffscreenSurface* self) {

	return new QSize(self->QOffscreenSurface::size());
}

bool QOffscreenSurface_virtualbase_event(VirtualQOffscreenSurface* self, QEvent* event) {

	return self->QOffscreenSurface::event(event);
}

bool QOffscreenSurface_virtualbase_eventFilter(VirtualQOffscreenSurface* self, QObject* watched, QEvent* event) {

	return self->QOffscreenSurface::eventFilter(watched, event);
}

void QOffscreenSurface_virtualbase_timerEvent(VirtualQOffscreenSurface* self, QTimerEvent* event) {

	self->QOffscreenSurface::timerEvent(event);
}

void QOffscreenSurface_virtualbase_childEvent(VirtualQOffscreenSurface* self, QChildEvent* event) {

	self->QOffscreenSurface::childEvent(event);
}

void QOffscreenSurface_virtualbase_customEvent(VirtualQOffscreenSurface* self, QEvent* event) {

	self->QOffscreenSurface::customEvent(event);
}

void QOffscreenSurface_virtualbase_connectNotify(VirtualQOffscreenSurface* self, QMetaMethod* signal) {

	self->QOffscreenSurface::connectNotify(*signal);
}

void QOffscreenSurface_virtualbase_disconnectNotify(VirtualQOffscreenSurface* self, QMetaMethod* signal) {

	self->QOffscreenSurface::disconnectNotify(*signal);
}

const QMetaObject* QOffscreenSurface_staticMetaObject() { return &QOffscreenSurface::staticMetaObject; }

const QOffscreenSurface_VTable* QOffscreenSurface_vtbl(const VirtualQOffscreenSurface* self) { return self->vtbl; }
void* QOffscreenSurface_vdata(const VirtualQOffscreenSurface* self) { return self->vdata; }
void QOffscreenSurface_setVdata(VirtualQOffscreenSurface* self, void* vdata) { self->vdata = vdata; }

void* QOffscreenSurface_protectedbase_resolveInterface(const VirtualQOffscreenSurface* self, const char* name, int revision) {
	return self->resolveInterface(name, static_cast<int>(revision));
}

QObject* QOffscreenSurface_protectedbase_sender(const VirtualQOffscreenSurface* self) {
	return self->sender();
}

int QOffscreenSurface_protectedbase_senderSignalIndex(const VirtualQOffscreenSurface* self) {
	return self->senderSignalIndex();
}

int QOffscreenSurface_protectedbase_receivers(const VirtualQOffscreenSurface* self, const char* signal) {
	return self->receivers(signal);
}

bool QOffscreenSurface_protectedbase_isSignalConnected(const VirtualQOffscreenSurface* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QOffscreenSurface_delete(QOffscreenSurface* self) {
	delete self;
}

