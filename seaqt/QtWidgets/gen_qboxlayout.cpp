#include <QBoxLayout>
#include <QChildEvent>
#include <QEvent>
#include <QHBoxLayout>
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
#include <QVBoxLayout>
#include <QWidget>
#include <qboxlayout.h>
#include "gen_qboxlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQBoxLayout final : public QBoxLayout {
	struct QBoxLayout_VTable* vtbl;
public:

	VirtualQBoxLayout(struct QBoxLayout_VTable* vtbl, QBoxLayout::Direction param1): QBoxLayout(param1), vtbl(vtbl) {};
	VirtualQBoxLayout(struct QBoxLayout_VTable* vtbl, QBoxLayout::Direction param1, QWidget* parent): QBoxLayout(param1, parent), vtbl(vtbl) {};

	virtual ~VirtualQBoxLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QBoxLayout_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QBoxLayout_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QBoxLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(vtbl, this, sigval1);

	}

	friend void QBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QBoxLayout_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QBoxLayout_virtualbase_minimumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QBoxLayout_virtualbase_maximumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QBoxLayout_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_expandingDirections(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	friend void QBoxLayout_virtualbase_invalidate(void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QBoxLayout_virtualbase_itemAt(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QBoxLayout_virtualbase_takeAt(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QBoxLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_count(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	friend void QBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry);

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	friend QRect* QBoxLayout_virtualbase_geometry(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1);

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	friend bool QBoxLayout_virtualbase_isEmpty(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QBoxLayout_virtualbase_controlTypes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	friend QLayout* QBoxLayout_virtualbase_layout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QBoxLayout_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QBoxLayout_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	friend QWidget* QBoxLayout_virtualbase_widget(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	friend QSpacerItem* QBoxLayout_virtualbase_spacerItem(void* self);

	// Wrappers to allow calling protected methods:
	friend void QBoxLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1);
	friend void QBoxLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l);
	friend void QBoxLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w);
	friend bool QBoxLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout);
	friend QRect* QBoxLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1);
	friend QObject* QBoxLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QBoxLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QBoxLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QBoxLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QBoxLayout* QBoxLayout_new(struct QBoxLayout_VTable* vtbl, int param1) {
	return new VirtualQBoxLayout(vtbl, static_cast<QBoxLayout::Direction>(param1));
}

QBoxLayout* QBoxLayout_new2(struct QBoxLayout_VTable* vtbl, int param1, QWidget* parent) {
	return new VirtualQBoxLayout(vtbl, static_cast<QBoxLayout::Direction>(param1), parent);
}

void QBoxLayout_virtbase(QBoxLayout* src, QLayout** outptr_QLayout) {
	*outptr_QLayout = static_cast<QLayout*>(src);
}

QMetaObject* QBoxLayout_metaObject(const QBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QBoxLayout_metacast(QBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QBoxLayout_metacall(QBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QBoxLayout_tr(const char* s) {
	QString _ret = QBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_trUtf8(const char* s) {
	QString _ret = QBoxLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QBoxLayout_direction(const QBoxLayout* self) {
	QBoxLayout::Direction _ret = self->direction();
	return static_cast<int>(_ret);
}

void QBoxLayout_setDirection(QBoxLayout* self, int direction) {
	self->setDirection(static_cast<QBoxLayout::Direction>(direction));
}

void QBoxLayout_addSpacing(QBoxLayout* self, int size) {
	self->addSpacing(static_cast<int>(size));
}

void QBoxLayout_addStretch(QBoxLayout* self) {
	self->addStretch();
}

void QBoxLayout_addSpacerItem(QBoxLayout* self, QSpacerItem* spacerItem) {
	self->addSpacerItem(spacerItem);
}

void QBoxLayout_addWidget(QBoxLayout* self, QWidget* param1) {
	self->addWidget(param1);
}

void QBoxLayout_addLayout(QBoxLayout* self, QLayout* layout) {
	self->addLayout(layout);
}

void QBoxLayout_addStrut(QBoxLayout* self, int param1) {
	self->addStrut(static_cast<int>(param1));
}

void QBoxLayout_addItem(QBoxLayout* self, QLayoutItem* param1) {
	self->addItem(param1);
}

void QBoxLayout_insertSpacing(QBoxLayout* self, int index, int size) {
	self->insertSpacing(static_cast<int>(index), static_cast<int>(size));
}

void QBoxLayout_insertStretch(QBoxLayout* self, int index) {
	self->insertStretch(static_cast<int>(index));
}

void QBoxLayout_insertSpacerItem(QBoxLayout* self, int index, QSpacerItem* spacerItem) {
	self->insertSpacerItem(static_cast<int>(index), spacerItem);
}

void QBoxLayout_insertWidget(QBoxLayout* self, int index, QWidget* widget) {
	self->insertWidget(static_cast<int>(index), widget);
}

void QBoxLayout_insertLayout(QBoxLayout* self, int index, QLayout* layout) {
	self->insertLayout(static_cast<int>(index), layout);
}

void QBoxLayout_insertItem(QBoxLayout* self, int index, QLayoutItem* param2) {
	self->insertItem(static_cast<int>(index), param2);
}

int QBoxLayout_spacing(const QBoxLayout* self) {
	return self->spacing();
}

void QBoxLayout_setSpacing(QBoxLayout* self, int spacing) {
	self->setSpacing(static_cast<int>(spacing));
}

bool QBoxLayout_setStretchFactor(QBoxLayout* self, QWidget* w, int stretch) {
	return self->setStretchFactor(w, static_cast<int>(stretch));
}

bool QBoxLayout_setStretchFactor2(QBoxLayout* self, QLayout* l, int stretch) {
	return self->setStretchFactor(l, static_cast<int>(stretch));
}

void QBoxLayout_setStretch(QBoxLayout* self, int index, int stretch) {
	self->setStretch(static_cast<int>(index), static_cast<int>(stretch));
}

int QBoxLayout_stretch(const QBoxLayout* self, int index) {
	return self->stretch(static_cast<int>(index));
}

QSize* QBoxLayout_sizeHint(const QBoxLayout* self) {
	return new QSize(self->sizeHint());
}

QSize* QBoxLayout_minimumSize(const QBoxLayout* self) {
	return new QSize(self->minimumSize());
}

QSize* QBoxLayout_maximumSize(const QBoxLayout* self) {
	return new QSize(self->maximumSize());
}

bool QBoxLayout_hasHeightForWidth(const QBoxLayout* self) {
	return self->hasHeightForWidth();
}

int QBoxLayout_heightForWidth(const QBoxLayout* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

int QBoxLayout_minimumHeightForWidth(const QBoxLayout* self, int param1) {
	return self->minimumHeightForWidth(static_cast<int>(param1));
}

int QBoxLayout_expandingDirections(const QBoxLayout* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

void QBoxLayout_invalidate(QBoxLayout* self) {
	self->invalidate();
}

QLayoutItem* QBoxLayout_itemAt(const QBoxLayout* self, int param1) {
	return self->itemAt(static_cast<int>(param1));
}

QLayoutItem* QBoxLayout_takeAt(QBoxLayout* self, int param1) {
	return self->takeAt(static_cast<int>(param1));
}

int QBoxLayout_count(const QBoxLayout* self) {
	return self->count();
}

void QBoxLayout_setGeometry(QBoxLayout* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

struct miqt_string QBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QBoxLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QBoxLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QBoxLayout_addStretch1(QBoxLayout* self, int stretch) {
	self->addStretch(static_cast<int>(stretch));
}

void QBoxLayout_addWidget2(QBoxLayout* self, QWidget* param1, int stretch) {
	self->addWidget(param1, static_cast<int>(stretch));
}

void QBoxLayout_addWidget3(QBoxLayout* self, QWidget* param1, int stretch, int alignment) {
	self->addWidget(param1, static_cast<int>(stretch), static_cast<Qt::Alignment>(alignment));
}

void QBoxLayout_addLayout2(QBoxLayout* self, QLayout* layout, int stretch) {
	self->addLayout(layout, static_cast<int>(stretch));
}

void QBoxLayout_insertStretch2(QBoxLayout* self, int index, int stretch) {
	self->insertStretch(static_cast<int>(index), static_cast<int>(stretch));
}

void QBoxLayout_insertWidget3(QBoxLayout* self, int index, QWidget* widget, int stretch) {
	self->insertWidget(static_cast<int>(index), widget, static_cast<int>(stretch));
}

void QBoxLayout_insertWidget4(QBoxLayout* self, int index, QWidget* widget, int stretch, int alignment) {
	self->insertWidget(static_cast<int>(index), widget, static_cast<int>(stretch), static_cast<Qt::Alignment>(alignment));
}

void QBoxLayout_insertLayout3(QBoxLayout* self, int index, QLayout* layout, int stretch) {
	self->insertLayout(static_cast<int>(index), layout, static_cast<int>(stretch));
}

QMetaObject* QBoxLayout_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::metaObject();

}

void* QBoxLayout_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQBoxLayout*)(self) )->QBoxLayout::qt_metacast(param1);

}

int QBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQBoxLayout*)(self) )->QBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1) {

	( (VirtualQBoxLayout*)(self) )->QBoxLayout::addItem(param1);

}

QSize* QBoxLayout_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQBoxLayout*)(self) )->QBoxLayout::sizeHint());

}

