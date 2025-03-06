#include <QAbstractSlider>
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
#include <QScrollBar>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionSlider>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qscrollbar.h>
#include "gen_qscrollbar.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQScrollBar final : public QScrollBar {
	struct QScrollBar_VTable* vtbl;
public:

	VirtualQScrollBar(struct QScrollBar_VTable* vtbl, QWidget* parent): QScrollBar(parent), vtbl(vtbl) {};
	VirtualQScrollBar(struct QScrollBar_VTable* vtbl): QScrollBar(), vtbl(vtbl) {};
	VirtualQScrollBar(struct QScrollBar_VTable* vtbl, Qt::Orientation param1): QScrollBar(param1), vtbl(vtbl) {};
	VirtualQScrollBar(struct QScrollBar_VTable* vtbl, Qt::Orientation param1, QWidget* parent): QScrollBar(param1, parent), vtbl(vtbl) {};

	virtual ~VirtualQScrollBar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScrollBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QScrollBar_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScrollBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QScrollBar_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScrollBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QScrollBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QScrollBar_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QScrollBar::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollBar_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QScrollBar::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QScrollBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QScrollBar::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QScrollBar::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QScrollBar::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QScrollBar::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_hideEvent(void* self, QHideEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QScrollBar::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_sliderChange(void* self, int change);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QScrollBar::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionSlider* option) const override {
		if (vtbl->initStyleOption == 0) {
			QScrollBar::initStyleOption(option);
			return;
		}

		QStyleOptionSlider* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_initStyleOption(const void* self, QStyleOptionSlider* option);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QScrollBar::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QScrollBar::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_timerEvent(void* self, QTimerEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QScrollBar::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QScrollBar::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollBar_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QScrollBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QScrollBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QScrollBar_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QScrollBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollBar_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QScrollBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QScrollBar_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QScrollBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QScrollBar_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QScrollBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QScrollBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QScrollBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QScrollBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QScrollBar::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QScrollBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QScrollBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QScrollBar::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QScrollBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QScrollBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QScrollBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QScrollBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QScrollBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QScrollBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QScrollBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QScrollBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QScrollBar::nativeEvent(eventType, message, result);
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

	friend bool QScrollBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QScrollBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollBar_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QScrollBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QScrollBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QScrollBar_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QScrollBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QScrollBar_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QScrollBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QScrollBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QScrollBar_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QScrollBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollBar_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QScrollBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QScrollBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScrollBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScrollBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScrollBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScrollBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QScrollBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QScrollBar_protectedbase_setRepeatAction(void* self, int action);
	friend int QScrollBar_protectedbase_repeatAction(const void* self);
	friend void QScrollBar_protectedbase_updateMicroFocus(void* self);
	friend void QScrollBar_protectedbase_create(void* self);
	friend void QScrollBar_protectedbase_destroy(void* self);
	friend bool QScrollBar_protectedbase_focusNextChild(void* self);
	friend bool QScrollBar_protectedbase_focusPreviousChild(void* self);
	friend QObject* QScrollBar_protectedbase_sender(const void* self);
	friend int QScrollBar_protectedbase_senderSignalIndex(const void* self);
	friend int QScrollBar_protectedbase_receivers(const void* self, const char* signal);
	friend bool QScrollBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QScrollBar* QScrollBar_new(struct QScrollBar_VTable* vtbl, QWidget* parent) {
	return new VirtualQScrollBar(vtbl, parent);
}

QScrollBar* QScrollBar_new2(struct QScrollBar_VTable* vtbl) {
	return new VirtualQScrollBar(vtbl);
}

QScrollBar* QScrollBar_new3(struct QScrollBar_VTable* vtbl, int param1) {
	return new VirtualQScrollBar(vtbl, static_cast<Qt::Orientation>(param1));
}

QScrollBar* QScrollBar_new4(struct QScrollBar_VTable* vtbl, int param1, QWidget* parent) {
	return new VirtualQScrollBar(vtbl, static_cast<Qt::Orientation>(param1), parent);
}

void QScrollBar_virtbase(QScrollBar* src, QAbstractSlider** outptr_QAbstractSlider) {
	*outptr_QAbstractSlider = static_cast<QAbstractSlider*>(src);
}

QMetaObject* QScrollBar_metaObject(const QScrollBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScrollBar_metacast(QScrollBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScrollBar_metacall(QScrollBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QScrollBar_tr(const char* s) {
	QString _ret = QScrollBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QScrollBar_sizeHint(const QScrollBar* self) {
	return new QSize(self->sizeHint());
}

bool QScrollBar_event(QScrollBar* self, QEvent* event) {
	return self->event(event);
}

struct miqt_string QScrollBar_tr2(const char* s, const char* c) {
	QString _ret = QScrollBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QScrollBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QScrollBar_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQScrollBar*)(self) )->QScrollBar::metaObject();

}

void* QScrollBar_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQScrollBar*)(self) )->QScrollBar::qt_metacast(param1);

}

int QScrollBar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQScrollBar*)(self) )->QScrollBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QScrollBar_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQScrollBar*)(self) )->QScrollBar::sizeHint());

}

