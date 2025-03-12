#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QChildEvent>
#include <QEvent>
#include <QHelpEvent>
#include <QItemEditorFactory>
#include <QList>
#include <QLocale>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QObject>
#include <QPainter>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionViewItem>
#include <QStyledItemDelegate>
#include <QTimerEvent>
#include <QVariant>
#include <QWidget>
#include <qstyleditemdelegate.h>
#include "gen_qstyleditemdelegate.h"
class VirtualQStyledItemDelegate final : public QStyledItemDelegate {
	const QStyledItemDelegate_VTable* vtbl;
	void* vdata;
public:
	friend const QStyledItemDelegate_VTable* QStyledItemDelegate_vtbl(const VirtualQStyledItemDelegate* self);
	friend void* QStyledItemDelegate_vdata(const VirtualQStyledItemDelegate* self);
	friend void QStyledItemDelegate_setVdata(VirtualQStyledItemDelegate* self, void* vdata);

	VirtualQStyledItemDelegate(const QStyledItemDelegate_VTable* vtbl, void* vdata): QStyledItemDelegate(), vtbl(vtbl), vdata(vdata) {}
	VirtualQStyledItemDelegate(const QStyledItemDelegate_VTable* vtbl, void* vdata, QObject* parent): QStyledItemDelegate(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQStyledItemDelegate() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStyledItemDelegate::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QStyledItemDelegate_virtualbase_metaObject(const VirtualQStyledItemDelegate* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStyledItemDelegate::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QStyledItemDelegate_virtualbase_metacast(VirtualQStyledItemDelegate* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStyledItemDelegate::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStyledItemDelegate_virtualbase_metacall(VirtualQStyledItemDelegate* self, int param1, int param2, void** param3);

	virtual void paint(QPainter* painter, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->paint == 0) {
			QStyledItemDelegate::paint(painter, option, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->paint(this, sigval1, sigval2, sigval3);

	}

	friend void QStyledItemDelegate_virtualbase_paint(const VirtualQStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);

	virtual QSize sizeHint(const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->sizeHint == 0) {
			return QStyledItemDelegate::sizeHint(option, index);
		}

		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval1 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->sizeHint(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QStyledItemDelegate_virtualbase_sizeHint(const VirtualQStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);

	virtual QWidget* createEditor(QWidget* parent, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->createEditor == 0) {
			return QStyledItemDelegate::createEditor(parent, option, index);
		}

		QWidget* sigval1 = parent;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		QWidget* callback_return_value = vtbl->createEditor(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend QWidget* QStyledItemDelegate_virtualbase_createEditor(const VirtualQStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);

	virtual void setEditorData(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->setEditorData == 0) {
			QStyledItemDelegate::setEditorData(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setEditorData(this, sigval1, sigval2);

	}

	friend void QStyledItemDelegate_virtualbase_setEditorData(const VirtualQStyledItemDelegate* self, QWidget* editor, QModelIndex* index);

	virtual void setModelData(QWidget* editor, QAbstractItemModel* model, const QModelIndex& index) const override {
		if (vtbl->setModelData == 0) {
			QStyledItemDelegate::setModelData(editor, model, index);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemModel* sigval2 = model;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setModelData(this, sigval1, sigval2, sigval3);

	}

	friend void QStyledItemDelegate_virtualbase_setModelData(const VirtualQStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);

	virtual void updateEditorGeometry(QWidget* editor, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->updateEditorGeometry == 0) {
			QStyledItemDelegate::updateEditorGeometry(editor, option, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->updateEditorGeometry(this, sigval1, sigval2, sigval3);

	}

	friend void QStyledItemDelegate_virtualbase_updateEditorGeometry(const VirtualQStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);

	virtual QString displayText(const QVariant& value, const QLocale& locale) const override {
		if (vtbl->displayText == 0) {
			return QStyledItemDelegate::displayText(value, locale);
		}

		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&value_ret);
		const QLocale& locale_ret = locale;
		// Cast returned reference into pointer
		QLocale* sigval2 = const_cast<QLocale*>(&locale_ret);

		struct miqt_string callback_return_value = vtbl->displayText(this, sigval1, sigval2);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QStyledItemDelegate_virtualbase_displayText(const VirtualQStyledItemDelegate* self, QVariant* value, QLocale* locale);

	virtual void initStyleOption(QStyleOptionViewItem* option, const QModelIndex& index) const override {
		if (vtbl->initStyleOption == 0) {
			QStyledItemDelegate::initStyleOption(option, index);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->initStyleOption(this, sigval1, sigval2);

	}

	friend void QStyledItemDelegate_virtualbase_initStyleOption(const VirtualQStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStyledItemDelegate::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStyledItemDelegate_virtualbase_eventFilter(VirtualQStyledItemDelegate* self, QObject* object, QEvent* event);

	virtual bool editorEvent(QEvent* event, QAbstractItemModel* model, const QStyleOptionViewItem& option, const QModelIndex& index) override {
		if (vtbl->editorEvent == 0) {
			return QStyledItemDelegate::editorEvent(event, model, option, index);
		}

		QEvent* sigval1 = event;
		QAbstractItemModel* sigval2 = model;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval3 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->editorEvent(this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QStyledItemDelegate_virtualbase_editorEvent(VirtualQStyledItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);

	virtual void destroyEditor(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->destroyEditor == 0) {
			QStyledItemDelegate::destroyEditor(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->destroyEditor(this, sigval1, sigval2);

	}

	friend void QStyledItemDelegate_virtualbase_destroyEditor(const VirtualQStyledItemDelegate* self, QWidget* editor, QModelIndex* index);

	virtual bool helpEvent(QHelpEvent* event, QAbstractItemView* view, const QStyleOptionViewItem& option, const QModelIndex& index) override {
		if (vtbl->helpEvent == 0) {
			return QStyledItemDelegate::helpEvent(event, view, option, index);
		}

		QHelpEvent* sigval1 = event;
		QAbstractItemView* sigval2 = view;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval3 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->helpEvent(this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QStyledItemDelegate_virtualbase_helpEvent(VirtualQStyledItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);

	virtual QList<int> paintingRoles() const override {
		if (vtbl->paintingRoles == 0) {
			return QStyledItemDelegate::paintingRoles();
		}


		struct miqt_array /* of int */  callback_return_value = vtbl->paintingRoles(this);
		QList<int> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		int* callback_return_value_arr = static_cast<int*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(static_cast<int>(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of int */  QStyledItemDelegate_virtualbase_paintingRoles(const VirtualQStyledItemDelegate* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStyledItemDelegate::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QStyledItemDelegate_virtualbase_event(VirtualQStyledItemDelegate* self, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStyledItemDelegate::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QStyledItemDelegate_virtualbase_timerEvent(VirtualQStyledItemDelegate* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStyledItemDelegate::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QStyledItemDelegate_virtualbase_childEvent(VirtualQStyledItemDelegate* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStyledItemDelegate::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QStyledItemDelegate_virtualbase_customEvent(VirtualQStyledItemDelegate* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStyledItemDelegate::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QStyledItemDelegate_virtualbase_connectNotify(VirtualQStyledItemDelegate* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStyledItemDelegate::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QStyledItemDelegate_virtualbase_disconnectNotify(VirtualQStyledItemDelegate* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QStyledItemDelegate_protectedbase_sender(const VirtualQStyledItemDelegate* self);
	friend int QStyledItemDelegate_protectedbase_senderSignalIndex(const VirtualQStyledItemDelegate* self);
	friend int QStyledItemDelegate_protectedbase_receivers(const VirtualQStyledItemDelegate* self, const char* signal);
	friend bool QStyledItemDelegate_protectedbase_isSignalConnected(const VirtualQStyledItemDelegate* self, QMetaMethod* signal);
};

VirtualQStyledItemDelegate* QStyledItemDelegate_new(const QStyledItemDelegate_VTable* vtbl, void* vdata) {
	return new VirtualQStyledItemDelegate(vtbl, vdata);
}

VirtualQStyledItemDelegate* QStyledItemDelegate_new2(const QStyledItemDelegate_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQStyledItemDelegate(vtbl, vdata, parent);
}

void QStyledItemDelegate_virtbase(QStyledItemDelegate* src, QAbstractItemDelegate** outptr_QAbstractItemDelegate) {
	*outptr_QAbstractItemDelegate = static_cast<QAbstractItemDelegate*>(src);
}

QMetaObject* QStyledItemDelegate_metaObject(const QStyledItemDelegate* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStyledItemDelegate_metacast(QStyledItemDelegate* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStyledItemDelegate_metacall(QStyledItemDelegate* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStyledItemDelegate_tr(const char* s) {
	QString _ret = QStyledItemDelegate::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStyledItemDelegate_paint(const QStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {
	self->paint(painter, *option, *index);
}

QSize* QStyledItemDelegate_sizeHint(const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index) {
	return new QSize(self->sizeHint(*option, *index));
}

QWidget* QStyledItemDelegate_createEditor(const QStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {
	return self->createEditor(parent, *option, *index);
}

void QStyledItemDelegate_setEditorData(const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index) {
	self->setEditorData(editor, *index);
}

void QStyledItemDelegate_setModelData(const QStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {
	self->setModelData(editor, model, *index);
}

void QStyledItemDelegate_updateEditorGeometry(const QStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {
	self->updateEditorGeometry(editor, *option, *index);
}

QItemEditorFactory* QStyledItemDelegate_itemEditorFactory(const QStyledItemDelegate* self) {
	return self->itemEditorFactory();
}

void QStyledItemDelegate_setItemEditorFactory(QStyledItemDelegate* self, QItemEditorFactory* factory) {
	self->setItemEditorFactory(factory);
}

struct miqt_string QStyledItemDelegate_displayText(const QStyledItemDelegate* self, QVariant* value, QLocale* locale) {
	QString _ret = self->displayText(*value, *locale);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyledItemDelegate_tr2(const char* s, const char* c) {
	QString _ret = QStyledItemDelegate::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyledItemDelegate_tr3(const char* s, const char* c, int n) {
	QString _ret = QStyledItemDelegate::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStyledItemDelegate_virtualbase_metaObject(const VirtualQStyledItemDelegate* self) {

	return (QMetaObject*) self->QStyledItemDelegate::metaObject();
}

void* QStyledItemDelegate_virtualbase_metacast(VirtualQStyledItemDelegate* self, const char* param1) {

	return self->QStyledItemDelegate::qt_metacast(param1);
}

int QStyledItemDelegate_virtualbase_metacall(VirtualQStyledItemDelegate* self, int param1, int param2, void** param3) {

	return self->QStyledItemDelegate::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QStyledItemDelegate_virtualbase_paint(const VirtualQStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {

	self->QStyledItemDelegate::paint(painter, *option, *index);
}

QSize* QStyledItemDelegate_virtualbase_sizeHint(const VirtualQStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index) {

	return new QSize(self->QStyledItemDelegate::sizeHint(*option, *index));
}

QWidget* QStyledItemDelegate_virtualbase_createEditor(const VirtualQStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {

	return self->QStyledItemDelegate::createEditor(parent, *option, *index);
}

void QStyledItemDelegate_virtualbase_setEditorData(const VirtualQStyledItemDelegate* self, QWidget* editor, QModelIndex* index) {

	self->QStyledItemDelegate::setEditorData(editor, *index);
}

void QStyledItemDelegate_virtualbase_setModelData(const VirtualQStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {

	self->QStyledItemDelegate::setModelData(editor, model, *index);
}

void QStyledItemDelegate_virtualbase_updateEditorGeometry(const VirtualQStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {

	self->QStyledItemDelegate::updateEditorGeometry(editor, *option, *index);
}

struct miqt_string QStyledItemDelegate_virtualbase_displayText(const VirtualQStyledItemDelegate* self, QVariant* value, QLocale* locale) {

	QString _ret = self->QStyledItemDelegate::displayText(*value, *locale);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStyledItemDelegate_virtualbase_initStyleOption(const VirtualQStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index) {

	self->QStyledItemDelegate::initStyleOption(option, *index);
}

bool QStyledItemDelegate_virtualbase_eventFilter(VirtualQStyledItemDelegate* self, QObject* object, QEvent* event) {

	return self->QStyledItemDelegate::eventFilter(object, event);
}

bool QStyledItemDelegate_virtualbase_editorEvent(VirtualQStyledItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index) {

	return self->QStyledItemDelegate::editorEvent(event, model, *option, *index);
}

void QStyledItemDelegate_virtualbase_destroyEditor(const VirtualQStyledItemDelegate* self, QWidget* editor, QModelIndex* index) {

	self->QStyledItemDelegate::destroyEditor(editor, *index);
}

bool QStyledItemDelegate_virtualbase_helpEvent(VirtualQStyledItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index) {

	return self->QStyledItemDelegate::helpEvent(event, view, *option, *index);
}

struct miqt_array /* of int */  QStyledItemDelegate_virtualbase_paintingRoles(const VirtualQStyledItemDelegate* self) {

	QList<int> _ret = self->QStyledItemDelegate::paintingRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QStyledItemDelegate_virtualbase_event(VirtualQStyledItemDelegate* self, QEvent* event) {

	return self->QStyledItemDelegate::event(event);
}

void QStyledItemDelegate_virtualbase_timerEvent(VirtualQStyledItemDelegate* self, QTimerEvent* event) {

	self->QStyledItemDelegate::timerEvent(event);
}

void QStyledItemDelegate_virtualbase_childEvent(VirtualQStyledItemDelegate* self, QChildEvent* event) {

	self->QStyledItemDelegate::childEvent(event);
}

void QStyledItemDelegate_virtualbase_customEvent(VirtualQStyledItemDelegate* self, QEvent* event) {

	self->QStyledItemDelegate::customEvent(event);
}

void QStyledItemDelegate_virtualbase_connectNotify(VirtualQStyledItemDelegate* self, QMetaMethod* signal) {

	self->QStyledItemDelegate::connectNotify(*signal);
}

void QStyledItemDelegate_virtualbase_disconnectNotify(VirtualQStyledItemDelegate* self, QMetaMethod* signal) {

	self->QStyledItemDelegate::disconnectNotify(*signal);
}

const QMetaObject* QStyledItemDelegate_staticMetaObject() { return &QStyledItemDelegate::staticMetaObject; }

const QStyledItemDelegate_VTable* QStyledItemDelegate_vtbl(const VirtualQStyledItemDelegate* self) { return self->vtbl; }
void* QStyledItemDelegate_vdata(const VirtualQStyledItemDelegate* self) { return self->vdata; }
void QStyledItemDelegate_setVdata(VirtualQStyledItemDelegate* self, void* vdata) { self->vdata = vdata; }

QObject* QStyledItemDelegate_protectedbase_sender(const VirtualQStyledItemDelegate* self) {
	return self->sender();
}

int QStyledItemDelegate_protectedbase_senderSignalIndex(const VirtualQStyledItemDelegate* self) {
	return self->senderSignalIndex();
}

int QStyledItemDelegate_protectedbase_receivers(const VirtualQStyledItemDelegate* self, const char* signal) {
	return self->receivers(signal);
}

bool QStyledItemDelegate_protectedbase_isSignalConnected(const VirtualQStyledItemDelegate* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QStyledItemDelegate_delete(QStyledItemDelegate* self) {
	delete self;
}

