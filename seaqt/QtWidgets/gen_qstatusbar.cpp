#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QStatusBar>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qstatusbar.h>
#include "gen_qstatusbar.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQStatusBar final : public QStatusBar {
	struct QStatusBar_VTable* vtbl;
public:

	VirtualQStatusBar(struct QStatusBar_VTable* vtbl, QWidget* parent): QStatusBar(parent), vtbl(vtbl) {};
	VirtualQStatusBar(struct QStatusBar_VTable* vtbl): QStatusBar(), vtbl(vtbl) {};

	virtual ~VirtualQStatusBar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStatusBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QStatusBar_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStatusBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QStatusBar_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStatusBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QStatusBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QStatusBar::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QStatusBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QStatusBar::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QStatusBar::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStatusBar_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QStatusBar::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QStatusBar_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QStatusBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QStatusBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QStatusBar_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QStatusBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QStatusBar_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QStatusBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStatusBar_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QStatusBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QStatusBar_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QStatusBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QStatusBar_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QStatusBar::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QStatusBar::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QStatusBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QStatusBar::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QStatusBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QStatusBar::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QStatusBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QStatusBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QStatusBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QStatusBar::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QStatusBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QStatusBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QStatusBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QStatusBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QStatusBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QStatusBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QStatusBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QStatusBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QStatusBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QStatusBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QStatusBar::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QStatusBar::nativeEvent(eventType, message, result);
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

	friend bool QStatusBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QStatusBar::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QStatusBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QStatusBar_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QStatusBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QStatusBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QStatusBar_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QStatusBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QStatusBar_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QStatusBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QStatusBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QStatusBar_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QStatusBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QStatusBar_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStatusBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QStatusBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStatusBar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStatusBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStatusBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStatusBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStatusBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QStatusBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QStatusBar_protectedbase_reformat(bool* _dynamic_cast_ok, void* self);
	friend void QStatusBar_protectedbase_hideOrShow(bool* _dynamic_cast_ok, void* self);
	friend void QStatusBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QStatusBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QStatusBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QStatusBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QStatusBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QStatusBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QStatusBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QStatusBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QStatusBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QStatusBar* QStatusBar_new(struct QStatusBar_VTable* vtbl, QWidget* parent) {
	return new VirtualQStatusBar(vtbl, parent);
}

QStatusBar* QStatusBar_new2(struct QStatusBar_VTable* vtbl) {
	return new VirtualQStatusBar(vtbl);
}

void QStatusBar_virtbase(QStatusBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QStatusBar_metaObject(const QStatusBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStatusBar_metacast(QStatusBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStatusBar_metacall(QStatusBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStatusBar_tr(const char* s) {
	QString _ret = QStatusBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStatusBar_addWidget(QStatusBar* self, QWidget* widget) {
	self->addWidget(widget);
}

int QStatusBar_insertWidget(QStatusBar* self, int index, QWidget* widget) {
	return self->insertWidget(static_cast<int>(index), widget);
}

void QStatusBar_addPermanentWidget(QStatusBar* self, QWidget* widget) {
	self->addPermanentWidget(widget);
}

int QStatusBar_insertPermanentWidget(QStatusBar* self, int index, QWidget* widget) {
	return self->insertPermanentWidget(static_cast<int>(index), widget);
}

void QStatusBar_removeWidget(QStatusBar* self, QWidget* widget) {
	self->removeWidget(widget);
}

void QStatusBar_setSizeGripEnabled(QStatusBar* self, bool sizeGripEnabled) {
	self->setSizeGripEnabled(sizeGripEnabled);
}

bool QStatusBar_isSizeGripEnabled(const QStatusBar* self) {
	return self->isSizeGripEnabled();
}

struct miqt_string QStatusBar_currentMessage(const QStatusBar* self) {
	QString _ret = self->currentMessage();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStatusBar_showMessage(QStatusBar* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->showMessage(text_QString);
}

void QStatusBar_clearMessage(QStatusBar* self) {
	self->clearMessage();
}

void QStatusBar_messageChanged(QStatusBar* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->messageChanged(text_QString);
}

void QStatusBar_connect_messageChanged(QStatusBar* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQStatusBar::connect(self, static_cast<void (QStatusBar::*)(const QString&)>(&QStatusBar::messageChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QStatusBar_tr2(const char* s, const char* c) {
	QString _ret = QStatusBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStatusBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QStatusBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStatusBar_addWidget2(QStatusBar* self, QWidget* widget, int stretch) {
	self->addWidget(widget, static_cast<int>(stretch));
}

int QStatusBar_insertWidget3(QStatusBar* self, int index, QWidget* widget, int stretch) {
	return self->insertWidget(static_cast<int>(index), widget, static_cast<int>(stretch));
}

void QStatusBar_addPermanentWidget2(QStatusBar* self, QWidget* widget, int stretch) {
	self->addPermanentWidget(widget, static_cast<int>(stretch));
}

int QStatusBar_insertPermanentWidget3(QStatusBar* self, int index, QWidget* widget, int stretch) {
	return self->insertPermanentWidget(static_cast<int>(index), widget, static_cast<int>(stretch));
}

void QStatusBar_showMessage2(QStatusBar* self, struct miqt_string text, int timeout) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->showMessage(text_QString, static_cast<int>(timeout));
}

QMetaObject* QStatusBar_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQStatusBar*)(self) )->QStatusBar::metaObject();

}

void* QStatusBar_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQStatusBar*)(self) )->QStatusBar::qt_metacast(param1);

}

int QStatusBar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQStatusBar*)(self) )->QStatusBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QStatusBar_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::showEvent(param1);

}

