#include <QChildEvent>
#include <QEvent>
#include <QLayout>
#include <QLayoutItem>
#include <QMargins>
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
#include <qlayout.h>
#include "gen_qlayout.h"
class VirtualQLayout final : public QLayout {
	const QLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QLayout_VTable* QLayout_vtbl(const VirtualQLayout* self);
	friend void* QLayout_vdata(const VirtualQLayout* self);
	friend void QLayout_setVdata(VirtualQLayout* self, void* vdata);

	VirtualQLayout(const QLayout_VTable* vtbl, void* vdata, QWidget* parent): QLayout(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQLayout(const QLayout_VTable* vtbl, void* vdata): QLayout(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QLayout_virtualbase_metaObject(const VirtualQLayout* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QLayout_virtualbase_metacast(VirtualQLayout* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QLayout_virtualbase_metacall(VirtualQLayout* self, int param1, int param2, void** param3);

	virtual int spacing() const override {
		if (vtbl->spacing == 0) {
			return QLayout::spacing();
		}


		int callback_return_value = vtbl->spacing(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QLayout_virtualbase_spacing(const VirtualQLayout* self);

	virtual void setSpacing(int spacing) override {
		if (vtbl->setSpacing == 0) {
			QLayout::setSpacing(spacing);
			return;
		}

		int sigval1 = spacing;

		vtbl->setSpacing(this, sigval1);

	}

	friend void QLayout_virtualbase_setSpacing(VirtualQLayout* self, int spacing);

	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QLayout::invalidate();
			return;
		}


		vtbl->invalidate(this);

	}

	friend void QLayout_virtualbase_invalidate(VirtualQLayout* self);

	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRect* QLayout_virtualbase_geometry(const VirtualQLayout* self);

	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(this, sigval1);

	}

	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QLayout_virtualbase_expandingDirections(const VirtualQLayout* self);

	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QLayout_virtualbase_minimumSize(const VirtualQLayout* self);

	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QLayout_virtualbase_maximumSize(const VirtualQLayout* self);

	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(this, sigval1);

	}

	friend void QLayout_virtualbase_setGeometry(VirtualQLayout* self, QRect* geometry);

	virtual QLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAt == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->itemAt(this, sigval1);

		return callback_return_value;
	}

	virtual QLayoutItem* takeAt(int index) override {
		if (vtbl->takeAt == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->takeAt(this, sigval1);

		return callback_return_value;
	}

	virtual int indexOf(const QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QLayout::indexOf(param1);
		}

		QWidget* sigval1 = (QWidget*) param1;

		int callback_return_value = vtbl->indexOf(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLayout_virtualbase_indexOf(const VirtualQLayout* self, QWidget* param1);

	virtual int indexOf(const QLayoutItem* param1) const override {
		if (vtbl->indexOfWithQLayoutItem == 0) {
			return QLayout::indexOf(param1);
		}

		QLayoutItem* sigval1 = (QLayoutItem*) param1;

		int callback_return_value = vtbl->indexOfWithQLayoutItem(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLayout_virtualbase_indexOfWithQLayoutItem(const VirtualQLayout* self, QLayoutItem* param1);

	virtual int count() const override {
		if (vtbl->count == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->count(this);

		return static_cast<int>(callback_return_value);
	}

	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(this);

		return callback_return_value;
	}

	friend bool QLayout_virtualbase_isEmpty(const VirtualQLayout* self);

	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QLayout_virtualbase_controlTypes(const VirtualQLayout* self);

	virtual QLayoutItem* replaceWidget(QWidget* from, QWidget* to, Qt::FindChildOptions options) override {
		if (vtbl->replaceWidget == 0) {
			return QLayout::replaceWidget(from, to, options);
		}

		QWidget* sigval1 = from;
		QWidget* sigval2 = to;
		Qt::FindChildOptions options_ret = options;
		int sigval3 = static_cast<int>(options_ret);

		QLayoutItem* callback_return_value = vtbl->replaceWidget(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend QLayoutItem* QLayout_virtualbase_replaceWidget(VirtualQLayout* self, QWidget* from, QWidget* to, int options);

	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(this);

		return callback_return_value;
	}

	friend QLayout* QLayout_virtualbase_layout(VirtualQLayout* self);

	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(this, sigval1);

	}

	friend void QLayout_virtualbase_childEvent(VirtualQLayout* self, QChildEvent* e);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QLayout_virtualbase_event(VirtualQLayout* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QLayout_virtualbase_eventFilter(VirtualQLayout* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QLayout_virtualbase_timerEvent(VirtualQLayout* self, QTimerEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QLayout_virtualbase_customEvent(VirtualQLayout* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QLayout_virtualbase_connectNotify(VirtualQLayout* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QLayout_virtualbase_disconnectNotify(VirtualQLayout* self, QMetaMethod* signal);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QLayout_virtualbase_hasHeightForWidth(const VirtualQLayout* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLayout_virtualbase_heightForWidth(const VirtualQLayout* self, int param1);

	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QLayout_virtualbase_minimumHeightForWidth(const VirtualQLayout* self, int param1);

	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(this);

		return callback_return_value;
	}

	friend QWidget* QLayout_virtualbase_widget(const VirtualQLayout* self);

	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(this);

		return callback_return_value;
	}

	friend QSpacerItem* QLayout_virtualbase_spacerItem(VirtualQLayout* self);

	// Wrappers to allow calling protected methods:
	friend void QLayout_protectedbase_widgetEvent(VirtualQLayout* self, QEvent* param1);
	friend void QLayout_protectedbase_addChildLayout(VirtualQLayout* self, QLayout* l);
	friend void QLayout_protectedbase_addChildWidget(VirtualQLayout* self, QWidget* w);
	friend bool QLayout_protectedbase_adoptLayout(VirtualQLayout* self, QLayout* layout);
	friend QRect* QLayout_protectedbase_alignmentRect(const VirtualQLayout* self, QRect* param1);
	friend QObject* QLayout_protectedbase_sender(const VirtualQLayout* self);
	friend int QLayout_protectedbase_senderSignalIndex(const VirtualQLayout* self);
	friend int QLayout_protectedbase_receivers(const VirtualQLayout* self, const char* signal);
	friend bool QLayout_protectedbase_isSignalConnected(const VirtualQLayout* self, QMetaMethod* signal);
};

VirtualQLayout* QLayout_new(const QLayout_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQLayout(vtbl, vdata, parent);
}

VirtualQLayout* QLayout_new2(const QLayout_VTable* vtbl, void* vdata) {
	return new VirtualQLayout(vtbl, vdata);
}

void QLayout_virtbase(QLayout* src, QObject** outptr_QObject, QLayoutItem** outptr_QLayoutItem) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QLayoutItem = static_cast<QLayoutItem*>(src);
}

QMetaObject* QLayout_metaObject(const QLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLayout_metacast(QLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLayout_metacall(QLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLayout_tr(const char* s) {
	QString _ret = QLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QLayout_spacing(const QLayout* self) {
	return self->spacing();
}

void QLayout_setSpacing(QLayout* self, int spacing) {
	self->setSpacing(static_cast<int>(spacing));
}

void QLayout_setContentsMargins(QLayout* self, int left, int top, int right, int bottom) {
	self->setContentsMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

void QLayout_setContentsMarginsWithMargins(QLayout* self, QMargins* margins) {
	self->setContentsMargins(*margins);
}

void QLayout_unsetContentsMargins(QLayout* self) {
	self->unsetContentsMargins();
}

void QLayout_getContentsMargins(const QLayout* self, int* left, int* top, int* right, int* bottom) {
	self->getContentsMargins(static_cast<int*>(left), static_cast<int*>(top), static_cast<int*>(right), static_cast<int*>(bottom));
}

QMargins* QLayout_contentsMargins(const QLayout* self) {
	return new QMargins(self->contentsMargins());
}

QRect* QLayout_contentsRect(const QLayout* self) {
	return new QRect(self->contentsRect());
}

bool QLayout_setAlignment(QLayout* self, QWidget* w, int alignment) {
	return self->setAlignment(w, static_cast<Qt::Alignment>(alignment));
}

bool QLayout_setAlignment2(QLayout* self, QLayout* l, int alignment) {
	return self->setAlignment(l, static_cast<Qt::Alignment>(alignment));
}

void QLayout_setSizeConstraint(QLayout* self, int sizeConstraint) {
	self->setSizeConstraint(static_cast<QLayout::SizeConstraint>(sizeConstraint));
}

int QLayout_sizeConstraint(const QLayout* self) {
	QLayout::SizeConstraint _ret = self->sizeConstraint();
	return static_cast<int>(_ret);
}

void QLayout_setMenuBar(QLayout* self, QWidget* w) {
	self->setMenuBar(w);
}

QWidget* QLayout_menuBar(const QLayout* self) {
	return self->menuBar();
}

QWidget* QLayout_parentWidget(const QLayout* self) {
	return self->parentWidget();
}

void QLayout_invalidate(QLayout* self) {
	self->invalidate();
}

QRect* QLayout_geometry(const QLayout* self) {
	return new QRect(self->geometry());
}

bool QLayout_activate(QLayout* self) {
	return self->activate();
}

void QLayout_update(QLayout* self) {
	self->update();
}

void QLayout_addWidget(QLayout* self, QWidget* w) {
	self->addWidget(w);
}

void QLayout_addItem(QLayout* self, QLayoutItem* param1) {
	self->addItem(param1);
}

void QLayout_removeWidget(QLayout* self, QWidget* w) {
	self->removeWidget(w);
}

void QLayout_removeItem(QLayout* self, QLayoutItem* param1) {
	self->removeItem(param1);
}

int QLayout_expandingDirections(const QLayout* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

QSize* QLayout_minimumSize(const QLayout* self) {
	return new QSize(self->minimumSize());
}

QSize* QLayout_maximumSize(const QLayout* self) {
	return new QSize(self->maximumSize());
}

void QLayout_setGeometry(QLayout* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

QLayoutItem* QLayout_itemAt(const QLayout* self, int index) {
	return self->itemAt(static_cast<int>(index));
}

QLayoutItem* QLayout_takeAt(QLayout* self, int index) {
	return self->takeAt(static_cast<int>(index));
}

int QLayout_indexOf(const QLayout* self, QWidget* param1) {
	return self->indexOf(param1);
}

int QLayout_indexOfWithQLayoutItem(const QLayout* self, QLayoutItem* param1) {
	return self->indexOf(param1);
}

int QLayout_count(const QLayout* self) {
	return self->count();
}

bool QLayout_isEmpty(const QLayout* self) {
	return self->isEmpty();
}

int QLayout_controlTypes(const QLayout* self) {
	QSizePolicy::ControlTypes _ret = self->controlTypes();
	return static_cast<int>(_ret);
}

QLayoutItem* QLayout_replaceWidget(QLayout* self, QWidget* from, QWidget* to, int options) {
	return self->replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));
}

int QLayout_totalMinimumHeightForWidth(const QLayout* self, int w) {
	return self->totalMinimumHeightForWidth(static_cast<int>(w));
}

int QLayout_totalHeightForWidth(const QLayout* self, int w) {
	return self->totalHeightForWidth(static_cast<int>(w));
}

QSize* QLayout_totalMinimumSize(const QLayout* self) {
	return new QSize(self->totalMinimumSize());
}

QSize* QLayout_totalMaximumSize(const QLayout* self) {
	return new QSize(self->totalMaximumSize());
}

QSize* QLayout_totalSizeHint(const QLayout* self) {
	return new QSize(self->totalSizeHint());
}

QLayout* QLayout_layout(QLayout* self) {
	return self->layout();
}

void QLayout_setEnabled(QLayout* self, bool enabled) {
	self->setEnabled(enabled);
}

bool QLayout_isEnabled(const QLayout* self) {
	return self->isEnabled();
}

QSize* QLayout_closestAcceptableSize(QWidget* w, QSize* s) {
	return new QSize(QLayout::closestAcceptableSize(w, *s));
}

struct miqt_string QLayout_tr2(const char* s, const char* c) {
	QString _ret = QLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QLayout_virtualbase_metaObject(const VirtualQLayout* self) {

	return (QMetaObject*) self->QLayout::metaObject();
}

void* QLayout_virtualbase_metacast(VirtualQLayout* self, const char* param1) {

	return self->QLayout::qt_metacast(param1);
}

int QLayout_virtualbase_metacall(VirtualQLayout* self, int param1, int param2, void** param3) {

	return self->QLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

int QLayout_virtualbase_spacing(const VirtualQLayout* self) {

	return self->QLayout::spacing();
}

void QLayout_virtualbase_setSpacing(VirtualQLayout* self, int spacing) {

	self->QLayout::setSpacing(static_cast<int>(spacing));
}

void QLayout_virtualbase_invalidate(VirtualQLayout* self) {

	self->QLayout::invalidate();
}

QRect* QLayout_virtualbase_geometry(const VirtualQLayout* self) {

	return new QRect(self->QLayout::geometry());
}

int QLayout_virtualbase_expandingDirections(const VirtualQLayout* self) {

	Qt::Orientations _ret = self->QLayout::expandingDirections();
	return static_cast<int>(_ret);
}

QSize* QLayout_virtualbase_minimumSize(const VirtualQLayout* self) {

	return new QSize(self->QLayout::minimumSize());
}

QSize* QLayout_virtualbase_maximumSize(const VirtualQLayout* self) {

	return new QSize(self->QLayout::maximumSize());
}

void QLayout_virtualbase_setGeometry(VirtualQLayout* self, QRect* geometry) {

	self->QLayout::setGeometry(*geometry);
}

int QLayout_virtualbase_indexOf(const VirtualQLayout* self, QWidget* param1) {

	return self->QLayout::indexOf(param1);
}

int QLayout_virtualbase_indexOfWithQLayoutItem(const VirtualQLayout* self, QLayoutItem* param1) {

	return self->QLayout::indexOf(param1);
}

bool QLayout_virtualbase_isEmpty(const VirtualQLayout* self) {

	return self->QLayout::isEmpty();
}

int QLayout_virtualbase_controlTypes(const VirtualQLayout* self) {

	QSizePolicy::ControlTypes _ret = self->QLayout::controlTypes();
	return static_cast<int>(_ret);
}

QLayoutItem* QLayout_virtualbase_replaceWidget(VirtualQLayout* self, QWidget* from, QWidget* to, int options) {

	return self->QLayout::replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));
}

QLayout* QLayout_virtualbase_layout(VirtualQLayout* self) {

	return self->QLayout::layout();
}

void QLayout_virtualbase_childEvent(VirtualQLayout* self, QChildEvent* e) {

	self->QLayout::childEvent(e);
}

bool QLayout_virtualbase_event(VirtualQLayout* self, QEvent* event) {

	return self->QLayout::event(event);
}

bool QLayout_virtualbase_eventFilter(VirtualQLayout* self, QObject* watched, QEvent* event) {

	return self->QLayout::eventFilter(watched, event);
}

void QLayout_virtualbase_timerEvent(VirtualQLayout* self, QTimerEvent* event) {

	self->QLayout::timerEvent(event);
}

void QLayout_virtualbase_customEvent(VirtualQLayout* self, QEvent* event) {

	self->QLayout::customEvent(event);
}

void QLayout_virtualbase_connectNotify(VirtualQLayout* self, QMetaMethod* signal) {

	self->QLayout::connectNotify(*signal);
}

void QLayout_virtualbase_disconnectNotify(VirtualQLayout* self, QMetaMethod* signal) {

	self->QLayout::disconnectNotify(*signal);
}

bool QLayout_virtualbase_hasHeightForWidth(const VirtualQLayout* self) {

	return self->QLayout::hasHeightForWidth();
}

int QLayout_virtualbase_heightForWidth(const VirtualQLayout* self, int param1) {

	return self->QLayout::heightForWidth(static_cast<int>(param1));
}

int QLayout_virtualbase_minimumHeightForWidth(const VirtualQLayout* self, int param1) {

	return self->QLayout::minimumHeightForWidth(static_cast<int>(param1));
}

QWidget* QLayout_virtualbase_widget(const VirtualQLayout* self) {

	return self->QLayout::widget();
}

QSpacerItem* QLayout_virtualbase_spacerItem(VirtualQLayout* self) {

	return self->QLayout::spacerItem();
}

const QMetaObject* QLayout_staticMetaObject() { return &QLayout::staticMetaObject; }

const QLayout_VTable* QLayout_vtbl(const VirtualQLayout* self) { return self->vtbl; }
void* QLayout_vdata(const VirtualQLayout* self) { return self->vdata; }
void QLayout_setVdata(VirtualQLayout* self, void* vdata) { self->vdata = vdata; }

void QLayout_protectedbase_widgetEvent(VirtualQLayout* self, QEvent* param1) {
	self->widgetEvent(param1);
}

void QLayout_protectedbase_addChildLayout(VirtualQLayout* self, QLayout* l) {
	self->addChildLayout(l);
}

void QLayout_protectedbase_addChildWidget(VirtualQLayout* self, QWidget* w) {
	self->addChildWidget(w);
}

bool QLayout_protectedbase_adoptLayout(VirtualQLayout* self, QLayout* layout) {
	return self->adoptLayout(layout);
}

QRect* QLayout_protectedbase_alignmentRect(const VirtualQLayout* self, QRect* param1) {
	return new QRect(self->alignmentRect(*param1));
}

QObject* QLayout_protectedbase_sender(const VirtualQLayout* self) {
	return self->sender();
}

int QLayout_protectedbase_senderSignalIndex(const VirtualQLayout* self) {
	return self->senderSignalIndex();
}

int QLayout_protectedbase_receivers(const VirtualQLayout* self, const char* signal) {
	return self->receivers(signal);
}

bool QLayout_protectedbase_isSignalConnected(const VirtualQLayout* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QLayout_delete(QLayout* self) {
	delete self;
}

