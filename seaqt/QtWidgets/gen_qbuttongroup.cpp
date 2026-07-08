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

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

class VirtualQButtonGroup final : public QButtonGroup {
	const QButtonGroup_VTable* vtbl;
public:
	friend void* QButtonGroup_vdata(VirtualQButtonGroup* self);
	friend VirtualQButtonGroup* vdata_QButtonGroup(void* vdata);

	VirtualQButtonGroup(const QButtonGroup_VTable* vtbl): QButtonGroup(), vtbl(vtbl) {}
	VirtualQButtonGroup(const QButtonGroup_VTable* vtbl, QObject* parent): QButtonGroup(parent), vtbl(vtbl) {}

	virtual ~VirtualQButtonGroup() override { if(vtbl->destructor) vtbl->destructor(this); }

	void operator delete(void* p) { ::operator delete(p); }
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QButtonGroup::metaObject();
		}

		QMetaObject* callback_return_value = vtbl->metaObject(this);
		return callback_return_value;
	}

	friend QMetaObject* QButtonGroup_virtualbase_metaObject(const VirtualQButtonGroup* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QButtonGroup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;
		void* callback_return_value = vtbl->metacast(this, sigval1);
		return callback_return_value;
	}

	friend void* QButtonGroup_virtualbase_metacast(VirtualQButtonGroup* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QButtonGroup::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;
		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);
		return static_cast<int>(callback_return_value);
	}

	friend int QButtonGroup_virtualbase_metacall(VirtualQButtonGroup* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QButtonGroup::event(event);
		}

		QEvent* sigval1 = event;
		bool callback_return_value = vtbl->event(this, sigval1);
		return callback_return_value;
	}

	friend bool QButtonGroup_virtualbase_event(VirtualQButtonGroup* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QButtonGroup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;
		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);
		return callback_return_value;
	}

	friend bool QButtonGroup_virtualbase_eventFilter(VirtualQButtonGroup* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QButtonGroup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;
		vtbl->timerEvent(this, sigval1);
	}

	friend void QButtonGroup_virtualbase_timerEvent(VirtualQButtonGroup* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QButtonGroup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;
		vtbl->childEvent(this, sigval1);
	}

	friend void QButtonGroup_virtualbase_childEvent(VirtualQButtonGroup* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QButtonGroup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;
		vtbl->customEvent(this, sigval1);
	}

	friend void QButtonGroup_virtualbase_customEvent(VirtualQButtonGroup* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QButtonGroup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->connectNotify(this, sigval1);
	}

	friend void QButtonGroup_virtualbase_connectNotify(VirtualQButtonGroup* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QButtonGroup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);
		vtbl->disconnectNotify(this, sigval1);
	}

	friend void QButtonGroup_virtualbase_disconnectNotify(VirtualQButtonGroup* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QButtonGroup_protectedbase_sender(const VirtualQButtonGroup* self);
	friend int QButtonGroup_protectedbase_senderSignalIndex(const VirtualQButtonGroup* self);
	friend int QButtonGroup_protectedbase_receivers(const VirtualQButtonGroup* self, const char* signal);
	friend bool QButtonGroup_protectedbase_isSignalConnected(const VirtualQButtonGroup* self, QMetaMethod* signal);
};

VirtualQButtonGroup* QButtonGroup_new(const QButtonGroup_VTable* vtbl, size_t vdata) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQButtonGroup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQButtonGroup(vtbl) : nullptr;
}

