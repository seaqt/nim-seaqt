#include <QAbstractItemDelegate>
#include <QAbstractItemView>
#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QBrush>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDataStream>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
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
#include <QTableView>
#include <QTableWidget>
#include <QTableWidgetItem>
#include <QTableWidgetSelectionRange>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtablewidget.h>
#include "gen_qtablewidget.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QTableWidgetSelectionRange* QTableWidgetSelectionRange_new() {
	return new QTableWidgetSelectionRange();
}

QTableWidgetSelectionRange* QTableWidgetSelectionRange_new2(int top, int left, int bottom, int right) {
	return new QTableWidgetSelectionRange(static_cast<int>(top), static_cast<int>(left), static_cast<int>(bottom), static_cast<int>(right));
}

int QTableWidgetSelectionRange_topRow(const QTableWidgetSelectionRange* self) {
	return self->topRow();
}

int QTableWidgetSelectionRange_bottomRow(const QTableWidgetSelectionRange* self) {
	return self->bottomRow();
}

int QTableWidgetSelectionRange_leftColumn(const QTableWidgetSelectionRange* self) {
	return self->leftColumn();
}

int QTableWidgetSelectionRange_rightColumn(const QTableWidgetSelectionRange* self) {
	return self->rightColumn();
}

int QTableWidgetSelectionRange_rowCount(const QTableWidgetSelectionRange* self) {
	return self->rowCount();
}

int QTableWidgetSelectionRange_columnCount(const QTableWidgetSelectionRange* self) {
	return self->columnCount();
}

void QTableWidgetSelectionRange_delete(QTableWidgetSelectionRange* self) {
	delete self;
}

class VirtualQTableWidgetItem final : public QTableWidgetItem {
	struct QTableWidgetItem_VTable* vtbl;
public:

	VirtualQTableWidgetItem(struct QTableWidgetItem_VTable* vtbl): QTableWidgetItem(), vtbl(vtbl) {};
	VirtualQTableWidgetItem(struct QTableWidgetItem_VTable* vtbl, const QString& text): QTableWidgetItem(text), vtbl(vtbl) {};
	VirtualQTableWidgetItem(struct QTableWidgetItem_VTable* vtbl, const QIcon& icon, const QString& text): QTableWidgetItem(icon, text), vtbl(vtbl) {};
	VirtualQTableWidgetItem(struct QTableWidgetItem_VTable* vtbl, const QTableWidgetItem& other): QTableWidgetItem(other), vtbl(vtbl) {};
	VirtualQTableWidgetItem(struct QTableWidgetItem_VTable* vtbl, int type): QTableWidgetItem(type), vtbl(vtbl) {};
	VirtualQTableWidgetItem(struct QTableWidgetItem_VTable* vtbl, const QString& text, int type): QTableWidgetItem(text, type), vtbl(vtbl) {};
	VirtualQTableWidgetItem(struct QTableWidgetItem_VTable* vtbl, const QIcon& icon, const QString& text, int type): QTableWidgetItem(icon, text, type), vtbl(vtbl) {};

