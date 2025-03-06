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
#include <QEvent>
#include <QFocusEvent>
#include <QFrame>
#include <QGraphicsItem>
#include <QGraphicsScene>
#include <QGraphicsView>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMargins>
#include <QMatrix>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPainterPath>
#include <QPoint>
#include <QPointF>
#include <QRect>
#include <QRectF>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QTransform>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qgraphicsview.h>
#include "gen_qgraphicsview.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQGraphicsView final : public QGraphicsView {
	struct QGraphicsView_VTable* vtbl;
public:

	VirtualQGraphicsView(struct QGraphicsView_VTable* vtbl, QWidget* parent): QGraphicsView(parent), vtbl(vtbl) {};
	VirtualQGraphicsView(struct QGraphicsView_VTable* vtbl): QGraphicsView(), vtbl(vtbl) {};
	VirtualQGraphicsView(struct QGraphicsView_VTable* vtbl, QGraphicsScene* scene): QGraphicsView(scene), vtbl(vtbl) {};
	VirtualQGraphicsView(struct QGraphicsView_VTable* vtbl, QGraphicsScene* scene, QWidget* parent): QGraphicsView(scene, parent), vtbl(vtbl) {};

	virtual ~VirtualQGraphicsView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QGraphicsView_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QGraphicsView_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsView_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QGraphicsView_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QGraphicsView_virtualbase_inputMethodQuery(const void* self, int query);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* widget) override {
		if (vtbl->setupViewport == 0) {
			QGraphicsView::setupViewport(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_setupViewport(void* self, QWidget* widget);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsView_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QGraphicsView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsView_virtualbase_viewportEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsView::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGraphicsView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QGraphicsView_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsView::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QGraphicsView::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGraphicsView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QGraphicsView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QGraphicsView_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGraphicsView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void drawBackground(QPainter* painter, const QRectF& rect) override {
		if (vtbl->drawBackground == 0) {
			QGraphicsView::drawBackground(painter, rect);
			return;
		}

		QPainter* sigval1 = painter;
		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&rect_ret);

		vtbl->drawBackground(vtbl, this, sigval1, sigval2);

	}

	friend void QGraphicsView_virtualbase_drawBackground(void* self, QPainter* painter, QRectF* rect);

	// Subclass to allow providing a Go implementation
	virtual void drawForeground(QPainter* painter, const QRectF& rect) override {
		if (vtbl->drawForeground == 0) {
			QGraphicsView::drawForeground(painter, rect);
			return;
		}

		QPainter* sigval1 = painter;
		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&rect_ret);

		vtbl->drawForeground(vtbl, this, sigval1, sigval2);

	}

	friend void QGraphicsView_virtualbase_drawForeground(void* self, QPainter* painter, QRectF* rect);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QGraphicsView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QGraphicsView_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsView::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QGraphicsView_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QGraphicsView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QGraphicsView_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QGraphicsView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QGraphicsView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsView_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QGraphicsView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QGraphicsView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsView_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QGraphicsView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QGraphicsView_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QGraphicsView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QGraphicsView_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QGraphicsView::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QGraphicsView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGraphicsView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGraphicsView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QGraphicsView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QGraphicsView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGraphicsView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QGraphicsView::nativeEvent(eventType, message, result);
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

	friend bool QGraphicsView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QGraphicsView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QGraphicsView_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QGraphicsView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QGraphicsView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QGraphicsView_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QGraphicsView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QGraphicsView_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QGraphicsView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QGraphicsView_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom);
	friend QMargins* QGraphicsView_protectedbase_viewportMargins(const void* self);
	friend void QGraphicsView_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QGraphicsView_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option);
	friend void QGraphicsView_protectedbase_updateMicroFocus(void* self);
	friend void QGraphicsView_protectedbase_create(void* self);
	friend void QGraphicsView_protectedbase_destroy(void* self);
	friend bool QGraphicsView_protectedbase_focusNextChild(void* self);
	friend bool QGraphicsView_protectedbase_focusPreviousChild(void* self);
	friend QObject* QGraphicsView_protectedbase_sender(const void* self);
	friend int QGraphicsView_protectedbase_senderSignalIndex(const void* self);
	friend int QGraphicsView_protectedbase_receivers(const void* self, const char* signal);
	friend bool QGraphicsView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QGraphicsView* QGraphicsView_new(struct QGraphicsView_VTable* vtbl, QWidget* parent) {
	return new VirtualQGraphicsView(vtbl, parent);
}

