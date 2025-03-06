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

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQItemDelegate final : public QItemDelegate {
	struct QItemDelegate_VTable* vtbl;
public:

	VirtualQItemDelegate(struct QItemDelegate_VTable* vtbl): QItemDelegate(), vtbl(vtbl) {};
	VirtualQItemDelegate(struct QItemDelegate_VTable* vtbl, QObject* parent): QItemDelegate(parent), vtbl(vtbl) {};

	virtual ~VirtualQItemDelegate() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QItemDelegate::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QItemDelegate_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QItemDelegate::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QItemDelegate_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QItemDelegate::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QItemDelegate_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
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

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QItemDelegate_virtualbase_paint(const void* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
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

		QSize* callback_return_value = vtbl->sizeHint(vtbl, this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QItemDelegate_virtualbase_sizeHint(const void* self, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
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

		QWidget* callback_return_value = vtbl->createEditor(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend QWidget* QItemDelegate_virtualbase_createEditor(const void* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void setEditorData(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->setEditorData == 0) {
			QItemDelegate::setEditorData(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setEditorData(vtbl, this, sigval1, sigval2);

	}

	friend void QItemDelegate_virtualbase_setEditorData(const void* self, QWidget* editor, QModelIndex* index);

	// Subclass to allow providing a Go implementation
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

		vtbl->setModelData(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QItemDelegate_virtualbase_setModelData(const void* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);

	// Subclass to allow providing a Go implementation
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

		vtbl->updateEditorGeometry(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QItemDelegate_virtualbase_updateEditorGeometry(const void* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
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

		vtbl->drawDisplay(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QItemDelegate_virtualbase_drawDisplay(const void* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, struct miqt_string text);

	// Subclass to allow providing a Go implementation
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

		vtbl->drawDecoration(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QItemDelegate_virtualbase_drawDecoration(const void* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap);

	// Subclass to allow providing a Go implementation
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

		vtbl->drawFocus(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QItemDelegate_virtualbase_drawFocus(const void* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect);

	// Subclass to allow providing a Go implementation
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

		vtbl->drawCheck(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	friend void QItemDelegate_virtualbase_drawCheck(const void* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QItemDelegate::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QItemDelegate_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
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

		bool callback_return_value = vtbl->editorEvent(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QItemDelegate_virtualbase_editorEvent(void* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void destroyEditor(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->destroyEditor == 0) {
			QItemDelegate::destroyEditor(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->destroyEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QItemDelegate_virtualbase_destroyEditor(const void* self, QWidget* editor, QModelIndex* index);

	// Subclass to allow providing a Go implementation
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

		bool callback_return_value = vtbl->helpEvent(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QItemDelegate_virtualbase_helpEvent(void* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QList<int> paintingRoles() const override {
		if (vtbl->paintingRoles == 0) {
			return QItemDelegate::paintingRoles();
		}


		struct miqt_array /* of int */  callback_return_value = vtbl->paintingRoles(vtbl, this);
		QList<int> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		int* callback_return_value_arr = static_cast<int*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(static_cast<int>(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of int */  QItemDelegate_virtualbase_paintingRoles(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QItemDelegate::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QItemDelegate_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QItemDelegate::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QItemDelegate_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QItemDelegate::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QItemDelegate_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QItemDelegate::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QItemDelegate_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QItemDelegate::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QItemDelegate_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QItemDelegate::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QItemDelegate_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QItemDelegate_protectedbase_drawBackground(const void* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
	friend void QItemDelegate_protectedbase_doLayout(const void* self, QStyleOptionViewItem* option, QRect* checkRect, QRect* iconRect, QRect* textRect, bool hint);
	friend QRect* QItemDelegate_protectedbase_rect(const void* self, QStyleOptionViewItem* option, QModelIndex* index, int role);
	friend QStyleOptionViewItem* QItemDelegate_protectedbase_setOptions(const void* self, QModelIndex* index, QStyleOptionViewItem* option);
	friend QPixmap* QItemDelegate_protectedbase_decoration(const void* self, QStyleOptionViewItem* option, QVariant* variant);
	friend QRect* QItemDelegate_protectedbase_doCheck(const void* self, QStyleOptionViewItem* option, QRect* bounding, QVariant* variant);
	friend QRect* QItemDelegate_protectedbase_textRectangle(const void* self, QPainter* painter, QRect* rect, QFont* font, struct miqt_string text);
	friend QObject* QItemDelegate_protectedbase_sender(const void* self);
	friend int QItemDelegate_protectedbase_senderSignalIndex(const void* self);
	friend int QItemDelegate_protectedbase_receivers(const void* self, const char* signal);
	friend bool QItemDelegate_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QItemDelegate* QItemDelegate_new(struct QItemDelegate_VTable* vtbl) {
	return new VirtualQItemDelegate(vtbl);
}

QItemDelegate* QItemDelegate_new2(struct QItemDelegate_VTable* vtbl, QObject* parent) {
	return new VirtualQItemDelegate(vtbl, parent);
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

QMetaObject* QItemDelegate_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQItemDelegate*)(self) )->QItemDelegate::metaObject();

}

void* QItemDelegate_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQItemDelegate*)(self) )->QItemDelegate::qt_metacast(param1);

}

int QItemDelegate_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQItemDelegate*)(self) )->QItemDelegate::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QItemDelegate_virtualbase_paint(const void* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::paint(painter, *option, *index);

}

QSize* QItemDelegate_virtualbase_sizeHint(const void* self, QStyleOptionViewItem* option, QModelIndex* index) {

	return new QSize(( (const VirtualQItemDelegate*)(self) )->QItemDelegate::sizeHint(*option, *index));

}

QWidget* QItemDelegate_virtualbase_createEditor(const void* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {

	return ( (const VirtualQItemDelegate*)(self) )->QItemDelegate::createEditor(parent, *option, *index);

}

void QItemDelegate_virtualbase_setEditorData(const void* self, QWidget* editor, QModelIndex* index) {

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::setEditorData(editor, *index);

}

void QItemDelegate_virtualbase_setModelData(const void* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::setModelData(editor, model, *index);

}

void QItemDelegate_virtualbase_updateEditorGeometry(const void* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::updateEditorGeometry(editor, *option, *index);

}

void QItemDelegate_virtualbase_drawDisplay(const void* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::drawDisplay(painter, *option, *rect, text_QString);

}

void QItemDelegate_virtualbase_drawDecoration(const void* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, QPixmap* pixmap) {

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::drawDecoration(painter, *option, *rect, *pixmap);

}

void QItemDelegate_virtualbase_drawFocus(const void* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect) {

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::drawFocus(painter, *option, *rect);

}

void QItemDelegate_virtualbase_drawCheck(const void* self, QPainter* painter, QStyleOptionViewItem* option, QRect* rect, int state) {

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::drawCheck(painter, *option, *rect, static_cast<Qt::CheckState>(state));

}

bool QItemDelegate_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQItemDelegate*)(self) )->QItemDelegate::eventFilter(object, event);

}

bool QItemDelegate_virtualbase_editorEvent(void* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index) {

	return ( (VirtualQItemDelegate*)(self) )->QItemDelegate::editorEvent(event, model, *option, *index);

}

void QItemDelegate_virtualbase_destroyEditor(const void* self, QWidget* editor, QModelIndex* index) {

	( (const VirtualQItemDelegate*)(self) )->QItemDelegate::destroyEditor(editor, *index);

}

bool QItemDelegate_virtualbase_helpEvent(void* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index) {

	return ( (VirtualQItemDelegate*)(self) )->QItemDelegate::helpEvent(event, view, *option, *index);

}

struct miqt_array /* of int */  QItemDelegate_virtualbase_paintingRoles(const void* self) {

	QList<int> _ret = ( (const VirtualQItemDelegate*)(self) )->QItemDelegate::paintingRoles();
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

bool QItemDelegate_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQItemDelegate*)(self) )->QItemDelegate::event(event);

}

void QItemDelegate_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQItemDelegate*)(self) )->QItemDelegate::timerEvent(event);

}

void QItemDelegate_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQItemDelegate*)(self) )->QItemDelegate::childEvent(event);

}

void QItemDelegate_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQItemDelegate*)(self) )->QItemDelegate::customEvent(event);

}

void QItemDelegate_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQItemDelegate*)(self) )->QItemDelegate::connectNotify(*signal);

}

void QItemDelegate_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQItemDelegate*)(self) )->QItemDelegate::disconnectNotify(*signal);

}