	virtual ~VirtualQTableWidgetItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QTableWidgetItem* clone() const override {
		if (vtbl->clone == 0) {
			return QTableWidgetItem::clone();
		}


		QTableWidgetItem* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QTableWidgetItem* QTableWidgetItem_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QVariant data(int role) const override {
		if (vtbl->data == 0) {
			return QTableWidgetItem::data(role);
		}

		int sigval1 = role;

		QVariant* callback_return_value = vtbl->data(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTableWidgetItem_virtualbase_data(const void* self, int role);

	// Subclass to allow providing a Go implementation
	virtual void setData(int role, const QVariant& value) override {
		if (vtbl->setData == 0) {
			QTableWidgetItem::setData(role, value);
			return;
		}

		int sigval1 = role;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setData(vtbl, this, sigval1, sigval2);

	}

	friend void QTableWidgetItem_virtualbase_setData(void* self, int role, QVariant* value);

	// Subclass to allow providing a Go implementation
	virtual bool operator<(const QTableWidgetItem& other) const override {
		if (vtbl->operatorLesser == 0) {
			return QTableWidgetItem::operator<(other);
		}

		const QTableWidgetItem& other_ret = other;
		// Cast returned reference into pointer
		QTableWidgetItem* sigval1 = const_cast<QTableWidgetItem*>(&other_ret);

		bool callback_return_value = vtbl->operatorLesser(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableWidgetItem_virtualbase_operatorLesser(const void* self, QTableWidgetItem* other);

	// Subclass to allow providing a Go implementation
	virtual void read(QDataStream& in) override {
		if (vtbl->read == 0) {
			QTableWidgetItem::read(in);
			return;
		}

		QDataStream& in_ret = in;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &in_ret;

		vtbl->read(vtbl, this, sigval1);

	}

	friend void QTableWidgetItem_virtualbase_read(void* self, QDataStream* in);

	// Subclass to allow providing a Go implementation
	virtual void write(QDataStream& out) const override {
		if (vtbl->write == 0) {
			QTableWidgetItem::write(out);
			return;
		}

		QDataStream& out_ret = out;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &out_ret;

		vtbl->write(vtbl, this, sigval1);

	}

	friend void QTableWidgetItem_virtualbase_write(const void* self, QDataStream* out);

};

QTableWidgetItem* QTableWidgetItem_new(struct QTableWidgetItem_VTable* vtbl) {
	return new VirtualQTableWidgetItem(vtbl);
}

QTableWidgetItem* QTableWidgetItem_new2(struct QTableWidgetItem_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQTableWidgetItem(vtbl, text_QString);
}

QTableWidgetItem* QTableWidgetItem_new3(struct QTableWidgetItem_VTable* vtbl, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQTableWidgetItem(vtbl, *icon, text_QString);
}

QTableWidgetItem* QTableWidgetItem_new4(struct QTableWidgetItem_VTable* vtbl, QTableWidgetItem* other) {
	return new VirtualQTableWidgetItem(vtbl, *other);
}

QTableWidgetItem* QTableWidgetItem_new5(struct QTableWidgetItem_VTable* vtbl, int type) {
	return new VirtualQTableWidgetItem(vtbl, static_cast<int>(type));
}

QTableWidgetItem* QTableWidgetItem_new6(struct QTableWidgetItem_VTable* vtbl, struct miqt_string text, int type) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQTableWidgetItem(vtbl, text_QString, static_cast<int>(type));
}

QTableWidgetItem* QTableWidgetItem_new7(struct QTableWidgetItem_VTable* vtbl, QIcon* icon, struct miqt_string text, int type) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQTableWidgetItem(vtbl, *icon, text_QString, static_cast<int>(type));
}

QTableWidgetItem* QTableWidgetItem_clone(const QTableWidgetItem* self) {
	return self->clone();
}

QTableWidget* QTableWidgetItem_tableWidget(const QTableWidgetItem* self) {
	return self->tableWidget();
}

int QTableWidgetItem_row(const QTableWidgetItem* self) {
	return self->row();
}

int QTableWidgetItem_column(const QTableWidgetItem* self) {
	return self->column();
}

void QTableWidgetItem_setSelected(QTableWidgetItem* self, bool select) {
	self->setSelected(select);
}

bool QTableWidgetItem_isSelected(const QTableWidgetItem* self) {
	return self->isSelected();
}

int QTableWidgetItem_flags(const QTableWidgetItem* self) {
	Qt::ItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QTableWidgetItem_setFlags(QTableWidgetItem* self, int flags) {
	self->setFlags(static_cast<Qt::ItemFlags>(flags));
}

struct miqt_string QTableWidgetItem_text(const QTableWidgetItem* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTableWidgetItem_setText(QTableWidgetItem* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

QIcon* QTableWidgetItem_icon(const QTableWidgetItem* self) {
	return new QIcon(self->icon());
}

void QTableWidgetItem_setIcon(QTableWidgetItem* self, QIcon* icon) {
	self->setIcon(*icon);
}

struct miqt_string QTableWidgetItem_statusTip(const QTableWidgetItem* self) {
	QString _ret = self->statusTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTableWidgetItem_setStatusTip(QTableWidgetItem* self, struct miqt_string statusTip) {
	QString statusTip_QString = QString::fromUtf8(statusTip.data, statusTip.len);
	self->setStatusTip(statusTip_QString);
}

struct miqt_string QTableWidgetItem_toolTip(const QTableWidgetItem* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTableWidgetItem_setToolTip(QTableWidgetItem* self, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(toolTip_QString);
}

struct miqt_string QTableWidgetItem_whatsThis(const QTableWidgetItem* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTableWidgetItem_setWhatsThis(QTableWidgetItem* self, struct miqt_string whatsThis) {
	QString whatsThis_QString = QString::fromUtf8(whatsThis.data, whatsThis.len);
	self->setWhatsThis(whatsThis_QString);
}

QFont* QTableWidgetItem_font(const QTableWidgetItem* self) {
	return new QFont(self->font());
}

void QTableWidgetItem_setFont(QTableWidgetItem* self, QFont* font) {
	self->setFont(*font);
}

int QTableWidgetItem_textAlignment(const QTableWidgetItem* self) {
	return self->textAlignment();
}

void QTableWidgetItem_setTextAlignment(QTableWidgetItem* self, int alignment) {
	self->setTextAlignment(static_cast<int>(alignment));
}

void QTableWidgetItem_setTextAlignmentWithAlignment(QTableWidgetItem* self, int alignment) {
	self->setTextAlignment(static_cast<Qt::AlignmentFlag>(alignment));
}

void QTableWidgetItem_setTextAlignment2(QTableWidgetItem* self, int alignment) {
	self->setTextAlignment(static_cast<Qt::Alignment>(alignment));
}

QBrush* QTableWidgetItem_background(const QTableWidgetItem* self) {
	return new QBrush(self->background());
}

void QTableWidgetItem_setBackground(QTableWidgetItem* self, QBrush* brush) {
	self->setBackground(*brush);
}

QBrush* QTableWidgetItem_foreground(const QTableWidgetItem* self) {
	return new QBrush(self->foreground());
}

void QTableWidgetItem_setForeground(QTableWidgetItem* self, QBrush* brush) {
	self->setForeground(*brush);
}

int QTableWidgetItem_checkState(const QTableWidgetItem* self) {
	Qt::CheckState _ret = self->checkState();
	return static_cast<int>(_ret);
}

void QTableWidgetItem_setCheckState(QTableWidgetItem* self, int state) {
	self->setCheckState(static_cast<Qt::CheckState>(state));
}

QSize* QTableWidgetItem_sizeHint(const QTableWidgetItem* self) {
	return new QSize(self->sizeHint());
}

void QTableWidgetItem_setSizeHint(QTableWidgetItem* self, QSize* size) {
	self->setSizeHint(*size);
}

QVariant* QTableWidgetItem_data(const QTableWidgetItem* self, int role) {
	return new QVariant(self->data(static_cast<int>(role)));
}

void QTableWidgetItem_setData(QTableWidgetItem* self, int role, QVariant* value) {
	self->setData(static_cast<int>(role), *value);
}

bool QTableWidgetItem_operatorLesser(const QTableWidgetItem* self, QTableWidgetItem* other) {
	return (*self < *other);
}

void QTableWidgetItem_read(QTableWidgetItem* self, QDataStream* in) {
	self->read(*in);
}

void QTableWidgetItem_write(const QTableWidgetItem* self, QDataStream* out) {
	self->write(*out);
}

void QTableWidgetItem_operatorAssign(QTableWidgetItem* self, QTableWidgetItem* other) {
	self->operator=(*other);
}

int QTableWidgetItem_type(const QTableWidgetItem* self) {
	return self->type();
}

QTableWidgetItem* QTableWidgetItem_virtualbase_clone(const void* self) {

	return ( (const VirtualQTableWidgetItem*)(self) )->QTableWidgetItem::clone();

}

QVariant* QTableWidgetItem_virtualbase_data(const void* self, int role) {

	return new QVariant(( (const VirtualQTableWidgetItem*)(self) )->QTableWidgetItem::data(static_cast<int>(role)));

}

void QTableWidgetItem_virtualbase_setData(void* self, int role, QVariant* value) {

	( (VirtualQTableWidgetItem*)(self) )->QTableWidgetItem::setData(static_cast<int>(role), *value);

}

bool QTableWidgetItem_virtualbase_operatorLesser(const void* self, QTableWidgetItem* other) {

	return ( (const VirtualQTableWidgetItem*)(self) )->QTableWidgetItem::operator<(*other);

}

void QTableWidgetItem_virtualbase_read(void* self, QDataStream* in) {

	( (VirtualQTableWidgetItem*)(self) )->QTableWidgetItem::read(*in);

}

void QTableWidgetItem_virtualbase_write(const void* self, QDataStream* out) {

	( (const VirtualQTableWidgetItem*)(self) )->QTableWidgetItem::write(*out);

}

void QTableWidgetItem_delete(QTableWidgetItem* self) {
	delete self;
}

class VirtualQTableWidget final : public QTableWidget {
	struct QTableWidget_VTable* vtbl;
public:

	VirtualQTableWidget(struct QTableWidget_VTable* vtbl, QWidget* parent): QTableWidget(parent), vtbl(vtbl) {};
	VirtualQTableWidget(struct QTableWidget_VTable* vtbl): QTableWidget(), vtbl(vtbl) {};
	VirtualQTableWidget(struct QTableWidget_VTable* vtbl, int rows, int columns): QTableWidget(rows, columns), vtbl(vtbl) {};
	VirtualQTableWidget(struct QTableWidget_VTable* vtbl, int rows, int columns, QWidget* parent): QTableWidget(rows, columns, parent), vtbl(vtbl) {};

	virtual ~VirtualQTableWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTableWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTableWidget_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTableWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTableWidget_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTableWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QTableWidget::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableWidget_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QTableWidget::mimeTypes();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->mimeTypes(vtbl, this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			free(callback_return_value_arr[i].data);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of struct miqt_string */  QTableWidget_virtualbase_mimeTypes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QMimeData* mimeData(const QList<QTableWidgetItem *>& items) const override {
		if (vtbl->mimeData == 0) {
			return QTableWidget::mimeData(items);
		}

		const QList<QTableWidgetItem *>& items_ret = items;
		// Convert QList<> from C++ memory to manually-managed C memory
		QTableWidgetItem** items_arr = static_cast<QTableWidgetItem**>(malloc(sizeof(QTableWidgetItem*) * items_ret.length()));
		for (size_t i = 0, e = items_ret.length(); i < e; ++i) {
			items_arr[i] = items_ret[i];
		}
		struct miqt_array items_out;
		items_out.len = items_ret.length();
		items_out.data = static_cast<void*>(items_arr);
		struct miqt_array /* of QTableWidgetItem* */  sigval1 = items_out;

		QMimeData* callback_return_value = vtbl->mimeData(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QMimeData* QTableWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QTableWidgetItem* */  items);

	// Subclass to allow providing a Go implementation
	virtual bool dropMimeData(int row, int column, const QMimeData* data, Qt::DropAction action) override {
		if (vtbl->dropMimeData == 0) {
			return QTableWidget::dropMimeData(row, column, data, action);
		}

		int sigval1 = row;
		int sigval2 = column;
		QMimeData* sigval3 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval4 = static_cast<int>(action_ret);

		bool callback_return_value = vtbl->dropMimeData(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QTableWidget_virtualbase_dropMimeData(void* self, int row, int column, QMimeData* data, int action);

	// Subclass to allow providing a Go implementation
	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QTableWidget::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_supportedDropActions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTableWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QTableWidget::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_setRootIndex(void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QTableWidget::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QTableWidget::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	friend void QTableWidget_virtualbase_doItemsLayout(void* self);

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QTableWidget::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QTableWidget_virtualbase_visualRect(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QTableWidget::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	friend void QTableWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QTableWidget::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTableWidget_virtualbase_indexAt(const void* self, QPoint* p);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTableWidget::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QTableWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual void initViewItemOption(QStyleOptionViewItem* option) const override {
		if (vtbl->initViewItemOption == 0) {
			QTableWidget::initViewItemOption(option);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;

		vtbl->initViewItemOption(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QTableWidget::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_paintEvent(void* self, QPaintEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTableWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QTableWidget::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_horizontalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QTableWidget::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_verticalOffset(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QTableWidget::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTableWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QTableWidget::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	friend void QTableWidget_virtualbase_setSelection(void* self, QRect* rect, int command);

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QTableWidget::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRegion* QTableWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QTableWidget::selectedIndexes();
		}


		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->selectedIndexes(vtbl, this);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of QModelIndex* */  QTableWidget_virtualbase_selectedIndexes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QTableWidget::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	friend void QTableWidget_virtualbase_updateGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTableWidget::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTableWidget_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QTableWidget::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_sizeHintForRow(const void* self, int row);

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QTableWidget::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_sizeHintForColumn(const void* self, int column);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QTableWidget::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_verticalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QTableWidget::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_horizontalScrollbarAction(void* self, int action);

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QTableWidget::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QTableWidget::selectionChanged(selected, deselected);
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

	friend void QTableWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QTableWidget::currentChanged(current, previous);
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

	friend void QTableWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QTableWidget::keyboardSearch(search);
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

	friend void QTableWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search);

	// Subclass to allow providing a Go implementation
	virtual QAbstractItemDelegate* itemDelegateForIndex(const QModelIndex& index) const override {
		if (vtbl->itemDelegateForIndex == 0) {
			return QTableWidget::itemDelegateForIndex(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QAbstractItemDelegate* callback_return_value = vtbl->itemDelegateForIndex(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QAbstractItemDelegate* QTableWidget_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTableWidget::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTableWidget_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QTableWidget::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	friend void QTableWidget_virtualbase_reset(void* self);

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QTableWidget::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	friend void QTableWidget_virtualbase_selectAll(void* self);

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QList<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QTableWidget::dataChanged(topLeft, bottomRight, roles);
			return;
		}

		const QModelIndex& topLeft_ret = topLeft;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&topLeft_ret);
		const QModelIndex& bottomRight_ret = bottomRight;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&bottomRight_ret);
		const QList<int>& roles_ret = roles;
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

	friend void QTableWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QTableWidget::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QTableWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QTableWidget::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	friend void QTableWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QTableWidget::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	friend void QTableWidget_virtualbase_updateEditorData(void* self);

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QTableWidget::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	friend void QTableWidget_virtualbase_updateEditorGeometries(void* self);

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QTableWidget::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QTableWidget::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value);

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QTableWidget::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	friend void QTableWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint);

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QTableWidget::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_commitData(void* self, QWidget* editor);

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QTableWidget::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_editorDestroyed(void* self, QObject* editor);

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QTableWidget::edit(index, trigger, event);
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

	friend bool QTableWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QTableWidget::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QTableWidget::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_startDrag(void* self, int supportedActions);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTableWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableWidget_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QTableWidget::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTableWidget_virtualbase_viewportEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTableWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTableWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTableWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTableWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTableWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTableWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTableWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTableWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTableWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTableWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTableWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QTableWidget::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTableWidget::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTableWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTableWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTableWidget_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTableWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTableWidget_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTableWidget::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QTableWidget::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QTableWidget::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QTableWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QTableWidget::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTableWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTableWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTableWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTableWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QTableWidget_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTableWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QTableWidget_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTableWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTableWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTableWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTableWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTableWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTableWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTableWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTableWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTableWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTableWidget::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTableWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTableWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTableWidget_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTableWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTableWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTableWidget_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTableWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QTableWidget_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTableWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTableWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTableWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTableWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTableWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTableWidget_protectedbase_rowMoved(void* self, int row, int oldIndex, int newIndex);
	friend void QTableWidget_protectedbase_columnMoved(void* self, int column, int oldIndex, int newIndex);
	friend void QTableWidget_protectedbase_rowResized(void* self, int row, int oldHeight, int newHeight);
	friend void QTableWidget_protectedbase_columnResized(void* self, int column, int oldWidth, int newWidth);
	friend void QTableWidget_protectedbase_rowCountChanged(void* self, int oldCount, int newCount);
	friend void QTableWidget_protectedbase_columnCountChanged(void* self, int oldCount, int newCount);
	friend int QTableWidget_protectedbase_state(const void* self);
	friend void QTableWidget_protectedbase_setState(void* self, int state);
	friend void QTableWidget_protectedbase_scheduleDelayedItemsLayout(void* self);
	friend void QTableWidget_protectedbase_executeDelayedItemsLayout(void* self);
	friend void QTableWidget_protectedbase_setDirtyRegion(void* self, QRegion* region);
	friend void QTableWidget_protectedbase_scrollDirtyRegion(void* self, int dx, int dy);
	friend QPoint* QTableWidget_protectedbase_dirtyRegionOffset(const void* self);
	friend void QTableWidget_protectedbase_startAutoScroll(void* self);
	friend void QTableWidget_protectedbase_stopAutoScroll(void* self);
	friend void QTableWidget_protectedbase_doAutoScroll(void* self);
	friend int QTableWidget_protectedbase_dropIndicatorPosition(const void* self);
	friend void QTableWidget_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom);
	friend QMargins* QTableWidget_protectedbase_viewportMargins(const void* self);
	friend void QTableWidget_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QTableWidget_protectedbase_updateMicroFocus(void* self);
	friend void QTableWidget_protectedbase_create(void* self);
	friend void QTableWidget_protectedbase_destroy(void* self);
	friend bool QTableWidget_protectedbase_focusNextChild(void* self);
	friend bool QTableWidget_protectedbase_focusPreviousChild(void* self);
	friend QObject* QTableWidget_protectedbase_sender(const void* self);
	friend int QTableWidget_protectedbase_senderSignalIndex(const void* self);
	friend int QTableWidget_protectedbase_receivers(const void* self, const char* signal);
	friend bool QTableWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QTableWidget* QTableWidget_new(struct QTableWidget_VTable* vtbl, QWidget* parent) {
	return new VirtualQTableWidget(vtbl, parent);
}

QTableWidget* QTableWidget_new2(struct QTableWidget_VTable* vtbl) {
	return new VirtualQTableWidget(vtbl);
}

QTableWidget* QTableWidget_new3(struct QTableWidget_VTable* vtbl, int rows, int columns) {
	return new VirtualQTableWidget(vtbl, static_cast<int>(rows), static_cast<int>(columns));
}

QTableWidget* QTableWidget_new4(struct QTableWidget_VTable* vtbl, int rows, int columns, QWidget* parent) {
	return new VirtualQTableWidget(vtbl, static_cast<int>(rows), static_cast<int>(columns), parent);
}

void QTableWidget_virtbase(QTableWidget* src, QTableView** outptr_QTableView) {
	*outptr_QTableView = static_cast<QTableView*>(src);
}

QMetaObject* QTableWidget_metaObject(const QTableWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTableWidget_metacast(QTableWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTableWidget_metacall(QTableWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTableWidget_tr(const char* s) {
	QString _ret = QTableWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTableWidget_setRowCount(QTableWidget* self, int rows) {
	self->setRowCount(static_cast<int>(rows));
}

int QTableWidget_rowCount(const QTableWidget* self) {
	return self->rowCount();
}

void QTableWidget_setColumnCount(QTableWidget* self, int columns) {
	self->setColumnCount(static_cast<int>(columns));
}

int QTableWidget_columnCount(const QTableWidget* self) {
	return self->columnCount();
}

int QTableWidget_row(const QTableWidget* self, QTableWidgetItem* item) {
	return self->row(item);
}

int QTableWidget_column(const QTableWidget* self, QTableWidgetItem* item) {
	return self->column(item);
}

QTableWidgetItem* QTableWidget_item(const QTableWidget* self, int row, int column) {
	return self->item(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_setItem(QTableWidget* self, int row, int column, QTableWidgetItem* item) {
	self->setItem(static_cast<int>(row), static_cast<int>(column), item);
}

QTableWidgetItem* QTableWidget_takeItem(QTableWidget* self, int row, int column) {
	return self->takeItem(static_cast<int>(row), static_cast<int>(column));
}

struct miqt_array /* of QTableWidgetItem* */  QTableWidget_items(const QTableWidget* self, QMimeData* data) {
	QList<QTableWidgetItem *> _ret = self->items(data);
	// Convert QList<> from C++ memory to manually-managed C memory
	QTableWidgetItem** _arr = static_cast<QTableWidgetItem**>(malloc(sizeof(QTableWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QModelIndex* QTableWidget_indexFromItem(const QTableWidget* self, QTableWidgetItem* item) {
	return new QModelIndex(self->indexFromItem(item));
}

QTableWidgetItem* QTableWidget_itemFromIndex(const QTableWidget* self, QModelIndex* index) {
	return self->itemFromIndex(*index);
}

QTableWidgetItem* QTableWidget_verticalHeaderItem(const QTableWidget* self, int row) {
	return self->verticalHeaderItem(static_cast<int>(row));
}

void QTableWidget_setVerticalHeaderItem(QTableWidget* self, int row, QTableWidgetItem* item) {
	self->setVerticalHeaderItem(static_cast<int>(row), item);
}

QTableWidgetItem* QTableWidget_takeVerticalHeaderItem(QTableWidget* self, int row) {
	return self->takeVerticalHeaderItem(static_cast<int>(row));
}

QTableWidgetItem* QTableWidget_horizontalHeaderItem(const QTableWidget* self, int column) {
	return self->horizontalHeaderItem(static_cast<int>(column));
}

void QTableWidget_setHorizontalHeaderItem(QTableWidget* self, int column, QTableWidgetItem* item) {
	self->setHorizontalHeaderItem(static_cast<int>(column), item);
}

QTableWidgetItem* QTableWidget_takeHorizontalHeaderItem(QTableWidget* self, int column) {
	return self->takeHorizontalHeaderItem(static_cast<int>(column));
}

void QTableWidget_setVerticalHeaderLabels(QTableWidget* self, struct miqt_array /* of struct miqt_string */  labels) {
	QStringList labels_QList;
	labels_QList.reserve(labels.len);
	struct miqt_string* labels_arr = static_cast<struct miqt_string*>(labels.data);
	for(size_t i = 0; i < labels.len; ++i) {
		QString labels_arr_i_QString = QString::fromUtf8(labels_arr[i].data, labels_arr[i].len);
		labels_QList.push_back(labels_arr_i_QString);
	}
	self->setVerticalHeaderLabels(labels_QList);
}

void QTableWidget_setHorizontalHeaderLabels(QTableWidget* self, struct miqt_array /* of struct miqt_string */  labels) {
	QStringList labels_QList;
	labels_QList.reserve(labels.len);
	struct miqt_string* labels_arr = static_cast<struct miqt_string*>(labels.data);
	for(size_t i = 0; i < labels.len; ++i) {
		QString labels_arr_i_QString = QString::fromUtf8(labels_arr[i].data, labels_arr[i].len);
		labels_QList.push_back(labels_arr_i_QString);
	}
	self->setHorizontalHeaderLabels(labels_QList);
}

int QTableWidget_currentRow(const QTableWidget* self) {
	return self->currentRow();
}

int QTableWidget_currentColumn(const QTableWidget* self) {
	return self->currentColumn();
}

QTableWidgetItem* QTableWidget_currentItem(const QTableWidget* self) {
	return self->currentItem();
}

void QTableWidget_setCurrentItem(QTableWidget* self, QTableWidgetItem* item) {
	self->setCurrentItem(item);
}

void QTableWidget_setCurrentItem2(QTableWidget* self, QTableWidgetItem* item, int command) {
	self->setCurrentItem(item, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

void QTableWidget_setCurrentCell(QTableWidget* self, int row, int column) {
	self->setCurrentCell(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_setCurrentCell2(QTableWidget* self, int row, int column, int command) {
	self->setCurrentCell(static_cast<int>(row), static_cast<int>(column), static_cast<QItemSelectionModel::SelectionFlags>(command));
}

void QTableWidget_sortItems(QTableWidget* self, int column) {
	self->sortItems(static_cast<int>(column));
}

void QTableWidget_setSortingEnabled(QTableWidget* self, bool enable) {
	self->setSortingEnabled(enable);
}

bool QTableWidget_isSortingEnabled(const QTableWidget* self) {
	return self->isSortingEnabled();
}

void QTableWidget_editItem(QTableWidget* self, QTableWidgetItem* item) {
	self->editItem(item);
}

void QTableWidget_openPersistentEditor(QTableWidget* self, QTableWidgetItem* item) {
	self->openPersistentEditor(item);
}

void QTableWidget_closePersistentEditor(QTableWidget* self, QTableWidgetItem* item) {
	self->closePersistentEditor(item);
}

bool QTableWidget_isPersistentEditorOpen(const QTableWidget* self, QTableWidgetItem* item) {
	return self->isPersistentEditorOpen(item);
}

QWidget* QTableWidget_cellWidget(const QTableWidget* self, int row, int column) {
	return self->cellWidget(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_setCellWidget(QTableWidget* self, int row, int column, QWidget* widget) {
	self->setCellWidget(static_cast<int>(row), static_cast<int>(column), widget);
}

void QTableWidget_removeCellWidget(QTableWidget* self, int row, int column) {
	self->removeCellWidget(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_setRangeSelected(QTableWidget* self, QTableWidgetSelectionRange* range, bool select) {
	self->setRangeSelected(*range, select);
}

struct miqt_array /* of QTableWidgetSelectionRange* */  QTableWidget_selectedRanges(const QTableWidget* self) {
	QList<QTableWidgetSelectionRange> _ret = self->selectedRanges();
	// Convert QList<> from C++ memory to manually-managed C memory
	QTableWidgetSelectionRange** _arr = static_cast<QTableWidgetSelectionRange**>(malloc(sizeof(QTableWidgetSelectionRange*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QTableWidgetSelectionRange(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QTableWidgetItem* */  QTableWidget_selectedItems(const QTableWidget* self) {
	QList<QTableWidgetItem *> _ret = self->selectedItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QTableWidgetItem** _arr = static_cast<QTableWidgetItem**>(malloc(sizeof(QTableWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QTableWidgetItem* */  QTableWidget_findItems(const QTableWidget* self, struct miqt_string text, int flags) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QTableWidgetItem *> _ret = self->findItems(text_QString, static_cast<Qt::MatchFlags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	QTableWidgetItem** _arr = static_cast<QTableWidgetItem**>(malloc(sizeof(QTableWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QTableWidget_visualRow(const QTableWidget* self, int logicalRow) {
	return self->visualRow(static_cast<int>(logicalRow));
}

int QTableWidget_visualColumn(const QTableWidget* self, int logicalColumn) {
	return self->visualColumn(static_cast<int>(logicalColumn));
}

QTableWidgetItem* QTableWidget_itemAt(const QTableWidget* self, QPoint* p) {
	return self->itemAt(*p);
}

QTableWidgetItem* QTableWidget_itemAt2(const QTableWidget* self, int x, int y) {
	return self->itemAt(static_cast<int>(x), static_cast<int>(y));
}

QRect* QTableWidget_visualItemRect(const QTableWidget* self, QTableWidgetItem* item) {
	return new QRect(self->visualItemRect(item));
}

QTableWidgetItem* QTableWidget_itemPrototype(const QTableWidget* self) {
	return (QTableWidgetItem*) self->itemPrototype();
}

void QTableWidget_setItemPrototype(QTableWidget* self, QTableWidgetItem* item) {
	self->setItemPrototype(item);
}

void QTableWidget_scrollToItem(QTableWidget* self, QTableWidgetItem* item) {
	self->scrollToItem(item);
}

void QTableWidget_insertRow(QTableWidget* self, int row) {
	self->insertRow(static_cast<int>(row));
}

void QTableWidget_insertColumn(QTableWidget* self, int column) {
	self->insertColumn(static_cast<int>(column));
}

void QTableWidget_removeRow(QTableWidget* self, int row) {
	self->removeRow(static_cast<int>(row));
}

void QTableWidget_removeColumn(QTableWidget* self, int column) {
	self->removeColumn(static_cast<int>(column));
}

void QTableWidget_clear(QTableWidget* self) {
	self->clear();
}

void QTableWidget_clearContents(QTableWidget* self) {
	self->clearContents();
}

void QTableWidget_itemPressed(QTableWidget* self, QTableWidgetItem* item) {
	self->itemPressed(item);
}

void QTableWidget_connect_itemPressed(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTableWidgetItem*);
		void operator()(QTableWidgetItem* item) {
			QTableWidgetItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(QTableWidgetItem*)>(&QTableWidget::itemPressed), self, local_caller{slot, callback, release});
}

void QTableWidget_itemClicked(QTableWidget* self, QTableWidgetItem* item) {
	self->itemClicked(item);
}

void QTableWidget_connect_itemClicked(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTableWidgetItem*);
		void operator()(QTableWidgetItem* item) {
			QTableWidgetItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(QTableWidgetItem*)>(&QTableWidget::itemClicked), self, local_caller{slot, callback, release});
}

void QTableWidget_itemDoubleClicked(QTableWidget* self, QTableWidgetItem* item) {
	self->itemDoubleClicked(item);
}

void QTableWidget_connect_itemDoubleClicked(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTableWidgetItem*);
		void operator()(QTableWidgetItem* item) {
			QTableWidgetItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(QTableWidgetItem*)>(&QTableWidget::itemDoubleClicked), self, local_caller{slot, callback, release});
}

void QTableWidget_itemActivated(QTableWidget* self, QTableWidgetItem* item) {
	self->itemActivated(item);
}

void QTableWidget_connect_itemActivated(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTableWidgetItem*);
		void operator()(QTableWidgetItem* item) {
			QTableWidgetItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(QTableWidgetItem*)>(&QTableWidget::itemActivated), self, local_caller{slot, callback, release});
}

void QTableWidget_itemEntered(QTableWidget* self, QTableWidgetItem* item) {
	self->itemEntered(item);
}

void QTableWidget_connect_itemEntered(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTableWidgetItem*);
		void operator()(QTableWidgetItem* item) {
			QTableWidgetItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(QTableWidgetItem*)>(&QTableWidget::itemEntered), self, local_caller{slot, callback, release});
}

void QTableWidget_itemChanged(QTableWidget* self, QTableWidgetItem* item) {
	self->itemChanged(item);
}

void QTableWidget_connect_itemChanged(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTableWidgetItem*);
		void operator()(QTableWidgetItem* item) {
			QTableWidgetItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(QTableWidgetItem*)>(&QTableWidget::itemChanged), self, local_caller{slot, callback, release});
}

void QTableWidget_currentItemChanged(QTableWidget* self, QTableWidgetItem* current, QTableWidgetItem* previous) {
	self->currentItemChanged(current, previous);
}

void QTableWidget_connect_currentItemChanged(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*, QTableWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTableWidgetItem*, QTableWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTableWidgetItem*, QTableWidgetItem*);
		void operator()(QTableWidgetItem* current, QTableWidgetItem* previous) {
			QTableWidgetItem* sigval1 = current;
			QTableWidgetItem* sigval2 = previous;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(QTableWidgetItem*, QTableWidgetItem*)>(&QTableWidget::currentItemChanged), self, local_caller{slot, callback, release});
}

void QTableWidget_itemSelectionChanged(QTableWidget* self) {
	self->itemSelectionChanged();
}

void QTableWidget_connect_itemSelectionChanged(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)()>(&QTableWidget::itemSelectionChanged), self, local_caller{slot, callback, release});
}

void QTableWidget_cellPressed(QTableWidget* self, int row, int column) {
	self->cellPressed(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_connect_cellPressed(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int row, int column) {
			int sigval1 = row;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(int, int)>(&QTableWidget::cellPressed), self, local_caller{slot, callback, release});
}

void QTableWidget_cellClicked(QTableWidget* self, int row, int column) {
	self->cellClicked(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_connect_cellClicked(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int row, int column) {
			int sigval1 = row;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(int, int)>(&QTableWidget::cellClicked), self, local_caller{slot, callback, release});
}

void QTableWidget_cellDoubleClicked(QTableWidget* self, int row, int column) {
	self->cellDoubleClicked(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_connect_cellDoubleClicked(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int row, int column) {
			int sigval1 = row;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(int, int)>(&QTableWidget::cellDoubleClicked), self, local_caller{slot, callback, release});
}

void QTableWidget_cellActivated(QTableWidget* self, int row, int column) {
	self->cellActivated(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_connect_cellActivated(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int row, int column) {
			int sigval1 = row;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(int, int)>(&QTableWidget::cellActivated), self, local_caller{slot, callback, release});
}

void QTableWidget_cellEntered(QTableWidget* self, int row, int column) {
	self->cellEntered(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_connect_cellEntered(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int row, int column) {
			int sigval1 = row;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(int, int)>(&QTableWidget::cellEntered), self, local_caller{slot, callback, release});
}

void QTableWidget_cellChanged(QTableWidget* self, int row, int column) {
	self->cellChanged(static_cast<int>(row), static_cast<int>(column));
}

void QTableWidget_connect_cellChanged(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int row, int column) {
			int sigval1 = row;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(int, int)>(&QTableWidget::cellChanged), self, local_caller{slot, callback, release});
}

void QTableWidget_currentCellChanged(QTableWidget* self, int currentRow, int currentColumn, int previousRow, int previousColumn) {
	self->currentCellChanged(static_cast<int>(currentRow), static_cast<int>(currentColumn), static_cast<int>(previousRow), static_cast<int>(previousColumn));
}

void QTableWidget_connect_currentCellChanged(QTableWidget* self, intptr_t slot, void (*callback)(intptr_t, int, int, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int, int, int);
		void operator()(int currentRow, int currentColumn, int previousRow, int previousColumn) {
			int sigval1 = currentRow;
			int sigval2 = currentColumn;
			int sigval3 = previousRow;
			int sigval4 = previousColumn;
			callback(slot, sigval1, sigval2, sigval3, sigval4);
		}
	};
	VirtualQTableWidget::connect(self, static_cast<void (QTableWidget::*)(int, int, int, int)>(&QTableWidget::currentCellChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QTableWidget_tr2(const char* s, const char* c) {
	QString _ret = QTableWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTableWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QTableWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTableWidget_sortItems2(QTableWidget* self, int column, int order) {
	self->sortItems(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QTableWidget_scrollToItem2(QTableWidget* self, QTableWidgetItem* item, int hint) {
	self->scrollToItem(item, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QMetaObject* QTableWidget_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTableWidget*)(self) )->QTableWidget::metaObject();

}

void* QTableWidget_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::qt_metacast(param1);

}

int QTableWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QTableWidget_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::event(e);

}

struct miqt_array /* of struct miqt_string */  QTableWidget_virtualbase_mimeTypes(const void* self) {

	QStringList _ret = ( (const VirtualQTableWidget*)(self) )->QTableWidget::mimeTypes();
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

QMimeData* QTableWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QTableWidgetItem* */  items) {
	QList<QTableWidgetItem *> items_QList;
	items_QList.reserve(items.len);
	QTableWidgetItem** items_arr = static_cast<QTableWidgetItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::mimeData(items_QList);

}

bool QTableWidget_virtualbase_dropMimeData(void* self, int row, int column, QMimeData* data, int action) {

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::dropMimeData(static_cast<int>(row), static_cast<int>(column), data, static_cast<Qt::DropAction>(action));

}

int QTableWidget_virtualbase_supportedDropActions(const void* self) {

	Qt::DropActions _ret = ( (const VirtualQTableWidget*)(self) )->QTableWidget::supportedDropActions();
	return static_cast<int>(_ret);

}

void QTableWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::dropEvent(event);

}

void QTableWidget_virtualbase_setRootIndex(void* self, QModelIndex* index) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::setRootIndex(*index);

}

void QTableWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::setSelectionModel(selectionModel);

}

void QTableWidget_virtualbase_doItemsLayout(void* self) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::doItemsLayout();

}

QRect* QTableWidget_virtualbase_visualRect(const void* self, QModelIndex* index) {

	return new QRect(( (const VirtualQTableWidget*)(self) )->QTableWidget::visualRect(*index));

}

void QTableWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::scrollTo(*index, static_cast<VirtualQTableWidget::ScrollHint>(hint));

}

QModelIndex* QTableWidget_virtualbase_indexAt(const void* self, QPoint* p) {

	return new QModelIndex(( (const VirtualQTableWidget*)(self) )->QTableWidget::indexAt(*p));

}

void QTableWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

void QTableWidget_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option) {

	( (const VirtualQTableWidget*)(self) )->QTableWidget::initViewItemOption(option);

}

void QTableWidget_virtualbase_paintEvent(void* self, QPaintEvent* e) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::paintEvent(e);

}

void QTableWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::timerEvent(event);

}

int QTableWidget_virtualbase_horizontalOffset(const void* self) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::horizontalOffset();

}

int QTableWidget_virtualbase_verticalOffset(const void* self) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::verticalOffset();

}

QModelIndex* QTableWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers) {

	return new QModelIndex(( (VirtualQTableWidget*)(self) )->QTableWidget::moveCursor(static_cast<VirtualQTableWidget::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));

}

void QTableWidget_virtualbase_setSelection(void* self, QRect* rect, int command) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));

}

QRegion* QTableWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {

	return new QRegion(( (const VirtualQTableWidget*)(self) )->QTableWidget::visualRegionForSelection(*selection));

}

struct miqt_array /* of QModelIndex* */  QTableWidget_virtualbase_selectedIndexes(const void* self) {

	QModelIndexList _ret = ( (const VirtualQTableWidget*)(self) )->QTableWidget::selectedIndexes();
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

void QTableWidget_virtualbase_updateGeometries(void* self) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::updateGeometries();

}

QSize* QTableWidget_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQTableWidget*)(self) )->QTableWidget::viewportSizeHint());

}

int QTableWidget_virtualbase_sizeHintForRow(const void* self, int row) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::sizeHintForRow(static_cast<int>(row));

}

int QTableWidget_virtualbase_sizeHintForColumn(const void* self, int column) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::sizeHintForColumn(static_cast<int>(column));

}

void QTableWidget_virtualbase_verticalScrollbarAction(void* self, int action) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::verticalScrollbarAction(static_cast<int>(action));

}

void QTableWidget_virtualbase_horizontalScrollbarAction(void* self, int action) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::horizontalScrollbarAction(static_cast<int>(action));

}

bool QTableWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::isIndexHidden(*index);

}

void QTableWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::selectionChanged(*selected, *deselected);

}

void QTableWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::currentChanged(*current, *previous);

}

void QTableWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	( (VirtualQTableWidget*)(self) )->QTableWidget::keyboardSearch(search_QString);

}

QAbstractItemDelegate* QTableWidget_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::itemDelegateForIndex(*index);

}

QVariant* QTableWidget_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQTableWidget*)(self) )->QTableWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QTableWidget_virtualbase_reset(void* self) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::reset();

}

void QTableWidget_virtualbase_selectAll(void* self) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::selectAll();

}

void QTableWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	( (VirtualQTableWidget*)(self) )->QTableWidget::dataChanged(*topLeft, *bottomRight, roles_QList);

}

void QTableWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QTableWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

}

void QTableWidget_virtualbase_updateEditorData(void* self) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::updateEditorData();

}

void QTableWidget_virtualbase_updateEditorGeometries(void* self) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::updateEditorGeometries();

}

void QTableWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::verticalScrollbarValueChanged(static_cast<int>(value));

}

void QTableWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::horizontalScrollbarValueChanged(static_cast<int>(value));

}

void QTableWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

}

void QTableWidget_virtualbase_commitData(void* self, QWidget* editor) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::commitData(editor);

}

void QTableWidget_virtualbase_editorDestroyed(void* self, QObject* editor) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::editorDestroyed(editor);

}

bool QTableWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::edit(*index, static_cast<VirtualQTableWidget::EditTrigger>(trigger), event);

}

int QTableWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = ( (const VirtualQTableWidget*)(self) )->QTableWidget::selectionCommand(*index, event);
	return static_cast<int>(_ret);

}

void QTableWidget_virtualbase_startDrag(void* self, int supportedActions) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::startDrag(static_cast<Qt::DropActions>(supportedActions));

}

bool QTableWidget_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::focusNextPrevChild(next);

}

bool QTableWidget_virtualbase_viewportEvent(void* self, QEvent* event) {

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::viewportEvent(event);

}

void QTableWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::mousePressEvent(event);

}

void QTableWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::mouseMoveEvent(event);

}

void QTableWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::mouseReleaseEvent(event);

}

void QTableWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::mouseDoubleClickEvent(event);

}

void QTableWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::dragEnterEvent(event);

}

void QTableWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::dragMoveEvent(event);

}

void QTableWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::dragLeaveEvent(event);

}

void QTableWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::focusInEvent(event);

}

void QTableWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::focusOutEvent(event);

}

void QTableWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::keyPressEvent(event);

}

void QTableWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::resizeEvent(event);

}

void QTableWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::inputMethodEvent(event);

}

bool QTableWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::eventFilter(object, event);

}

QSize* QTableWidget_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQTableWidget*)(self) )->QTableWidget::minimumSizeHint());

}

QSize* QTableWidget_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQTableWidget*)(self) )->QTableWidget::sizeHint());

}

void QTableWidget_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::setupViewport(viewport);

}

void QTableWidget_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::wheelEvent(param1);

}

void QTableWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::contextMenuEvent(param1);

}

void QTableWidget_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::changeEvent(param1);

}

void QTableWidget_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option) {

	( (const VirtualQTableWidget*)(self) )->QTableWidget::initStyleOption(option);

}

int QTableWidget_virtualbase_devType(const void* self) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::devType();

}