QGraphicsView* QGraphicsView_new2(struct QGraphicsView_VTable* vtbl) {
	return new VirtualQGraphicsView(vtbl);
}

QGraphicsView* QGraphicsView_new3(struct QGraphicsView_VTable* vtbl, QGraphicsScene* scene) {
	return new VirtualQGraphicsView(vtbl, scene);
}

QGraphicsView* QGraphicsView_new4(struct QGraphicsView_VTable* vtbl, QGraphicsScene* scene, QWidget* parent) {
	return new VirtualQGraphicsView(vtbl, scene, parent);
}

void QGraphicsView_virtbase(QGraphicsView* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QGraphicsView_metaObject(const QGraphicsView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsView_metacast(QGraphicsView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsView_metacall(QGraphicsView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsView_tr(const char* s) {
	QString _ret = QGraphicsView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsView_trUtf8(const char* s) {
	QString _ret = QGraphicsView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QGraphicsView_sizeHint(const QGraphicsView* self) {
	return new QSize(self->sizeHint());
}

int QGraphicsView_renderHints(const QGraphicsView* self) {
	QPainter::RenderHints _ret = self->renderHints();
	return static_cast<int>(_ret);
}

void QGraphicsView_setRenderHint(QGraphicsView* self, int hint) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(hint));
}

void QGraphicsView_setRenderHints(QGraphicsView* self, int hints) {
	self->setRenderHints(static_cast<QPainter::RenderHints>(hints));
}

int QGraphicsView_alignment(const QGraphicsView* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QGraphicsView_setAlignment(QGraphicsView* self, int alignment) {
	self->setAlignment(static_cast<Qt::Alignment>(alignment));
}

int QGraphicsView_transformationAnchor(const QGraphicsView* self) {
	QGraphicsView::ViewportAnchor _ret = self->transformationAnchor();
	return static_cast<int>(_ret);
}

void QGraphicsView_setTransformationAnchor(QGraphicsView* self, int anchor) {
	self->setTransformationAnchor(static_cast<QGraphicsView::ViewportAnchor>(anchor));
}

int QGraphicsView_resizeAnchor(const QGraphicsView* self) {
	QGraphicsView::ViewportAnchor _ret = self->resizeAnchor();
	return static_cast<int>(_ret);
}

void QGraphicsView_setResizeAnchor(QGraphicsView* self, int anchor) {
	self->setResizeAnchor(static_cast<QGraphicsView::ViewportAnchor>(anchor));
}

int QGraphicsView_viewportUpdateMode(const QGraphicsView* self) {
	QGraphicsView::ViewportUpdateMode _ret = self->viewportUpdateMode();
	return static_cast<int>(_ret);
}

void QGraphicsView_setViewportUpdateMode(QGraphicsView* self, int mode) {
	self->setViewportUpdateMode(static_cast<QGraphicsView::ViewportUpdateMode>(mode));
}

int QGraphicsView_optimizationFlags(const QGraphicsView* self) {
	QGraphicsView::OptimizationFlags _ret = self->optimizationFlags();
	return static_cast<int>(_ret);
}

void QGraphicsView_setOptimizationFlag(QGraphicsView* self, int flag) {
	self->setOptimizationFlag(static_cast<QGraphicsView::OptimizationFlag>(flag));
}

void QGraphicsView_setOptimizationFlags(QGraphicsView* self, int flags) {
	self->setOptimizationFlags(static_cast<QGraphicsView::OptimizationFlags>(flags));
}

int QGraphicsView_dragMode(const QGraphicsView* self) {
	QGraphicsView::DragMode _ret = self->dragMode();
	return static_cast<int>(_ret);
}

void QGraphicsView_setDragMode(QGraphicsView* self, int mode) {
	self->setDragMode(static_cast<QGraphicsView::DragMode>(mode));
}

int QGraphicsView_rubberBandSelectionMode(const QGraphicsView* self) {
	Qt::ItemSelectionMode _ret = self->rubberBandSelectionMode();
	return static_cast<int>(_ret);
}

void QGraphicsView_setRubberBandSelectionMode(QGraphicsView* self, int mode) {
	self->setRubberBandSelectionMode(static_cast<Qt::ItemSelectionMode>(mode));
}

QRect* QGraphicsView_rubberBandRect(const QGraphicsView* self) {
	return new QRect(self->rubberBandRect());
}

int QGraphicsView_cacheMode(const QGraphicsView* self) {
	QGraphicsView::CacheMode _ret = self->cacheMode();
	return static_cast<int>(_ret);
}

void QGraphicsView_setCacheMode(QGraphicsView* self, int mode) {
	self->setCacheMode(static_cast<QGraphicsView::CacheMode>(mode));
}

void QGraphicsView_resetCachedContent(QGraphicsView* self) {
	self->resetCachedContent();
}

bool QGraphicsView_isInteractive(const QGraphicsView* self) {
	return self->isInteractive();
}

void QGraphicsView_setInteractive(QGraphicsView* self, bool allowed) {
	self->setInteractive(allowed);
}

QGraphicsScene* QGraphicsView_scene(const QGraphicsView* self) {
	return self->scene();
}

void QGraphicsView_setScene(QGraphicsView* self, QGraphicsScene* scene) {
	self->setScene(scene);
}

QRectF* QGraphicsView_sceneRect(const QGraphicsView* self) {
	return new QRectF(self->sceneRect());
}

void QGraphicsView_setSceneRect(QGraphicsView* self, QRectF* rect) {
	self->setSceneRect(*rect);
}

void QGraphicsView_setSceneRect2(QGraphicsView* self, double x, double y, double w, double h) {
	self->setSceneRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QMatrix* QGraphicsView_matrix(const QGraphicsView* self) {
	return new QMatrix(self->matrix());
}

void QGraphicsView_setMatrix(QGraphicsView* self, QMatrix* matrix) {
	self->setMatrix(*matrix);
}

void QGraphicsView_resetMatrix(QGraphicsView* self) {
	self->resetMatrix();
}

QTransform* QGraphicsView_transform(const QGraphicsView* self) {
	return new QTransform(self->transform());
}

QTransform* QGraphicsView_viewportTransform(const QGraphicsView* self) {
	return new QTransform(self->viewportTransform());
}

bool QGraphicsView_isTransformed(const QGraphicsView* self) {
	return self->isTransformed();
}

void QGraphicsView_setTransform(QGraphicsView* self, QTransform* matrix) {
	self->setTransform(*matrix);
}

void QGraphicsView_resetTransform(QGraphicsView* self) {
	self->resetTransform();
}

void QGraphicsView_rotate(QGraphicsView* self, double angle) {
	self->rotate(static_cast<qreal>(angle));
}

void QGraphicsView_scale(QGraphicsView* self, double sx, double sy) {
	self->scale(static_cast<qreal>(sx), static_cast<qreal>(sy));
}

void QGraphicsView_shear(QGraphicsView* self, double sh, double sv) {
	self->shear(static_cast<qreal>(sh), static_cast<qreal>(sv));
}

void QGraphicsView_translate(QGraphicsView* self, double dx, double dy) {
	self->translate(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

void QGraphicsView_centerOn(QGraphicsView* self, QPointF* pos) {
	self->centerOn(*pos);
}

void QGraphicsView_centerOn2(QGraphicsView* self, double x, double y) {
	self->centerOn(static_cast<qreal>(x), static_cast<qreal>(y));
}

void QGraphicsView_centerOnWithItem(QGraphicsView* self, QGraphicsItem* item) {
	self->centerOn(item);
}

void QGraphicsView_ensureVisible(QGraphicsView* self, QRectF* rect) {
	self->ensureVisible(*rect);
}

void QGraphicsView_ensureVisible2(QGraphicsView* self, double x, double y, double w, double h) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

void QGraphicsView_ensureVisibleWithItem(QGraphicsView* self, QGraphicsItem* item) {
	self->ensureVisible(item);
}

void QGraphicsView_fitInView(QGraphicsView* self, QRectF* rect) {
	self->fitInView(*rect);
}

void QGraphicsView_fitInView2(QGraphicsView* self, double x, double y, double w, double h) {
	self->fitInView(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

void QGraphicsView_fitInViewWithItem(QGraphicsView* self, QGraphicsItem* item) {
	self->fitInView(item);
}

void QGraphicsView_render(QGraphicsView* self, QPainter* painter) {
	self->render(painter);
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items(const QGraphicsView* self) {
	QList<QGraphicsItem *> _ret = self->items();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_itemsWithPos(const QGraphicsView* self, QPoint* pos) {
	QList<QGraphicsItem *> _ret = self->items(*pos);
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items2(const QGraphicsView* self, int x, int y) {
	QList<QGraphicsItem *> _ret = self->items(static_cast<int>(x), static_cast<int>(y));
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_itemsWithRect(const QGraphicsView* self, QRect* rect) {
	QList<QGraphicsItem *> _ret = self->items(*rect);
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items3(const QGraphicsView* self, int x, int y, int w, int h) {
	QList<QGraphicsItem *> _ret = self->items(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h));
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_itemsWithPath(const QGraphicsView* self, QPainterPath* path) {
	QList<QGraphicsItem *> _ret = self->items(*path);
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QGraphicsItem* QGraphicsView_itemAt(const QGraphicsView* self, QPoint* pos) {
	return self->itemAt(*pos);
}

QGraphicsItem* QGraphicsView_itemAt2(const QGraphicsView* self, int x, int y) {
	return self->itemAt(static_cast<int>(x), static_cast<int>(y));
}

QPointF* QGraphicsView_mapToScene(const QGraphicsView* self, QPoint* point) {
	return new QPointF(self->mapToScene(*point));
}

QPainterPath* QGraphicsView_mapToSceneWithPath(const QGraphicsView* self, QPainterPath* path) {
	return new QPainterPath(self->mapToScene(*path));
}

QPoint* QGraphicsView_mapFromScene(const QGraphicsView* self, QPointF* point) {
	return new QPoint(self->mapFromScene(*point));
}

QPainterPath* QGraphicsView_mapFromSceneWithPath(const QGraphicsView* self, QPainterPath* path) {
	return new QPainterPath(self->mapFromScene(*path));
}

QPointF* QGraphicsView_mapToScene2(const QGraphicsView* self, int x, int y) {
	return new QPointF(self->mapToScene(static_cast<int>(x), static_cast<int>(y)));
}

QPoint* QGraphicsView_mapFromScene2(const QGraphicsView* self, double x, double y) {
	return new QPoint(self->mapFromScene(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QVariant* QGraphicsView_inputMethodQuery(const QGraphicsView* self, int query) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

QBrush* QGraphicsView_backgroundBrush(const QGraphicsView* self) {
	return new QBrush(self->backgroundBrush());
}

void QGraphicsView_setBackgroundBrush(QGraphicsView* self, QBrush* brush) {
	self->setBackgroundBrush(*brush);
}

QBrush* QGraphicsView_foregroundBrush(const QGraphicsView* self) {
	return new QBrush(self->foregroundBrush());
}

void QGraphicsView_setForegroundBrush(QGraphicsView* self, QBrush* brush) {
	self->setForegroundBrush(*brush);
}

void QGraphicsView_updateScene(QGraphicsView* self, struct miqt_array /* of QRectF* */  rects) {
	QList<QRectF> rects_QList;
	rects_QList.reserve(rects.len);
	QRectF** rects_arr = static_cast<QRectF**>(rects.data);
	for(size_t i = 0; i < rects.len; ++i) {
		rects_QList.push_back(*(rects_arr[i]));
	}
	self->updateScene(rects_QList);
}

void QGraphicsView_invalidateScene(QGraphicsView* self) {
	self->invalidateScene();
}

void QGraphicsView_updateSceneRect(QGraphicsView* self, QRectF* rect) {
	self->updateSceneRect(*rect);
}

void QGraphicsView_rubberBandChanged(QGraphicsView* self, QRect* viewportRect, QPointF* fromScenePoint, QPointF* toScenePoint) {
	self->rubberBandChanged(*viewportRect, *fromScenePoint, *toScenePoint);
}

void QGraphicsView_connect_rubberBandChanged(QGraphicsView* self, intptr_t slot, void (*callback)(intptr_t, QRect*, QPointF*, QPointF*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRect*, QPointF*, QPointF*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRect*, QPointF*, QPointF*);
		void operator()(QRect viewportRect, QPointF fromScenePoint, QPointF toScenePoint) {
			QRect* sigval1 = new QRect(viewportRect);
			QPointF* sigval2 = new QPointF(fromScenePoint);
			QPointF* sigval3 = new QPointF(toScenePoint);
			callback(slot, sigval1, sigval2, sigval3);
		}
	};
	VirtualQGraphicsView::connect(self, static_cast<void (QGraphicsView::*)(QRect, QPointF, QPointF)>(&QGraphicsView::rubberBandChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QGraphicsView_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsView_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsView_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsView_setRenderHint2(QGraphicsView* self, int hint, bool enabled) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(hint), enabled);
}

void QGraphicsView_setOptimizationFlag2(QGraphicsView* self, int flag, bool enabled) {
	self->setOptimizationFlag(static_cast<QGraphicsView::OptimizationFlag>(flag), enabled);
}

void QGraphicsView_setMatrix2(QGraphicsView* self, QMatrix* matrix, bool combine) {
	self->setMatrix(*matrix, combine);
}

void QGraphicsView_setTransform2(QGraphicsView* self, QTransform* matrix, bool combine) {
	self->setTransform(*matrix, combine);
}

void QGraphicsView_ensureVisible22(QGraphicsView* self, QRectF* rect, int xmargin) {
	self->ensureVisible(*rect, static_cast<int>(xmargin));
}

void QGraphicsView_ensureVisible3(QGraphicsView* self, QRectF* rect, int xmargin, int ymargin) {
	self->ensureVisible(*rect, static_cast<int>(xmargin), static_cast<int>(ymargin));
}

void QGraphicsView_ensureVisible5(QGraphicsView* self, double x, double y, double w, double h, int xmargin) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), static_cast<int>(xmargin));
}

void QGraphicsView_ensureVisible6(QGraphicsView* self, double x, double y, double w, double h, int xmargin, int ymargin) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), static_cast<int>(xmargin), static_cast<int>(ymargin));
}

void QGraphicsView_ensureVisible23(QGraphicsView* self, QGraphicsItem* item, int xmargin) {
	self->ensureVisible(item, static_cast<int>(xmargin));
}

void QGraphicsView_ensureVisible32(QGraphicsView* self, QGraphicsItem* item, int xmargin, int ymargin) {
	self->ensureVisible(item, static_cast<int>(xmargin), static_cast<int>(ymargin));
}

void QGraphicsView_fitInView22(QGraphicsView* self, QRectF* rect, int aspectRadioMode) {
	self->fitInView(*rect, static_cast<Qt::AspectRatioMode>(aspectRadioMode));
}

void QGraphicsView_fitInView5(QGraphicsView* self, double x, double y, double w, double h, int aspectRadioMode) {
	self->fitInView(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), static_cast<Qt::AspectRatioMode>(aspectRadioMode));
}

void QGraphicsView_fitInView23(QGraphicsView* self, QGraphicsItem* item, int aspectRadioMode) {
	self->fitInView(item, static_cast<Qt::AspectRatioMode>(aspectRadioMode));
}

void QGraphicsView_render2(QGraphicsView* self, QPainter* painter, QRectF* target) {
	self->render(painter, *target);
}

void QGraphicsView_render3(QGraphicsView* self, QPainter* painter, QRectF* target, QRect* source) {
	self->render(painter, *target, *source);
}

void QGraphicsView_render4(QGraphicsView* self, QPainter* painter, QRectF* target, QRect* source, int aspectRatioMode) {
	self->render(painter, *target, *source, static_cast<Qt::AspectRatioMode>(aspectRatioMode));
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items22(const QGraphicsView* self, QRect* rect, int mode) {
	QList<QGraphicsItem *> _ret = self->items(*rect, static_cast<Qt::ItemSelectionMode>(mode));
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items5(const QGraphicsView* self, int x, int y, int w, int h, int mode) {
	QList<QGraphicsItem *> _ret = self->items(static_cast<int>(x), static_cast<int>(y), static_cast<int>(w), static_cast<int>(h), static_cast<Qt::ItemSelectionMode>(mode));
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items24(const QGraphicsView* self, QPainterPath* path, int mode) {
	QList<QGraphicsItem *> _ret = self->items(*path, static_cast<Qt::ItemSelectionMode>(mode));
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsView_invalidateScene1(QGraphicsView* self, QRectF* rect) {
	self->invalidateScene(*rect);
}

void QGraphicsView_invalidateScene2(QGraphicsView* self, QRectF* rect, int layers) {
	self->invalidateScene(*rect, static_cast<QGraphicsScene::SceneLayers>(layers));
}

QMetaObject* QGraphicsView_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQGraphicsView*)(self) )->QGraphicsView::metaObject();

}

void* QGraphicsView_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQGraphicsView*)(self) )->QGraphicsView::qt_metacast(param1);

}

int QGraphicsView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQGraphicsView*)(self) )->QGraphicsView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QGraphicsView_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQGraphicsView*)(self) )->QGraphicsView::sizeHint());

}

QVariant* QGraphicsView_virtualbase_inputMethodQuery(const void* self, int query) {

	return new QVariant(( (const VirtualQGraphicsView*)(self) )->QGraphicsView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

}

void QGraphicsView_virtualbase_setupViewport(void* self, QWidget* widget) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::setupViewport(widget);

}

bool QGraphicsView_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQGraphicsView*)(self) )->QGraphicsView::event(event);

}

bool QGraphicsView_virtualbase_viewportEvent(void* self, QEvent* event) {

	return ( (VirtualQGraphicsView*)(self) )->QGraphicsView::viewportEvent(event);

}

void QGraphicsView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::contextMenuEvent(event);

}