void QStatusBar_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::paintEvent(param1);

}

void QStatusBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::resizeEvent(param1);

}

bool QStatusBar_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQStatusBar*)(self) )->QStatusBar::event(param1);

}

int QStatusBar_virtualbase_devType(const void* self) {

	return ( (const VirtualQStatusBar*)(self) )->QStatusBar::devType();

}

void QStatusBar_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::setVisible(visible);

}

QSize* QStatusBar_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQStatusBar*)(self) )->QStatusBar::sizeHint());

}

QSize* QStatusBar_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQStatusBar*)(self) )->QStatusBar::minimumSizeHint());

}

int QStatusBar_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQStatusBar*)(self) )->QStatusBar::heightForWidth(static_cast<int>(param1));

}

bool QStatusBar_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQStatusBar*)(self) )->QStatusBar::hasHeightForWidth();

}

QPaintEngine* QStatusBar_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQStatusBar*)(self) )->QStatusBar::paintEngine();

}

void QStatusBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::mousePressEvent(event);

}

void QStatusBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::mouseReleaseEvent(event);

}

void QStatusBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::mouseDoubleClickEvent(event);

}

void QStatusBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::mouseMoveEvent(event);

}

void QStatusBar_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::wheelEvent(event);

}

void QStatusBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::keyPressEvent(event);

}

void QStatusBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::keyReleaseEvent(event);

}

void QStatusBar_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::focusInEvent(event);

}

void QStatusBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::focusOutEvent(event);

}

void QStatusBar_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::enterEvent(event);

}

void QStatusBar_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::leaveEvent(event);

}

void QStatusBar_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::moveEvent(event);

}

void QStatusBar_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::closeEvent(event);

}

void QStatusBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::contextMenuEvent(event);

}

void QStatusBar_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::tabletEvent(event);

}

void QStatusBar_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::actionEvent(event);

}

void QStatusBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::dragEnterEvent(event);

}

void QStatusBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::dragMoveEvent(event);

}

void QStatusBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::dragLeaveEvent(event);

}

void QStatusBar_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::dropEvent(event);

}

void QStatusBar_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::hideEvent(event);

}

bool QStatusBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQStatusBar*)(self) )->QStatusBar::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

void QStatusBar_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::changeEvent(param1);

}

int QStatusBar_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQStatusBar*)(self) )->QStatusBar::metric(static_cast<VirtualQStatusBar::PaintDeviceMetric>(param1));

}

void QStatusBar_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQStatusBar*)(self) )->QStatusBar::initPainter(painter);

}

QPaintDevice* QStatusBar_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQStatusBar*)(self) )->QStatusBar::redirected(offset);

}

QPainter* QStatusBar_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQStatusBar*)(self) )->QStatusBar::sharedPainter();

}

void QStatusBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::inputMethodEvent(param1);

}

QVariant* QStatusBar_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQStatusBar*)(self) )->QStatusBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QStatusBar_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQStatusBar*)(self) )->QStatusBar::focusNextPrevChild(next);

}

bool QStatusBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQStatusBar*)(self) )->QStatusBar::eventFilter(watched, event);

}

void QStatusBar_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::timerEvent(event);

}

void QStatusBar_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::childEvent(event);

}

void QStatusBar_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::customEvent(event);

}

void QStatusBar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::connectNotify(*signal);

}

void QStatusBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQStatusBar*)(self) )->QStatusBar::disconnectNotify(*signal);

}

const QMetaObject* QStatusBar_staticMetaObject() { return &QStatusBar::staticMetaObject; }
void QStatusBar_protectedbase_reformat(bool* _dynamic_cast_ok, void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->reformat();

}

void QStatusBar_protectedbase_hideOrShow(bool* _dynamic_cast_ok, void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->hideOrShow();

}

void QStatusBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QStatusBar_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QStatusBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QStatusBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QStatusBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QStatusBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QStatusBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QStatusBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QStatusBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQStatusBar* self_cast = dynamic_cast<VirtualQStatusBar*>( (QStatusBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QStatusBar_delete(QStatusBar* self) {
	delete self;
}