QSize* QBoxLayout_virtualbase_minimumSize(const void* self) {

	return new QSize(( (const VirtualQBoxLayout*)(self) )->QBoxLayout::minimumSize());

}

QSize* QBoxLayout_virtualbase_maximumSize(const void* self) {

	return new QSize(( (const VirtualQBoxLayout*)(self) )->QBoxLayout::maximumSize());

}

bool QBoxLayout_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::hasHeightForWidth();

}

int QBoxLayout_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::heightForWidth(static_cast<int>(param1));

}

int QBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {

	return ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::minimumHeightForWidth(static_cast<int>(param1));

}

int QBoxLayout_virtualbase_expandingDirections(const void* self) {

	Qt::Orientations _ret = ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::expandingDirections();
	return static_cast<int>(_ret);

}

void QBoxLayout_virtualbase_invalidate(void* self) {

	( (VirtualQBoxLayout*)(self) )->QBoxLayout::invalidate();

}

QLayoutItem* QBoxLayout_virtualbase_itemAt(const void* self, int param1) {

	return ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::itemAt(static_cast<int>(param1));

}

QLayoutItem* QBoxLayout_virtualbase_takeAt(void* self, int param1) {

	return ( (VirtualQBoxLayout*)(self) )->QBoxLayout::takeAt(static_cast<int>(param1));

}

