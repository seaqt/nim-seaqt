#include <QAbstractItemView>
#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QBrush>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QColor>
#include <QContextMenuEvent>
#include <QDataStream>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QFrame>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QItemSelection>
#include <QItemSelectionModel>
#include <QKeyEvent>
#include <QList>
#include <QListView>
#include <QListWidget>
#include <QListWidgetItem>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QModelIndex>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QStyleOptionViewItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qlistwidget.h>
#include "gen_qlistwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QListWidget_itemPressed(intptr_t, QListWidgetItem*);
void miqt_exec_callback_QListWidget_itemClicked(intptr_t, QListWidgetItem*);
void miqt_exec_callback_QListWidget_itemDoubleClicked(intptr_t, QListWidgetItem*);
void miqt_exec_callback_QListWidget_itemActivated(intptr_t, QListWidgetItem*);
void miqt_exec_callback_QListWidget_itemEntered(intptr_t, QListWidgetItem*);
void miqt_exec_callback_QListWidget_itemChanged(intptr_t, QListWidgetItem*);
void miqt_exec_callback_QListWidget_currentItemChanged(intptr_t, QListWidgetItem*, QListWidgetItem*);
void miqt_exec_callback_QListWidget_currentTextChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QListWidget_currentRowChanged(intptr_t, int);
void miqt_exec_callback_QListWidget_itemSelectionChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQListWidgetItem final : public QListWidgetItem {
	struct QListWidgetItem_VTable* vtbl;
public:

	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl): QListWidgetItem(), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, const QString& text): QListWidgetItem(text), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, const QIcon& icon, const QString& text): QListWidgetItem(icon, text), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, const QListWidgetItem& other): QListWidgetItem(other), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, QListWidget* listview): QListWidgetItem(listview), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, QListWidget* listview, int type): QListWidgetItem(listview, type), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, const QString& text, QListWidget* listview): QListWidgetItem(text, listview), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, const QString& text, QListWidget* listview, int type): QListWidgetItem(text, listview, type), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, const QIcon& icon, const QString& text, QListWidget* listview): QListWidgetItem(icon, text, listview), vtbl(vtbl) {};
	VirtualQListWidgetItem(struct QListWidgetItem_VTable* vtbl, const QIcon& icon, const QString& text, QListWidget* listview, int type): QListWidgetItem(icon, text, listview, type), vtbl(vtbl) {};

	virtual ~VirtualQListWidgetItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QListWidgetItem* clone() const override {
		if (vtbl->clone == 0) {
			return QListWidgetItem::clone();
		}


		QListWidgetItem* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QListWidgetItem* QListWidgetItem_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setBackgroundColor(const QColor& color) override {
		if (vtbl->setBackgroundColor == 0) {
			QListWidgetItem::setBackgroundColor(color);
			return;
		}

		const QColor& color_ret = color;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&color_ret);

		vtbl->setBackgroundColor(vtbl, this, sigval1);

	}

	friend void QListWidgetItem_virtualbase_setBackgroundColor(void* self, QColor* color);

	// Subclass to allow providing a Go implementation
	virtual QVariant data(int role) const override {
		if (vtbl->data == 0) {
			return QListWidgetItem::data(role);
		}

		int sigval1 = role;

		QVariant* callback_return_value = vtbl->data(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QListWidgetItem_virtualbase_data(const void* self, int role);

	// Subclass to allow providing a Go implementation
	virtual void setData(int role, const QVariant& value) override {
		if (vtbl->setData == 0) {
			QListWidgetItem::setData(role, value);
			return;
		}

		int sigval1 = role;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setData(vtbl, this, sigval1, sigval2);

	}

	friend void QListWidgetItem_virtualbase_setData(void* self, int role, QVariant* value);

	// Subclass to allow providing a Go implementation
	virtual bool operator<(const QListWidgetItem& other) const override {
		if (vtbl->operatorLesser == 0) {
			return QListWidgetItem::operator<(other);
		}

		const QListWidgetItem& other_ret = other;
		// Cast returned reference into pointer
		QListWidgetItem* sigval1 = const_cast<QListWidgetItem*>(&other_ret);

		bool callback_return_value = vtbl->operatorLesser(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QListWidgetItem_virtualbase_operatorLesser(const void* self, QListWidgetItem* other);

	// Subclass to allow providing a Go implementation
	virtual void read(QDataStream& in) override {
		if (vtbl->read == 0) {
			QListWidgetItem::read(in);
			return;
		}

		QDataStream& in_ret = in;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &in_ret;

		vtbl->read(vtbl, this, sigval1);

	}

	friend void QListWidgetItem_virtualbase_read(void* self, QDataStream* in);

	// Subclass to allow providing a Go implementation
	virtual void write(QDataStream& out) const override {
		if (vtbl->write == 0) {
			QListWidgetItem::write(out);
			return;
		}

		QDataStream& out_ret = out;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &out_ret;

		vtbl->write(vtbl, this, sigval1);

	}

	friend void QListWidgetItem_virtualbase_write(const void* self, QDataStream* out);

};

QListWidgetItem* QListWidgetItem_new(struct QListWidgetItem_VTable* vtbl) {
	return new VirtualQListWidgetItem(vtbl);
}

QListWidgetItem* QListWidgetItem_new2(struct QListWidgetItem_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQListWidgetItem(vtbl, text_QString);
}

QListWidgetItem* QListWidgetItem_new3(struct QListWidgetItem_VTable* vtbl, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQListWidgetItem(vtbl, *icon, text_QString);
}

QListWidgetItem* QListWidgetItem_new4(struct QListWidgetItem_VTable* vtbl, QListWidgetItem* other) {
	return new VirtualQListWidgetItem(vtbl, *other);
}

QListWidgetItem* QListWidgetItem_new5(struct QListWidgetItem_VTable* vtbl, QListWidget* listview) {
	return new VirtualQListWidgetItem(vtbl, listview);
}

QListWidgetItem* QListWidgetItem_new6(struct QListWidgetItem_VTable* vtbl, QListWidget* listview, int type) {
	return new VirtualQListWidgetItem(vtbl, listview, static_cast<int>(type));
}

QListWidgetItem* QListWidgetItem_new7(struct QListWidgetItem_VTable* vtbl, struct miqt_string text, QListWidget* listview) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQListWidgetItem(vtbl, text_QString, listview);
}

QListWidgetItem* QListWidgetItem_new8(struct QListWidgetItem_VTable* vtbl, struct miqt_string text, QListWidget* listview, int type) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQListWidgetItem(vtbl, text_QString, listview, static_cast<int>(type));
}

QListWidgetItem* QListWidgetItem_new9(struct QListWidgetItem_VTable* vtbl, QIcon* icon, struct miqt_string text, QListWidget* listview) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQListWidgetItem(vtbl, *icon, text_QString, listview);
}

