#include <QAction>
#include <QActionGroup>
#include <QChildEvent>
#include <QEvent>
#include <QIcon>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qactiongroup.h>
#include "gen_qactiongroup.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQActionGroup final : public QActionGroup {
	struct QActionGroup_VTable* vtbl;
public:

	VirtualQActionGroup(struct QActionGroup_VTable* vtbl, QObject* parent): QActionGroup(parent), vtbl(vtbl) {};

	virtual ~VirtualQActionGroup() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QActionGroup::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QActionGroup_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QActionGroup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QActionGroup_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QActionGroup::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QActionGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QActionGroup::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QActionGroup_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QActionGroup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QActionGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QActionGroup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QActionGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QActionGroup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QActionGroup_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QActionGroup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QActionGroup_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QActionGroup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QActionGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QActionGroup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QActionGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QActionGroup_protectedbase_sender(const void* self);
	friend int QActionGroup_protectedbase_senderSignalIndex(const void* self);
	friend int QActionGroup_protectedbase_receivers(const void* self, const char* signal);
	friend bool QActionGroup_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QActionGroup* QActionGroup_new(struct QActionGroup_VTable* vtbl, QObject* parent) {
	return new VirtualQActionGroup(vtbl, parent);
}

void QActionGroup_virtbase(QActionGroup* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QActionGroup_metaObject(const QActionGroup* self) {
	return (QMetaObject*) self->metaObject();
}

void* QActionGroup_metacast(QActionGroup* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QActionGroup_metacall(QActionGroup* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QActionGroup_tr(const char* s) {
	QString _ret = QActionGroup::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QActionGroup_trUtf8(const char* s) {
	QString _ret = QActionGroup::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QActionGroup_addAction(QActionGroup* self, QAction* a) {
	return self->addAction(a);
}

QAction* QActionGroup_addActionWithText(QActionGroup* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addAction(text_QString);
}

QAction* QActionGroup_addAction2(QActionGroup* self, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addAction(*icon, text_QString);
}

void QActionGroup_removeAction(QActionGroup* self, QAction* a) {
	self->removeAction(a);
}

struct miqt_array /* of QAction* */  QActionGroup_actions(const QActionGroup* self) {
	QList<QAction *> _ret = self->actions();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAction** _arr = static_cast<QAction**>(malloc(sizeof(QAction*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAction* QActionGroup_checkedAction(const QActionGroup* self) {
	return self->checkedAction();
}

bool QActionGroup_isExclusive(const QActionGroup* self) {
	return self->isExclusive();
}

bool QActionGroup_isEnabled(const QActionGroup* self) {
	return self->isEnabled();
}

bool QActionGroup_isVisible(const QActionGroup* self) {
	return self->isVisible();
}

int QActionGroup_exclusionPolicy(const QActionGroup* self) {
	QActionGroup::ExclusionPolicy _ret = self->exclusionPolicy();
	return static_cast<int>(_ret);
}

void QActionGroup_setEnabled(QActionGroup* self, bool enabled) {
	self->setEnabled(enabled);
}

void QActionGroup_setDisabled(QActionGroup* self, bool b) {
	self->setDisabled(b);
}

void QActionGroup_setVisible(QActionGroup* self, bool visible) {
	self->setVisible(visible);
}

void QActionGroup_setExclusive(QActionGroup* self, bool exclusive) {
	self->setExclusive(exclusive);
}

void QActionGroup_setExclusionPolicy(QActionGroup* self, int policy) {
	self->setExclusionPolicy(static_cast<QActionGroup::ExclusionPolicy>(policy));
}

void QActionGroup_triggered(QActionGroup* self, QAction* param1) {
	self->triggered(param1);
}

void QActionGroup_connect_triggered(QActionGroup* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* param1) {
			QAction* sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQActionGroup::connect(self, static_cast<void (QActionGroup::*)(QAction*)>(&QActionGroup::triggered), self, local_caller{slot, callback, release});
}

void QActionGroup_hovered(QActionGroup* self, QAction* param1) {
	self->hovered(param1);
}

void QActionGroup_connect_hovered(QActionGroup* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QAction*);
		void operator()(QAction* param1) {
			QAction* sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQActionGroup::connect(self, static_cast<void (QActionGroup::*)(QAction*)>(&QActionGroup::hovered), self, local_caller{slot, callback, release});
}

struct miqt_string QActionGroup_tr2(const char* s, const char* c) {
	QString _ret = QActionGroup::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QActionGroup_tr3(const char* s, const char* c, int n) {
	QString _ret = QActionGroup::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QActionGroup_trUtf82(const char* s, const char* c) {
	QString _ret = QActionGroup::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QActionGroup_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QActionGroup::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QActionGroup_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQActionGroup*)(self) )->QActionGroup::metaObject();

}

void* QActionGroup_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQActionGroup*)(self) )->QActionGroup::qt_metacast(param1);

}

int QActionGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQActionGroup*)(self) )->QActionGroup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QActionGroup_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQActionGroup*)(self) )->QActionGroup::event(event);

}

bool QActionGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQActionGroup*)(self) )->QActionGroup::eventFilter(watched, event);

}

void QActionGroup_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQActionGroup*)(self) )->QActionGroup::timerEvent(event);

}

void QActionGroup_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQActionGroup*)(self) )->QActionGroup::childEvent(event);

}

void QActionGroup_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQActionGroup*)(self) )->QActionGroup::customEvent(event);

}

void QActionGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQActionGroup*)(self) )->QActionGroup::connectNotify(*signal);

}

void QActionGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQActionGroup*)(self) )->QActionGroup::disconnectNotify(*signal);

}

const QMetaObject* QActionGroup_staticMetaObject() { return &QActionGroup::staticMetaObject; }
QObject* QActionGroup_protectedbase_sender(const void* self) {
	VirtualQActionGroup* self_cast = static_cast<VirtualQActionGroup*>( (QActionGroup*)(self) );
	
	return self_cast->sender();

}

int QActionGroup_protectedbase_senderSignalIndex(const void* self) {
	VirtualQActionGroup* self_cast = static_cast<VirtualQActionGroup*>( (QActionGroup*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QActionGroup_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQActionGroup* self_cast = static_cast<VirtualQActionGroup*>( (QActionGroup*)(self) );
	
	return self_cast->receivers(signal);

}

bool QActionGroup_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQActionGroup* self_cast = static_cast<VirtualQActionGroup*>( (QActionGroup*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QActionGroup_delete(QActionGroup* self) {
	delete self;
}

