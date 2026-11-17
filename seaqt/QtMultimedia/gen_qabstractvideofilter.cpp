#include <QAbstractVideoFilter>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVideoFilterRunnable>
#include <QVideoFrame>
#include <QVideoSurfaceFormat>
#include <qabstractvideofilter.h>
#include "gen_qabstractvideofilter.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

QVideoFrame* QVideoFilterRunnable_run(QVideoFilterRunnable* self, QVideoFrame* input, QVideoSurfaceFormat* surfaceFormat, int flags) {
	return new QVideoFrame(self->run(input, *surfaceFormat, static_cast<QVideoFilterRunnable::RunFlags>(flags)));
}

void QVideoFilterRunnable_operatorAssign(QVideoFilterRunnable* self, QVideoFilterRunnable* from) {
	self->operator=(*from);
}

void QVideoFilterRunnable_delete(QVideoFilterRunnable* self) {
	delete self;
}

class VirtualQAbstractVideoFilter final : public QAbstractVideoFilter {
	const QAbstractVideoFilter_VTable* vtbl;
public:
	friend void* QAbstractVideoFilter_vdata(VirtualQAbstractVideoFilter* self);
	friend VirtualQAbstractVideoFilter* vdata_QAbstractVideoFilter(void* vdata);

	VirtualQAbstractVideoFilter(const QAbstractVideoFilter_VTable* vtbl): QAbstractVideoFilter(), vtbl(vtbl) {}
	VirtualQAbstractVideoFilter(const QAbstractVideoFilter_VTable* vtbl, QObject* parent): QAbstractVideoFilter(parent), vtbl(vtbl) {}

