#include <QChildEvent>
#include <QEvent>
#include <QFormLayout>
#define WORKAROUND_INNER_CLASS_DEFINITION_QFormLayout__TakeRowResult
#include <QLayout>
#include <QLayoutItem>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QSize>
#include <QSpacerItem>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <qformlayout.h>
#include "gen_qformlayout.h"
class VirtualQFormLayout final : public QFormLayout {
	const QFormLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QFormLayout_VTable* QFormLayout_vtbl(const VirtualQFormLayout* self);
	friend void* QFormLayout_vdata(const VirtualQFormLayout* self);
	friend void QFormLayout_setVdata(VirtualQFormLayout* self, void* vdata);

	VirtualQFormLayout(const QFormLayout_VTable* vtbl, void* vdata, QWidget* parent): QFormLayout(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQFormLayout(const QFormLayout_VTable* vtbl, void* vdata): QFormLayout(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQFormLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFormLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QFormLayout_virtualbase_metaObject(const VirtualQFormLayout* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFormLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QFormLayout_virtualbase_metacast(VirtualQFormLayout* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFormLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFormLayout_virtualbase_metacall(VirtualQFormLayout* self, int param1, int param2, void** param3);

	virtual int spacing() const override {
		if (vtbl->spacing == 0) {
			return QFormLayout::spacing();
		}


		int callback_return_value = vtbl->spacing(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFormLayout_virtualbase_spacing(const VirtualQFormLayout* self);

	virtual void setSpacing(int spacing) override {
		if (vtbl->setSpacing == 0) {
			QFormLayout::setSpacing(spacing);
			return;
		}

		int sigval1 = spacing;

		vtbl->setSpacing(this, sigval1);

	}

	friend void QFormLayout_virtualbase_setSpacing(VirtualQFormLayout* self, int spacing);

	virtual void addItem(QLayoutItem* item) override {
		if (vtbl->addItem == 0) {
			QFormLayout::addItem(item);
			return;
		}

		QLayoutItem* sigval1 = item;

		vtbl->addItem(this, sigval1);

	}

	friend void QFormLayout_virtualbase_addItem(VirtualQFormLayout* self, QLayoutItem* item);

	virtual QLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAtWithIndex == 0) {
			return QFormLayout::itemAt(index);
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->itemAtWithIndex(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QFormLayout_virtualbase_itemAtWithIndex(const VirtualQFormLayout* self, int index);

	virtual QLayoutItem* takeAt(int index) override {
		if (vtbl->takeAt == 0) {
			return QFormLayout::takeAt(index);
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->takeAt(this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QFormLayout_virtualbase_takeAt(VirtualQFormLayout* self, int index);

	virtual void setGeometry(const QRect& rect) override {
		if (vtbl->setGeometry == 0) {
			QFormLayout::setGeometry(rect);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QFormLayout_virtualbase_setGeometry(VirtualQFormLayout* self, QRect* rect);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QFormLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFormLayout_virtualbase_minimumSize(const VirtualQFormLayout* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFormLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFormLayout_virtualbase_sizeHint(const VirtualQFormLayout* self);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QFormLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QFormLayout_virtualbase_invalidate(VirtualQFormLayout* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFormLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QFormLayout_virtualbase_hasHeightForWidth(const VirtualQFormLayout* self);

	virtual int heightForWidth(int width) const override {
		if (vtbl->heightForWidth == 0) {
			return QFormLayout::heightForWidth(width);
		}

		int sigval1 = width;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFormLayout_virtualbase_heightForWidth(const VirtualQFormLayout* self, int width);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QFormLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QFormLayout_virtualbase_expandingDirections(const VirtualQFormLayout* self);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return QFormLayout::count();
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFormLayout_virtualbase_count(const VirtualQFormLayout* self);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QFormLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QFormLayout_virtualbase_geometry(const VirtualQFormLayout* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QFormLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QFormLayout_virtualbase_maximumSize(const VirtualQFormLayout* self);

	virtual int indexOf(const QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QFormLayout::indexOf(param1);
		}

		QWidget* sigval1 = (QWidget*) param1;

		int callback_return_value = vtbl->indexOf(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFormLayout_virtualbase_indexOf(const VirtualQFormLayout* self, QWidget* param1);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QFormLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QFormLayout_virtualbase_isEmpty(const VirtualQFormLayout* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QFormLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QFormLayout_virtualbase_controlTypes(const VirtualQFormLayout* self);

	virtual QLayoutItem* replaceWidget(QWidget* from, QWidget* to, Qt::FindChildOptions options) override {
		if (vtbl->replaceWidget == 0) {
			return QFormLayout::replaceWidget(from, to, options);
		}

		QWidget* sigval1 = from;
		QWidget* sigval2 = to;
		Qt::FindChildOptions options_ret = options;
		int sigval3 = static_cast<int>(options_ret);

		QLayoutItem* callback_return_value = vtbl->replaceWidget(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend QLayoutItem* QFormLayout_virtualbase_replaceWidget(VirtualQFormLayout* self, QWidget* from, QWidget* to, int options);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QFormLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QFormLayout_virtualbase_layout(VirtualQFormLayout* self);

	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QFormLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(this, sigval1);

	}

	friend void QFormLayout_virtualbase_childEvent(VirtualQFormLayout* self, QChildEvent* e);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFormLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QFormLayout_virtualbase_event(VirtualQFormLayout* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFormLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFormLayout_virtualbase_eventFilter(VirtualQFormLayout* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFormLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QFormLayout_virtualbase_timerEvent(VirtualQFormLayout* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFormLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QFormLayout_virtualbase_customEvent(VirtualQFormLayout* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFormLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QFormLayout_virtualbase_connectNotify(VirtualQFormLayout* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFormLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QFormLayout_virtualbase_disconnectNotify(VirtualQFormLayout* self, QMetaMethod* signal);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QFormLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFormLayout_virtualbase_minimumHeightForWidth(const VirtualQFormLayout* self, int param1);

	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QFormLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QFormLayout_virtualbase_widget(const VirtualQFormLayout* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QFormLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QFormLayout_virtualbase_spacerItem(VirtualQFormLayout* self);

	// Wrappers to allow calling protected methods:
	friend void QFormLayout_protectedbase_widgetEvent(VirtualQFormLayout* self, QEvent* param1);
	friend void QFormLayout_protectedbase_addChildLayout(VirtualQFormLayout* self, QLayout* l);
	friend void QFormLayout_protectedbase_addChildWidget(VirtualQFormLayout* self, QWidget* w);
	friend bool QFormLayout_protectedbase_adoptLayout(VirtualQFormLayout* self, QLayout* layout);
	friend QRect* QFormLayout_protectedbase_alignmentRect(const VirtualQFormLayout* self, QRect* param1);
	friend QObject* QFormLayout_protectedbase_sender(const VirtualQFormLayout* self);
	friend int QFormLayout_protectedbase_senderSignalIndex(const VirtualQFormLayout* self);
	friend int QFormLayout_protectedbase_receivers(const VirtualQFormLayout* self, const char* signal);
	friend bool QFormLayout_protectedbase_isSignalConnected(const VirtualQFormLayout* self, QMetaMethod* signal);
};

VirtualQFormLayout* QFormLayout_new(const QFormLayout_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQFormLayout(vtbl, vdata, parent);
}

VirtualQFormLayout* QFormLayout_new2(const QFormLayout_VTable* vtbl, void* vdata) {
	return new VirtualQFormLayout(vtbl, vdata);
}

void QFormLayout_virtbase(QFormLayout* src, QLayout** outptr_QLayout) {
	*outptr_QLayout = static_cast<QLayout*>(src);
}

QMetaObject* QFormLayout_metaObject(const QFormLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFormLayout_metacast(QFormLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFormLayout_metacall(QFormLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFormLayout_tr(const char* s) {
	QString _ret = QFormLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFormLayout_setFieldGrowthPolicy(QFormLayout* self, int policy) {
	self->setFieldGrowthPolicy(static_cast<QFormLayout::FieldGrowthPolicy>(policy));
}

int QFormLayout_fieldGrowthPolicy(const QFormLayout* self) {
	QFormLayout::FieldGrowthPolicy _ret = self->fieldGrowthPolicy();
	return static_cast<int>(_ret);
}

void QFormLayout_setRowWrapPolicy(QFormLayout* self, int policy) {
	self->setRowWrapPolicy(static_cast<QFormLayout::RowWrapPolicy>(policy));
}

int QFormLayout_rowWrapPolicy(const QFormLayout* self) {
	QFormLayout::RowWrapPolicy _ret = self->rowWrapPolicy();
	return static_cast<int>(_ret);
}

void QFormLayout_setLabelAlignment(QFormLayout* self, int alignment) {
	self->setLabelAlignment(static_cast<Qt::Alignment>(alignment));
}

int QFormLayout_labelAlignment(const QFormLayout* self) {
	Qt::Alignment _ret = self->labelAlignment();
	return static_cast<int>(_ret);
}

void QFormLayout_setFormAlignment(QFormLayout* self, int alignment) {
	self->setFormAlignment(static_cast<Qt::Alignment>(alignment));
}

int QFormLayout_formAlignment(const QFormLayout* self) {
	Qt::Alignment _ret = self->formAlignment();
	return static_cast<int>(_ret);
}

void QFormLayout_setHorizontalSpacing(QFormLayout* self, int spacing) {
	self->setHorizontalSpacing(static_cast<int>(spacing));
}

int QFormLayout_horizontalSpacing(const QFormLayout* self) {
	return self->horizontalSpacing();
}

void QFormLayout_setVerticalSpacing(QFormLayout* self, int spacing) {
	self->setVerticalSpacing(static_cast<int>(spacing));
}

int QFormLayout_verticalSpacing(const QFormLayout* self) {
	return self->verticalSpacing();
}

int QFormLayout_spacing(const QFormLayout* self) {
	return self->spacing();
}

void QFormLayout_setSpacing(QFormLayout* self, int spacing) {
	self->setSpacing(static_cast<int>(spacing));
}

void QFormLayout_addRow(QFormLayout* self, QWidget* label, QWidget* field) {
	self->addRow(label, field);
}

void QFormLayout_addRow2(QFormLayout* self, QWidget* label, QLayout* field) {
	self->addRow(label, field);
}

void QFormLayout_addRow3(QFormLayout* self, struct miqt_string labelText, QWidget* field) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	self->addRow(labelText_QString, field);
}

void QFormLayout_addRow4(QFormLayout* self, struct miqt_string labelText, QLayout* field) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	self->addRow(labelText_QString, field);
}

void QFormLayout_addRowWithWidget(QFormLayout* self, QWidget* widget) {
	self->addRow(widget);
}

void QFormLayout_addRowWithLayout(QFormLayout* self, QLayout* layout) {
	self->addRow(layout);
}

void QFormLayout_insertRow(QFormLayout* self, int row, QWidget* label, QWidget* field) {
	self->insertRow(static_cast<int>(row), label, field);
}

void QFormLayout_insertRow2(QFormLayout* self, int row, QWidget* label, QLayout* field) {
	self->insertRow(static_cast<int>(row), label, field);
}

void QFormLayout_insertRow3(QFormLayout* self, int row, struct miqt_string labelText, QWidget* field) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	self->insertRow(static_cast<int>(row), labelText_QString, field);
}

void QFormLayout_insertRow4(QFormLayout* self, int row, struct miqt_string labelText, QLayout* field) {
	QString labelText_QString = QString::fromUtf8(labelText.data, labelText.len);
	self->insertRow(static_cast<int>(row), labelText_QString, field);
}

void QFormLayout_insertRow5(QFormLayout* self, int row, QWidget* widget) {
	self->insertRow(static_cast<int>(row), widget);
}

void QFormLayout_insertRow6(QFormLayout* self, int row, QLayout* layout) {
	self->insertRow(static_cast<int>(row), layout);
}

void QFormLayout_removeRow(QFormLayout* self, int row) {
	self->removeRow(static_cast<int>(row));
}

void QFormLayout_removeRowWithWidget(QFormLayout* self, QWidget* widget) {
	self->removeRow(widget);
}

void QFormLayout_removeRowWithLayout(QFormLayout* self, QLayout* layout) {
	self->removeRow(layout);
}

QFormLayout__TakeRowResult* QFormLayout_takeRow(QFormLayout* self, int row) {
	return new QFormLayout::TakeRowResult(self->takeRow(static_cast<int>(row)));
}

QFormLayout__TakeRowResult* QFormLayout_takeRowWithWidget(QFormLayout* self, QWidget* widget) {
	return new QFormLayout::TakeRowResult(self->takeRow(widget));
}

QFormLayout__TakeRowResult* QFormLayout_takeRowWithLayout(QFormLayout* self, QLayout* layout) {
	return new QFormLayout::TakeRowResult(self->takeRow(layout));
}

void QFormLayout_setItem(QFormLayout* self, int row, int role, QLayoutItem* item) {
	self->setItem(static_cast<int>(row), static_cast<QFormLayout::ItemRole>(role), item);
}

void QFormLayout_setWidget(QFormLayout* self, int row, int role, QWidget* widget) {
	self->setWidget(static_cast<int>(row), static_cast<QFormLayout::ItemRole>(role), widget);
}

void QFormLayout_setLayout(QFormLayout* self, int row, int role, QLayout* layout) {
	self->setLayout(static_cast<int>(row), static_cast<QFormLayout::ItemRole>(role), layout);
}

void QFormLayout_setRowVisible(QFormLayout* self, int row, bool on) {
	self->setRowVisible(static_cast<int>(row), on);
}

void QFormLayout_setRowVisible2(QFormLayout* self, QWidget* widget, bool on) {
	self->setRowVisible(widget, on);
}

void QFormLayout_setRowVisible3(QFormLayout* self, QLayout* layout, bool on) {
	self->setRowVisible(layout, on);
}

bool QFormLayout_isRowVisible(const QFormLayout* self, int row) {
	return self->isRowVisible(static_cast<int>(row));
}

bool QFormLayout_isRowVisibleWithWidget(const QFormLayout* self, QWidget* widget) {
	return self->isRowVisible(widget);
}

bool QFormLayout_isRowVisibleWithLayout(const QFormLayout* self, QLayout* layout) {
	return self->isRowVisible(layout);
}

QLayoutItem* QFormLayout_itemAt(const QFormLayout* self, int row, int role) {
	return self->itemAt(static_cast<int>(row), static_cast<QFormLayout::ItemRole>(role));
}

QWidget* QFormLayout_labelForField(const QFormLayout* self, QWidget* field) {
	return self->labelForField(field);
}

QWidget* QFormLayout_labelForFieldWithField(const QFormLayout* self, QLayout* field) {
	return self->labelForField(field);
}

void QFormLayout_addItem(QFormLayout* self, QLayoutItem* item) {
	self->addItem(item);
}

QLayoutItem* QFormLayout_itemAtWithIndex(const QFormLayout* self, int index) {
	return self->itemAt(static_cast<int>(index));
}

QLayoutItem* QFormLayout_takeAt(QFormLayout* self, int index) {
	return self->takeAt(static_cast<int>(index));
}

void QFormLayout_setGeometry(QFormLayout* self, QRect* rect) {
	self->setGeometry(*rect);
}

QSize* QFormLayout_minimumSize(const QFormLayout* self) {
	return new QSize(self->minimumSize());
}

QSize* QFormLayout_sizeHint(const QFormLayout* self) {
	return new QSize(self->sizeHint());
}

void QFormLayout_invalidate(QFormLayout* self) {
	self->invalidate();
}

bool QFormLayout_hasHeightForWidth(const QFormLayout* self) {
	return self->hasHeightForWidth();
}

int QFormLayout_heightForWidth(const QFormLayout* self, int width) {
	return self->heightForWidth(static_cast<int>(width));
}

int QFormLayout_expandingDirections(const QFormLayout* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

int QFormLayout_count(const QFormLayout* self) {
	return self->count();
}

int QFormLayout_rowCount(const QFormLayout* self) {
	return self->rowCount();
}

struct miqt_string QFormLayout_tr2(const char* s, const char* c) {
	QString _ret = QFormLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFormLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QFormLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFormLayout_virtualbase_metaObject(const VirtualQFormLayout* self) {

	return (QMetaObject*) self->QFormLayout::metaObject();
}

void* QFormLayout_virtualbase_metacast(VirtualQFormLayout* self, const char* param1) {

	return self->QFormLayout::qt_metacast(param1);
}

int QFormLayout_virtualbase_metacall(VirtualQFormLayout* self, int param1, int param2, void** param3) {

	return self->QFormLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QFormLayout_virtualbase_spacing(const VirtualQFormLayout* self) {

	return self->QFormLayout::spacing();
}

void QFormLayout_virtualbase_setSpacing(VirtualQFormLayout* self, int spacing) {

	self->QFormLayout::setSpacing(static_cast<int>(spacing));
}

void QFormLayout_virtualbase_addItem(VirtualQFormLayout* self, QLayoutItem* item) {

	self->QFormLayout::addItem(item);
}

QLayoutItem* QFormLayout_virtualbase_itemAtWithIndex(const VirtualQFormLayout* self, int index) {

	return self->QFormLayout::itemAt(static_cast<int>(index));
}

QLayoutItem* QFormLayout_virtualbase_takeAt(VirtualQFormLayout* self, int index) {

	return self->QFormLayout::takeAt(static_cast<int>(index));
}

void QFormLayout_virtualbase_setGeometry(VirtualQFormLayout* self, QRect* rect) {

	self->QFormLayout::setGeometry(*rect);
}

QSize* QFormLayout_virtualbase_minimumSize(const VirtualQFormLayout* self) {

	return new QSize(self->QFormLayout::minimumSize());
}

QSize* QFormLayout_virtualbase_sizeHint(const VirtualQFormLayout* self) {

	return new QSize(self->QFormLayout::sizeHint());
}

void QFormLayout_virtualbase_invalidate(VirtualQFormLayout* self) {

	self->QFormLayout::invalidate();
}

bool QFormLayout_virtualbase_hasHeightForWidth(const VirtualQFormLayout* self) {

	return self->QFormLayout::hasHeightForWidth();
}

int QFormLayout_virtualbase_heightForWidth(const VirtualQFormLayout* self, int width) {

	return self->QFormLayout::heightForWidth(static_cast<int>(width));
}

int QFormLayout_virtualbase_expandingDirections(const VirtualQFormLayout* self) {

	Qt::Orientations _ret = self->QFormLayout::expandingDirections();
	return static_cast<int>(_ret);
}

int QFormLayout_virtualbase_count(const VirtualQFormLayout* self) {

	return self->QFormLayout::count();
}

QRect* QFormLayout_virtualbase_geometry(const VirtualQFormLayout* self) {

	return new QRect(self->QFormLayout::geometry());
}

QSize* QFormLayout_virtualbase_maximumSize(const VirtualQFormLayout* self) {

	return new QSize(self->QFormLayout::maximumSize());
}

int QFormLayout_virtualbase_indexOf(const VirtualQFormLayout* self, QWidget* param1) {

	return self->QFormLayout::indexOf(param1);
}

bool QFormLayout_virtualbase_isEmpty(const VirtualQFormLayout* self) {

	return self->QFormLayout::isEmpty();
}

int QFormLayout_virtualbase_controlTypes(const VirtualQFormLayout* self) {

	QSizePolicy::ControlTypes _ret = self->QFormLayout::controlTypes();
	return static_cast<int>(_ret);
}

QLayoutItem* QFormLayout_virtualbase_replaceWidget(VirtualQFormLayout* self, QWidget* from, QWidget* to, int options) {

	return self->QFormLayout::replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));
}

QLayout* QFormLayout_virtualbase_layout(VirtualQFormLayout* self) {

	return self->QFormLayout::layout();
}

void QFormLayout_virtualbase_childEvent(VirtualQFormLayout* self, QChildEvent* e) {

	self->QFormLayout::childEvent(e);
}

bool QFormLayout_virtualbase_event(VirtualQFormLayout* self, QEvent* event) {

	return self->QFormLayout::event(event);
}

bool QFormLayout_virtualbase_eventFilter(VirtualQFormLayout* self, QObject* watched, QEvent* event) {

	return self->QFormLayout::eventFilter(watched, event);
}

void QFormLayout_virtualbase_timerEvent(VirtualQFormLayout* self, QTimerEvent* event) {

	self->QFormLayout::timerEvent(event);
}

void QFormLayout_virtualbase_customEvent(VirtualQFormLayout* self, QEvent* event) {

	self->QFormLayout::customEvent(event);
}

void QFormLayout_virtualbase_connectNotify(VirtualQFormLayout* self, QMetaMethod* signal) {

	self->QFormLayout::connectNotify(*signal);
}

void QFormLayout_virtualbase_disconnectNotify(VirtualQFormLayout* self, QMetaMethod* signal) {

	self->QFormLayout::disconnectNotify(*signal);
}

int QFormLayout_virtualbase_minimumHeightForWidth(const VirtualQFormLayout* self, int param1) {

	return self->QFormLayout::minimumHeightForWidth(static_cast<int>(param1));
}

QWidget* QFormLayout_virtualbase_widget(const VirtualQFormLayout* self) {

	return self->QFormLayout::widget();
}

QSpacerItem* QFormLayout_virtualbase_spacerItem(VirtualQFormLayout* self) {

	return self->QFormLayout::spacerItem();
}

const QMetaObject* QFormLayout_staticMetaObject() { return &QFormLayout::staticMetaObject; }

const QFormLayout_VTable* QFormLayout_vtbl(const VirtualQFormLayout* self) { return self->vtbl; }
void* QFormLayout_vdata(const VirtualQFormLayout* self) { return self->vdata; }
void QFormLayout_setVdata(VirtualQFormLayout* self, void* vdata) { self->vdata = vdata; }

void QFormLayout_protectedbase_widgetEvent(VirtualQFormLayout* self, QEvent* param1) {
	self->widgetEvent(param1);
}

void QFormLayout_protectedbase_addChildLayout(VirtualQFormLayout* self, QLayout* l) {
	self->addChildLayout(l);
}

void QFormLayout_protectedbase_addChildWidget(VirtualQFormLayout* self, QWidget* w) {
	self->addChildWidget(w);
}

bool QFormLayout_protectedbase_adoptLayout(VirtualQFormLayout* self, QLayout* layout) {
	return self->adoptLayout(layout);
}

QRect* QFormLayout_protectedbase_alignmentRect(const VirtualQFormLayout* self, QRect* param1) {
	return new QRect(self->alignmentRect(*param1));
}

QObject* QFormLayout_protectedbase_sender(const VirtualQFormLayout* self) {
	return self->sender();
}

int QFormLayout_protectedbase_senderSignalIndex(const VirtualQFormLayout* self) {
	return self->senderSignalIndex();
}

int QFormLayout_protectedbase_receivers(const VirtualQFormLayout* self, const char* signal) {
	return self->receivers(signal);
}

bool QFormLayout_protectedbase_isSignalConnected(const VirtualQFormLayout* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QFormLayout_delete(QFormLayout* self) {
	delete self;
}

void QFormLayout__TakeRowResult_delete(QFormLayout__TakeRowResult* self) {
	delete self;
}

