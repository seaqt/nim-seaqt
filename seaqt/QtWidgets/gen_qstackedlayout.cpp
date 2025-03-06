#include <QChildEvent>
#include <QEvent>
#include <QLayout>
#include <QLayoutItem>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QSize>
#include <QSpacerItem>
#include <QStackedLayout>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <qstackedlayout.h>
#include "gen_qstackedlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQStackedLayout final : public QStackedLayout {
	struct QStackedLayout_VTable* vtbl;
public:

	VirtualQStackedLayout(struct QStackedLayout_VTable* vtbl, QWidget* parent): QStackedLayout(parent), vtbl(vtbl) {};
	VirtualQStackedLayout(struct QStackedLayout_VTable* vtbl): QStackedLayout(), vtbl(vtbl) {};
	VirtualQStackedLayout(struct QStackedLayout_VTable* vtbl, QLayout* parentLayout): QStackedLayout(parentLayout), vtbl(vtbl) {};

	virtual ~VirtualQStackedLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStackedLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QStackedLayout_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStackedLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QStackedLayout_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStackedLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QStackedLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_count(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* item) override {
		if (vtbl->addItem == 0) {
			QStackedLayout::addItem(item);
			return;
		}

		QLayoutItem* sigval1 = item;

		vtbl->addItem(vtbl, this, sigval1);

	}

	friend void QStackedLayout_virtualbase_addItem(void* self, QLayoutItem* item);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QStackedLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QStackedLayout_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QStackedLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QStackedLayout_virtualbase_minimumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QStackedLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QStackedLayout_virtualbase_itemAt(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QStackedLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QLayoutItem* QStackedLayout_virtualbase_takeAt(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& rect) override {
		if (vtbl->setGeometry == 0) {
			QStackedLayout::setGeometry(rect);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	friend void QStackedLayout_virtualbase_setGeometry(void* self, QRect* rect);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QStackedLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QStackedLayout_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int width) const override {
		if (vtbl->heightForWidth == 0) {
			return QStackedLayout::heightForWidth(width);
		}

		int sigval1 = width;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_heightForWidth(const void* self, int width);

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QStackedLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	friend void QStackedLayout_virtualbase_invalidate(void* self);

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QStackedLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	friend QRect* QStackedLayout_virtualbase_geometry(const void* self);

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QStackedLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_expandingDirections(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QStackedLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QStackedLayout_virtualbase_maximumSize(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QStackedLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_indexOf(const void* self, QWidget* param1);

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QStackedLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	friend bool QStackedLayout_virtualbase_isEmpty(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QStackedLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_controlTypes(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QStackedLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	friend QLayout* QStackedLayout_virtualbase_layout(void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QStackedLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QStackedLayout_virtualbase_childEvent(void* self, QChildEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStackedLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStackedLayout_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStackedLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStackedLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStackedLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QStackedLayout_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStackedLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QStackedLayout_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStackedLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QStackedLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStackedLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QStackedLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QStackedLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStackedLayout_virtualbase_minimumHeightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QStackedLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	friend QWidget* QStackedLayout_virtualbase_widget(void* self);

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QStackedLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	friend QSpacerItem* QStackedLayout_virtualbase_spacerItem(void* self);

	// Wrappers to allow calling protected methods:
	friend void QStackedLayout_protectedbase_widgetEvent(void* self, QEvent* param1);
	friend void QStackedLayout_protectedbase_addChildLayout(void* self, QLayout* l);
	friend void QStackedLayout_protectedbase_addChildWidget(void* self, QWidget* w);
	friend bool QStackedLayout_protectedbase_adoptLayout(void* self, QLayout* layout);
	friend QRect* QStackedLayout_protectedbase_alignmentRect(const void* self, QRect* param1);
	friend QObject* QStackedLayout_protectedbase_sender(const void* self);
	friend int QStackedLayout_protectedbase_senderSignalIndex(const void* self);
	friend int QStackedLayout_protectedbase_receivers(const void* self, const char* signal);
	friend bool QStackedLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QStackedLayout* QStackedLayout_new(struct QStackedLayout_VTable* vtbl, QWidget* parent) {
	return new VirtualQStackedLayout(vtbl, parent);
}

QStackedLayout* QStackedLayout_new2(struct QStackedLayout_VTable* vtbl) {
	return new VirtualQStackedLayout(vtbl);
}

QStackedLayout* QStackedLayout_new3(struct QStackedLayout_VTable* vtbl, QLayout* parentLayout) {
	return new VirtualQStackedLayout(vtbl, parentLayout);
}

void QStackedLayout_virtbase(QStackedLayout* src, QLayout** outptr_QLayout) {
	*outptr_QLayout = static_cast<QLayout*>(src);
}

QMetaObject* QStackedLayout_metaObject(const QStackedLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStackedLayout_metacast(QStackedLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStackedLayout_metacall(QStackedLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStackedLayout_tr(const char* s) {
	QString _ret = QStackedLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf8(const char* s) {
	QString _ret = QStackedLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QStackedLayout_addWidget(QStackedLayout* self, QWidget* w) {
	return self->addWidget(w);
}

int QStackedLayout_insertWidget(QStackedLayout* self, int index, QWidget* w) {
	return self->insertWidget(static_cast<int>(index), w);
}

QWidget* QStackedLayout_currentWidget(const QStackedLayout* self) {
	return self->currentWidget();
}

int QStackedLayout_currentIndex(const QStackedLayout* self) {
	return self->currentIndex();
}

QWidget* QStackedLayout_widget(const QStackedLayout* self, int param1) {
	return self->widget(static_cast<int>(param1));
}

int QStackedLayout_count(const QStackedLayout* self) {
	return self->count();
}

int QStackedLayout_stackingMode(const QStackedLayout* self) {
	QStackedLayout::StackingMode _ret = self->stackingMode();
	return static_cast<int>(_ret);
}

void QStackedLayout_setStackingMode(QStackedLayout* self, int stackingMode) {
	self->setStackingMode(static_cast<QStackedLayout::StackingMode>(stackingMode));
}

void QStackedLayout_addItem(QStackedLayout* self, QLayoutItem* item) {
	self->addItem(item);
}

QSize* QStackedLayout_sizeHint(const QStackedLayout* self) {
	return new QSize(self->sizeHint());
}

QSize* QStackedLayout_minimumSize(const QStackedLayout* self) {
	return new QSize(self->minimumSize());
}

QLayoutItem* QStackedLayout_itemAt(const QStackedLayout* self, int param1) {
	return self->itemAt(static_cast<int>(param1));
}

QLayoutItem* QStackedLayout_takeAt(QStackedLayout* self, int param1) {
	return self->takeAt(static_cast<int>(param1));
}

void QStackedLayout_setGeometry(QStackedLayout* self, QRect* rect) {
	self->setGeometry(*rect);
}

bool QStackedLayout_hasHeightForWidth(const QStackedLayout* self) {
	return self->hasHeightForWidth();
}

int QStackedLayout_heightForWidth(const QStackedLayout* self, int width) {
	return self->heightForWidth(static_cast<int>(width));
}

void QStackedLayout_widgetRemoved(QStackedLayout* self, int index) {
	self->widgetRemoved(static_cast<int>(index));
}

void QStackedLayout_connect_widgetRemoved(QStackedLayout* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQStackedLayout::connect(self, static_cast<void (QStackedLayout::*)(int)>(&QStackedLayout::widgetRemoved), self, local_caller{slot, callback, release});
}

void QStackedLayout_currentChanged(QStackedLayout* self, int index) {
	self->currentChanged(static_cast<int>(index));
}

void QStackedLayout_connect_currentChanged(QStackedLayout* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQStackedLayout::connect(self, static_cast<void (QStackedLayout::*)(int)>(&QStackedLayout::currentChanged), self, local_caller{slot, callback, release});
}

void QStackedLayout_setCurrentIndex(QStackedLayout* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QStackedLayout_setCurrentWidget(QStackedLayout* self, QWidget* w) {
	self->setCurrentWidget(w);
}

struct miqt_string QStackedLayout_tr2(const char* s, const char* c) {
	QString _ret = QStackedLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QStackedLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QStackedLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QStackedLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStackedLayout_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::metaObject();

}

void* QStackedLayout_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQStackedLayout*)(self) )->QStackedLayout::qt_metacast(param1);

}

int QStackedLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQStackedLayout*)(self) )->QStackedLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

int QStackedLayout_virtualbase_count(const void* self) {

	return ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::count();

}

void QStackedLayout_virtualbase_addItem(void* self, QLayoutItem* item) {

	( (VirtualQStackedLayout*)(self) )->QStackedLayout::addItem(item);

}

QSize* QStackedLayout_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQStackedLayout*)(self) )->QStackedLayout::sizeHint());

}

QSize* QStackedLayout_virtualbase_minimumSize(const void* self) {

	return new QSize(( (const VirtualQStackedLayout*)(self) )->QStackedLayout::minimumSize());

}

QLayoutItem* QStackedLayout_virtualbase_itemAt(const void* self, int param1) {

	return ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::itemAt(static_cast<int>(param1));

}

QLayoutItem* QStackedLayout_virtualbase_takeAt(void* self, int param1) {

	return ( (VirtualQStackedLayout*)(self) )->QStackedLayout::takeAt(static_cast<int>(param1));

}

void QStackedLayout_virtualbase_setGeometry(void* self, QRect* rect) {

	( (VirtualQStackedLayout*)(self) )->QStackedLayout::setGeometry(*rect);

}

bool QStackedLayout_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::hasHeightForWidth();

}

int QStackedLayout_virtualbase_heightForWidth(const void* self, int width) {

	return ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::heightForWidth(static_cast<int>(width));

}

void QStackedLayout_virtualbase_invalidate(void* self) {

	( (VirtualQStackedLayout*)(self) )->QStackedLayout::invalidate();

}

QRect* QStackedLayout_virtualbase_geometry(const void* self) {

	return new QRect(( (const VirtualQStackedLayout*)(self) )->QStackedLayout::geometry());

}

int QStackedLayout_virtualbase_expandingDirections(const void* self) {

	Qt::Orientations _ret = ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::expandingDirections();
	return static_cast<int>(_ret);

}

QSize* QStackedLayout_virtualbase_maximumSize(const void* self) {

	return new QSize(( (const VirtualQStackedLayout*)(self) )->QStackedLayout::maximumSize());

}

int QStackedLayout_virtualbase_indexOf(const void* self, QWidget* param1) {

	return ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::indexOf(param1);

}

bool QStackedLayout_virtualbase_isEmpty(const void* self) {

	return ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::isEmpty();

}

int QStackedLayout_virtualbase_controlTypes(const void* self) {

	QSizePolicy::ControlTypes _ret = ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::controlTypes();
	return static_cast<int>(_ret);

}

QLayout* QStackedLayout_virtualbase_layout(void* self) {

	return ( (VirtualQStackedLayout*)(self) )->QStackedLayout::layout();

}

void QStackedLayout_virtualbase_childEvent(void* self, QChildEvent* e) {

	( (VirtualQStackedLayout*)(self) )->QStackedLayout::childEvent(e);

}

bool QStackedLayout_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQStackedLayout*)(self) )->QStackedLayout::event(event);

}

bool QStackedLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQStackedLayout*)(self) )->QStackedLayout::eventFilter(watched, event);

}

void QStackedLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQStackedLayout*)(self) )->QStackedLayout::timerEvent(event);

}

void QStackedLayout_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQStackedLayout*)(self) )->QStackedLayout::customEvent(event);

}

void QStackedLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStackedLayout*)(self) )->QStackedLayout::connectNotify(*signal);

}

void QStackedLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStackedLayout*)(self) )->QStackedLayout::disconnectNotify(*signal);

}

int QStackedLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {

	return ( (const VirtualQStackedLayout*)(self) )->QStackedLayout::minimumHeightForWidth(static_cast<int>(param1));

}

QWidget* QStackedLayout_virtualbase_widget(void* self) {

	return ( (VirtualQStackedLayout*)(self) )->QStackedLayout::widget();

}

QSpacerItem* QStackedLayout_virtualbase_spacerItem(void* self) {

	return ( (VirtualQStackedLayout*)(self) )->QStackedLayout::spacerItem();

}

const QMetaObject* QStackedLayout_staticMetaObject() { return &QStackedLayout::staticMetaObject; }
void QStackedLayout_protectedbase_widgetEvent(void* self, QEvent* param1) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	self_cast->widgetEvent(param1);

}

void QStackedLayout_protectedbase_addChildLayout(void* self, QLayout* l) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	self_cast->addChildLayout(l);

}

void QStackedLayout_protectedbase_addChildWidget(void* self, QWidget* w) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	self_cast->addChildWidget(w);

}

bool QStackedLayout_protectedbase_adoptLayout(void* self, QLayout* layout) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	return self_cast->adoptLayout(layout);

}

QRect* QStackedLayout_protectedbase_alignmentRect(const void* self, QRect* param1) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QStackedLayout_protectedbase_sender(const void* self) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	return self_cast->sender();

}

int QStackedLayout_protectedbase_senderSignalIndex(const void* self) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QStackedLayout_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	return self_cast->receivers(signal);

}

bool QStackedLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQStackedLayout* self_cast = static_cast<VirtualQStackedLayout*>( (QStackedLayout*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QStackedLayout_delete(QStackedLayout* self) {
	delete self;
}

