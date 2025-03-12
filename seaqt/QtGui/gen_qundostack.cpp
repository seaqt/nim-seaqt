#include <QAction>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUndoCommand>
#include <QUndoStack>
#include <qundostack.h>
#include "gen_qundostack.h"
class VirtualQUndoCommand final : public QUndoCommand {
	const QUndoCommand_VTable* vtbl;
	void* vdata;
public:
	friend const QUndoCommand_VTable* QUndoCommand_vtbl(const VirtualQUndoCommand* self);
	friend void* QUndoCommand_vdata(const VirtualQUndoCommand* self);
	friend void QUndoCommand_setVdata(VirtualQUndoCommand* self, void* vdata);

	VirtualQUndoCommand(const QUndoCommand_VTable* vtbl, void* vdata): QUndoCommand(), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoCommand(const QUndoCommand_VTable* vtbl, void* vdata, const QString& text): QUndoCommand(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoCommand(const QUndoCommand_VTable* vtbl, void* vdata, QUndoCommand* parent): QUndoCommand(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoCommand(const QUndoCommand_VTable* vtbl, void* vdata, const QString& text, QUndoCommand* parent): QUndoCommand(text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQUndoCommand() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual void undo() override {
		if (vtbl->undo == 0) {
			QUndoCommand::undo();
			return;
		}


		vtbl->undo(this);

	}

	friend void QUndoCommand_virtualbase_undo(VirtualQUndoCommand* self);

	virtual void redo() override {
		if (vtbl->redo == 0) {
			QUndoCommand::redo();
			return;
		}


		vtbl->redo(this);

	}

	friend void QUndoCommand_virtualbase_redo(VirtualQUndoCommand* self);

	virtual int id() const override {
		if (vtbl->id == 0) {
			return QUndoCommand::id();
		}


		int callback_return_value = vtbl->id(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoCommand_virtualbase_id(const VirtualQUndoCommand* self);

	virtual bool mergeWith(const QUndoCommand* other) override {
		if (vtbl->mergeWith == 0) {
			return QUndoCommand::mergeWith(other);
		}

		QUndoCommand* sigval1 = (QUndoCommand*) other;

		bool callback_return_value = vtbl->mergeWith(this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoCommand_virtualbase_mergeWith(VirtualQUndoCommand* self, QUndoCommand* other);

};

VirtualQUndoCommand* QUndoCommand_new(const QUndoCommand_VTable* vtbl, void* vdata) {
	return new VirtualQUndoCommand(vtbl, vdata);
}

VirtualQUndoCommand* QUndoCommand_new2(const QUndoCommand_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQUndoCommand(vtbl, vdata, text_QString);
}

VirtualQUndoCommand* QUndoCommand_new3(const QUndoCommand_VTable* vtbl, void* vdata, QUndoCommand* parent) {
	return new VirtualQUndoCommand(vtbl, vdata, parent);
}

VirtualQUndoCommand* QUndoCommand_new4(const QUndoCommand_VTable* vtbl, void* vdata, struct miqt_string text, QUndoCommand* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQUndoCommand(vtbl, vdata, text_QString, parent);
}

void QUndoCommand_undo(QUndoCommand* self) {
	self->undo();
}

void QUndoCommand_redo(QUndoCommand* self) {
	self->redo();
}

struct miqt_string QUndoCommand_text(const QUndoCommand* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUndoCommand_actionText(const QUndoCommand* self) {
	QString _ret = self->actionText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUndoCommand_setText(QUndoCommand* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

bool QUndoCommand_isObsolete(const QUndoCommand* self) {
	return self->isObsolete();
}

void QUndoCommand_setObsolete(QUndoCommand* self, bool obsolete) {
	self->setObsolete(obsolete);
}

int QUndoCommand_id(const QUndoCommand* self) {
	return self->id();
}

bool QUndoCommand_mergeWith(QUndoCommand* self, QUndoCommand* other) {
	return self->mergeWith(other);
}

int QUndoCommand_childCount(const QUndoCommand* self) {
	return self->childCount();
}

QUndoCommand* QUndoCommand_child(const QUndoCommand* self, int index) {
	return (QUndoCommand*) self->child(static_cast<int>(index));
}

void QUndoCommand_virtualbase_undo(VirtualQUndoCommand* self) {

	self->QUndoCommand::undo();
}

void QUndoCommand_virtualbase_redo(VirtualQUndoCommand* self) {

	self->QUndoCommand::redo();
}

int QUndoCommand_virtualbase_id(const VirtualQUndoCommand* self) {

	return self->QUndoCommand::id();
}

bool QUndoCommand_virtualbase_mergeWith(VirtualQUndoCommand* self, QUndoCommand* other) {

	return self->QUndoCommand::mergeWith(other);
}

const QUndoCommand_VTable* QUndoCommand_vtbl(const VirtualQUndoCommand* self) { return self->vtbl; }
void* QUndoCommand_vdata(const VirtualQUndoCommand* self) { return self->vdata; }
void QUndoCommand_setVdata(VirtualQUndoCommand* self, void* vdata) { self->vdata = vdata; }

void QUndoCommand_delete(QUndoCommand* self) {
	delete self;
}

class VirtualQUndoStack final : public QUndoStack {
	const QUndoStack_VTable* vtbl;
	void* vdata;
public:
	friend const QUndoStack_VTable* QUndoStack_vtbl(const VirtualQUndoStack* self);
	friend void* QUndoStack_vdata(const VirtualQUndoStack* self);
	friend void QUndoStack_setVdata(VirtualQUndoStack* self, void* vdata);

	VirtualQUndoStack(const QUndoStack_VTable* vtbl, void* vdata): QUndoStack(), vtbl(vtbl), vdata(vdata) {}
	VirtualQUndoStack(const QUndoStack_VTable* vtbl, void* vdata, QObject* parent): QUndoStack(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQUndoStack() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QUndoStack::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QUndoStack_virtualbase_metaObject(const VirtualQUndoStack* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QUndoStack::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QUndoStack_virtualbase_metacast(VirtualQUndoStack* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QUndoStack::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QUndoStack_virtualbase_metacall(VirtualQUndoStack* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QUndoStack::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QUndoStack_virtualbase_event(VirtualQUndoStack* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QUndoStack::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QUndoStack_virtualbase_eventFilter(VirtualQUndoStack* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QUndoStack::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QUndoStack_virtualbase_timerEvent(VirtualQUndoStack* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QUndoStack::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QUndoStack_virtualbase_childEvent(VirtualQUndoStack* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QUndoStack::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QUndoStack_virtualbase_customEvent(VirtualQUndoStack* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QUndoStack::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QUndoStack_virtualbase_connectNotify(VirtualQUndoStack* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QUndoStack::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QUndoStack_virtualbase_disconnectNotify(VirtualQUndoStack* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QUndoStack_protectedbase_sender(const VirtualQUndoStack* self);
	friend int QUndoStack_protectedbase_senderSignalIndex(const VirtualQUndoStack* self);
	friend int QUndoStack_protectedbase_receivers(const VirtualQUndoStack* self, const char* signal);
	friend bool QUndoStack_protectedbase_isSignalConnected(const VirtualQUndoStack* self, QMetaMethod* signal);
};

VirtualQUndoStack* QUndoStack_new(const QUndoStack_VTable* vtbl, void* vdata) {
	return new VirtualQUndoStack(vtbl, vdata);
}

VirtualQUndoStack* QUndoStack_new2(const QUndoStack_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQUndoStack(vtbl, vdata, parent);
}

void QUndoStack_virtbase(QUndoStack* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QUndoStack_metaObject(const QUndoStack* self) {
	return (QMetaObject*) self->metaObject();
}

void* QUndoStack_metacast(QUndoStack* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QUndoStack_metacall(QUndoStack* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QUndoStack_tr(const char* s) {
	QString _ret = QUndoStack::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUndoStack_clear(QUndoStack* self) {
	self->clear();
}

void QUndoStack_push(QUndoStack* self, QUndoCommand* cmd) {
	self->push(cmd);
}

bool QUndoStack_canUndo(const QUndoStack* self) {
	return self->canUndo();
}

bool QUndoStack_canRedo(const QUndoStack* self) {
	return self->canRedo();
}

struct miqt_string QUndoStack_undoText(const QUndoStack* self) {
	QString _ret = self->undoText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUndoStack_redoText(const QUndoStack* self) {
	QString _ret = self->redoText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QUndoStack_count(const QUndoStack* self) {
	return self->count();
}

int QUndoStack_index(const QUndoStack* self) {
	return self->index();
}

struct miqt_string QUndoStack_text(const QUndoStack* self, int idx) {
	QString _ret = self->text(static_cast<int>(idx));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QUndoStack_createUndoAction(const QUndoStack* self, QObject* parent) {
	return self->createUndoAction(parent);
}

QAction* QUndoStack_createRedoAction(const QUndoStack* self, QObject* parent) {
	return self->createRedoAction(parent);
}

bool QUndoStack_isActive(const QUndoStack* self) {
	return self->isActive();
}

bool QUndoStack_isClean(const QUndoStack* self) {
	return self->isClean();
}

int QUndoStack_cleanIndex(const QUndoStack* self) {
	return self->cleanIndex();
}

void QUndoStack_beginMacro(QUndoStack* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->beginMacro(text_QString);
}

void QUndoStack_endMacro(QUndoStack* self) {
	self->endMacro();
}

void QUndoStack_setUndoLimit(QUndoStack* self, int limit) {
	self->setUndoLimit(static_cast<int>(limit));
}

int QUndoStack_undoLimit(const QUndoStack* self) {
	return self->undoLimit();
}

QUndoCommand* QUndoStack_command(const QUndoStack* self, int index) {
	return (QUndoCommand*) self->command(static_cast<int>(index));
}

void QUndoStack_setClean(QUndoStack* self) {
	self->setClean();
}

void QUndoStack_resetClean(QUndoStack* self) {
	self->resetClean();
}

void QUndoStack_setIndex(QUndoStack* self, int idx) {
	self->setIndex(static_cast<int>(idx));
}

void QUndoStack_undo(QUndoStack* self) {
	self->undo();
}

void QUndoStack_redo(QUndoStack* self) {
	self->redo();
}

void QUndoStack_setActive(QUndoStack* self) {
	self->setActive();
}

void QUndoStack_indexChanged(QUndoStack* self, int idx) {
	self->indexChanged(static_cast<int>(idx));
}

void QUndoStack_connect_indexChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int idx) {
			int sigval1 = idx;
			callback(slot, sigval1);
		}
	};
	VirtualQUndoStack::connect(self, static_cast<void (QUndoStack::*)(int)>(&QUndoStack::indexChanged), self, local_caller{slot, callback, release});
}

void QUndoStack_cleanChanged(QUndoStack* self, bool clean) {
	self->cleanChanged(clean);
}

void QUndoStack_connect_cleanChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool clean) {
			bool sigval1 = clean;
			callback(slot, sigval1);
		}
	};
	VirtualQUndoStack::connect(self, static_cast<void (QUndoStack::*)(bool)>(&QUndoStack::cleanChanged), self, local_caller{slot, callback, release});
}

void QUndoStack_canUndoChanged(QUndoStack* self, bool canUndo) {
	self->canUndoChanged(canUndo);
}

void QUndoStack_connect_canUndoChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool canUndo) {
			bool sigval1 = canUndo;
			callback(slot, sigval1);
		}
	};
	VirtualQUndoStack::connect(self, static_cast<void (QUndoStack::*)(bool)>(&QUndoStack::canUndoChanged), self, local_caller{slot, callback, release});
}

void QUndoStack_canRedoChanged(QUndoStack* self, bool canRedo) {
	self->canRedoChanged(canRedo);
}

void QUndoStack_connect_canRedoChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool canRedo) {
			bool sigval1 = canRedo;
			callback(slot, sigval1);
		}
	};
	VirtualQUndoStack::connect(self, static_cast<void (QUndoStack::*)(bool)>(&QUndoStack::canRedoChanged), self, local_caller{slot, callback, release});
}

void QUndoStack_undoTextChanged(QUndoStack* self, struct miqt_string undoText) {
	QString undoText_QString = QString::fromUtf8(undoText.data, undoText.len);
	self->undoTextChanged(undoText_QString);
}

void QUndoStack_connect_undoTextChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& undoText) {
			const QString undoText_ret = undoText;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray undoText_b = undoText_ret.toUtf8();
			struct miqt_string undoText_ms;
			undoText_ms.len = undoText_b.length();
			undoText_ms.data = static_cast<char*>(malloc(undoText_ms.len));
			memcpy(undoText_ms.data, undoText_b.data(), undoText_ms.len);
			struct miqt_string sigval1 = undoText_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQUndoStack::connect(self, static_cast<void (QUndoStack::*)(const QString&)>(&QUndoStack::undoTextChanged), self, local_caller{slot, callback, release});
}

void QUndoStack_redoTextChanged(QUndoStack* self, struct miqt_string redoText) {
	QString redoText_QString = QString::fromUtf8(redoText.data, redoText.len);
	self->redoTextChanged(redoText_QString);
}

void QUndoStack_connect_redoTextChanged(VirtualQUndoStack* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& redoText) {
			const QString redoText_ret = redoText;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray redoText_b = redoText_ret.toUtf8();
			struct miqt_string redoText_ms;
			redoText_ms.len = redoText_b.length();
			redoText_ms.data = static_cast<char*>(malloc(redoText_ms.len));
			memcpy(redoText_ms.data, redoText_b.data(), redoText_ms.len);
			struct miqt_string sigval1 = redoText_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQUndoStack::connect(self, static_cast<void (QUndoStack::*)(const QString&)>(&QUndoStack::redoTextChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QUndoStack_tr2(const char* s, const char* c) {
	QString _ret = QUndoStack::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUndoStack_tr3(const char* s, const char* c, int n) {
	QString _ret = QUndoStack::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QUndoStack_createUndoAction2(const QUndoStack* self, QObject* parent, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	return self->createUndoAction(parent, prefix_QString);
}

QAction* QUndoStack_createRedoAction2(const QUndoStack* self, QObject* parent, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	return self->createRedoAction(parent, prefix_QString);
}

void QUndoStack_setActive1(QUndoStack* self, bool active) {
	self->setActive(active);
}

QMetaObject* QUndoStack_virtualbase_metaObject(const VirtualQUndoStack* self) {

	return (QMetaObject*) self->QUndoStack::metaObject();
}

void* QUndoStack_virtualbase_metacast(VirtualQUndoStack* self, const char* param1) {

	return self->QUndoStack::qt_metacast(param1);
}

int QUndoStack_virtualbase_metacall(VirtualQUndoStack* self, int param1, int param2, void** param3) {

	return self->QUndoStack::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QUndoStack_virtualbase_event(VirtualQUndoStack* self, QEvent* event) {

	return self->QUndoStack::event(event);
}

bool QUndoStack_virtualbase_eventFilter(VirtualQUndoStack* self, QObject* watched, QEvent* event) {

	return self->QUndoStack::eventFilter(watched, event);
}

void QUndoStack_virtualbase_timerEvent(VirtualQUndoStack* self, QTimerEvent* event) {

	self->QUndoStack::timerEvent(event);
}

void QUndoStack_virtualbase_childEvent(VirtualQUndoStack* self, QChildEvent* event) {

	self->QUndoStack::childEvent(event);
}

void QUndoStack_virtualbase_customEvent(VirtualQUndoStack* self, QEvent* event) {

	self->QUndoStack::customEvent(event);
}

void QUndoStack_virtualbase_connectNotify(VirtualQUndoStack* self, QMetaMethod* signal) {

	self->QUndoStack::connectNotify(*signal);
}

void QUndoStack_virtualbase_disconnectNotify(VirtualQUndoStack* self, QMetaMethod* signal) {

	self->QUndoStack::disconnectNotify(*signal);
}

const QMetaObject* QUndoStack_staticMetaObject() { return &QUndoStack::staticMetaObject; }

const QUndoStack_VTable* QUndoStack_vtbl(const VirtualQUndoStack* self) { return self->vtbl; }
void* QUndoStack_vdata(const VirtualQUndoStack* self) { return self->vdata; }
void QUndoStack_setVdata(VirtualQUndoStack* self, void* vdata) { self->vdata = vdata; }

QObject* QUndoStack_protectedbase_sender(const VirtualQUndoStack* self) {
	return self->sender();
}

int QUndoStack_protectedbase_senderSignalIndex(const VirtualQUndoStack* self) {
	return self->senderSignalIndex();
}

int QUndoStack_protectedbase_receivers(const VirtualQUndoStack* self, const char* signal) {
	return self->receivers(signal);
}

bool QUndoStack_protectedbase_isSignalConnected(const VirtualQUndoStack* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QUndoStack_delete(QUndoStack* self) {
	delete self;
}