void QGraphicsView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::dragEnterEvent(event);

}

void QGraphicsView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::dragLeaveEvent(event);

}

void QGraphicsView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::dragMoveEvent(event);

}

void QGraphicsView_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::dropEvent(event);

}

void QGraphicsView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::focusInEvent(event);

}

bool QGraphicsView_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQGraphicsView*)(self) )->QGraphicsView::focusNextPrevChild(next);

}

void QGraphicsView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::focusOutEvent(event);

}

void QGraphicsView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::keyPressEvent(event);

}

void QGraphicsView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::keyReleaseEvent(event);

}

void QGraphicsView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::mouseDoubleClickEvent(event);

}

void QGraphicsView_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::mousePressEvent(event);

}

void QGraphicsView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::mouseMoveEvent(event);

}

void QGraphicsView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::mouseReleaseEvent(event);

}

void QGraphicsView_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::wheelEvent(event);

}

void QGraphicsView_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::paintEvent(event);

}

void QGraphicsView_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::resizeEvent(event);

}

void QGraphicsView_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

void QGraphicsView_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::showEvent(event);

}

void QGraphicsView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::inputMethodEvent(event);

}

void QGraphicsView_virtualbase_drawBackground(void* self, QPainter* painter, QRectF* rect) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::drawBackground(painter, *rect);

}

