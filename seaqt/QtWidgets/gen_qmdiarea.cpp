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
class VirtualQMdiArea final : public QMdiArea {
	const QMdiArea_VTable* vtbl;
	void* vdata;
public:
	friend const QMdiArea_VTable* QMdiArea_vtbl(const VirtualQMdiArea* self);
	friend void* QMdiArea_vdata(const VirtualQMdiArea* self);
	friend void QMdiArea_setVdata(VirtualQMdiArea* self, void* vdata);

	VirtualQMdiArea(const QMdiArea_VTable* vtbl, void* vdata, QWidget* parent): QMdiArea(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQMdiArea(const QMdiArea_VTable* vtbl, void* vdata): QMdiArea(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQMdiArea() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMdiArea::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QMdiArea_virtualbase_metaObject(const VirtualQMdiArea* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMdiArea::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QMdiArea_virtualbase_metacast(VirtualQMdiArea* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMdiArea::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiArea_virtualbase_metacall(VirtualQMdiArea* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMdiArea::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMdiArea_virtualbase_sizeHint(const VirtualQMdiArea* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMdiArea::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMdiArea_virtualbase_minimumSizeHint(const VirtualQMdiArea* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QMdiArea::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QMdiArea_virtualbase_setupViewport(VirtualQMdiArea* self, QWidget* viewport);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMdiArea::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_event(VirtualQMdiArea* self, QEvent* event);

	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMdiArea::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_eventFilter(VirtualQMdiArea* self, QObject* object, QEvent* event);

	virtual void paintEvent(QPaintEvent* paintEvent) override {
		if (vtbl->paintEvent == 0) {
			QMdiArea::paintEvent(paintEvent);
			return;
		}

		QPaintEvent* sigval1 = paintEvent;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_paintEvent(VirtualQMdiArea* self, QPaintEvent* paintEvent);

	virtual void childEvent(QChildEvent* childEvent) override {
		if (vtbl->childEvent == 0) {
			QMdiArea::childEvent(childEvent);
			return;
		}

		QChildEvent* sigval1 = childEvent;

		vtbl->childEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_childEvent(VirtualQMdiArea* self, QChildEvent* childEvent);

	virtual void resizeEvent(QResizeEvent* resizeEvent) override {
		if (vtbl->resizeEvent == 0) {
			QMdiArea::resizeEvent(resizeEvent);
			return;
		}

		QResizeEvent* sigval1 = resizeEvent;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_resizeEvent(VirtualQMdiArea* self, QResizeEvent* resizeEvent);

	virtual void timerEvent(QTimerEvent* timerEvent) override {
		if (vtbl->timerEvent == 0) {
			QMdiArea::timerEvent(timerEvent);
			return;
		}

		QTimerEvent* sigval1 = timerEvent;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_timerEvent(VirtualQMdiArea* self, QTimerEvent* timerEvent);

	virtual void showEvent(QShowEvent* showEvent) override {
		if (vtbl->showEvent == 0) {
			QMdiArea::showEvent(showEvent);
			return;
		}

		QShowEvent* sigval1 = showEvent;

		vtbl->showEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_showEvent(VirtualQMdiArea* self, QShowEvent* showEvent);

	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QMdiArea::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_viewportEvent(VirtualQMdiArea* self, QEvent* event);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QMdiArea::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QMdiArea_virtualbase_scrollContentsBy(VirtualQMdiArea* self, int dx, int dy);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QMdiArea::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_mousePressEvent(VirtualQMdiArea* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMdiArea::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_mouseReleaseEvent(VirtualQMdiArea* self, QMouseEvent* param1);

	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMdiArea::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_mouseDoubleClickEvent(VirtualQMdiArea* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMdiArea::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_mouseMoveEvent(VirtualQMdiArea* self, QMouseEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QMdiArea::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_wheelEvent(VirtualQMdiArea* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QMdiArea::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_contextMenuEvent(VirtualQMdiArea* self, QContextMenuEvent* param1);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QMdiArea::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_dragEnterEvent(VirtualQMdiArea* self, QDragEnterEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QMdiArea::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_dragMoveEvent(VirtualQMdiArea* self, QDragMoveEvent* param1);

	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMdiArea::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_dragLeaveEvent(VirtualQMdiArea* self, QDragLeaveEvent* param1);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QMdiArea::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_dropEvent(VirtualQMdiArea* self, QDropEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QMdiArea::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_keyPressEvent(VirtualQMdiArea* self, QKeyEvent* param1);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QMdiArea::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QMdiArea_virtualbase_viewportSizeHint(const VirtualQMdiArea* self);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMdiArea::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_changeEvent(VirtualQMdiArea* self, QEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMdiArea::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiArea_virtualbase_devType(const VirtualQMdiArea* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMdiArea::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QMdiArea_virtualbase_setVisible(VirtualQMdiArea* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMdiArea::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiArea_virtualbase_heightForWidth(const VirtualQMdiArea* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMdiArea::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_hasHeightForWidth(const VirtualQMdiArea* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMdiArea::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QMdiArea_virtualbase_paintEngine(const VirtualQMdiArea* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMdiArea::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_keyReleaseEvent(VirtualQMdiArea* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QMdiArea::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_focusInEvent(VirtualQMdiArea* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QMdiArea::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_focusOutEvent(VirtualQMdiArea* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMdiArea::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_enterEvent(VirtualQMdiArea* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QMdiArea::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_leaveEvent(VirtualQMdiArea* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMdiArea::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_moveEvent(VirtualQMdiArea* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMdiArea::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_closeEvent(VirtualQMdiArea* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMdiArea::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_tabletEvent(VirtualQMdiArea* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QMdiArea::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_actionEvent(VirtualQMdiArea* self, QActionEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QMdiArea::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_hideEvent(VirtualQMdiArea* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
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
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_nativeEvent(VirtualQMdiArea* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMdiArea::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QMdiArea_virtualbase_metric(const VirtualQMdiArea* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMdiArea::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QMdiArea_virtualbase_initPainter(const VirtualQMdiArea* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMdiArea::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QMdiArea_virtualbase_redirected(const VirtualQMdiArea* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMdiArea::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QMdiArea_virtualbase_sharedPainter(const VirtualQMdiArea* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMdiArea::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_inputMethodEvent(VirtualQMdiArea* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMdiArea::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QMdiArea_virtualbase_inputMethodQuery(const VirtualQMdiArea* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMdiArea::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QMdiArea_virtualbase_focusNextPrevChild(VirtualQMdiArea* self, bool next);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMdiArea::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QMdiArea_virtualbase_customEvent(VirtualQMdiArea* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMdiArea::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QMdiArea_virtualbase_connectNotify(VirtualQMdiArea* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMdiArea::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QMdiArea_virtualbase_disconnectNotify(VirtualQMdiArea* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QMdiArea_protectedbase_setViewportMargins(VirtualQMdiArea* self, int left, int top, int right, int bottom);
	friend QMargins* QMdiArea_protectedbase_viewportMargins(const VirtualQMdiArea* self);
	friend void QMdiArea_protectedbase_drawFrame(VirtualQMdiArea* self, QPainter* param1);
	friend void QMdiArea_protectedbase_initStyleOption(const VirtualQMdiArea* self, QStyleOptionFrame* option);
	friend void QMdiArea_protectedbase_updateMicroFocus(VirtualQMdiArea* self);
	friend void QMdiArea_protectedbase_create(VirtualQMdiArea* self);
	friend void QMdiArea_protectedbase_destroy(VirtualQMdiArea* self);
	friend bool QMdiArea_protectedbase_focusNextChild(VirtualQMdiArea* self);
	friend bool QMdiArea_protectedbase_focusPreviousChild(VirtualQMdiArea* self);
	friend QObject* QMdiArea_protectedbase_sender(const VirtualQMdiArea* self);
	friend int QMdiArea_protectedbase_senderSignalIndex(const VirtualQMdiArea* self);
	friend int QMdiArea_protectedbase_receivers(const VirtualQMdiArea* self, const char* signal);
	friend bool QMdiArea_protectedbase_isSignalConnected(const VirtualQMdiArea* self, QMetaMethod* signal);
};

VirtualQMdiArea* QMdiArea_new(const QMdiArea_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQMdiArea(vtbl, vdata, parent);
}

VirtualQMdiArea* QMdiArea_new2(const QMdiArea_VTable* vtbl, void* vdata) {
	return new VirtualQMdiArea(vtbl, vdata);
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

struct miqt_string QMdiArea_trUtf8(const char* s) {
	QString _ret = QMdiArea::trUtf8(s);
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

void QMdiArea_connect_subWindowActivated(VirtualQMdiArea* self, intptr_t slot, void (*callback)(intptr_t, QMdiSubWindow*), void (*release)(intptr_t)) {
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

struct miqt_string QMdiArea_trUtf82(const char* s, const char* c) {
	QString _ret = QMdiArea::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiArea_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMdiArea::trUtf8(s, c, static_cast<int>(n));
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

QMetaObject* QMdiArea_virtualbase_metaObject(const VirtualQMdiArea* self) {

	return (QMetaObject*) self->QMdiArea::metaObject();
}

void* QMdiArea_virtualbase_metacast(VirtualQMdiArea* self, const char* param1) {

	return self->QMdiArea::qt_metacast(param1);
}

int QMdiArea_virtualbase_metacall(VirtualQMdiArea* self, int param1, int param2, void** param3) {

	return self->QMdiArea::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QMdiArea_virtualbase_sizeHint(const VirtualQMdiArea* self) {

	return new QSize(self->QMdiArea::sizeHint());
}

QSize* QMdiArea_virtualbase_minimumSizeHint(const VirtualQMdiArea* self) {

	return new QSize(self->QMdiArea::minimumSizeHint());
}

void QMdiArea_virtualbase_setupViewport(VirtualQMdiArea* self, QWidget* viewport) {

	self->QMdiArea::setupViewport(viewport);
}

bool QMdiArea_virtualbase_event(VirtualQMdiArea* self, QEvent* event) {

	return self->QMdiArea::event(event);
}

bool QMdiArea_virtualbase_eventFilter(VirtualQMdiArea* self, QObject* object, QEvent* event) {

	return self->QMdiArea::eventFilter(object, event);
}

void QMdiArea_virtualbase_paintEvent(VirtualQMdiArea* self, QPaintEvent* paintEvent) {

	self->QMdiArea::paintEvent(paintEvent);
}

void QMdiArea_virtualbase_childEvent(VirtualQMdiArea* self, QChildEvent* childEvent) {

	self->QMdiArea::childEvent(childEvent);
}

void QMdiArea_virtualbase_resizeEvent(VirtualQMdiArea* self, QResizeEvent* resizeEvent) {

	self->QMdiArea::resizeEvent(resizeEvent);
}

void QMdiArea_virtualbase_timerEvent(VirtualQMdiArea* self, QTimerEvent* timerEvent) {

	self->QMdiArea::timerEvent(timerEvent);
}

void QMdiArea_virtualbase_showEvent(VirtualQMdiArea* self, QShowEvent* showEvent) {

	self->QMdiArea::showEvent(showEvent);
}

bool QMdiArea_virtualbase_viewportEvent(VirtualQMdiArea* self, QEvent* event) {

	return self->QMdiArea::viewportEvent(event);
}

void QMdiArea_virtualbase_scrollContentsBy(VirtualQMdiArea* self, int dx, int dy) {

	self->QMdiArea::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QMdiArea_virtualbase_mousePressEvent(VirtualQMdiArea* self, QMouseEvent* param1) {

	self->QMdiArea::mousePressEvent(param1);
}

void QMdiArea_virtualbase_mouseReleaseEvent(VirtualQMdiArea* self, QMouseEvent* param1) {

	self->QMdiArea::mouseReleaseEvent(param1);
}

void QMdiArea_virtualbase_mouseDoubleClickEvent(VirtualQMdiArea* self, QMouseEvent* param1) {

	self->QMdiArea::mouseDoubleClickEvent(param1);
}

void QMdiArea_virtualbase_mouseMoveEvent(VirtualQMdiArea* self, QMouseEvent* param1) {

	self->QMdiArea::mouseMoveEvent(param1);
}

void QMdiArea_virtualbase_wheelEvent(VirtualQMdiArea* self, QWheelEvent* param1) {

	self->QMdiArea::wheelEvent(param1);
}

void QMdiArea_virtualbase_contextMenuEvent(VirtualQMdiArea* self, QContextMenuEvent* param1) {

	self->QMdiArea::contextMenuEvent(param1);
}

void QMdiArea_virtualbase_dragEnterEvent(VirtualQMdiArea* self, QDragEnterEvent* param1) {

	self->QMdiArea::dragEnterEvent(param1);
}

void QMdiArea_virtualbase_dragMoveEvent(VirtualQMdiArea* self, QDragMoveEvent* param1) {

	self->QMdiArea::dragMoveEvent(param1);
}

void QMdiArea_virtualbase_dragLeaveEvent(VirtualQMdiArea* self, QDragLeaveEvent* param1) {

	self->QMdiArea::dragLeaveEvent(param1);
}

void QMdiArea_virtualbase_dropEvent(VirtualQMdiArea* self, QDropEvent* param1) {

	self->QMdiArea::dropEvent(param1);
}

void QMdiArea_virtualbase_keyPressEvent(VirtualQMdiArea* self, QKeyEvent* param1) {

	self->QMdiArea::keyPressEvent(param1);
}

QSize* QMdiArea_virtualbase_viewportSizeHint(const VirtualQMdiArea* self) {

	return new QSize(self->QMdiArea::viewportSizeHint());
}

void QMdiArea_virtualbase_changeEvent(VirtualQMdiArea* self, QEvent* param1) {

	self->QMdiArea::changeEvent(param1);
}

int QMdiArea_virtualbase_devType(const VirtualQMdiArea* self) {

	return self->QMdiArea::devType();
}

void QMdiArea_virtualbase_setVisible(VirtualQMdiArea* self, bool visible) {

	self->QMdiArea::setVisible(visible);
}

int QMdiArea_virtualbase_heightForWidth(const VirtualQMdiArea* self, int param1) {

	return self->QMdiArea::heightForWidth(static_cast<int>(param1));
}

bool QMdiArea_virtualbase_hasHeightForWidth(const VirtualQMdiArea* self) {

	return self->QMdiArea::hasHeightForWidth();
}

QPaintEngine* QMdiArea_virtualbase_paintEngine(const VirtualQMdiArea* self) {

	return self->QMdiArea::paintEngine();
}

void QMdiArea_virtualbase_keyReleaseEvent(VirtualQMdiArea* self, QKeyEvent* event) {

	self->QMdiArea::keyReleaseEvent(event);
}

void QMdiArea_virtualbase_focusInEvent(VirtualQMdiArea* self, QFocusEvent* event) {

	self->QMdiArea::focusInEvent(event);
}

void QMdiArea_virtualbase_focusOutEvent(VirtualQMdiArea* self, QFocusEvent* event) {

	self->QMdiArea::focusOutEvent(event);
}

void QMdiArea_virtualbase_enterEvent(VirtualQMdiArea* self, QEvent* event) {

	self->QMdiArea::enterEvent(event);
}

void QMdiArea_virtualbase_leaveEvent(VirtualQMdiArea* self, QEvent* event) {

	self->QMdiArea::leaveEvent(event);
}

void QMdiArea_virtualbase_moveEvent(VirtualQMdiArea* self, QMoveEvent* event) {

	self->QMdiArea::moveEvent(event);
}

void QMdiArea_virtualbase_closeEvent(VirtualQMdiArea* self, QCloseEvent* event) {

	self->QMdiArea::closeEvent(event);
}

void QMdiArea_virtualbase_tabletEvent(VirtualQMdiArea* self, QTabletEvent* event) {

	self->QMdiArea::tabletEvent(event);
}

void QMdiArea_virtualbase_actionEvent(VirtualQMdiArea* self, QActionEvent* event) {

	self->QMdiArea::actionEvent(event);
}

void QMdiArea_virtualbase_hideEvent(VirtualQMdiArea* self, QHideEvent* event) {

	self->QMdiArea::hideEvent(event);
}

bool QMdiArea_virtualbase_nativeEvent(VirtualQMdiArea* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QMdiArea::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QMdiArea_virtualbase_metric(const VirtualQMdiArea* self, int param1) {

	return self->QMdiArea::metric(static_cast<VirtualQMdiArea::PaintDeviceMetric>(param1));
}

void QMdiArea_virtualbase_initPainter(const VirtualQMdiArea* self, QPainter* painter) {

	self->QMdiArea::initPainter(painter);
}

QPaintDevice* QMdiArea_virtualbase_redirected(const VirtualQMdiArea* self, QPoint* offset) {

	return self->QMdiArea::redirected(offset);
}

QPainter* QMdiArea_virtualbase_sharedPainter(const VirtualQMdiArea* self) {

	return self->QMdiArea::sharedPainter();
}

void QMdiArea_virtualbase_inputMethodEvent(VirtualQMdiArea* self, QInputMethodEvent* param1) {

	self->QMdiArea::inputMethodEvent(param1);
}

QVariant* QMdiArea_virtualbase_inputMethodQuery(const VirtualQMdiArea* self, int param1) {

	return new QVariant(self->QMdiArea::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QMdiArea_virtualbase_focusNextPrevChild(VirtualQMdiArea* self, bool next) {

	return self->QMdiArea::focusNextPrevChild(next);
}

void QMdiArea_virtualbase_customEvent(VirtualQMdiArea* self, QEvent* event) {

	self->QMdiArea::customEvent(event);
}

void QMdiArea_virtualbase_connectNotify(VirtualQMdiArea* self, QMetaMethod* signal) {

	self->QMdiArea::connectNotify(*signal);
}

void QMdiArea_virtualbase_disconnectNotify(VirtualQMdiArea* self, QMetaMethod* signal) {

	self->QMdiArea::disconnectNotify(*signal);
}

const QMetaObject* QMdiArea_staticMetaObject() { return &QMdiArea::staticMetaObject; }

const QMdiArea_VTable* QMdiArea_vtbl(const VirtualQMdiArea* self) { return self->vtbl; }
void* QMdiArea_vdata(const VirtualQMdiArea* self) { return self->vdata; }
void QMdiArea_setVdata(VirtualQMdiArea* self, void* vdata) { self->vdata = vdata; }

void QMdiArea_protectedbase_setViewportMargins(VirtualQMdiArea* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QMdiArea_protectedbase_viewportMargins(const VirtualQMdiArea* self) {
	return new QMargins(self->viewportMargins());
}

void QMdiArea_protectedbase_drawFrame(VirtualQMdiArea* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QMdiArea_protectedbase_initStyleOption(const VirtualQMdiArea* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QMdiArea_protectedbase_updateMicroFocus(VirtualQMdiArea* self) {
	self->updateMicroFocus();
}

void QMdiArea_protectedbase_create(VirtualQMdiArea* self) {
	self->create();
}

void QMdiArea_protectedbase_destroy(VirtualQMdiArea* self) {
	self->destroy();
}

bool QMdiArea_protectedbase_focusNextChild(VirtualQMdiArea* self) {
	return self->focusNextChild();
}

bool QMdiArea_protectedbase_focusPreviousChild(VirtualQMdiArea* self) {
	return self->focusPreviousChild();
}

QObject* QMdiArea_protectedbase_sender(const VirtualQMdiArea* self) {
	return self->sender();
}

int QMdiArea_protectedbase_senderSignalIndex(const VirtualQMdiArea* self) {
	return self->senderSignalIndex();
}

int QMdiArea_protectedbase_receivers(const VirtualQMdiArea* self, const char* signal) {
	return self->receivers(signal);
}

bool QMdiArea_protectedbase_isSignalConnected(const VirtualQMdiArea* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QMdiArea_delete(QMdiArea* self) {
	delete self;
}

