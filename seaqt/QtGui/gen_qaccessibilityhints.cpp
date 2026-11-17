#include <QAccessibilityHints>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaccessibilityhints.h>
#include "gen_qaccessibilityhints.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQAccessibilityHints final : public QAccessibilityHints {
	const QAccessibilityHints_VTable* vtbl;
public:
	friend void* QAccessibilityHints_vdata(VirtualQAccessibilityHints* self);
	friend VirtualQAccessibilityHints* vdata_QAccessibilityHints(void* vdata);

	VirtualQAccessibilityHints(const QAccessibilityHints_VTable* vtbl): QAccessibilityHints(), vtbl(vtbl) {}
	VirtualQAccessibilityHints(const QAccessibilityHints_VTable* vtbl, QObject* parent): QAccessibilityHints(parent), vtbl(vtbl) {}

	virtual ~VirtualQAccessibilityHints() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAccessibilityHints::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QAccessibilityHints_virtualbase_metaObject(const VirtualQAccessibilityHints* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAccessibilityHints::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QAccessibilityHints_virtualbase_metacast(VirtualQAccessibilityHints* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAccessibilityHints::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QAccessibilityHints_virtualbase_metacall(VirtualQAccessibilityHints* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAccessibilityHints::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QAccessibilityHints_virtualbase_event(VirtualQAccessibilityHints* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAccessibilityHints::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QAccessibilityHints_virtualbase_eventFilter(VirtualQAccessibilityHints* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAccessibilityHints::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QAccessibilityHints_virtualbase_timerEvent(VirtualQAccessibilityHints* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAccessibilityHints::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QAccessibilityHints_virtualbase_childEvent(VirtualQAccessibilityHints* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAccessibilityHints::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QAccessibilityHints_virtualbase_customEvent(VirtualQAccessibilityHints* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAccessibilityHints::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QAccessibilityHints_virtualbase_connectNotify(VirtualQAccessibilityHints* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAccessibilityHints::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QAccessibilityHints_virtualbase_disconnectNotify(VirtualQAccessibilityHints* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAccessibilityHints_protectedbase_sender(const VirtualQAccessibilityHints* self);
	friend int QAccessibilityHints_protectedbase_senderSignalIndex(const VirtualQAccessibilityHints* self);
	friend int QAccessibilityHints_protectedbase_receivers(const VirtualQAccessibilityHints* self, const char* signal);
	friend bool QAccessibilityHints_protectedbase_isSignalConnected(const VirtualQAccessibilityHints* self, QMetaMethod* signal);
};

VirtualQAccessibilityHints* QAccessibilityHints_new(const QAccessibilityHints_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibilityHints>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibilityHints(vtbl) : nullptr;
}

VirtualQAccessibilityHints* QAccessibilityHints_new_parent(const QAccessibilityHints_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQAccessibilityHints>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQAccessibilityHints(vtbl, parent) : nullptr;
}

void QAccessibilityHints_virtbase(QAccessibilityHints* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAccessibilityHints_metaObject(const QAccessibilityHints* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAccessibilityHints_metacast(QAccessibilityHints* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAccessibilityHints_metacall(QAccessibilityHints* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QAccessibilityHints_tr_s(const char* s) {
	QString _ret = QAccessibilityHints::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAccessibilityHints_contrastPreference(const QAccessibilityHints* self) {
	Qt::ContrastPreference _ret = self->contrastPreference();
	return static_cast<int>(_ret);
}

void QAccessibilityHints_contrastPreferenceChanged(QAccessibilityHints* self, int contrastPreference) {
	self->contrastPreferenceChanged(static_cast<Qt::ContrastPreference>(contrastPreference));
}

void QAccessibilityHints_connect_contrastPreferenceChanged(QAccessibilityHints* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QAccessibilityHints::connect(self, static_cast<void (QAccessibilityHints::*)(Qt::ContrastPreference)>(&QAccessibilityHints::contrastPreferenceChanged), self, [callback, release = seaqt::release_callback{slot,release}](Qt::ContrastPreference contrastPreference) {
			Qt::ContrastPreference contrastPreference_ret = contrastPreference;
			int sigval1 = static_cast<int>(contrastPreference_ret);
			callback(release.slot, sigval1);
	});
}

struct seaqt_string QAccessibilityHints_tr_s_c(const char* s, const char* c) {
	QString _ret = QAccessibilityHints::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QAccessibilityHints_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QAccessibilityHints::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QAccessibilityHints_staticMetaObject() { return &QAccessibilityHints::staticMetaObject; }
void* QAccessibilityHints_vdata(VirtualQAccessibilityHints* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQAccessibilityHints>()); }
VirtualQAccessibilityHints* vdata_QAccessibilityHints(void* vdata) { return reinterpret_cast<VirtualQAccessibilityHints*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQAccessibilityHints>()); }

QMetaObject* QAccessibilityHints_virtualbase_metaObject(const VirtualQAccessibilityHints* self) {

	return (QMetaObject*) self->QAccessibilityHints::metaObject();
}

void* QAccessibilityHints_virtualbase_metacast(VirtualQAccessibilityHints* self, const char* param1) {

	return self->QAccessibilityHints::qt_metacast(param1);
}

int QAccessibilityHints_virtualbase_metacall(VirtualQAccessibilityHints* self, int param1, int param2, void** param3) {

	return self->QAccessibilityHints::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAccessibilityHints_virtualbase_event(VirtualQAccessibilityHints* self, QEvent* event) {

	return self->QAccessibilityHints::event(event);
}

bool QAccessibilityHints_virtualbase_eventFilter(VirtualQAccessibilityHints* self, QObject* watched, QEvent* event) {

	return self->QAccessibilityHints::eventFilter(watched, event);
}

void QAccessibilityHints_virtualbase_timerEvent(VirtualQAccessibilityHints* self, QTimerEvent* event) {

	self->QAccessibilityHints::timerEvent(event);
}

void QAccessibilityHints_virtualbase_childEvent(VirtualQAccessibilityHints* self, QChildEvent* event) {

	self->QAccessibilityHints::childEvent(event);
}

void QAccessibilityHints_virtualbase_customEvent(VirtualQAccessibilityHints* self, QEvent* event) {

	self->QAccessibilityHints::customEvent(event);
}

void QAccessibilityHints_virtualbase_connectNotify(VirtualQAccessibilityHints* self, QMetaMethod* signal) {

	self->QAccessibilityHints::connectNotify(*signal);
}

void QAccessibilityHints_virtualbase_disconnectNotify(VirtualQAccessibilityHints* self, QMetaMethod* signal) {

	self->QAccessibilityHints::disconnectNotify(*signal);
}

QObject* QAccessibilityHints_protectedbase_sender(const VirtualQAccessibilityHints* self) {
	return self->QAccessibilityHints::sender();
}

int QAccessibilityHints_protectedbase_senderSignalIndex(const VirtualQAccessibilityHints* self) {
	return self->QAccessibilityHints::senderSignalIndex();
}

int QAccessibilityHints_protectedbase_receivers(const VirtualQAccessibilityHints* self, const char* signal) {
	return self->QAccessibilityHints::receivers(signal);
}

bool QAccessibilityHints_protectedbase_isSignalConnected(const VirtualQAccessibilityHints* self, QMetaMethod* signal) {
	return self->QAccessibilityHints::isSignalConnected(*signal);
}

void QAccessibilityHints_delete(QAccessibilityHints* self) {
	delete self;
}

