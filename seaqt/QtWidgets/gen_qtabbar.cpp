#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QColor>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
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
#include <QRect>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionTab>
#include <QTabBar>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtabbar.h>
#include "gen_qtabbar.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTabBar final : public QTabBar {
	struct QTabBar_VTable* vtbl;
public:

	VirtualQTabBar(struct QTabBar_VTable* vtbl, QWidget* parent): QTabBar(parent), vtbl(vtbl) {};
	VirtualQTabBar(struct QTabBar_VTable* vtbl): QTabBar(), vtbl(vtbl) {};

	virtual ~VirtualQTabBar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTabBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTabBar_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTabBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTabBar_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTabBar::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTabBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTabBar_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTabBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTabBar_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize tabSizeHint(int index) const override {
		if (vtbl->tabSizeHint == 0) {
			return QTabBar::tabSizeHint(index);
		}

		int sigval1 = index;

		QSize* callback_return_value = vtbl->tabSizeHint(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTabBar_virtualbase_tabSizeHint(const void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumTabSizeHint(int index) const override {
		if (vtbl->minimumTabSizeHint == 0) {
			return QTabBar::minimumTabSizeHint(index);
		}

		int sigval1 = index;

		QSize* callback_return_value = vtbl->minimumTabSizeHint(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTabBar_virtualbase_minimumTabSizeHint(const void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void tabInserted(int index) override {
		if (vtbl->tabInserted == 0) {
			QTabBar::tabInserted(index);
			return;
		}

		int sigval1 = index;

		vtbl->tabInserted(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_tabInserted(void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void tabRemoved(int index) override {
		if (vtbl->tabRemoved == 0) {
			QTabBar::tabRemoved(index);
			return;
		}

		int sigval1 = index;

		vtbl->tabRemoved(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_tabRemoved(void* self, int index);

	// Subclass to allow providing a Go implementation
	virtual void tabLayoutChange() override {
		if (vtbl->tabLayoutChange == 0) {
			QTabBar::tabLayoutChange();
			return;
		}


		vtbl->tabLayoutChange(vtbl, this);

	}

	friend void QTabBar_virtualbase_tabLayoutChange(void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QTabBar::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTabBar_virtualbase_event(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QTabBar::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QTabBar::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QTabBar::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_hideEvent(void* self, QHideEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QTabBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QTabBar::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTabBar::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTabBar::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTabBar::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QTabBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QTabBar::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QTabBar::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTabBar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionTab* option, int tabIndex) const override {
		if (vtbl->initStyleOption == 0) {
			QTabBar::initStyleOption(option, tabIndex);
			return;
		}

		QStyleOptionTab* sigval1 = option;
		int sigval2 = tabIndex;

		vtbl->initStyleOption(vtbl, this, sigval1, sigval2);

	}

	friend void QTabBar_virtualbase_initStyleOption(const void* self, QStyleOptionTab* option, int tabIndex);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTabBar::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabBar_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTabBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTabBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabBar_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTabBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QTabBar_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTabBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QTabBar_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTabBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTabBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTabBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTabBar::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTabBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTabBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTabBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QTabBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTabBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTabBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTabBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTabBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTabBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTabBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTabBar::nativeEvent(eventType, message, result);
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

	friend bool QTabBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTabBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTabBar_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTabBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTabBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTabBar_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTabBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QTabBar_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTabBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTabBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTabBar_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTabBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTabBar_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTabBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTabBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTabBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTabBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTabBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTabBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTabBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTabBar_protectedbase_updateMicroFocus(void* self);
	friend void QTabBar_protectedbase_create(void* self);
	friend void QTabBar_protectedbase_destroy(void* self);
	friend bool QTabBar_protectedbase_focusNextChild(void* self);
	friend bool QTabBar_protectedbase_focusPreviousChild(void* self);
	friend QObject* QTabBar_protectedbase_sender(const void* self);
	friend int QTabBar_protectedbase_senderSignalIndex(const void* self);
	friend int QTabBar_protectedbase_receivers(const void* self, const char* signal);
	friend bool QTabBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QTabBar* QTabBar_new(struct QTabBar_VTable* vtbl, QWidget* parent) {
	return new VirtualQTabBar(vtbl, parent);
}

QTabBar* QTabBar_new2(struct QTabBar_VTable* vtbl) {
	return new VirtualQTabBar(vtbl);
}

void QTabBar_virtbase(QTabBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QTabBar_metaObject(const QTabBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTabBar_metacast(QTabBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTabBar_metacall(QTabBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTabBar_tr(const char* s) {
	QString _ret = QTabBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTabBar_shape(const QTabBar* self) {
	QTabBar::Shape _ret = self->shape();
	return static_cast<int>(_ret);
}

void QTabBar_setShape(QTabBar* self, int shape) {
	self->setShape(static_cast<QTabBar::Shape>(shape));
}

int QTabBar_addTab(QTabBar* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addTab(text_QString);
}

int QTabBar_addTab2(QTabBar* self, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->addTab(*icon, text_QString);
}

int QTabBar_insertTab(QTabBar* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertTab(static_cast<int>(index), text_QString);
}

int QTabBar_insertTab2(QTabBar* self, int index, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->insertTab(static_cast<int>(index), *icon, text_QString);
}

void QTabBar_removeTab(QTabBar* self, int index) {
	self->removeTab(static_cast<int>(index));
}

void QTabBar_moveTab(QTabBar* self, int from, int to) {
	self->moveTab(static_cast<int>(from), static_cast<int>(to));
}

bool QTabBar_isTabEnabled(const QTabBar* self, int index) {
	return self->isTabEnabled(static_cast<int>(index));
}

void QTabBar_setTabEnabled(QTabBar* self, int index, bool enabled) {
	self->setTabEnabled(static_cast<int>(index), enabled);
}

bool QTabBar_isTabVisible(const QTabBar* self, int index) {
	return self->isTabVisible(static_cast<int>(index));
}

void QTabBar_setTabVisible(QTabBar* self, int index, bool visible) {
	self->setTabVisible(static_cast<int>(index), visible);
}

struct miqt_string QTabBar_tabText(const QTabBar* self, int index) {
	QString _ret = self->tabText(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabBar_setTabText(QTabBar* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setTabText(static_cast<int>(index), text_QString);
}

QColor* QTabBar_tabTextColor(const QTabBar* self, int index) {
	return new QColor(self->tabTextColor(static_cast<int>(index)));
}

void QTabBar_setTabTextColor(QTabBar* self, int index, QColor* color) {
	self->setTabTextColor(static_cast<int>(index), *color);
}

QIcon* QTabBar_tabIcon(const QTabBar* self, int index) {
	return new QIcon(self->tabIcon(static_cast<int>(index)));
}

void QTabBar_setTabIcon(QTabBar* self, int index, QIcon* icon) {
	self->setTabIcon(static_cast<int>(index), *icon);
}

int QTabBar_elideMode(const QTabBar* self) {
	Qt::TextElideMode _ret = self->elideMode();
	return static_cast<int>(_ret);
}

void QTabBar_setElideMode(QTabBar* self, int mode) {
	self->setElideMode(static_cast<Qt::TextElideMode>(mode));
}

void QTabBar_setTabToolTip(QTabBar* self, int index, struct miqt_string tip) {
	QString tip_QString = QString::fromUtf8(tip.data, tip.len);
	self->setTabToolTip(static_cast<int>(index), tip_QString);
}

struct miqt_string QTabBar_tabToolTip(const QTabBar* self, int index) {
	QString _ret = self->tabToolTip(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabBar_setTabWhatsThis(QTabBar* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setTabWhatsThis(static_cast<int>(index), text_QString);
}

struct miqt_string QTabBar_tabWhatsThis(const QTabBar* self, int index) {
	QString _ret = self->tabWhatsThis(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabBar_setTabData(QTabBar* self, int index, QVariant* data) {
	self->setTabData(static_cast<int>(index), *data);
}

QVariant* QTabBar_tabData(const QTabBar* self, int index) {
	return new QVariant(self->tabData(static_cast<int>(index)));
}

QRect* QTabBar_tabRect(const QTabBar* self, int index) {
	return new QRect(self->tabRect(static_cast<int>(index)));
}

int QTabBar_tabAt(const QTabBar* self, QPoint* pos) {
	return self->tabAt(*pos);
}

int QTabBar_currentIndex(const QTabBar* self) {
	return self->currentIndex();
}

int QTabBar_count(const QTabBar* self) {
	return self->count();
}

QSize* QTabBar_sizeHint(const QTabBar* self) {
	return new QSize(self->sizeHint());
}

QSize* QTabBar_minimumSizeHint(const QTabBar* self) {
	return new QSize(self->minimumSizeHint());
}

void QTabBar_setDrawBase(QTabBar* self, bool drawTheBase) {
	self->setDrawBase(drawTheBase);
}

bool QTabBar_drawBase(const QTabBar* self) {
	return self->drawBase();
}

QSize* QTabBar_iconSize(const QTabBar* self) {
	return new QSize(self->iconSize());
}

void QTabBar_setIconSize(QTabBar* self, QSize* size) {
	self->setIconSize(*size);
}

bool QTabBar_usesScrollButtons(const QTabBar* self) {
	return self->usesScrollButtons();
}

void QTabBar_setUsesScrollButtons(QTabBar* self, bool useButtons) {
	self->setUsesScrollButtons(useButtons);
}

bool QTabBar_tabsClosable(const QTabBar* self) {
	return self->tabsClosable();
}

void QTabBar_setTabsClosable(QTabBar* self, bool closable) {
	self->setTabsClosable(closable);
}

void QTabBar_setTabButton(QTabBar* self, int index, int position, QWidget* widget) {
	self->setTabButton(static_cast<int>(index), static_cast<QTabBar::ButtonPosition>(position), widget);
}

QWidget* QTabBar_tabButton(const QTabBar* self, int index, int position) {
	return self->tabButton(static_cast<int>(index), static_cast<QTabBar::ButtonPosition>(position));
}

int QTabBar_selectionBehaviorOnRemove(const QTabBar* self) {
	QTabBar::SelectionBehavior _ret = self->selectionBehaviorOnRemove();
	return static_cast<int>(_ret);
}

void QTabBar_setSelectionBehaviorOnRemove(QTabBar* self, int behavior) {
	self->setSelectionBehaviorOnRemove(static_cast<QTabBar::SelectionBehavior>(behavior));
}

bool QTabBar_expanding(const QTabBar* self) {
	return self->expanding();
}

void QTabBar_setExpanding(QTabBar* self, bool enabled) {
	self->setExpanding(enabled);
}

bool QTabBar_isMovable(const QTabBar* self) {
	return self->isMovable();
}

void QTabBar_setMovable(QTabBar* self, bool movable) {
	self->setMovable(movable);
}

bool QTabBar_documentMode(const QTabBar* self) {
	return self->documentMode();
}

void QTabBar_setDocumentMode(QTabBar* self, bool set) {
	self->setDocumentMode(set);
}

bool QTabBar_autoHide(const QTabBar* self) {
	return self->autoHide();
}

void QTabBar_setAutoHide(QTabBar* self, bool hide) {
	self->setAutoHide(hide);
}

bool QTabBar_changeCurrentOnDrag(const QTabBar* self) {
	return self->changeCurrentOnDrag();
}

void QTabBar_setChangeCurrentOnDrag(QTabBar* self, bool change) {
	self->setChangeCurrentOnDrag(change);
}

struct miqt_string QTabBar_accessibleTabName(const QTabBar* self, int index) {
	QString _ret = self->accessibleTabName(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTabBar_setAccessibleTabName(QTabBar* self, int index, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setAccessibleTabName(static_cast<int>(index), name_QString);
}

void QTabBar_setCurrentIndex(QTabBar* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QTabBar_currentChanged(QTabBar* self, int index) {
	self->currentChanged(static_cast<int>(index));
}

void QTabBar_connect_currentChanged(QTabBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabBar::connect(self, static_cast<void (QTabBar::*)(int)>(&QTabBar::currentChanged), self, local_caller{slot, callback, release});
}

void QTabBar_tabCloseRequested(QTabBar* self, int index) {
	self->tabCloseRequested(static_cast<int>(index));
}

void QTabBar_connect_tabCloseRequested(QTabBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabBar::connect(self, static_cast<void (QTabBar::*)(int)>(&QTabBar::tabCloseRequested), self, local_caller{slot, callback, release});
}

void QTabBar_tabMoved(QTabBar* self, int from, int to) {
	self->tabMoved(static_cast<int>(from), static_cast<int>(to));
}

void QTabBar_connect_tabMoved(QTabBar* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(int from, int to) {
			int sigval1 = from;
			int sigval2 = to;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQTabBar::connect(self, static_cast<void (QTabBar::*)(int, int)>(&QTabBar::tabMoved), self, local_caller{slot, callback, release});
}

void QTabBar_tabBarClicked(QTabBar* self, int index) {
	self->tabBarClicked(static_cast<int>(index));
}

void QTabBar_connect_tabBarClicked(QTabBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabBar::connect(self, static_cast<void (QTabBar::*)(int)>(&QTabBar::tabBarClicked), self, local_caller{slot, callback, release});
}

void QTabBar_tabBarDoubleClicked(QTabBar* self, int index) {
	self->tabBarDoubleClicked(static_cast<int>(index));
}

void QTabBar_connect_tabBarDoubleClicked(QTabBar* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int index) {
			int sigval1 = index;
			callback(slot, sigval1);
		}
	};
	VirtualQTabBar::connect(self, static_cast<void (QTabBar::*)(int)>(&QTabBar::tabBarDoubleClicked), self, local_caller{slot, callback, release});
}

struct miqt_string QTabBar_tr2(const char* s, const char* c) {
	QString _ret = QTabBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTabBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QTabBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTabBar_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTabBar*)(self) )->QTabBar::metaObject();

}

void* QTabBar_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTabBar*)(self) )->QTabBar::qt_metacast(param1);

}

int QTabBar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTabBar*)(self) )->QTabBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QTabBar_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQTabBar*)(self) )->QTabBar::sizeHint());

}

QSize* QTabBar_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQTabBar*)(self) )->QTabBar::minimumSizeHint());

}

QSize* QTabBar_virtualbase_tabSizeHint(const void* self, int index) {

	return new QSize(( (const VirtualQTabBar*)(self) )->QTabBar::tabSizeHint(static_cast<int>(index)));

}

QSize* QTabBar_virtualbase_minimumTabSizeHint(const void* self, int index) {

	return new QSize(( (const VirtualQTabBar*)(self) )->QTabBar::minimumTabSizeHint(static_cast<int>(index)));

}

void QTabBar_virtualbase_tabInserted(void* self, int index) {

	( (VirtualQTabBar*)(self) )->QTabBar::tabInserted(static_cast<int>(index));

}

void QTabBar_virtualbase_tabRemoved(void* self, int index) {

	( (VirtualQTabBar*)(self) )->QTabBar::tabRemoved(static_cast<int>(index));

}

void QTabBar_virtualbase_tabLayoutChange(void* self) {

	( (VirtualQTabBar*)(self) )->QTabBar::tabLayoutChange();

}

bool QTabBar_virtualbase_event(void* self, QEvent* param1) {

	return ( (VirtualQTabBar*)(self) )->QTabBar::event(param1);

}

void QTabBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::resizeEvent(param1);

}

void QTabBar_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::showEvent(param1);

}

void QTabBar_virtualbase_hideEvent(void* self, QHideEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::hideEvent(param1);

}

void QTabBar_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::paintEvent(param1);

}

void QTabBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::mousePressEvent(param1);

}

void QTabBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::mouseMoveEvent(param1);

}

void QTabBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::mouseReleaseEvent(param1);

}

void QTabBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::mouseDoubleClickEvent(param1);

}

void QTabBar_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::wheelEvent(event);

}

void QTabBar_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::keyPressEvent(param1);

}

void QTabBar_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::changeEvent(param1);

}

void QTabBar_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::timerEvent(event);

}

