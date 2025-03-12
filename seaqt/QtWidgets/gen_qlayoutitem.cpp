#include <QLayout>
#include <QLayoutItem>
#include <QRect>
#include <QSize>
#include <QSizePolicy>
#include <QSpacerItem>
#include <QWidget>
#include <QWidgetItem>
#include <QWidgetItemV2>
#include <qlayoutitem.h>
#include "gen_qlayoutitem.h"
class VirtualQLayoutItem final : public QLayoutItem {
	const QLayoutItem_VTable* vtbl;
	void* vdata;
public:
	friend const QLayoutItem_VTable* QLayoutItem_vtbl(const VirtualQLayoutItem* self);
	friend void* QLayoutItem_vdata(const VirtualQLayoutItem* self);
	friend void QLayoutItem_setVdata(VirtualQLayoutItem* self, void* vdata);

	VirtualQLayoutItem(const QLayoutItem_VTable* vtbl, void* vdata): QLayoutItem(), vtbl(vtbl), vdata(vdata) {}
	VirtualQLayoutItem(const QLayoutItem_VTable* vtbl, void* vdata, const QLayoutItem& param1): QLayoutItem(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQLayoutItem(const QLayoutItem_VTable* vtbl, void* vdata, Qt::Alignment alignment): QLayoutItem(alignment), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQLayoutItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return Qt::Orientations(); // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QRect(); // Pure virtual, there is no base we can call
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLayoutItem::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QLayoutItem_virtualbase_hasHeightForWidth(const VirtualQLayoutItem* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLayoutItem::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLayoutItem_virtualbase_heightForWidth(const VirtualQLayoutItem* self, int param1);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QLayoutItem::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLayoutItem_virtualbase_minimumHeightForWidth(const VirtualQLayoutItem* self, int param1);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QLayoutItem::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QLayoutItem_virtualbase_invalidate(VirtualQLayoutItem* self);

	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QLayoutItem::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QLayoutItem_virtualbase_widget(const VirtualQLayoutItem* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QLayoutItem::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QLayoutItem_virtualbase_layout(VirtualQLayoutItem* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QLayoutItem::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QLayoutItem_virtualbase_spacerItem(VirtualQLayoutItem* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QLayoutItem::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QLayoutItem_virtualbase_controlTypes(const VirtualQLayoutItem* self);

};

VirtualQLayoutItem* QLayoutItem_new(const QLayoutItem_VTable* vtbl, void* vdata) {
	return new VirtualQLayoutItem(vtbl, vdata);
}

VirtualQLayoutItem* QLayoutItem_new2(const QLayoutItem_VTable* vtbl, void* vdata, QLayoutItem* param1) {
	return new VirtualQLayoutItem(vtbl, vdata, *param1);
}

VirtualQLayoutItem* QLayoutItem_new3(const QLayoutItem_VTable* vtbl, void* vdata, int alignment) {
	return new VirtualQLayoutItem(vtbl, vdata, static_cast<Qt::Alignment>(alignment));
}

QSize* QLayoutItem_sizeHint(const QLayoutItem* self) {
	return new QSize(self->sizeHint());
}

QSize* QLayoutItem_minimumSize(const QLayoutItem* self) {
	return new QSize(self->minimumSize());
}

QSize* QLayoutItem_maximumSize(const QLayoutItem* self) {
	return new QSize(self->maximumSize());
}

int QLayoutItem_expandingDirections(const QLayoutItem* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

void QLayoutItem_setGeometry(QLayoutItem* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

QRect* QLayoutItem_geometry(const QLayoutItem* self) {
	return new QRect(self->geometry());
}

bool QLayoutItem_isEmpty(const QLayoutItem* self) {
	return self->isEmpty();
}

bool QLayoutItem_hasHeightForWidth(const QLayoutItem* self) {
	return self->hasHeightForWidth();
}

int QLayoutItem_heightForWidth(const QLayoutItem* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

int QLayoutItem_minimumHeightForWidth(const QLayoutItem* self, int param1) {
	return self->minimumHeightForWidth(static_cast<int>(param1));
}

void QLayoutItem_invalidate(QLayoutItem* self) {
	self->invalidate();
}

QWidget* QLayoutItem_widget(const QLayoutItem* self) {
	return self->widget();
}

QLayout* QLayoutItem_layout(QLayoutItem* self) {
	return self->layout();
}

QSpacerItem* QLayoutItem_spacerItem(QLayoutItem* self) {
	return self->spacerItem();
}

int QLayoutItem_alignment(const QLayoutItem* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QLayoutItem_setAlignment(QLayoutItem* self, int a) {
	self->setAlignment(static_cast<Qt::Alignment>(a));
}

int QLayoutItem_controlTypes(const QLayoutItem* self) {
	QSizePolicy::ControlTypes _ret = self->controlTypes();
	return static_cast<int>(_ret);
}

bool QLayoutItem_virtualbase_hasHeightForWidth(const VirtualQLayoutItem* self) {

	return self->QLayoutItem::hasHeightForWidth();
}

int QLayoutItem_virtualbase_heightForWidth(const VirtualQLayoutItem* self, int param1) {

	return self->QLayoutItem::heightForWidth(static_cast<int>(param1));
}

int QLayoutItem_virtualbase_minimumHeightForWidth(const VirtualQLayoutItem* self, int param1) {

	return self->QLayoutItem::minimumHeightForWidth(static_cast<int>(param1));
}

void QLayoutItem_virtualbase_invalidate(VirtualQLayoutItem* self) {

	self->QLayoutItem::invalidate();
}

QWidget* QLayoutItem_virtualbase_widget(const VirtualQLayoutItem* self) {

	return self->QLayoutItem::widget();
}

QLayout* QLayoutItem_virtualbase_layout(VirtualQLayoutItem* self) {

	return self->QLayoutItem::layout();
}

QSpacerItem* QLayoutItem_virtualbase_spacerItem(VirtualQLayoutItem* self) {

	return self->QLayoutItem::spacerItem();
}

int QLayoutItem_virtualbase_controlTypes(const VirtualQLayoutItem* self) {

	QSizePolicy::ControlTypes _ret = self->QLayoutItem::controlTypes();
	return static_cast<int>(_ret);
}

const QLayoutItem_VTable* QLayoutItem_vtbl(const VirtualQLayoutItem* self) { return self->vtbl; }
void* QLayoutItem_vdata(const VirtualQLayoutItem* self) { return self->vdata; }
void QLayoutItem_setVdata(VirtualQLayoutItem* self, void* vdata) { self->vdata = vdata; }

void QLayoutItem_delete(QLayoutItem* self) {
	delete self;
}

class VirtualQSpacerItem final : public QSpacerItem {
	const QSpacerItem_VTable* vtbl;
	void* vdata;
public:
	friend const QSpacerItem_VTable* QSpacerItem_vtbl(const VirtualQSpacerItem* self);
	friend void* QSpacerItem_vdata(const VirtualQSpacerItem* self);
	friend void QSpacerItem_setVdata(VirtualQSpacerItem* self, void* vdata);

	VirtualQSpacerItem(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h): QSpacerItem(w, h), vtbl(vtbl), vdata(vdata) {}
	VirtualQSpacerItem(const QSpacerItem_VTable* vtbl, void* vdata, const QSpacerItem& param1): QSpacerItem(param1), vtbl(vtbl), vdata(vdata) {}
	VirtualQSpacerItem(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h, QSizePolicy::Policy hData): QSpacerItem(w, h, hData), vtbl(vtbl), vdata(vdata) {}
	VirtualQSpacerItem(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h, QSizePolicy::Policy hData, QSizePolicy::Policy vData): QSpacerItem(w, h, hData, vData), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSpacerItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSpacerItem::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSpacerItem_virtualbase_sizeHint(const VirtualQSpacerItem* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QSpacerItem::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSpacerItem_virtualbase_minimumSize(const VirtualQSpacerItem* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QSpacerItem::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSpacerItem_virtualbase_maximumSize(const VirtualQSpacerItem* self);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QSpacerItem::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QSpacerItem_virtualbase_expandingDirections(const VirtualQSpacerItem* self);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QSpacerItem::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QSpacerItem_virtualbase_isEmpty(const VirtualQSpacerItem* self);

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QSpacerItem::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QSpacerItem_virtualbase_setGeometry(VirtualQSpacerItem* self, QRect* geometry);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QSpacerItem::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QSpacerItem_virtualbase_geometry(const VirtualQSpacerItem* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QSpacerItem::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QSpacerItem_virtualbase_spacerItem(VirtualQSpacerItem* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSpacerItem::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QSpacerItem_virtualbase_hasHeightForWidth(const VirtualQSpacerItem* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSpacerItem::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpacerItem_virtualbase_heightForWidth(const VirtualQSpacerItem* self, int param1);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QSpacerItem::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSpacerItem_virtualbase_minimumHeightForWidth(const VirtualQSpacerItem* self, int param1);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QSpacerItem::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QSpacerItem_virtualbase_invalidate(VirtualQSpacerItem* self);

	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QSpacerItem::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QSpacerItem_virtualbase_widget(const VirtualQSpacerItem* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QSpacerItem::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QSpacerItem_virtualbase_layout(VirtualQSpacerItem* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QSpacerItem::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QSpacerItem_virtualbase_controlTypes(const VirtualQSpacerItem* self);

};

VirtualQSpacerItem* QSpacerItem_new(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h) {
	return new VirtualQSpacerItem(vtbl, vdata, static_cast<int>(w), static_cast<int>(h));
}

VirtualQSpacerItem* QSpacerItem_new2(const QSpacerItem_VTable* vtbl, void* vdata, QSpacerItem* param1) {
	return new VirtualQSpacerItem(vtbl, vdata, *param1);
}

VirtualQSpacerItem* QSpacerItem_new3(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h, int hData) {
	return new VirtualQSpacerItem(vtbl, vdata, static_cast<int>(w), static_cast<int>(h), static_cast<QSizePolicy::Policy>(hData));
}

VirtualQSpacerItem* QSpacerItem_new4(const QSpacerItem_VTable* vtbl, void* vdata, int w, int h, int hData, int vData) {
	return new VirtualQSpacerItem(vtbl, vdata, static_cast<int>(w), static_cast<int>(h), static_cast<QSizePolicy::Policy>(hData), static_cast<QSizePolicy::Policy>(vData));
}

void QSpacerItem_virtbase(QSpacerItem* src, QLayoutItem** outptr_QLayoutItem) {
	*outptr_QLayoutItem = static_cast<QLayoutItem*>(src);
}

void QSpacerItem_changeSize(QSpacerItem* self, int w, int h) {
	self->changeSize(static_cast<int>(w), static_cast<int>(h));
}

QSize* QSpacerItem_sizeHint(const QSpacerItem* self) {
	return new QSize(self->sizeHint());
}

QSize* QSpacerItem_minimumSize(const QSpacerItem* self) {
	return new QSize(self->minimumSize());
}

QSize* QSpacerItem_maximumSize(const QSpacerItem* self) {
	return new QSize(self->maximumSize());
}

int QSpacerItem_expandingDirections(const QSpacerItem* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

bool QSpacerItem_isEmpty(const QSpacerItem* self) {
	return self->isEmpty();
}

void QSpacerItem_setGeometry(QSpacerItem* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

QRect* QSpacerItem_geometry(const QSpacerItem* self) {
	return new QRect(self->geometry());
}

QSpacerItem* QSpacerItem_spacerItem(QSpacerItem* self) {
	return self->spacerItem();
}

QSizePolicy* QSpacerItem_sizePolicy(const QSpacerItem* self) {
	return new QSizePolicy(self->sizePolicy());
}

void QSpacerItem_changeSize3(QSpacerItem* self, int w, int h, int hData) {
	self->changeSize(static_cast<int>(w), static_cast<int>(h), static_cast<QSizePolicy::Policy>(hData));
}

void QSpacerItem_changeSize4(QSpacerItem* self, int w, int h, int hData, int vData) {
	self->changeSize(static_cast<int>(w), static_cast<int>(h), static_cast<QSizePolicy::Policy>(hData), static_cast<QSizePolicy::Policy>(vData));
}

QSize* QSpacerItem_virtualbase_sizeHint(const VirtualQSpacerItem* self) {

	return new QSize(self->QSpacerItem::sizeHint());
}

QSize* QSpacerItem_virtualbase_minimumSize(const VirtualQSpacerItem* self) {

	return new QSize(self->QSpacerItem::minimumSize());
}

QSize* QSpacerItem_virtualbase_maximumSize(const VirtualQSpacerItem* self) {

	return new QSize(self->QSpacerItem::maximumSize());
}

int QSpacerItem_virtualbase_expandingDirections(const VirtualQSpacerItem* self) {

	Qt::Orientations _ret = self->QSpacerItem::expandingDirections();
	return static_cast<int>(_ret);
}

bool QSpacerItem_virtualbase_isEmpty(const VirtualQSpacerItem* self) {

	return self->QSpacerItem::isEmpty();
}

void QSpacerItem_virtualbase_setGeometry(VirtualQSpacerItem* self, QRect* geometry) {

	self->QSpacerItem::setGeometry(*geometry);
}

QRect* QSpacerItem_virtualbase_geometry(const VirtualQSpacerItem* self) {

	return new QRect(self->QSpacerItem::geometry());
}

QSpacerItem* QSpacerItem_virtualbase_spacerItem(VirtualQSpacerItem* self) {

	return self->QSpacerItem::spacerItem();
}

bool QSpacerItem_virtualbase_hasHeightForWidth(const VirtualQSpacerItem* self) {

	return self->QSpacerItem::hasHeightForWidth();
}

int QSpacerItem_virtualbase_heightForWidth(const VirtualQSpacerItem* self, int param1) {

	return self->QSpacerItem::heightForWidth(static_cast<int>(param1));
}

int QSpacerItem_virtualbase_minimumHeightForWidth(const VirtualQSpacerItem* self, int param1) {

	return self->QSpacerItem::minimumHeightForWidth(static_cast<int>(param1));
}

void QSpacerItem_virtualbase_invalidate(VirtualQSpacerItem* self) {

	self->QSpacerItem::invalidate();
}

QWidget* QSpacerItem_virtualbase_widget(const VirtualQSpacerItem* self) {

	return self->QSpacerItem::widget();
}

QLayout* QSpacerItem_virtualbase_layout(VirtualQSpacerItem* self) {

	return self->QSpacerItem::layout();
}

int QSpacerItem_virtualbase_controlTypes(const VirtualQSpacerItem* self) {

	QSizePolicy::ControlTypes _ret = self->QSpacerItem::controlTypes();
	return static_cast<int>(_ret);
}

const QSpacerItem_VTable* QSpacerItem_vtbl(const VirtualQSpacerItem* self) { return self->vtbl; }
void* QSpacerItem_vdata(const VirtualQSpacerItem* self) { return self->vdata; }
void QSpacerItem_setVdata(VirtualQSpacerItem* self, void* vdata) { self->vdata = vdata; }

void QSpacerItem_delete(QSpacerItem* self) {
	delete self;
}

class VirtualQWidgetItem final : public QWidgetItem {
	const QWidgetItem_VTable* vtbl;
	void* vdata;
public:
	friend const QWidgetItem_VTable* QWidgetItem_vtbl(const VirtualQWidgetItem* self);
	friend void* QWidgetItem_vdata(const VirtualQWidgetItem* self);
	friend void QWidgetItem_setVdata(VirtualQWidgetItem* self, void* vdata);

	VirtualQWidgetItem(const QWidgetItem_VTable* vtbl, void* vdata, QWidget* w): QWidgetItem(w), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWidgetItem() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWidgetItem::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWidgetItem_virtualbase_sizeHint(const VirtualQWidgetItem* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QWidgetItem::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWidgetItem_virtualbase_minimumSize(const VirtualQWidgetItem* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QWidgetItem::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWidgetItem_virtualbase_maximumSize(const VirtualQWidgetItem* self);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QWidgetItem::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QWidgetItem_virtualbase_expandingDirections(const VirtualQWidgetItem* self);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QWidgetItem::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QWidgetItem_virtualbase_isEmpty(const VirtualQWidgetItem* self);

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QWidgetItem::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QWidgetItem_virtualbase_setGeometry(VirtualQWidgetItem* self, QRect* geometry);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QWidgetItem::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QWidgetItem_virtualbase_geometry(const VirtualQWidgetItem* self);

	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QWidgetItem::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QWidgetItem_virtualbase_widget(const VirtualQWidgetItem* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWidgetItem::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QWidgetItem_virtualbase_hasHeightForWidth(const VirtualQWidgetItem* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWidgetItem::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidgetItem_virtualbase_heightForWidth(const VirtualQWidgetItem* self, int param1);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QWidgetItem::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidgetItem_virtualbase_minimumHeightForWidth(const VirtualQWidgetItem* self, int param1);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QWidgetItem::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QWidgetItem_virtualbase_controlTypes(const VirtualQWidgetItem* self);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QWidgetItem::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QWidgetItem_virtualbase_invalidate(VirtualQWidgetItem* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QWidgetItem::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QWidgetItem_virtualbase_layout(VirtualQWidgetItem* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QWidgetItem::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QWidgetItem_virtualbase_spacerItem(VirtualQWidgetItem* self);

};

VirtualQWidgetItem* QWidgetItem_new(const QWidgetItem_VTable* vtbl, void* vdata, QWidget* w) {
	return new VirtualQWidgetItem(vtbl, vdata, w);
}

void QWidgetItem_virtbase(QWidgetItem* src, QLayoutItem** outptr_QLayoutItem) {
	*outptr_QLayoutItem = static_cast<QLayoutItem*>(src);
}

QSize* QWidgetItem_sizeHint(const QWidgetItem* self) {
	return new QSize(self->sizeHint());
}

QSize* QWidgetItem_minimumSize(const QWidgetItem* self) {
	return new QSize(self->minimumSize());
}

QSize* QWidgetItem_maximumSize(const QWidgetItem* self) {
	return new QSize(self->maximumSize());
}

int QWidgetItem_expandingDirections(const QWidgetItem* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

bool QWidgetItem_isEmpty(const QWidgetItem* self) {
	return self->isEmpty();
}

void QWidgetItem_setGeometry(QWidgetItem* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

QRect* QWidgetItem_geometry(const QWidgetItem* self) {
	return new QRect(self->geometry());
}

QWidget* QWidgetItem_widget(const QWidgetItem* self) {
	return self->widget();
}

bool QWidgetItem_hasHeightForWidth(const QWidgetItem* self) {
	return self->hasHeightForWidth();
}

int QWidgetItem_heightForWidth(const QWidgetItem* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

int QWidgetItem_minimumHeightForWidth(const QWidgetItem* self, int param1) {
	return self->minimumHeightForWidth(static_cast<int>(param1));
}

int QWidgetItem_controlTypes(const QWidgetItem* self) {
	QSizePolicy::ControlTypes _ret = self->controlTypes();
	return static_cast<int>(_ret);
}

QSize* QWidgetItem_virtualbase_sizeHint(const VirtualQWidgetItem* self) {

	return new QSize(self->QWidgetItem::sizeHint());
}

QSize* QWidgetItem_virtualbase_minimumSize(const VirtualQWidgetItem* self) {

	return new QSize(self->QWidgetItem::minimumSize());
}

QSize* QWidgetItem_virtualbase_maximumSize(const VirtualQWidgetItem* self) {

	return new QSize(self->QWidgetItem::maximumSize());
}

int QWidgetItem_virtualbase_expandingDirections(const VirtualQWidgetItem* self) {

	Qt::Orientations _ret = self->QWidgetItem::expandingDirections();
	return static_cast<int>(_ret);
}

bool QWidgetItem_virtualbase_isEmpty(const VirtualQWidgetItem* self) {

	return self->QWidgetItem::isEmpty();
}

void QWidgetItem_virtualbase_setGeometry(VirtualQWidgetItem* self, QRect* geometry) {

	self->QWidgetItem::setGeometry(*geometry);
}

QRect* QWidgetItem_virtualbase_geometry(const VirtualQWidgetItem* self) {

	return new QRect(self->QWidgetItem::geometry());
}

QWidget* QWidgetItem_virtualbase_widget(const VirtualQWidgetItem* self) {

	return self->QWidgetItem::widget();
}

bool QWidgetItem_virtualbase_hasHeightForWidth(const VirtualQWidgetItem* self) {

	return self->QWidgetItem::hasHeightForWidth();
}

int QWidgetItem_virtualbase_heightForWidth(const VirtualQWidgetItem* self, int param1) {

	return self->QWidgetItem::heightForWidth(static_cast<int>(param1));
}

int QWidgetItem_virtualbase_minimumHeightForWidth(const VirtualQWidgetItem* self, int param1) {

	return self->QWidgetItem::minimumHeightForWidth(static_cast<int>(param1));
}

int QWidgetItem_virtualbase_controlTypes(const VirtualQWidgetItem* self) {

	QSizePolicy::ControlTypes _ret = self->QWidgetItem::controlTypes();
	return static_cast<int>(_ret);
}

void QWidgetItem_virtualbase_invalidate(VirtualQWidgetItem* self) {

	self->QWidgetItem::invalidate();
}

QLayout* QWidgetItem_virtualbase_layout(VirtualQWidgetItem* self) {

	return self->QWidgetItem::layout();
}

QSpacerItem* QWidgetItem_virtualbase_spacerItem(VirtualQWidgetItem* self) {

	return self->QWidgetItem::spacerItem();
}

const QWidgetItem_VTable* QWidgetItem_vtbl(const VirtualQWidgetItem* self) { return self->vtbl; }
void* QWidgetItem_vdata(const VirtualQWidgetItem* self) { return self->vdata; }
void QWidgetItem_setVdata(VirtualQWidgetItem* self, void* vdata) { self->vdata = vdata; }

void QWidgetItem_delete(QWidgetItem* self) {
	delete self;
}

class VirtualQWidgetItemV2 final : public QWidgetItemV2 {
	const QWidgetItemV2_VTable* vtbl;
	void* vdata;
public:
	friend const QWidgetItemV2_VTable* QWidgetItemV2_vtbl(const VirtualQWidgetItemV2* self);
	friend void* QWidgetItemV2_vdata(const VirtualQWidgetItemV2* self);
	friend void QWidgetItemV2_setVdata(VirtualQWidgetItemV2* self, void* vdata);

	VirtualQWidgetItemV2(const QWidgetItemV2_VTable* vtbl, void* vdata, QWidget* widget): QWidgetItemV2(widget), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWidgetItemV2() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWidgetItemV2::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWidgetItemV2_virtualbase_sizeHint(const VirtualQWidgetItemV2* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QWidgetItemV2::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWidgetItemV2_virtualbase_minimumSize(const VirtualQWidgetItemV2* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QWidgetItemV2::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWidgetItemV2_virtualbase_maximumSize(const VirtualQWidgetItemV2* self);

	virtual int heightForWidth(int width) const override {
		if (vtbl->heightForWidth == 0) {
			return QWidgetItemV2::heightForWidth(width);
		}

		int sigval1 = width;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidgetItemV2_virtualbase_heightForWidth(const VirtualQWidgetItemV2* self, int width);

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QWidgetItemV2::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QWidgetItemV2_virtualbase_expandingDirections(const VirtualQWidgetItemV2* self);

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QWidgetItemV2::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QWidgetItemV2_virtualbase_isEmpty(const VirtualQWidgetItemV2* self);

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QWidgetItemV2::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QWidgetItemV2_virtualbase_setGeometry(VirtualQWidgetItemV2* self, QRect* geometry);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QWidgetItemV2::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QWidgetItemV2_virtualbase_geometry(const VirtualQWidgetItemV2* self);

	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QWidgetItemV2::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QWidgetItemV2_virtualbase_widget(const VirtualQWidgetItemV2* self);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWidgetItemV2::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QWidgetItemV2_virtualbase_hasHeightForWidth(const VirtualQWidgetItemV2* self);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QWidgetItemV2::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWidgetItemV2_virtualbase_minimumHeightForWidth(const VirtualQWidgetItemV2* self, int param1);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QWidgetItemV2::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QWidgetItemV2_virtualbase_controlTypes(const VirtualQWidgetItemV2* self);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QWidgetItemV2::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QWidgetItemV2_virtualbase_invalidate(VirtualQWidgetItemV2* self);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QWidgetItemV2::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QWidgetItemV2_virtualbase_layout(VirtualQWidgetItemV2* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QWidgetItemV2::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QWidgetItemV2_virtualbase_spacerItem(VirtualQWidgetItemV2* self);

};

VirtualQWidgetItemV2* QWidgetItemV2_new(const QWidgetItemV2_VTable* vtbl, void* vdata, QWidget* widget) {
	return new VirtualQWidgetItemV2(vtbl, vdata, widget);
}

void QWidgetItemV2_virtbase(QWidgetItemV2* src, QWidgetItem** outptr_QWidgetItem) {
	*outptr_QWidgetItem = static_cast<QWidgetItem*>(src);
}

QSize* QWidgetItemV2_sizeHint(const QWidgetItemV2* self) {
	return new QSize(self->sizeHint());
}

QSize* QWidgetItemV2_minimumSize(const QWidgetItemV2* self) {
	return new QSize(self->minimumSize());
}

QSize* QWidgetItemV2_maximumSize(const QWidgetItemV2* self) {
	return new QSize(self->maximumSize());
}

int QWidgetItemV2_heightForWidth(const QWidgetItemV2* self, int width) {
	return self->heightForWidth(static_cast<int>(width));
}

QSize* QWidgetItemV2_virtualbase_sizeHint(const VirtualQWidgetItemV2* self) {

	return new QSize(self->QWidgetItemV2::sizeHint());
}

QSize* QWidgetItemV2_virtualbase_minimumSize(const VirtualQWidgetItemV2* self) {

	return new QSize(self->QWidgetItemV2::minimumSize());
}

QSize* QWidgetItemV2_virtualbase_maximumSize(const VirtualQWidgetItemV2* self) {

	return new QSize(self->QWidgetItemV2::maximumSize());
}

int QWidgetItemV2_virtualbase_heightForWidth(const VirtualQWidgetItemV2* self, int width) {

	return self->QWidgetItemV2::heightForWidth(static_cast<int>(width));
}

int QWidgetItemV2_virtualbase_expandingDirections(const VirtualQWidgetItemV2* self) {

	Qt::Orientations _ret = self->QWidgetItemV2::expandingDirections();
	return static_cast<int>(_ret);
}

bool QWidgetItemV2_virtualbase_isEmpty(const VirtualQWidgetItemV2* self) {

	return self->QWidgetItemV2::isEmpty();
}

void QWidgetItemV2_virtualbase_setGeometry(VirtualQWidgetItemV2* self, QRect* geometry) {

	self->QWidgetItemV2::setGeometry(*geometry);
}

QRect* QWidgetItemV2_virtualbase_geometry(const VirtualQWidgetItemV2* self) {

	return new QRect(self->QWidgetItemV2::geometry());
}

QWidget* QWidgetItemV2_virtualbase_widget(const VirtualQWidgetItemV2* self) {

	return self->QWidgetItemV2::widget();
}

bool QWidgetItemV2_virtualbase_hasHeightForWidth(const VirtualQWidgetItemV2* self) {

	return self->QWidgetItemV2::hasHeightForWidth();
}

int QWidgetItemV2_virtualbase_minimumHeightForWidth(const VirtualQWidgetItemV2* self, int param1) {

	return self->QWidgetItemV2::minimumHeightForWidth(static_cast<int>(param1));
}

int QWidgetItemV2_virtualbase_controlTypes(const VirtualQWidgetItemV2* self) {

	QSizePolicy::ControlTypes _ret = self->QWidgetItemV2::controlTypes();
	return static_cast<int>(_ret);
}

void QWidgetItemV2_virtualbase_invalidate(VirtualQWidgetItemV2* self) {

	self->QWidgetItemV2::invalidate();
}

QLayout* QWidgetItemV2_virtualbase_layout(VirtualQWidgetItemV2* self) {

	return self->QWidgetItemV2::layout();
}

QSpacerItem* QWidgetItemV2_virtualbase_spacerItem(VirtualQWidgetItemV2* self) {

	return self->QWidgetItemV2::spacerItem();
}

const QWidgetItemV2_VTable* QWidgetItemV2_vtbl(const VirtualQWidgetItemV2* self) { return self->vtbl; }
void* QWidgetItemV2_vdata(const VirtualQWidgetItemV2* self) { return self->vdata; }
void QWidgetItemV2_setVdata(VirtualQWidgetItemV2* self, void* vdata) { self->vdata = vdata; }

void QWidgetItemV2_delete(QWidgetItemV2* self) {
	delete self;
}

