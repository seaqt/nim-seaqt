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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QHttpPart* QHttpPart_new() {
	return new (std::nothrow) QHttpPart();
}

QHttpPart* QHttpPart_new_from(QHttpPart* from) {
	return new (std::nothrow) QHttpPart(*from);
}

void QHttpPart_operatorAssign(QHttpPart* self, QHttpPart* from) {
	self->operator=(*from);
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

void QHttpPart_setRawHeader(QHttpPart* self, struct seaqt_string headerName, struct seaqt_string headerValue) {
	QByteArray headerName_QByteArray(headerName.data, headerName.len);
	QByteArray headerValue_QByteArray(headerValue.data, headerValue.len);
	self->setRawHeader(headerName_QByteArray, headerValue_QByteArray);
}

void QHttpPart_setBody(QHttpPart* self, struct seaqt_string body) {
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
	const QHttpMultiPart_VTable* vtbl;
public:
	friend void* QHttpMultiPart_vdata(VirtualQHttpMultiPart* self);
	friend VirtualQHttpMultiPart* vdata_QHttpMultiPart(void* vdata);

	VirtualQHttpMultiPart(const QHttpMultiPart_VTable* vtbl): QHttpMultiPart(), vtbl(vtbl) {}
	VirtualQHttpMultiPart(const QHttpMultiPart_VTable* vtbl, QHttpMultiPart::ContentType contentType): QHttpMultiPart(contentType), vtbl(vtbl) {}
	VirtualQHttpMultiPart(const QHttpMultiPart_VTable* vtbl, QObject* parent): QHttpMultiPart(parent), vtbl(vtbl) {}
	VirtualQHttpMultiPart(const QHttpMultiPart_VTable* vtbl, QHttpMultiPart::ContentType contentType, QObject* parent): QHttpMultiPart(contentType, parent), vtbl(vtbl) {}

	virtual ~VirtualQHttpMultiPart() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHttpMultiPart::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QHttpMultiPart_virtualbase_metaObject(const VirtualQHttpMultiPart* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHttpMultiPart::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QHttpMultiPart_virtualbase_metacast(VirtualQHttpMultiPart* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHttpMultiPart::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QHttpMultiPart_virtualbase_metacall(VirtualQHttpMultiPart* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QHttpMultiPart::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QHttpMultiPart_virtualbase_event(VirtualQHttpMultiPart* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHttpMultiPart::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QHttpMultiPart_virtualbase_eventFilter(VirtualQHttpMultiPart* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHttpMultiPart::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QHttpMultiPart_virtualbase_timerEvent(VirtualQHttpMultiPart* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QHttpMultiPart::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QHttpMultiPart_virtualbase_childEvent(VirtualQHttpMultiPart* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHttpMultiPart::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QHttpMultiPart_virtualbase_customEvent(VirtualQHttpMultiPart* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHttpMultiPart::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QHttpMultiPart_virtualbase_connectNotify(VirtualQHttpMultiPart* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHttpMultiPart::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QHttpMultiPart_virtualbase_disconnectNotify(VirtualQHttpMultiPart* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QHttpMultiPart_protectedbase_sender(const VirtualQHttpMultiPart* self);
	friend int QHttpMultiPart_protectedbase_senderSignalIndex(const VirtualQHttpMultiPart* self);
	friend int QHttpMultiPart_protectedbase_receivers(const VirtualQHttpMultiPart* self, const char* signal);
	friend bool QHttpMultiPart_protectedbase_isSignalConnected(const VirtualQHttpMultiPart* self, QMetaMethod* signal);
};

VirtualQHttpMultiPart* QHttpMultiPart_new(const QHttpMultiPart_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQHttpMultiPart>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQHttpMultiPart(vtbl) : nullptr;
}

VirtualQHttpMultiPart* QHttpMultiPart_new_contentType(const QHttpMultiPart_VTable* vtbl, size_t vdata, int contentType) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQHttpMultiPart>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQHttpMultiPart(vtbl, static_cast<QHttpMultiPart::ContentType>(contentType)) : nullptr;
}

VirtualQHttpMultiPart* QHttpMultiPart_new_parent(const QHttpMultiPart_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQHttpMultiPart>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQHttpMultiPart(vtbl, parent) : nullptr;
}

VirtualQHttpMultiPart* QHttpMultiPart_new_contentType_parent(const QHttpMultiPart_VTable* vtbl, size_t vdata, int contentType, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQHttpMultiPart>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQHttpMultiPart(vtbl, static_cast<QHttpMultiPart::ContentType>(contentType), parent) : nullptr;
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

struct seaqt_string QHttpMultiPart_tr_s(const char* s) {
	QString _ret = QHttpMultiPart::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

struct seaqt_string QHttpMultiPart_boundary(const QHttpMultiPart* self) {
	QByteArray _qb = self->boundary();
	struct seaqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QHttpMultiPart_setBoundary(QHttpMultiPart* self, struct seaqt_string boundary) {
	QByteArray boundary_QByteArray(boundary.data, boundary.len);
	self->setBoundary(boundary_QByteArray);
}

struct seaqt_string QHttpMultiPart_tr_s_c(const char* s, const char* c) {
	QString _ret = QHttpMultiPart::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QHttpMultiPart_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QHttpMultiPart::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QHttpMultiPart_staticMetaObject() { return &QHttpMultiPart::staticMetaObject; }
void* QHttpMultiPart_vdata(VirtualQHttpMultiPart* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQHttpMultiPart>()); }
VirtualQHttpMultiPart* vdata_QHttpMultiPart(void* vdata) { return reinterpret_cast<VirtualQHttpMultiPart*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQHttpMultiPart>()); }

QMetaObject* QHttpMultiPart_virtualbase_metaObject(const VirtualQHttpMultiPart* self) {

	return (QMetaObject*) self->QHttpMultiPart::metaObject();
}

void* QHttpMultiPart_virtualbase_metacast(VirtualQHttpMultiPart* self, const char* param1) {

	return self->QHttpMultiPart::qt_metacast(param1);
}

int QHttpMultiPart_virtualbase_metacall(VirtualQHttpMultiPart* self, int param1, int param2, void** param3) {

	return self->QHttpMultiPart::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QHttpMultiPart_virtualbase_event(VirtualQHttpMultiPart* self, QEvent* event) {

	return self->QHttpMultiPart::event(event);
}

bool QHttpMultiPart_virtualbase_eventFilter(VirtualQHttpMultiPart* self, QObject* watched, QEvent* event) {

	return self->QHttpMultiPart::eventFilter(watched, event);
}

void QHttpMultiPart_virtualbase_timerEvent(VirtualQHttpMultiPart* self, QTimerEvent* event) {

	self->QHttpMultiPart::timerEvent(event);
}

void QHttpMultiPart_virtualbase_childEvent(VirtualQHttpMultiPart* self, QChildEvent* event) {

	self->QHttpMultiPart::childEvent(event);
}

void QHttpMultiPart_virtualbase_customEvent(VirtualQHttpMultiPart* self, QEvent* event) {

	self->QHttpMultiPart::customEvent(event);
}

void QHttpMultiPart_virtualbase_connectNotify(VirtualQHttpMultiPart* self, QMetaMethod* signal) {

	self->QHttpMultiPart::connectNotify(*signal);
}

void QHttpMultiPart_virtualbase_disconnectNotify(VirtualQHttpMultiPart* self, QMetaMethod* signal) {

	self->QHttpMultiPart::disconnectNotify(*signal);
}

QObject* QHttpMultiPart_protectedbase_sender(const VirtualQHttpMultiPart* self) {
	return self->QHttpMultiPart::sender();
}

int QHttpMultiPart_protectedbase_senderSignalIndex(const VirtualQHttpMultiPart* self) {
	return self->QHttpMultiPart::senderSignalIndex();
}

int QHttpMultiPart_protectedbase_receivers(const VirtualQHttpMultiPart* self, const char* signal) {
	return self->QHttpMultiPart::receivers(signal);
}

bool QHttpMultiPart_protectedbase_isSignalConnected(const VirtualQHttpMultiPart* self, QMetaMethod* signal) {
	return self->QHttpMultiPart::isSignalConnected(*signal);
}

void QHttpMultiPart_delete(QHttpMultiPart* self) {
	delete self;
}

