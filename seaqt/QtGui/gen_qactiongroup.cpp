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
class VirtualQActionGroup final : public QActionGroup {
	const QActionGroup_VTable* vtbl;
	void* vdata;
public:
	friend const QActionGroup_VTable* QActionGroup_vtbl(const VirtualQActionGroup* self);
	friend void* QActionGroup_vdata(const VirtualQActionGroup* self);
	friend void QActionGroup_setVdata(VirtualQActionGroup* self, void* vdata);

	VirtualQActionGroup(const QActionGroup_VTable* vtbl, void* vdata, QObject* parent): QActionGroup(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQActionGroup() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QActionGroup::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QActionGroup_virtualbase_metaObject(const VirtualQActionGroup* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QActionGroup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QActionGroup_virtualbase_metacast(VirtualQActionGroup* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QActionGroup::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QActionGroup_virtualbase_metacall(VirtualQActionGroup* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QActionGroup::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QActionGroup_virtualbase_event(VirtualQActionGroup* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QActionGroup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QActionGroup_virtualbase_eventFilter(VirtualQActionGroup* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QActionGroup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QActionGroup_virtualbase_timerEvent(VirtualQActionGroup* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QActionGroup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QActionGroup_virtualbase_childEvent(VirtualQActionGroup* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QActionGroup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QActionGroup_virtualbase_customEvent(VirtualQActionGroup* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QActionGroup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QActionGroup_virtualbase_connectNotify(VirtualQActionGroup* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QActionGroup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QActionGroup_virtualbase_disconnectNotify(VirtualQActionGroup* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QActionGroup_protectedbase_sender(const VirtualQActionGroup* self);
	friend int QActionGroup_protectedbase_senderSignalIndex(const VirtualQActionGroup* self);
	friend int QActionGroup_protectedbase_receivers(const VirtualQActionGroup* self, const char* signal);
	friend bool QActionGroup_protectedbase_isSignalConnected(const VirtualQActionGroup* self, QMetaMethod* signal);
};

VirtualQActionGroup* QActionGroup_new(const QActionGroup_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQActionGroup(vtbl, vdata, parent);
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

void QActionGroup_connect_triggered(VirtualQActionGroup* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
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

void QActionGroup_connect_hovered(VirtualQActionGroup* self, intptr_t slot, void (*callback)(intptr_t, QAction*), void (*release)(intptr_t)) {
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

QMetaObject* QActionGroup_virtualbase_metaObject(const VirtualQActionGroup* self) {

	return (QMetaObject*) self->QActionGroup::metaObject();
}

void* QActionGroup_virtualbase_metacast(VirtualQActionGroup* self, const char* param1) {

	return self->QActionGroup::qt_metacast(param1);
}

int QActionGroup_virtualbase_metacall(VirtualQActionGroup* self, int param1, int param2, void** param3) {

	return self->QActionGroup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QActionGroup_virtualbase_event(VirtualQActionGroup* self, QEvent* event) {

	return self->QActionGroup::event(event);
}

bool QActionGroup_virtualbase_eventFilter(VirtualQActionGroup* self, QObject* watched, QEvent* event) {

	return self->QActionGroup::eventFilter(watched, event);
}

void QActionGroup_virtualbase_timerEvent(VirtualQActionGroup* self, QTimerEvent* event) {

	self->QActionGroup::timerEvent(event);
}

void QActionGroup_virtualbase_childEvent(VirtualQActionGroup* self, QChildEvent* event) {

	self->QActionGroup::childEvent(event);
}

void QActionGroup_virtualbase_customEvent(VirtualQActionGroup* self, QEvent* event) {

	self->QActionGroup::customEvent(event);
}

void QActionGroup_virtualbase_connectNotify(VirtualQActionGroup* self, QMetaMethod* signal) {

	self->QActionGroup::connectNotify(*signal);
}

void QActionGroup_virtualbase_disconnectNotify(VirtualQActionGroup* self, QMetaMethod* signal) {

	self->QActionGroup::disconnectNotify(*signal);
}

const QMetaObject* QActionGroup_staticMetaObject() { return &QActionGroup::staticMetaObject; }

const QActionGroup_VTable* QActionGroup_vtbl(const VirtualQActionGroup* self) { return self->vtbl; }
void* QActionGroup_vdata(const VirtualQActionGroup* self) { return self->vdata; }
void QActionGroup_setVdata(VirtualQActionGroup* self, void* vdata) { self->vdata = vdata; }

QObject* QActionGroup_protectedbase_sender(const VirtualQActionGroup* self) {
	return self->sender();
}

int QActionGroup_protectedbase_senderSignalIndex(const VirtualQActionGroup* self) {
	return self->senderSignalIndex();
}

int QActionGroup_protectedbase_receivers(const VirtualQActionGroup* self, const char* signal) {
	return self->receivers(signal);
}

bool QActionGroup_protectedbase_isSignalConnected(const VirtualQActionGroup* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QActionGroup_delete(QActionGroup* self) {
	delete self;
}

