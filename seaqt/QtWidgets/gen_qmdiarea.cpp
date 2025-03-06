#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QBrush>
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
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMargins>
#include <QMdiArea>
#include <QMdiSubWindow>
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
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qmdiarea.h>
#include "gen_qmdiarea.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQMdiArea final : public QMdiArea {
	struct QMdiArea_VTable* vtbl;
public:

	VirtualQMdiArea(struct QMdiArea_VTable* vtbl, QWidget* parent): QMdiArea(parent), vtbl(vtbl) {};
	VirtualQMdiArea(struct QMdiArea_VTable* vtbl): QMdiArea(), vtbl(vtbl) {};

	virtual ~VirtualQMdiArea() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMdiArea::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QMdiArea_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMdiArea::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QMdiArea_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMdiArea::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiArea_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMdiArea::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMdiArea_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMdiArea::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMdiArea_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QMdiArea::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMdiArea::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMdiArea::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* paintEvent) override {
		if (vtbl->paintEvent == 0) {
			QMdiArea::paintEvent(paintEvent);
			return;
		}

		QPaintEvent* sigval1 = paintEvent;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_paintEvent(void* self, QPaintEvent* paintEvent);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* childEvent) override {
		if (vtbl->childEvent == 0) {
			QMdiArea::childEvent(childEvent);
			return;
		}

		QChildEvent* sigval1 = childEvent;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_childEvent(void* self, QChildEvent* childEvent);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* resizeEvent) override {
		if (vtbl->resizeEvent == 0) {
			QMdiArea::resizeEvent(resizeEvent);
			return;
		}

		QResizeEvent* sigval1 = resizeEvent;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_resizeEvent(void* self, QResizeEvent* resizeEvent);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* timerEvent) override {
		if (vtbl->timerEvent == 0) {
			QMdiArea::timerEvent(timerEvent);
			return;
		}

		QTimerEvent* sigval1 = timerEvent;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_timerEvent(void* self, QTimerEvent* timerEvent);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* showEvent) override {
		if (vtbl->showEvent == 0) {
			QMdiArea::showEvent(showEvent);
			return;
		}

		QShowEvent* sigval1 = showEvent;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_showEvent(void* self, QShowEvent* showEvent);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QMdiArea::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_viewportEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QMdiArea::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QMdiArea_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QMdiArea::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMdiArea::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMdiArea::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMdiArea::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QMdiArea::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QMdiArea::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QMdiArea::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QMdiArea::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMdiArea::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QMdiArea::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_dropEvent(void* self, QDropEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QMdiArea::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QMdiArea::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMdiArea_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMdiArea::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QMdiArea::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMdiArea::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiArea_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMdiArea::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMdiArea::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiArea_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMdiArea::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMdiArea::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QMdiArea_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMdiArea::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QMdiArea::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QMdiArea::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMdiArea::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QMdiArea::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMdiArea::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMdiArea::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMdiArea::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QMdiArea::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QMdiArea::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMdiArea::nativeEvent(eventType, message, result);
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

	friend bool QMdiArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMdiArea::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiArea_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMdiArea::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMdiArea::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMdiArea_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMdiArea::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QMdiArea_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMdiArea::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMdiArea::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMdiArea_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMdiArea::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMdiArea::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMdiArea::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMdiArea::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QMdiArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMdiArea_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom);
	friend QMargins* QMdiArea_protectedbase_viewportMargins(const void* self);
	friend void QMdiArea_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QMdiArea_protectedbase_updateMicroFocus(void* self);
	friend void QMdiArea_protectedbase_create(void* self);
	friend void QMdiArea_protectedbase_destroy(void* self);
	friend bool QMdiArea_protectedbase_focusNextChild(void* self);
	friend bool QMdiArea_protectedbase_focusPreviousChild(void* self);
	friend QObject* QMdiArea_protectedbase_sender(const void* self);
	friend int QMdiArea_protectedbase_senderSignalIndex(const void* self);
	friend int QMdiArea_protectedbase_receivers(const void* self, const char* signal);
	friend bool QMdiArea_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QMdiArea* QMdiArea_new(struct QMdiArea_VTable* vtbl, QWidget* parent) {
	return new VirtualQMdiArea(vtbl, parent);
}

QMdiArea* QMdiArea_new2(struct QMdiArea_VTable* vtbl) {
	return new VirtualQMdiArea(vtbl);
}

void QMdiArea_virtbase(QMdiArea* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QMdiArea_metaObject(const QMdiArea* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMdiArea_metacast(QMdiArea* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMdiArea_metacall(QMdiArea* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMdiArea_tr(const char* s) {
	QString _ret = QMdiArea::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QMdiArea_sizeHint(const QMdiArea* self) {
	return new QSize(self->sizeHint());
}

QSize* QMdiArea_minimumSizeHint(const QMdiArea* self) {
	return new QSize(self->minimumSizeHint());
}

QMdiSubWindow* QMdiArea_currentSubWindow(const QMdiArea* self) {
	return self->currentSubWindow();
}

QMdiSubWindow* QMdiArea_activeSubWindow(const QMdiArea* self) {
	return self->activeSubWindow();
}

struct miqt_array /* of QMdiSubWindow* */  QMdiArea_subWindowList(const QMdiArea* self) {
	QList<QMdiSubWindow *> _ret = self->subWindowList();
	// Convert QList<> from C++ memory to manually-managed C memory
	QMdiSubWindow** _arr = static_cast<QMdiSubWindow**>(malloc(sizeof(QMdiSubWindow*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMdiSubWindow* QMdiArea_addSubWindow(QMdiArea* self, QWidget* widget) {
	return self->addSubWindow(widget);
}

void QMdiArea_removeSubWindow(QMdiArea* self, QWidget* widget) {
	self->removeSubWindow(widget);
}

QBrush* QMdiArea_background(const QMdiArea* self) {
	return new QBrush(self->background());
}

void QMdiArea_setBackground(QMdiArea* self, QBrush* background) {
	self->setBackground(*background);
}

int QMdiArea_activationOrder(const QMdiArea* self) {
	QMdiArea::WindowOrder _ret = self->activationOrder();
	return static_cast<int>(_ret);
}

void QMdiArea_setActivationOrder(QMdiArea* self, int order) {
	self->setActivationOrder(static_cast<QMdiArea::WindowOrder>(order));
}

void QMdiArea_setOption(QMdiArea* self, int option) {
	self->setOption(static_cast<QMdiArea::AreaOption>(option));
}

bool QMdiArea_testOption(const QMdiArea* self, int opton) {
	return self->testOption(static_cast<QMdiArea::AreaOption>(opton));
}

void QMdiArea_setViewMode(QMdiArea* self, int mode) {
	self->setViewMode(static_cast<QMdiArea::ViewMode>(mode));
}

int QMdiArea_viewMode(const QMdiArea* self) {
	QMdiArea::ViewMode _ret = self->viewMode();
	return static_cast<int>(_ret);
}

bool QMdiArea_documentMode(const QMdiArea* self) {
	return self->documentMode();
}

void QMdiArea_setDocumentMode(QMdiArea* self, bool enabled) {
	self->setDocumentMode(enabled);
}

void QMdiArea_setTabsClosable(QMdiArea* self, bool closable) {
	self->setTabsClosable(closable);
}

bool QMdiArea_tabsClosable(const QMdiArea* self) {
	return self->tabsClosable();
}

void QMdiArea_setTabsMovable(QMdiArea* self, bool movable) {
	self->setTabsMovable(movable);
}

bool QMdiArea_tabsMovable(const QMdiArea* self) {
	return self->tabsMovable();
}

void QMdiArea_setTabShape(QMdiArea* self, int shape) {
	self->setTabShape(static_cast<QTabWidget::TabShape>(shape));
}

int QMdiArea_tabShape(const QMdiArea* self) {
	QTabWidget::TabShape _ret = self->tabShape();
	return static_cast<int>(_ret);
}

void QMdiArea_setTabPosition(QMdiArea* self, int position) {
	self->setTabPosition(static_cast<QTabWidget::TabPosition>(position));
}

int QMdiArea_tabPosition(const QMdiArea* self) {
	QTabWidget::TabPosition _ret = self->tabPosition();
	return static_cast<int>(_ret);
}

void QMdiArea_subWindowActivated(QMdiArea* self, QMdiSubWindow* param1) {
	self->subWindowActivated(param1);
}

void QMdiArea_connect_subWindowActivated(QMdiArea* self, intptr_t slot, void (*callback)(intptr_t, QMdiSubWindow*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QMdiSubWindow*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QMdiSubWindow*);
		void operator()(QMdiSubWindow* param1) {
			QMdiSubWindow* sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQMdiArea::connect(self, static_cast<void (QMdiArea::*)(QMdiSubWindow*)>(&QMdiArea::subWindowActivated), self, local_caller{slot, callback, release});
}

void QMdiArea_setActiveSubWindow(QMdiArea* self, QMdiSubWindow* window) {
	self->setActiveSubWindow(window);
}

void QMdiArea_tileSubWindows(QMdiArea* self) {
	self->tileSubWindows();
}

void QMdiArea_cascadeSubWindows(QMdiArea* self) {
	self->cascadeSubWindows();
}

void QMdiArea_closeActiveSubWindow(QMdiArea* self) {
	self->closeActiveSubWindow();
}

void QMdiArea_closeAllSubWindows(QMdiArea* self) {
	self->closeAllSubWindows();
}

void QMdiArea_activateNextSubWindow(QMdiArea* self) {
	self->activateNextSubWindow();
}

void QMdiArea_activatePreviousSubWindow(QMdiArea* self) {
	self->activatePreviousSubWindow();
}

struct miqt_string QMdiArea_tr2(const char* s, const char* c) {
	QString _ret = QMdiArea::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiArea_tr3(const char* s, const char* c, int n) {
	QString _ret = QMdiArea::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QMdiSubWindow* */  QMdiArea_subWindowList1(const QMdiArea* self, int order) {
	QList<QMdiSubWindow *> _ret = self->subWindowList(static_cast<QMdiArea::WindowOrder>(order));
	// Convert QList<> from C++ memory to manually-managed C memory
	QMdiSubWindow** _arr = static_cast<QMdiSubWindow**>(malloc(sizeof(QMdiSubWindow*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMdiSubWindow* QMdiArea_addSubWindow2(QMdiArea* self, QWidget* widget, int flags) {
	return self->addSubWindow(widget, static_cast<Qt::WindowFlags>(flags));
}

void QMdiArea_setOption2(QMdiArea* self, int option, bool on) {
	self->setOption(static_cast<QMdiArea::AreaOption>(option), on);
}

QMetaObject* QMdiArea_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQMdiArea*)(self) )->QMdiArea::metaObject();

}

void* QMdiArea_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQMdiArea*)(self) )->QMdiArea::qt_metacast(param1);

}

int QMdiArea_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQMdiArea*)(self) )->QMdiArea::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QMdiArea_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQMdiArea*)(self) )->QMdiArea::sizeHint());

}

QSize* QMdiArea_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQMdiArea*)(self) )->QMdiArea::minimumSizeHint());

}

void QMdiArea_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::setupViewport(viewport);

}

