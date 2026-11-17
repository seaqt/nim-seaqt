#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPdfLink>
#include <QPdfPageNavigator>
#include <QPointF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpdfpagenavigator.h>
#include "gen_qpdfpagenavigator.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQPdfPageNavigator final : public QPdfPageNavigator {
	const QPdfPageNavigator_VTable* vtbl;
public:
	friend void* QPdfPageNavigator_vdata(VirtualQPdfPageNavigator* self);
	friend VirtualQPdfPageNavigator* vdata_QPdfPageNavigator(void* vdata);

	VirtualQPdfPageNavigator(const QPdfPageNavigator_VTable* vtbl): QPdfPageNavigator(), vtbl(vtbl) {}
	VirtualQPdfPageNavigator(const QPdfPageNavigator_VTable* vtbl, QObject* parent): QPdfPageNavigator(parent), vtbl(vtbl) {}

	virtual ~VirtualQPdfPageNavigator() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPdfPageNavigator::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QPdfPageNavigator_virtualbase_metaObject(const VirtualQPdfPageNavigator* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPdfPageNavigator::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QPdfPageNavigator_virtualbase_metacast(VirtualQPdfPageNavigator* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPdfPageNavigator::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QPdfPageNavigator_virtualbase_metacall(VirtualQPdfPageNavigator* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPdfPageNavigator::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QPdfPageNavigator_virtualbase_event(VirtualQPdfPageNavigator* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPdfPageNavigator::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QPdfPageNavigator_virtualbase_eventFilter(VirtualQPdfPageNavigator* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPdfPageNavigator::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QPdfPageNavigator_virtualbase_timerEvent(VirtualQPdfPageNavigator* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPdfPageNavigator::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QPdfPageNavigator_virtualbase_childEvent(VirtualQPdfPageNavigator* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPdfPageNavigator::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QPdfPageNavigator_virtualbase_customEvent(VirtualQPdfPageNavigator* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPdfPageNavigator::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QPdfPageNavigator_virtualbase_connectNotify(VirtualQPdfPageNavigator* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPdfPageNavigator::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QPdfPageNavigator_virtualbase_disconnectNotify(VirtualQPdfPageNavigator* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QPdfLink* QPdfPageNavigator_protectedbase_currentLink(const VirtualQPdfPageNavigator* self);
	friend QObject* QPdfPageNavigator_protectedbase_sender(const VirtualQPdfPageNavigator* self);
	friend int QPdfPageNavigator_protectedbase_senderSignalIndex(const VirtualQPdfPageNavigator* self);
	friend int QPdfPageNavigator_protectedbase_receivers(const VirtualQPdfPageNavigator* self, const char* signal);
	friend bool QPdfPageNavigator_protectedbase_isSignalConnected(const VirtualQPdfPageNavigator* self, QMetaMethod* signal);
};

VirtualQPdfPageNavigator* QPdfPageNavigator_new(const QPdfPageNavigator_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfPageNavigator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfPageNavigator(vtbl) : nullptr;
}

VirtualQPdfPageNavigator* QPdfPageNavigator_new_parent(const QPdfPageNavigator_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQPdfPageNavigator>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQPdfPageNavigator(vtbl, parent) : nullptr;
}

void QPdfPageNavigator_virtbase(QPdfPageNavigator* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QPdfPageNavigator_metaObject(const QPdfPageNavigator* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPdfPageNavigator_metacast(QPdfPageNavigator* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPdfPageNavigator_metacall(QPdfPageNavigator* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QPdfPageNavigator_tr_s(const char* s) {
	QString _ret = QPdfPageNavigator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPdfPageNavigator_currentPage(const QPdfPageNavigator* self) {
	return self->currentPage();
}

QPointF* QPdfPageNavigator_currentLocation(const QPdfPageNavigator* self) {
	return new QPointF(self->currentLocation());
}

double QPdfPageNavigator_currentZoom(const QPdfPageNavigator* self) {
	qreal _ret = self->currentZoom();
	return static_cast<double>(_ret);
}

bool QPdfPageNavigator_backAvailable(const QPdfPageNavigator* self) {
	return self->backAvailable();
}

bool QPdfPageNavigator_forwardAvailable(const QPdfPageNavigator* self) {
	return self->forwardAvailable();
}

void QPdfPageNavigator_clear(QPdfPageNavigator* self) {
	self->clear();
}

void QPdfPageNavigator_jump_destination(QPdfPageNavigator* self, QPdfLink* destination) {
	self->jump(*destination);
}

void QPdfPageNavigator_jump_page_location(QPdfPageNavigator* self, int page, QPointF* location) {
	self->jump(static_cast<int>(page), *location);
}

void QPdfPageNavigator_update(QPdfPageNavigator* self, int page, QPointF* location, double zoom) {
	self->update(static_cast<int>(page), *location, static_cast<qreal>(zoom));
}

void QPdfPageNavigator_forward(QPdfPageNavigator* self) {
	self->forward();
}

void QPdfPageNavigator_back(QPdfPageNavigator* self) {
	self->back();
}

void QPdfPageNavigator_currentPageChanged(QPdfPageNavigator* self, int page) {
	self->currentPageChanged(static_cast<int>(page));
}

void QPdfPageNavigator_connect_currentPageChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QPdfPageNavigator::connect(self, static_cast<void (QPdfPageNavigator::*)(int)>(&QPdfPageNavigator::currentPageChanged), self, [callback, release = seaqt::release_callback{slot,release}](int page) {
			int sigval1 = page;
			callback(release.slot, sigval1);
	});
}

void QPdfPageNavigator_currentLocationChanged(QPdfPageNavigator* self, QPointF* location) {
	self->currentLocationChanged(*location);
}

void QPdfPageNavigator_connect_currentLocationChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, QPointF*), void (*release)(intptr_t)) {
	QPdfPageNavigator::connect(self, static_cast<void (QPdfPageNavigator::*)(QPointF)>(&QPdfPageNavigator::currentLocationChanged), self, [callback, release = seaqt::release_callback{slot,release}](QPointF location) {
			QPointF* sigval1 = new QPointF(location);
			callback(release.slot, sigval1);
	});
}

void QPdfPageNavigator_currentZoomChanged(QPdfPageNavigator* self, double zoom) {
	self->currentZoomChanged(static_cast<qreal>(zoom));
}

void QPdfPageNavigator_connect_currentZoomChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, double), void (*release)(intptr_t)) {
	QPdfPageNavigator::connect(self, static_cast<void (QPdfPageNavigator::*)(qreal)>(&QPdfPageNavigator::currentZoomChanged), self, [callback, release = seaqt::release_callback{slot,release}](qreal zoom) {
			qreal zoom_ret = zoom;
			double sigval1 = static_cast<double>(zoom_ret);
			callback(release.slot, sigval1);
	});
}

void QPdfPageNavigator_backAvailableChanged(QPdfPageNavigator* self, bool available) {
	self->backAvailableChanged(available);
}

void QPdfPageNavigator_connect_backAvailableChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QPdfPageNavigator::connect(self, static_cast<void (QPdfPageNavigator::*)(bool)>(&QPdfPageNavigator::backAvailableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool available) {
			bool sigval1 = available;
			callback(release.slot, sigval1);
	});
}

void QPdfPageNavigator_forwardAvailableChanged(QPdfPageNavigator* self, bool available) {
	self->forwardAvailableChanged(available);
}

void QPdfPageNavigator_connect_forwardAvailableChanged(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	QPdfPageNavigator::connect(self, static_cast<void (QPdfPageNavigator::*)(bool)>(&QPdfPageNavigator::forwardAvailableChanged), self, [callback, release = seaqt::release_callback{slot,release}](bool available) {
			bool sigval1 = available;
			callback(release.slot, sigval1);
	});
}

void QPdfPageNavigator_jumped(QPdfPageNavigator* self, QPdfLink* current) {
	self->jumped(*current);
}

void QPdfPageNavigator_connect_jumped(QPdfPageNavigator* self, intptr_t slot, void (*callback)(intptr_t, QPdfLink*), void (*release)(intptr_t)) {
	QPdfPageNavigator::connect(self, static_cast<void (QPdfPageNavigator::*)(QPdfLink)>(&QPdfPageNavigator::jumped), self, [callback, release = seaqt::release_callback{slot,release}](QPdfLink current) {
			QPdfLink* sigval1 = new QPdfLink(current);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QPdfPageNavigator_tr_s_c(const char* s, const char* c) {
	QString _ret = QPdfPageNavigator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QPdfPageNavigator_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QPdfPageNavigator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPdfPageNavigator_jump_page_location_zoom(QPdfPageNavigator* self, int page, QPointF* location, double zoom) {
	self->jump(static_cast<int>(page), *location, static_cast<qreal>(zoom));
}

const QMetaObject* QPdfPageNavigator_staticMetaObject() { return &QPdfPageNavigator::staticMetaObject; }
void* QPdfPageNavigator_vdata(VirtualQPdfPageNavigator* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQPdfPageNavigator>()); }
VirtualQPdfPageNavigator* vdata_QPdfPageNavigator(void* vdata) { return reinterpret_cast<VirtualQPdfPageNavigator*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQPdfPageNavigator>()); }

QMetaObject* QPdfPageNavigator_virtualbase_metaObject(const VirtualQPdfPageNavigator* self) {

	return (QMetaObject*) self->QPdfPageNavigator::metaObject();
}

void* QPdfPageNavigator_virtualbase_metacast(VirtualQPdfPageNavigator* self, const char* param1) {

	return self->QPdfPageNavigator::qt_metacast(param1);
}

int QPdfPageNavigator_virtualbase_metacall(VirtualQPdfPageNavigator* self, int param1, int param2, void** param3) {

	return self->QPdfPageNavigator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QPdfPageNavigator_virtualbase_event(VirtualQPdfPageNavigator* self, QEvent* event) {

	return self->QPdfPageNavigator::event(event);
}

bool QPdfPageNavigator_virtualbase_eventFilter(VirtualQPdfPageNavigator* self, QObject* watched, QEvent* event) {

	return self->QPdfPageNavigator::eventFilter(watched, event);
}

void QPdfPageNavigator_virtualbase_timerEvent(VirtualQPdfPageNavigator* self, QTimerEvent* event) {

	self->QPdfPageNavigator::timerEvent(event);
}

void QPdfPageNavigator_virtualbase_childEvent(VirtualQPdfPageNavigator* self, QChildEvent* event) {

	self->QPdfPageNavigator::childEvent(event);
}

void QPdfPageNavigator_virtualbase_customEvent(VirtualQPdfPageNavigator* self, QEvent* event) {

	self->QPdfPageNavigator::customEvent(event);
}

void QPdfPageNavigator_virtualbase_connectNotify(VirtualQPdfPageNavigator* self, QMetaMethod* signal) {

	self->QPdfPageNavigator::connectNotify(*signal);
}

void QPdfPageNavigator_virtualbase_disconnectNotify(VirtualQPdfPageNavigator* self, QMetaMethod* signal) {

	self->QPdfPageNavigator::disconnectNotify(*signal);
}

QPdfLink* QPdfPageNavigator_protectedbase_currentLink(const VirtualQPdfPageNavigator* self) {
	return new QPdfLink(self->currentLink());
}

QObject* QPdfPageNavigator_protectedbase_sender(const VirtualQPdfPageNavigator* self) {
	return self->sender();
}

int QPdfPageNavigator_protectedbase_senderSignalIndex(const VirtualQPdfPageNavigator* self) {
	return self->senderSignalIndex();
}

int QPdfPageNavigator_protectedbase_receivers(const VirtualQPdfPageNavigator* self, const char* signal) {
	return self->receivers(signal);
}

bool QPdfPageNavigator_protectedbase_isSignalConnected(const VirtualQPdfPageNavigator* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPdfPageNavigator_delete(QPdfPageNavigator* self) {
	delete self;
}

