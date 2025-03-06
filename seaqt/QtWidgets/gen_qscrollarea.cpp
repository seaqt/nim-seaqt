#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMargins>
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
#include <QScrollArea>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qscrollarea.h>
#include "gen_qscrollarea.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQScrollArea final : public QScrollArea {
	struct QScrollArea_VTable* vtbl;
public:

	VirtualQScrollArea(struct QScrollArea_VTable* vtbl, QWidget* parent): QScrollArea(parent), vtbl(vtbl) {};
	VirtualQScrollArea(struct QScrollArea_VTable* vtbl): QScrollArea(), vtbl(vtbl) {};

	virtual ~VirtualQScrollArea() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScrollArea::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QScrollArea_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScrollArea::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QScrollArea_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScrollArea::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollArea_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QScrollArea::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QScrollArea_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QScrollArea::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QScrollArea::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QScrollArea::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QScrollArea::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QScrollArea::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QScrollArea_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QScrollArea::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QScrollArea_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QScrollArea::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QScrollArea_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QScrollArea::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QScrollArea::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_viewportEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QScrollArea::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QScrollArea::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QScrollArea::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QScrollArea::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QScrollArea::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QScrollArea::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QScrollArea::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QScrollArea::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QScrollArea::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QScrollArea::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QScrollArea::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_dropEvent(void* self, QDropEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QScrollArea::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QScrollArea::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QScrollArea::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollArea_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QScrollArea::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QScrollArea::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollArea_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QScrollArea::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QScrollArea::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QScrollArea_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QScrollArea::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QScrollArea::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QScrollArea::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QScrollArea::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QScrollArea::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QScrollArea::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QScrollArea::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QScrollArea::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QScrollArea::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QScrollArea::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QScrollArea::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QScrollArea::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QScrollArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QScrollArea::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QScrollArea_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QScrollArea::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QScrollArea::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QScrollArea_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QScrollArea::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QScrollArea_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QScrollArea::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QScrollArea::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QScrollArea_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QScrollArea::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScrollArea::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScrollArea::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScrollArea::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScrollArea::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QScrollArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QScrollArea_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom);
	friend QMargins* QScrollArea_protectedbase_viewportMargins(const void* self);
	friend void QScrollArea_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QScrollArea_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option);
	friend void QScrollArea_protectedbase_updateMicroFocus(void* self);
	friend void QScrollArea_protectedbase_create(void* self);
	friend void QScrollArea_protectedbase_destroy(void* self);
	friend bool QScrollArea_protectedbase_focusNextChild(void* self);
	friend bool QScrollArea_protectedbase_focusPreviousChild(void* self);
	friend QObject* QScrollArea_protectedbase_sender(const void* self);
	friend int QScrollArea_protectedbase_senderSignalIndex(const void* self);
	friend int QScrollArea_protectedbase_receivers(const void* self, const char* signal);
	friend bool QScrollArea_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QScrollArea* QScrollArea_new(struct QScrollArea_VTable* vtbl, QWidget* parent) {
	return new VirtualQScrollArea(vtbl, parent);
}

QScrollArea* QScrollArea_new2(struct QScrollArea_VTable* vtbl) {
	return new VirtualQScrollArea(vtbl);
}