void QGraphicsView_virtualbase_drawForeground(void* self, QPainter* painter, QRectF* rect) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::drawForeground(painter, *rect);

}

QSize* QGraphicsView_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQGraphicsView*)(self) )->QGraphicsView::minimumSizeHint());

}

bool QGraphicsView_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQGraphicsView*)(self) )->QGraphicsView::eventFilter(param1, param2);

}

QSize* QGraphicsView_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQGraphicsView*)(self) )->QGraphicsView::viewportSizeHint());

}

void QGraphicsView_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::changeEvent(param1);

}

int QGraphicsView_virtualbase_devType(const void* self) {

	return ( (const VirtualQGraphicsView*)(self) )->QGraphicsView::devType();

}

void QGraphicsView_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::setVisible(visible);

}

int QGraphicsView_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQGraphicsView*)(self) )->QGraphicsView::heightForWidth(static_cast<int>(param1));

}

bool QGraphicsView_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQGraphicsView*)(self) )->QGraphicsView::hasHeightForWidth();

}

QPaintEngine* QGraphicsView_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQGraphicsView*)(self) )->QGraphicsView::paintEngine();

}

void QGraphicsView_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::enterEvent(event);

}

void QGraphicsView_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::leaveEvent(event);

}

void QGraphicsView_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::moveEvent(event);

}

