#include <QChildEvent>
#include <QEvent>
#include <QIcon>
#include <QMenu>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSystemTrayIcon>
#include <QTimerEvent>
#include <qsystemtrayicon.h>
#include "gen_qsystemtrayicon.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQSystemTrayIcon final : public QSystemTrayIcon {
	const QSystemTrayIcon_VTable* vtbl;
public:
	friend void* QSystemTrayIcon_vdata(VirtualQSystemTrayIcon* self);
	friend VirtualQSystemTrayIcon* vdata_QSystemTrayIcon(void* vdata);

	VirtualQSystemTrayIcon(const QSystemTrayIcon_VTable* vtbl): QSystemTrayIcon(), vtbl(vtbl) {}
	VirtualQSystemTrayIcon(const QSystemTrayIcon_VTable* vtbl, const QIcon& icon): QSystemTrayIcon(icon), vtbl(vtbl) {}
	VirtualQSystemTrayIcon(const QSystemTrayIcon_VTable* vtbl, QObject* parent): QSystemTrayIcon(parent), vtbl(vtbl) {}
	VirtualQSystemTrayIcon(const QSystemTrayIcon_VTable* vtbl, const QIcon& icon, QObject* parent): QSystemTrayIcon(icon, parent), vtbl(vtbl) {}

	virtual ~VirtualQSystemTrayIcon() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSystemTrayIcon::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QSystemTrayIcon_virtualbase_metaObject(const VirtualQSystemTrayIcon* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSystemTrayIcon::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QSystemTrayIcon_virtualbase_metacast(VirtualQSystemTrayIcon* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSystemTrayIcon::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QSystemTrayIcon_virtualbase_metacall(VirtualQSystemTrayIcon* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSystemTrayIcon::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QSystemTrayIcon_virtualbase_event(VirtualQSystemTrayIcon* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSystemTrayIcon::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QSystemTrayIcon_virtualbase_eventFilter(VirtualQSystemTrayIcon* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSystemTrayIcon::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QSystemTrayIcon_virtualbase_timerEvent(VirtualQSystemTrayIcon* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSystemTrayIcon::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QSystemTrayIcon_virtualbase_childEvent(VirtualQSystemTrayIcon* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSystemTrayIcon::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QSystemTrayIcon_virtualbase_customEvent(VirtualQSystemTrayIcon* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSystemTrayIcon::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QSystemTrayIcon_virtualbase_connectNotify(VirtualQSystemTrayIcon* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSystemTrayIcon::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QSystemTrayIcon_virtualbase_disconnectNotify(VirtualQSystemTrayIcon* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSystemTrayIcon_protectedbase_sender(const VirtualQSystemTrayIcon* self);
	friend int QSystemTrayIcon_protectedbase_senderSignalIndex(const VirtualQSystemTrayIcon* self);
	friend int QSystemTrayIcon_protectedbase_receivers(const VirtualQSystemTrayIcon* self, const char* signal);
	friend bool QSystemTrayIcon_protectedbase_isSignalConnected(const VirtualQSystemTrayIcon* self, QMetaMethod* signal);
};

VirtualQSystemTrayIcon* QSystemTrayIcon_new(const QSystemTrayIcon_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSystemTrayIcon>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSystemTrayIcon(vtbl) : nullptr;
}

VirtualQSystemTrayIcon* QSystemTrayIcon_new_icon(const QSystemTrayIcon_VTable* vtbl, size_t vdata, QIcon* icon) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSystemTrayIcon>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSystemTrayIcon(vtbl, *icon) : nullptr;
}

VirtualQSystemTrayIcon* QSystemTrayIcon_new_parent(const QSystemTrayIcon_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSystemTrayIcon>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSystemTrayIcon(vtbl, parent) : nullptr;
}

VirtualQSystemTrayIcon* QSystemTrayIcon_new_icon_parent(const QSystemTrayIcon_VTable* vtbl, size_t vdata, QIcon* icon, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQSystemTrayIcon>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQSystemTrayIcon(vtbl, *icon, parent) : nullptr;
}

void QSystemTrayIcon_virtbase(QSystemTrayIcon* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSystemTrayIcon_metaObject(const QSystemTrayIcon* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSystemTrayIcon_metacast(QSystemTrayIcon* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSystemTrayIcon_metacall(QSystemTrayIcon* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct seaqt_string QSystemTrayIcon_tr_s(const char* s) {
	QString _ret = QSystemTrayIcon::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSystemTrayIcon_trUtf8_s(const char* s) {
	QString _ret = QSystemTrayIcon::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSystemTrayIcon_setContextMenu(QSystemTrayIcon* self, QMenu* menu) {
	self->setContextMenu(menu);
}

QMenu* QSystemTrayIcon_contextMenu(const QSystemTrayIcon* self) {
	return self->contextMenu();
}

QIcon* QSystemTrayIcon_icon(const QSystemTrayIcon* self) {
	return new QIcon(self->icon());
}

void QSystemTrayIcon_setIcon(QSystemTrayIcon* self, QIcon* icon) {
	self->setIcon(*icon);
}

struct seaqt_string QSystemTrayIcon_toolTip(const QSystemTrayIcon* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSystemTrayIcon_setToolTip(QSystemTrayIcon* self, struct seaqt_string tip) {
	QString tip_QString = QString::fromUtf8(tip.data, tip.len);
	self->setToolTip(tip_QString);
}

bool QSystemTrayIcon_isSystemTrayAvailable() {
	return QSystemTrayIcon::isSystemTrayAvailable();
}

bool QSystemTrayIcon_supportsMessages() {
	return QSystemTrayIcon::supportsMessages();
}

QRect* QSystemTrayIcon_geometry(const QSystemTrayIcon* self) {
	return new QRect(self->geometry());
}

bool QSystemTrayIcon_isVisible(const QSystemTrayIcon* self) {
	return self->isVisible();
}

void QSystemTrayIcon_setVisible(QSystemTrayIcon* self, bool visible) {
	self->setVisible(visible);
}

void QSystemTrayIcon_show(QSystemTrayIcon* self) {
	self->show();
}

void QSystemTrayIcon_hide(QSystemTrayIcon* self) {
	self->hide();
}

void QSystemTrayIcon_showMessage_QString_QString_QIcon(QSystemTrayIcon* self, struct seaqt_string title, struct seaqt_string msg, QIcon* icon) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString, *icon);
}

void QSystemTrayIcon_showMessage_QString_QString(QSystemTrayIcon* self, struct seaqt_string title, struct seaqt_string msg) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString);
}

void QSystemTrayIcon_activated(QSystemTrayIcon* self, int reason) {
	self->activated(static_cast<QSystemTrayIcon::ActivationReason>(reason));
}

void QSystemTrayIcon_connect_activated(QSystemTrayIcon* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(QSystemTrayIcon::ActivationReason reason) {
			QSystemTrayIcon::ActivationReason reason_ret = reason;
			int sigval1 = static_cast<int>(reason_ret);
			callback(slot, sigval1);
		}
	};
	QSystemTrayIcon::connect(self, static_cast<void (QSystemTrayIcon::*)(QSystemTrayIcon::ActivationReason)>(&QSystemTrayIcon::activated), self, local_caller{slot, callback, release});
}

void QSystemTrayIcon_messageClicked(QSystemTrayIcon* self) {
	self->messageClicked();
}

void QSystemTrayIcon_connect_messageClicked(QSystemTrayIcon* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	QSystemTrayIcon::connect(self, static_cast<void (QSystemTrayIcon::*)()>(&QSystemTrayIcon::messageClicked), self, local_caller{slot, callback, release});
}

struct seaqt_string QSystemTrayIcon_tr_s_c(const char* s, const char* c) {
	QString _ret = QSystemTrayIcon::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSystemTrayIcon_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QSystemTrayIcon::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSystemTrayIcon_trUtf8_s_c(const char* s, const char* c) {
	QString _ret = QSystemTrayIcon::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QSystemTrayIcon_trUtf8_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QSystemTrayIcon::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSystemTrayIcon_showMessage_QString_QString_QIcon_int(QSystemTrayIcon* self, struct seaqt_string title, struct seaqt_string msg, QIcon* icon, int msecs) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString, *icon, static_cast<int>(msecs));
}

void QSystemTrayIcon_showMessage_QString_QString_QSystemTrayIcon_MessageIcon(QSystemTrayIcon* self, struct seaqt_string title, struct seaqt_string msg, int icon) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString, static_cast<QSystemTrayIcon::MessageIcon>(icon));
}

void QSystemTrayIcon_showMessage_QString_QString_QSystemTrayIcon_MessageIcon_int(QSystemTrayIcon* self, struct seaqt_string title, struct seaqt_string msg, int icon, int msecs) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString, static_cast<QSystemTrayIcon::MessageIcon>(icon), static_cast<int>(msecs));
}

const QMetaObject* QSystemTrayIcon_staticMetaObject() { return &QSystemTrayIcon::staticMetaObject; }
void* QSystemTrayIcon_vdata(VirtualQSystemTrayIcon* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQSystemTrayIcon>()); }
VirtualQSystemTrayIcon* vdata_QSystemTrayIcon(void* vdata) { return reinterpret_cast<VirtualQSystemTrayIcon*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQSystemTrayIcon>()); }

QMetaObject* QSystemTrayIcon_virtualbase_metaObject(const VirtualQSystemTrayIcon* self) {

	return (QMetaObject*) self->QSystemTrayIcon::metaObject();
}

void* QSystemTrayIcon_virtualbase_metacast(VirtualQSystemTrayIcon* self, const char* param1) {

	return self->QSystemTrayIcon::qt_metacast(param1);
}

int QSystemTrayIcon_virtualbase_metacall(VirtualQSystemTrayIcon* self, int param1, int param2, void** param3) {

	return self->QSystemTrayIcon::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSystemTrayIcon_virtualbase_event(VirtualQSystemTrayIcon* self, QEvent* event) {

	return self->QSystemTrayIcon::event(event);
}

bool QSystemTrayIcon_virtualbase_eventFilter(VirtualQSystemTrayIcon* self, QObject* watched, QEvent* event) {

	return self->QSystemTrayIcon::eventFilter(watched, event);
}

void QSystemTrayIcon_virtualbase_timerEvent(VirtualQSystemTrayIcon* self, QTimerEvent* event) {

	self->QSystemTrayIcon::timerEvent(event);
}

void QSystemTrayIcon_virtualbase_childEvent(VirtualQSystemTrayIcon* self, QChildEvent* event) {

	self->QSystemTrayIcon::childEvent(event);
}

void QSystemTrayIcon_virtualbase_customEvent(VirtualQSystemTrayIcon* self, QEvent* event) {

	self->QSystemTrayIcon::customEvent(event);
}

void QSystemTrayIcon_virtualbase_connectNotify(VirtualQSystemTrayIcon* self, QMetaMethod* signal) {

	self->QSystemTrayIcon::connectNotify(*signal);
}

void QSystemTrayIcon_virtualbase_disconnectNotify(VirtualQSystemTrayIcon* self, QMetaMethod* signal) {

	self->QSystemTrayIcon::disconnectNotify(*signal);
}

QObject* QSystemTrayIcon_protectedbase_sender(const VirtualQSystemTrayIcon* self) {
	return self->sender();
}

int QSystemTrayIcon_protectedbase_senderSignalIndex(const VirtualQSystemTrayIcon* self) {
	return self->senderSignalIndex();
}

int QSystemTrayIcon_protectedbase_receivers(const VirtualQSystemTrayIcon* self, const char* signal) {
	return self->receivers(signal);
}

bool QSystemTrayIcon_protectedbase_isSignalConnected(const VirtualQSystemTrayIcon* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSystemTrayIcon_delete(QSystemTrayIcon* self) {
	delete self;
}