	virtual ~VirtualQAbstractVideoFilter() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractVideoFilter::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAbstractVideoFilter_virtualbase_metaObject(const VirtualQAbstractVideoFilter* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractVideoFilter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAbstractVideoFilter_virtualbase_metacast(VirtualQAbstractVideoFilter* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractVideoFilter::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractVideoFilter_virtualbase_metacall(VirtualQAbstractVideoFilter* self, int param1, int param2, void** param3);

	virtual QVideoFilterRunnable* createFilterRunnable() override {
		if (vtbl->createFilterRunnable == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QVideoFilterRunnable* callback_return_value = vtbl->createFilterRunnable(this);
		return callback_return_value;
	}

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractVideoFilter::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAbstractVideoFilter_virtualbase_event(VirtualQAbstractVideoFilter* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractVideoFilter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAbstractVideoFilter_virtualbase_eventFilter(VirtualQAbstractVideoFilter* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractVideoFilter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAbstractVideoFilter_virtualbase_timerEvent(VirtualQAbstractVideoFilter* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractVideoFilter::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAbstractVideoFilter_virtualbase_childEvent(VirtualQAbstractVideoFilter* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractVideoFilter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAbstractVideoFilter_virtualbase_customEvent(VirtualQAbstractVideoFilter* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractVideoFilter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAbstractVideoFilter_virtualbase_connectNotify(VirtualQAbstractVideoFilter* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractVideoFilter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAbstractVideoFilter_virtualbase_disconnectNotify(VirtualQAbstractVideoFilter* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAbstractVideoFilter_protectedbase_sender(const VirtualQAbstractVideoFilter* self);
	friend int QAbstractVideoFilter_protectedbase_senderSignalIndex(const VirtualQAbstractVideoFilter* self);
	friend int QAbstractVideoFilter_protectedbase_receivers(const VirtualQAbstractVideoFilter* self, const char* signal);
	friend bool QAbstractVideoFilter_protectedbase_isSignalConnected(const VirtualQAbstractVideoFilter* self, QMetaMethod* signal);
};

VirtualQAbstractVideoFilter* QAbstractVideoFilter_new(const QAbstractVideoFilter_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAbstractVideoFilter>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAbstractVideoFilter(vtbl) : nullptr;
}

VirtualQAbstractVideoFilter* QAbstractVideoFilter_new_parent(const QAbstractVideoFilter_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAbstractVideoFilter>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAbstractVideoFilter(vtbl, parent) : nullptr;
}

void QAbstractVideoFilter_virtbase(QAbstractVideoFilter* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractVideoFilter_metaObject(const QAbstractVideoFilter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractVideoFilter_metacast(QAbstractVideoFilter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractVideoFilter_metacall(QAbstractVideoFilter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAbstractVideoFilter_tr_s(const char* s) {
	QString _ret = QAbstractVideoFilter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractVideoFilter_trUtf8_s(const char* s) {
	QString _ret = QAbstractVideoFilter::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAbstractVideoFilter_isActive(const QAbstractVideoFilter* self) {
	return self->isActive();
}

void QAbstractVideoFilter_setActive(QAbstractVideoFilter* self, bool v) {
	self->setActive(v);
}

QVideoFilterRunnable* QAbstractVideoFilter_createFilterRunnable(QAbstractVideoFilter* self) {
	return self->createFilterRunnable();
}

void QAbstractVideoFilter_activeChanged(QAbstractVideoFilter* self) {
	self->activeChanged();
}

void QAbstractVideoFilter_connect_activeChanged(QAbstractVideoFilter* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QAbstractVideoFilter::connect(self, static_cast<void (QAbstractVideoFilter::*)()>(&QAbstractVideoFilter::activeChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QAbstractVideoFilter_tr_s_c(const char* s, const char* c) {
	QString _ret = QAbstractVideoFilter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractVideoFilter_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAbstractVideoFilter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractVideoFilter_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QAbstractVideoFilter::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAbstractVideoFilter_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAbstractVideoFilter::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAbstractVideoFilter_staticMetaObject() { return &QAbstractVideoFilter::staticMetaObject; }
void* QAbstractVideoFilter_vdata(VirtualQAbstractVideoFilter* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAbstractVideoFilter>()); }
VirtualQAbstractVideoFilter* vdata_QAbstractVideoFilter(void* vdata) { return reinterpret_cast<VirtualQAbstractVideoFilter*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAbstractVideoFilter>()); }

QMetaObject* QAbstractVideoFilter_virtualbase_metaObject(const VirtualQAbstractVideoFilter* self) {

	return (QMetaObject*) self->QAbstractVideoFilter::metaObject();
}

void* QAbstractVideoFilter_virtualbase_metacast(VirtualQAbstractVideoFilter* self, const char* param1) {

	return self->QAbstractVideoFilter::qt_metacast(param1);
}

int QAbstractVideoFilter_virtualbase_metacall(VirtualQAbstractVideoFilter* self, int param1, int param2, void** param3) {

	return self->QAbstractVideoFilter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAbstractVideoFilter_virtualbase_event(VirtualQAbstractVideoFilter* self, QEvent* event) {

	return self->QAbstractVideoFilter::event(event);
}

bool QAbstractVideoFilter_virtualbase_eventFilter(VirtualQAbstractVideoFilter* self, QObject* watched, QEvent* event) {

	return self->QAbstractVideoFilter::eventFilter(watched, event);
}

void QAbstractVideoFilter_virtualbase_timerEvent(VirtualQAbstractVideoFilter* self, QTimerEvent* event) {

	self->QAbstractVideoFilter::timerEvent(event);
}

void QAbstractVideoFilter_virtualbase_childEvent(VirtualQAbstractVideoFilter* self, QChildEvent* event) {

	self->QAbstractVideoFilter::childEvent(event);
}

void QAbstractVideoFilter_virtualbase_customEvent(VirtualQAbstractVideoFilter* self, QEvent* event) {

	self->QAbstractVideoFilter::customEvent(event);
}

void QAbstractVideoFilter_virtualbase_connectNotify(VirtualQAbstractVideoFilter* self, QMetaMethod* signal) {

	self->QAbstractVideoFilter::connectNotify(*signal);
}

void QAbstractVideoFilter_virtualbase_disconnectNotify(VirtualQAbstractVideoFilter* self, QMetaMethod* signal) {

	self->QAbstractVideoFilter::disconnectNotify(*signal);
}

QObject* QAbstractVideoFilter_protectedbase_sender(const VirtualQAbstractVideoFilter* self) {
	return self->QAbstractVideoFilter::sender();
}

int QAbstractVideoFilter_protectedbase_senderSignalIndex(const VirtualQAbstractVideoFilter* self) {
	return self->QAbstractVideoFilter::senderSignalIndex();
}

int QAbstractVideoFilter_protectedbase_receivers(const VirtualQAbstractVideoFilter* self, const char* signal) {
	return self->QAbstractVideoFilter::receivers(signal);
}

bool QAbstractVideoFilter_protectedbase_isSignalConnected(const VirtualQAbstractVideoFilter* self, QMetaMethod* signal) {
	return self->QAbstractVideoFilter::isSignalConnected(*signal);
}

void QAbstractVideoFilter_delete(QAbstractVideoFilter* self) {
	delete self;
}

