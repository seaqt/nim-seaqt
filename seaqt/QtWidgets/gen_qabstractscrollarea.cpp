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
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
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
#include <QScrollBar>
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
#include <qabstractscrollarea.h>
#include "gen_qabstractscrollarea.h"
class VirtualQAbstractScrollArea final : public QAbstractScrollArea {
	const QAbstractScrollArea_VTable* vtbl;
	void* vdata;
public:
	friend const QAbstractScrollArea_VTable* QAbstractScrollArea_vtbl(const VirtualQAbstractScrollArea* self);
	friend void* QAbstractScrollArea_vdata(const VirtualQAbstractScrollArea* self);
	friend void QAbstractScrollArea_setVdata(VirtualQAbstractScrollArea* self, void* vdata);

	VirtualQAbstractScrollArea(const QAbstractScrollArea_VTable* vtbl, void* vdata, QWidget* parent): QAbstractScrollArea(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQAbstractScrollArea(const QAbstractScrollArea_VTable* vtbl, void* vdata): QAbstractScrollArea(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQAbstractScrollArea() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractScrollArea::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractScrollArea_virtualbase_metaObject(const VirtualQAbstractScrollArea* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractScrollArea::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractScrollArea_virtualbase_metacast(VirtualQAbstractScrollArea* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractScrollArea::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractScrollArea_virtualbase_metacall(VirtualQAbstractScrollArea* self, int param1, int param2, void** param3);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractScrollArea::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractScrollArea_virtualbase_minimumSizeHint(const VirtualQAbstractScrollArea* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractScrollArea::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractScrollArea_virtualbase_sizeHint(const VirtualQAbstractScrollArea* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QAbstractScrollArea::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_setupViewport(VirtualQAbstractScrollArea* self, QWidget* viewport);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractScrollArea::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractScrollArea_virtualbase_eventFilter(VirtualQAbstractScrollArea* self, QObject* param1, QEvent* param2);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QAbstractScrollArea::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractScrollArea_virtualbase_event(VirtualQAbstractScrollArea* self, QEvent* param1);

	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QAbstractScrollArea::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractScrollArea_virtualbase_viewportEvent(VirtualQAbstractScrollArea* self, QEvent* param1);

	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractScrollArea::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_resizeEvent(VirtualQAbstractScrollArea* self, QResizeEvent* param1);

	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QAbstractScrollArea::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_paintEvent(VirtualQAbstractScrollArea* self, QPaintEvent* param1);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractScrollArea::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_mousePressEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1);

	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractScrollArea::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_mouseReleaseEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1);

	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractScrollArea::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_mouseDoubleClickEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1);

	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractScrollArea::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_mouseMoveEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1);

	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractScrollArea::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_wheelEvent(VirtualQAbstractScrollArea* self, QWheelEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractScrollArea::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_contextMenuEvent(VirtualQAbstractScrollArea* self, QContextMenuEvent* param1);

	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractScrollArea::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_dragEnterEvent(VirtualQAbstractScrollArea* self, QDragEnterEvent* param1);

	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractScrollArea::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_dragMoveEvent(VirtualQAbstractScrollArea* self, QDragMoveEvent* param1);

	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractScrollArea::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_dragLeaveEvent(VirtualQAbstractScrollArea* self, QDragLeaveEvent* param1);

	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QAbstractScrollArea::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_dropEvent(VirtualQAbstractScrollArea* self, QDropEvent* param1);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractScrollArea::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_keyPressEvent(VirtualQAbstractScrollArea* self, QKeyEvent* param1);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QAbstractScrollArea::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QAbstractScrollArea_virtualbase_scrollContentsBy(VirtualQAbstractScrollArea* self, int dx, int dy);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QAbstractScrollArea::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QAbstractScrollArea_virtualbase_viewportSizeHint(const VirtualQAbstractScrollArea* self);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QAbstractScrollArea::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_changeEvent(VirtualQAbstractScrollArea* self, QEvent* param1);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QAbstractScrollArea::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_initStyleOption(const VirtualQAbstractScrollArea* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractScrollArea::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractScrollArea_virtualbase_devType(const VirtualQAbstractScrollArea* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractScrollArea::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_setVisible(VirtualQAbstractScrollArea* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractScrollArea::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractScrollArea_virtualbase_heightForWidth(const VirtualQAbstractScrollArea* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractScrollArea::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QAbstractScrollArea_virtualbase_hasHeightForWidth(const VirtualQAbstractScrollArea* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractScrollArea::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractScrollArea_virtualbase_paintEngine(const VirtualQAbstractScrollArea* self);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractScrollArea::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_keyReleaseEvent(VirtualQAbstractScrollArea* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractScrollArea::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_focusInEvent(VirtualQAbstractScrollArea* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractScrollArea::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_focusOutEvent(VirtualQAbstractScrollArea* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractScrollArea::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_enterEvent(VirtualQAbstractScrollArea* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractScrollArea::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_leaveEvent(VirtualQAbstractScrollArea* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractScrollArea::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_moveEvent(VirtualQAbstractScrollArea* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractScrollArea::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_closeEvent(VirtualQAbstractScrollArea* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractScrollArea::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_tabletEvent(VirtualQAbstractScrollArea* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractScrollArea::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_actionEvent(VirtualQAbstractScrollArea* self, QActionEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractScrollArea::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_showEvent(VirtualQAbstractScrollArea* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractScrollArea::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_hideEvent(VirtualQAbstractScrollArea* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractScrollArea::nativeEvent(eventType, message, result);
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

		bool callback_return_value = vtbl->nativeEvent(this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QAbstractScrollArea_virtualbase_nativeEvent(VirtualQAbstractScrollArea* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractScrollArea::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractScrollArea_virtualbase_metric(const VirtualQAbstractScrollArea* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractScrollArea::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_initPainter(const VirtualQAbstractScrollArea* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractScrollArea::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractScrollArea_virtualbase_redirected(const VirtualQAbstractScrollArea* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractScrollArea::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QAbstractScrollArea_virtualbase_sharedPainter(const VirtualQAbstractScrollArea* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractScrollArea::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_inputMethodEvent(VirtualQAbstractScrollArea* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractScrollArea::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QAbstractScrollArea_virtualbase_inputMethodQuery(const VirtualQAbstractScrollArea* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractScrollArea::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractScrollArea_virtualbase_focusNextPrevChild(VirtualQAbstractScrollArea* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractScrollArea::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_timerEvent(VirtualQAbstractScrollArea* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractScrollArea::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_childEvent(VirtualQAbstractScrollArea* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractScrollArea::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_customEvent(VirtualQAbstractScrollArea* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractScrollArea::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_connectNotify(VirtualQAbstractScrollArea* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractScrollArea::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QAbstractScrollArea_virtualbase_disconnectNotify(VirtualQAbstractScrollArea* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QAbstractScrollArea_protectedbase_setViewportMargins(VirtualQAbstractScrollArea* self, int left, int top, int right, int bottom);
	friend void QAbstractScrollArea_protectedbase_setViewportMarginsWithMargins(VirtualQAbstractScrollArea* self, QMargins* margins);
	friend QMargins* QAbstractScrollArea_protectedbase_viewportMargins(const VirtualQAbstractScrollArea* self);
	friend void QAbstractScrollArea_protectedbase_drawFrame(VirtualQAbstractScrollArea* self, QPainter* param1);
	friend void QAbstractScrollArea_protectedbase_updateMicroFocus(VirtualQAbstractScrollArea* self);
	friend void QAbstractScrollArea_protectedbase_create(VirtualQAbstractScrollArea* self);
	friend void QAbstractScrollArea_protectedbase_destroy(VirtualQAbstractScrollArea* self);
	friend bool QAbstractScrollArea_protectedbase_focusNextChild(VirtualQAbstractScrollArea* self);
	friend bool QAbstractScrollArea_protectedbase_focusPreviousChild(VirtualQAbstractScrollArea* self);
	friend QObject* QAbstractScrollArea_protectedbase_sender(const VirtualQAbstractScrollArea* self);
	friend int QAbstractScrollArea_protectedbase_senderSignalIndex(const VirtualQAbstractScrollArea* self);
	friend int QAbstractScrollArea_protectedbase_receivers(const VirtualQAbstractScrollArea* self, const char* signal);
	friend bool QAbstractScrollArea_protectedbase_isSignalConnected(const VirtualQAbstractScrollArea* self, QMetaMethod* signal);
};

VirtualQAbstractScrollArea* QAbstractScrollArea_new(const QAbstractScrollArea_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQAbstractScrollArea(vtbl, vdata, parent);
}

VirtualQAbstractScrollArea* QAbstractScrollArea_new2(const QAbstractScrollArea_VTable* vtbl, void* vdata) {
	return new VirtualQAbstractScrollArea(vtbl, vdata);
}

void QAbstractScrollArea_virtbase(QAbstractScrollArea* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QAbstractScrollArea_metaObject(const QAbstractScrollArea* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractScrollArea_metacast(QAbstractScrollArea* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractScrollArea_metacall(QAbstractScrollArea* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractScrollArea_tr(const char* s) {
	QString _ret = QAbstractScrollArea::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAbstractScrollArea_verticalScrollBarPolicy(const QAbstractScrollArea* self) {
	Qt::ScrollBarPolicy _ret = self->verticalScrollBarPolicy();
	return static_cast<int>(_ret);
}

void QAbstractScrollArea_setVerticalScrollBarPolicy(QAbstractScrollArea* self, int verticalScrollBarPolicy) {
	self->setVerticalScrollBarPolicy(static_cast<Qt::ScrollBarPolicy>(verticalScrollBarPolicy));
}

QScrollBar* QAbstractScrollArea_verticalScrollBar(const QAbstractScrollArea* self) {
	return self->verticalScrollBar();
}

void QAbstractScrollArea_setVerticalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar) {
	self->setVerticalScrollBar(scrollbar);
}

int QAbstractScrollArea_horizontalScrollBarPolicy(const QAbstractScrollArea* self) {
	Qt::ScrollBarPolicy _ret = self->horizontalScrollBarPolicy();
	return static_cast<int>(_ret);
}

void QAbstractScrollArea_setHorizontalScrollBarPolicy(QAbstractScrollArea* self, int horizontalScrollBarPolicy) {
	self->setHorizontalScrollBarPolicy(static_cast<Qt::ScrollBarPolicy>(horizontalScrollBarPolicy));
}

QScrollBar* QAbstractScrollArea_horizontalScrollBar(const QAbstractScrollArea* self) {
	return self->horizontalScrollBar();
}

void QAbstractScrollArea_setHorizontalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar) {
	self->setHorizontalScrollBar(scrollbar);
}

QWidget* QAbstractScrollArea_cornerWidget(const QAbstractScrollArea* self) {
	return self->cornerWidget();
}

void QAbstractScrollArea_setCornerWidget(QAbstractScrollArea* self, QWidget* widget) {
	self->setCornerWidget(widget);
}

void QAbstractScrollArea_addScrollBarWidget(QAbstractScrollArea* self, QWidget* widget, int alignment) {
	self->addScrollBarWidget(widget, static_cast<Qt::Alignment>(alignment));
}

struct miqt_array /* of QWidget* */  QAbstractScrollArea_scrollBarWidgets(QAbstractScrollArea* self, int alignment) {
	QWidgetList _ret = self->scrollBarWidgets(static_cast<Qt::Alignment>(alignment));
	// Convert QList<> from C++ memory to manually-managed C memory
	QWidget** _arr = static_cast<QWidget**>(malloc(sizeof(QWidget*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QWidget* QAbstractScrollArea_viewport(const QAbstractScrollArea* self) {
	return self->viewport();
}

void QAbstractScrollArea_setViewport(QAbstractScrollArea* self, QWidget* widget) {
	self->setViewport(widget);
}

QSize* QAbstractScrollArea_maximumViewportSize(const QAbstractScrollArea* self) {
	return new QSize(self->maximumViewportSize());
}

QSize* QAbstractScrollArea_minimumSizeHint(const QAbstractScrollArea* self) {
	return new QSize(self->minimumSizeHint());
}

QSize* QAbstractScrollArea_sizeHint(const QAbstractScrollArea* self) {
	return new QSize(self->sizeHint());
}

void QAbstractScrollArea_setupViewport(QAbstractScrollArea* self, QWidget* viewport) {
	self->setupViewport(viewport);
}

int QAbstractScrollArea_sizeAdjustPolicy(const QAbstractScrollArea* self) {
	QAbstractScrollArea::SizeAdjustPolicy _ret = self->sizeAdjustPolicy();
	return static_cast<int>(_ret);
}

void QAbstractScrollArea_setSizeAdjustPolicy(QAbstractScrollArea* self, int policy) {
	self->setSizeAdjustPolicy(static_cast<QAbstractScrollArea::SizeAdjustPolicy>(policy));
}

struct miqt_string QAbstractScrollArea_tr2(const char* s, const char* c) {
	QString _ret = QAbstractScrollArea::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractScrollArea_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractScrollArea::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractScrollArea_virtualbase_metaObject(const VirtualQAbstractScrollArea* self) {

	return (QMetaObject*) self->QAbstractScrollArea::metaObject();
}

void* QAbstractScrollArea_virtualbase_metacast(VirtualQAbstractScrollArea* self, const char* param1) {

	return self->QAbstractScrollArea::qt_metacast(param1);
}

int QAbstractScrollArea_virtualbase_metacall(VirtualQAbstractScrollArea* self, int param1, int param2, void** param3) {

	return self->QAbstractScrollArea::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QAbstractScrollArea_virtualbase_minimumSizeHint(const VirtualQAbstractScrollArea* self) {

	return new QSize(self->QAbstractScrollArea::minimumSizeHint());
}

QSize* QAbstractScrollArea_virtualbase_sizeHint(const VirtualQAbstractScrollArea* self) {

	return new QSize(self->QAbstractScrollArea::sizeHint());
}

void QAbstractScrollArea_virtualbase_setupViewport(VirtualQAbstractScrollArea* self, QWidget* viewport) {

	self->QAbstractScrollArea::setupViewport(viewport);
}

bool QAbstractScrollArea_virtualbase_eventFilter(VirtualQAbstractScrollArea* self, QObject* param1, QEvent* param2) {

	return self->QAbstractScrollArea::eventFilter(param1, param2);
}

bool QAbstractScrollArea_virtualbase_event(VirtualQAbstractScrollArea* self, QEvent* param1) {

	return self->QAbstractScrollArea::event(param1);
}

bool QAbstractScrollArea_virtualbase_viewportEvent(VirtualQAbstractScrollArea* self, QEvent* param1) {

	return self->QAbstractScrollArea::viewportEvent(param1);
}

void QAbstractScrollArea_virtualbase_resizeEvent(VirtualQAbstractScrollArea* self, QResizeEvent* param1) {

	self->QAbstractScrollArea::resizeEvent(param1);
}

void QAbstractScrollArea_virtualbase_paintEvent(VirtualQAbstractScrollArea* self, QPaintEvent* param1) {

	self->QAbstractScrollArea::paintEvent(param1);
}

void QAbstractScrollArea_virtualbase_mousePressEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1) {

	self->QAbstractScrollArea::mousePressEvent(param1);
}

void QAbstractScrollArea_virtualbase_mouseReleaseEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1) {

	self->QAbstractScrollArea::mouseReleaseEvent(param1);
}

void QAbstractScrollArea_virtualbase_mouseDoubleClickEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1) {

	self->QAbstractScrollArea::mouseDoubleClickEvent(param1);
}

void QAbstractScrollArea_virtualbase_mouseMoveEvent(VirtualQAbstractScrollArea* self, QMouseEvent* param1) {

	self->QAbstractScrollArea::mouseMoveEvent(param1);
}

void QAbstractScrollArea_virtualbase_wheelEvent(VirtualQAbstractScrollArea* self, QWheelEvent* param1) {

	self->QAbstractScrollArea::wheelEvent(param1);
}

void QAbstractScrollArea_virtualbase_contextMenuEvent(VirtualQAbstractScrollArea* self, QContextMenuEvent* param1) {

	self->QAbstractScrollArea::contextMenuEvent(param1);
}

void QAbstractScrollArea_virtualbase_dragEnterEvent(VirtualQAbstractScrollArea* self, QDragEnterEvent* param1) {

	self->QAbstractScrollArea::dragEnterEvent(param1);
}

void QAbstractScrollArea_virtualbase_dragMoveEvent(VirtualQAbstractScrollArea* self, QDragMoveEvent* param1) {

	self->QAbstractScrollArea::dragMoveEvent(param1);
}

void QAbstractScrollArea_virtualbase_dragLeaveEvent(VirtualQAbstractScrollArea* self, QDragLeaveEvent* param1) {

	self->QAbstractScrollArea::dragLeaveEvent(param1);
}

void QAbstractScrollArea_virtualbase_dropEvent(VirtualQAbstractScrollArea* self, QDropEvent* param1) {

	self->QAbstractScrollArea::dropEvent(param1);
}

void QAbstractScrollArea_virtualbase_keyPressEvent(VirtualQAbstractScrollArea* self, QKeyEvent* param1) {

	self->QAbstractScrollArea::keyPressEvent(param1);
}

void QAbstractScrollArea_virtualbase_scrollContentsBy(VirtualQAbstractScrollArea* self, int dx, int dy) {

	self->QAbstractScrollArea::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

QSize* QAbstractScrollArea_virtualbase_viewportSizeHint(const VirtualQAbstractScrollArea* self) {

	return new QSize(self->QAbstractScrollArea::viewportSizeHint());
}

void QAbstractScrollArea_virtualbase_changeEvent(VirtualQAbstractScrollArea* self, QEvent* param1) {

	self->QAbstractScrollArea::changeEvent(param1);
}

void QAbstractScrollArea_virtualbase_initStyleOption(const VirtualQAbstractScrollArea* self, QStyleOptionFrame* option) {

	self->QAbstractScrollArea::initStyleOption(option);
}

int QAbstractScrollArea_virtualbase_devType(const VirtualQAbstractScrollArea* self) {

	return self->QAbstractScrollArea::devType();
}

void QAbstractScrollArea_virtualbase_setVisible(VirtualQAbstractScrollArea* self, bool visible) {

	self->QAbstractScrollArea::setVisible(visible);
}

int QAbstractScrollArea_virtualbase_heightForWidth(const VirtualQAbstractScrollArea* self, int param1) {

	return self->QAbstractScrollArea::heightForWidth(static_cast<int>(param1));
}

bool QAbstractScrollArea_virtualbase_hasHeightForWidth(const VirtualQAbstractScrollArea* self) {

	return self->QAbstractScrollArea::hasHeightForWidth();
}

QPaintEngine* QAbstractScrollArea_virtualbase_paintEngine(const VirtualQAbstractScrollArea* self) {

	return self->QAbstractScrollArea::paintEngine();
}

void QAbstractScrollArea_virtualbase_keyReleaseEvent(VirtualQAbstractScrollArea* self, QKeyEvent* event) {

	self->QAbstractScrollArea::keyReleaseEvent(event);
}

void QAbstractScrollArea_virtualbase_focusInEvent(VirtualQAbstractScrollArea* self, QFocusEvent* event) {

	self->QAbstractScrollArea::focusInEvent(event);
}

void QAbstractScrollArea_virtualbase_focusOutEvent(VirtualQAbstractScrollArea* self, QFocusEvent* event) {

	self->QAbstractScrollArea::focusOutEvent(event);
}

void QAbstractScrollArea_virtualbase_enterEvent(VirtualQAbstractScrollArea* self, QEnterEvent* event) {

	self->QAbstractScrollArea::enterEvent(event);
}

void QAbstractScrollArea_virtualbase_leaveEvent(VirtualQAbstractScrollArea* self, QEvent* event) {

	self->QAbstractScrollArea::leaveEvent(event);
}

void QAbstractScrollArea_virtualbase_moveEvent(VirtualQAbstractScrollArea* self, QMoveEvent* event) {

	self->QAbstractScrollArea::moveEvent(event);
}

void QAbstractScrollArea_virtualbase_closeEvent(VirtualQAbstractScrollArea* self, QCloseEvent* event) {

	self->QAbstractScrollArea::closeEvent(event);
}

void QAbstractScrollArea_virtualbase_tabletEvent(VirtualQAbstractScrollArea* self, QTabletEvent* event) {

	self->QAbstractScrollArea::tabletEvent(event);
}

void QAbstractScrollArea_virtualbase_actionEvent(VirtualQAbstractScrollArea* self, QActionEvent* event) {

	self->QAbstractScrollArea::actionEvent(event);
}

void QAbstractScrollArea_virtualbase_showEvent(VirtualQAbstractScrollArea* self, QShowEvent* event) {

	self->QAbstractScrollArea::showEvent(event);
}

void QAbstractScrollArea_virtualbase_hideEvent(VirtualQAbstractScrollArea* self, QHideEvent* event) {

	self->QAbstractScrollArea::hideEvent(event);
}

bool QAbstractScrollArea_virtualbase_nativeEvent(VirtualQAbstractScrollArea* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QAbstractScrollArea::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QAbstractScrollArea_virtualbase_metric(const VirtualQAbstractScrollArea* self, int param1) {

	return self->QAbstractScrollArea::metric(static_cast<VirtualQAbstractScrollArea::PaintDeviceMetric>(param1));
}

void QAbstractScrollArea_virtualbase_initPainter(const VirtualQAbstractScrollArea* self, QPainter* painter) {

	self->QAbstractScrollArea::initPainter(painter);
}

QPaintDevice* QAbstractScrollArea_virtualbase_redirected(const VirtualQAbstractScrollArea* self, QPoint* offset) {

	return self->QAbstractScrollArea::redirected(offset);
}

QPainter* QAbstractScrollArea_virtualbase_sharedPainter(const VirtualQAbstractScrollArea* self) {

	return self->QAbstractScrollArea::sharedPainter();
}

void QAbstractScrollArea_virtualbase_inputMethodEvent(VirtualQAbstractScrollArea* self, QInputMethodEvent* param1) {

	self->QAbstractScrollArea::inputMethodEvent(param1);
}

QVariant* QAbstractScrollArea_virtualbase_inputMethodQuery(const VirtualQAbstractScrollArea* self, int param1) {

	return new QVariant(self->QAbstractScrollArea::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QAbstractScrollArea_virtualbase_focusNextPrevChild(VirtualQAbstractScrollArea* self, bool next) {

	return self->QAbstractScrollArea::focusNextPrevChild(next);
}

void QAbstractScrollArea_virtualbase_timerEvent(VirtualQAbstractScrollArea* self, QTimerEvent* event) {

	self->QAbstractScrollArea::timerEvent(event);
}

void QAbstractScrollArea_virtualbase_childEvent(VirtualQAbstractScrollArea* self, QChildEvent* event) {

	self->QAbstractScrollArea::childEvent(event);
}

void QAbstractScrollArea_virtualbase_customEvent(VirtualQAbstractScrollArea* self, QEvent* event) {

	self->QAbstractScrollArea::customEvent(event);
}

void QAbstractScrollArea_virtualbase_connectNotify(VirtualQAbstractScrollArea* self, QMetaMethod* signal) {

	self->QAbstractScrollArea::connectNotify(*signal);
}

void QAbstractScrollArea_virtualbase_disconnectNotify(VirtualQAbstractScrollArea* self, QMetaMethod* signal) {

	self->QAbstractScrollArea::disconnectNotify(*signal);
}

const QMetaObject* QAbstractScrollArea_staticMetaObject() { return &QAbstractScrollArea::staticMetaObject; }

const QAbstractScrollArea_VTable* QAbstractScrollArea_vtbl(const VirtualQAbstractScrollArea* self) { return self->vtbl; }
void* QAbstractScrollArea_vdata(const VirtualQAbstractScrollArea* self) { return self->vdata; }
void QAbstractScrollArea_setVdata(VirtualQAbstractScrollArea* self, void* vdata) { self->vdata = vdata; }

void QAbstractScrollArea_protectedbase_setViewportMargins(VirtualQAbstractScrollArea* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

void QAbstractScrollArea_protectedbase_setViewportMarginsWithMargins(VirtualQAbstractScrollArea* self, QMargins* margins) {
	self->setViewportMargins(*margins);
}

QMargins* QAbstractScrollArea_protectedbase_viewportMargins(const VirtualQAbstractScrollArea* self) {
	return new QMargins(self->viewportMargins());
}

void QAbstractScrollArea_protectedbase_drawFrame(VirtualQAbstractScrollArea* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QAbstractScrollArea_protectedbase_updateMicroFocus(VirtualQAbstractScrollArea* self) {
	self->updateMicroFocus();
}

void QAbstractScrollArea_protectedbase_create(VirtualQAbstractScrollArea* self) {
	self->create();
}

void QAbstractScrollArea_protectedbase_destroy(VirtualQAbstractScrollArea* self) {
	self->destroy();
}

bool QAbstractScrollArea_protectedbase_focusNextChild(VirtualQAbstractScrollArea* self) {
	return self->focusNextChild();
}

bool QAbstractScrollArea_protectedbase_focusPreviousChild(VirtualQAbstractScrollArea* self) {
	return self->focusPreviousChild();
}

QObject* QAbstractScrollArea_protectedbase_sender(const VirtualQAbstractScrollArea* self) {
	return self->sender();
}

int QAbstractScrollArea_protectedbase_senderSignalIndex(const VirtualQAbstractScrollArea* self) {
	return self->senderSignalIndex();
}

int QAbstractScrollArea_protectedbase_receivers(const VirtualQAbstractScrollArea* self, const char* signal) {
	return self->receivers(signal);
}

bool QAbstractScrollArea_protectedbase_isSignalConnected(const VirtualQAbstractScrollArea* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QAbstractScrollArea_delete(QAbstractScrollArea* self) {
	delete self;
}

