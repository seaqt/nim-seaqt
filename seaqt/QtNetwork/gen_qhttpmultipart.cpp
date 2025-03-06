#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QHttpMultiPart>
#include <QHttpPart>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qhttpmultipart.h>
#include "gen_qhttpmultipart.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QHttpPart* QHttpPart_new() {
	return new QHttpPart();
}

QHttpPart* QHttpPart_new2(QHttpPart* other) {
	return new QHttpPart(*other);
}

void QHttpPart_operatorAssign(QHttpPart* self, QHttpPart* other) {
	self->operator=(*other);
}

void QHttpPart_swap(QHttpPart* self, QHttpPart* other) {
	self->swap(*other);
}

bool QHttpPart_operatorEqual(const QHttpPart* self, QHttpPart* other) {
	return (*self == *other);
}

bool QHttpPart_operatorNotEqual(const QHttpPart* self, QHttpPart* other) {
	return (*self != *other);
}

void QHttpPart_setHeader(QHttpPart* self, int header, QVariant* value) {
	self->setHeader(static_cast<QNetworkRequest::KnownHeaders>(header), *value);
}

void QHttpPart_setRawHeader(QHttpPart* self, struct miqt_string headerName, struct miqt_string headerValue) {
	QByteArray headerName_QByteArray(headerName.data, headerName.len);
	QByteArray headerValue_QByteArray(headerValue.data, headerValue.len);
	self->setRawHeader(headerName_QByteArray, headerValue_QByteArray);
}

void QHttpPart_setBody(QHttpPart* self, struct miqt_string body) {
	QByteArray body_QByteArray(body.data, body.len);
	self->setBody(body_QByteArray);
}

void QHttpPart_setBodyDevice(QHttpPart* self, QIODevice* device) {
	self->setBodyDevice(device);
}

void QHttpPart_delete(QHttpPart* self) {
	delete self;
}

class VirtualQHttpMultiPart final : public QHttpMultiPart {
	struct QHttpMultiPart_VTable* vtbl;
public:

	VirtualQHttpMultiPart(struct QHttpMultiPart_VTable* vtbl): QHttpMultiPart(), vtbl(vtbl) {};
	VirtualQHttpMultiPart(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart::ContentType contentType): QHttpMultiPart(contentType), vtbl(vtbl) {};
	VirtualQHttpMultiPart(struct QHttpMultiPart_VTable* vtbl, QObject* parent): QHttpMultiPart(parent), vtbl(vtbl) {};
	VirtualQHttpMultiPart(struct QHttpMultiPart_VTable* vtbl, QHttpMultiPart::ContentType contentType, QObject* parent): QHttpMultiPart(contentType, parent), vtbl(vtbl) {};

	virtual ~VirtualQHttpMultiPart() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHttpMultiPart::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QHttpMultiPart_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHttpMultiPart::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QHttpMultiPart_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHttpMultiPart::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QHttpMultiPart_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QHttpMultiPart::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QHttpMultiPart_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHttpMultiPart::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QHttpMultiPart_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHttpMultiPart::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QHttpMultiPart_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QHttpMultiPart::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QHttpMultiPart_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHttpMultiPart::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QHttpMultiPart_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHttpMultiPart::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QHttpMultiPart_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHttpMultiPart::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QHttpMultiPart_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QHttpMultiPart_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QHttpMultiPart_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QHttpMultiPart_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QHttpMultiPart_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QHttpMultiPart* QHttpMultiPart_new(struct QHttpMultiPart_VTable* vtbl) {
	return new VirtualQHttpMultiPart(vtbl);
}

QHttpMultiPart* QHttpMultiPart_new2(struct QHttpMultiPart_VTable* vtbl, int contentType) {
	return new VirtualQHttpMultiPart(vtbl, static_cast<QHttpMultiPart::ContentType>(contentType));
}

QHttpMultiPart* QHttpMultiPart_new3(struct QHttpMultiPart_VTable* vtbl, QObject* parent) {
	return new VirtualQHttpMultiPart(vtbl, parent);
}

QHttpMultiPart* QHttpMultiPart_new4(struct QHttpMultiPart_VTable* vtbl, int contentType, QObject* parent) {
	return new VirtualQHttpMultiPart(vtbl, static_cast<QHttpMultiPart::ContentType>(contentType), parent);
}

void QHttpMultiPart_virtbase(QHttpMultiPart* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QHttpMultiPart_metaObject(const QHttpMultiPart* self) {
	return (QMetaObject*) self->metaObject();
}

void* QHttpMultiPart_metacast(QHttpMultiPart* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QHttpMultiPart_metacall(QHttpMultiPart* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QHttpMultiPart_tr(const char* s) {
	QString _ret = QHttpMultiPart::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHttpMultiPart_trUtf8(const char* s) {
	QString _ret = QHttpMultiPart::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QHttpMultiPart_append(QHttpMultiPart* self, QHttpPart* httpPart) {
	self->append(*httpPart);
}

void QHttpMultiPart_setContentType(QHttpMultiPart* self, int contentType) {
	self->setContentType(static_cast<QHttpMultiPart::ContentType>(contentType));
}

struct miqt_string QHttpMultiPart_boundary(const QHttpMultiPart* self) {
	QByteArray _qb = self->boundary();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QHttpMultiPart_setBoundary(QHttpMultiPart* self, struct miqt_string boundary) {
	QByteArray boundary_QByteArray(boundary.data, boundary.len);
	self->setBoundary(boundary_QByteArray);
}

struct miqt_string QHttpMultiPart_tr2(const char* s, const char* c) {
	QString _ret = QHttpMultiPart::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHttpMultiPart_tr3(const char* s, const char* c, int n) {
	QString _ret = QHttpMultiPart::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHttpMultiPart_trUtf82(const char* s, const char* c) {
	QString _ret = QHttpMultiPart::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHttpMultiPart_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QHttpMultiPart::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QHttpMultiPart_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::metaObject();

}

void* QHttpMultiPart_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::qt_metacast(param1);

}

int QHttpMultiPart_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QHttpMultiPart_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::event(event);

}

bool QHttpMultiPart_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::eventFilter(watched, event);

}

void QHttpMultiPart_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::timerEvent(event);

}

void QHttpMultiPart_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::childEvent(event);

}

void QHttpMultiPart_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::customEvent(event);

}

void QHttpMultiPart_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::connectNotify(*signal);

}

void QHttpMultiPart_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQHttpMultiPart*)(self) )->QHttpMultiPart::disconnectNotify(*signal);

}

const QMetaObject* QHttpMultiPart_staticMetaObject() { return &QHttpMultiPart::staticMetaObject; }
QObject* QHttpMultiPart_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHttpMultiPart* self_cast = dynamic_cast<VirtualQHttpMultiPart*>( (QHttpMultiPart*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QHttpMultiPart_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHttpMultiPart* self_cast = dynamic_cast<VirtualQHttpMultiPart*>( (QHttpMultiPart*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QHttpMultiPart_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQHttpMultiPart* self_cast = dynamic_cast<VirtualQHttpMultiPart*>( (QHttpMultiPart*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QHttpMultiPart_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQHttpMultiPart* self_cast = dynamic_cast<VirtualQHttpMultiPart*>( (QHttpMultiPart*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QHttpMultiPart_delete(QHttpMultiPart* self) {
	delete self;
}

