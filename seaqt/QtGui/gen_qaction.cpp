#include <QAction>
#include <QActionGroup>
#include <QChildEvent>
#include <QEvent>
#include <QFont>
#include <QIcon>
#include <QKeySequence>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qaction.h>
#include "gen_qaction.h"
class VirtualQAction final : public QAction {
	const QAction_VTable* vtbl;
	void* vdata;
public:
	friend const QAction_VTable* QAction_vtbl(const VirtualQAction* self);
	friend void* QAction_vdata(const VirtualQAction* self);
	friend void QAction_setVdata(VirtualQAction* self, void* vdata);

	VirtualQAction(const QAction_VTable* vtbl, void* vdata): QAction(), vtbl(vtbl), vdata(vdata) {}
	VirtualQAction(const QAction_VTable* vtbl, void* vdata, const QString& text): QAction(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQAction(const QAction_VTable* vtbl, void* vdata, const QIcon& icon, const QString& text): QAction(icon, text), vtbl(vtbl), vdata(vdata) {}
	VirtualQAction(const QAction_VTable* vtbl, void* vdata, QObject* parent): QAction(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAction(const QAction_VTable* vtbl, void* vdata, const QString& text, QObject* parent): QAction(text, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAction(const QAction_VTable* vtbl, void* vdata, const QIcon& icon, const QString& text, QObject* parent): QAction(icon, text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAction() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAction::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAction_virtualbase_metaObject(const VirtualQAction* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAction::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAction_virtualbase_metacast(VirtualQAction* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAction::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAction_virtualbase_metacall(VirtualQAction* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QAction::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAction_virtualbase_event(VirtualQAction* self, QEvent* param1);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAction::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAction_virtualbase_eventFilter(VirtualQAction* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAction::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAction_virtualbase_timerEvent(VirtualQAction* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAction::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAction_virtualbase_childEvent(VirtualQAction* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAction::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAction_virtualbase_customEvent(VirtualQAction* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAction::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAction_virtualbase_connectNotify(VirtualQAction* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAction::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAction_virtualbase_disconnectNotify(VirtualQAction* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAction_protectedbase_sender(const VirtualQAction* self);
	friend int QAction_protectedbase_senderSignalIndex(const VirtualQAction* self);
	friend int QAction_protectedbase_receivers(const VirtualQAction* self, const char* signal);
	friend bool QAction_protectedbase_isSignalConnected(const VirtualQAction* self, QMetaMethod* signal);
};

VirtualQAction* QAction_new(const QAction_VTable* vtbl, void* vdata) {
	return new VirtualQAction(vtbl, vdata);
}

VirtualQAction* QAction_new2(const QAction_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAction(vtbl, vdata, text_QString);
}

VirtualQAction* QAction_new3(const QAction_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAction(vtbl, vdata, *icon, text_QString);
}

VirtualQAction* QAction_new4(const QAction_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQAction(vtbl, vdata, parent);
}

VirtualQAction* QAction_new5(const QAction_VTable* vtbl, void* vdata, struct miqt_string text, QObject* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAction(vtbl, vdata, text_QString, parent);
}

VirtualQAction* QAction_new6(const QAction_VTable* vtbl, void* vdata, QIcon* icon, struct miqt_string text, QObject* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQAction(vtbl, vdata, *icon, text_QString, parent);
}

void QAction_virtbase(QAction* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAction_metaObject(const QAction* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAction_metacast(QAction* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAction_metacall(QAction* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAction_tr(const char* s) {
	QString _ret = QAction::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QObject* */  QAction_associatedObjects(const QAction* self) {
	QList<QObject *> _ret = self->associatedObjects();
	// Convert QList<> from C++ memory to manually-managed C memory
	QObject** _arr = static_cast<QObject**>(malloc(sizeof(QObject*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QAction_setActionGroup(QAction* self, QActionGroup* group) {
	self->setActionGroup(group);
}

QActionGroup* QAction_actionGroup(const QAction* self) {
	return self->actionGroup();
}

void QAction_setIcon(QAction* self, QIcon* icon) {
	self->setIcon(*icon);
}

QIcon* QAction_icon(const QAction* self) {
	return new QIcon(self->icon());
}

void QAction_setText(QAction* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

struct miqt_string QAction_text(const QAction* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAction_setIconText(QAction* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setIconText(text_QString);
}

struct miqt_string QAction_iconText(const QAction* self) {
	QString _ret = self->iconText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAction_setToolTip(QAction* self, struct miqt_string tip) {
	QString tip_QString = QString::fromUtf8(tip.data, tip.len);
	self->setToolTip(tip_QString);
}

struct miqt_string QAction_toolTip(const QAction* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAction_setStatusTip(QAction* self, struct miqt_string statusTip) {
	QString statusTip_QString = QString::fromUtf8(statusTip.data, statusTip.len);
	self->setStatusTip(statusTip_QString);
}

struct miqt_string QAction_statusTip(const QAction* self) {
	QString _ret = self->statusTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAction_setWhatsThis(QAction* self, struct miqt_string what) {
	QString what_QString = QString::fromUtf8(what.data, what.len);
	self->setWhatsThis(what_QString);
}

struct miqt_string QAction_whatsThis(const QAction* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAction_setPriority(QAction* self, int priority) {
	self->setPriority(static_cast<QAction::Priority>(priority));
}

int QAction_priority(const QAction* self) {
	QAction::Priority _ret = self->priority();
	return static_cast<int>(_ret);
}

void QAction_setSeparator(QAction* self, bool b) {
	self->setSeparator(b);
}

bool QAction_isSeparator(const QAction* self) {
	return self->isSeparator();
}

void QAction_setShortcut(QAction* self, QKeySequence* shortcut) {
	self->setShortcut(*shortcut);
}

QKeySequence* QAction_shortcut(const QAction* self) {
	return new QKeySequence(self->shortcut());
}

void QAction_setShortcuts(QAction* self, struct miqt_array /* of QKeySequence* */  shortcuts) {
	QList<QKeySequence> shortcuts_QList;
	shortcuts_QList.reserve(shortcuts.len);
	QKeySequence** shortcuts_arr = static_cast<QKeySequence**>(shortcuts.data);
	for(size_t i = 0; i < shortcuts.len; ++i) {
		shortcuts_QList.push_back(*(shortcuts_arr[i]));
	}
	self->setShortcuts(shortcuts_QList);
}

void QAction_setShortcutsWithShortcuts(QAction* self, int shortcuts) {
	self->setShortcuts(static_cast<QKeySequence::StandardKey>(shortcuts));
}

struct miqt_array /* of QKeySequence* */  QAction_shortcuts(const QAction* self) {
	QList<QKeySequence> _ret = self->shortcuts();
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

void QAction_setShortcutContext(QAction* self, int context) {
	self->setShortcutContext(static_cast<Qt::ShortcutContext>(context));
}

int QAction_shortcutContext(const QAction* self) {
	Qt::ShortcutContext _ret = self->shortcutContext();
	return static_cast<int>(_ret);
}

void QAction_setAutoRepeat(QAction* self, bool autoRepeat) {
	self->setAutoRepeat(autoRepeat);
}

bool QAction_autoRepeat(const QAction* self) {
	return self->autoRepeat();
}

void QAction_setFont(QAction* self, QFont* font) {
	self->setFont(*font);
}

QFont* QAction_font(const QAction* self) {
	return new QFont(self->font());
}

void QAction_setCheckable(QAction* self, bool checkable) {
	self->setCheckable(checkable);
}

bool QAction_isCheckable(const QAction* self) {
	return self->isCheckable();
}

QVariant* QAction_data(const QAction* self) {
	return new QVariant(self->data());
}

void QAction_setData(QAction* self, QVariant* var) {
	self->setData(*var);
}

bool QAction_isChecked(const QAction* self) {
	return self->isChecked();
}

bool QAction_isEnabled(const QAction* self) {
	return self->isEnabled();
}

bool QAction_isVisible(const QAction* self) {
	return self->isVisible();
}

void QAction_activate(QAction* self, int event) {
	self->activate(static_cast<QAction::ActionEvent>(event));
}

void QAction_setMenuRole(QAction* self, int menuRole) {
	self->setMenuRole(static_cast<QAction::MenuRole>(menuRole));
}

int QAction_menuRole(const QAction* self) {
	QAction::MenuRole _ret = self->menuRole();
	return static_cast<int>(_ret);
}

void QAction_setIconVisibleInMenu(QAction* self, bool visible) {
	self->setIconVisibleInMenu(visible);
}

bool QAction_isIconVisibleInMenu(const QAction* self) {
	return self->isIconVisibleInMenu();
}

void QAction_setShortcutVisibleInContextMenu(QAction* self, bool show) {
	self->setShortcutVisibleInContextMenu(show);
}

bool QAction_isShortcutVisibleInContextMenu(const QAction* self) {
	return self->isShortcutVisibleInContextMenu();
}

bool QAction_showStatusText(QAction* self) {
	return self->showStatusText();
}

void QAction_trigger(QAction* self) {
	self->trigger();
}

void QAction_hover(QAction* self) {
	self->hover();
}

void QAction_setChecked(QAction* self, bool checked) {
	self->setChecked(checked);
}

void QAction_toggle(QAction* self) {
	self->toggle();
}

void QAction_setEnabled(QAction* self, bool enabled) {
	self->setEnabled(enabled);
}

void QAction_resetEnabled(QAction* self) {
	self->resetEnabled();
}

void QAction_setDisabled(QAction* self, bool b) {
	self->setDisabled(b);
}

void QAction_setVisible(QAction* self, bool visible) {
	self->setVisible(visible);
}

void QAction_changed(QAction* self) {
	self->changed();
}

void QAction_connect_changed(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAction::connect(self, static_cast<void (QAction::*)()>(&QAction::changed), self, local_caller{slot, callback, release});
}

void QAction_enabledChanged(QAction* self, bool enabled) {
	self->enabledChanged(enabled);
}

void QAction_connect_enabledChanged(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool enabled) {
			bool sigval1 = enabled;
			callback(slot, sigval1);
		}
	};
	VirtualQAction::connect(self, static_cast<void (QAction::*)(bool)>(&QAction::enabledChanged), self, local_caller{slot, callback, release});
}

void QAction_checkableChanged(QAction* self, bool checkable) {
	self->checkableChanged(checkable);
}

void QAction_connect_checkableChanged(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool checkable) {
			bool sigval1 = checkable;
			callback(slot, sigval1);
		}
	};
	VirtualQAction::connect(self, static_cast<void (QAction::*)(bool)>(&QAction::checkableChanged), self, local_caller{slot, callback, release});
}

void QAction_visibleChanged(QAction* self) {
	self->visibleChanged();
}

void QAction_connect_visibleChanged(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAction::connect(self, static_cast<void (QAction::*)()>(&QAction::visibleChanged), self, local_caller{slot, callback, release});
}

void QAction_triggered(QAction* self) {
	self->triggered();
}

void QAction_connect_triggered(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAction::connect(self, static_cast<void (QAction::*)(bool)>(&QAction::triggered), self, local_caller{slot, callback, release});
}

void QAction_hovered(QAction* self) {
	self->hovered();
}

void QAction_connect_hovered(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAction::connect(self, static_cast<void (QAction::*)()>(&QAction::hovered), self, local_caller{slot, callback, release});
}

void QAction_toggled(QAction* self, bool param1) {
	self->toggled(param1);
}

void QAction_connect_toggled(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQAction::connect(self, static_cast<void (QAction::*)(bool)>(&QAction::toggled), self, local_caller{slot, callback, release});
}

struct miqt_string QAction_tr2(const char* s, const char* c) {
	QString _ret = QAction::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAction_tr3(const char* s, const char* c, int n) {
	QString _ret = QAction::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAction_showStatusText1(QAction* self, QObject* object) {
	return self->showStatusText(object);
}

void QAction_triggered1(QAction* self, bool checked) {
	self->triggered(checked);
}

void QAction_connect_triggered1(VirtualQAction* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool checked) {
			bool sigval1 = checked;
			callback(slot, sigval1);
		}
	};
	VirtualQAction::connect(self, static_cast<void (QAction::*)(bool)>(&QAction::triggered), self, local_caller{slot, callback, release});
}

QMetaObject* QAction_virtualbase_metaObject(const VirtualQAction* self) {

	return (QMetaObject*) self->QAction::metaObject();
}

void* QAction_virtualbase_metacast(VirtualQAction* self, const char* param1) {

	return self->QAction::qt_metacast(param1);
}

int QAction_virtualbase_metacall(VirtualQAction* self, int param1, int param2, void** param3) {

	return self->QAction::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QAction_virtualbase_event(VirtualQAction* self, QEvent* param1) {

	return self->QAction::event(param1);
}

bool QAction_virtualbase_eventFilter(VirtualQAction* self, QObject* watched, QEvent* event) {

	return self->QAction::eventFilter(watched, event);
}

void QAction_virtualbase_timerEvent(VirtualQAction* self, QTimerEvent* event) {

	self->QAction::timerEvent(event);
}

void QAction_virtualbase_childEvent(VirtualQAction* self, QChildEvent* event) {

	self->QAction::childEvent(event);
}

void QAction_virtualbase_customEvent(VirtualQAction* self, QEvent* event) {

	self->QAction::customEvent(event);
}

void QAction_virtualbase_connectNotify(VirtualQAction* self, QMetaMethod* signal) {

	self->QAction::connectNotify(*signal);
}

void QAction_virtualbase_disconnectNotify(VirtualQAction* self, QMetaMethod* signal) {

	self->QAction::disconnectNotify(*signal);
}

const QMetaObject* QAction_staticMetaObject() { return &QAction::staticMetaObject; }

const QAction_VTable* QAction_vtbl(const VirtualQAction* self) { return self->vtbl; }
void* QAction_vdata(const VirtualQAction* self) { return self->vdata; }
void QAction_setVdata(VirtualQAction* self, void* vdata) { self->vdata = vdata; }

QObject* QAction_protectedbase_sender(const VirtualQAction* self) {
	return self->sender();
}

int QAction_protectedbase_senderSignalIndex(const VirtualQAction* self) {
	return self->senderSignalIndex();
}

int QAction_protectedbase_receivers(const VirtualQAction* self, const char* signal) {
	return self->receivers(signal);
}

bool QAction_protectedbase_isSignalConnected(const VirtualQAction* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAction_delete(QAction* self) {
	delete self;
}