VirtualQButtonGroup* QButtonGroup_new_parent(const QButtonGroup_VTable* vtbl, size_t vdata, QObject* parent) {
	void* _mem_ = ::operator new(seaqt_aligned_sizeof<VirtualQButtonGroup>() + vdata, std::nothrow);
	return _mem_ ? new (_mem_)VirtualQButtonGroup(vtbl, parent) : nullptr;
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

struct seaqt_string QButtonGroup_tr_s(const char* s) {
	QString _ret = QButtonGroup::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
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

void QButtonGroup_addButton_QAbstractButton(QButtonGroup* self, QAbstractButton* param1) {
	self->addButton(param1);
}

void QButtonGroup_removeButton(QButtonGroup* self, QAbstractButton* param1) {
	self->removeButton(param1);
}

struct seaqt_array /* of QAbstractButton* */  QButtonGroup_buttons(const QButtonGroup* self) {
	QList<QAbstractButton *> _ret = self->buttons();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAbstractButton** _arr = static_cast<QAbstractButton**>(malloc(sizeof(QAbstractButton*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct seaqt_array _out;
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

void QButtonGroup_connect_buttonClicked(QButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t)) {
	QButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(QAbstractButton*)>(&QButtonGroup::buttonClicked), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractButton* param1) {
			QAbstractButton* sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QButtonGroup_buttonPressed(QButtonGroup* self, QAbstractButton* param1) {
	self->buttonPressed(param1);
}

void QButtonGroup_connect_buttonPressed(QButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t)) {
	QButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(QAbstractButton*)>(&QButtonGroup::buttonPressed), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractButton* param1) {
			QAbstractButton* sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QButtonGroup_buttonReleased(QButtonGroup* self, QAbstractButton* param1) {
	self->buttonReleased(param1);
}

void QButtonGroup_connect_buttonReleased(QButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*), void (*release)(intptr_t)) {
	QButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(QAbstractButton*)>(&QButtonGroup::buttonReleased), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractButton* param1) {
			QAbstractButton* sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QButtonGroup_buttonToggled(QButtonGroup* self, QAbstractButton* param1, bool param2) {
	self->buttonToggled(param1, param2);
}

void QButtonGroup_connect_buttonToggled(QButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, QAbstractButton*, bool), void (*release)(intptr_t)) {
	QButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(QAbstractButton*, bool)>(&QButtonGroup::buttonToggled), self, [callback, release = seaqt::release_callback{slot,release}](QAbstractButton* param1, bool param2) {
			QAbstractButton* sigval1 = param1;
			bool sigval2 = param2;
			callback(release.slot, sigval1, sigval2);
	});
}

void QButtonGroup_idClicked(QButtonGroup* self, int param1) {
	self->idClicked(static_cast<int>(param1));
}

void QButtonGroup_connect_idClicked(QButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(int)>(&QButtonGroup::idClicked), self, [callback, release = seaqt::release_callback{slot,release}](int param1) {
			int sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QButtonGroup_idPressed(QButtonGroup* self, int param1) {
	self->idPressed(static_cast<int>(param1));
}

void QButtonGroup_connect_idPressed(QButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(int)>(&QButtonGroup::idPressed), self, [callback, release = seaqt::release_callback{slot,release}](int param1) {
			int sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QButtonGroup_idReleased(QButtonGroup* self, int param1) {
	self->idReleased(static_cast<int>(param1));
}

void QButtonGroup_connect_idReleased(QButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	QButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(int)>(&QButtonGroup::idReleased), self, [callback, release = seaqt::release_callback{slot,release}](int param1) {
			int sigval1 = param1;
			callback(release.slot, sigval1);
	});
}

void QButtonGroup_idToggled(QButtonGroup* self, int param1, bool param2) {
	self->idToggled(static_cast<int>(param1), param2);
}

void QButtonGroup_connect_idToggled(QButtonGroup* self, intptr_t slot, void (*callback)(intptr_t, int, bool), void (*release)(intptr_t)) {
	QButtonGroup::connect(self, static_cast<void (QButtonGroup::*)(int, bool)>(&QButtonGroup::idToggled), self, [callback, release = seaqt::release_callback{slot,release}](int param1, bool param2) {
			int sigval1 = param1;
			bool sigval2 = param2;
			callback(release.slot, sigval1, sigval2);
	});
}

struct seaqt_string QButtonGroup_tr_s_c(const char* s, const char* c) {
	QString _ret = QButtonGroup::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct seaqt_string QButtonGroup_tr_s_c_n(const char* s, const char* c, int n) {
	QString _ret = QButtonGroup::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct seaqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QButtonGroup_addButton_QAbstractButton_int(QButtonGroup* self, QAbstractButton* param1, int id) {
	self->addButton(param1, static_cast<int>(id));
}

const QMetaObject* QButtonGroup_staticMetaObject() { return &QButtonGroup::staticMetaObject; }
void* QButtonGroup_vdata(VirtualQButtonGroup* self) { return reinterpret_cast<void*>(reinterpret_cast<char*>(self) + seaqt_aligned_sizeof<VirtualQButtonGroup>()); }
VirtualQButtonGroup* vdata_QButtonGroup(void* vdata) { return reinterpret_cast<VirtualQButtonGroup*>(reinterpret_cast<char*>(vdata) - seaqt_aligned_sizeof<VirtualQButtonGroup>()); }

QMetaObject* QButtonGroup_virtualbase_metaObject(const VirtualQButtonGroup* self) {

	return (QMetaObject*) self->QButtonGroup::metaObject();
}

void* QButtonGroup_virtualbase_metacast(VirtualQButtonGroup* self, const char* param1) {

	return self->QButtonGroup::qt_metacast(param1);
}

int QButtonGroup_virtualbase_metacall(VirtualQButtonGroup* self, int param1, int param2, void** param3) {

	return self->QButtonGroup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QButtonGroup_virtualbase_event(VirtualQButtonGroup* self, QEvent* event) {

	return self->QButtonGroup::event(event);
}

bool QButtonGroup_virtualbase_eventFilter(VirtualQButtonGroup* self, QObject* watched, QEvent* event) {

	return self->QButtonGroup::eventFilter(watched, event);
}

void QButtonGroup_virtualbase_timerEvent(VirtualQButtonGroup* self, QTimerEvent* event) {

	self->QButtonGroup::timerEvent(event);
}

void QButtonGroup_virtualbase_childEvent(VirtualQButtonGroup* self, QChildEvent* event) {

	self->QButtonGroup::childEvent(event);
}

void QButtonGroup_virtualbase_customEvent(VirtualQButtonGroup* self, QEvent* event) {

	self->QButtonGroup::customEvent(event);
}

void QButtonGroup_virtualbase_connectNotify(VirtualQButtonGroup* self, QMetaMethod* signal) {

	self->QButtonGroup::connectNotify(*signal);
}

void QButtonGroup_virtualbase_disconnectNotify(VirtualQButtonGroup* self, QMetaMethod* signal) {

	self->QButtonGroup::disconnectNotify(*signal);
}

QObject* QButtonGroup_protectedbase_sender(const VirtualQButtonGroup* self) {
	return self->sender();
}

int QButtonGroup_protectedbase_senderSignalIndex(const VirtualQButtonGroup* self) {
	return self->senderSignalIndex();
}

int QButtonGroup_protectedbase_receivers(const VirtualQButtonGroup* self, const char* signal) {
	return self->receivers(signal);
}

bool QButtonGroup_protectedbase_isSignalConnected(const VirtualQButtonGroup* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QButtonGroup_delete(QButtonGroup* self) {
	delete self;
}

