#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextBlock>
#include <QTextBlockGroup>
#include <QTextDocument>
#include <QTextList>
#include <QTextListFormat>
#include <QTextObject>
#include <QTimerEvent>
#include <qtextlist.h>
#include "gen_qtextlist.h"
class VirtualQTextList final : public QTextList {
	const QTextList_VTable* vtbl;
	void* vdata;
public:
	friend const QTextList_VTable* QTextList_vtbl(const VirtualQTextList* self);
	friend void* QTextList_vdata(const VirtualQTextList* self);
	friend void QTextList_setVdata(VirtualQTextList* self, void* vdata);

	VirtualQTextList(const QTextList_VTable* vtbl, void* vdata, QTextDocument* doc): QTextList(doc), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTextList() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTextList::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTextList_virtualbase_metaObject(const VirtualQTextList* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTextList::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTextList_virtualbase_metacast(VirtualQTextList* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTextList::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextList_virtualbase_metacall(VirtualQTextList* self, int param1, int param2, void** param3);

	virtual void blockInserted(const QTextBlock& block) override {
		if (vtbl->blockInserted == 0) {
			QTextList::blockInserted(block);
			return;
		}

		const QTextBlock& block_ret = block;
		// Cast returned reference into pointer
		QTextBlock* sigval1 = const_cast<QTextBlock*>(&block_ret);

		vtbl->blockInserted(this, sigval1);

	}

	friend void QTextList_virtualbase_blockInserted(VirtualQTextList* self, QTextBlock* block);

	virtual void blockRemoved(const QTextBlock& block) override {
		if (vtbl->blockRemoved == 0) {
			QTextList::blockRemoved(block);
			return;
		}

		const QTextBlock& block_ret = block;
		// Cast returned reference into pointer
		QTextBlock* sigval1 = const_cast<QTextBlock*>(&block_ret);

		vtbl->blockRemoved(this, sigval1);

	}

	friend void QTextList_virtualbase_blockRemoved(VirtualQTextList* self, QTextBlock* block);

	virtual void blockFormatChanged(const QTextBlock& block) override {
		if (vtbl->blockFormatChanged == 0) {
			QTextList::blockFormatChanged(block);
			return;
		}

		const QTextBlock& block_ret = block;
		// Cast returned reference into pointer
		QTextBlock* sigval1 = const_cast<QTextBlock*>(&block_ret);

		vtbl->blockFormatChanged(this, sigval1);

	}

	friend void QTextList_virtualbase_blockFormatChanged(VirtualQTextList* self, QTextBlock* block);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTextList::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextList_virtualbase_event(VirtualQTextList* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTextList::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTextList_virtualbase_eventFilter(VirtualQTextList* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTextList::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTextList_virtualbase_timerEvent(VirtualQTextList* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTextList::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTextList_virtualbase_childEvent(VirtualQTextList* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTextList::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTextList_virtualbase_customEvent(VirtualQTextList* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTextList::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTextList_virtualbase_connectNotify(VirtualQTextList* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTextList::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTextList_virtualbase_disconnectNotify(VirtualQTextList* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend struct miqt_array /* of QTextBlock* */  QTextList_protectedbase_blockList(const VirtualQTextList* self);
	friend QObject* QTextList_protectedbase_sender(const VirtualQTextList* self);
	friend int QTextList_protectedbase_senderSignalIndex(const VirtualQTextList* self);
	friend int QTextList_protectedbase_receivers(const VirtualQTextList* self, const char* signal);
	friend bool QTextList_protectedbase_isSignalConnected(const VirtualQTextList* self, QMetaMethod* signal);
};

VirtualQTextList* QTextList_new(const QTextList_VTable* vtbl, void* vdata, QTextDocument* doc) {
	return new VirtualQTextList(vtbl, vdata, doc);
}

void QTextList_virtbase(QTextList* src, QTextBlockGroup** outptr_QTextBlockGroup) {
	*outptr_QTextBlockGroup = static_cast<QTextBlockGroup*>(src);
}

QMetaObject* QTextList_metaObject(const QTextList* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTextList_metacast(QTextList* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTextList_metacall(QTextList* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTextList_tr(const char* s) {
	QString _ret = QTextList::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTextList_count(const QTextList* self) {
	return self->count();
}

QTextBlock* QTextList_item(const QTextList* self, int i) {
	return new QTextBlock(self->item(static_cast<int>(i)));
}

int QTextList_itemNumber(const QTextList* self, QTextBlock* param1) {
	return self->itemNumber(*param1);
}

struct miqt_string QTextList_itemText(const QTextList* self, QTextBlock* param1) {
	QString _ret = self->itemText(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTextList_removeItem(QTextList* self, int i) {
	self->removeItem(static_cast<int>(i));
}

void QTextList_remove(QTextList* self, QTextBlock* param1) {
	self->remove(*param1);
}

void QTextList_add(QTextList* self, QTextBlock* block) {
	self->add(*block);
}

void QTextList_setFormat(QTextList* self, QTextListFormat* format) {
	self->setFormat(*format);
}

QTextListFormat* QTextList_format(const QTextList* self) {
	return new QTextListFormat(self->format());
}

struct miqt_string QTextList_tr2(const char* s, const char* c) {
	QString _ret = QTextList::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextList_tr3(const char* s, const char* c, int n) {
	QString _ret = QTextList::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTextList_virtualbase_metaObject(const VirtualQTextList* self) {

	return (QMetaObject*) self->QTextList::metaObject();
}

void* QTextList_virtualbase_metacast(VirtualQTextList* self, const char* param1) {

	return self->QTextList::qt_metacast(param1);
}

int QTextList_virtualbase_metacall(VirtualQTextList* self, int param1, int param2, void** param3) {

	return self->QTextList::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QTextList_virtualbase_blockInserted(VirtualQTextList* self, QTextBlock* block) {

	self->QTextList::blockInserted(*block);
}

void QTextList_virtualbase_blockRemoved(VirtualQTextList* self, QTextBlock* block) {

	self->QTextList::blockRemoved(*block);
}

void QTextList_virtualbase_blockFormatChanged(VirtualQTextList* self, QTextBlock* block) {

	self->QTextList::blockFormatChanged(*block);
}

bool QTextList_virtualbase_event(VirtualQTextList* self, QEvent* event) {

	return self->QTextList::event(event);
}

bool QTextList_virtualbase_eventFilter(VirtualQTextList* self, QObject* watched, QEvent* event) {

	return self->QTextList::eventFilter(watched, event);
}

void QTextList_virtualbase_timerEvent(VirtualQTextList* self, QTimerEvent* event) {

	self->QTextList::timerEvent(event);
}

void QTextList_virtualbase_childEvent(VirtualQTextList* self, QChildEvent* event) {

	self->QTextList::childEvent(event);
}

void QTextList_virtualbase_customEvent(VirtualQTextList* self, QEvent* event) {

	self->QTextList::customEvent(event);
}

void QTextList_virtualbase_connectNotify(VirtualQTextList* self, QMetaMethod* signal) {

	self->QTextList::connectNotify(*signal);
}

void QTextList_virtualbase_disconnectNotify(VirtualQTextList* self, QMetaMethod* signal) {

	self->QTextList::disconnectNotify(*signal);
}

const QMetaObject* QTextList_staticMetaObject() { return &QTextList::staticMetaObject; }

const QTextList_VTable* QTextList_vtbl(const VirtualQTextList* self) { return self->vtbl; }
void* QTextList_vdata(const VirtualQTextList* self) { return self->vdata; }
void QTextList_setVdata(VirtualQTextList* self, void* vdata) { self->vdata = vdata; }

struct miqt_array /* of QTextBlock* */  QTextList_protectedbase_blockList(const VirtualQTextList* self) {
	QList<QTextBlock> _ret = self->blockList();
	// Convert QList<> from C++ memory to manually-managed C memory
	QTextBlock** _arr = static_cast<QTextBlock**>(malloc(sizeof(QTextBlock*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QTextBlock(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QObject* QTextList_protectedbase_sender(const VirtualQTextList* self) {
	return self->sender();
}

int QTextList_protectedbase_senderSignalIndex(const VirtualQTextList* self) {
	return self->senderSignalIndex();
}

int QTextList_protectedbase_receivers(const VirtualQTextList* self, const char* signal) {
	return self->receivers(signal);
}

bool QTextList_protectedbase_isSignalConnected(const VirtualQTextList* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTextList_delete(QTextList* self) {
	delete self;
}

