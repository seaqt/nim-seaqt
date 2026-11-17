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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQShortcut final : public QShortcut {
	const QShortcut_VTable* vtbl;
public:
	friend void* QShortcut_vdata(VirtualQShortcut* self);
	friend VirtualQShortcut* vdata_QShortcut(void* vdata);

	VirtualQShortcut(const QShortcut_VTable* vtbl, QObject* parent): QShortcut(parent), vtbl(vtbl) {}
	VirtualQShortcut(const QShortcut_VTable* vtbl, const QKeySequence& key, QObject* parent): QShortcut(key, parent), vtbl(vtbl) {}
	VirtualQShortcut(const QShortcut_VTable* vtbl, QKeySequence::StandardKey key, QObject* parent): QShortcut(key, parent), vtbl(vtbl) {}
	VirtualQShortcut(const QShortcut_VTable* vtbl, const QKeySequence& key, QObject* parent, const char* member): QShortcut(key, parent, member), vtbl(vtbl) {}
	VirtualQShortcut(const QShortcut_VTable* vtbl, const QKeySequence& key, QObject* parent, const char* member, const char* ambiguousMember): QShortcut(key, parent, member, ambiguousMember), vtbl(vtbl) {}
	VirtualQShortcut(const QShortcut_VTable* vtbl, const QKeySequence& key, QObject* parent, const char* member, const char* ambiguousMember, Qt::ShortcutContext context): QShortcut(key, parent, member, ambiguousMember, context), vtbl(vtbl) {}
	VirtualQShortcut(const QShortcut_VTable* vtbl, QKeySequence::StandardKey key, QObject* parent, const char* member): QShortcut(key, parent, member), vtbl(vtbl) {}
	VirtualQShortcut(const QShortcut_VTable* vtbl, QKeySequence::StandardKey key, QObject* parent, const char* member, const char* ambiguousMember): QShortcut(key, parent, member, ambiguousMember), vtbl(vtbl) {}
	VirtualQShortcut(const QShortcut_VTable* vtbl, QKeySequence::StandardKey key, QObject* parent, const char* member, const char* ambiguousMember, Qt::ShortcutContext context): QShortcut(key, parent, member, ambiguousMember, context), vtbl(vtbl) {}

	virtual ~VirtualQShortcut() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QShortcut::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QShortcut_virtualbase_metaObject(const VirtualQShortcut* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QShortcut::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QShortcut_virtualbase_metacast(VirtualQShortcut* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QShortcut::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QShortcut_virtualbase_metacall(VirtualQShortcut* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QShortcut::event(e);
		}

		QEvent* sigval1 = e;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QShortcut_virtualbase_event(VirtualQShortcut* self, QEvent* e);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QShortcut::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QShortcut_virtualbase_eventFilter(VirtualQShortcut* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QShortcut::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QShortcut_virtualbase_timerEvent(VirtualQShortcut* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QShortcut::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QShortcut_virtualbase_childEvent(VirtualQShortcut* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QShortcut::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QShortcut_virtualbase_customEvent(VirtualQShortcut* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QShortcut::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QShortcut_virtualbase_connectNotify(VirtualQShortcut* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QShortcut::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QShortcut_virtualbase_disconnectNotify(VirtualQShortcut* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QShortcut_protectedbase_sender(const VirtualQShortcut* self);
	friend int QShortcut_protectedbase_senderSignalIndex(const VirtualQShortcut* self);
	friend int QShortcut_protectedbase_receivers(const VirtualQShortcut* self, const char* signal);
	friend bool QShortcut_protectedbase_isSignalConnected(const VirtualQShortcut* self, QMetaMethod* signal);
};

VirtualQShortcut* QShortcut_new_QObject(const QShortcut_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, parent) : nullptr;
}

VirtualQShortcut* QShortcut_new_QKeySequence_QObject(const QShortcut_VTable* vtbl, size_t vdata, QKeySequence* key, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, *key, parent) : nullptr;
}

VirtualQShortcut* QShortcut_new_QKeySequence_StandardKey_QObject(const QShortcut_VTable* vtbl, size_t vdata, int key, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, static_cast<QKeySequence::StandardKey>(key), parent) : nullptr;
}

VirtualQShortcut* QShortcut_new_QKeySequence_QObject_char(const QShortcut_VTable* vtbl, size_t vdata, QKeySequence* key, QObject* parent, const char* member) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, *key, parent, member) : nullptr;
}

VirtualQShortcut* QShortcut_new_QKeySequence_QObject_char_char(const QShortcut_VTable* vtbl, size_t vdata, QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, *key, parent, member, ambiguousMember) : nullptr;
}

VirtualQShortcut* QShortcut_new_QKeySequence_QObject_char_char_Qt_ShortcutContext(const QShortcut_VTable* vtbl, size_t vdata, QKeySequence* key, QObject* parent, const char* member, const char* ambiguousMember, int context) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, *key, parent, member, ambiguousMember, static_cast<Qt::ShortcutContext>(context)) : nullptr;
}

VirtualQShortcut* QShortcut_new_QKeySequence_StandardKey_QObject_char(const QShortcut_VTable* vtbl, size_t vdata, int key, QObject* parent, const char* member) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, static_cast<QKeySequence::StandardKey>(key), parent, member) : nullptr;
}