int QBoxLayout_virtualbase_count(const void* self) {

	return ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::count();

}

void QBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry) {

	( (VirtualQBoxLayout*)(self) )->QBoxLayout::setGeometry(*geometry);

}

QRect* QBoxLayout_virtualbase_geometry(const void* self) {

	return new QRect(( (const VirtualQBoxLayout*)(self) )->QBoxLayout::geometry());

}

int QBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1) {

	return ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::indexOf(param1);

}

bool QBoxLayout_virtualbase_isEmpty(const void* self) {

	return ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::isEmpty();

}

int QBoxLayout_virtualbase_controlTypes(const void* self) {

	QSizePolicy::ControlTypes _ret = ( (const VirtualQBoxLayout*)(self) )->QBoxLayout::controlTypes();
	return static_cast<int>(_ret);

}

QLayout* QBoxLayout_virtualbase_layout(void* self) {

	return ( (VirtualQBoxLayout*)(self) )->QBoxLayout::layout();

}

void QBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e) {

	( (VirtualQBoxLayout*)(self) )->QBoxLayout::childEvent(e);

}

bool QBoxLayout_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQBoxLayout*)(self) )->QBoxLayout::event(event);

}

bool QBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQBoxLayout*)(self) )->QBoxLayout::eventFilter(watched, event);

}

void QBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQBoxLayout*)(self) )->QBoxLayout::timerEvent(event);

}

void QBoxLayout_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQBoxLayout*)(self) )->QBoxLayout::customEvent(event);

}

void QBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQBoxLayout*)(self) )->QBoxLayout::connectNotify(*signal);

}

void QBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQBoxLayout*)(self) )->QBoxLayout::disconnectNotify(*signal);

}

QWidget* QBoxLayout_virtualbase_widget(void* self) {

	return ( (VirtualQBoxLayout*)(self) )->QBoxLayout::widget();

}

QSpacerItem* QBoxLayout_virtualbase_spacerItem(void* self) {

	return ( (VirtualQBoxLayout*)(self) )->QBoxLayout::spacerItem();

}

const QMetaObject* QBoxLayout_staticMetaObject() { return &QBoxLayout::staticMetaObject; }
void QBoxLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->widgetEvent(param1);

}

void QBoxLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addChildLayout(l);

}

void QBoxLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addChildWidget(w);

}

bool QBoxLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->adoptLayout(layout);

}

QRect* QBoxLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QBoxLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QBoxLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QBoxLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QBoxLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQBoxLayout* self_cast = dynamic_cast<VirtualQBoxLayout*>( (QBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QBoxLayout_delete(QBoxLayout* self) {
	delete self;
}

class VirtualQHBoxLayout final : public QHBoxLayout {
	struct QHBoxLayout_VTable* vtbl;
public:

	VirtualQHBoxLayout(struct QHBoxLayout_VTable* vtbl, QWidget* parent): QHBoxLayout(parent), vtbl(vtbl) {};
	VirtualQHBoxLayout(struct QHBoxLayout_VTable* vtbl): QHBoxLayout(), vtbl(vtbl) {};

	virtual ~VirtualQHBoxLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QHBoxLayout_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QHBoxLayout_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHBoxLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QHBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(vtbl, this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QHBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QHBoxLayout_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QHBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QHBoxLayout_virtualbase_minimumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QHBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QHBoxLayout_virtualbase_maximumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QHBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QHBoxLayout_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QHBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QHBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QHBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_expandingDirections(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QHBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	friend void QHBoxLayout_virtualbase_invalidate(void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QHBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QHBoxLayout_virtualbase_itemAt(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QHBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QHBoxLayout_virtualbase_takeAt(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QHBoxLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_count(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QHBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry);

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QHBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	friend QRect* QHBoxLayout_virtualbase_geometry(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QHBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1);

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QHBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	friend bool QHBoxLayout_virtualbase_isEmpty(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QHBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QHBoxLayout_virtualbase_controlTypes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QHBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	friend QLayout* QHBoxLayout_virtualbase_layout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QHBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QHBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QHBoxLayout_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QHBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QHBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QHBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	friend QWidget* QHBoxLayout_virtualbase_widget(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QHBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	friend QSpacerItem* QHBoxLayout_virtualbase_spacerItem(void* self);

	// Wrappers to allow calling protected methods:
	friend void QHBoxLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1);
	friend void QHBoxLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l);
	friend void QHBoxLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w);
	friend bool QHBoxLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout);
	friend QRect* QHBoxLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1);
	friend QObject* QHBoxLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QHBoxLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QHBoxLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QHBoxLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QHBoxLayout* QHBoxLayout_new(struct QHBoxLayout_VTable* vtbl, QWidget* parent) {
	return new VirtualQHBoxLayout(vtbl, parent);
}

QHBoxLayout* QHBoxLayout_new2(struct QHBoxLayout_VTable* vtbl) {
	return new VirtualQHBoxLayout(vtbl);
}

void QHBoxLayout_virtbase(QHBoxLayout* src, QBoxLayout** outptr_QBoxLayout) {
	*outptr_QBoxLayout = static_cast<QBoxLayout*>(src);
}

QMetaObject* QHBoxLayout_metaObject(const QHBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QHBoxLayout_metacast(QHBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QHBoxLayout_metacall(QHBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QHBoxLayout_tr(const char* s) {
	QString _ret = QHBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_trUtf8(const char* s) {
	QString _ret = QHBoxLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QHBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QHBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QHBoxLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QHBoxLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QHBoxLayout_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::metaObject();

}

void* QHBoxLayout_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::qt_metacast(param1);

}

int QHBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QHBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1) {

	( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::addItem(param1);

}

QSize* QHBoxLayout_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::sizeHint());

}

QSize* QHBoxLayout_virtualbase_minimumSize(const void* self) {

	return new QSize(( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::minimumSize());

}

QSize* QHBoxLayout_virtualbase_maximumSize(const void* self) {

	return new QSize(( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::maximumSize());

}

bool QHBoxLayout_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::hasHeightForWidth();

}

int QHBoxLayout_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::heightForWidth(static_cast<int>(param1));

}

int QHBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {

	return ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::minimumHeightForWidth(static_cast<int>(param1));

}

int QHBoxLayout_virtualbase_expandingDirections(const void* self) {

	Qt::Orientations _ret = ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::expandingDirections();
	return static_cast<int>(_ret);

}

void QHBoxLayout_virtualbase_invalidate(void* self) {

	( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::invalidate();

}

QLayoutItem* QHBoxLayout_virtualbase_itemAt(const void* self, int param1) {

	return ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::itemAt(static_cast<int>(param1));

}

QLayoutItem* QHBoxLayout_virtualbase_takeAt(void* self, int param1) {

	return ( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::takeAt(static_cast<int>(param1));

}

int QHBoxLayout_virtualbase_count(const void* self) {

	return ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::count();

}

void QHBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry) {

	( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::setGeometry(*geometry);

}

QRect* QHBoxLayout_virtualbase_geometry(const void* self) {

	return new QRect(( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::geometry());

}

int QHBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1) {

	return ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::indexOf(param1);

}

bool QHBoxLayout_virtualbase_isEmpty(const void* self) {

	return ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::isEmpty();

}

int QHBoxLayout_virtualbase_controlTypes(const void* self) {

	QSizePolicy::ControlTypes _ret = ( (const VirtualQHBoxLayout*)(self) )->QHBoxLayout::controlTypes();
	return static_cast<int>(_ret);

}

QLayout* QHBoxLayout_virtualbase_layout(void* self) {

	return ( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::layout();

}

void QHBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e) {

	( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::childEvent(e);

}

bool QHBoxLayout_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::event(event);

}

bool QHBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::eventFilter(watched, event);

}

void QHBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::timerEvent(event);

}

void QHBoxLayout_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::customEvent(event);

}

void QHBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::connectNotify(*signal);

}

void QHBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::disconnectNotify(*signal);

}

QWidget* QHBoxLayout_virtualbase_widget(void* self) {

	return ( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::widget();

}

QSpacerItem* QHBoxLayout_virtualbase_spacerItem(void* self) {

	return ( (VirtualQHBoxLayout*)(self) )->QHBoxLayout::spacerItem();

}

const QMetaObject* QHBoxLayout_staticMetaObject() { return &QHBoxLayout::staticMetaObject; }
void QHBoxLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->widgetEvent(param1);

}

void QHBoxLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addChildLayout(l);

}

void QHBoxLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addChildWidget(w);

}

bool QHBoxLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->adoptLayout(layout);

}