void QScrollArea_virtbase(QScrollArea* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QScrollArea_metaObject(const QScrollArea* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScrollArea_metacast(QScrollArea* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScrollArea_metacall(QScrollArea* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QScrollArea_tr(const char* s) {
	QString _ret = QScrollArea::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollArea_trUtf8(const char* s) {
	QString _ret = QScrollArea::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWidget* QScrollArea_widget(const QScrollArea* self) {
	return self->widget();
}

void QScrollArea_setWidget(QScrollArea* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QScrollArea_takeWidget(QScrollArea* self) {
	return self->takeWidget();
}

bool QScrollArea_widgetResizable(const QScrollArea* self) {
	return self->widgetResizable();
}

void QScrollArea_setWidgetResizable(QScrollArea* self, bool resizable) {
	self->setWidgetResizable(resizable);
}

QSize* QScrollArea_sizeHint(const QScrollArea* self) {
	return new QSize(self->sizeHint());
}

bool QScrollArea_focusNextPrevChild(QScrollArea* self, bool next) {
	return self->focusNextPrevChild(next);
}

int QScrollArea_alignment(const QScrollArea* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QScrollArea_setAlignment(QScrollArea* self, int alignment) {
	self->setAlignment(static_cast<Qt::Alignment>(alignment));
}

void QScrollArea_ensureVisible(QScrollArea* self, int x, int y) {
	self->ensureVisible(static_cast<int>(x), static_cast<int>(y));
}

void QScrollArea_ensureWidgetVisible(QScrollArea* self, QWidget* childWidget) {
	self->ensureWidgetVisible(childWidget);
}

struct miqt_string QScrollArea_tr2(const char* s, const char* c) {
	QString _ret = QScrollArea::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollArea_tr3(const char* s, const char* c, int n) {
	QString _ret = QScrollArea::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollArea_trUtf82(const char* s, const char* c) {
	QString _ret = QScrollArea::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollArea_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QScrollArea::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QScrollArea_ensureVisible3(QScrollArea* self, int x, int y, int xmargin) {
	self->ensureVisible(static_cast<int>(x), static_cast<int>(y), static_cast<int>(xmargin));
}

void QScrollArea_ensureVisible4(QScrollArea* self, int x, int y, int xmargin, int ymargin) {
	self->ensureVisible(static_cast<int>(x), static_cast<int>(y), static_cast<int>(xmargin), static_cast<int>(ymargin));
}

void QScrollArea_ensureWidgetVisible2(QScrollArea* self, QWidget* childWidget, int xmargin) {
	self->ensureWidgetVisible(childWidget, static_cast<int>(xmargin));
}

void QScrollArea_ensureWidgetVisible3(QScrollArea* self, QWidget* childWidget, int xmargin, int ymargin) {
	self->ensureWidgetVisible(childWidget, static_cast<int>(xmargin), static_cast<int>(ymargin));
}

QMetaObject* QScrollArea_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQScrollArea*)(self) )->QScrollArea::metaObject();

}

void* QScrollArea_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQScrollArea*)(self) )->QScrollArea::qt_metacast(param1);

}

int QScrollArea_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQScrollArea*)(self) )->QScrollArea::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QScrollArea_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQScrollArea*)(self) )->QScrollArea::sizeHint());

}

bool QScrollArea_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQScrollArea*)(self) )->QScrollArea::focusNextPrevChild(next);

}

bool QScrollArea_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQScrollArea*)(self) )->QScrollArea::event(param1);

}

bool QScrollArea_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQScrollArea*)(self) )->QScrollArea::eventFilter(param1, param2);

}

void QScrollArea_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::resizeEvent(param1);

}

void QScrollArea_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

QSize* QScrollArea_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQScrollArea*)(self) )->QScrollArea::viewportSizeHint());

}

QSize* QScrollArea_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQScrollArea*)(self) )->QScrollArea::minimumSizeHint());

}

void QScrollArea_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::setupViewport(viewport);

}

bool QScrollArea_virtualbase_viewportEvent(void* self, QEvent* param1) {

	return ( (VirtualQScrollArea*)(self) )->QScrollArea::viewportEvent(param1);

}

void QScrollArea_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::paintEvent(param1);

}

void QScrollArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::mousePressEvent(param1);

}

void QScrollArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::mouseReleaseEvent(param1);

}

void QScrollArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::mouseDoubleClickEvent(param1);

}

void QScrollArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::mouseMoveEvent(param1);

}

void QScrollArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::wheelEvent(param1);

}

void QScrollArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::contextMenuEvent(param1);

}

void QScrollArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::dragEnterEvent(param1);

}

void QScrollArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::dragMoveEvent(param1);

}

void QScrollArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::dragLeaveEvent(param1);

}

void QScrollArea_virtualbase_dropEvent(void* self, QDropEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::dropEvent(param1);

}

void QScrollArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::keyPressEvent(param1);

}

void QScrollArea_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::changeEvent(param1);

}

int QScrollArea_virtualbase_devType(const void* self) {

	return ( (const VirtualQScrollArea*)(self) )->QScrollArea::devType();

}

void QScrollArea_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::setVisible(visible);

}

int QScrollArea_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQScrollArea*)(self) )->QScrollArea::heightForWidth(static_cast<int>(param1));

}

bool QScrollArea_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQScrollArea*)(self) )->QScrollArea::hasHeightForWidth();

}

QPaintEngine* QScrollArea_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQScrollArea*)(self) )->QScrollArea::paintEngine();

}

void QScrollArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::keyReleaseEvent(event);

}

void QScrollArea_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::focusInEvent(event);

}

void QScrollArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::focusOutEvent(event);

}

void QScrollArea_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::enterEvent(event);

}

void QScrollArea_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::leaveEvent(event);

}

void QScrollArea_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::moveEvent(event);

}

void QScrollArea_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::closeEvent(event);

}

void QScrollArea_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::tabletEvent(event);

}

void QScrollArea_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::actionEvent(event);

}

void QScrollArea_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::showEvent(event);

}

void QScrollArea_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::hideEvent(event);

}

bool QScrollArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQScrollArea*)(self) )->QScrollArea::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QScrollArea_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQScrollArea*)(self) )->QScrollArea::metric(static_cast<VirtualQScrollArea::PaintDeviceMetric>(param1));

}

void QScrollArea_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQScrollArea*)(self) )->QScrollArea::initPainter(painter);

}

QPaintDevice* QScrollArea_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQScrollArea*)(self) )->QScrollArea::redirected(offset);

}

QPainter* QScrollArea_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQScrollArea*)(self) )->QScrollArea::sharedPainter();

}

void QScrollArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::inputMethodEvent(param1);

}

QVariant* QScrollArea_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQScrollArea*)(self) )->QScrollArea::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

void QScrollArea_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::timerEvent(event);

}

void QScrollArea_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::childEvent(event);

}

void QScrollArea_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::customEvent(event);

}

void QScrollArea_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::connectNotify(*signal);

}

void QScrollArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQScrollArea*)(self) )->QScrollArea::disconnectNotify(*signal);

}

const QMetaObject* QScrollArea_staticMetaObject() { return &QScrollArea::staticMetaObject; }
void QScrollArea_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QScrollArea_protectedbase_viewportMargins(const void* self) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	return new QMargins(self_cast->viewportMargins());

}

void QScrollArea_protectedbase_drawFrame(void* self, QPainter* param1) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	self_cast->drawFrame(param1);

}

void QScrollArea_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	self_cast->initStyleOption(option);

}

void QScrollArea_protectedbase_updateMicroFocus(void* self) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	self_cast->updateMicroFocus();

}

void QScrollArea_protectedbase_create(void* self) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	self_cast->create();

}

void QScrollArea_protectedbase_destroy(void* self) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	self_cast->destroy();

}

bool QScrollArea_protectedbase_focusNextChild(void* self) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	return self_cast->focusNextChild();

}

bool QScrollArea_protectedbase_focusPreviousChild(void* self) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QScrollArea_protectedbase_sender(const void* self) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	return self_cast->sender();

}

int QScrollArea_protectedbase_senderSignalIndex(const void* self) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QScrollArea_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	return self_cast->receivers(signal);

}

bool QScrollArea_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQScrollArea* self_cast = static_cast<VirtualQScrollArea*>( (QScrollArea*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QScrollArea_delete(QScrollArea* self) {
	delete self;
}