bool QMdiArea_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQMdiArea*)(self) )->QMdiArea::event(event);

}

bool QMdiArea_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQMdiArea*)(self) )->QMdiArea::eventFilter(object, event);

}

void QMdiArea_virtualbase_paintEvent(void* self, QPaintEvent* paintEvent) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::paintEvent(paintEvent);

}

void QMdiArea_virtualbase_childEvent(void* self, QChildEvent* childEvent) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::childEvent(childEvent);

}

void QMdiArea_virtualbase_resizeEvent(void* self, QResizeEvent* resizeEvent) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::resizeEvent(resizeEvent);

}

void QMdiArea_virtualbase_timerEvent(void* self, QTimerEvent* timerEvent) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::timerEvent(timerEvent);

}

void QMdiArea_virtualbase_showEvent(void* self, QShowEvent* showEvent) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::showEvent(showEvent);

}

bool QMdiArea_virtualbase_viewportEvent(void* self, QEvent* event) {

	return ( (VirtualQMdiArea*)(self) )->QMdiArea::viewportEvent(event);

}

void QMdiArea_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

void QMdiArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::mousePressEvent(param1);

}

void QMdiArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::mouseReleaseEvent(param1);

}

void QMdiArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::mouseDoubleClickEvent(param1);

}

void QMdiArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::mouseMoveEvent(param1);

}

void QMdiArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::wheelEvent(param1);

}

void QMdiArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::contextMenuEvent(param1);

}

void QMdiArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::dragEnterEvent(param1);

}

void QMdiArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::dragMoveEvent(param1);

}

void QMdiArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::dragLeaveEvent(param1);

}

void QMdiArea_virtualbase_dropEvent(void* self, QDropEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::dropEvent(param1);

}

void QMdiArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::keyPressEvent(param1);

}

QSize* QMdiArea_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQMdiArea*)(self) )->QMdiArea::viewportSizeHint());

}

void QMdiArea_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::changeEvent(param1);

}

void QMdiArea_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option) {

	( (const VirtualQMdiArea*)(self) )->QMdiArea::initStyleOption(option);

}

int QMdiArea_virtualbase_devType(const void* self) {

	return ( (const VirtualQMdiArea*)(self) )->QMdiArea::devType();

}

void QMdiArea_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::setVisible(visible);

}

int QMdiArea_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQMdiArea*)(self) )->QMdiArea::heightForWidth(static_cast<int>(param1));

}

bool QMdiArea_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQMdiArea*)(self) )->QMdiArea::hasHeightForWidth();

}

QPaintEngine* QMdiArea_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQMdiArea*)(self) )->QMdiArea::paintEngine();

}

void QMdiArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::keyReleaseEvent(event);

}

void QMdiArea_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::focusInEvent(event);

}

void QMdiArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::focusOutEvent(event);

}

void QMdiArea_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::enterEvent(event);

}

void QMdiArea_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::leaveEvent(event);

}

void QMdiArea_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::moveEvent(event);

}

void QMdiArea_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::closeEvent(event);

}

void QMdiArea_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::tabletEvent(event);

}

void QMdiArea_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::actionEvent(event);

}

void QMdiArea_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::hideEvent(event);

}

bool QMdiArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQMdiArea*)(self) )->QMdiArea::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QMdiArea_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQMdiArea*)(self) )->QMdiArea::metric(static_cast<VirtualQMdiArea::PaintDeviceMetric>(param1));

}

void QMdiArea_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQMdiArea*)(self) )->QMdiArea::initPainter(painter);

}

QPaintDevice* QMdiArea_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQMdiArea*)(self) )->QMdiArea::redirected(offset);

}

QPainter* QMdiArea_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQMdiArea*)(self) )->QMdiArea::sharedPainter();

}

void QMdiArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::inputMethodEvent(param1);

}

QVariant* QMdiArea_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQMdiArea*)(self) )->QMdiArea::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QMdiArea_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQMdiArea*)(self) )->QMdiArea::focusNextPrevChild(next);

}

void QMdiArea_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::customEvent(event);

}

void QMdiArea_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::connectNotify(*signal);

}

void QMdiArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQMdiArea*)(self) )->QMdiArea::disconnectNotify(*signal);

}

const QMetaObject* QMdiArea_staticMetaObject() { return &QMdiArea::staticMetaObject; }
void QMdiArea_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QMdiArea_protectedbase_viewportMargins(const void* self) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	return new QMargins(self_cast->viewportMargins());

}

void QMdiArea_protectedbase_drawFrame(void* self, QPainter* param1) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	self_cast->drawFrame(param1);

}

void QMdiArea_protectedbase_updateMicroFocus(void* self) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	self_cast->updateMicroFocus();

}

void QMdiArea_protectedbase_create(void* self) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	self_cast->create();

}

void QMdiArea_protectedbase_destroy(void* self) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	self_cast->destroy();

}

bool QMdiArea_protectedbase_focusNextChild(void* self) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	return self_cast->focusNextChild();

}

bool QMdiArea_protectedbase_focusPreviousChild(void* self) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QMdiArea_protectedbase_sender(const void* self) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	return self_cast->sender();

}

int QMdiArea_protectedbase_senderSignalIndex(const void* self) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QMdiArea_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	return self_cast->receivers(signal);

}

bool QMdiArea_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQMdiArea* self_cast = static_cast<VirtualQMdiArea*>( (QMdiArea*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QMdiArea_delete(QMdiArea* self) {
	delete self;
}