void QTableWidget_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::setVisible(visible);

}

int QTableWidget_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::heightForWidth(static_cast<int>(param1));

}

bool QTableWidget_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::hasHeightForWidth();

}

QPaintEngine* QTableWidget_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::paintEngine();

}

void QTableWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::keyReleaseEvent(event);

}

void QTableWidget_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::enterEvent(event);

}

void QTableWidget_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::leaveEvent(event);

}

void QTableWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::moveEvent(event);

}

void QTableWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::closeEvent(event);

}

void QTableWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::tabletEvent(event);

}

void QTableWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::actionEvent(event);

}

void QTableWidget_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::showEvent(event);

}

void QTableWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::hideEvent(event);

}

bool QTableWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQTableWidget*)(self) )->QTableWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QTableWidget_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::metric(static_cast<VirtualQTableWidget::PaintDeviceMetric>(param1));

}

void QTableWidget_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQTableWidget*)(self) )->QTableWidget::initPainter(painter);

}

QPaintDevice* QTableWidget_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::redirected(offset);

}

QPainter* QTableWidget_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQTableWidget*)(self) )->QTableWidget::sharedPainter();

}

void QTableWidget_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::childEvent(event);

}

void QTableWidget_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::customEvent(event);

}

void QTableWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::connectNotify(*signal);

}

void QTableWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTableWidget*)(self) )->QTableWidget::disconnectNotify(*signal);

}

const QMetaObject* QTableWidget_staticMetaObject() { return &QTableWidget::staticMetaObject; }
void QTableWidget_protectedbase_rowMoved(void* self, int row, int oldIndex, int newIndex) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->rowMoved(static_cast<int>(row), static_cast<int>(oldIndex), static_cast<int>(newIndex));

}

void QTableWidget_protectedbase_columnMoved(void* self, int column, int oldIndex, int newIndex) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->columnMoved(static_cast<int>(column), static_cast<int>(oldIndex), static_cast<int>(newIndex));

}

void QTableWidget_protectedbase_rowResized(void* self, int row, int oldHeight, int newHeight) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->rowResized(static_cast<int>(row), static_cast<int>(oldHeight), static_cast<int>(newHeight));

}

void QTableWidget_protectedbase_columnResized(void* self, int column, int oldWidth, int newWidth) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->columnResized(static_cast<int>(column), static_cast<int>(oldWidth), static_cast<int>(newWidth));

}

void QTableWidget_protectedbase_rowCountChanged(void* self, int oldCount, int newCount) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->rowCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));

}

void QTableWidget_protectedbase_columnCountChanged(void* self, int oldCount, int newCount) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->columnCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));

}