QListWidgetItem* QListWidgetItem_new10(struct QListWidgetItem_VTable* vtbl, QIcon* icon, struct miqt_string text, QListWidget* listview, int type) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQListWidgetItem(vtbl, *icon, text_QString, listview, static_cast<int>(type));
}

QListWidgetItem* QListWidgetItem_clone(const QListWidgetItem* self) {
	return self->clone();
}

QListWidget* QListWidgetItem_listWidget(const QListWidgetItem* self) {
	return self->listWidget();
}

void QListWidgetItem_setSelected(QListWidgetItem* self, bool select) {
	self->setSelected(select);
}

bool QListWidgetItem_isSelected(const QListWidgetItem* self) {
	return self->isSelected();
}

void QListWidgetItem_setHidden(QListWidgetItem* self, bool hide) {
	self->setHidden(hide);
}

bool QListWidgetItem_isHidden(const QListWidgetItem* self) {
	return self->isHidden();
}

int QListWidgetItem_flags(const QListWidgetItem* self) {
	Qt::ItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QListWidgetItem_setFlags(QListWidgetItem* self, int flags) {
	self->setFlags(static_cast<Qt::ItemFlags>(flags));
}

struct miqt_string QListWidgetItem_text(const QListWidgetItem* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QListWidgetItem_setText(QListWidgetItem* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

QIcon* QListWidgetItem_icon(const QListWidgetItem* self) {
	return new QIcon(self->icon());
}

void QListWidgetItem_setIcon(QListWidgetItem* self, QIcon* icon) {
	self->setIcon(*icon);
}

struct miqt_string QListWidgetItem_statusTip(const QListWidgetItem* self) {
	QString _ret = self->statusTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QListWidgetItem_setStatusTip(QListWidgetItem* self, struct miqt_string statusTip) {
	QString statusTip_QString = QString::fromUtf8(statusTip.data, statusTip.len);
	self->setStatusTip(statusTip_QString);
}

struct miqt_string QListWidgetItem_toolTip(const QListWidgetItem* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QListWidgetItem_setToolTip(QListWidgetItem* self, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(toolTip_QString);
}

struct miqt_string QListWidgetItem_whatsThis(const QListWidgetItem* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QListWidgetItem_setWhatsThis(QListWidgetItem* self, struct miqt_string whatsThis) {
	QString whatsThis_QString = QString::fromUtf8(whatsThis.data, whatsThis.len);
	self->setWhatsThis(whatsThis_QString);
}

QFont* QListWidgetItem_font(const QListWidgetItem* self) {
	return new QFont(self->font());
}

void QListWidgetItem_setFont(QListWidgetItem* self, QFont* font) {
	self->setFont(*font);
}

int QListWidgetItem_textAlignment(const QListWidgetItem* self) {
	return self->textAlignment();
}

void QListWidgetItem_setTextAlignment(QListWidgetItem* self, int alignment) {
	self->setTextAlignment(static_cast<int>(alignment));
}

QColor* QListWidgetItem_backgroundColor(const QListWidgetItem* self) {
	return new QColor(self->backgroundColor());
}

void QListWidgetItem_setBackgroundColor(QListWidgetItem* self, QColor* color) {
	self->setBackgroundColor(*color);
}

QBrush* QListWidgetItem_background(const QListWidgetItem* self) {
	return new QBrush(self->background());
}

void QListWidgetItem_setBackground(QListWidgetItem* self, QBrush* brush) {
	self->setBackground(*brush);
}

QColor* QListWidgetItem_textColor(const QListWidgetItem* self) {
	return new QColor(self->textColor());
}

void QListWidgetItem_setTextColor(QListWidgetItem* self, QColor* color) {
	self->setTextColor(*color);
}

QBrush* QListWidgetItem_foreground(const QListWidgetItem* self) {
	return new QBrush(self->foreground());
}

void QListWidgetItem_setForeground(QListWidgetItem* self, QBrush* brush) {
	self->setForeground(*brush);
}

int QListWidgetItem_checkState(const QListWidgetItem* self) {
	Qt::CheckState _ret = self->checkState();
	return static_cast<int>(_ret);
}

void QListWidgetItem_setCheckState(QListWidgetItem* self, int state) {
	self->setCheckState(static_cast<Qt::CheckState>(state));
}

QSize* QListWidgetItem_sizeHint(const QListWidgetItem* self) {
	return new QSize(self->sizeHint());
}

void QListWidgetItem_setSizeHint(QListWidgetItem* self, QSize* size) {
	self->setSizeHint(*size);
}

QVariant* QListWidgetItem_data(const QListWidgetItem* self, int role) {
	return new QVariant(self->data(static_cast<int>(role)));
}

void QListWidgetItem_setData(QListWidgetItem* self, int role, QVariant* value) {
	self->setData(static_cast<int>(role), *value);
}

bool QListWidgetItem_operatorLesser(const QListWidgetItem* self, QListWidgetItem* other) {
	return (*self < *other);
}

void QListWidgetItem_read(QListWidgetItem* self, QDataStream* in) {
	self->read(*in);
}

void QListWidgetItem_write(const QListWidgetItem* self, QDataStream* out) {
	self->write(*out);
}

void QListWidgetItem_operatorAssign(QListWidgetItem* self, QListWidgetItem* other) {
	self->operator=(*other);
}

int QListWidgetItem_type(const QListWidgetItem* self) {
	return self->type();
}

QListWidgetItem* QListWidgetItem_virtualbase_clone(const void* self) {

	return ( (const VirtualQListWidgetItem*)(self) )->QListWidgetItem::clone();

}

void QListWidgetItem_virtualbase_setBackgroundColor(void* self, QColor* color) {

	( (VirtualQListWidgetItem*)(self) )->QListWidgetItem::setBackgroundColor(*color);

}

QVariant* QListWidgetItem_virtualbase_data(const void* self, int role) {

	return new QVariant(( (const VirtualQListWidgetItem*)(self) )->QListWidgetItem::data(static_cast<int>(role)));

}

void QListWidgetItem_virtualbase_setData(void* self, int role, QVariant* value) {

	( (VirtualQListWidgetItem*)(self) )->QListWidgetItem::setData(static_cast<int>(role), *value);

}

bool QListWidgetItem_virtualbase_operatorLesser(const void* self, QListWidgetItem* other) {

	return ( (const VirtualQListWidgetItem*)(self) )->QListWidgetItem::operator<(*other);

}

void QListWidgetItem_virtualbase_read(void* self, QDataStream* in) {

	( (VirtualQListWidgetItem*)(self) )->QListWidgetItem::read(*in);

}

void QListWidgetItem_virtualbase_write(const void* self, QDataStream* out) {

	( (const VirtualQListWidgetItem*)(self) )->QListWidgetItem::write(*out);

}

void QListWidgetItem_delete(QListWidgetItem* self) {
	delete self;
}

class VirtualQListWidget final : public QListWidget {
	struct QListWidget_VTable* vtbl;
public:

	VirtualQListWidget(struct QListWidget_VTable* vtbl, QWidget* parent): QListWidget(parent), vtbl(vtbl) {};
	VirtualQListWidget(struct QListWidget_VTable* vtbl): QListWidget(), vtbl(vtbl) {};

	virtual ~VirtualQListWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QListWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QListWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QListWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QListWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QListWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QListWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QListWidget::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QListWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QListWidget::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QListWidget::mimeTypes();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->mimeTypes(vtbl, this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of struct miqt_string */  QListWidget_virtualbase_mimeTypes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QMimeData* mimeData(const QList<QListWidgetItem *> items) const override {
		if (vtbl->mimeData == 0) {
			return QListWidget::mimeData(items);
		}

		const QList<QListWidgetItem *> items_ret = items;
		// Convert QList<> from C++ memory to manually-managed C memory
		QListWidgetItem** items_arr = static_cast<QListWidgetItem**>(malloc(sizeof(QListWidgetItem*) * items_ret.length()));
		for (size_t i = 0, e = items_ret.length(); i < e; ++i) {
			items_arr[i] = items_ret[i];
		}
		struct miqt_array items_out;
		items_out.len = items_ret.length();
		items_out.data = static_cast<void*>(items_arr);
		struct miqt_array /* of QListWidgetItem* */  sigval1 = items_out;

		QMimeData* callback_return_value = vtbl->mimeData(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QMimeData* QListWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QListWidgetItem* */  items);

	// Subclass to allow providing a Go implementation
	virtual bool dropMimeData(int index, const QMimeData* data, Qt::DropAction action) override {
		if (vtbl->dropMimeData == 0) {
			return QListWidget::dropMimeData(index, data, action);
		}

		int sigval1 = index;
		QMimeData* sigval2 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval3 = static_cast<int>(action_ret);

		bool callback_return_value = vtbl->dropMimeData(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_dropMimeData(void* self, int index, QMimeData* data, int action);

	// Subclass to allow providing a Go implementation
	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QListWidget::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QListWidget_virtualbase_supportedDropActions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QListWidget::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRect* QListWidget_virtualbase_visualRect(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QListWidget::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	friend void QListWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QListWidget::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QModelIndex* QListWidget_virtualbase_indexAt(const void* self, QPoint* p);

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QListWidget::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	friend void QListWidget_virtualbase_doItemsLayout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QListWidget::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	friend void QListWidget_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QListWidget::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_setRootIndex(void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QListWidget::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QListWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QListWidget::dataChanged(topLeft, bottomRight, roles);
			return;
		}

		const QModelIndex& topLeft_ret = topLeft;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&topLeft_ret);
		const QModelIndex& bottomRight_ret = bottomRight;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&bottomRight_ret);
		const QVector<int>& roles_ret = roles;
		// Convert QList<> from C++ memory to manually-managed C memory
		int* roles_arr = static_cast<int*>(malloc(sizeof(int) * roles_ret.length()));
		for (size_t i = 0, e = roles_ret.length(); i < e; ++i) {
			roles_arr[i] = roles_ret[i];
		}
		struct miqt_array roles_out;
		roles_out.len = roles_ret.length();
		roles_out.data = static_cast<void*>(roles_arr);
		struct miqt_array /* of int */  sigval3 = roles_out;

		vtbl->dataChanged(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QListWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QListWidget::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QListWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QListWidget::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QListWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QListWidget::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QListWidget::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QListWidget::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_wheelEvent(void* self, QWheelEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QListWidget::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_timerEvent(void* self, QTimerEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QListWidget::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_resizeEvent(void* self, QResizeEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QListWidget::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QListWidget::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QListWidget::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_startDrag(void* self, int supportedActions);

	// Subclass to allow providing a Go implementation
	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QListWidget::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(vtbl, this);

		return *callback_return_value;
	}

	friend QStyleOptionViewItem* QListWidget_virtualbase_viewOptions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QListWidget::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_paintEvent(void* self, QPaintEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QListWidget::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QListWidget_virtualbase_horizontalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QListWidget::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QListWidget_virtualbase_verticalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QListWidget::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QModelIndex* QListWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QListWidget::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	friend void QListWidget_virtualbase_setSelection(void* self, QRect* rect, int command);

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QListWidget::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QRegion* QListWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QListWidget::selectedIndexes();
		}


		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->selectedIndexes(vtbl, this);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of QModelIndex* */  QListWidget_virtualbase_selectedIndexes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QListWidget::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	friend void QListWidget_virtualbase_updateGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QListWidget::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QListWidget::selectionChanged(selected, deselected);
			return;
		}

		const QItemSelection& selected_ret = selected;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selected_ret);
		const QItemSelection& deselected_ret = deselected;
		// Cast returned reference into pointer
		QItemSelection* sigval2 = const_cast<QItemSelection*>(&deselected_ret);

		vtbl->selectionChanged(vtbl, this, sigval1, sigval2);

	}

	friend void QListWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QListWidget::currentChanged(current, previous);
			return;
		}

		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& previous_ret = previous;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&previous_ret);

		vtbl->currentChanged(vtbl, this, sigval1, sigval2);

	}

	friend void QListWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QListWidget::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QListWidget_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QListWidget::keyboardSearch(search);
			return;
		}

		const QString search_ret = search;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray search_b = search_ret.toUtf8();
		struct miqt_string search_ms;
		search_ms.len = search_b.length();
		search_ms.data = static_cast<char*>(malloc(search_ms.len));
		memcpy(search_ms.data, search_b.data(), search_ms.len);
		struct miqt_string sigval1 = search_ms;

		vtbl->keyboardSearch(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QListWidget::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QListWidget_virtualbase_sizeHintForRow(const void* self, int row);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QListWidget::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QListWidget_virtualbase_sizeHintForColumn(const void* self, int column);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QListWidget::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QListWidget_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QListWidget::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	friend void QListWidget_virtualbase_selectAll(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QListWidget::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	friend void QListWidget_virtualbase_updateEditorData(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QListWidget::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	friend void QListWidget_virtualbase_updateEditorGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QListWidget::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_verticalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QListWidget::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_horizontalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QListWidget::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QListWidget::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QListWidget::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QListWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint);

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QListWidget::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_commitData(void* self, QWidget* editor);

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QListWidget::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_editorDestroyed(void* self, QObject* editor);

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QListWidget::edit(index, trigger, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::EditTrigger trigger_ret = trigger;
		int sigval2 = static_cast<int>(trigger_ret);
		QEvent* sigval3 = event;

		bool callback_return_value = vtbl->edit2(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QListWidget::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QListWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QListWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QListWidget::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_viewportEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QListWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QListWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QListWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QListWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QListWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QListWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QListWidget::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QListWidget::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QListWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QListWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QListWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QListWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QListWidget::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QListWidget::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QListWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QListWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QListWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QListWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QListWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QListWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QListWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QListWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QListWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QListWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QListWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QListWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QListWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QListWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QListWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QListWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QListWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QListWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QListWidget::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QListWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QListWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QListWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QListWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QListWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QListWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QListWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QListWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QListWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QListWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QListWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QListWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QListWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend struct miqt_array /* of QListWidgetItem* */  QListWidget_protectedbase_items(bool* _dynamic_cast_ok, const void* self, QMimeData* data);
	friend QModelIndex* QListWidget_protectedbase_indexFromItem(bool* _dynamic_cast_ok, const void* self, QListWidgetItem* item);
	friend QModelIndex* QListWidget_protectedbase_indexFromItemWithItem(bool* _dynamic_cast_ok, const void* self, QListWidgetItem* item);
	friend QListWidgetItem* QListWidget_protectedbase_itemFromIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
	friend void QListWidget_protectedbase_resizeContents(bool* _dynamic_cast_ok, void* self, int width, int height);
	friend QSize* QListWidget_protectedbase_contentsSize(bool* _dynamic_cast_ok, const void* self);
	friend QRect* QListWidget_protectedbase_rectForIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
	friend void QListWidget_protectedbase_setPositionForIndex(bool* _dynamic_cast_ok, void* self, QPoint* position, QModelIndex* index);
	friend void QListWidget_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
	friend int QListWidget_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
	friend void QListWidget_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
	friend int QListWidget_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
	friend int QListWidget_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
	friend void QListWidget_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
	friend void QListWidget_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QListWidget_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
	friend void QListWidget_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
	friend void QListWidget_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
	friend QPoint* QListWidget_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
	friend void QListWidget_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QListWidget_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend void QListWidget_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
	friend int QListWidget_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
	friend void QListWidget_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
	friend QMargins* QListWidget_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
	friend void QListWidget_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QListWidget_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
	friend void QListWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QListWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QListWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QListWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QListWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QListWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QListWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QListWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QListWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QListWidget* QListWidget_new(struct QListWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQListWidget(vtbl, parent);
}

QListWidget* QListWidget_new2(struct QListWidget_VTable* vtbl) {
	return new VirtualQListWidget(vtbl);
}

void QListWidget_virtbase(QListWidget* src, QListView** outptr_QListView) {
	*outptr_QListView = static_cast<QListView*>(src);
}

QMetaObject* QListWidget_metaObject(const QListWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QListWidget_metacast(QListWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QListWidget_metacall(QListWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QListWidget_tr(const char* s) {
	QString _ret = QListWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QListWidget_trUtf8(const char* s) {
	QString _ret = QListWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QListWidget_setSelectionModel(QListWidget* self, QItemSelectionModel* selectionModel) {
	self->setSelectionModel(selectionModel);
}

QListWidgetItem* QListWidget_item(const QListWidget* self, int row) {
	return self->item(static_cast<int>(row));
}

int QListWidget_row(const QListWidget* self, QListWidgetItem* item) {
	return self->row(item);
}

void QListWidget_insertItem(QListWidget* self, int row, QListWidgetItem* item) {
	self->insertItem(static_cast<int>(row), item);
}

void QListWidget_insertItem2(QListWidget* self, int row, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	self->insertItem(static_cast<int>(row), label_QString);
}

void QListWidget_insertItems(QListWidget* self, int row, struct miqt_array /* of struct miqt_string */  labels) {
	QStringList labels_QList;
	labels_QList.reserve(labels.len);
	struct miqt_string* labels_arr = static_cast<struct miqt_string*>(labels.data);
	for(size_t i = 0; i < labels.len; ++i) {
		QString labels_arr_i_QString = QString::fromUtf8(labels_arr[i].data, labels_arr[i].len);
		labels_QList.push_back(labels_arr_i_QString);
	}
	self->insertItems(static_cast<int>(row), labels_QList);
}

void QListWidget_addItem(QListWidget* self, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	self->addItem(label_QString);
}

void QListWidget_addItemWithItem(QListWidget* self, QListWidgetItem* item) {
	self->addItem(item);
}

void QListWidget_addItems(QListWidget* self, struct miqt_array /* of struct miqt_string */  labels) {
	QStringList labels_QList;
	labels_QList.reserve(labels.len);
	struct miqt_string* labels_arr = static_cast<struct miqt_string*>(labels.data);
	for(size_t i = 0; i < labels.len; ++i) {
		QString labels_arr_i_QString = QString::fromUtf8(labels_arr[i].data, labels_arr[i].len);
		labels_QList.push_back(labels_arr_i_QString);
	}
	self->addItems(labels_QList);
}

QListWidgetItem* QListWidget_takeItem(QListWidget* self, int row) {
	return self->takeItem(static_cast<int>(row));
}

int QListWidget_count(const QListWidget* self) {
	return self->count();
}

QListWidgetItem* QListWidget_currentItem(const QListWidget* self) {
	return self->currentItem();
}

void QListWidget_setCurrentItem(QListWidget* self, QListWidgetItem* item) {
	self->setCurrentItem(item);
}

void QListWidget_setCurrentItem2(QListWidget* self, QListWidgetItem* item, int command) {
	self->setCurrentItem(item, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

int QListWidget_currentRow(const QListWidget* self) {
	return self->currentRow();
}

void QListWidget_setCurrentRow(QListWidget* self, int row) {
	self->setCurrentRow(static_cast<int>(row));
}

void QListWidget_setCurrentRow2(QListWidget* self, int row, int command) {
	self->setCurrentRow(static_cast<int>(row), static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QListWidgetItem* QListWidget_itemAt(const QListWidget* self, QPoint* p) {
	return self->itemAt(*p);
}

QListWidgetItem* QListWidget_itemAt2(const QListWidget* self, int x, int y) {
	return self->itemAt(static_cast<int>(x), static_cast<int>(y));
}

QRect* QListWidget_visualItemRect(const QListWidget* self, QListWidgetItem* item) {
	return new QRect(self->visualItemRect(item));
}

void QListWidget_sortItems(QListWidget* self) {
	self->sortItems();
}

void QListWidget_setSortingEnabled(QListWidget* self, bool enable) {
	self->setSortingEnabled(enable);
}

bool QListWidget_isSortingEnabled(const QListWidget* self) {
	return self->isSortingEnabled();
}

void QListWidget_editItem(QListWidget* self, QListWidgetItem* item) {
	self->editItem(item);
}

void QListWidget_openPersistentEditor(QListWidget* self, QListWidgetItem* item) {
	self->openPersistentEditor(item);
}

void QListWidget_closePersistentEditor(QListWidget* self, QListWidgetItem* item) {
	self->closePersistentEditor(item);
}

bool QListWidget_isPersistentEditorOpen(const QListWidget* self, QListWidgetItem* item) {
	return self->isPersistentEditorOpen(item);
}

QWidget* QListWidget_itemWidget(const QListWidget* self, QListWidgetItem* item) {
	return self->itemWidget(item);
}

void QListWidget_setItemWidget(QListWidget* self, QListWidgetItem* item, QWidget* widget) {
	self->setItemWidget(item, widget);
}

void QListWidget_removeItemWidget(QListWidget* self, QListWidgetItem* item) {
	self->removeItemWidget(item);
}

bool QListWidget_isItemSelected(const QListWidget* self, QListWidgetItem* item) {
	return self->isItemSelected(item);
}

void QListWidget_setItemSelected(QListWidget* self, QListWidgetItem* item, bool select) {
	self->setItemSelected(item, select);
}

struct miqt_array /* of QListWidgetItem* */  QListWidget_selectedItems(const QListWidget* self) {
	QList<QListWidgetItem *> _ret = self->selectedItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QListWidgetItem** _arr = static_cast<QListWidgetItem**>(malloc(sizeof(QListWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QListWidgetItem* */  QListWidget_findItems(const QListWidget* self, struct miqt_string text, int flags) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QListWidgetItem *> _ret = self->findItems(text_QString, static_cast<Qt::MatchFlags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	QListWidgetItem** _arr = static_cast<QListWidgetItem**>(malloc(sizeof(QListWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QListWidget_isItemHidden(const QListWidget* self, QListWidgetItem* item) {
	return self->isItemHidden(item);
}

void QListWidget_setItemHidden(QListWidget* self, QListWidgetItem* item, bool hide) {
	self->setItemHidden(item, hide);
}

void QListWidget_dropEvent(QListWidget* self, QDropEvent* event) {
	self->dropEvent(event);
}

void QListWidget_scrollToItem(QListWidget* self, QListWidgetItem* item) {
	self->scrollToItem(item);
}

void QListWidget_clear(QListWidget* self) {
	self->clear();
}

void QListWidget_itemPressed(QListWidget* self, QListWidgetItem* item) {
	self->itemPressed(item);
}

void QListWidget_connect_itemPressed(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(QListWidgetItem*)>(&QListWidget::itemPressed), self, [=](QListWidgetItem* item) {
		QListWidgetItem* sigval1 = item;
		miqt_exec_callback_QListWidget_itemPressed(slot, sigval1);
	});
}

void QListWidget_itemClicked(QListWidget* self, QListWidgetItem* item) {
	self->itemClicked(item);
}

void QListWidget_connect_itemClicked(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(QListWidgetItem*)>(&QListWidget::itemClicked), self, [=](QListWidgetItem* item) {
		QListWidgetItem* sigval1 = item;
		miqt_exec_callback_QListWidget_itemClicked(slot, sigval1);
	});
}

void QListWidget_itemDoubleClicked(QListWidget* self, QListWidgetItem* item) {
	self->itemDoubleClicked(item);
}

void QListWidget_connect_itemDoubleClicked(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(QListWidgetItem*)>(&QListWidget::itemDoubleClicked), self, [=](QListWidgetItem* item) {
		QListWidgetItem* sigval1 = item;
		miqt_exec_callback_QListWidget_itemDoubleClicked(slot, sigval1);
	});
}

void QListWidget_itemActivated(QListWidget* self, QListWidgetItem* item) {
	self->itemActivated(item);
}

void QListWidget_connect_itemActivated(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(QListWidgetItem*)>(&QListWidget::itemActivated), self, [=](QListWidgetItem* item) {
		QListWidgetItem* sigval1 = item;
		miqt_exec_callback_QListWidget_itemActivated(slot, sigval1);
	});
}

void QListWidget_itemEntered(QListWidget* self, QListWidgetItem* item) {
	self->itemEntered(item);
}

void QListWidget_connect_itemEntered(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(QListWidgetItem*)>(&QListWidget::itemEntered), self, [=](QListWidgetItem* item) {
		QListWidgetItem* sigval1 = item;
		miqt_exec_callback_QListWidget_itemEntered(slot, sigval1);
	});
}

void QListWidget_itemChanged(QListWidget* self, QListWidgetItem* item) {
	self->itemChanged(item);
}

void QListWidget_connect_itemChanged(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(QListWidgetItem*)>(&QListWidget::itemChanged), self, [=](QListWidgetItem* item) {
		QListWidgetItem* sigval1 = item;
		miqt_exec_callback_QListWidget_itemChanged(slot, sigval1);
	});
}

void QListWidget_currentItemChanged(QListWidget* self, QListWidgetItem* current, QListWidgetItem* previous) {
	self->currentItemChanged(current, previous);
}

void QListWidget_connect_currentItemChanged(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(QListWidgetItem*, QListWidgetItem*)>(&QListWidget::currentItemChanged), self, [=](QListWidgetItem* current, QListWidgetItem* previous) {
		QListWidgetItem* sigval1 = current;
		QListWidgetItem* sigval2 = previous;
		miqt_exec_callback_QListWidget_currentItemChanged(slot, sigval1, sigval2);
	});
}

void QListWidget_currentTextChanged(QListWidget* self, struct miqt_string currentText) {
	QString currentText_QString = QString::fromUtf8(currentText.data, currentText.len);
	self->currentTextChanged(currentText_QString);
}

void QListWidget_connect_currentTextChanged(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(const QString&)>(&QListWidget::currentTextChanged), self, [=](const QString& currentText) {
		const QString currentText_ret = currentText;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray currentText_b = currentText_ret.toUtf8();
		struct miqt_string currentText_ms;
		currentText_ms.len = currentText_b.length();
		currentText_ms.data = static_cast<char*>(malloc(currentText_ms.len));
		memcpy(currentText_ms.data, currentText_b.data(), currentText_ms.len);
		struct miqt_string sigval1 = currentText_ms;
		miqt_exec_callback_QListWidget_currentTextChanged(slot, sigval1);
	});
}

void QListWidget_currentRowChanged(QListWidget* self, int currentRow) {
	self->currentRowChanged(static_cast<int>(currentRow));
}

void QListWidget_connect_currentRowChanged(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)(int)>(&QListWidget::currentRowChanged), self, [=](int currentRow) {
		int sigval1 = currentRow;
		miqt_exec_callback_QListWidget_currentRowChanged(slot, sigval1);
	});
}

void QListWidget_itemSelectionChanged(QListWidget* self) {
	self->itemSelectionChanged();
}

void QListWidget_connect_itemSelectionChanged(QListWidget* self, intptr_t slot) {
	VirtualQListWidget::connect(self, static_cast<void (QListWidget::*)()>(&QListWidget::itemSelectionChanged), self, [=]() {
		miqt_exec_callback_QListWidget_itemSelectionChanged(slot);
	});
}

struct miqt_string QListWidget_tr2(const char* s, const char* c) {
	QString _ret = QListWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QListWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QListWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QListWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QListWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QListWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QListWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QListWidget_sortItems1(QListWidget* self, int order) {
	self->sortItems(static_cast<Qt::SortOrder>(order));
}

void QListWidget_scrollToItem2(QListWidget* self, QListWidgetItem* item, int hint) {
	self->scrollToItem(item, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QMetaObject* QListWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQListWidget*)(self) )->QListWidget::metaObject();

}

void* QListWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQListWidget*)(self) )->QListWidget::qt_metacast(param1);

}

int QListWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQListWidget*)(self) )->QListWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QListWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {

	( (VirtualQListWidget*)(self) )->QListWidget::setSelectionModel(selectionModel);

}

void QListWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::dropEvent(event);

}

bool QListWidget_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQListWidget*)(self) )->QListWidget::event(e);

}

struct miqt_array /* of struct miqt_string */  QListWidget_virtualbase_mimeTypes(const void* self) {

	QStringList _ret = ( (const VirtualQListWidget*)(self) )->QListWidget::mimeTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;

}

QMimeData* QListWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QListWidgetItem* */  items) {
	QList<QListWidgetItem *> items_QList;
	items_QList.reserve(items.len);
	QListWidgetItem** items_arr = static_cast<QListWidgetItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}

	return ( (const VirtualQListWidget*)(self) )->QListWidget::mimeData(items_QList);

}

bool QListWidget_virtualbase_dropMimeData(void* self, int index, QMimeData* data, int action) {

	return ( (VirtualQListWidget*)(self) )->QListWidget::dropMimeData(static_cast<int>(index), data, static_cast<Qt::DropAction>(action));

}

int QListWidget_virtualbase_supportedDropActions(const void* self) {

	Qt::DropActions _ret = ( (const VirtualQListWidget*)(self) )->QListWidget::supportedDropActions();
	return static_cast<int>(_ret);

}

QRect* QListWidget_virtualbase_visualRect(const void* self, QModelIndex* index) {

	return new QRect(( (const VirtualQListWidget*)(self) )->QListWidget::visualRect(*index));

}

void QListWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {

	( (VirtualQListWidget*)(self) )->QListWidget::scrollTo(*index, static_cast<VirtualQListWidget::ScrollHint>(hint));

}

QModelIndex* QListWidget_virtualbase_indexAt(const void* self, QPoint* p) {

	return new QModelIndex(( (const VirtualQListWidget*)(self) )->QListWidget::indexAt(*p));

}

void QListWidget_virtualbase_doItemsLayout(void* self) {

	( (VirtualQListWidget*)(self) )->QListWidget::doItemsLayout();

}

void QListWidget_virtualbase_reset(void* self) {

	( (VirtualQListWidget*)(self) )->QListWidget::reset();

}

void QListWidget_virtualbase_setRootIndex(void* self, QModelIndex* index) {

	( (VirtualQListWidget*)(self) )->QListWidget::setRootIndex(*index);

}

void QListWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQListWidget*)(self) )->QListWidget::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

void QListWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	( (VirtualQListWidget*)(self) )->QListWidget::dataChanged(*topLeft, *bottomRight, roles_QList);

}

void QListWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQListWidget*)(self) )->QListWidget::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QListWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQListWidget*)(self) )->QListWidget::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QListWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e) {

	( (VirtualQListWidget*)(self) )->QListWidget::mouseMoveEvent(e);

}

void QListWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {

	( (VirtualQListWidget*)(self) )->QListWidget::mouseReleaseEvent(e);

}

void QListWidget_virtualbase_wheelEvent(void* self, QWheelEvent* e) {

	( (VirtualQListWidget*)(self) )->QListWidget::wheelEvent(e);

}

void QListWidget_virtualbase_timerEvent(void* self, QTimerEvent* e) {

	( (VirtualQListWidget*)(self) )->QListWidget::timerEvent(e);

}

void QListWidget_virtualbase_resizeEvent(void* self, QResizeEvent* e) {

	( (VirtualQListWidget*)(self) )->QListWidget::resizeEvent(e);

}

void QListWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e) {

	( (VirtualQListWidget*)(self) )->QListWidget::dragMoveEvent(e);

}

void QListWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e) {

	( (VirtualQListWidget*)(self) )->QListWidget::dragLeaveEvent(e);

}

void QListWidget_virtualbase_startDrag(void* self, int supportedActions) {

	( (VirtualQListWidget*)(self) )->QListWidget::startDrag(static_cast<Qt::DropActions>(supportedActions));

}

QStyleOptionViewItem* QListWidget_virtualbase_viewOptions(const void* self) {

	return new QStyleOptionViewItem(( (const VirtualQListWidget*)(self) )->QListWidget::viewOptions());

}