void QTabBar_virtualbase_initStyleOption(const void* self, QStyleOptionTab* option, int tabIndex) {

	( (const VirtualQTabBar*)(self) )->QTabBar::initStyleOption(option, static_cast<int>(tabIndex));

}

int QTabBar_virtualbase_devType(const void* self) {

	return ( (const VirtualQTabBar*)(self) )->QTabBar::devType();

}

void QTabBar_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQTabBar*)(self) )->QTabBar::setVisible(visible);

}

int QTabBar_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQTabBar*)(self) )->QTabBar::heightForWidth(static_cast<int>(param1));

}

bool QTabBar_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQTabBar*)(self) )->QTabBar::hasHeightForWidth();

}

QPaintEngine* QTabBar_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQTabBar*)(self) )->QTabBar::paintEngine();

}

void QTabBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::keyReleaseEvent(event);

}

void QTabBar_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::focusInEvent(event);

}

void QTabBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::focusOutEvent(event);

}

void QTabBar_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::enterEvent(event);

}

void QTabBar_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::leaveEvent(event);

}

void QTabBar_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::moveEvent(event);

}

void QTabBar_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::closeEvent(event);

}

void QTabBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::contextMenuEvent(event);

}

void QTabBar_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::tabletEvent(event);

}

void QTabBar_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::actionEvent(event);

}

void QTabBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::dragEnterEvent(event);

}

void QTabBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::dragMoveEvent(event);

}

void QTabBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::dragLeaveEvent(event);

}

void QTabBar_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::dropEvent(event);

}

bool QTabBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQTabBar*)(self) )->QTabBar::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QTabBar_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQTabBar*)(self) )->QTabBar::metric(static_cast<VirtualQTabBar::PaintDeviceMetric>(param1));

}

void QTabBar_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQTabBar*)(self) )->QTabBar::initPainter(painter);

}

QPaintDevice* QTabBar_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQTabBar*)(self) )->QTabBar::redirected(offset);

}

QPainter* QTabBar_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQTabBar*)(self) )->QTabBar::sharedPainter();

}

void QTabBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQTabBar*)(self) )->QTabBar::inputMethodEvent(param1);

}

QVariant* QTabBar_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQTabBar*)(self) )->QTabBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QTabBar_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQTabBar*)(self) )->QTabBar::focusNextPrevChild(next);

}

bool QTabBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQTabBar*)(self) )->QTabBar::eventFilter(watched, event);

}

void QTabBar_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::childEvent(event);

}

void QTabBar_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTabBar*)(self) )->QTabBar::customEvent(event);

}

void QTabBar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTabBar*)(self) )->QTabBar::connectNotify(*signal);

}

void QTabBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTabBar*)(self) )->QTabBar::disconnectNotify(*signal);

}

const QMetaObject* QTabBar_staticMetaObject() { return &QTabBar::staticMetaObject; }
void QTabBar_protectedbase_updateMicroFocus(void* self) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	self_cast->updateMicroFocus();

}

void QTabBar_protectedbase_create(void* self) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	self_cast->create();

}

void QTabBar_protectedbase_destroy(void* self) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	self_cast->destroy();

}

bool QTabBar_protectedbase_focusNextChild(void* self) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	return self_cast->focusNextChild();

}

bool QTabBar_protectedbase_focusPreviousChild(void* self) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QTabBar_protectedbase_sender(const void* self) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	return self_cast->sender();

}

int QTabBar_protectedbase_senderSignalIndex(const void* self) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QTabBar_protectedbase_receivers(const void* self, const char* signal) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	return self_cast->receivers(signal);

}

bool QTabBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	VirtualQTabBar* self_cast = static_cast<VirtualQTabBar*>( (QTabBar*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QTabBar_delete(QTabBar* self) {
	delete self;
}