int QTableWidget_protectedbase_state(const void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	VirtualQTableWidget::State _ret = self_cast->state();
	return static_cast<int>(_ret);

}

void QTableWidget_protectedbase_setState(void* self, int state) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->setState(static_cast<VirtualQTableWidget::State>(state));

}

void QTableWidget_protectedbase_scheduleDelayedItemsLayout(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->scheduleDelayedItemsLayout();

}

void QTableWidget_protectedbase_executeDelayedItemsLayout(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->executeDelayedItemsLayout();

}

void QTableWidget_protectedbase_setDirtyRegion(void* self, QRegion* region) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->setDirtyRegion(*region);

}

void QTableWidget_protectedbase_scrollDirtyRegion(void* self, int dx, int dy) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

}

QPoint* QTableWidget_protectedbase_dirtyRegionOffset(const void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	return new QPoint(self_cast->dirtyRegionOffset());

}

void QTableWidget_protectedbase_startAutoScroll(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->startAutoScroll();

}

void QTableWidget_protectedbase_stopAutoScroll(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->stopAutoScroll();

}

void QTableWidget_protectedbase_doAutoScroll(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->doAutoScroll();

}

int QTableWidget_protectedbase_dropIndicatorPosition(const void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	VirtualQTableWidget::DropIndicatorPosition _ret = self_cast->dropIndicatorPosition();
	return static_cast<int>(_ret);

}

void QTableWidget_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QTableWidget_protectedbase_viewportMargins(const void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	return new QMargins(self_cast->viewportMargins());

}

void QTableWidget_protectedbase_drawFrame(void* self, QPainter* param1) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->drawFrame(param1);

}

void QTableWidget_protectedbase_updateMicroFocus(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->updateMicroFocus();

}

void QTableWidget_protectedbase_create(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->create();

}

void QTableWidget_protectedbase_destroy(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	self_cast->destroy();

}

bool QTableWidget_protectedbase_focusNextChild(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	return self_cast->focusNextChild();

}

bool QTableWidget_protectedbase_focusPreviousChild(void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QTableWidget_protectedbase_sender(const void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	return self_cast->sender();

}

int QTableWidget_protectedbase_senderSignalIndex(const void* self) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QTableWidget_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	return self_cast->receivers(signal);

}

bool QTableWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQTableWidget* self_cast = static_cast<VirtualQTableWidget*>( (QTableWidget*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QTableWidget_delete(QTableWidget* self) {
	delete self;
}

