#include <QAbstractButton>
#include <QButtonGroup>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qbuttongroup.h>
#include "gen_qbuttongroup.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QButtonGroup_buttonClicked(intptr_t, QAbstractButton*);
void miqt_exec_callback_QButtonGroup_buttonPressed(intptr_t, QAbstractButton*);
void miqt_exec_callback_QButtonGroup_buttonReleased(intptr_t, QAbstractButton*);
void miqt_exec_callback_QButtonGroup_buttonToggled(intptr_t, QAbstractButton*, bool);
void miqt_exec_callback_QButtonGroup_idClicked(intptr_t, int);
void miqt_exec_callback_QButtonGroup_idPressed(intptr_t, int);
void miqt_exec_callback_QButtonGroup_idReleased(intptr_t, int);
void miqt_exec_callback_QButtonGroup_idToggled(intptr_t, int, bool);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQButtonGroup final : public QButtonGroup {
	struct QButtonGroup_VTable* vtbl;
public:

	VirtualQButtonGroup(struct QButtonGroup_VTable* vtbl): QButtonGroup(), vtbl(vtbl) {};
	VirtualQButtonGroup(struct QButtonGroup_VTable* vtbl, QObject* parent): QButtonGroup(parent), vtbl(vtbl) {};

	virtual ~VirtualQButtonGroup() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QButtonGroup::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QButtonGroup_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QButtonGroup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QButtonGroup_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QButtonGroup::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QButtonGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QButtonGroup::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QButtonGroup_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QButtonGroup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QButtonGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QButtonGroup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QButtonGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QButtonGroup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QButtonGroup_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QButtonGroup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QButtonGroup_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QButtonGroup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QButtonGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QButtonGroup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QButtonGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QButtonGroup_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QButtonGroup_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QButtonGroup_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QButtonGroup_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QButtonGroup* QButtonGroup_new(struct QButtonGroup_VTable* vtbl) {
	return new VirtualQButtonGroup(vtbl);
}

QButtonGroup* QButtonGroup_new2(struct QButtonGroup_VTable* vtbl, QObject* parent) {
	return new VirtualQButtonGroup(vtbl, parent);
}

void QButtonGroup_virtbase(QButtonGroup* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QButtonGroup_metaObject(const QButtonGroup* self) {
	return (QMetaObject*) self->metaObject();
}

void* QButtonGroup_metacast(QButtonGroup* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QButtonGroup_metacall(QButtonGroup* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QButtonGroup_tr(const char* s) {
	QString _ret = QButtonGroup::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QButtonGroup_setExclusive(QButtonGroup* self, bool exclusive) {
	self->setExclusive(exclusive);
}

bool QButtonGroup_exclusive(const QButtonGroup* self) {
	return self->exclusive();
}

void QButtonGroup_addButton(QButtonGroup* self, QAbstractButton* param1) {
	self->addButton(param1);
}

void QButtonGroup_removeButton(QButtonGroup* self, QAbstractButton* param1) {
	self->removeButton(param1);
}

struct miqt_array /* of QAbstractButton* */  QButtonGroup_buttons(const QButtonGroup* self) {
	QList<QAbstractButton *> _ret = self->buttons();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractButton** _arr = static_cast<QAbstractButton**>(malloc(sizeof(QAbstractButton*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAbstractButton* QButtonGroup_checkedButton(const QButtonGroup* self) {
	return self->checkedButton();
}

QAbstractButton* QButtonGroup_button(const QButtonGroup* self, int id) {
	return self->button(static_cast<int>(id));
}

void QButtonGroup_setId(QButtonGroup* self, QAbstractButton* button, int id) {
	self->setId(button, static_cast<int>(id));
}

int QButtonGroup_id(const QButtonGroup* self, QAbstractButton* button) {
	return self->id(button);
}

int QButtonGroup_checkedId(const QButtonGroup* self) {
	return self->checkedId();
}

void QButtonGroup_buttonClicked(QButtonGroup* self, QAbstractButton* param1) {
	self->buttonClicked(param1);
}

void QButtonGroup_connect_buttonClicked(QButtonGroup* self, intptr_t slot) {
	VirtualQButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(QAbstractButton*)>(&QButtonGroup::buttonClicked), self, [=](QAbstractButton* param1) {
		QAbstractButton* sigval1 = param1;
		miqt_exec_callback_QButtonGroup_buttonClicked(slot, sigval1);
	});
}

void QButtonGroup_buttonPressed(QButtonGroup* self, QAbstractButton* param1) {
	self->buttonPressed(param1);
}

void QButtonGroup_connect_buttonPressed(QButtonGroup* self, intptr_t slot) {
	VirtualQButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(QAbstractButton*)>(&QButtonGroup::buttonPressed), self, [=](QAbstractButton* param1) {
		QAbstractButton* sigval1 = param1;
		miqt_exec_callback_QButtonGroup_buttonPressed(slot, sigval1);
	});
}

void QButtonGroup_buttonReleased(QButtonGroup* self, QAbstractButton* param1) {
	self->buttonReleased(param1);
}

void QButtonGroup_connect_buttonReleased(QButtonGroup* self, intptr_t slot) {
	VirtualQButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(QAbstractButton*)>(&QButtonGroup::buttonReleased), self, [=](QAbstractButton* param1) {
		QAbstractButton* sigval1 = param1;
		miqt_exec_callback_QButtonGroup_buttonReleased(slot, sigval1);
	});
}

void QButtonGroup_buttonToggled(QButtonGroup* self, QAbstractButton* param1, bool param2) {
	self->buttonToggled(param1, param2);
}

void QButtonGroup_connect_buttonToggled(QButtonGroup* self, intptr_t slot) {
	VirtualQButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(QAbstractButton*, bool)>(&QButtonGroup::buttonToggled), self, [=](QAbstractButton* param1, bool param2) {
		QAbstractButton* sigval1 = param1;
		bool sigval2 = param2;
		miqt_exec_callback_QButtonGroup_buttonToggled(slot, sigval1, sigval2);
	});
}

void QButtonGroup_idClicked(QButtonGroup* self, int param1) {
	self->idClicked(static_cast<int>(param1));
}

void QButtonGroup_connect_idClicked(QButtonGroup* self, intptr_t slot) {
	VirtualQButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(int)>(&QButtonGroup::idClicked), self, [=](int param1) {
		int sigval1 = param1;
		miqt_exec_callback_QButtonGroup_idClicked(slot, sigval1);
	});
}

void QButtonGroup_idPressed(QButtonGroup* self, int param1) {
	self->idPressed(static_cast<int>(param1));
}

void QButtonGroup_connect_idPressed(QButtonGroup* self, intptr_t slot) {
	VirtualQButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(int)>(&QButtonGroup::idPressed), self, [=](int param1) {
		int sigval1 = param1;
		miqt_exec_callback_QButtonGroup_idPressed(slot, sigval1);
	});
}

void QButtonGroup_idReleased(QButtonGroup* self, int param1) {
	self->idReleased(static_cast<int>(param1));
}

void QButtonGroup_connect_idReleased(QButtonGroup* self, intptr_t slot) {
	VirtualQButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(int)>(&QButtonGroup::idReleased), self, [=](int param1) {
		int sigval1 = param1;
		miqt_exec_callback_QButtonGroup_idReleased(slot, sigval1);
	});
}

void QButtonGroup_idToggled(QButtonGroup* self, int param1, bool param2) {
	self->idToggled(static_cast<int>(param1), param2);
}

void QButtonGroup_connect_idToggled(QButtonGroup* self, intptr_t slot) {
	VirtualQButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(int, bool)>(&QButtonGroup::idToggled), self, [=](int param1, bool param2) {
		int sigval1 = param1;
		bool sigval2 = param2;
		miqt_exec_callback_QButtonGroup_idToggled(slot, sigval1, sigval2);
	});
}

struct miqt_string QButtonGroup_tr2(const char* s, const char* c) {
	QString _ret = QButtonGroup::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QButtonGroup_tr3(const char* s, const char* c, int n) {
	QString _ret = QButtonGroup::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QButtonGroup_addButton2(QButtonGroup* self, QAbstractButton* param1, int id) {
	self->addButton(param1, static_cast<int>(id));
}

QMetaObject* QButtonGroup_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQButtonGroup*)(self) )->QButtonGroup::metaObject();

}

