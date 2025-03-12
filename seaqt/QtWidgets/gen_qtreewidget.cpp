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
#include <QTreeView>
#include <QTreeWidget>
#include <QTreeWidgetItem>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtreewidget.h>
#include "gen_qtreewidget.h"
class VirtualQTreeWidgetItem final : public QTreeWidgetItem {
	const QTreeWidgetItem_VTable* vtbl;
	void* vdata;
public:
	friend const QTreeWidgetItem_VTable* QTreeWidgetItem_vtbl(const VirtualQTreeWidgetItem* self);
	friend void* QTreeWidgetItem_vdata(const VirtualQTreeWidgetItem* self);
	friend void QTreeWidgetItem_setVdata(VirtualQTreeWidgetItem* self, void* vdata);

	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata): QTreeWidgetItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, const QStringList& strings): QTreeWidgetItem(strings), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview): QTreeWidgetItem(treeview), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, const QStringList& strings): QTreeWidgetItem(treeview, strings), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, QTreeWidgetItem* after): QTreeWidgetItem(treeview, after), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent): QTreeWidgetItem(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, const QStringList& strings): QTreeWidgetItem(parent, strings), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, QTreeWidgetItem* after): QTreeWidgetItem(parent, after), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, const QTreeWidgetItem& other): QTreeWidgetItem(other), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, int type): QTreeWidgetItem(type), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, const QStringList& strings, int type): QTreeWidgetItem(strings, type), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, int type): QTreeWidgetItem(treeview, type), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, const QStringList& strings, int type): QTreeWidgetItem(treeview, strings, type), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, QTreeWidgetItem* after, int type): QTreeWidgetItem(treeview, after, type), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, int type): QTreeWidgetItem(parent, type), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, const QStringList& strings, int type): QTreeWidgetItem(parent, strings, type), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidgetItem(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, QTreeWidgetItem* after, int type): QTreeWidgetItem(parent, after, type), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTreeWidgetItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QTreeWidgetItem* clone() const override {
		if (vtbl->clone == 0) {
			return QTreeWidgetItem::clone();
		}


		QTreeWidgetItem* callback_return_value = vtbl->clone(this);

		return callback_return_value;
	}

	friend QTreeWidgetItem* QTreeWidgetItem_virtualbase_clone(const VirtualQTreeWidgetItem* self);

	virtual QVariant data(int column, int role) const override {
		if (vtbl->data == 0) {
			return QTreeWidgetItem::data(column, role);
		}

		int sigval1 = column;
		int sigval2 = role;

		QVariant* callback_return_value = vtbl->data(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTreeWidgetItem_virtualbase_data(const VirtualQTreeWidgetItem* self, int column, int role);

	virtual void setData(int column, int role, const QVariant& value) override {
		if (vtbl->setData == 0) {
			QTreeWidgetItem::setData(column, role, value);
			return;
		}

		int sigval1 = column;
		int sigval2 = role;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);

		vtbl->setData(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeWidgetItem_virtualbase_setData(VirtualQTreeWidgetItem* self, int column, int role, QVariant* value);

	virtual bool operator<(const QTreeWidgetItem& other) const override {
		if (vtbl->operatorLesser == 0) {
			return QTreeWidgetItem::operator<(other);
		}

		const QTreeWidgetItem& other_ret = other;
		// Cast returned reference into pointer
		QTreeWidgetItem* sigval1 = const_cast<QTreeWidgetItem*>(&other_ret);

		bool callback_return_value = vtbl->operatorLesser(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeWidgetItem_virtualbase_operatorLesser(const VirtualQTreeWidgetItem* self, QTreeWidgetItem* other);

	virtual void read(QDataStream& in) override {
		if (vtbl->read == 0) {
			QTreeWidgetItem::read(in);
			return;
		}

		QDataStream& in_ret = in;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &in_ret;

		vtbl->read(this, sigval1);

	}

	friend void QTreeWidgetItem_virtualbase_read(VirtualQTreeWidgetItem* self, QDataStream* in);

	virtual void write(QDataStream& out) const override {
		if (vtbl->write == 0) {
			QTreeWidgetItem::write(out);
			return;
		}

		QDataStream& out_ret = out;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &out_ret;

		vtbl->write(this, sigval1);

	}

	friend void QTreeWidgetItem_virtualbase_write(const VirtualQTreeWidgetItem* self, QDataStream* out);

	// Wrappers to allow calling protected methods:
	friend void QTreeWidgetItem_protectedbase_emitDataChanged(VirtualQTreeWidgetItem* self);
};

VirtualQTreeWidgetItem* QTreeWidgetItem_new(const QTreeWidgetItem_VTable* vtbl, void* vdata) {
	return new VirtualQTreeWidgetItem(vtbl, vdata);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new2(const QTreeWidgetItem_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new VirtualQTreeWidgetItem(vtbl, vdata, strings_QList);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new3(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, treeview);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new4(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, struct miqt_array /* of struct miqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new VirtualQTreeWidgetItem(vtbl, vdata, treeview, strings_QList);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new5(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, QTreeWidgetItem* after) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, treeview, after);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new6(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, parent);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new7(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, struct miqt_array /* of struct miqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new VirtualQTreeWidgetItem(vtbl, vdata, parent, strings_QList);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new8(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, QTreeWidgetItem* after) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, parent, after);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new9(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* other) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, *other);
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new10(const QTreeWidgetItem_VTable* vtbl, void* vdata, int type) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, static_cast<int>(type));
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new11(const QTreeWidgetItem_VTable* vtbl, void* vdata, struct miqt_array /* of struct miqt_string */  strings, int type) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new VirtualQTreeWidgetItem(vtbl, vdata, strings_QList, static_cast<int>(type));
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new12(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, int type) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, treeview, static_cast<int>(type));
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new13(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, struct miqt_array /* of struct miqt_string */  strings, int type) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new VirtualQTreeWidgetItem(vtbl, vdata, treeview, strings_QList, static_cast<int>(type));
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new14(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidget* treeview, QTreeWidgetItem* after, int type) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, treeview, after, static_cast<int>(type));
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new15(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, int type) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, parent, static_cast<int>(type));
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new16(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, struct miqt_array /* of struct miqt_string */  strings, int type) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new VirtualQTreeWidgetItem(vtbl, vdata, parent, strings_QList, static_cast<int>(type));
}

VirtualQTreeWidgetItem* QTreeWidgetItem_new17(const QTreeWidgetItem_VTable* vtbl, void* vdata, QTreeWidgetItem* parent, QTreeWidgetItem* after, int type) {
	return new VirtualQTreeWidgetItem(vtbl, vdata, parent, after, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_clone(const QTreeWidgetItem* self) {
	return self->clone();
}

QTreeWidget* QTreeWidgetItem_treeWidget(const QTreeWidgetItem* self) {
	return self->treeWidget();
}

void QTreeWidgetItem_setSelected(QTreeWidgetItem* self, bool select) {
	self->setSelected(select);
}

bool QTreeWidgetItem_isSelected(const QTreeWidgetItem* self) {
	return self->isSelected();
}

void QTreeWidgetItem_setHidden(QTreeWidgetItem* self, bool hide) {
	self->setHidden(hide);
}

bool QTreeWidgetItem_isHidden(const QTreeWidgetItem* self) {
	return self->isHidden();
}

void QTreeWidgetItem_setExpanded(QTreeWidgetItem* self, bool expand) {
	self->setExpanded(expand);
}

bool QTreeWidgetItem_isExpanded(const QTreeWidgetItem* self) {
	return self->isExpanded();
}

void QTreeWidgetItem_setFirstColumnSpanned(QTreeWidgetItem* self, bool span) {
	self->setFirstColumnSpanned(span);
}

bool QTreeWidgetItem_isFirstColumnSpanned(const QTreeWidgetItem* self) {
	return self->isFirstColumnSpanned();
}

void QTreeWidgetItem_setDisabled(QTreeWidgetItem* self, bool disabled) {
	self->setDisabled(disabled);
}

bool QTreeWidgetItem_isDisabled(const QTreeWidgetItem* self) {
	return self->isDisabled();
}

void QTreeWidgetItem_setChildIndicatorPolicy(QTreeWidgetItem* self, int policy) {
	self->setChildIndicatorPolicy(static_cast<QTreeWidgetItem::ChildIndicatorPolicy>(policy));
}

int QTreeWidgetItem_childIndicatorPolicy(const QTreeWidgetItem* self) {
	QTreeWidgetItem::ChildIndicatorPolicy _ret = self->childIndicatorPolicy();
	return static_cast<int>(_ret);
}

int QTreeWidgetItem_flags(const QTreeWidgetItem* self) {
	Qt::ItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QTreeWidgetItem_setFlags(QTreeWidgetItem* self, int flags) {
	self->setFlags(static_cast<Qt::ItemFlags>(flags));
}

struct miqt_string QTreeWidgetItem_text(const QTreeWidgetItem* self, int column) {
	QString _ret = self->text(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidgetItem_setText(QTreeWidgetItem* self, int column, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(static_cast<int>(column), text_QString);
}

QIcon* QTreeWidgetItem_icon(const QTreeWidgetItem* self, int column) {
	return new QIcon(self->icon(static_cast<int>(column)));
}

void QTreeWidgetItem_setIcon(QTreeWidgetItem* self, int column, QIcon* icon) {
	self->setIcon(static_cast<int>(column), *icon);
}

struct miqt_string QTreeWidgetItem_statusTip(const QTreeWidgetItem* self, int column) {
	QString _ret = self->statusTip(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidgetItem_setStatusTip(QTreeWidgetItem* self, int column, struct miqt_string statusTip) {
	QString statusTip_QString = QString::fromUtf8(statusTip.data, statusTip.len);
	self->setStatusTip(static_cast<int>(column), statusTip_QString);
}

struct miqt_string QTreeWidgetItem_toolTip(const QTreeWidgetItem* self, int column) {
	QString _ret = self->toolTip(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidgetItem_setToolTip(QTreeWidgetItem* self, int column, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(static_cast<int>(column), toolTip_QString);
}

struct miqt_string QTreeWidgetItem_whatsThis(const QTreeWidgetItem* self, int column) {
	QString _ret = self->whatsThis(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidgetItem_setWhatsThis(QTreeWidgetItem* self, int column, struct miqt_string whatsThis) {
	QString whatsThis_QString = QString::fromUtf8(whatsThis.data, whatsThis.len);
	self->setWhatsThis(static_cast<int>(column), whatsThis_QString);
}

QFont* QTreeWidgetItem_font(const QTreeWidgetItem* self, int column) {
	return new QFont(self->font(static_cast<int>(column)));
}

void QTreeWidgetItem_setFont(QTreeWidgetItem* self, int column, QFont* font) {
	self->setFont(static_cast<int>(column), *font);
}

int QTreeWidgetItem_textAlignment(const QTreeWidgetItem* self, int column) {
	return self->textAlignment(static_cast<int>(column));
}

void QTreeWidgetItem_setTextAlignment(QTreeWidgetItem* self, int column, int alignment) {
	self->setTextAlignment(static_cast<int>(column), static_cast<int>(alignment));
}

QColor* QTreeWidgetItem_backgroundColor(const QTreeWidgetItem* self, int column) {
	return new QColor(self->backgroundColor(static_cast<int>(column)));
}

void QTreeWidgetItem_setBackgroundColor(QTreeWidgetItem* self, int column, QColor* color) {
	self->setBackgroundColor(static_cast<int>(column), *color);
}

QBrush* QTreeWidgetItem_background(const QTreeWidgetItem* self, int column) {
	return new QBrush(self->background(static_cast<int>(column)));
}

void QTreeWidgetItem_setBackground(QTreeWidgetItem* self, int column, QBrush* brush) {
	self->setBackground(static_cast<int>(column), *brush);
}

QColor* QTreeWidgetItem_textColor(const QTreeWidgetItem* self, int column) {
	return new QColor(self->textColor(static_cast<int>(column)));
}

void QTreeWidgetItem_setTextColor(QTreeWidgetItem* self, int column, QColor* color) {
	self->setTextColor(static_cast<int>(column), *color);
}

QBrush* QTreeWidgetItem_foreground(const QTreeWidgetItem* self, int column) {
	return new QBrush(self->foreground(static_cast<int>(column)));
}

void QTreeWidgetItem_setForeground(QTreeWidgetItem* self, int column, QBrush* brush) {
	self->setForeground(static_cast<int>(column), *brush);
}

int QTreeWidgetItem_checkState(const QTreeWidgetItem* self, int column) {
	Qt::CheckState _ret = self->checkState(static_cast<int>(column));
	return static_cast<int>(_ret);
}

void QTreeWidgetItem_setCheckState(QTreeWidgetItem* self, int column, int state) {
	self->setCheckState(static_cast<int>(column), static_cast<Qt::CheckState>(state));
}

QSize* QTreeWidgetItem_sizeHint(const QTreeWidgetItem* self, int column) {
	return new QSize(self->sizeHint(static_cast<int>(column)));
}

void QTreeWidgetItem_setSizeHint(QTreeWidgetItem* self, int column, QSize* size) {
	self->setSizeHint(static_cast<int>(column), *size);
}

QVariant* QTreeWidgetItem_data(const QTreeWidgetItem* self, int column, int role) {
	return new QVariant(self->data(static_cast<int>(column), static_cast<int>(role)));
}

void QTreeWidgetItem_setData(QTreeWidgetItem* self, int column, int role, QVariant* value) {
	self->setData(static_cast<int>(column), static_cast<int>(role), *value);
}

bool QTreeWidgetItem_operatorLesser(const QTreeWidgetItem* self, QTreeWidgetItem* other) {
	return (*self < *other);
}

void QTreeWidgetItem_read(QTreeWidgetItem* self, QDataStream* in) {
	self->read(*in);
}

void QTreeWidgetItem_write(const QTreeWidgetItem* self, QDataStream* out) {
	self->write(*out);
}

void QTreeWidgetItem_operatorAssign(QTreeWidgetItem* self, QTreeWidgetItem* other) {
	self->operator=(*other);
}

QTreeWidgetItem* QTreeWidgetItem_parent(const QTreeWidgetItem* self) {
	return self->parent();
}

QTreeWidgetItem* QTreeWidgetItem_child(const QTreeWidgetItem* self, int index) {
	return self->child(static_cast<int>(index));
}

int QTreeWidgetItem_childCount(const QTreeWidgetItem* self) {
	return self->childCount();
}

int QTreeWidgetItem_columnCount(const QTreeWidgetItem* self) {
	return self->columnCount();
}

int QTreeWidgetItem_indexOfChild(const QTreeWidgetItem* self, QTreeWidgetItem* child) {
	return self->indexOfChild(child);
}

void QTreeWidgetItem_addChild(QTreeWidgetItem* self, QTreeWidgetItem* child) {
	self->addChild(child);
}

void QTreeWidgetItem_insertChild(QTreeWidgetItem* self, int index, QTreeWidgetItem* child) {
	self->insertChild(static_cast<int>(index), child);
}

void QTreeWidgetItem_removeChild(QTreeWidgetItem* self, QTreeWidgetItem* child) {
	self->removeChild(child);
}

QTreeWidgetItem* QTreeWidgetItem_takeChild(QTreeWidgetItem* self, int index) {
	return self->takeChild(static_cast<int>(index));
}

void QTreeWidgetItem_addChildren(QTreeWidgetItem* self, struct miqt_array /* of QTreeWidgetItem* */  children) {
	QList<QTreeWidgetItem *> children_QList;
	children_QList.reserve(children.len);
	QTreeWidgetItem** children_arr = static_cast<QTreeWidgetItem**>(children.data);
	for(size_t i = 0; i < children.len; ++i) {
		children_QList.push_back(children_arr[i]);
	}
	self->addChildren(children_QList);
}

void QTreeWidgetItem_insertChildren(QTreeWidgetItem* self, int index, struct miqt_array /* of QTreeWidgetItem* */  children) {
	QList<QTreeWidgetItem *> children_QList;
	children_QList.reserve(children.len);
	QTreeWidgetItem** children_arr = static_cast<QTreeWidgetItem**>(children.data);
	for(size_t i = 0; i < children.len; ++i) {
		children_QList.push_back(children_arr[i]);
	}
	self->insertChildren(static_cast<int>(index), children_QList);
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidgetItem_takeChildren(QTreeWidgetItem* self) {
	QList<QTreeWidgetItem *> _ret = self->takeChildren();
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QTreeWidgetItem_type(const QTreeWidgetItem* self) {
	return self->type();
}

void QTreeWidgetItem_sortChildren(QTreeWidgetItem* self, int column, int order) {
	self->sortChildren(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QTreeWidgetItem* QTreeWidgetItem_virtualbase_clone(const VirtualQTreeWidgetItem* self) {

	return self->QTreeWidgetItem::clone();
}

QVariant* QTreeWidgetItem_virtualbase_data(const VirtualQTreeWidgetItem* self, int column, int role) {

	return new QVariant(self->QTreeWidgetItem::data(static_cast<int>(column), static_cast<int>(role)));
}

void QTreeWidgetItem_virtualbase_setData(VirtualQTreeWidgetItem* self, int column, int role, QVariant* value) {

	self->QTreeWidgetItem::setData(static_cast<int>(column), static_cast<int>(role), *value);
}

bool QTreeWidgetItem_virtualbase_operatorLesser(const VirtualQTreeWidgetItem* self, QTreeWidgetItem* other) {

	return self->QTreeWidgetItem::operator<(*other);
}

void QTreeWidgetItem_virtualbase_read(VirtualQTreeWidgetItem* self, QDataStream* in) {

	self->QTreeWidgetItem::read(*in);
}

void QTreeWidgetItem_virtualbase_write(const VirtualQTreeWidgetItem* self, QDataStream* out) {

	self->QTreeWidgetItem::write(*out);
}

const QTreeWidgetItem_VTable* QTreeWidgetItem_vtbl(const VirtualQTreeWidgetItem* self) { return self->vtbl; }
void* QTreeWidgetItem_vdata(const VirtualQTreeWidgetItem* self) { return self->vdata; }
void QTreeWidgetItem_setVdata(VirtualQTreeWidgetItem* self, void* vdata) { self->vdata = vdata; }

void QTreeWidgetItem_protectedbase_emitDataChanged(VirtualQTreeWidgetItem* self) {
	self->emitDataChanged();
}

void QTreeWidgetItem_delete(QTreeWidgetItem* self) {
	delete self;
}

class VirtualQTreeWidget final : public QTreeWidget {
	const QTreeWidget_VTable* vtbl;
	void* vdata;
public:
	friend const QTreeWidget_VTable* QTreeWidget_vtbl(const VirtualQTreeWidget* self);
	friend void* QTreeWidget_vdata(const VirtualQTreeWidget* self);
	friend void QTreeWidget_setVdata(VirtualQTreeWidget* self, void* vdata);

	VirtualQTreeWidget(const QTreeWidget_VTable* vtbl, void* vdata, QWidget* parent): QTreeWidget(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTreeWidget(const QTreeWidget_VTable* vtbl, void* vdata): QTreeWidget(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTreeWidget() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTreeWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTreeWidget_virtualbase_metaObject(const VirtualQTreeWidget* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTreeWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTreeWidget_virtualbase_metacast(VirtualQTreeWidget* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTreeWidget::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_metacall(VirtualQTreeWidget* self, int param1, int param2, void** param3);

	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QTreeWidget::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_setSelectionModel(VirtualQTreeWidget* self, QItemSelectionModel* selectionModel);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QTreeWidget::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_event(VirtualQTreeWidget* self, QEvent* e);

	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QTreeWidget::mimeTypes();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->mimeTypes(this);
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

	friend struct miqt_array /* of struct miqt_string */  QTreeWidget_virtualbase_mimeTypes(const VirtualQTreeWidget* self);

	virtual QMimeData* mimeData(const QList<QTreeWidgetItem *> items) const override {
		if (vtbl->mimeData == 0) {
			return QTreeWidget::mimeData(items);
		}

		const QList<QTreeWidgetItem *> items_ret = items;
		// Convert QList<> from C++ memory to manually-managed C memory
		QTreeWidgetItem** items_arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * items_ret.length()));
		for (size_t i = 0, e = items_ret.length(); i < e; ++i) {
			items_arr[i] = items_ret[i];
		}
		struct miqt_array items_out;
		items_out.len = items_ret.length();
		items_out.data = static_cast<void*>(items_arr);
		struct miqt_array /* of QTreeWidgetItem* */  sigval1 = items_out;

		QMimeData* callback_return_value = vtbl->mimeData(this, sigval1);

		return callback_return_value;
	}

	friend QMimeData* QTreeWidget_virtualbase_mimeData(const VirtualQTreeWidget* self, struct miqt_array /* of QTreeWidgetItem* */  items);

	virtual bool dropMimeData(QTreeWidgetItem* parent, int index, const QMimeData* data, Qt::DropAction action) override {
		if (vtbl->dropMimeData == 0) {
			return QTreeWidget::dropMimeData(parent, index, data, action);
		}

		QTreeWidgetItem* sigval1 = parent;
		int sigval2 = index;
		QMimeData* sigval3 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval4 = static_cast<int>(action_ret);

		bool callback_return_value = vtbl->dropMimeData(this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_dropMimeData(VirtualQTreeWidget* self, QTreeWidgetItem* parent, int index, QMimeData* data, int action);

	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QTreeWidget::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_supportedDropActions(const VirtualQTreeWidget* self);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTreeWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_dropEvent(VirtualQTreeWidget* self, QDropEvent* event);

	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QTreeWidget::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_setRootIndex(VirtualQTreeWidget* self, QModelIndex* index);

	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QTreeWidget::keyboardSearch(search);
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

		vtbl->keyboardSearch(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_keyboardSearch(VirtualQTreeWidget* self, struct miqt_string search);

	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QTreeWidget::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QTreeWidget_virtualbase_visualRect(const VirtualQTreeWidget* self, QModelIndex* index);

	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QTreeWidget::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(this, sigval1, sigval2);

	}

	friend void QTreeWidget_virtualbase_scrollTo(VirtualQTreeWidget* self, QModelIndex* index, int hint);

	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QTreeWidget::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTreeWidget_virtualbase_indexAt(const VirtualQTreeWidget* self, QPoint* p);

	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QTreeWidget::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(this);

	}

	friend void QTreeWidget_virtualbase_doItemsLayout(VirtualQTreeWidget* self);

	virtual void reset() override {
		if (vtbl->reset == 0) {
			QTreeWidget::reset();
			return;
		}


		vtbl->reset(this);

	}

	friend void QTreeWidget_virtualbase_reset(VirtualQTreeWidget* self);

	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QTreeWidget::dataChanged(topLeft, bottomRight, roles);
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

		vtbl->dataChanged(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeWidget_virtualbase_dataChanged(VirtualQTreeWidget* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);

	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QTreeWidget::selectAll();
			return;
		}


		vtbl->selectAll(this);

	}

	friend void QTreeWidget_virtualbase_selectAll(VirtualQTreeWidget* self);

	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QTreeWidget::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_verticalScrollbarValueChanged(VirtualQTreeWidget* self, int value);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTreeWidget::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QTreeWidget_virtualbase_scrollContentsBy(VirtualQTreeWidget* self, int dx, int dy);

	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QTreeWidget::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeWidget_virtualbase_rowsInserted(VirtualQTreeWidget* self, QModelIndex* parent, int start, int end);

	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QTreeWidget::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeWidget_virtualbase_rowsAboutToBeRemoved(VirtualQTreeWidget* self, QModelIndex* parent, int start, int end);

	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QTreeWidget::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QTreeWidget_virtualbase_moveCursor(VirtualQTreeWidget* self, int cursorAction, int modifiers);

	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QTreeWidget::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_horizontalOffset(const VirtualQTreeWidget* self);

	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QTreeWidget::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_verticalOffset(const VirtualQTreeWidget* self);

	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QTreeWidget::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(this, sigval1, sigval2);

	}

	friend void QTreeWidget_virtualbase_setSelection(VirtualQTreeWidget* self, QRect* rect, int command);

	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QTreeWidget::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRegion* QTreeWidget_virtualbase_visualRegionForSelection(const VirtualQTreeWidget* self, QItemSelection* selection);

	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QTreeWidget::selectedIndexes();
		}


		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->selectedIndexes(this);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of QModelIndex* */  QTreeWidget_virtualbase_selectedIndexes(const VirtualQTreeWidget* self);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTreeWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_timerEvent(VirtualQTreeWidget* self, QTimerEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QTreeWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_paintEvent(VirtualQTreeWidget* self, QPaintEvent* event);

	virtual void drawRow(QPainter* painter, const QStyleOptionViewItem& options, const QModelIndex& index) const override {
		if (vtbl->drawRow == 0) {
			QTreeWidget::drawRow(painter, options, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& options_ret = options;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&options_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->drawRow(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeWidget_virtualbase_drawRow(const VirtualQTreeWidget* self, QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index);

	virtual void drawBranches(QPainter* painter, const QRect& rect, const QModelIndex& index) const override {
		if (vtbl->drawBranches == 0) {
			QTreeWidget::drawBranches(painter, rect, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->drawBranches(this, sigval1, sigval2, sigval3);

	}

	friend void QTreeWidget_virtualbase_drawBranches(const VirtualQTreeWidget* self, QPainter* painter, QRect* rect, QModelIndex* index);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTreeWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_mousePressEvent(VirtualQTreeWidget* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTreeWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_mouseReleaseEvent(VirtualQTreeWidget* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTreeWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_mouseDoubleClickEvent(VirtualQTreeWidget* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTreeWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_mouseMoveEvent(VirtualQTreeWidget* self, QMouseEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTreeWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_keyPressEvent(VirtualQTreeWidget* self, QKeyEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTreeWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_dragMoveEvent(VirtualQTreeWidget* self, QDragMoveEvent* event);

	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QTreeWidget::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_viewportEvent(VirtualQTreeWidget* self, QEvent* event);

	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QTreeWidget::updateGeometries();
			return;
		}


		vtbl->updateGeometries(this);

	}

	friend void QTreeWidget_virtualbase_updateGeometries(VirtualQTreeWidget* self);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTreeWidget::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTreeWidget_virtualbase_viewportSizeHint(const VirtualQTreeWidget* self);

	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QTreeWidget::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_sizeHintForColumn(const VirtualQTreeWidget* self, int column);

	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QTreeWidget::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_horizontalScrollbarAction(VirtualQTreeWidget* self, int action);

	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QTreeWidget::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_isIndexHidden(const VirtualQTreeWidget* self, QModelIndex* index);

	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QTreeWidget::selectionChanged(selected, deselected);
			return;
		}

		const QItemSelection& selected_ret = selected;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selected_ret);
		const QItemSelection& deselected_ret = deselected;
		// Cast returned reference into pointer
		QItemSelection* sigval2 = const_cast<QItemSelection*>(&deselected_ret);

		vtbl->selectionChanged(this, sigval1, sigval2);

	}

	friend void QTreeWidget_virtualbase_selectionChanged(VirtualQTreeWidget* self, QItemSelection* selected, QItemSelection* deselected);

	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QTreeWidget::currentChanged(current, previous);
			return;
		}

		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& previous_ret = previous;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&previous_ret);

		vtbl->currentChanged(this, sigval1, sigval2);

	}

	friend void QTreeWidget_virtualbase_currentChanged(VirtualQTreeWidget* self, QModelIndex* current, QModelIndex* previous);

	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QTreeWidget::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_sizeHintForRow(const VirtualQTreeWidget* self, int row);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTreeWidget::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTreeWidget_virtualbase_inputMethodQuery(const VirtualQTreeWidget* self, int query);

	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QTreeWidget::updateEditorData();
			return;
		}


		vtbl->updateEditorData(this);

	}

	friend void QTreeWidget_virtualbase_updateEditorData(VirtualQTreeWidget* self);

	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QTreeWidget::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(this);

	}

	friend void QTreeWidget_virtualbase_updateEditorGeometries(VirtualQTreeWidget* self);

	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QTreeWidget::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_verticalScrollbarAction(VirtualQTreeWidget* self, int action);

	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QTreeWidget::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_horizontalScrollbarValueChanged(VirtualQTreeWidget* self, int value);

	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QTreeWidget::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(this, sigval1, sigval2);

	}

	friend void QTreeWidget_virtualbase_closeEditor(VirtualQTreeWidget* self, QWidget* editor, int hint);

	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QTreeWidget::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_commitData(VirtualQTreeWidget* self, QWidget* editor);

	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QTreeWidget::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_editorDestroyed(VirtualQTreeWidget* self, QObject* editor);

	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QTreeWidget::edit(index, trigger, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::EditTrigger trigger_ret = trigger;
		int sigval2 = static_cast<int>(trigger_ret);
		QEvent* sigval3 = event;

		bool callback_return_value = vtbl->edit2(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_edit2(VirtualQTreeWidget* self, QModelIndex* index, int trigger, QEvent* event);

	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QTreeWidget::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_selectionCommand(const VirtualQTreeWidget* self, QModelIndex* index, QEvent* event);

	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QTreeWidget::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_startDrag(VirtualQTreeWidget* self, int supportedActions);

	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QTreeWidget::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QStyleOptionViewItem* QTreeWidget_virtualbase_viewOptions(const VirtualQTreeWidget* self);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTreeWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_focusNextPrevChild(VirtualQTreeWidget* self, bool next);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTreeWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_dragEnterEvent(VirtualQTreeWidget* self, QDragEnterEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTreeWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_dragLeaveEvent(VirtualQTreeWidget* self, QDragLeaveEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTreeWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_focusInEvent(VirtualQTreeWidget* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTreeWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_focusOutEvent(VirtualQTreeWidget* self, QFocusEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTreeWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_resizeEvent(VirtualQTreeWidget* self, QResizeEvent* event);

	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QTreeWidget::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_inputMethodEvent(VirtualQTreeWidget* self, QInputMethodEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTreeWidget::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_eventFilter(VirtualQTreeWidget* self, QObject* object, QEvent* event);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTreeWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTreeWidget_virtualbase_minimumSizeHint(const VirtualQTreeWidget* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTreeWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTreeWidget_virtualbase_sizeHint(const VirtualQTreeWidget* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTreeWidget::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_setupViewport(VirtualQTreeWidget* self, QWidget* viewport);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QTreeWidget::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_wheelEvent(VirtualQTreeWidget* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QTreeWidget::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_contextMenuEvent(VirtualQTreeWidget* self, QContextMenuEvent* param1);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QTreeWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_changeEvent(VirtualQTreeWidget* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTreeWidget::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_devType(const VirtualQTreeWidget* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTreeWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_setVisible(VirtualQTreeWidget* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTreeWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_heightForWidth(const VirtualQTreeWidget* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTreeWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_hasHeightForWidth(const VirtualQTreeWidget* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTreeWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QTreeWidget_virtualbase_paintEngine(const VirtualQTreeWidget* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTreeWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_keyReleaseEvent(VirtualQTreeWidget* self, QKeyEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTreeWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_enterEvent(VirtualQTreeWidget* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTreeWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_leaveEvent(VirtualQTreeWidget* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTreeWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_moveEvent(VirtualQTreeWidget* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTreeWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_closeEvent(VirtualQTreeWidget* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTreeWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_tabletEvent(VirtualQTreeWidget* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTreeWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_actionEvent(VirtualQTreeWidget* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTreeWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_showEvent(VirtualQTreeWidget* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTreeWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_hideEvent(VirtualQTreeWidget* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTreeWidget::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTreeWidget_virtualbase_nativeEvent(VirtualQTreeWidget* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTreeWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTreeWidget_virtualbase_metric(const VirtualQTreeWidget* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTreeWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_initPainter(const VirtualQTreeWidget* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTreeWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTreeWidget_virtualbase_redirected(const VirtualQTreeWidget* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTreeWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QTreeWidget_virtualbase_sharedPainter(const VirtualQTreeWidget* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTreeWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_childEvent(VirtualQTreeWidget* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTreeWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_customEvent(VirtualQTreeWidget* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTreeWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_connectNotify(VirtualQTreeWidget* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTreeWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTreeWidget_virtualbase_disconnectNotify(VirtualQTreeWidget* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_protectedbase_items(const VirtualQTreeWidget* self, QMimeData* data);
	friend QModelIndex* QTreeWidget_protectedbase_indexFromItem(const VirtualQTreeWidget* self, QTreeWidgetItem* item);
	friend QModelIndex* QTreeWidget_protectedbase_indexFromItemWithItem(const VirtualQTreeWidget* self, QTreeWidgetItem* item);
	friend QTreeWidgetItem* QTreeWidget_protectedbase_itemFromIndex(const VirtualQTreeWidget* self, QModelIndex* index);
	friend QModelIndex* QTreeWidget_protectedbase_indexFromItem2(const VirtualQTreeWidget* self, QTreeWidgetItem* item, int column);
	friend QModelIndex* QTreeWidget_protectedbase_indexFromItem22(const VirtualQTreeWidget* self, QTreeWidgetItem* item, int column);
	friend void QTreeWidget_protectedbase_columnResized(VirtualQTreeWidget* self, int column, int oldSize, int newSize);
	friend void QTreeWidget_protectedbase_columnCountChanged(VirtualQTreeWidget* self, int oldCount, int newCount);
	friend void QTreeWidget_protectedbase_columnMoved(VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_reexpand(VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_rowsRemoved(VirtualQTreeWidget* self, QModelIndex* parent, int first, int last);
	friend void QTreeWidget_protectedbase_drawTree(const VirtualQTreeWidget* self, QPainter* painter, QRegion* region);
	friend int QTreeWidget_protectedbase_indexRowSizeHint(const VirtualQTreeWidget* self, QModelIndex* index);
	friend int QTreeWidget_protectedbase_rowHeight(const VirtualQTreeWidget* self, QModelIndex* index);
	friend void QTreeWidget_protectedbase_setHorizontalStepsPerItem(VirtualQTreeWidget* self, int steps);
	friend int QTreeWidget_protectedbase_horizontalStepsPerItem(const VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_setVerticalStepsPerItem(VirtualQTreeWidget* self, int steps);
	friend int QTreeWidget_protectedbase_verticalStepsPerItem(const VirtualQTreeWidget* self);
	friend int QTreeWidget_protectedbase_state(const VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_setState(VirtualQTreeWidget* self, int state);
	friend void QTreeWidget_protectedbase_scheduleDelayedItemsLayout(VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_executeDelayedItemsLayout(VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_setDirtyRegion(VirtualQTreeWidget* self, QRegion* region);
	friend void QTreeWidget_protectedbase_scrollDirtyRegion(VirtualQTreeWidget* self, int dx, int dy);
	friend QPoint* QTreeWidget_protectedbase_dirtyRegionOffset(const VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_startAutoScroll(VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_stopAutoScroll(VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_doAutoScroll(VirtualQTreeWidget* self);
	friend int QTreeWidget_protectedbase_dropIndicatorPosition(const VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_setViewportMargins(VirtualQTreeWidget* self, int left, int top, int right, int bottom);
	friend QMargins* QTreeWidget_protectedbase_viewportMargins(const VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_drawFrame(VirtualQTreeWidget* self, QPainter* param1);
	friend void QTreeWidget_protectedbase_initStyleOption(const VirtualQTreeWidget* self, QStyleOptionFrame* option);
	friend void QTreeWidget_protectedbase_updateMicroFocus(VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_create(VirtualQTreeWidget* self);
	friend void QTreeWidget_protectedbase_destroy(VirtualQTreeWidget* self);
	friend bool QTreeWidget_protectedbase_focusNextChild(VirtualQTreeWidget* self);
	friend bool QTreeWidget_protectedbase_focusPreviousChild(VirtualQTreeWidget* self);
	friend QObject* QTreeWidget_protectedbase_sender(const VirtualQTreeWidget* self);
	friend int QTreeWidget_protectedbase_senderSignalIndex(const VirtualQTreeWidget* self);
	friend int QTreeWidget_protectedbase_receivers(const VirtualQTreeWidget* self, const char* signal);
	friend bool QTreeWidget_protectedbase_isSignalConnected(const VirtualQTreeWidget* self, QMetaMethod* signal);
};

VirtualQTreeWidget* QTreeWidget_new(const QTreeWidget_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQTreeWidget(vtbl, vdata, parent);
}

VirtualQTreeWidget* QTreeWidget_new2(const QTreeWidget_VTable* vtbl, void* vdata) {
	return new VirtualQTreeWidget(vtbl, vdata);
}

void QTreeWidget_virtbase(QTreeWidget* src, QTreeView** outptr_QTreeView) {
	*outptr_QTreeView = static_cast<QTreeView*>(src);
}

QMetaObject* QTreeWidget_metaObject(const QTreeWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTreeWidget_metacast(QTreeWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTreeWidget_metacall(QTreeWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTreeWidget_tr(const char* s) {
	QString _ret = QTreeWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeWidget_trUtf8(const char* s) {
	QString _ret = QTreeWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTreeWidget_columnCount(const QTreeWidget* self) {
	return self->columnCount();
}

void QTreeWidget_setColumnCount(QTreeWidget* self, int columns) {
	self->setColumnCount(static_cast<int>(columns));
}

QTreeWidgetItem* QTreeWidget_invisibleRootItem(const QTreeWidget* self) {
	return self->invisibleRootItem();
}

QTreeWidgetItem* QTreeWidget_topLevelItem(const QTreeWidget* self, int index) {
	return self->topLevelItem(static_cast<int>(index));
}

int QTreeWidget_topLevelItemCount(const QTreeWidget* self) {
	return self->topLevelItemCount();
}

void QTreeWidget_insertTopLevelItem(QTreeWidget* self, int index, QTreeWidgetItem* item) {
	self->insertTopLevelItem(static_cast<int>(index), item);
}

void QTreeWidget_addTopLevelItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->addTopLevelItem(item);
}

QTreeWidgetItem* QTreeWidget_takeTopLevelItem(QTreeWidget* self, int index) {
	return self->takeTopLevelItem(static_cast<int>(index));
}

int QTreeWidget_indexOfTopLevelItem(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->indexOfTopLevelItem(item);
}

void QTreeWidget_insertTopLevelItems(QTreeWidget* self, int index, struct miqt_array /* of QTreeWidgetItem* */  items) {
	QList<QTreeWidgetItem *> items_QList;
	items_QList.reserve(items.len);
	QTreeWidgetItem** items_arr = static_cast<QTreeWidgetItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->insertTopLevelItems(static_cast<int>(index), items_QList);
}

void QTreeWidget_addTopLevelItems(QTreeWidget* self, struct miqt_array /* of QTreeWidgetItem* */  items) {
	QList<QTreeWidgetItem *> items_QList;
	items_QList.reserve(items.len);
	QTreeWidgetItem** items_arr = static_cast<QTreeWidgetItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->addTopLevelItems(items_QList);
}

QTreeWidgetItem* QTreeWidget_headerItem(const QTreeWidget* self) {
	return self->headerItem();
}

void QTreeWidget_setHeaderItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->setHeaderItem(item);
}

void QTreeWidget_setHeaderLabels(QTreeWidget* self, struct miqt_array /* of struct miqt_string */  labels) {
	QStringList labels_QList;
	labels_QList.reserve(labels.len);
	struct miqt_string* labels_arr = static_cast<struct miqt_string*>(labels.data);
	for(size_t i = 0; i < labels.len; ++i) {
		QString labels_arr_i_QString = QString::fromUtf8(labels_arr[i].data, labels_arr[i].len);
		labels_QList.push_back(labels_arr_i_QString);
	}
	self->setHeaderLabels(labels_QList);
}

void QTreeWidget_setHeaderLabel(QTreeWidget* self, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	self->setHeaderLabel(label_QString);
}

QTreeWidgetItem* QTreeWidget_currentItem(const QTreeWidget* self) {
	return self->currentItem();
}

int QTreeWidget_currentColumn(const QTreeWidget* self) {
	return self->currentColumn();
}

void QTreeWidget_setCurrentItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->setCurrentItem(item);
}

void QTreeWidget_setCurrentItem2(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->setCurrentItem(item, static_cast<int>(column));
}

void QTreeWidget_setCurrentItem3(QTreeWidget* self, QTreeWidgetItem* item, int column, int command) {
	self->setCurrentItem(item, static_cast<int>(column), static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QTreeWidgetItem* QTreeWidget_itemAt(const QTreeWidget* self, QPoint* p) {
	return self->itemAt(*p);
}

QTreeWidgetItem* QTreeWidget_itemAt2(const QTreeWidget* self, int x, int y) {
	return self->itemAt(static_cast<int>(x), static_cast<int>(y));
}

QRect* QTreeWidget_visualItemRect(const QTreeWidget* self, QTreeWidgetItem* item) {
	return new QRect(self->visualItemRect(item));
}

int QTreeWidget_sortColumn(const QTreeWidget* self) {
	return self->sortColumn();
}

void QTreeWidget_sortItems(QTreeWidget* self, int column, int order) {
	self->sortItems(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QTreeWidget_editItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->editItem(item);
}

void QTreeWidget_openPersistentEditor(QTreeWidget* self, QTreeWidgetItem* item) {
	self->openPersistentEditor(item);
}

void QTreeWidget_closePersistentEditor(QTreeWidget* self, QTreeWidgetItem* item) {
	self->closePersistentEditor(item);
}

bool QTreeWidget_isPersistentEditorOpen(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isPersistentEditorOpen(item);
}

QWidget* QTreeWidget_itemWidget(const QTreeWidget* self, QTreeWidgetItem* item, int column) {
	return self->itemWidget(item, static_cast<int>(column));
}

void QTreeWidget_setItemWidget(QTreeWidget* self, QTreeWidgetItem* item, int column, QWidget* widget) {
	self->setItemWidget(item, static_cast<int>(column), widget);
}

void QTreeWidget_removeItemWidget(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->removeItemWidget(item, static_cast<int>(column));
}

bool QTreeWidget_isItemSelected(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isItemSelected(item);
}

void QTreeWidget_setItemSelected(QTreeWidget* self, QTreeWidgetItem* item, bool select) {
	self->setItemSelected(item, select);
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_selectedItems(const QTreeWidget* self) {
	QList<QTreeWidgetItem *> _ret = self->selectedItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_findItems(const QTreeWidget* self, struct miqt_string text, int flags) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QTreeWidgetItem *> _ret = self->findItems(text_QString, static_cast<Qt::MatchFlags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QTreeWidget_isItemHidden(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isItemHidden(item);
}

void QTreeWidget_setItemHidden(QTreeWidget* self, QTreeWidgetItem* item, bool hide) {
	self->setItemHidden(item, hide);
}

bool QTreeWidget_isItemExpanded(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isItemExpanded(item);
}

void QTreeWidget_setItemExpanded(QTreeWidget* self, QTreeWidgetItem* item, bool expand) {
	self->setItemExpanded(item, expand);
}

bool QTreeWidget_isFirstItemColumnSpanned(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isFirstItemColumnSpanned(item);
}

void QTreeWidget_setFirstItemColumnSpanned(QTreeWidget* self, QTreeWidgetItem* item, bool span) {
	self->setFirstItemColumnSpanned(item, span);
}

QTreeWidgetItem* QTreeWidget_itemAbove(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->itemAbove(item);
}

QTreeWidgetItem* QTreeWidget_itemBelow(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->itemBelow(item);
}

void QTreeWidget_setSelectionModel(QTreeWidget* self, QItemSelectionModel* selectionModel) {
	self->setSelectionModel(selectionModel);
}

void QTreeWidget_scrollToItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->scrollToItem(item);
}

void QTreeWidget_expandItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->expandItem(item);
}

void QTreeWidget_collapseItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->collapseItem(item);
}

void QTreeWidget_clear(QTreeWidget* self) {
	self->clear();
}

void QTreeWidget_itemPressed(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemPressed(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemPressed(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*, int);
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemPressed), self, local_caller{slot, callback, release});
}

void QTreeWidget_itemClicked(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemClicked(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemClicked(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*, int);
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemClicked), self, local_caller{slot, callback, release});
}

void QTreeWidget_itemDoubleClicked(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemDoubleClicked(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemDoubleClicked(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*, int);
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemDoubleClicked), self, local_caller{slot, callback, release});
}

void QTreeWidget_itemActivated(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemActivated(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemActivated(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*, int);
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemActivated), self, local_caller{slot, callback, release});
}

void QTreeWidget_itemEntered(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemEntered(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemEntered(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*, int);
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemEntered), self, local_caller{slot, callback, release});
}

void QTreeWidget_itemChanged(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemChanged(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemChanged(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*, int);
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemChanged), self, local_caller{slot, callback, release});
}

void QTreeWidget_itemExpanded(QTreeWidget* self, QTreeWidgetItem* item) {
	self->itemExpanded(item);
}

void QTreeWidget_connect_itemExpanded(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*);
		void operator()(QTreeWidgetItem* item) {
			QTreeWidgetItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*)>(&QTreeWidget::itemExpanded), self, local_caller{slot, callback, release});
}

void QTreeWidget_itemCollapsed(QTreeWidget* self, QTreeWidgetItem* item) {
	self->itemCollapsed(item);
}

void QTreeWidget_connect_itemCollapsed(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*);
		void operator()(QTreeWidgetItem* item) {
			QTreeWidgetItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*)>(&QTreeWidget::itemCollapsed), self, local_caller{slot, callback, release});
}

void QTreeWidget_currentItemChanged(QTreeWidget* self, QTreeWidgetItem* current, QTreeWidgetItem* previous) {
	self->currentItemChanged(current, previous);
}

void QTreeWidget_connect_currentItemChanged(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, QTreeWidgetItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTreeWidgetItem*, QTreeWidgetItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTreeWidgetItem*, QTreeWidgetItem*);
		void operator()(QTreeWidgetItem* current, QTreeWidgetItem* previous) {
			QTreeWidgetItem* sigval1 = current;
			QTreeWidgetItem* sigval2 = previous;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, QTreeWidgetItem*)>(&QTreeWidget::currentItemChanged), self, local_caller{slot, callback, release});
}

void QTreeWidget_itemSelectionChanged(QTreeWidget* self) {
	self->itemSelectionChanged();
}

void QTreeWidget_connect_itemSelectionChanged(VirtualQTreeWidget* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)()>(&QTreeWidget::itemSelectionChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QTreeWidget_tr2(const char* s, const char* c) {
	QString _ret = QTreeWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QTreeWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QTreeWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTreeWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidget_editItem2(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->editItem(item, static_cast<int>(column));
}

void QTreeWidget_openPersistentEditor2(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->openPersistentEditor(item, static_cast<int>(column));
}

void QTreeWidget_closePersistentEditor2(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->closePersistentEditor(item, static_cast<int>(column));
}

bool QTreeWidget_isPersistentEditorOpen2(const QTreeWidget* self, QTreeWidgetItem* item, int column) {
	return self->isPersistentEditorOpen(item, static_cast<int>(column));
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_findItems3(const QTreeWidget* self, struct miqt_string text, int flags, int column) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QTreeWidgetItem *> _ret = self->findItems(text_QString, static_cast<Qt::MatchFlags>(flags), static_cast<int>(column));
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QTreeWidget_scrollToItem2(QTreeWidget* self, QTreeWidgetItem* item, int hint) {
	self->scrollToItem(item, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QMetaObject* QTreeWidget_virtualbase_metaObject(const VirtualQTreeWidget* self) {

	return (QMetaObject*) self->QTreeWidget::metaObject();
}

void* QTreeWidget_virtualbase_metacast(VirtualQTreeWidget* self, const char* param1) {

	return self->QTreeWidget::qt_metacast(param1);
}

int QTreeWidget_virtualbase_metacall(VirtualQTreeWidget* self, int param1, int param2, void** param3) {

	return self->QTreeWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QTreeWidget_virtualbase_setSelectionModel(VirtualQTreeWidget* self, QItemSelectionModel* selectionModel) {

	self->QTreeWidget::setSelectionModel(selectionModel);
}

bool QTreeWidget_virtualbase_event(VirtualQTreeWidget* self, QEvent* e) {

	return self->QTreeWidget::event(e);
}

struct miqt_array /* of struct miqt_string */  QTreeWidget_virtualbase_mimeTypes(const VirtualQTreeWidget* self) {

	QStringList _ret = self->QTreeWidget::mimeTypes();
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

QMimeData* QTreeWidget_virtualbase_mimeData(const VirtualQTreeWidget* self, struct miqt_array /* of QTreeWidgetItem* */  items) {
	QList<QTreeWidgetItem *> items_QList;
	items_QList.reserve(items.len);
	QTreeWidgetItem** items_arr = static_cast<QTreeWidgetItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}

	return self->QTreeWidget::mimeData(items_QList);
}

bool QTreeWidget_virtualbase_dropMimeData(VirtualQTreeWidget* self, QTreeWidgetItem* parent, int index, QMimeData* data, int action) {

	return self->QTreeWidget::dropMimeData(parent, static_cast<int>(index), data, static_cast<Qt::DropAction>(action));
}

int QTreeWidget_virtualbase_supportedDropActions(const VirtualQTreeWidget* self) {

	Qt::DropActions _ret = self->QTreeWidget::supportedDropActions();
	return static_cast<int>(_ret);
}

void QTreeWidget_virtualbase_dropEvent(VirtualQTreeWidget* self, QDropEvent* event) {

	self->QTreeWidget::dropEvent(event);
}

void QTreeWidget_virtualbase_setRootIndex(VirtualQTreeWidget* self, QModelIndex* index) {

	self->QTreeWidget::setRootIndex(*index);
}

void QTreeWidget_virtualbase_keyboardSearch(VirtualQTreeWidget* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);

	self->QTreeWidget::keyboardSearch(search_QString);
}

QRect* QTreeWidget_virtualbase_visualRect(const VirtualQTreeWidget* self, QModelIndex* index) {

	return new QRect(self->QTreeWidget::visualRect(*index));
}

void QTreeWidget_virtualbase_scrollTo(VirtualQTreeWidget* self, QModelIndex* index, int hint) {

	self->QTreeWidget::scrollTo(*index, static_cast<VirtualQTreeWidget::ScrollHint>(hint));
}

QModelIndex* QTreeWidget_virtualbase_indexAt(const VirtualQTreeWidget* self, QPoint* p) {

	return new QModelIndex(self->QTreeWidget::indexAt(*p));
}

void QTreeWidget_virtualbase_doItemsLayout(VirtualQTreeWidget* self) {

	self->QTreeWidget::doItemsLayout();
}

void QTreeWidget_virtualbase_reset(VirtualQTreeWidget* self) {

	self->QTreeWidget::reset();
}

void QTreeWidget_virtualbase_dataChanged(VirtualQTreeWidget* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QVector<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}

	self->QTreeWidget::dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QTreeWidget_virtualbase_selectAll(VirtualQTreeWidget* self) {

	self->QTreeWidget::selectAll();
}

void QTreeWidget_virtualbase_verticalScrollbarValueChanged(VirtualQTreeWidget* self, int value) {

	self->QTreeWidget::verticalScrollbarValueChanged(static_cast<int>(value));
}

void QTreeWidget_virtualbase_scrollContentsBy(VirtualQTreeWidget* self, int dx, int dy) {

	self->QTreeWidget::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QTreeWidget_virtualbase_rowsInserted(VirtualQTreeWidget* self, QModelIndex* parent, int start, int end) {

	self->QTreeWidget::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));
}

void QTreeWidget_virtualbase_rowsAboutToBeRemoved(VirtualQTreeWidget* self, QModelIndex* parent, int start, int end) {

	self->QTreeWidget::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));
}

QModelIndex* QTreeWidget_virtualbase_moveCursor(VirtualQTreeWidget* self, int cursorAction, int modifiers) {

	return new QModelIndex(self->QTreeWidget::moveCursor(static_cast<VirtualQTreeWidget::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));
}

int QTreeWidget_virtualbase_horizontalOffset(const VirtualQTreeWidget* self) {

	return self->QTreeWidget::horizontalOffset();
}

int QTreeWidget_virtualbase_verticalOffset(const VirtualQTreeWidget* self) {

	return self->QTreeWidget::verticalOffset();
}

void QTreeWidget_virtualbase_setSelection(VirtualQTreeWidget* self, QRect* rect, int command) {

	self->QTreeWidget::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QRegion* QTreeWidget_virtualbase_visualRegionForSelection(const VirtualQTreeWidget* self, QItemSelection* selection) {

	return new QRegion(self->QTreeWidget::visualRegionForSelection(*selection));
}

struct miqt_array /* of QModelIndex* */  QTreeWidget_virtualbase_selectedIndexes(const VirtualQTreeWidget* self) {

	QModelIndexList _ret = self->QTreeWidget::selectedIndexes();
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

void QTreeWidget_virtualbase_timerEvent(VirtualQTreeWidget* self, QTimerEvent* event) {

	self->QTreeWidget::timerEvent(event);
}

void QTreeWidget_virtualbase_paintEvent(VirtualQTreeWidget* self, QPaintEvent* event) {

	self->QTreeWidget::paintEvent(event);
}

void QTreeWidget_virtualbase_drawRow(const VirtualQTreeWidget* self, QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index) {

	self->QTreeWidget::drawRow(painter, *options, *index);
}

void QTreeWidget_virtualbase_drawBranches(const VirtualQTreeWidget* self, QPainter* painter, QRect* rect, QModelIndex* index) {

	self->QTreeWidget::drawBranches(painter, *rect, *index);
}

void QTreeWidget_virtualbase_mousePressEvent(VirtualQTreeWidget* self, QMouseEvent* event) {

	self->QTreeWidget::mousePressEvent(event);
}

void QTreeWidget_virtualbase_mouseReleaseEvent(VirtualQTreeWidget* self, QMouseEvent* event) {

	self->QTreeWidget::mouseReleaseEvent(event);
}

void QTreeWidget_virtualbase_mouseDoubleClickEvent(VirtualQTreeWidget* self, QMouseEvent* event) {

	self->QTreeWidget::mouseDoubleClickEvent(event);
}

void QTreeWidget_virtualbase_mouseMoveEvent(VirtualQTreeWidget* self, QMouseEvent* event) {

	self->QTreeWidget::mouseMoveEvent(event);
}

void QTreeWidget_virtualbase_keyPressEvent(VirtualQTreeWidget* self, QKeyEvent* event) {

	self->QTreeWidget::keyPressEvent(event);
}

void QTreeWidget_virtualbase_dragMoveEvent(VirtualQTreeWidget* self, QDragMoveEvent* event) {

	self->QTreeWidget::dragMoveEvent(event);
}

bool QTreeWidget_virtualbase_viewportEvent(VirtualQTreeWidget* self, QEvent* event) {

	return self->QTreeWidget::viewportEvent(event);
}

void QTreeWidget_virtualbase_updateGeometries(VirtualQTreeWidget* self) {

	self->QTreeWidget::updateGeometries();
}

QSize* QTreeWidget_virtualbase_viewportSizeHint(const VirtualQTreeWidget* self) {

	return new QSize(self->QTreeWidget::viewportSizeHint());
}

int QTreeWidget_virtualbase_sizeHintForColumn(const VirtualQTreeWidget* self, int column) {

	return self->QTreeWidget::sizeHintForColumn(static_cast<int>(column));
}

void QTreeWidget_virtualbase_horizontalScrollbarAction(VirtualQTreeWidget* self, int action) {

	self->QTreeWidget::horizontalScrollbarAction(static_cast<int>(action));
}

bool QTreeWidget_virtualbase_isIndexHidden(const VirtualQTreeWidget* self, QModelIndex* index) {

	return self->QTreeWidget::isIndexHidden(*index);
}

void QTreeWidget_virtualbase_selectionChanged(VirtualQTreeWidget* self, QItemSelection* selected, QItemSelection* deselected) {

	self->QTreeWidget::selectionChanged(*selected, *deselected);
}

void QTreeWidget_virtualbase_currentChanged(VirtualQTreeWidget* self, QModelIndex* current, QModelIndex* previous) {

	self->QTreeWidget::currentChanged(*current, *previous);
}

int QTreeWidget_virtualbase_sizeHintForRow(const VirtualQTreeWidget* self, int row) {

	return self->QTreeWidget::sizeHintForRow(static_cast<int>(row));
}

QVariant* QTreeWidget_virtualbase_inputMethodQuery(const VirtualQTreeWidget* self, int query) {

	return new QVariant(self->QTreeWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

void QTreeWidget_virtualbase_updateEditorData(VirtualQTreeWidget* self) {

	self->QTreeWidget::updateEditorData();
}

void QTreeWidget_virtualbase_updateEditorGeometries(VirtualQTreeWidget* self) {

	self->QTreeWidget::updateEditorGeometries();
}

void QTreeWidget_virtualbase_verticalScrollbarAction(VirtualQTreeWidget* self, int action) {

	self->QTreeWidget::verticalScrollbarAction(static_cast<int>(action));
}

void QTreeWidget_virtualbase_horizontalScrollbarValueChanged(VirtualQTreeWidget* self, int value) {

	self->QTreeWidget::horizontalScrollbarValueChanged(static_cast<int>(value));
}

void QTreeWidget_virtualbase_closeEditor(VirtualQTreeWidget* self, QWidget* editor, int hint) {

	self->QTreeWidget::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));
}

void QTreeWidget_virtualbase_commitData(VirtualQTreeWidget* self, QWidget* editor) {

	self->QTreeWidget::commitData(editor);
}

void QTreeWidget_virtualbase_editorDestroyed(VirtualQTreeWidget* self, QObject* editor) {

	self->QTreeWidget::editorDestroyed(editor);
}

bool QTreeWidget_virtualbase_edit2(VirtualQTreeWidget* self, QModelIndex* index, int trigger, QEvent* event) {

	return self->QTreeWidget::edit(*index, static_cast<VirtualQTreeWidget::EditTrigger>(trigger), event);
}

int QTreeWidget_virtualbase_selectionCommand(const VirtualQTreeWidget* self, QModelIndex* index, QEvent* event) {

	QItemSelectionModel::SelectionFlags _ret = self->QTreeWidget::selectionCommand(*index, event);
	return static_cast<int>(_ret);
}

void QTreeWidget_virtualbase_startDrag(VirtualQTreeWidget* self, int supportedActions) {

	self->QTreeWidget::startDrag(static_cast<Qt::DropActions>(supportedActions));
}

QStyleOptionViewItem* QTreeWidget_virtualbase_viewOptions(const VirtualQTreeWidget* self) {

	return new QStyleOptionViewItem(self->QTreeWidget::viewOptions());
}

bool QTreeWidget_virtualbase_focusNextPrevChild(VirtualQTreeWidget* self, bool next) {

	return self->QTreeWidget::focusNextPrevChild(next);
}

void QTreeWidget_virtualbase_dragEnterEvent(VirtualQTreeWidget* self, QDragEnterEvent* event) {

	self->QTreeWidget::dragEnterEvent(event);
}

void QTreeWidget_virtualbase_dragLeaveEvent(VirtualQTreeWidget* self, QDragLeaveEvent* event) {

	self->QTreeWidget::dragLeaveEvent(event);
}

void QTreeWidget_virtualbase_focusInEvent(VirtualQTreeWidget* self, QFocusEvent* event) {

	self->QTreeWidget::focusInEvent(event);
}

void QTreeWidget_virtualbase_focusOutEvent(VirtualQTreeWidget* self, QFocusEvent* event) {

	self->QTreeWidget::focusOutEvent(event);
}

void QTreeWidget_virtualbase_resizeEvent(VirtualQTreeWidget* self, QResizeEvent* event) {

	self->QTreeWidget::resizeEvent(event);
}

void QTreeWidget_virtualbase_inputMethodEvent(VirtualQTreeWidget* self, QInputMethodEvent* event) {

	self->QTreeWidget::inputMethodEvent(event);
}

bool QTreeWidget_virtualbase_eventFilter(VirtualQTreeWidget* self, QObject* object, QEvent* event) {

	return self->QTreeWidget::eventFilter(object, event);
}

QSize* QTreeWidget_virtualbase_minimumSizeHint(const VirtualQTreeWidget* self) {

	return new QSize(self->QTreeWidget::minimumSizeHint());
}

QSize* QTreeWidget_virtualbase_sizeHint(const VirtualQTreeWidget* self) {

	return new QSize(self->QTreeWidget::sizeHint());
}

void QTreeWidget_virtualbase_setupViewport(VirtualQTreeWidget* self, QWidget* viewport) {

	self->QTreeWidget::setupViewport(viewport);
}

void QTreeWidget_virtualbase_wheelEvent(VirtualQTreeWidget* self, QWheelEvent* param1) {

	self->QTreeWidget::wheelEvent(param1);
}

void QTreeWidget_virtualbase_contextMenuEvent(VirtualQTreeWidget* self, QContextMenuEvent* param1) {

	self->QTreeWidget::contextMenuEvent(param1);
}

void QTreeWidget_virtualbase_changeEvent(VirtualQTreeWidget* self, QEvent* param1) {

	self->QTreeWidget::changeEvent(param1);
}

int QTreeWidget_virtualbase_devType(const VirtualQTreeWidget* self) {

	return self->QTreeWidget::devType();
}

void QTreeWidget_virtualbase_setVisible(VirtualQTreeWidget* self, bool visible) {

	self->QTreeWidget::setVisible(visible);
}

int QTreeWidget_virtualbase_heightForWidth(const VirtualQTreeWidget* self, int param1) {

	return self->QTreeWidget::heightForWidth(static_cast<int>(param1));
}

bool QTreeWidget_virtualbase_hasHeightForWidth(const VirtualQTreeWidget* self) {

	return self->QTreeWidget::hasHeightForWidth();
}

QPaintEngine* QTreeWidget_virtualbase_paintEngine(const VirtualQTreeWidget* self) {

	return self->QTreeWidget::paintEngine();
}

void QTreeWidget_virtualbase_keyReleaseEvent(VirtualQTreeWidget* self, QKeyEvent* event) {

	self->QTreeWidget::keyReleaseEvent(event);
}

void QTreeWidget_virtualbase_enterEvent(VirtualQTreeWidget* self, QEvent* event) {

	self->QTreeWidget::enterEvent(event);
}

void QTreeWidget_virtualbase_leaveEvent(VirtualQTreeWidget* self, QEvent* event) {

	self->QTreeWidget::leaveEvent(event);
}

void QTreeWidget_virtualbase_moveEvent(VirtualQTreeWidget* self, QMoveEvent* event) {

	self->QTreeWidget::moveEvent(event);
}

void QTreeWidget_virtualbase_closeEvent(VirtualQTreeWidget* self, QCloseEvent* event) {

	self->QTreeWidget::closeEvent(event);
}

void QTreeWidget_virtualbase_tabletEvent(VirtualQTreeWidget* self, QTabletEvent* event) {

	self->QTreeWidget::tabletEvent(event);
}

void QTreeWidget_virtualbase_actionEvent(VirtualQTreeWidget* self, QActionEvent* event) {

	self->QTreeWidget::actionEvent(event);
}

void QTreeWidget_virtualbase_showEvent(VirtualQTreeWidget* self, QShowEvent* event) {

	self->QTreeWidget::showEvent(event);
}

void QTreeWidget_virtualbase_hideEvent(VirtualQTreeWidget* self, QHideEvent* event) {

	self->QTreeWidget::hideEvent(event);
}

bool QTreeWidget_virtualbase_nativeEvent(VirtualQTreeWidget* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QTreeWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QTreeWidget_virtualbase_metric(const VirtualQTreeWidget* self, int param1) {

	return self->QTreeWidget::metric(static_cast<VirtualQTreeWidget::PaintDeviceMetric>(param1));
}

void QTreeWidget_virtualbase_initPainter(const VirtualQTreeWidget* self, QPainter* painter) {

	self->QTreeWidget::initPainter(painter);
}

QPaintDevice* QTreeWidget_virtualbase_redirected(const VirtualQTreeWidget* self, QPoint* offset) {

	return self->QTreeWidget::redirected(offset);
}

QPainter* QTreeWidget_virtualbase_sharedPainter(const VirtualQTreeWidget* self) {

	return self->QTreeWidget::sharedPainter();
}

void QTreeWidget_virtualbase_childEvent(VirtualQTreeWidget* self, QChildEvent* event) {

	self->QTreeWidget::childEvent(event);
}

void QTreeWidget_virtualbase_customEvent(VirtualQTreeWidget* self, QEvent* event) {

	self->QTreeWidget::customEvent(event);
}

void QTreeWidget_virtualbase_connectNotify(VirtualQTreeWidget* self, QMetaMethod* signal) {

	self->QTreeWidget::connectNotify(*signal);
}

void QTreeWidget_virtualbase_disconnectNotify(VirtualQTreeWidget* self, QMetaMethod* signal) {

	self->QTreeWidget::disconnectNotify(*signal);
}

const QMetaObject* QTreeWidget_staticMetaObject() { return &QTreeWidget::staticMetaObject; }

const QTreeWidget_VTable* QTreeWidget_vtbl(const VirtualQTreeWidget* self) { return self->vtbl; }
void* QTreeWidget_vdata(const VirtualQTreeWidget* self) { return self->vdata; }
void QTreeWidget_setVdata(VirtualQTreeWidget* self, void* vdata) { self->vdata = vdata; }

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_protectedbase_items(const VirtualQTreeWidget* self, QMimeData* data) {
	QList<QTreeWidgetItem *> _ret = self->items(data);
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QModelIndex* QTreeWidget_protectedbase_indexFromItem(const VirtualQTreeWidget* self, QTreeWidgetItem* item) {
	return new QModelIndex(self->indexFromItem(item));
}

QModelIndex* QTreeWidget_protectedbase_indexFromItemWithItem(const VirtualQTreeWidget* self, QTreeWidgetItem* item) {
	return new QModelIndex(self->indexFromItem(item));
}

QTreeWidgetItem* QTreeWidget_protectedbase_itemFromIndex(const VirtualQTreeWidget* self, QModelIndex* index) {
	return self->itemFromIndex(*index);
}

QModelIndex* QTreeWidget_protectedbase_indexFromItem2(const VirtualQTreeWidget* self, QTreeWidgetItem* item, int column) {
	return new QModelIndex(self->indexFromItem(item, static_cast<int>(column)));
}

QModelIndex* QTreeWidget_protectedbase_indexFromItem22(const VirtualQTreeWidget* self, QTreeWidgetItem* item, int column) {
	return new QModelIndex(self->indexFromItem(item, static_cast<int>(column)));
}

void QTreeWidget_protectedbase_columnResized(VirtualQTreeWidget* self, int column, int oldSize, int newSize) {
	self->columnResized(static_cast<int>(column), static_cast<int>(oldSize), static_cast<int>(newSize));
}

void QTreeWidget_protectedbase_columnCountChanged(VirtualQTreeWidget* self, int oldCount, int newCount) {
	self->columnCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));
}

void QTreeWidget_protectedbase_columnMoved(VirtualQTreeWidget* self) {
	self->columnMoved();
}

void QTreeWidget_protectedbase_reexpand(VirtualQTreeWidget* self) {
	self->reexpand();
}

void QTreeWidget_protectedbase_rowsRemoved(VirtualQTreeWidget* self, QModelIndex* parent, int first, int last) {
	self->rowsRemoved(*parent, static_cast<int>(first), static_cast<int>(last));
}

void QTreeWidget_protectedbase_drawTree(const VirtualQTreeWidget* self, QPainter* painter, QRegion* region) {
	self->drawTree(painter, *region);
}

int QTreeWidget_protectedbase_indexRowSizeHint(const VirtualQTreeWidget* self, QModelIndex* index) {
	return self->indexRowSizeHint(*index);
}

int QTreeWidget_protectedbase_rowHeight(const VirtualQTreeWidget* self, QModelIndex* index) {
	return self->rowHeight(*index);
}

void QTreeWidget_protectedbase_setHorizontalStepsPerItem(VirtualQTreeWidget* self, int steps) {
	self->setHorizontalStepsPerItem(static_cast<int>(steps));
}

int QTreeWidget_protectedbase_horizontalStepsPerItem(const VirtualQTreeWidget* self) {
	return self->horizontalStepsPerItem();
}

void QTreeWidget_protectedbase_setVerticalStepsPerItem(VirtualQTreeWidget* self, int steps) {
	self->setVerticalStepsPerItem(static_cast<int>(steps));
}

int QTreeWidget_protectedbase_verticalStepsPerItem(const VirtualQTreeWidget* self) {
	return self->verticalStepsPerItem();
}

int QTreeWidget_protectedbase_state(const VirtualQTreeWidget* self) {
	VirtualQTreeWidget::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QTreeWidget_protectedbase_setState(VirtualQTreeWidget* self, int state) {
	self->setState(static_cast<VirtualQTreeWidget::State>(state));
}

void QTreeWidget_protectedbase_scheduleDelayedItemsLayout(VirtualQTreeWidget* self) {
	self->scheduleDelayedItemsLayout();
}

void QTreeWidget_protectedbase_executeDelayedItemsLayout(VirtualQTreeWidget* self) {
	self->executeDelayedItemsLayout();
}

void QTreeWidget_protectedbase_setDirtyRegion(VirtualQTreeWidget* self, QRegion* region) {
	self->setDirtyRegion(*region);
}

void QTreeWidget_protectedbase_scrollDirtyRegion(VirtualQTreeWidget* self, int dx, int dy) {
	self->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));
}

QPoint* QTreeWidget_protectedbase_dirtyRegionOffset(const VirtualQTreeWidget* self) {
	return new QPoint(self->dirtyRegionOffset());
}

void QTreeWidget_protectedbase_startAutoScroll(VirtualQTreeWidget* self) {
	self->startAutoScroll();
}

void QTreeWidget_protectedbase_stopAutoScroll(VirtualQTreeWidget* self) {
	self->stopAutoScroll();
}

void QTreeWidget_protectedbase_doAutoScroll(VirtualQTreeWidget* self) {
	self->doAutoScroll();
}

int QTreeWidget_protectedbase_dropIndicatorPosition(const VirtualQTreeWidget* self) {
	VirtualQTreeWidget::DropIndicatorPosition _ret = self->dropIndicatorPosition();
	return static_cast<int>(_ret);
}

void QTreeWidget_protectedbase_setViewportMargins(VirtualQTreeWidget* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QTreeWidget_protectedbase_viewportMargins(const VirtualQTreeWidget* self) {
	return new QMargins(self->viewportMargins());
}

void QTreeWidget_protectedbase_drawFrame(VirtualQTreeWidget* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QTreeWidget_protectedbase_initStyleOption(const VirtualQTreeWidget* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QTreeWidget_protectedbase_updateMicroFocus(VirtualQTreeWidget* self) {
	self->updateMicroFocus();
}

void QTreeWidget_protectedbase_create(VirtualQTreeWidget* self) {
	self->create();
}

void QTreeWidget_protectedbase_destroy(VirtualQTreeWidget* self) {
	self->destroy();
}

bool QTreeWidget_protectedbase_focusNextChild(VirtualQTreeWidget* self) {
	return self->focusNextChild();
}

bool QTreeWidget_protectedbase_focusPreviousChild(VirtualQTreeWidget* self) {
	return self->focusPreviousChild();
}

QObject* QTreeWidget_protectedbase_sender(const VirtualQTreeWidget* self) {
	return self->sender();
}

int QTreeWidget_protectedbase_senderSignalIndex(const VirtualQTreeWidget* self) {
	return self->senderSignalIndex();
}

int QTreeWidget_protectedbase_receivers(const VirtualQTreeWidget* self, const char* signal) {
	return self->receivers(signal);
}

bool QTreeWidget_protectedbase_isSignalConnected(const VirtualQTreeWidget* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTreeWidget_delete(QTreeWidget* self) {
	delete self;
}

