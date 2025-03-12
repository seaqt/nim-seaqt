#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QChildEvent>
#include <QEvent>
#include <QFont>
#include <QHelpEvent>
#include <QItemDelegate>
#include <QItemEditorFactory>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QObject>
#include <QPainter>
#include <QPalette>
#include <QPixmap>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionViewItem>
#include <QTimerEvent>
#include <QVariant>
#include <QWidget>
#include <qitemdelegate.h>
#include "gen_qitemdelegate.h"
class VirtualQItemDelegate final : public QItemDelegate {
	const QItemDelegate_VTable* vtbl;
	void* vdata;
public:
	friend const QItemDelegate_VTable* QItemDelegate_vtbl(const VirtualQItemDelegate* self);
	friend void* QItemDelegate_vdata(const VirtualQItemDelegate* self);
	friend void QItemDelegate_setVdata(VirtualQItemDelegate* self, void* vdata);

	VirtualQItemDelegate(const QItemDelegate_VTable* vtbl, void* vdata): QItemDelegate(), vtbl(vtbl), vdata(vdata) {}
	VirtualQItemDelegate(const QItemDelegate_VTable* vtbl, void* vdata, QObject* parent): QItemDelegate(parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQItemDelegate() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QItemDelegate::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QItemDelegate_virtualbase_metaObject(const VirtualQItemDelegate* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QItemDelegate::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QItemDelegate_virtualbase_metacast(VirtualQItemDelegate* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QItemDelegate::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QItemDelegate_virtualbase_metacall(VirtualQItemDelegate* self, int param1, int param2, void** param3);

	virtual void paint(QPainter* painter, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->paint == 0) {
			QItemDelegate::paint(painter, option, index);
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

	friend void QItemDelegate_virtualbase_paint(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);

	virtual QSize sizeHint(const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->sizeHint == 0) {
			return QItemDelegate::sizeHint(option, index);
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

	friend QSize* QItemDelegate_virtualbase_sizeHint(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);

	virtual QWidget* createEditor(QWidget* parent, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->createEditor == 0) {
			return QItemDelegate::createEditor(parent, option, index);
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

	friend QWidget* QItemDelegate_virtualbase_createEditor(const VirtualQItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);

	virtual void setEditorData(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->setEditorData == 0) {
			QItemDelegate::setEditorData(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setEditorData(this, sigval1, sigval2);

	}

	friend void QItemDelegate_virtualbase_setEditorData(const VirtualQItemDelegate* self, QWidget* editor, QModelIndex* index);

	virtual void setModelData(QWidget* editor, QAbstractItemModel* model, const QModelIndex& index) const override {
		if (vtbl->setModelData == 0) {
			QItemDelegate::setModelData(editor, model, index);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemModel* sigval2 = model;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setModelData(this, sigval1, sigval2, sigval3);

	}

	friend void QItemDelegate_virtualbase_setModelData(const VirtualQItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);

	virtual void updateEditorGeometry(QWidget* editor, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->updateEditorGeometry == 0) {
			QItemDelegate::updateEditorGeometry(editor, option, index);
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

	friend void QItemDelegate_virtualbase_updateEditorGeometry(const VirtualQItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);

	virtual void drawDisplay(QPainter* painter, const QStyleOptionViewItem& option, const QRect& rect, const QString& text) const override {
		if (vtbl->drawDisplay == 0) {
			QItemDelegate::drawDisplay(painter, option, rect, text);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval3 = const_cast<QRect*>(&rect_ret);
		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval4 = text_ms;

		vtbl->drawDisplay(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QItemDelegate_virtualbase_drawDisplay(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, struct miqt_string text);

	virtual void drawDecoration(QPainter* painter, const QStyleOptionViewItem& option, const QRect& rect, const QPixmap& pixmap) const override {
		if (vtbl->drawDecoration == 0) {
			QItemDelegate::drawDecoration(painter, option, rect, pixmap);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval3 = const_cast<QRect*>(&rect_ret);
		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval4 = const_cast<QPixmap*>(&pixmap_ret);

		vtbl->drawDecoration(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QItemDelegate_virtualbase_drawDecoration(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap);

	virtual void drawFocus(QPainter* painter, const QStyleOptionViewItem& option, const QRect& rect) const override {
		if (vtbl->drawFocus == 0) {
			QItemDelegate::drawFocus(painter, option, rect);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval3 = const_cast<QRect*>(&rect_ret);

		vtbl->drawFocus(this, sigval1, sigval2, sigval3);

	}

	friend void QItemDelegate_virtualbase_drawFocus(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect);

	virtual void drawCheck(QPainter* painter, const QStyleOptionViewItem& option, const QRect& rect, Qt::CheckState state) const override {
		if (vtbl->drawCheck == 0) {
			QItemDelegate::drawCheck(painter, option, rect, state);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval3 = const_cast<QRect*>(&rect_ret);
		Qt::CheckState state_ret = state;
		int sigval4 = static_cast<int>(state_ret);

		vtbl->drawCheck(this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QItemDelegate_virtualbase_drawCheck(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QItemDelegate::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QItemDelegate_virtualbase_eventFilter(VirtualQItemDelegate* self, QObject* object, QEvent* event);

	virtual bool editorEvent(QEvent* event, QAbstractItemModel* model, const QStyleOptionViewItem& option, const QModelIndex& index) override {
		if (vtbl->editorEvent == 0) {
			return QItemDelegate::editorEvent(event, model, option, index);
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

	friend bool QItemDelegate_virtualbase_editorEvent(VirtualQItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);

	virtual void destroyEditor(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->destroyEditor == 0) {
			QItemDelegate::destroyEditor(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->destroyEditor(this, sigval1, sigval2);

	}

	friend void QItemDelegate_virtualbase_destroyEditor(const VirtualQItemDelegate* self, QWidget* editor, QModelIndex* index);

	virtual bool helpEvent(QHelpEvent* event, QAbstractItemView* view, const QStyleOptionViewItem& option, const QModelIndex& index) override {
		if (vtbl->helpEvent == 0) {
			return QItemDelegate::helpEvent(event, view, option, index);
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

	friend bool QItemDelegate_virtualbase_helpEvent(VirtualQItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);

	virtual QVector<int> paintingRoles() const override {
		if (vtbl->paintingRoles == 0) {
			return QItemDelegate::paintingRoles();
		}


		struct miqt_array /* of int */  callback_return_value = vtbl->paintingRoles(this);
		QVector<int> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		int* callback_return_value_arr = static_cast<int*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(static_cast<int>(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of int */  QItemDelegate_virtualbase_paintingRoles(const VirtualQItemDelegate* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QItemDelegate::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QItemDelegate_virtualbase_event(VirtualQItemDelegate* self, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QItemDelegate::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QItemDelegate_virtualbase_timerEvent(VirtualQItemDelegate* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QItemDelegate::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QItemDelegate_virtualbase_childEvent(VirtualQItemDelegate* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QItemDelegate::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QItemDelegate_virtualbase_customEvent(VirtualQItemDelegate* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QItemDelegate::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QItemDelegate_virtualbase_connectNotify(VirtualQItemDelegate* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QItemDelegate::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QItemDelegate_virtualbase_disconnectNotify(VirtualQItemDelegate* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QItemDelegate_protectedbase_drawBackground(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
	friend void QItemDelegate_protectedbase_doLayout(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QRect* checkRect, QRect* iconRect, QRect* textRect, bool hint);
	friend QRect* QItemDelegate_protectedbase_rect(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index, int role);
	friend QStyleOptionViewItem* QItemDelegate_protectedbase_setOptions(const VirtualQItemDelegate* self, QModelIndex* index, QStyleOptionViewItem* option);
	friend QPixmap* QItemDelegate_protectedbase_decoration(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QVariant* variant);
	friend QPixmap* QItemDelegate_protectedbase_selected(const VirtualQItemDelegate* self, QPixmap* pixmap, QPalette* palette, bool enabled);
	friend QRect* QItemDelegate_protectedbase_doCheck(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QRect* bounding, QVariant* variant);
	friend QRect* QItemDelegate_protectedbase_textRectangle(const VirtualQItemDelegate* self, QPainter* painter, QRect* rect, QFont* font, struct miqt_string text);
	friend QObject* QItemDelegate_protectedbase_sender(const VirtualQItemDelegate* self);
	friend int QItemDelegate_protectedbase_senderSignalIndex(const VirtualQItemDelegate* self);
	friend int QItemDelegate_protectedbase_receivers(const VirtualQItemDelegate* self, const char* signal);
	friend bool QItemDelegate_protectedbase_isSignalConnected(const VirtualQItemDelegate* self, QMetaMethod* signal);
};

VirtualQItemDelegate* QItemDelegate_new(const QItemDelegate_VTable* vtbl, void* vdata) {
	return new VirtualQItemDelegate(vtbl, vdata);
}

VirtualQItemDelegate* QItemDelegate_new2(const QItemDelegate_VTable* vtbl, void* vdata, QObject* parent) {
	return new VirtualQItemDelegate(vtbl, vdata, parent);
}

void QItemDelegate_virtbase(QItemDelegate* src, QAbstractItemDelegate** outptr_QAbstractItemDelegate) {
	*outptr_QAbstractItemDelegate = static_cast<QAbstractItemDelegate*>(src);
}

QMetaObject* QItemDelegate_metaObject(const QItemDelegate* self) {
	return (QMetaObject*) self->metaObject();
}

void* QItemDelegate_metacast(QItemDelegate* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QItemDelegate_metacall(QItemDelegate* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QItemDelegate_tr(const char* s) {
	QString _ret = QItemDelegate::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QItemDelegate_trUtf8(const char* s) {
	QString _ret = QItemDelegate::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QItemDelegate_hasClipping(const QItemDelegate* self) {
	return self->hasClipping();
}

void QItemDelegate_setClipping(QItemDelegate* self, bool clip) {
	self->setClipping(clip);
}

void QItemDelegate_paint(const QItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {
	self->paint(painter, *option, *index);
}

QSize* QItemDelegate_sizeHint(const QItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index) {
	return new QSize(self->sizeHint(*option, *index));
}

QWidget* QItemDelegate_createEditor(const QItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {
	return self->createEditor(parent, *option, *index);
}

void QItemDelegate_setEditorData(const QItemDelegate* self, QWidget* editor, QModelIndex* index) {
	self->setEditorData(editor, *index);
}

void QItemDelegate_setModelData(const QItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {
	self->setModelData(editor, model, *index);
}

void QItemDelegate_updateEditorGeometry(const QItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {
	self->updateEditorGeometry(editor, *option, *index);
}

QItemEditorFactory* QItemDelegate_itemEditorFactory(const QItemDelegate* self) {
	return self->itemEditorFactory();
}

void QItemDelegate_setItemEditorFactory(QItemDelegate* self, QItemEditorFactory* factory) {
	self->setItemEditorFactory(factory);
}

struct miqt_string QItemDelegate_tr2(const char* s, const char* c) {
	QString _ret = QItemDelegate::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QItemDelegate_tr3(const char* s, const char* c, int n) {
	QString _ret = QItemDelegate::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QItemDelegate_trUtf82(const char* s, const char* c) {
	QString _ret = QItemDelegate::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QItemDelegate_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QItemDelegate::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QItemDelegate_virtualbase_metaObject(const VirtualQItemDelegate* self) {

	return (QMetaObject*) self->QItemDelegate::metaObject();
}

void* QItemDelegate_virtualbase_metacast(VirtualQItemDelegate* self, const char* param1) {

	return self->QItemDelegate::qt_metacast(param1);
}

int QItemDelegate_virtualbase_metacall(VirtualQItemDelegate* self, int param1, int param2, void** param3) {

	return self->QItemDelegate::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QItemDelegate_virtualbase_paint(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {

	self->QItemDelegate::paint(painter, *option, *index);
}

QSize* QItemDelegate_virtualbase_sizeHint(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index) {

	return new QSize(self->QItemDelegate::sizeHint(*option, *index));
}

QWidget* QItemDelegate_virtualbase_createEditor(const VirtualQItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {

	return self->QItemDelegate::createEditor(parent, *option, *index);
}

void QItemDelegate_virtualbase_setEditorData(const VirtualQItemDelegate* self, QWidget* editor, QModelIndex* index) {

	self->QItemDelegate::setEditorData(editor, *index);
}

void QItemDelegate_virtualbase_setModelData(const VirtualQItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {

	self->QItemDelegate::setModelData(editor, model, *index);
}

void QItemDelegate_virtualbase_updateEditorGeometry(const VirtualQItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {

	self->QItemDelegate::updateEditorGeometry(editor, *option, *index);
}

void QItemDelegate_virtualbase_drawDisplay(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	self->QItemDelegate::drawDisplay(painter, *option, *rect, text_QString);
}

void QItemDelegate_virtualbase_drawDecoration(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap) {

	self->QItemDelegate::drawDecoration(painter, *option, *rect, *pixmap);
}

void QItemDelegate_virtualbase_drawFocus(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect) {

	self->QItemDelegate::drawFocus(painter, *option, *rect);
}

void QItemDelegate_virtualbase_drawCheck(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state) {

	self->QItemDelegate::drawCheck(painter, *option, *rect, static_cast<Qt::CheckState>(state));
}

bool QItemDelegate_virtualbase_eventFilter(VirtualQItemDelegate* self, QObject* object, QEvent* event) {

	return self->QItemDelegate::eventFilter(object, event);
}

bool QItemDelegate_virtualbase_editorEvent(VirtualQItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index) {

	return self->QItemDelegate::editorEvent(event, model, *option, *index);
}

void QItemDelegate_virtualbase_destroyEditor(const VirtualQItemDelegate* self, QWidget* editor, QModelIndex* index) {

	self->QItemDelegate::destroyEditor(editor, *index);
}

bool QItemDelegate_virtualbase_helpEvent(VirtualQItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index) {

	return self->QItemDelegate::helpEvent(event, view, *option, *index);
}

struct miqt_array /* of int */  QItemDelegate_virtualbase_paintingRoles(const VirtualQItemDelegate* self) {

	QVector<int> _ret = self->QItemDelegate::paintingRoles();
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

bool QItemDelegate_virtualbase_event(VirtualQItemDelegate* self, QEvent* event) {

	return self->QItemDelegate::event(event);
}

void QItemDelegate_virtualbase_timerEvent(VirtualQItemDelegate* self, QTimerEvent* event) {

	self->QItemDelegate::timerEvent(event);
}

void QItemDelegate_virtualbase_childEvent(VirtualQItemDelegate* self, QChildEvent* event) {

	self->QItemDelegate::childEvent(event);
}

void QItemDelegate_virtualbase_customEvent(VirtualQItemDelegate* self, QEvent* event) {

	self->QItemDelegate::customEvent(event);
}

void QItemDelegate_virtualbase_connectNotify(VirtualQItemDelegate* self, QMetaMethod* signal) {

	self->QItemDelegate::connectNotify(*signal);
}

void QItemDelegate_virtualbase_disconnectNotify(VirtualQItemDelegate* self, QMetaMethod* signal) {

	self->QItemDelegate::disconnectNotify(*signal);
}

const QMetaObject* QItemDelegate_staticMetaObject() { return &QItemDelegate::staticMetaObject; }

const QItemDelegate_VTable* QItemDelegate_vtbl(const VirtualQItemDelegate* self) { return self->vtbl; }
void* QItemDelegate_vdata(const VirtualQItemDelegate* self) { return self->vdata; }
void QItemDelegate_setVdata(VirtualQItemDelegate* self, void* vdata) { self->vdata = vdata; }

void QItemDelegate_protectedbase_drawBackground(const VirtualQItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {
	self->drawBackground(painter, *option, *index);
}

void QItemDelegate_protectedbase_doLayout(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QRect* checkRect, QRect* iconRect, QRect* textRect, bool hint) {
	self->doLayout(*option, checkRect, iconRect, textRect, hint);
}

QRect* QItemDelegate_protectedbase_rect(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index, int role) {
	return new QRect(self->rect(*option, *index, static_cast<int>(role)));
}

QStyleOptionViewItem* QItemDelegate_protectedbase_setOptions(const VirtualQItemDelegate* self, QModelIndex* index, QStyleOptionViewItem* option) {
	return new QStyleOptionViewItem(self->setOptions(*index, *option));
}

QPixmap* QItemDelegate_protectedbase_decoration(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QVariant* variant) {
	return new QPixmap(self->decoration(*option, *variant));
}

QPixmap* QItemDelegate_protectedbase_selected(const VirtualQItemDelegate* self, QPixmap* pixmap, QPalette* palette, bool enabled) {
	return self->selected(*pixmap, *palette, enabled);
}

QRect* QItemDelegate_protectedbase_doCheck(const VirtualQItemDelegate* self, QStyleOptionViewItem* option, QRect* bounding, QVariant* variant) {
	return new QRect(self->doCheck(*option, *bounding, *variant));
}

QRect* QItemDelegate_protectedbase_textRectangle(const VirtualQItemDelegate* self, QPainter* painter, QRect* rect, QFont* font, struct miqt_string text) {
		QString text_QString = QString::fromUtf8(text.data, text.len);
	return new QRect(self->textRectangle(painter, *rect, *font, text_QString));
}

QObject* QItemDelegate_protectedbase_sender(const VirtualQItemDelegate* self) {
	return self->sender();
}

int QItemDelegate_protectedbase_senderSignalIndex(const VirtualQItemDelegate* self) {
	return self->senderSignalIndex();
}

int QItemDelegate_protectedbase_receivers(const VirtualQItemDelegate* self, const char* signal) {
	return self->receivers(signal);
}

bool QItemDelegate_protectedbase_isSignalConnected(const VirtualQItemDelegate* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QItemDelegate_delete(QItemDelegate* self) {
	delete self;
}