void QGraphicsView_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::closeEvent(event);

}

void QGraphicsView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::tabletEvent(event);

}

void QGraphicsView_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::actionEvent(event);

}

void QGraphicsView_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::hideEvent(event);

}

bool QGraphicsView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQGraphicsView*)(self) )->QGraphicsView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QGraphicsView_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQGraphicsView*)(self) )->QGraphicsView::metric(static_cast<VirtualQGraphicsView::PaintDeviceMetric>(param1));

}

void QGraphicsView_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQGraphicsView*)(self) )->QGraphicsView::initPainter(painter);

}

QPaintDevice* QGraphicsView_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQGraphicsView*)(self) )->QGraphicsView::redirected(offset);

}

QPainter* QGraphicsView_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQGraphicsView*)(self) )->QGraphicsView::sharedPainter();

}

void QGraphicsView_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::timerEvent(event);

}

void QGraphicsView_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::childEvent(event);

}

void QGraphicsView_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::customEvent(event);

}

void QGraphicsView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::connectNotify(*signal);

}

void QGraphicsView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQGraphicsView*)(self) )->QGraphicsView::disconnectNotify(*signal);

}

const QMetaObject* QGraphicsView_staticMetaObject() { return &QGraphicsView::staticMetaObject; }
void QGraphicsView_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QGraphicsView_protectedbase_viewportMargins(const void* self) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	return new QMargins(self_cast->viewportMargins());

}

void QGraphicsView_protectedbase_drawFrame(void* self, QPainter* param1) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	self_cast->drawFrame(param1);

}

void QGraphicsView_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	self_cast->initStyleOption(option);

}

void QGraphicsView_protectedbase_updateMicroFocus(void* self) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	self_cast->updateMicroFocus();

}

void QGraphicsView_protectedbase_create(void* self) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	self_cast->create();

}

void QGraphicsView_protectedbase_destroy(void* self) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	self_cast->destroy();

}

bool QGraphicsView_protectedbase_focusNextChild(void* self) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	return self_cast->focusNextChild();

}

bool QGraphicsView_protectedbase_focusPreviousChild(void* self) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QGraphicsView_protectedbase_sender(const void* self) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	return self_cast->sender();

}

int QGraphicsView_protectedbase_senderSignalIndex(const void* self) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QGraphicsView_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	return self_cast->receivers(signal);

}

bool QGraphicsView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQGraphicsView* self_cast = static_cast<VirtualQGraphicsView*>( (QGraphicsView*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsView_delete(QGraphicsView* self) {
	delete self;
}