void QListWidget_virtualbase_paintEvent(void* self, QPaintEvent* e) {

	( (VirtualQListWidget*)(self) )->QListWidget::paintEvent(e);

}

int QListWidget_virtualbase_horizontalOffset(const void* self) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::horizontalOffset();

}

int QListWidget_virtualbase_verticalOffset(const void* self) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::verticalOffset();

}

QModelIndex* QListWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers) {

	return new QModelIndex(( (VirtualQListWidget*)(self) )->QListWidget::moveCursor(static_cast<VirtualQListWidget::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));

}

void QListWidget_virtualbase_setSelection(void* self, QRect* rect, int command) {

	( (VirtualQListWidget*)(self) )->QListWidget::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));

}

QRegion* QListWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {

	return new QRegion(( (const VirtualQListWidget*)(self) )->QListWidget::visualRegionForSelection(*selection));

}

struct miqt_array /* of QModelIndex* */  QListWidget_virtualbase_selectedIndexes(const void* self) {

	QModelIndexList _ret = ( (const VirtualQListWidget*)(self) )->QListWidget::selectedIndexes();
	// Convert QList<> from C++ memory to manually-managed C memory
	QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QModelIndex(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;

}

void QListWidget_virtualbase_updateGeometries(void* self) {

	( (VirtualQListWidget*)(self) )->QListWidget::updateGeometries();

}

bool QListWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::isIndexHidden(*index);

}

void QListWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {

	( (VirtualQListWidget*)(self) )->QListWidget::selectionChanged(*selected, *deselected);

}

void QListWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {

	( (VirtualQListWidget*)(self) )->QListWidget::currentChanged(*current, *previous);

}

QSize* QListWidget_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQListWidget*)(self) )->QListWidget::viewportSizeHint());

}

void QListWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	( (VirtualQListWidget*)(self) )->QListWidget::keyboardSearch(search_QString);

}

int QListWidget_virtualbase_sizeHintForRow(const void* self, int row) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::sizeHintForRow(static_cast<int>(row));

}

int QListWidget_virtualbase_sizeHintForColumn(const void* self, int column) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::sizeHintForColumn(static_cast<int>(column));

}

QVariant* QListWidget_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQListWidget*)(self) )->QListWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QListWidget_virtualbase_selectAll(void* self) {

	( (VirtualQListWidget*)(self) )->QListWidget::selectAll();

}

void QListWidget_virtualbase_updateEditorData(void* self) {

	( (VirtualQListWidget*)(self) )->QListWidget::updateEditorData();

}

void QListWidget_virtualbase_updateEditorGeometries(void* self) {

	( (VirtualQListWidget*)(self) )->QListWidget::updateEditorGeometries();

}

void QListWidget_virtualbase_verticalScrollbarAction(void* self, int action) {

	( (VirtualQListWidget*)(self) )->QListWidget::verticalScrollbarAction(static_cast<int>(action));

}