bool QScrollBar_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQScrollBar*)(self) )->QScrollBar::event(event);

}

void QScrollBar_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::wheelEvent(param1);

}

void QScrollBar_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::paintEvent(param1);

}

void QScrollBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::mousePressEvent(param1);

}

void QScrollBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::mouseReleaseEvent(param1);

}

void QScrollBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::mouseMoveEvent(param1);

}

void QScrollBar_virtualbase_hideEvent(void* self, QHideEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::hideEvent(param1);

}

void QScrollBar_virtualbase_sliderChange(void* self, int change) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::sliderChange(static_cast<VirtualQScrollBar::SliderChange>(change));

}

void QScrollBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::contextMenuEvent(param1);

}

void QScrollBar_virtualbase_initStyleOption(const void* self, QStyleOptionSlider* option) {

	( (const VirtualQScrollBar*)(self) )->QScrollBar::initStyleOption(option);

}

void QScrollBar_virtualbase_keyPressEvent(void* self, QKeyEvent* ev) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::keyPressEvent(ev);

}

void QScrollBar_virtualbase_timerEvent(void* self, QTimerEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::timerEvent(param1);

}

void QScrollBar_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::changeEvent(e);

}

int QScrollBar_virtualbase_devType(const void* self) {

	return ( (const VirtualQScrollBar*)(self) )->QScrollBar::devType();

}

void QScrollBar_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::setVisible(visible);

}

QSize* QScrollBar_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQScrollBar*)(self) )->QScrollBar::minimumSizeHint());

}

int QScrollBar_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQScrollBar*)(self) )->QScrollBar::heightForWidth(static_cast<int>(param1));

}

bool QScrollBar_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQScrollBar*)(self) )->QScrollBar::hasHeightForWidth();

}

QPaintEngine* QScrollBar_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQScrollBar*)(self) )->QScrollBar::paintEngine();

}

void QScrollBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::mouseDoubleClickEvent(event);

}

void QScrollBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::keyReleaseEvent(event);

}

void QScrollBar_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::focusInEvent(event);

}

void QScrollBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::focusOutEvent(event);

}

void QScrollBar_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::enterEvent(event);

}

void QScrollBar_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::leaveEvent(event);

}

void QScrollBar_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::moveEvent(event);

}

void QScrollBar_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::resizeEvent(event);

}

void QScrollBar_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::closeEvent(event);

}

void QScrollBar_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::tabletEvent(event);

}

void QScrollBar_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::actionEvent(event);

}

void QScrollBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::dragEnterEvent(event);

}

void QScrollBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::dragMoveEvent(event);

}

void QScrollBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::dragLeaveEvent(event);

}

void QScrollBar_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::dropEvent(event);

}

void QScrollBar_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::showEvent(event);

}

bool QScrollBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQScrollBar*)(self) )->QScrollBar::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QScrollBar_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQScrollBar*)(self) )->QScrollBar::metric(static_cast<VirtualQScrollBar::PaintDeviceMetric>(param1));

}

void QScrollBar_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQScrollBar*)(self) )->QScrollBar::initPainter(painter);

}

QPaintDevice* QScrollBar_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQScrollBar*)(self) )->QScrollBar::redirected(offset);

}

QPainter* QScrollBar_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQScrollBar*)(self) )->QScrollBar::sharedPainter();

}

void QScrollBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::inputMethodEvent(param1);

}

QVariant* QScrollBar_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQScrollBar*)(self) )->QScrollBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QScrollBar_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQScrollBar*)(self) )->QScrollBar::focusNextPrevChild(next);

}

bool QScrollBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQScrollBar*)(self) )->QScrollBar::eventFilter(watched, event);

}

void QScrollBar_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::childEvent(event);

}

void QScrollBar_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::customEvent(event);

}

void QScrollBar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::connectNotify(*signal);

}

void QScrollBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQScrollBar*)(self) )->QScrollBar::disconnectNotify(*signal);

}

const QMetaObject* QScrollBar_staticMetaObject() { return &QScrollBar::staticMetaObject; }
void QScrollBar_protectedbase_setRepeatAction(void* self, int action) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	self_cast->setRepeatAction(static_cast<VirtualQScrollBar::SliderAction>(action));

}

int QScrollBar_protectedbase_repeatAction(const void* self) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	VirtualQScrollBar::SliderAction _ret = self_cast->repeatAction();
	return static_cast<int>(_ret);

}

void QScrollBar_protectedbase_updateMicroFocus(void* self) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	self_cast->updateMicroFocus();

}

void QScrollBar_protectedbase_create(void* self) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	self_cast->create();

}

void QScrollBar_protectedbase_destroy(void* self) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	self_cast->destroy();

}

bool QScrollBar_protectedbase_focusNextChild(void* self) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->focusNextChild();

}

bool QScrollBar_protectedbase_focusPreviousChild(void* self) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QScrollBar_protectedbase_sender(const void* self) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->sender();

}

int QScrollBar_protectedbase_senderSignalIndex(const void* self) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QScrollBar_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->receivers(signal);

}

bool QScrollBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQScrollBar* self_cast = static_cast<VirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QScrollBar_delete(QScrollBar* self) {
	delete self;
}