VirtualQShortcut* QShortcut_new_QKeySequence_StandardKey_QObject_char_char(const QShortcut_VTable* vtbl, size_t vdata, int key, QObject* parent, const char* member, const char* ambiguousMember) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, static_cast<QKeySequence::StandardKey>(key), parent, member, ambiguousMember) : nullptr;
}

VirtualQShortcut* QShortcut_new_QKeySequence_StandardKey_QObject_char_char_Qt_ShortcutContext(const QShortcut_VTable* vtbl, size_t vdata, int key, QObject* parent, const char* member, const char* ambiguousMember, int context) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQShortcut>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQShortcut(vtbl, static_cast<QKeySequence::StandardKey>(key), parent, member, ambiguousMember, static_cast<Qt::ShortcutContext>(context)) : nullptr;
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

struct seaqt_string QShortcut_tr_s(const char* s) {
	QString _ret = QShortcut::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

void QShortcut_setKeys_key(QShortcut* self, int key) {
	self->setKeys(static_cast<QKeySequence::StandardKey>(key));
}

void QShortcut_setKeys_keys(QShortcut* self, struct seaqt_array /* of QKeySequence* */  keys) {
	QList<QKeySequence> keys_QList;
	keys_QList.reserve(keys.len);
	QKeySequence** keys_arr = static_cast<QKeySequence**>(keys.data);
	for(size_t i = 0; i < keys.len; ++i) {
		keys_QList.push_back(*(keys_arr[i]));
	}
	self->setKeys(keys_QList);
}

struct seaqt_array /* of QKeySequence* */  QShortcut_keys(const QShortcut* self) {
	QList<QKeySequence> _ret = self->keys();
	// Convert QList<> from C++ memory to manually-managed C memory
	QKeySequence** _arr = static_cast<QKeySequence**>(malloc(sizeof(QKeySequence*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QKeySequence(_ret[i]);
	}
	struct seaqt_array _out;
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

void QShortcut_setWhatsThis(QShortcut* self, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setWhatsThis(text_QString);
}

struct seaqt_string QShortcut_whatsThis(const QShortcut* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QShortcut_activated(QShortcut* self) {
	self->activated();
}

void QShortcut_connect_activated(QShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QShortcut::connect(self, static_cast<void (QShortcut::*)()>(&QShortcut::activated), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

void QShortcut_activatedAmbiguously(QShortcut* self) {
	self->activatedAmbiguously();
}

void QShortcut_connect_activatedAmbiguously(QShortcut* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	QShortcut::connect(self, static_cast<void (QShortcut::*)()>(&QShortcut::activatedAmbiguously), self, [callback, release = seaqt::release_callback{slot,release}]() {
			callback(release.slot);
	});
}

struct seaqt_string QShortcut_tr_s_c(const char* s, const char* c) {
	QString _ret = QShortcut::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QShortcut_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QShortcut::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QShortcut_staticMetaObject() { return &QShortcut::staticMetaObject; }
void* QShortcut_vdata(VirtualQShortcut* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQShortcut>()); }
VirtualQShortcut* vdata_QShortcut(void* vdata) { return reinterpret_cast<VirtualQShortcut*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQShortcut>()); }

QMetaObject* QShortcut_virtualbase_metaObject(const VirtualQShortcut* self) {

	return (QMetaObject*) self->QShortcut::metaObject();
}

void* QShortcut_virtualbase_metacast(VirtualQShortcut* self, const char* param1) {

	return self->QShortcut::qt_metacast(param1);
}

int QShortcut_virtualbase_metacall(VirtualQShortcut* self, int param1, int param2, void** param3) {

	return self->QShortcut::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QShortcut_virtualbase_event(VirtualQShortcut* self, QEvent* e) {

	return self->QShortcut::event(e);
}

bool QShortcut_virtualbase_eventFilter(VirtualQShortcut* self, QObject* watched, QEvent* event) {

	return self->QShortcut::eventFilter(watched, event);
}

void QShortcut_virtualbase_timerEvent(VirtualQShortcut* self, QTimerEvent* event) {

	self->QShortcut::timerEvent(event);
}

void QShortcut_virtualbase_childEvent(VirtualQShortcut* self, QChildEvent* event) {

	self->QShortcut::childEvent(event);
}

void QShortcut_virtualbase_customEvent(VirtualQShortcut* self, QEvent* event) {

	self->QShortcut::customEvent(event);
}

void QShortcut_virtualbase_connectNotify(VirtualQShortcut* self, QMetaMethod* signal) {

	self->QShortcut::connectNotify(*signal);
}

void QShortcut_virtualbase_disconnectNotify(VirtualQShortcut* self, QMetaMethod* signal) {

	self->QShortcut::disconnectNotify(*signal);
}

QObject* QShortcut_protectedbase_sender(const VirtualQShortcut* self) {
	return self->QShortcut::sender();
}

int QShortcut_protectedbase_senderSignalIndex(const VirtualQShortcut* self) {
	return self->QShortcut::senderSignalIndex();
}

int QShortcut_protectedbase_receivers(const VirtualQShortcut* self, const char* signal) {
	return self->QShortcut::receivers(signal);
}

bool QShortcut_protectedbase_isSignalConnected(const VirtualQShortcut* self, QMetaMethod* signal) {
	return self->QShortcut::isSignalConnected(*signal);
}

void QShortcut_delete(QShortcut* self) {
	delete self;
}