void QListWidget_virtualbase_horizontalScrollbarAction(void* self, int action) {

	( (VirtualQListWidget*)(self) )->QListWidget::horizontalScrollbarAction(static_cast<int>(action));

}

void QListWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value) {

	( (VirtualQListWidget*)(self) )->QListWidget::verticalScrollbarValueChanged(static_cast<int>(value));

}

void QListWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {

	( (VirtualQListWidget*)(self) )->QListWidget::horizontalScrollbarValueChanged(static_cast<int>(value));

}

void QListWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {

	( (VirtualQListWidget*)(self) )->QListWidget::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

}

void QListWidget_virtualbase_commitData(void* self, QWidget* editor) {

	( (VirtualQListWidget*)(self) )->QListWidget::commitData(editor);

}

void QListWidget_virtualbase_editorDestroyed(void* self, QObject* editor) {

	( (VirtualQListWidget*)(self) )->QListWidget::editorDestroyed(editor);

}

bool QListWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {

	return ( (VirtualQListWidget*)(self) )->QListWidget::edit(*index, static_cast<VirtualQListWidget::EditTrigger>(trigger), event);

}

int QListWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = ( (const VirtualQListWidget*)(self) )->QListWidget::selectionCommand(*index, event);
	return static_cast<int>(_ret);

}

