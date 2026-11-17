#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPoint>
#include <QQuickRenderControl>
#include <QQuickWindow>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QWindow>
#include <qquickrendercontrol.h>
#include "gen_qquickrendercontrol.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQQuickRenderControl final : public QQuickRenderControl {
	const QQuickRenderControl_VTable* vtbl;
public:
	friend void* QQuickRenderControl_vdata(VirtualQQuickRenderControl* self);
	friend VirtualQQuickRenderControl* vdata_QQuickRenderControl(void* vdata);

	VirtualQQuickRenderControl(const QQuickRenderControl_VTable* vtbl): QQuickRenderControl(), vtbl(vtbl) {}
	VirtualQQuickRenderControl(const QQuickRenderControl_VTable* vtbl, QObject* parent): QQuickRenderControl(parent), vtbl(vtbl) {}

	virtual ~VirtualQQuickRenderControl() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickRenderControl::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QQuickRenderControl_virtualbase_metaObject(const VirtualQQuickRenderControl* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickRenderControl::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QQuickRenderControl_virtualbase_metacast(VirtualQQuickRenderControl* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickRenderControl::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QQuickRenderControl_virtualbase_metacall(VirtualQQuickRenderControl* self, int param1, int param2, void** param3);

	virtual QWindow* renderWindow(QPoint* offset) override {
		if (vtbl->renderWindow == 0) {
			return QQuickRenderControl::renderWindow(offset);
		}

		QPoint* sigval1 = offset;
		QWindow* callback_return_value = vtbl->renderWindow(this, sigval1);
		return callback_return_value;
	}

	friend QWindow* QQuickRenderControl_virtualbase_renderWindow(VirtualQQuickRenderControl* self, QPoint* offset);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickRenderControl::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QQuickRenderControl_virtualbase_event(VirtualQQuickRenderControl* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickRenderControl::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QQuickRenderControl_virtualbase_eventFilter(VirtualQQuickRenderControl* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickRenderControl::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QQuickRenderControl_virtualbase_timerEvent(VirtualQQuickRenderControl* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickRenderControl::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QQuickRenderControl_virtualbase_childEvent(VirtualQQuickRenderControl* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickRenderControl::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QQuickRenderControl_virtualbase_customEvent(VirtualQQuickRenderControl* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickRenderControl::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QQuickRenderControl_virtualbase_connectNotify(VirtualQQuickRenderControl* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickRenderControl::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QQuickRenderControl_virtualbase_disconnectNotify(VirtualQQuickRenderControl* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickRenderControl_protectedbase_sender(const VirtualQQuickRenderControl* self);
	friend int QQuickRenderControl_protectedbase_senderSignalIndex(const VirtualQQuickRenderControl* self);
	friend int QQuickRenderControl_protectedbase_receivers(const VirtualQQuickRenderControl* self, const char* signal);
	friend bool QQuickRenderControl_protectedbase_isSignalConnected(const VirtualQQuickRenderControl* self, QMetaMethod* signal);
};

VirtualQQuickRenderControl* QQuickRenderControl_new(const QQuickRenderControl_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQuickRenderControl>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQuickRenderControl(vtbl) : nullptr;
}

VirtualQQuickRenderControl* QQuickRenderControl_new_parent(const QQuickRenderControl_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQQuickRenderControl>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQQuickRenderControl(vtbl, parent) : nullptr;
}

void QQuickRenderControl_virtbase(QQuickRenderControl* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickRenderControl_metaObject(const QQuickRenderControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickRenderControl_metacast(QQuickRenderControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickRenderControl_metacall(QQuickRenderControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QQuickRenderControl_tr_s(const char* s) {
	QString _ret = QQuickRenderControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickRenderControl_prepareThread(QQuickRenderControl* self, QThread* targetThread) {
	self->prepareThread(targetThread);
}

void QQuickRenderControl_setSamples(QQuickRenderControl* self, int sampleCount) {
	self->setSamples(static_cast<int>(sampleCount));
}

int QQuickRenderControl_samples(const QQuickRenderControl* self) {
	return self->samples();
}

bool QQuickRenderControl_initialize(QQuickRenderControl* self) {
	return self->initialize();
}

void QQuickRenderControl_invalidate(QQuickRenderControl* self) {
	self->invalidate();
}

void QQuickRenderControl_beginFrame(QQuickRenderControl* self) {
	self->beginFrame();
}

void QQuickRenderControl_endFrame(QQuickRenderControl* self) {
	self->endFrame();
}

void QQuickRenderControl_polishItems(QQuickRenderControl* self) {
	self->polishItems();
}

bool QQuickRenderControl_sync(QQuickRenderControl* self) {
	return self->sync();
}

void QQuickRenderControl_render(QQuickRenderControl* self) {
	self->render();
}

QWindow* QQuickRenderControl_renderWindowFor_win(QQuickWindow* win) {
	return QQuickRenderControl::renderWindowFor(win);
}

QWindow* QQuickRenderControl_renderWindow(QQuickRenderControl* self, QPoint* offset) {
	return self->renderWindow(offset);
}

QQuickWindow* QQuickRenderControl_window(const QQuickRenderControl* self) {
	return self->window();
}

void QQuickRenderControl_renderRequested(QQuickRenderControl* self) {
	self->renderRequested();
}

void QQuickRenderControl_connect_renderRequested(QQuickRenderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRenderControl::connect(self, static_cast<void (QQuickRenderControl::*)()>(&QQuickRenderControl::renderRequested), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QQuickRenderControl_sceneChanged(QQuickRenderControl* self) {
	self->sceneChanged();
}

void QQuickRenderControl_connect_sceneChanged(QQuickRenderControl* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QQuickRenderControl::connect(self, static_cast<void (QQuickRenderControl::*)()>(&QQuickRenderControl::sceneChanged), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QQuickRenderControl_tr_s_c(const char* s, const char* c) {
	QString _ret = QQuickRenderControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QQuickRenderControl_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QQuickRenderControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWindow* QQuickRenderControl_renderWindowFor_win_offset(QQuickWindow* win, QPoint* offset) {
	return QQuickRenderControl::renderWindowFor(win, offset);
}

const QMetaObject* QQuickRenderControl_staticMetaObject() { return &QQuickRenderControl::staticMetaObject; }
void* QQuickRenderControl_vdata(VirtualQQuickRenderControl* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQQuickRenderControl>()); }
VirtualQQuickRenderControl* vdata_QQuickRenderControl(void* vdata) { return reinterpret_cast<VirtualQQuickRenderControl*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQQuickRenderControl>()); }

QMetaObject* QQuickRenderControl_virtualbase_metaObject(const VirtualQQuickRenderControl* self) {

	return (QMetaObject*) self->QQuickRenderControl::metaObject();
}

void* QQuickRenderControl_virtualbase_metacast(VirtualQQuickRenderControl* self, const char* param1) {

	return self->QQuickRenderControl::qt_metacast(param1);
}

int QQuickRenderControl_virtualbase_metacall(VirtualQQuickRenderControl* self, int param1, int param2, void** param3) {

	return self->QQuickRenderControl::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QWindow* QQuickRenderControl_virtualbase_renderWindow(VirtualQQuickRenderControl* self, QPoint* offset) {

	return self->QQuickRenderControl::renderWindow(offset);
}

bool QQuickRenderControl_virtualbase_event(VirtualQQuickRenderControl* self, QEvent* event) {

	return self->QQuickRenderControl::event(event);
}

bool QQuickRenderControl_virtualbase_eventFilter(VirtualQQuickRenderControl* self, QObject* watched, QEvent* event) {

	return self->QQuickRenderControl::eventFilter(watched, event);
}

void QQuickRenderControl_virtualbase_timerEvent(VirtualQQuickRenderControl* self, QTimerEvent* event) {

	self->QQuickRenderControl::timerEvent(event);
}

void QQuickRenderControl_virtualbase_childEvent(VirtualQQuickRenderControl* self, QChildEvent* event) {

	self->QQuickRenderControl::childEvent(event);
}

void QQuickRenderControl_virtualbase_customEvent(VirtualQQuickRenderControl* self, QEvent* event) {

	self->QQuickRenderControl::customEvent(event);
}

void QQuickRenderControl_virtualbase_connectNotify(VirtualQQuickRenderControl* self, QMetaMethod* signal) {

	self->QQuickRenderControl::connectNotify(*signal);
}

void QQuickRenderControl_virtualbase_disconnectNotify(VirtualQQuickRenderControl* self, QMetaMethod* signal) {

	self->QQuickRenderControl::disconnectNotify(*signal);
}

QObject* QQuickRenderControl_protectedbase_sender(const VirtualQQuickRenderControl* self) {
	return self->QQuickRenderControl::sender();
}

int QQuickRenderControl_protectedbase_senderSignalIndex(const VirtualQQuickRenderControl* self) {
	return self->QQuickRenderControl::senderSignalIndex();
}

int QQuickRenderControl_protectedbase_receivers(const VirtualQQuickRenderControl* self, const char* signal) {
	return self->QQuickRenderControl::receivers(signal);
}

bool QQuickRenderControl_protectedbase_isSignalConnected(const VirtualQQuickRenderControl* self, QMetaMethod* signal) {
	return self->QQuickRenderControl::isSignalConnected(*signal);
}

void QQuickRenderControl_delete(QQuickRenderControl* self) {
	delete self;
}