const QMetaObject* QItemDelegate_staticMetaObject() { return &QItemDelegate::staticMetaObject; }
void QItemDelegate_protectedbase_drawBackground(const void* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	self_cast->drawBackground(painter, *option, *index);

}

void QItemDelegate_protectedbase_doLayout(const void* self, QStyleOptionViewItem* option, QRect* checkRect, QRect* iconRect, QRect* textRect, bool hint) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	self_cast->doLayout(*option, checkRect, iconRect, textRect, hint);

}

QRect* QItemDelegate_protectedbase_rect(const void* self, QStyleOptionViewItem* option, QModelIndex* index, int role) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	return new QRect(self_cast->rect(*option, *index, static_cast<int>(role)));

}

QStyleOptionViewItem* QItemDelegate_protectedbase_setOptions(const void* self, QModelIndex* index, QStyleOptionViewItem* option) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	return new QStyleOptionViewItem(self_cast->setOptions(*index, *option));

}

QPixmap* QItemDelegate_protectedbase_decoration(const void* self, QStyleOptionViewItem* option, QVariant* variant) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	return new QPixmap(self_cast->decoration(*option, *variant));

}

QRect* QItemDelegate_protectedbase_doCheck(const void* self, QStyleOptionViewItem* option, QRect* bounding, QVariant* variant) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	return new QRect(self_cast->doCheck(*option, *bounding, *variant));

}

QRect* QItemDelegate_protectedbase_textRectangle(const void* self, QPainter* painter, QRect* rect, QFont* font, struct miqt_string text) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
			QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QRect(self_cast->textRectangle(painter, *rect, *font, text_QString));

}

QObject* QItemDelegate_protectedbase_sender(const void* self) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	return self_cast->sender();

}

int QItemDelegate_protectedbase_senderSignalIndex(const void* self) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QItemDelegate_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	return self_cast->receivers(signal);

}

bool QItemDelegate_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQItemDelegate* self_cast = static_cast<VirtualQItemDelegate*>( (QItemDelegate*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QItemDelegate_delete(QItemDelegate* self) {
	delete self;
}