bool QListWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQListWidget*)(self) )->QListWidget::focusNextPrevChild(next);

}

bool QListWidget_virtualbase_viewportEvent(void* self, QEvent* event) {

	return ( (VirtualQListWidget*)(self) )->QListWidget::viewportEvent(event);

}

void QListWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::mousePressEvent(event);

}

void QListWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::mouseDoubleClickEvent(event);

}

void QListWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::dragEnterEvent(event);

}

void QListWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::focusInEvent(event);

}

void QListWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::focusOutEvent(event);

}

void QListWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::keyPressEvent(event);

}

void QListWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::inputMethodEvent(event);

}

bool QListWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQListWidget*)(self) )->QListWidget::eventFilter(object, event);

}

QSize* QListWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQListWidget*)(self) )->QListWidget::minimumSizeHint());

}

QSize* QListWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQListWidget*)(self) )->QListWidget::sizeHint());

}

void QListWidget_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQListWidget*)(self) )->QListWidget::setupViewport(viewport);

}

void QListWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQListWidget*)(self) )->QListWidget::contextMenuEvent(param1);

}

void QListWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQListWidget*)(self) )->QListWidget::changeEvent(param1);

}

int QListWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::devType();

}

void QListWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQListWidget*)(self) )->QListWidget::setVisible(visible);

}

int QListWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::heightForWidth(static_cast<int>(param1));

}

bool QListWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::hasHeightForWidth();

}

QPaintEngine* QListWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::paintEngine();

}

void QListWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::keyReleaseEvent(event);

}

void QListWidget_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::enterEvent(event);

}

void QListWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::leaveEvent(event);

}

void QListWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::moveEvent(event);

}

void QListWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::closeEvent(event);

}

void QListWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::tabletEvent(event);

}

void QListWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::actionEvent(event);

}

void QListWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::showEvent(event);

}

void QListWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::hideEvent(event);

}

bool QListWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQListWidget*)(self) )->QListWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QListWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::metric(static_cast<VirtualQListWidget::PaintDeviceMetric>(param1));

}

void QListWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQListWidget*)(self) )->QListWidget::initPainter(painter);

}

QPaintDevice* QListWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::redirected(offset);

}

QPainter* QListWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQListWidget*)(self) )->QListWidget::sharedPainter();

}

void QListWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::childEvent(event);

}

void QListWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQListWidget*)(self) )->QListWidget::customEvent(event);

}

void QListWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQListWidget*)(self) )->QListWidget::connectNotify(*signal);

}

void QListWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQListWidget*)(self) )->QListWidget::disconnectNotify(*signal);

}

const QMetaObject* QListWidget_staticMetaObject() { return &QListWidget::staticMetaObject; }
struct miqt_array /* of QListWidgetItem* */  QListWidget_protectedbase_items(bool* _dynamic_cast_ok, const void* self, QMimeData* data) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (struct miqt_array){};
	}
	
	*_dynamic_cast_ok = true;
	
	QList<QListWidgetItem *> _ret = self_cast->items(data);
	// Convert QList<> from C++ memory to manually-managed C memory
	QListWidgetItem** _arr = static_cast<QListWidgetItem**>(malloc(sizeof(QListWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;

}

QModelIndex* QListWidget_protectedbase_indexFromItem(bool* _dynamic_cast_ok, const void* self, QListWidgetItem* item) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QModelIndex(self_cast->indexFromItem(item));

}

QModelIndex* QListWidget_protectedbase_indexFromItemWithItem(bool* _dynamic_cast_ok, const void* self, QListWidgetItem* item) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QModelIndex(self_cast->indexFromItem(item));

}

QListWidgetItem* QListWidget_protectedbase_itemFromIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->itemFromIndex(*index);

}

void QListWidget_protectedbase_resizeContents(bool* _dynamic_cast_ok, void* self, int width, int height) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->resizeContents(static_cast<int>(width), static_cast<int>(height));

}

QSize* QListWidget_protectedbase_contentsSize(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QSize(self_cast->contentsSize());

}

QRect* QListWidget_protectedbase_rectForIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRect(self_cast->rectForIndex(*index));

}

void QListWidget_protectedbase_setPositionForIndex(bool* _dynamic_cast_ok, void* self, QPoint* position, QModelIndex* index) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setPositionForIndex(*position, *index);

}

void QListWidget_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setHorizontalStepsPerItem(static_cast<int>(steps));

}

int QListWidget_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->horizontalStepsPerItem();

}

void QListWidget_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setVerticalStepsPerItem(static_cast<int>(steps));

}

int QListWidget_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->verticalStepsPerItem();

}

int QListWidget_protectedbase_state(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQListWidget::State _ret = self_cast->state();
	return static_cast<int>(_ret);

}

void QListWidget_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setState(static_cast<VirtualQListWidget::State>(state));

}

void QListWidget_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scheduleDelayedItemsLayout();

}

void QListWidget_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->executeDelayedItemsLayout();

}

void QListWidget_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setDirtyRegion(*region);

}

void QListWidget_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

}

QPoint* QListWidget_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QPoint(self_cast->dirtyRegionOffset());

}

void QListWidget_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->startAutoScroll();

}

void QListWidget_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->stopAutoScroll();

}

void QListWidget_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->doAutoScroll();

}

int QListWidget_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return (int)(0);
	}
	
	*_dynamic_cast_ok = true;
	
	VirtualQListWidget::DropIndicatorPosition _ret = self_cast->dropIndicatorPosition();
	return static_cast<int>(_ret);

}

void QListWidget_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QListWidget_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QMargins(self_cast->viewportMargins());

}

void QListWidget_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QListWidget_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QListWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QListWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QListWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QListWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QListWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QListWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QListWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QListWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QListWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQListWidget* self_cast = dynamic_cast<VirtualQListWidget*>( (QListWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QListWidget_delete(QListWidget* self) {
	delete self;
}

