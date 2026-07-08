#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPdfDocument>
#include <QPdfPageNavigation>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpdfpagenavigation.h>
#include "gen_qpdfpagenavigation.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfPageNavigation final : public QPdfPageNavigation {
	const QPdfPageNavigation_VTable* vtbl;
public:
	friend void* QPdfPageNavigation_vdata(VirtualQPdfPageNavigation* self);
	friend VirtualQPdfPageNavigation* vdata_QPdfPageNavigation(void* vdata);

	VirtualQPdfPageNavigation(const QPdfPageNavigation_VTable* vtbl): QPdfPageNavigation(), vtbl(vtbl) {}
	VirtualQPdfPageNavigation(const QPdfPageNavigation_VTable* vtbl, QObject* parent): QPdfPageNavigation(parent), vtbl(vtbl) {}

	virtual ~VirtualQPdfPageNavigation() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfPageNavigation::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfPageNavigation_virtualbase_metaObject(const VirtualQPdfPageNavigation* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfPageNavigation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfPageNavigation_virtualbase_metacast(VirtualQPdfPageNavigation* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfPageNavigation::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfPageNavigation_virtualbase_metacall(VirtualQPdfPageNavigation* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfPageNavigation::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfPageNavigation_virtualbase_event(VirtualQPdfPageNavigation* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfPageNavigation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfPageNavigation_virtualbase_eventFilter(VirtualQPdfPageNavigation* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfPageNavigation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfPageNavigation_virtualbase_timerEvent(VirtualQPdfPageNavigation* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfPageNavigation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfPageNavigation_virtualbase_childEvent(VirtualQPdfPageNavigation* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfPageNavigation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfPageNavigation_virtualbase_customEvent(VirtualQPdfPageNavigation* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfPageNavigation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfPageNavigation_virtualbase_connectNotify(VirtualQPdfPageNavigation* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfPageNavigation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfPageNavigation_virtualbase_disconnectNotify(VirtualQPdfPageNavigation* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QPdfPageNavigation_protectedbase_sender(const VirtualQPdfPageNavigation* self);
	friend int QPdfPageNavigation_protectedbase_senderSignalIndex(const VirtualQPdfPageNavigation* self);
	friend int QPdfPageNavigation_protectedbase_receivers(const VirtualQPdfPageNavigation* self, const char* signal);
	friend bool QPdfPageNavigation_protectedbase_isSignalConnected(const VirtualQPdfPageNavigation* self, QMetaMethod* signal);
};

VirtualQPdfPageNavigation* QPdfPageNavigation_new(const QPdfPageNavigation_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfPageNavigation>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfPageNavigation(vtbl) : nullptr;
}

VirtualQPdfPageNavigation* QPdfPageNavigation_new2(const QPdfPageNavigation_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfPageNavigation>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfPageNavigation(vtbl, parent) : nullptr;
}

void QPdfPageNavigation_virtbase(QPdfPageNavigation* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QPdfPageNavigation_metaObject(const QPdfPageNavigation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfPageNavigation_metacast(QPdfPageNavigation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfPageNavigation_metacall(QPdfPageNavigation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfPageNavigation_tr(const char* s) {
	QString _ret = QPdfPageNavigation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageNavigation_trUtf8(const char* s) {
	QString _ret = QPdfPageNavigation::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPdfDocument* QPdfPageNavigation_document(const QPdfPageNavigation* self) {
	return self->document();
}

void QPdfPageNavigation_setDocument(QPdfPageNavigation* self, QPdfDocument* document) {
	self->setDocument(document);
}

int QPdfPageNavigation_currentPage(const QPdfPageNavigation* self) {
	return self->currentPage();
}

void QPdfPageNavigation_setCurrentPage(QPdfPageNavigation* self, int currentPage) {
	self->setCurrentPage(static_cast<int>(currentPage));
}

int QPdfPageNavigation_pageCount(const QPdfPageNavigation* self) {
	return self->pageCount();
}

bool QPdfPageNavigation_canGoToPreviousPage(const QPdfPageNavigation* self) {
	return self->canGoToPreviousPage();
}

bool QPdfPageNavigation_canGoToNextPage(const QPdfPageNavigation* self) {
	return self->canGoToNextPage();
}

void QPdfPageNavigation_goToPreviousPage(QPdfPageNavigation* self) {
	self->goToPreviousPage();
}

void QPdfPageNavigation_goToNextPage(QPdfPageNavigation* self) {
	self->goToNextPage();
}

void QPdfPageNavigation_documentChanged(QPdfPageNavigation* self, QPdfDocument* document) {
	self->documentChanged(document);
}

void QPdfPageNavigation_connect_documentChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QPdfDocument*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QPdfDocument*);
		void operator()(QPdfDocument* document) {
			QPdfDocument* sigval1 = document;
			callback(slot, sigval1);
		}
	};
	QPdfPageNavigation::connect(self, static_cast<void (QPdfPageNavigation::*)(QPdfDocument*)>(&QPdfPageNavigation::documentChanged), self, local_caller{slot, callback, release});
}

void QPdfPageNavigation_currentPageChanged(QPdfPageNavigation* self, int currentPage) {
	self->currentPageChanged(static_cast<int>(currentPage));
}

void QPdfPageNavigation_connect_currentPageChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int currentPage) {
			int sigval1 = currentPage;
			callback(slot, sigval1);
		}
	};
	QPdfPageNavigation::connect(self, static_cast<void (QPdfPageNavigation::*)(int)>(&QPdfPageNavigation::currentPageChanged), self, local_caller{slot, callback, release});
}

void QPdfPageNavigation_pageCountChanged(QPdfPageNavigation* self, int pageCount) {
	self->pageCountChanged(static_cast<int>(pageCount));
}

void QPdfPageNavigation_connect_pageCountChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int pageCount) {
			int sigval1 = pageCount;
			callback(slot, sigval1);
		}
	};
	QPdfPageNavigation::connect(self, static_cast<void (QPdfPageNavigation::*)(int)>(&QPdfPageNavigation::pageCountChanged), self, local_caller{slot, callback, release});
}

void QPdfPageNavigation_canGoToPreviousPageChanged(QPdfPageNavigation* self, bool canGo) {
	self->canGoToPreviousPageChanged(canGo);
}

void QPdfPageNavigation_connect_canGoToPreviousPageChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool canGo) {
			bool sigval1 = canGo;
			callback(slot, sigval1);
		}
	};
	QPdfPageNavigation::connect(self, static_cast<void (QPdfPageNavigation::*)(bool)>(&QPdfPageNavigation::canGoToPreviousPageChanged), self, local_caller{slot, callback, release});
}

void QPdfPageNavigation_canGoToNextPageChanged(QPdfPageNavigation* self, bool canGo) {
	self->canGoToNextPageChanged(canGo);
}

void QPdfPageNavigation_connect_canGoToNextPageChanged(QPdfPageNavigation* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool canGo) {
			bool sigval1 = canGo;
			callback(slot, sigval1);
		}
	};
	QPdfPageNavigation::connect(self, static_cast<void (QPdfPageNavigation::*)(bool)>(&QPdfPageNavigation::canGoToNextPageChanged), self, local_caller{slot, callback, release});
}

struct seaqt_string QPdfPageNavigation_tr2(const char* s, const char* c) {
	QString _ret = QPdfPageNavigation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageNavigation_tr3(const char* s, const char* c, int n) {
	QString _ret = QPdfPageNavigation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageNavigation_trUtf82(const char* s, const char* c) {
	QString _ret = QPdfPageNavigation::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageNavigation_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPdfPageNavigation::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QPdfPageNavigation_staticMetaObject() { return &QPdfPageNavigation::staticMetaObject; }
void* QPdfPageNavigation_vdata(VirtualQPdfPageNavigation* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfPageNavigation>()); }
VirtualQPdfPageNavigation* vdata_QPdfPageNavigation(void* vdata) { return reinterpret_cast<VirtualQPdfPageNavigation*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfPageNavigation>()); }

QMetaObject* QPdfPageNavigation_virtualbase_metaObject(const VirtualQPdfPageNavigation* self) {

	return (QMetaObject*) self->QPdfPageNavigation::metaObject();
}

void* QPdfPageNavigation_virtualbase_metacast(VirtualQPdfPageNavigation* self, const char* param1) {

	return self->QPdfPageNavigation::qt_metacast(param1);
}

int QPdfPageNavigation_virtualbase_metacall(VirtualQPdfPageNavigation* self, int param1, int param2, void** param3) {

	return self->QPdfPageNavigation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPdfPageNavigation_virtualbase_event(VirtualQPdfPageNavigation* self, QEvent* event) {

	return self->QPdfPageNavigation::event(event);
}

bool QPdfPageNavigation_virtualbase_eventFilter(VirtualQPdfPageNavigation* self, QObject* watched, QEvent* event) {

	return self->QPdfPageNavigation::eventFilter(watched, event);
}

void QPdfPageNavigation_virtualbase_timerEvent(VirtualQPdfPageNavigation* self, QTimerEvent* event) {

	self->QPdfPageNavigation::timerEvent(event);
}

void QPdfPageNavigation_virtualbase_childEvent(VirtualQPdfPageNavigation* self, QChildEvent* event) {

	self->QPdfPageNavigation::childEvent(event);
}

void QPdfPageNavigation_virtualbase_customEvent(VirtualQPdfPageNavigation* self, QEvent* event) {

	self->QPdfPageNavigation::customEvent(event);
}

void QPdfPageNavigation_virtualbase_connectNotify(VirtualQPdfPageNavigation* self, QMetaMethod* signal) {

	self->QPdfPageNavigation::connectNotify(*signal);
}

void QPdfPageNavigation_virtualbase_disconnectNotify(VirtualQPdfPageNavigation* self, QMetaMethod* signal) {

	self->QPdfPageNavigation::disconnectNotify(*signal);
}

QObject* QPdfPageNavigation_protectedbase_sender(const VirtualQPdfPageNavigation* self) {
	return self->sender();
}

int QPdfPageNavigation_protectedbase_senderSignalIndex(const VirtualQPdfPageNavigation* self) {
	return self->senderSignalIndex();
}

int QPdfPageNavigation_protectedbase_receivers(const VirtualQPdfPageNavigation* self, const char* signal) {
	return self->receivers(signal);
}

bool QPdfPageNavigation_protectedbase_isSignalConnected(const VirtualQPdfPageNavigation* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPdfPageNavigation_delete(QPdfPageNavigation* self) {
	delete self;
}

