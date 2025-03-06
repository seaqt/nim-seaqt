#include <QChildEvent>
#include <QEvent>
#include <QKeySequence>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QShortcut>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qshortcut.h>
#include "gen_qshortcut.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQShortcut final : public QShortcut {
	struct QShortcut_VTable* vtbl;
public:

	VirtualQShortcut(struct QShortcut_VTable* vtbl, QObject* parent): QShortcut(parent), vtbl(vtbl) {};
	VirtualQShortcut(struct QShortcut_VTable* vtbl, const QKeySequence& key, QObject* parent): QShortcut(key, parent), vtbl(vtbl) {};
	VirtualQShortcut(struct QShortcut_VTable* vtbl, QKeySequence::StandardKey key, QObject* parent): QShortcut(key, parent), vtbl(vtbl) {};
	VirtualQShortcut(struct QShortcut_VTable* vtbl, const QKeySequence& key, QObject* parent, const char* member): QShortcut(key, parent, member), vtbl(vtbl) {};
	VirtualQShortcut(struct QShortcut_VTable* vtbl, const QKeySequence& key, QObject* parent, const char* member, const char* ambiguousMember): QShortcut(key, parent, member, ambiguousMember), vtbl(vtbl) {};
	VirtualQShortcut(struct QShortcut_VTable* vtbl, const QKeySequence& key, QObject* parent, const char* member, const char* ambiguousMember, Qt::ShortcutContext context): QShortcut(key, parent, member, ambiguousMember, context), vtbl(vtbl) {};
	VirtualQShortcut(struct QShortcut_VTable* vtbl, QKeySequence::StandardKey key, QObject* parent, const char* member): QShortcut(key, parent, member), vtbl(vtbl) {};
	VirtualQShortcut(struct QShortcut_VTable* vtbl, QKeySequence::StandardKey key, QObject* parent, const char* member, const char* ambiguousMember): QShortcut(key, parent, member, ambiguousMember), vtbl(vtbl) {};
	VirtualQShortcut(struct QShortcut_VTable* vtbl, QKeySequence::StandardKey key, QObject* parent, const char* member, const char* ambiguousMember, Qt::ShortcutContext context): QShortcut(key, parent, member, ambiguousMember, context), vtbl(vtbl) {};

	virtual ~VirtualQShortcut() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QShortcut::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QShortcut_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QShortcut::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QShortcut_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QShortcut::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QShortcut_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QShortcut::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QShortcut_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QShortcut::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QShortcut_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QShortcut::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QShortcut_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QShortcut::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QShortcut_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QShortcut::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QShortcut_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QShortcut::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QShortcut_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QShortcut::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QShortcut_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QShortcut_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QShortcut_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QShortcut_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QShortcut_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QShortcut* QShortcut_new(struct QShortcut_VTable* vtbl, QObject* parent) {
	return new VirtualQShortcut(vtbl, parent);
}

QShortcut* QShortcut_new2(struct QShortcut_VTable* vtbl, QKeySequence* key, QObject* parent) {
	return new VirtualQShortcut(vtbl, *key, parent);
}

QShortcut* QShortcut_new3(struct QShortcut_VTable* vtbl, int key, QObject* parent) {
	return new VirtualQShortcut(vtbl, static_cast<QKeySequence::StandardKey>(key), parent);
}

QShortcut* QShortcut_new4(struct QShortcut_VTable* vtbl, QKeySequence* key, QObject* parent, const char* member) {
	return new VirtualQShortcut(vtbl, *key, parent, member);
}

QShortcut* QShortcut_new5(struct QShortcut_VTable* vtbl, QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember) {
	return new VirtualQShortcut(vtbl, *key, parent, member, ambiguousMember);
}

QShortcut* QShortcut_new6(struct QShortcut_VTable* vtbl, QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember, int context) {
	return new VirtualQShortcut(vtbl, *key, parent, member, ambiguousMember, static_cast<Qt::ShortcutContext>(context));
}

QShortcut* QShortcut_new7(struct QShortcut_VTable* vtbl, int key, QObject* parent, const char* member) {
	return new VirtualQShortcut(vtbl, static_cast<QKeySequence::StandardKey>(key), parent, member);
}

QShortcut* QShortcut_new8(struct QShortcut_VTable* vtbl, int key, QObject* parent, const char* member, const char* ambiguousMember) {
	return new VirtualQShortcut(vtbl, static_cast<QKeySequence::StandardKey>(key), parent, member, ambiguousMember);
}

QShortcut* QShortcut_new9(struct QShortcut_VTable* vtbl, int key, QObject* parent, const char* member, const char* ambiguousMember, int context) {
	return new VirtualQShortcut(vtbl, static_cast<QKeySequence::StandardKey>(key), parent, member, ambiguousMember, static_cast<Qt::ShortcutContext>(context));
}

