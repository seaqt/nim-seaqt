#include <QAbstractItemModel>
#include <QBrush>
#include <QByteArray>
#include <QChildEvent>
#include <QDataStream>
#include <QEvent>
#include <QFont>
#include <QIcon>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QModelIndex>
#include <QModelRoleDataSpan>
#include <QObject>
#include <QSize>
#include <QStandardItem>
#include <QStandardItemModel>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qstandarditemmodel.h>
#include "gen_qstandarditemmodel.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQStandardItem final : public QStandardItem {
	struct QStandardItem_VTable* vtbl;
public:

	VirtualQStandardItem(struct QStandardItem_VTable* vtbl): QStandardItem(), vtbl(vtbl) {};
	VirtualQStandardItem(struct QStandardItem_VTable* vtbl, const QString& text): QStandardItem(text), vtbl(vtbl) {};
	VirtualQStandardItem(struct QStandardItem_VTable* vtbl, const QIcon& icon, const QString& text): QStandardItem(icon, text), vtbl(vtbl) {};
	VirtualQStandardItem(struct QStandardItem_VTable* vtbl, int rows): QStandardItem(rows), vtbl(vtbl) {};
	VirtualQStandardItem(struct QStandardItem_VTable* vtbl, int rows, int columns): QStandardItem(rows, columns), vtbl(vtbl) {};

	virtual ~VirtualQStandardItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QVariant data(int role) const override {
		if (vtbl->data == 0) {
			return QStandardItem::data(role);
		}

		int sigval1 = role;

		QVariant* callback_return_value = vtbl->data(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QStandardItem_virtualbase_data(const void* self, int role);

	// Subclass to allow providing a Go implementation
	virtual void multiData(QModelRoleDataSpan roleDataSpan) const override {
		if (vtbl->multiData == 0) {
			QStandardItem::multiData(roleDataSpan);
			return;
		}

		QModelRoleDataSpan* sigval1 = new QModelRoleDataSpan(roleDataSpan);

		vtbl->multiData(vtbl, this, sigval1);

	}

	friend void QStandardItem_virtualbase_multiData(const void* self, QModelRoleDataSpan* roleDataSpan);

	// Subclass to allow providing a Go implementation
	virtual void setData(const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			QStandardItem::setData(value, role);
			return;
		}

		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&value_ret);
		int sigval2 = role;

		vtbl->setData(vtbl, this, sigval1, sigval2);

	}

	friend void QStandardItem_virtualbase_setData(void* self, QVariant* value, int role);

	// Subclass to allow providing a Go implementation
	virtual QStandardItem* clone() const override {
		if (vtbl->clone == 0) {
			return QStandardItem::clone();
		}


		QStandardItem* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	friend QStandardItem* QStandardItem_virtualbase_clone(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QStandardItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QStandardItem_virtualbase_type(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void read(QDataStream& in) override {
		if (vtbl->read == 0) {
			QStandardItem::read(in);
			return;
		}

		QDataStream& in_ret = in;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &in_ret;

		vtbl->read(vtbl, this, sigval1);

	}

	friend void QStandardItem_virtualbase_read(void* self, QDataStream* in);

	// Subclass to allow providing a Go implementation
	virtual void write(QDataStream& out) const override {
		if (vtbl->write == 0) {
			QStandardItem::write(out);
			return;
		}

		QDataStream& out_ret = out;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &out_ret;

		vtbl->write(vtbl, this, sigval1);

	}

	friend void QStandardItem_virtualbase_write(const void* self, QDataStream* out);

	// Subclass to allow providing a Go implementation
	virtual bool operator<(const QStandardItem& other) const override {
		if (vtbl->operatorLesser == 0) {
			return QStandardItem::operator<(other);
		}

		const QStandardItem& other_ret = other;
		// Cast returned reference into pointer
		QStandardItem* sigval1 = const_cast<QStandardItem*>(&other_ret);

		bool callback_return_value = vtbl->operatorLesser(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStandardItem_virtualbase_operatorLesser(const void* self, QStandardItem* other);

	// Wrappers to allow calling protected methods:
	friend void QStandardItem_protectedbase_emitDataChanged(void* self);
};

QStandardItem* QStandardItem_new(struct QStandardItem_VTable* vtbl) {
	return new VirtualQStandardItem(vtbl);
}

QStandardItem* QStandardItem_new2(struct QStandardItem_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQStandardItem(vtbl, text_QString);
}

QStandardItem* QStandardItem_new3(struct QStandardItem_VTable* vtbl, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQStandardItem(vtbl, *icon, text_QString);
}

QStandardItem* QStandardItem_new4(struct QStandardItem_VTable* vtbl, int rows) {
	return new VirtualQStandardItem(vtbl, static_cast<int>(rows));
}

QStandardItem* QStandardItem_new5(struct QStandardItem_VTable* vtbl, int rows, int columns) {
	return new VirtualQStandardItem(vtbl, static_cast<int>(rows), static_cast<int>(columns));
}

QVariant* QStandardItem_data(const QStandardItem* self, int role) {
	return new QVariant(self->data(static_cast<int>(role)));
}

void QStandardItem_multiData(const QStandardItem* self, QModelRoleDataSpan* roleDataSpan) {
	self->multiData(*roleDataSpan);
}

void QStandardItem_setData(QStandardItem* self, QVariant* value, int role) {
	self->setData(*value, static_cast<int>(role));
}

void QStandardItem_clearData(QStandardItem* self) {
	self->clearData();
}

struct miqt_string QStandardItem_text(const QStandardItem* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStandardItem_setText(QStandardItem* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

QIcon* QStandardItem_icon(const QStandardItem* self) {
	return new QIcon(self->icon());
}

void QStandardItem_setIcon(QStandardItem* self, QIcon* icon) {
	self->setIcon(*icon);
}

struct miqt_string QStandardItem_toolTip(const QStandardItem* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStandardItem_setToolTip(QStandardItem* self, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(toolTip_QString);
}

struct miqt_string QStandardItem_statusTip(const QStandardItem* self) {
	QString _ret = self->statusTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStandardItem_setStatusTip(QStandardItem* self, struct miqt_string statusTip) {
	QString statusTip_QString = QString::fromUtf8(statusTip.data, statusTip.len);
	self->setStatusTip(statusTip_QString);
}

struct miqt_string QStandardItem_whatsThis(const QStandardItem* self) {
	QString _ret = self->whatsThis();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStandardItem_setWhatsThis(QStandardItem* self, struct miqt_string whatsThis) {
	QString whatsThis_QString = QString::fromUtf8(whatsThis.data, whatsThis.len);
	self->setWhatsThis(whatsThis_QString);
}

QSize* QStandardItem_sizeHint(const QStandardItem* self) {
	return new QSize(self->sizeHint());
}

void QStandardItem_setSizeHint(QStandardItem* self, QSize* sizeHint) {
	self->setSizeHint(*sizeHint);
}

QFont* QStandardItem_font(const QStandardItem* self) {
	return new QFont(self->font());
}

void QStandardItem_setFont(QStandardItem* self, QFont* font) {
	self->setFont(*font);
}

int QStandardItem_textAlignment(const QStandardItem* self) {
	Qt::Alignment _ret = self->textAlignment();
	return static_cast<int>(_ret);
}

void QStandardItem_setTextAlignment(QStandardItem* self, int textAlignment) {
	self->setTextAlignment(static_cast<Qt::Alignment>(textAlignment));
}

QBrush* QStandardItem_background(const QStandardItem* self) {
	return new QBrush(self->background());
}

void QStandardItem_setBackground(QStandardItem* self, QBrush* brush) {
	self->setBackground(*brush);
}

QBrush* QStandardItem_foreground(const QStandardItem* self) {
	return new QBrush(self->foreground());
}

void QStandardItem_setForeground(QStandardItem* self, QBrush* brush) {
	self->setForeground(*brush);
}

int QStandardItem_checkState(const QStandardItem* self) {
	Qt::CheckState _ret = self->checkState();
	return static_cast<int>(_ret);
}

void QStandardItem_setCheckState(QStandardItem* self, int checkState) {
	self->setCheckState(static_cast<Qt::CheckState>(checkState));
}

struct miqt_string QStandardItem_accessibleText(const QStandardItem* self) {
	QString _ret = self->accessibleText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStandardItem_setAccessibleText(QStandardItem* self, struct miqt_string accessibleText) {
	QString accessibleText_QString = QString::fromUtf8(accessibleText.data, accessibleText.len);
	self->setAccessibleText(accessibleText_QString);
}

struct miqt_string QStandardItem_accessibleDescription(const QStandardItem* self) {
	QString _ret = self->accessibleDescription();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStandardItem_setAccessibleDescription(QStandardItem* self, struct miqt_string accessibleDescription) {
	QString accessibleDescription_QString = QString::fromUtf8(accessibleDescription.data, accessibleDescription.len);
	self->setAccessibleDescription(accessibleDescription_QString);
}

int QStandardItem_flags(const QStandardItem* self) {
	Qt::ItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QStandardItem_setFlags(QStandardItem* self, int flags) {
	self->setFlags(static_cast<Qt::ItemFlags>(flags));
}

bool QStandardItem_isEnabled(const QStandardItem* self) {
	return self->isEnabled();
}

void QStandardItem_setEnabled(QStandardItem* self, bool enabled) {
	self->setEnabled(enabled);
}

bool QStandardItem_isEditable(const QStandardItem* self) {
	return self->isEditable();
}

void QStandardItem_setEditable(QStandardItem* self, bool editable) {
	self->setEditable(editable);
}

bool QStandardItem_isSelectable(const QStandardItem* self) {
	return self->isSelectable();
}

void QStandardItem_setSelectable(QStandardItem* self, bool selectable) {
	self->setSelectable(selectable);
}

bool QStandardItem_isCheckable(const QStandardItem* self) {
	return self->isCheckable();
}

void QStandardItem_setCheckable(QStandardItem* self, bool checkable) {
	self->setCheckable(checkable);
}

bool QStandardItem_isAutoTristate(const QStandardItem* self) {
	return self->isAutoTristate();
}

void QStandardItem_setAutoTristate(QStandardItem* self, bool tristate) {
	self->setAutoTristate(tristate);
}

bool QStandardItem_isUserTristate(const QStandardItem* self) {
	return self->isUserTristate();
}

void QStandardItem_setUserTristate(QStandardItem* self, bool tristate) {
	self->setUserTristate(tristate);
}

bool QStandardItem_isDragEnabled(const QStandardItem* self) {
	return self->isDragEnabled();
}

void QStandardItem_setDragEnabled(QStandardItem* self, bool dragEnabled) {
	self->setDragEnabled(dragEnabled);
}

bool QStandardItem_isDropEnabled(const QStandardItem* self) {
	return self->isDropEnabled();
}

void QStandardItem_setDropEnabled(QStandardItem* self, bool dropEnabled) {
	self->setDropEnabled(dropEnabled);
}

QStandardItem* QStandardItem_parent(const QStandardItem* self) {
	return self->parent();
}

int QStandardItem_row(const QStandardItem* self) {
	return self->row();
}

int QStandardItem_column(const QStandardItem* self) {
	return self->column();
}

QModelIndex* QStandardItem_index(const QStandardItem* self) {
	return new QModelIndex(self->index());
}

QStandardItemModel* QStandardItem_model(const QStandardItem* self) {
	return self->model();
}

int QStandardItem_rowCount(const QStandardItem* self) {
	return self->rowCount();
}

void QStandardItem_setRowCount(QStandardItem* self, int rows) {
	self->setRowCount(static_cast<int>(rows));
}

int QStandardItem_columnCount(const QStandardItem* self) {
	return self->columnCount();
}

void QStandardItem_setColumnCount(QStandardItem* self, int columns) {
	self->setColumnCount(static_cast<int>(columns));
}

bool QStandardItem_hasChildren(const QStandardItem* self) {
	return self->hasChildren();
}

QStandardItem* QStandardItem_child(const QStandardItem* self, int row) {
	return self->child(static_cast<int>(row));
}

void QStandardItem_setChild(QStandardItem* self, int row, int column, QStandardItem* item) {
	self->setChild(static_cast<int>(row), static_cast<int>(column), item);
}

void QStandardItem_setChild2(QStandardItem* self, int row, QStandardItem* item) {
	self->setChild(static_cast<int>(row), item);
}

void QStandardItem_insertRow(QStandardItem* self, int row, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->insertRow(static_cast<int>(row), items_QList);
}

void QStandardItem_insertColumn(QStandardItem* self, int column, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->insertColumn(static_cast<int>(column), items_QList);
}

void QStandardItem_insertRows(QStandardItem* self, int row, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->insertRows(static_cast<int>(row), items_QList);
}

void QStandardItem_insertRows2(QStandardItem* self, int row, int count) {
	self->insertRows(static_cast<int>(row), static_cast<int>(count));
}

void QStandardItem_insertColumns(QStandardItem* self, int column, int count) {
	self->insertColumns(static_cast<int>(column), static_cast<int>(count));
}

void QStandardItem_removeRow(QStandardItem* self, int row) {
	self->removeRow(static_cast<int>(row));
}

void QStandardItem_removeColumn(QStandardItem* self, int column) {
	self->removeColumn(static_cast<int>(column));
}

void QStandardItem_removeRows(QStandardItem* self, int row, int count) {
	self->removeRows(static_cast<int>(row), static_cast<int>(count));
}

void QStandardItem_removeColumns(QStandardItem* self, int column, int count) {
	self->removeColumns(static_cast<int>(column), static_cast<int>(count));
}

void QStandardItem_appendRow(QStandardItem* self, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->appendRow(items_QList);
}

void QStandardItem_appendRows(QStandardItem* self, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->appendRows(items_QList);
}

void QStandardItem_appendColumn(QStandardItem* self, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->appendColumn(items_QList);
}

void QStandardItem_insertRow2(QStandardItem* self, int row, QStandardItem* item) {
	self->insertRow(static_cast<int>(row), item);
}

void QStandardItem_appendRowWithItem(QStandardItem* self, QStandardItem* item) {
	self->appendRow(item);
}

QStandardItem* QStandardItem_takeChild(QStandardItem* self, int row) {
	return self->takeChild(static_cast<int>(row));
}

struct miqt_array /* of QStandardItem* */  QStandardItem_takeRow(QStandardItem* self, int row) {
	QList<QStandardItem *> _ret = self->takeRow(static_cast<int>(row));
	// Convert QList<> from C++ memory to manually-managed C memory
	QStandardItem** _arr = static_cast<QStandardItem**>(malloc(sizeof(QStandardItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QStandardItem* */  QStandardItem_takeColumn(QStandardItem* self, int column) {
	QList<QStandardItem *> _ret = self->takeColumn(static_cast<int>(column));
	// Convert QList<> from C++ memory to manually-managed C memory
	QStandardItem** _arr = static_cast<QStandardItem**>(malloc(sizeof(QStandardItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QStandardItem_sortChildren(QStandardItem* self, int column) {
	self->sortChildren(static_cast<int>(column));
}

QStandardItem* QStandardItem_clone(const QStandardItem* self) {
	return self->clone();
}

int QStandardItem_type(const QStandardItem* self) {
	return self->type();
}

void QStandardItem_read(QStandardItem* self, QDataStream* in) {
	self->read(*in);
}

void QStandardItem_write(const QStandardItem* self, QDataStream* out) {
	self->write(*out);
}

bool QStandardItem_operatorLesser(const QStandardItem* self, QStandardItem* other) {
	return (*self < *other);
}

QStandardItem* QStandardItem_child2(const QStandardItem* self, int row, int column) {
	return self->child(static_cast<int>(row), static_cast<int>(column));
}

QStandardItem* QStandardItem_takeChild2(QStandardItem* self, int row, int column) {
	return self->takeChild(static_cast<int>(row), static_cast<int>(column));
}

void QStandardItem_sortChildren2(QStandardItem* self, int column, int order) {
	self->sortChildren(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QVariant* QStandardItem_virtualbase_data(const void* self, int role) {

	return new QVariant(( (const VirtualQStandardItem*)(self) )->QStandardItem::data(static_cast<int>(role)));

}

void QStandardItem_virtualbase_multiData(const void* self, QModelRoleDataSpan* roleDataSpan) {

	( (const VirtualQStandardItem*)(self) )->QStandardItem::multiData(*roleDataSpan);

}

void QStandardItem_virtualbase_setData(void* self, QVariant* value, int role) {

	( (VirtualQStandardItem*)(self) )->QStandardItem::setData(*value, static_cast<int>(role));

}

QStandardItem* QStandardItem_virtualbase_clone(const void* self) {

	return ( (const VirtualQStandardItem*)(self) )->QStandardItem::clone();

}

int QStandardItem_virtualbase_type(const void* self) {

	return ( (const VirtualQStandardItem*)(self) )->QStandardItem::type();

}

void QStandardItem_virtualbase_read(void* self, QDataStream* in) {

	( (VirtualQStandardItem*)(self) )->QStandardItem::read(*in);

}

void QStandardItem_virtualbase_write(const void* self, QDataStream* out) {

	( (const VirtualQStandardItem*)(self) )->QStandardItem::write(*out);

}

bool QStandardItem_virtualbase_operatorLesser(const void* self, QStandardItem* other) {

	return ( (const VirtualQStandardItem*)(self) )->QStandardItem::operator<(*other);

}

void QStandardItem_protectedbase_emitDataChanged(void* self) {
	VirtualQStandardItem* self_cast = static_cast<VirtualQStandardItem*>( (QStandardItem*)(self) );
	
	self_cast->emitDataChanged();

}

void QStandardItem_delete(QStandardItem* self) {
	delete self;
}

class VirtualQStandardItemModel final : public QStandardItemModel {
	struct QStandardItemModel_VTable* vtbl;
public:

	VirtualQStandardItemModel(struct QStandardItemModel_VTable* vtbl): QStandardItemModel(), vtbl(vtbl) {};
	VirtualQStandardItemModel(struct QStandardItemModel_VTable* vtbl, int rows, int columns): QStandardItemModel(rows, columns), vtbl(vtbl) {};
	VirtualQStandardItemModel(struct QStandardItemModel_VTable* vtbl, QObject* parent): QStandardItemModel(parent), vtbl(vtbl) {};
	VirtualQStandardItemModel(struct QStandardItemModel_VTable* vtbl, int rows, int columns, QObject* parent): QStandardItemModel(rows, columns, parent), vtbl(vtbl) {};

	virtual ~VirtualQStandardItemModel() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStandardItemModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QStandardItemModel_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStandardItemModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QStandardItemModel_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStandardItemModel::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStandardItemModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QStandardItemModel::roleNames();
		}


		struct miqt_map /* of int to struct miqt_string */  callback_return_value = vtbl->roleNames(vtbl, this);
		QHash<int, QByteArray> callback_return_value_QMap;
		callback_return_value_QMap.reserve(callback_return_value.len);
		int* callback_return_value_karr = static_cast<int*>(callback_return_value.keys);
		struct miqt_string* callback_return_value_varr = static_cast<struct miqt_string*>(callback_return_value.values);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QByteArray callback_return_value_varr_i_QByteArray(callback_return_value_varr[i].data, callback_return_value_varr[i].len);
			free(callback_return_value_varr[i].data);
			callback_return_value_QMap[static_cast<int>(callback_return_value_karr[i])] = callback_return_value_varr_i_QByteArray;
		}
		free(callback_return_value.keys);
		free(callback_return_value.values);

		return callback_return_value_QMap;
	}

	friend struct miqt_map /* of int to struct miqt_string */  QStandardItemModel_virtualbase_roleNames(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QStandardItemModel::index(row, column, parent);
		}

		int sigval1 = row;
		int sigval2 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		QModelIndex* callback_return_value = vtbl->index(vtbl, this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QStandardItemModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex parent(const QModelIndex& child) const override {
		if (vtbl->parent == 0) {
			return QStandardItemModel::parent(child);
		}

		const QModelIndex& child_ret = child;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&child_ret);

		QModelIndex* callback_return_value = vtbl->parent(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QStandardItemModel_virtualbase_parent(const void* self, QModelIndex* child);

	// Subclass to allow providing a Go implementation
	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QStandardItemModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStandardItemModel_virtualbase_rowCount(const void* self, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QStandardItemModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStandardItemModel_virtualbase_columnCount(const void* self, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QStandardItemModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_hasChildren(const void* self, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QStandardItemModel::data(index, role);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		int sigval2 = role;

		QVariant* callback_return_value = vtbl->data(vtbl, this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QStandardItemModel_virtualbase_data(const void* self, QModelIndex* index, int role);

	// Subclass to allow providing a Go implementation
	virtual void multiData(const QModelIndex& index, QModelRoleDataSpan roleDataSpan) const override {
		if (vtbl->multiData == 0) {
			QStandardItemModel::multiData(index, roleDataSpan);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelRoleDataSpan* sigval2 = new QModelRoleDataSpan(roleDataSpan);

		vtbl->multiData(vtbl, this, sigval1, sigval2);

	}

	friend void QStandardItemModel_virtualbase_multiData(const void* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);

	// Subclass to allow providing a Go implementation
	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QStandardItemModel::setData(index, value, role);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		int sigval3 = role;

		bool callback_return_value = vtbl->setData(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);

	// Subclass to allow providing a Go implementation
	virtual bool clearItemData(const QModelIndex& index) override {
		if (vtbl->clearItemData == 0) {
			return QStandardItemModel::clearItemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->clearItemData(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_clearItemData(void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QStandardItemModel::headerData(section, orientation, role);
		}

		int sigval1 = section;
		Qt::Orientation orientation_ret = orientation;
		int sigval2 = static_cast<int>(orientation_ret);
		int sigval3 = role;

		QVariant* callback_return_value = vtbl->headerData(vtbl, this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QStandardItemModel_virtualbase_headerData(const void* self, int section, int orientation, int role);

	// Subclass to allow providing a Go implementation
	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QStandardItemModel::setHeaderData(section, orientation, value, role);
		}

		int sigval1 = section;
		Qt::Orientation orientation_ret = orientation;
		int sigval2 = static_cast<int>(orientation_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
		int sigval4 = role;

		bool callback_return_value = vtbl->setHeaderData(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);

	// Subclass to allow providing a Go implementation
	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QStandardItemModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QStandardItemModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QStandardItemModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QStandardItemModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QStandardItemModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(vtbl, this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	friend int QStandardItemModel_virtualbase_flags(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QStandardItemModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QStandardItemModel_virtualbase_supportedDropActions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QStandardItemModel::itemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		struct miqt_map /* of int to QVariant* */  callback_return_value = vtbl->itemData(vtbl, this, sigval1);
		QMap<int, QVariant> callback_return_value_QMap;
		int* callback_return_value_karr = static_cast<int*>(callback_return_value.keys);
		QVariant** callback_return_value_varr = static_cast<QVariant**>(callback_return_value.values);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QMap[static_cast<int>(callback_return_value_karr[i])] = *(callback_return_value_varr[i]);
		}
		free(callback_return_value.keys);
		free(callback_return_value.values);

		return callback_return_value_QMap;
	}

	friend struct miqt_map /* of int to QVariant* */  QStandardItemModel_virtualbase_itemData(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QStandardItemModel::setItemData(index, roles);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		const QMap<int, QVariant>& roles_ret = roles;
		// Convert QMap<> from C++ memory to manually-managed C memory
		int* roles_karr = static_cast<int*>(malloc(sizeof(int) * roles_ret.size()));
		QVariant** roles_varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * roles_ret.size()));
		int roles_ctr = 0;
		for (auto roles_itr = roles_ret.keyValueBegin(); roles_itr != roles_ret.keyValueEnd(); ++roles_itr) {
			roles_karr[roles_ctr] = roles_itr->first;
			roles_varr[roles_ctr] = new QVariant(roles_itr->second);
			roles_ctr++;
		}
		struct miqt_map roles_out;
		roles_out.len = roles_ret.size();
		roles_out.keys = static_cast<void*>(roles_karr);
		roles_out.values = static_cast<void*>(roles_varr);
		struct miqt_map /* of int to QVariant* */  sigval2 = roles_out;

		bool callback_return_value = vtbl->setItemData(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);

	// Subclass to allow providing a Go implementation
	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QStandardItemModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(vtbl, this, sigval1, sigval2);

	}

	friend void QStandardItemModel_virtualbase_sort(void* self, int column, int order);

	// Subclass to allow providing a Go implementation
	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QStandardItemModel::mimeTypes();
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

	friend struct miqt_array /* of struct miqt_string */  QStandardItemModel_virtualbase_mimeTypes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QStandardItemModel::mimeData(indexes);
		}

		const QModelIndexList& indexes_ret = indexes;
		// Convert QList<> from C++ memory to manually-managed C memory
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * indexes_ret.length()));
		for (size_t i = 0, e = indexes_ret.length(); i < e; ++i) {
			indexes_arr[i] = new QModelIndex(indexes_ret[i]);
		}
		struct miqt_array indexes_out;
		indexes_out.len = indexes_ret.length();
		indexes_out.data = static_cast<void*>(indexes_arr);
		struct miqt_array /* of QModelIndex* */  sigval1 = indexes_out;

		QMimeData* callback_return_value = vtbl->mimeData(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QMimeData* QStandardItemModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);

	// Subclass to allow providing a Go implementation
	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QStandardItemModel::dropMimeData(data, action, row, column, parent);
		}

		QMimeData* sigval1 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval2 = static_cast<int>(action_ret);
		int sigval3 = row;
		int sigval4 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval5 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->dropMimeData(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QStandardItemModel::sibling(row, column, idx);
		}

		int sigval1 = row;
		int sigval2 = column;
		const QModelIndex& idx_ret = idx;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&idx_ret);

		QModelIndex* callback_return_value = vtbl->sibling(vtbl, this, sigval1, sigval2, sigval3);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QStandardItemModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);

	// Subclass to allow providing a Go implementation
	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QStandardItemModel::canDropMimeData(data, action, row, column, parent);
		}

		QMimeData* sigval1 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval2 = static_cast<int>(action_ret);
		int sigval3 = row;
		int sigval4 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval5 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canDropMimeData(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QStandardItemModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	friend int QStandardItemModel_virtualbase_supportedDragActions(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QStandardItemModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
		}

		const QModelIndex& sourceParent_ret = sourceParent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceParent_ret);
		int sigval2 = sourceRow;
		int sigval3 = count;
		const QModelIndex& destinationParent_ret = destinationParent;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&destinationParent_ret);
		int sigval5 = destinationChild;

		bool callback_return_value = vtbl->moveRows(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);

	// Subclass to allow providing a Go implementation
	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QStandardItemModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
		}

		const QModelIndex& sourceParent_ret = sourceParent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceParent_ret);
		int sigval2 = sourceColumn;
		int sigval3 = count;
		const QModelIndex& destinationParent_ret = destinationParent;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&destinationParent_ret);
		int sigval5 = destinationChild;

		bool callback_return_value = vtbl->moveColumns(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);

	// Subclass to allow providing a Go implementation
	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QStandardItemModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(vtbl, this, sigval1);

	}

	friend void QStandardItemModel_virtualbase_fetchMore(void* self, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QStandardItemModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);

	// Subclass to allow providing a Go implementation
	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QStandardItemModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QModelIndex* QStandardItemModel_virtualbase_buddy(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QStandardItemModel::match(start, role, value, hits, flags);
		}

		const QModelIndex& start_ret = start;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&start_ret);
		int sigval2 = role;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
		int sigval4 = hits;
		Qt::MatchFlags flags_ret = flags;
		int sigval5 = static_cast<int>(flags_ret);

		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->match(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}
		free(callback_return_value.data);

		return callback_return_value_QList;
	}

	friend struct miqt_array /* of QModelIndex* */  QStandardItemModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);

	// Subclass to allow providing a Go implementation
	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QStandardItemModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QStandardItemModel_virtualbase_span(const void* self, QModelIndex* index);

	// Subclass to allow providing a Go implementation
	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QStandardItemModel::submit();
		}


		bool callback_return_value = vtbl->submit(vtbl, this);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_submit(void* self);

	// Subclass to allow providing a Go implementation
	virtual void revert() override {
		if (vtbl->revert == 0) {
			QStandardItemModel::revert();
			return;
		}


		vtbl->revert(vtbl, this);

	}

	friend void QStandardItemModel_virtualbase_revert(void* self);

	// Subclass to allow providing a Go implementation
	virtual void resetInternalData() override {
		if (vtbl->resetInternalData == 0) {
			QStandardItemModel::resetInternalData();
			return;
		}


		vtbl->resetInternalData(vtbl, this);

	}

	friend void QStandardItemModel_virtualbase_resetInternalData(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStandardItemModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStandardItemModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStandardItemModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStandardItemModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QStandardItemModel_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStandardItemModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QStandardItemModel_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStandardItemModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QStandardItemModel_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStandardItemModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QStandardItemModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStandardItemModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QStandardItemModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QModelIndex* QStandardItemModel_protectedbase_createIndex(const void* self, int row, int column);
	friend void QStandardItemModel_protectedbase_encodeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
	friend bool QStandardItemModel_protectedbase_decodeData(void* self, int row, int column, QModelIndex* parent, QDataStream* stream);
	friend void QStandardItemModel_protectedbase_beginInsertRows(void* self, QModelIndex* parent, int first, int last);
	friend void QStandardItemModel_protectedbase_endInsertRows(void* self);
	friend void QStandardItemModel_protectedbase_beginRemoveRows(void* self, QModelIndex* parent, int first, int last);
	friend void QStandardItemModel_protectedbase_endRemoveRows(void* self);
	friend bool QStandardItemModel_protectedbase_beginMoveRows(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
	friend void QStandardItemModel_protectedbase_endMoveRows(void* self);
	friend void QStandardItemModel_protectedbase_beginInsertColumns(void* self, QModelIndex* parent, int first, int last);
	friend void QStandardItemModel_protectedbase_endInsertColumns(void* self);
	friend void QStandardItemModel_protectedbase_beginRemoveColumns(void* self, QModelIndex* parent, int first, int last);
	friend void QStandardItemModel_protectedbase_endRemoveColumns(void* self);
	friend bool QStandardItemModel_protectedbase_beginMoveColumns(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
	friend void QStandardItemModel_protectedbase_endMoveColumns(void* self);
	friend void QStandardItemModel_protectedbase_beginResetModel(void* self);
	friend void QStandardItemModel_protectedbase_endResetModel(void* self);
	friend void QStandardItemModel_protectedbase_changePersistentIndex(void* self, QModelIndex* from, QModelIndex* to);
	friend void QStandardItemModel_protectedbase_changePersistentIndexList(void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
	friend struct miqt_array /* of QModelIndex* */  QStandardItemModel_protectedbase_persistentIndexList(const void* self);
	friend QObject* QStandardItemModel_protectedbase_sender(const void* self);
	friend int QStandardItemModel_protectedbase_senderSignalIndex(const void* self);
	friend int QStandardItemModel_protectedbase_receivers(const void* self, const char* signal);
	friend bool QStandardItemModel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QStandardItemModel* QStandardItemModel_new(struct QStandardItemModel_VTable* vtbl) {
	return new VirtualQStandardItemModel(vtbl);
}

QStandardItemModel* QStandardItemModel_new2(struct QStandardItemModel_VTable* vtbl, int rows, int columns) {
	return new VirtualQStandardItemModel(vtbl, static_cast<int>(rows), static_cast<int>(columns));
}

QStandardItemModel* QStandardItemModel_new3(struct QStandardItemModel_VTable* vtbl, QObject* parent) {
	return new VirtualQStandardItemModel(vtbl, parent);
}

QStandardItemModel* QStandardItemModel_new4(struct QStandardItemModel_VTable* vtbl, int rows, int columns, QObject* parent) {
	return new VirtualQStandardItemModel(vtbl, static_cast<int>(rows), static_cast<int>(columns), parent);
}

void QStandardItemModel_virtbase(QStandardItemModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QStandardItemModel_metaObject(const QStandardItemModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStandardItemModel_metacast(QStandardItemModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStandardItemModel_metacall(QStandardItemModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStandardItemModel_tr(const char* s) {
	QString _ret = QStandardItemModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStandardItemModel_setItemRoleNames(QStandardItemModel* self, struct miqt_map /* of int to struct miqt_string */  roleNames) {
	QHash<int, QByteArray> roleNames_QMap;
	roleNames_QMap.reserve(roleNames.len);
	int* roleNames_karr = static_cast<int*>(roleNames.keys);
	struct miqt_string* roleNames_varr = static_cast<struct miqt_string*>(roleNames.values);
	for(size_t i = 0; i < roleNames.len; ++i) {
		QByteArray roleNames_varr_i_QByteArray(roleNames_varr[i].data, roleNames_varr[i].len);
		roleNames_QMap[static_cast<int>(roleNames_karr[i])] = roleNames_varr_i_QByteArray;
	}
	self->setItemRoleNames(roleNames_QMap);
}

struct miqt_map /* of int to struct miqt_string */  QStandardItemModel_roleNames(const QStandardItemModel* self) {
	QHash<int, QByteArray> _ret = self->roleNames();
	// Convert QMap<> from C++ memory to manually-managed C memory
	int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
	struct miqt_string* _varr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = _itr->first;
		QByteArray _hashval_qb = _itr->second;
		struct miqt_string _hashval_ms;
		_hashval_ms.len = _hashval_qb.length();
		_hashval_ms.data = static_cast<char*>(malloc(_hashval_ms.len));
		memcpy(_hashval_ms.data, _hashval_qb.data(), _hashval_ms.len);
		_varr[_ctr] = _hashval_ms;
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

QModelIndex* QStandardItemModel_index(const QStandardItemModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QStandardItemModel_parent(const QStandardItemModel* self, QModelIndex* child) {
	return new QModelIndex(self->parent(*child));
}

int QStandardItemModel_rowCount(const QStandardItemModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QStandardItemModel_columnCount(const QStandardItemModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

bool QStandardItemModel_hasChildren(const QStandardItemModel* self, QModelIndex* parent) {
	return self->hasChildren(*parent);
}

QVariant* QStandardItemModel_data(const QStandardItemModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

void QStandardItemModel_multiData(const QStandardItemModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {
	self->multiData(*index, *roleDataSpan);
}

bool QStandardItemModel_setData(QStandardItemModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

bool QStandardItemModel_clearItemData(QStandardItemModel* self, QModelIndex* index) {
	return self->clearItemData(*index);
}

QVariant* QStandardItemModel_headerData(const QStandardItemModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QStandardItemModel_setHeaderData(QStandardItemModel* self, int section, int orientation, QVariant* value, int role) {
	return self->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

bool QStandardItemModel_insertRows(QStandardItemModel* self, int row, int count, QModelIndex* parent) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QStandardItemModel_insertColumns(QStandardItemModel* self, int column, int count, QModelIndex* parent) {
	return self->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QStandardItemModel_removeRows(QStandardItemModel* self, int row, int count, QModelIndex* parent) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QStandardItemModel_removeColumns(QStandardItemModel* self, int column, int count, QModelIndex* parent) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

int QStandardItemModel_flags(const QStandardItemModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

int QStandardItemModel_supportedDropActions(const QStandardItemModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

struct miqt_map /* of int to QVariant* */  QStandardItemModel_itemData(const QStandardItemModel* self, QModelIndex* index) {
	QMap<int, QVariant> _ret = self->itemData(*index);
	// Convert QMap<> from C++ memory to manually-managed C memory
	int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
	QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = _itr->first;
		_varr[_ctr] = new QVariant(_itr->second);
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

bool QStandardItemModel_setItemData(QStandardItemModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}
	return self->setItemData(*index, roles_QMap);
}

void QStandardItemModel_clear(QStandardItemModel* self) {
	self->clear();
}

void QStandardItemModel_sort(QStandardItemModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QStandardItem* QStandardItemModel_itemFromIndex(const QStandardItemModel* self, QModelIndex* index) {
	return self->itemFromIndex(*index);
}

QModelIndex* QStandardItemModel_indexFromItem(const QStandardItemModel* self, QStandardItem* item) {
	return new QModelIndex(self->indexFromItem(item));
}

QStandardItem* QStandardItemModel_item(const QStandardItemModel* self, int row) {
	return self->item(static_cast<int>(row));
}

void QStandardItemModel_setItem(QStandardItemModel* self, int row, int column, QStandardItem* item) {
	self->setItem(static_cast<int>(row), static_cast<int>(column), item);
}

void QStandardItemModel_setItem2(QStandardItemModel* self, int row, QStandardItem* item) {
	self->setItem(static_cast<int>(row), item);
}

QStandardItem* QStandardItemModel_invisibleRootItem(const QStandardItemModel* self) {
	return self->invisibleRootItem();
}

QStandardItem* QStandardItemModel_horizontalHeaderItem(const QStandardItemModel* self, int column) {
	return self->horizontalHeaderItem(static_cast<int>(column));
}

void QStandardItemModel_setHorizontalHeaderItem(QStandardItemModel* self, int column, QStandardItem* item) {
	self->setHorizontalHeaderItem(static_cast<int>(column), item);
}

QStandardItem* QStandardItemModel_verticalHeaderItem(const QStandardItemModel* self, int row) {
	return self->verticalHeaderItem(static_cast<int>(row));
}

void QStandardItemModel_setVerticalHeaderItem(QStandardItemModel* self, int row, QStandardItem* item) {
	self->setVerticalHeaderItem(static_cast<int>(row), item);
}

void QStandardItemModel_setHorizontalHeaderLabels(QStandardItemModel* self, struct miqt_array /* of struct miqt_string */  labels) {
	QStringList labels_QList;
	labels_QList.reserve(labels.len);
	struct miqt_string* labels_arr = static_cast<struct miqt_string*>(labels.data);
	for(size_t i = 0; i < labels.len; ++i) {
		QString labels_arr_i_QString = QString::fromUtf8(labels_arr[i].data, labels_arr[i].len);
		labels_QList.push_back(labels_arr_i_QString);
	}
	self->setHorizontalHeaderLabels(labels_QList);
}

void QStandardItemModel_setVerticalHeaderLabels(QStandardItemModel* self, struct miqt_array /* of struct miqt_string */  labels) {
	QStringList labels_QList;
	labels_QList.reserve(labels.len);
	struct miqt_string* labels_arr = static_cast<struct miqt_string*>(labels.data);
	for(size_t i = 0; i < labels.len; ++i) {
		QString labels_arr_i_QString = QString::fromUtf8(labels_arr[i].data, labels_arr[i].len);
		labels_QList.push_back(labels_arr_i_QString);
	}
	self->setVerticalHeaderLabels(labels_QList);
}

void QStandardItemModel_setRowCount(QStandardItemModel* self, int rows) {
	self->setRowCount(static_cast<int>(rows));
}

void QStandardItemModel_setColumnCount(QStandardItemModel* self, int columns) {
	self->setColumnCount(static_cast<int>(columns));
}

void QStandardItemModel_appendRow(QStandardItemModel* self, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->appendRow(items_QList);
}

void QStandardItemModel_appendColumn(QStandardItemModel* self, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->appendColumn(items_QList);
}

void QStandardItemModel_appendRowWithItem(QStandardItemModel* self, QStandardItem* item) {
	self->appendRow(item);
}

void QStandardItemModel_insertRow(QStandardItemModel* self, int row, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->insertRow(static_cast<int>(row), items_QList);
}

void QStandardItemModel_insertColumn(QStandardItemModel* self, int column, struct miqt_array /* of QStandardItem* */  items) {
	QList<QStandardItem *> items_QList;
	items_QList.reserve(items.len);
	QStandardItem** items_arr = static_cast<QStandardItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->insertColumn(static_cast<int>(column), items_QList);
}

void QStandardItemModel_insertRow2(QStandardItemModel* self, int row, QStandardItem* item) {
	self->insertRow(static_cast<int>(row), item);
}

bool QStandardItemModel_insertRowWithRow(QStandardItemModel* self, int row) {
	return self->insertRow(static_cast<int>(row));
}

bool QStandardItemModel_insertColumnWithColumn(QStandardItemModel* self, int column) {
	return self->insertColumn(static_cast<int>(column));
}

QStandardItem* QStandardItemModel_takeItem(QStandardItemModel* self, int row) {
	return self->takeItem(static_cast<int>(row));
}

struct miqt_array /* of QStandardItem* */  QStandardItemModel_takeRow(QStandardItemModel* self, int row) {
	QList<QStandardItem *> _ret = self->takeRow(static_cast<int>(row));
	// Convert QList<> from C++ memory to manually-managed C memory
	QStandardItem** _arr = static_cast<QStandardItem**>(malloc(sizeof(QStandardItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QStandardItem* */  QStandardItemModel_takeColumn(QStandardItemModel* self, int column) {
	QList<QStandardItem *> _ret = self->takeColumn(static_cast<int>(column));
	// Convert QList<> from C++ memory to manually-managed C memory
	QStandardItem** _arr = static_cast<QStandardItem**>(malloc(sizeof(QStandardItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QStandardItem* QStandardItemModel_takeHorizontalHeaderItem(QStandardItemModel* self, int column) {
	return self->takeHorizontalHeaderItem(static_cast<int>(column));
}

QStandardItem* QStandardItemModel_takeVerticalHeaderItem(QStandardItemModel* self, int row) {
	return self->takeVerticalHeaderItem(static_cast<int>(row));
}

QStandardItem* QStandardItemModel_itemPrototype(const QStandardItemModel* self) {
	return (QStandardItem*) self->itemPrototype();
}

void QStandardItemModel_setItemPrototype(QStandardItemModel* self, QStandardItem* item) {
	self->setItemPrototype(item);
}

struct miqt_array /* of QStandardItem* */  QStandardItemModel_findItems(const QStandardItemModel* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QStandardItem *> _ret = self->findItems(text_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	QStandardItem** _arr = static_cast<QStandardItem**>(malloc(sizeof(QStandardItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QStandardItemModel_sortRole(const QStandardItemModel* self) {
	return self->sortRole();
}

void QStandardItemModel_setSortRole(QStandardItemModel* self, int role) {
	self->setSortRole(static_cast<int>(role));
}

struct miqt_array /* of struct miqt_string */  QStandardItemModel_mimeTypes(const QStandardItemModel* self) {
	QStringList _ret = self->mimeTypes();
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

QMimeData* QStandardItemModel_mimeData(const QStandardItemModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

bool QStandardItemModel_dropMimeData(QStandardItemModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

void QStandardItemModel_itemChanged(QStandardItemModel* self, QStandardItem* item) {
	self->itemChanged(item);
}

void QStandardItemModel_connect_itemChanged(QStandardItemModel* self, intptr_t slot, void (*callback)(intptr_t, QStandardItem*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QStandardItem*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QStandardItem*);
		void operator()(QStandardItem* item) {
			QStandardItem* sigval1 = item;
			callback(slot, sigval1);
		}
	};
	VirtualQStandardItemModel::connect(self, static_cast<void (QStandardItemModel::*)(QStandardItem*)>(&QStandardItemModel::itemChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QStandardItemModel_tr2(const char* s, const char* c) {
	QString _ret = QStandardItemModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStandardItemModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QStandardItemModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QStandardItem* QStandardItemModel_item2(const QStandardItemModel* self, int row, int column) {
	return self->item(static_cast<int>(row), static_cast<int>(column));
}

bool QStandardItemModel_insertRow22(QStandardItemModel* self, int row, QModelIndex* parent) {
	return self->insertRow(static_cast<int>(row), *parent);
}

bool QStandardItemModel_insertColumn2(QStandardItemModel* self, int column, QModelIndex* parent) {
	return self->insertColumn(static_cast<int>(column), *parent);
}

QStandardItem* QStandardItemModel_takeItem2(QStandardItemModel* self, int row, int column) {
	return self->takeItem(static_cast<int>(row), static_cast<int>(column));
}

struct miqt_array /* of QStandardItem* */  QStandardItemModel_findItems2(const QStandardItemModel* self, struct miqt_string text, int flags) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QStandardItem *> _ret = self->findItems(text_QString, static_cast<Qt::MatchFlags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	QStandardItem** _arr = static_cast<QStandardItem**>(malloc(sizeof(QStandardItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QStandardItem* */  QStandardItemModel_findItems3(const QStandardItemModel* self, struct miqt_string text, int flags, int column) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QStandardItem *> _ret = self->findItems(text_QString, static_cast<Qt::MatchFlags>(flags), static_cast<int>(column));
	// Convert QList<> from C++ memory to manually-managed C memory
	QStandardItem** _arr = static_cast<QStandardItem**>(malloc(sizeof(QStandardItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMetaObject* QStandardItemModel_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::metaObject();

}

void* QStandardItemModel_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::qt_metacast(param1);

}

int QStandardItemModel_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

struct miqt_map /* of int to struct miqt_string */  QStandardItemModel_virtualbase_roleNames(const void* self) {

	QHash<int, QByteArray> _ret = ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::roleNames();
	// Convert QMap<> from C++ memory to manually-managed C memory
	int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
	struct miqt_string* _varr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = _itr->first;
		QByteArray _hashval_qb = _itr->second;
		struct miqt_string _hashval_ms;
		_hashval_ms.len = _hashval_qb.length();
		_hashval_ms.data = static_cast<char*>(malloc(_hashval_ms.len));
		memcpy(_hashval_ms.data, _hashval_qb.data(), _hashval_ms.len);
		_varr[_ctr] = _hashval_ms;
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;

}

QModelIndex* QStandardItemModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent) {

	return new QModelIndex(( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::index(static_cast<int>(row), static_cast<int>(column), *parent));

}

QModelIndex* QStandardItemModel_virtualbase_parent(const void* self, QModelIndex* child) {

	return new QModelIndex(( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::parent(*child));

}

int QStandardItemModel_virtualbase_rowCount(const void* self, QModelIndex* parent) {

	return ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::rowCount(*parent);

}

int QStandardItemModel_virtualbase_columnCount(const void* self, QModelIndex* parent) {

	return ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::columnCount(*parent);

}

bool QStandardItemModel_virtualbase_hasChildren(const void* self, QModelIndex* parent) {

	return ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::hasChildren(*parent);

}

QVariant* QStandardItemModel_virtualbase_data(const void* self, QModelIndex* index, int role) {

	return new QVariant(( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::data(*index, static_cast<int>(role)));

}

void QStandardItemModel_virtualbase_multiData(const void* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {

	( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::multiData(*index, *roleDataSpan);

}

bool QStandardItemModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::setData(*index, *value, static_cast<int>(role));

}

bool QStandardItemModel_virtualbase_clearItemData(void* self, QModelIndex* index) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::clearItemData(*index);

}

QVariant* QStandardItemModel_virtualbase_headerData(const void* self, int section, int orientation, int role) {

	return new QVariant(( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));

}

bool QStandardItemModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));

}

bool QStandardItemModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);

}

bool QStandardItemModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);

}

bool QStandardItemModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);

}

bool QStandardItemModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);

}

int QStandardItemModel_virtualbase_flags(const void* self, QModelIndex* index) {

	Qt::ItemFlags _ret = ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::flags(*index);
	return static_cast<int>(_ret);

}

int QStandardItemModel_virtualbase_supportedDropActions(const void* self) {

	Qt::DropActions _ret = ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::supportedDropActions();
	return static_cast<int>(_ret);

}

struct miqt_map /* of int to QVariant* */  QStandardItemModel_virtualbase_itemData(const void* self, QModelIndex* index) {

	QMap<int, QVariant> _ret = ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::itemData(*index);
	// Convert QMap<> from C++ memory to manually-managed C memory
	int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
	QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = _itr->first;
		_varr[_ctr] = new QVariant(_itr->second);
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;

}

bool QStandardItemModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::setItemData(*index, roles_QMap);

}

void QStandardItemModel_virtualbase_sort(void* self, int column, int order) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));

}

struct miqt_array /* of struct miqt_string */  QStandardItemModel_virtualbase_mimeTypes(const void* self) {

	QStringList _ret = ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::mimeTypes();
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

QMimeData* QStandardItemModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}

	return ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::mimeData(indexes_QList);

}

bool QStandardItemModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);

}

QModelIndex* QStandardItemModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx) {

	return new QModelIndex(( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));

}

bool QStandardItemModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {

	return ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);

}

int QStandardItemModel_virtualbase_supportedDragActions(const void* self) {

	Qt::DropActions _ret = ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::supportedDragActions();
	return static_cast<int>(_ret);

}

bool QStandardItemModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));

}

bool QStandardItemModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));

}

void QStandardItemModel_virtualbase_fetchMore(void* self, QModelIndex* parent) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::fetchMore(*parent);

}

bool QStandardItemModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent) {

	return ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::canFetchMore(*parent);

}

QModelIndex* QStandardItemModel_virtualbase_buddy(const void* self, QModelIndex* index) {

	return new QModelIndex(( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::buddy(*index));

}

struct miqt_array /* of QModelIndex* */  QStandardItemModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {

	QModelIndexList _ret = ( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QStandardItemModel_virtualbase_span(const void* self, QModelIndex* index) {

	return new QSize(( (const VirtualQStandardItemModel*)(self) )->QStandardItemModel::span(*index));

}

bool QStandardItemModel_virtualbase_submit(void* self) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::submit();

}

void QStandardItemModel_virtualbase_revert(void* self) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::revert();

}

void QStandardItemModel_virtualbase_resetInternalData(void* self) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::resetInternalData();

}

bool QStandardItemModel_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::event(event);

}

bool QStandardItemModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::eventFilter(watched, event);

}

void QStandardItemModel_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::timerEvent(event);

}

void QStandardItemModel_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::childEvent(event);

}

void QStandardItemModel_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::customEvent(event);

}

void QStandardItemModel_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::connectNotify(*signal);

}

void QStandardItemModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStandardItemModel*)(self) )->QStandardItemModel::disconnectNotify(*signal);

}

const QMetaObject* QStandardItemModel_staticMetaObject() { return &QStandardItemModel::staticMetaObject; }
QModelIndex* QStandardItemModel_protectedbase_createIndex(const void* self, int row, int column) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	return new QModelIndex(self_cast->createIndex(static_cast<int>(row), static_cast<int>(column)));

}

void QStandardItemModel_protectedbase_encodeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
			QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}

	self_cast->encodeData(indexes_QList, *stream);

}

bool QStandardItemModel_protectedbase_decodeData(void* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	return self_cast->decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);

}

void QStandardItemModel_protectedbase_beginInsertRows(void* self, QModelIndex* parent, int first, int last) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));

}

void QStandardItemModel_protectedbase_endInsertRows(void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->endInsertRows();

}

void QStandardItemModel_protectedbase_beginRemoveRows(void* self, QModelIndex* parent, int first, int last) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));

}

void QStandardItemModel_protectedbase_endRemoveRows(void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->endRemoveRows();

}

bool QStandardItemModel_protectedbase_beginMoveRows(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	return self_cast->beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));

}

void QStandardItemModel_protectedbase_endMoveRows(void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->endMoveRows();

}

void QStandardItemModel_protectedbase_beginInsertColumns(void* self, QModelIndex* parent, int first, int last) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));

}

void QStandardItemModel_protectedbase_endInsertColumns(void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->endInsertColumns();

}

void QStandardItemModel_protectedbase_beginRemoveColumns(void* self, QModelIndex* parent, int first, int last) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));

}

void QStandardItemModel_protectedbase_endRemoveColumns(void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->endRemoveColumns();

}

bool QStandardItemModel_protectedbase_beginMoveColumns(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	return self_cast->beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));

}

void QStandardItemModel_protectedbase_endMoveColumns(void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->endMoveColumns();

}

void QStandardItemModel_protectedbase_beginResetModel(void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->beginResetModel();

}

void QStandardItemModel_protectedbase_endResetModel(void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->endResetModel();

}

void QStandardItemModel_protectedbase_changePersistentIndex(void* self, QModelIndex* from, QModelIndex* to) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	self_cast->changePersistentIndex(*from, *to);

}

void QStandardItemModel_protectedbase_changePersistentIndexList(void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
			QModelIndexList from_QList;
		from_QList.reserve(from.len);
		QModelIndex** from_arr = static_cast<QModelIndex**>(from.data);
		for(size_t i = 0; i < from.len; ++i) {
			from_QList.push_back(*(from_arr[i]));
		}
		QModelIndexList to_QList;
		to_QList.reserve(to.len);
		QModelIndex** to_arr = static_cast<QModelIndex**>(to.data);
		for(size_t i = 0; i < to.len; ++i) {
			to_QList.push_back(*(to_arr[i]));
		}

	self_cast->changePersistentIndexList(from_QList, to_QList);

}

struct miqt_array /* of QModelIndex* */  QStandardItemModel_protectedbase_persistentIndexList(const void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	QModelIndexList _ret = self_cast->persistentIndexList();
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

QObject* QStandardItemModel_protectedbase_sender(const void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	return self_cast->sender();

}

int QStandardItemModel_protectedbase_senderSignalIndex(const void* self) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QStandardItemModel_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	return self_cast->receivers(signal);

}

bool QStandardItemModel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQStandardItemModel* self_cast = static_cast<VirtualQStandardItemModel*>( (QStandardItemModel*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QStandardItemModel_delete(QStandardItemModel* self) {
	delete self;
}

