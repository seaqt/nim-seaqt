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

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSystemTrayIcon_activated(intptr_t, int);
void miqt_exec_callback_QSystemTrayIcon_messageClicked(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQSystemTrayIcon final : public QSystemTrayIcon {
	struct QSystemTrayIcon_VTable* vtbl;
public:

	VirtualQSystemTrayIcon(struct QSystemTrayIcon_VTable* vtbl): QSystemTrayIcon(), vtbl(vtbl) {};
	VirtualQSystemTrayIcon(struct QSystemTrayIcon_VTable* vtbl, const QIcon& icon): QSystemTrayIcon(icon), vtbl(vtbl) {};
	VirtualQSystemTrayIcon(struct QSystemTrayIcon_VTable* vtbl, QObject* parent): QSystemTrayIcon(parent), vtbl(vtbl) {};
	VirtualQSystemTrayIcon(struct QSystemTrayIcon_VTable* vtbl, const QIcon& icon, QObject* parent): QSystemTrayIcon(icon, parent), vtbl(vtbl) {};

	virtual ~VirtualQSystemTrayIcon() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSystemTrayIcon::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QSystemTrayIcon_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSystemTrayIcon::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QSystemTrayIcon_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSystemTrayIcon::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSystemTrayIcon_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSystemTrayIcon::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QSystemTrayIcon_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSystemTrayIcon::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSystemTrayIcon_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSystemTrayIcon::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QSystemTrayIcon_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSystemTrayIcon::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QSystemTrayIcon_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSystemTrayIcon::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QSystemTrayIcon_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSystemTrayIcon::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QSystemTrayIcon_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSystemTrayIcon::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QSystemTrayIcon_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QSystemTrayIcon_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSystemTrayIcon_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSystemTrayIcon_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSystemTrayIcon_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSystemTrayIcon* QSystemTrayIcon_new(struct QSystemTrayIcon_VTable* vtbl) {
	return new VirtualQSystemTrayIcon(vtbl);
}

QSystemTrayIcon* QSystemTrayIcon_new2(struct QSystemTrayIcon_VTable* vtbl, QIcon* icon) {
	return new VirtualQSystemTrayIcon(vtbl, *icon);
}

QSystemTrayIcon* QSystemTrayIcon_new3(struct QSystemTrayIcon_VTable* vtbl, QObject* parent) {
	return new VirtualQSystemTrayIcon(vtbl, parent);
}

QSystemTrayIcon* QSystemTrayIcon_new4(struct QSystemTrayIcon_VTable* vtbl, QIcon* icon, QObject* parent) {
	return new VirtualQSystemTrayIcon(vtbl, *icon, parent);
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

struct miqt_string QSystemTrayIcon_tr(const char* s) {
	QString _ret = QSystemTrayIcon::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
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

struct miqt_string QSystemTrayIcon_toolTip(const QSystemTrayIcon* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSystemTrayIcon_setToolTip(QSystemTrayIcon* self, struct miqt_string tip) {
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

void QSystemTrayIcon_showMessage(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg, QIcon* icon) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString, *icon);
}

void QSystemTrayIcon_showMessage2(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString);
}

void QSystemTrayIcon_activated(QSystemTrayIcon* self, int reason) {
	self->activated(static_cast<QSystemTrayIcon::ActivationReason>(reason));
}

void QSystemTrayIcon_connect_activated(QSystemTrayIcon* self, intptr_t slot) {
	VirtualQSystemTrayIcon::connect(self, static_cast<void (QSystemTrayIcon::*)(QSystemTrayIcon::ActivationReason)>(&QSystemTrayIcon::activated), self, [=](QSystemTrayIcon::ActivationReason reason) {
		QSystemTrayIcon::ActivationReason reason_ret = reason;
		int sigval1 = static_cast<int>(reason_ret);
		miqt_exec_callback_QSystemTrayIcon_activated(slot, sigval1);
	});
}

void QSystemTrayIcon_messageClicked(QSystemTrayIcon* self) {
	self->messageClicked();
}

void QSystemTrayIcon_connect_messageClicked(QSystemTrayIcon* self, intptr_t slot) {
	VirtualQSystemTrayIcon::connect(self, static_cast<void (QSystemTrayIcon::*)()>(&QSystemTrayIcon::messageClicked), self, [=]() {
		miqt_exec_callback_QSystemTrayIcon_messageClicked(slot);
	});
}

struct miqt_string QSystemTrayIcon_tr2(const char* s, const char* c) {
	QString _ret = QSystemTrayIcon::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSystemTrayIcon_tr3(const char* s, const char* c, int n) {
	QString _ret = QSystemTrayIcon::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSystemTrayIcon_showMessage4(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg, QIcon* icon, int msecs) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString, *icon, static_cast<int>(msecs));
}

void QSystemTrayIcon_showMessage3(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg, int icon) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString, static_cast<QSystemTrayIcon::MessageIcon>(icon));
}

void QSystemTrayIcon_showMessage42(QSystemTrayIcon* self, struct miqt_string title, struct miqt_string msg, int icon, int msecs) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString msg_QString = QString::fromUtf8(msg.data, msg.len);
	self->showMessage(title_QString, msg_QString, static_cast<QSystemTrayIcon::MessageIcon>(icon), static_cast<int>(msecs));
}

QMetaObject* QSystemTrayIcon_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::metaObject();

}

void* QSystemTrayIcon_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::qt_metacast(param1);

}

int QSystemTrayIcon_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QSystemTrayIcon_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::event(event);

}

bool QSystemTrayIcon_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::eventFilter(watched, event);

}

void QSystemTrayIcon_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::timerEvent(event);

}

void QSystemTrayIcon_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::childEvent(event);

}

void QSystemTrayIcon_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::customEvent(event);

}

void QSystemTrayIcon_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::connectNotify(*signal);

}

void QSystemTrayIcon_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQSystemTrayIcon*)(self) )->QSystemTrayIcon::disconnectNotify(*signal);

}

const QMetaObject* QSystemTrayIcon_staticMetaObject() { return &QSystemTrayIcon::staticMetaObject; }
QObject* QSystemTrayIcon_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSystemTrayIcon* self_cast = dynamic_cast<VirtualQSystemTrayIcon*>( (QSystemTrayIcon*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSystemTrayIcon_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQSystemTrayIcon* self_cast = dynamic_cast<VirtualQSystemTrayIcon*>( (QSystemTrayIcon*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSystemTrayIcon_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQSystemTrayIcon* self_cast = dynamic_cast<VirtualQSystemTrayIcon*>( (QSystemTrayIcon*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSystemTrayIcon_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQSystemTrayIcon* self_cast = dynamic_cast<VirtualQSystemTrayIcon*>( (QSystemTrayIcon*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSystemTrayIcon_delete(QSystemTrayIcon* self) {
	delete self;
}