void QShortcut_virtbase(QShortcut* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QShortcut_metaObject(const QShortcut* self) {
	return (QMetaObject*) self->metaObject();
}

void* QShortcut_metacast(QShortcut* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QShortcut_metacall(QShortcut* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QShortcut_tr(const char* s) {
	QString _ret = QShortcut::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QShortcut_setKey(QShortcut* self, QKeySequence* key) {
	self->setKey(*key);
}

QKeySequence* QShortcut_key(const QShortcut* self) {
	return new QKeySequence(self->key());
}

void QShortcut_setKeys(QShortcut* self, int key) {
	self->setKeys(static_cast<QKeySequence::StandardKey>(key));
}

void QShortcut_setKeysWithKeys(QShortcut* self, struct miqt_array /* of QKeySequence* */  keys) {
	QList<QKeySequence> keys_QList;
	keys_QList.reserve(keys.len);
	QKeySequence** keys_arr = static_cast<QKeySequence**>(keys.data);
	for(size_t i = 0; i < keys.len; ++i) {
		keys_QList.push_back(*(keys_arr[i]));
	}
	self->setKeys(keys_QList);
}

struct miqt_array /* of QKeySequence* */  QShortcut_keys(const QShortcut* self) {
	QList<QKeySequence> _ret = self->keys();
	// Convert QList<> from C++ memory to manually-managed C memory
	QKeySequence** _arr = static_cast<QKeySequence**>(malloc(sizeof(QKeySequence*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QKeySequence(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QShortcut_setEnabled(QShortcut* self, bool enable) {
	self->setEnabled(enable);
}

bool QShortcut_isEnabled(const QShortcut* self) {
	return self->isEnabled();
}

void QShortcut_setContext(QShortcut* self, int context) {
	self->setContext(static_cast<Qt::ShortcutContext>(context));
}

int QShortcut_context(const QShortcut* self) {
	Qt::ShortcutContext _ret = self->context();
	return static_cast<int>(_ret);
}

void QShortcut_setAutoRepeat(QShortcut* self, bool on) {
	self->setAutoRepeat(on);
}

bool QShortcut_autoRepeat(const QShortcut* self) {
	return self->autoRepeat();
}

int QShortcut_id(const QShortcut* self) {
	return self->id();
}

void QShortcut_setWhatsThis(QShortcut* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setWhatsThis(text_QString);
}

struct miqt_string QShortcut_whatsThis(const QShortcut* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QShortcut_activated(QShortcut* self) {
	self->activated();
}

void QShortcut_connect_activated(QShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQShortcut::connect(self, static_cast<void (QShortcut::*)()>(&QShortcut::activated), self, local_caller{slot, callback, release});
}

void QShortcut_activatedAmbiguously(QShortcut* self) {
	self->activatedAmbiguously();
}

void QShortcut_connect_activatedAmbiguously(QShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQShortcut::connect(self, static_cast<void (QShortcut::*)()>(&QShortcut::activatedAmbiguously), self, local_caller{slot, callback, release});
}

struct miqt_string QShortcut_tr2(const char* s, const char* c) {
	QString _ret = QShortcut::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QShortcut_tr3(const char* s, const char* c, int n) {
	QString _ret = QShortcut::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QShortcut_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQShortcut*)(self) )->QShortcut::metaObject();

}

void* QShortcut_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQShortcut*)(self) )->QShortcut::qt_metacast(param1);

}

int QShortcut_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQShortcut*)(self) )->QShortcut::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QShortcut_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQShortcut*)(self) )->QShortcut::event(e);

}

bool QShortcut_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQShortcut*)(self) )->QShortcut::eventFilter(watched, event);

}

void QShortcut_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQShortcut*)(self) )->QShortcut::timerEvent(event);

}

void QShortcut_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQShortcut*)(self) )->QShortcut::childEvent(event);

}

void QShortcut_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQShortcut*)(self) )->QShortcut::customEvent(event);

}

void QShortcut_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQShortcut*)(self) )->QShortcut::connectNotify(*signal);

}

void QShortcut_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQShortcut*)(self) )->QShortcut::disconnectNotify(*signal);

}

const QMetaObject* QShortcut_staticMetaObject() { return &QShortcut::staticMetaObject; }
QObject* QShortcut_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQShortcut* self_cast = dynamic_cast<VirtualQShortcut*>( (QShortcut*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QShortcut_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQShortcut* self_cast = dynamic_cast<VirtualQShortcut*>( (QShortcut*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QShortcut_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQShortcut* self_cast = dynamic_cast<VirtualQShortcut*>( (QShortcut*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QShortcut_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQShortcut* self_cast = dynamic_cast<VirtualQShortcut*>( (QShortcut*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QShortcut_delete(QShortcut* self) {
	delete self;
}