QRect* QHBoxLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QHBoxLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QHBoxLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QHBoxLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QHBoxLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQHBoxLayout* self_cast = dynamic_cast<VirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QHBoxLayout_delete(QHBoxLayout* self) {
	delete self;
}

class VirtualQVBoxLayout final : public QVBoxLayout {
	struct QVBoxLayout_VTable* vtbl;
public:

	VirtualQVBoxLayout(struct QVBoxLayout_VTable* vtbl, QWidget* parent): QVBoxLayout(parent), vtbl(vtbl) {};
	VirtualQVBoxLayout(struct QVBoxLayout_VTable* vtbl): QVBoxLayout(), vtbl(vtbl) {};

	virtual ~VirtualQVBoxLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QVBoxLayout_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QVBoxLayout_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVBoxLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QVBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(vtbl, this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QVBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QVBoxLayout_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QVBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QVBoxLayout_virtualbase_minimumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QVBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QVBoxLayout_virtualbase_maximumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QVBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QVBoxLayout_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QVBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QVBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QVBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_expandingDirections(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QVBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	friend void QVBoxLayout_virtualbase_invalidate(void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QVBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QVBoxLayout_virtualbase_itemAt(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QVBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QVBoxLayout_virtualbase_takeAt(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QVBoxLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_count(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QVBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry);

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QVBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	friend QRect* QVBoxLayout_virtualbase_geometry(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QVBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1);

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QVBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	friend bool QVBoxLayout_virtualbase_isEmpty(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QVBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QVBoxLayout_virtualbase_controlTypes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QVBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	friend QLayout* QVBoxLayout_virtualbase_layout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QVBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QVBoxLayout_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QVBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QVBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QVBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	friend QWidget* QVBoxLayout_virtualbase_widget(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QVBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	friend QSpacerItem* QVBoxLayout_virtualbase_spacerItem(void* self);

	// Wrappers to allow calling protected methods:
	friend void QVBoxLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1);
	friend void QVBoxLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l);
	friend void QVBoxLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w);
	friend bool QVBoxLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout);
	friend QRect* QVBoxLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1);
	friend QObject* QVBoxLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QVBoxLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QVBoxLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QVBoxLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QVBoxLayout* QVBoxLayout_new(struct QVBoxLayout_VTable* vtbl, QWidget* parent) {
	return new VirtualQVBoxLayout(vtbl, parent);
}

QVBoxLayout* QVBoxLayout_new2(struct QVBoxLayout_VTable* vtbl) {
	return new VirtualQVBoxLayout(vtbl);
}

void QVBoxLayout_virtbase(QVBoxLayout* src, QBoxLayout** outptr_QBoxLayout) {
	*outptr_QBoxLayout = static_cast<QBoxLayout*>(src);
}

QMetaObject* QVBoxLayout_metaObject(const QVBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVBoxLayout_metacast(QVBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVBoxLayout_metacall(QVBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVBoxLayout_tr(const char* s) {
	QString _ret = QVBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_trUtf8(const char* s) {
	QString _ret = QVBoxLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QVBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QVBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QVBoxLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QVBoxLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QVBoxLayout_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::metaObject();

}

void* QVBoxLayout_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::qt_metacast(param1);

}

int QVBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QVBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1) {

	( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::addItem(param1);

}

QSize* QVBoxLayout_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::sizeHint());

}

QSize* QVBoxLayout_virtualbase_minimumSize(const void* self) {

	return new QSize(( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::minimumSize());

}

QSize* QVBoxLayout_virtualbase_maximumSize(const void* self) {

	return new QSize(( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::maximumSize());

}

bool QVBoxLayout_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::hasHeightForWidth();

}

int QVBoxLayout_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::heightForWidth(static_cast<int>(param1));

}

int QVBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {

	return ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::minimumHeightForWidth(static_cast<int>(param1));

}

int QVBoxLayout_virtualbase_expandingDirections(const void* self) {

	Qt::Orientations _ret = ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::expandingDirections();
	return static_cast<int>(_ret);

}

void QVBoxLayout_virtualbase_invalidate(void* self) {

	( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::invalidate();

}

QLayoutItem* QVBoxLayout_virtualbase_itemAt(const void* self, int param1) {

	return ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::itemAt(static_cast<int>(param1));

}

QLayoutItem* QVBoxLayout_virtualbase_takeAt(void* self, int param1) {

	return ( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::takeAt(static_cast<int>(param1));

}

int QVBoxLayout_virtualbase_count(const void* self) {

	return ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::count();

}

void QVBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry) {

	( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::setGeometry(*geometry);

}

QRect* QVBoxLayout_virtualbase_geometry(const void* self) {

	return new QRect(( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::geometry());

}

int QVBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1) {

	return ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::indexOf(param1);

}

bool QVBoxLayout_virtualbase_isEmpty(const void* self) {

	return ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::isEmpty();

}

int QVBoxLayout_virtualbase_controlTypes(const void* self) {

	QSizePolicy::ControlTypes _ret = ( (const VirtualQVBoxLayout*)(self) )->QVBoxLayout::controlTypes();
	return static_cast<int>(_ret);

}

QLayout* QVBoxLayout_virtualbase_layout(void* self) {

	return ( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::layout();

}

void QVBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e) {

	( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::childEvent(e);

}

bool QVBoxLayout_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::event(event);

}

bool QVBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::eventFilter(watched, event);

}

void QVBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::timerEvent(event);

}

void QVBoxLayout_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::customEvent(event);

}

void QVBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::connectNotify(*signal);

}

void QVBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::disconnectNotify(*signal);

}

QWidget* QVBoxLayout_virtualbase_widget(void* self) {

	return ( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::widget();

}

QSpacerItem* QVBoxLayout_virtualbase_spacerItem(void* self) {

	return ( (VirtualQVBoxLayout*)(self) )->QVBoxLayout::spacerItem();

}

const QMetaObject* QVBoxLayout_staticMetaObject() { return &QVBoxLayout::staticMetaObject; }
void QVBoxLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->widgetEvent(param1);

}

void QVBoxLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addChildLayout(l);

}

void QVBoxLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addChildWidget(w);

}

bool QVBoxLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->adoptLayout(layout);

}

QRect* QVBoxLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QVBoxLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QVBoxLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QVBoxLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QVBoxLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQVBoxLayout* self_cast = dynamic_cast<VirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QVBoxLayout_delete(QVBoxLayout* self) {
	delete self;
}

