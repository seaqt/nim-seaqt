#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPdfDocument>
#include <QPdfDocumentRenderOptions>
#include <QPdfSelection>
#include <QPointF>
#include <QSize>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qpdfdocument.h>
#include "gen_qpdfdocument.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfDocument final : public QPdfDocument {
	const QPdfDocument_VTable* vtbl;
public:
	friend void* QPdfDocument_vdata(VirtualQPdfDocument* self);
	friend VirtualQPdfDocument* vdata_QPdfDocument(void* vdata);

	VirtualQPdfDocument(const QPdfDocument_VTable* vtbl): QPdfDocument(), vtbl(vtbl) {}
	VirtualQPdfDocument(const QPdfDocument_VTable* vtbl, QObject* parent): QPdfDocument(parent), vtbl(vtbl) {}

	virtual ~VirtualQPdfDocument() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfDocument::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfDocument_virtualbase_metaObject(const VirtualQPdfDocument* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfDocument::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfDocument_virtualbase_metacast(VirtualQPdfDocument* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfDocument::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfDocument_virtualbase_metacall(VirtualQPdfDocument* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfDocument::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfDocument_virtualbase_event(VirtualQPdfDocument* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfDocument::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfDocument_virtualbase_eventFilter(VirtualQPdfDocument* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfDocument::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfDocument_virtualbase_timerEvent(VirtualQPdfDocument* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfDocument::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfDocument_virtualbase_childEvent(VirtualQPdfDocument* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfDocument::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfDocument_virtualbase_customEvent(VirtualQPdfDocument* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfDocument::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfDocument_virtualbase_connectNotify(VirtualQPdfDocument* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfDocument::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfDocument_virtualbase_disconnectNotify(VirtualQPdfDocument* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPdfDocument_protectedbase_sender(const VirtualQPdfDocument* self);
	friend int QPdfDocument_protectedbase_senderSignalIndex(const VirtualQPdfDocument* self);
	friend int QPdfDocument_protectedbase_receivers(const VirtualQPdfDocument* self, const char* signal);
	friend bool QPdfDocument_protectedbase_isSignalConnected(const VirtualQPdfDocument* self, QMetaMethod* signal);
};

VirtualQPdfDocument* QPdfDocument_new(const QPdfDocument_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfDocument>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfDocument(vtbl) : nullptr;
}

VirtualQPdfDocument* QPdfDocument_new2(const QPdfDocument_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfDocument>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfDocument(vtbl, parent) : nullptr;
}

void QPdfDocument_virtbase(QPdfDocument* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QPdfDocument_metaObject(const QPdfDocument* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfDocument_metacast(QPdfDocument* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfDocument_metacall(QPdfDocument* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfDocument_tr(const char* s) {
	QString _ret = QPdfDocument::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfDocument_trUtf8(const char* s) {
	QString _ret = QPdfDocument::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPdfDocument_load(QPdfDocument* self, struct seaqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QPdfDocument::DocumentError _ret = self->load(fileName_QString);
	return static_cast<int>(_ret);
}

int QPdfDocument_status(const QPdfDocument* self) {
	QPdfDocument::Status _ret = self->status();
	return static_cast<int>(_ret);
}

void QPdfDocument_loadWithDevice(QPdfDocument* self, QIODevice* device) {
	self->load(device);
}

void QPdfDocument_setPassword(QPdfDocument* self, struct seaqt_string password) {
	QString password_QString = QString::fromUtf8(password.data, password.len);
	self->setPassword(password_QString);
}

struct seaqt_string QPdfDocument_password(const QPdfDocument* self) {
	QString _ret = self->password();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QPdfDocument_metaData(const QPdfDocument* self, int field) {
	return new QVariant(self->metaData(static_cast<QPdfDocument::MetaDataField>(field)));
}

int QPdfDocument_error(const QPdfDocument* self) {
	QPdfDocument::DocumentError _ret = self->error();
	return static_cast<int>(_ret);
}

void QPdfDocument_close(QPdfDocument* self) {
	self->close();
}

int QPdfDocument_pageCount(const QPdfDocument* self) {
	return self->pageCount();
}

QSizeF* QPdfDocument_pageSize(const QPdfDocument* self, int page) {
	return new QSizeF(self->pageSize(static_cast<int>(page)));
}

QImage* QPdfDocument_render(QPdfDocument* self, int page, QSize* imageSize) {
	return new QImage(self->render(static_cast<int>(page), *imageSize));
}

QPdfSelection* QPdfDocument_getSelection(QPdfDocument* self, int page, QPointF* start, QPointF* end) {
	return new QPdfSelection(self->getSelection(static_cast<int>(page), *start, *end));
}

QPdfSelection* QPdfDocument_getSelectionAtIndex(QPdfDocument* self, int page, int startIndex, int maxLength) {
	return new QPdfSelection(self->getSelectionAtIndex(static_cast<int>(page), static_cast<int>(startIndex), static_cast<int>(maxLength)));
}

QPdfSelection* QPdfDocument_getAllText(QPdfDocument* self, int page) {
	return new QPdfSelection(self->getAllText(static_cast<int>(page)));
}

void QPdfDocument_passwordChanged(QPdfDocument* self) {
	self->passwordChanged();
}

void QPdfDocument_connect_passwordChanged(QPdfDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QPdfDocument::connect(self, static_cast<void (QPdfDocument::*)()>(&QPdfDocument::passwordChanged), self, local_caller{slot, callback, release});
}

void QPdfDocument_passwordRequired(QPdfDocument* self) {
	self->passwordRequired();
}

void QPdfDocument_connect_passwordRequired(QPdfDocument* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QPdfDocument::connect(self, static_cast<void (QPdfDocument::*)()>(&QPdfDocument::passwordRequired), self, local_caller{slot, callback, release});
}

void QPdfDocument_statusChanged(QPdfDocument* self, int status) {
	self->statusChanged(static_cast<QPdfDocument::Status>(status));
}

void QPdfDocument_connect_statusChanged(QPdfDocument* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QPdfDocument::Status status) {
			QPdfDocument::Status status_ret = status;
			int sigval1 = static_cast<int>(status_ret);
			callback(slot, sigval1);
		}
	};
	QPdfDocument::connect(self, static_cast<void (QPdfDocument::*)(QPdfDocument::Status)>(&QPdfDocument::statusChanged), self, local_caller{slot, callback, release});
}

void QPdfDocument_pageCountChanged(QPdfDocument* self, int pageCount) {
	self->pageCountChanged(static_cast<int>(pageCount));
}

void QPdfDocument_connect_pageCountChanged(QPdfDocument* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int pageCount) {
			int sigval1 = pageCount;
			callback(slot, sigval1);
		}
	};
	QPdfDocument::connect(self, static_cast<void (QPdfDocument::*)(int)>(&QPdfDocument::pageCountChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QPdfDocument_tr2(const char* s, const char* c) {
	QString _ret = QPdfDocument::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfDocument_tr3(const char* s, const char* c, int n) {
	QString _ret = QPdfDocument::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfDocument_trUtf82(const char* s, const char* c) {
	QString _ret = QPdfDocument::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfDocument_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPdfDocument::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QImage* QPdfDocument_render2(QPdfDocument* self, int page, QSize* imageSize, QPdfDocumentRenderOptions* options) {
	return new QImage(self->render(static_cast<int>(page), *imageSize, *options));
}

const QMetaObject* QPdfDocument_staticMetaObject() { return &QPdfDocument::staticMetaObject; }
void* QPdfDocument_vdata(VirtualQPdfDocument* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfDocument>()); }
VirtualQPdfDocument* vdata_QPdfDocument(void* vdata) { return reinterpret_cast<VirtualQPdfDocument*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfDocument>()); }

QMetaObject* QPdfDocument_virtualbase_metaObject(const VirtualQPdfDocument* self) {

	return (QMetaObject*) self->QPdfDocument::metaObject();
}

void* QPdfDocument_virtualbase_metacast(VirtualQPdfDocument* self, const char* param1) {

	return self->QPdfDocument::qt_metacast(param1);
}

int QPdfDocument_virtualbase_metacall(VirtualQPdfDocument* self, int param1, int param2, void** param3) {

	return self->QPdfDocument::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPdfDocument_virtualbase_event(VirtualQPdfDocument* self, QEvent* event) {

	return self->QPdfDocument::event(event);
}

bool QPdfDocument_virtualbase_eventFilter(VirtualQPdfDocument* self, QObject* watched, QEvent* event) {

	return self->QPdfDocument::eventFilter(watched, event);
}

void QPdfDocument_virtualbase_timerEvent(VirtualQPdfDocument* self, QTimerEvent* event) {

	self->QPdfDocument::timerEvent(event);
}

void QPdfDocument_virtualbase_childEvent(VirtualQPdfDocument* self, QChildEvent* event) {

	self->QPdfDocument::childEvent(event);
}

void QPdfDocument_virtualbase_customEvent(VirtualQPdfDocument* self, QEvent* event) {

	self->QPdfDocument::customEvent(event);
}

void QPdfDocument_virtualbase_connectNotify(VirtualQPdfDocument* self, QMetaMethod* signal) {

	self->QPdfDocument::connectNotify(*signal);
}

void QPdfDocument_virtualbase_disconnectNotify(VirtualQPdfDocument* self, QMetaMethod* signal) {

	self->QPdfDocument::disconnectNotify(*signal);
}

QObject* QPdfDocument_protectedbase_sender(const VirtualQPdfDocument* self) {
	return self->sender();
}

int QPdfDocument_protectedbase_senderSignalIndex(const VirtualQPdfDocument* self) {
	return self->senderSignalIndex();
}

int QPdfDocument_protectedbase_receivers(const VirtualQPdfDocument* self, const char* signal) {
	return self->receivers(signal);
}

bool QPdfDocument_protectedbase_isSignalConnected(const VirtualQPdfDocument* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPdfDocument_delete(QPdfDocument* self) {
	delete self;
}