void* QButtonGroup_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQButtonGroup*)(self) )->QButtonGroup::qt_metacast(param1);

}

int QButtonGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQButtonGroup*)(self) )->QButtonGroup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QButtonGroup_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQButtonGroup*)(self) )->QButtonGroup::event(event);

}

bool QButtonGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQButtonGroup*)(self) )->QButtonGroup::eventFilter(watched, event);

}

void QButtonGroup_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQButtonGroup*)(self) )->QButtonGroup::timerEvent(event);

}

void QButtonGroup_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQButtonGroup*)(self) )->QButtonGroup::childEvent(event);

}

void QButtonGroup_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQButtonGroup*)(self) )->QButtonGroup::customEvent(event);

}

void QButtonGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQButtonGroup*)(self) )->QButtonGroup::connectNotify(*signal);

}

void QButtonGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQButtonGroup*)(self) )->QButtonGroup::disconnectNotify(*signal);

}

const QMetaObject* QButtonGroup_staticMetaObject() { return &QButtonGroup::staticMetaObject; }
QObject* QButtonGroup_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQButtonGroup* self_cast = dynamic_cast<VirtualQButtonGroup*>( (QButtonGroup*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QButtonGroup_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQButtonGroup* self_cast = dynamic_cast<VirtualQButtonGroup*>( (QButtonGroup*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QButtonGroup_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQButtonGroup* self_cast = dynamic_cast<VirtualQButtonGroup*>( (QButtonGroup*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QButtonGroup_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQButtonGroup* self_cast = dynamic_cast<VirtualQButtonGroup*>( (QButtonGroup*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QButtonGroup_delete(QButtonGroup* self) {
	delete self;
}

