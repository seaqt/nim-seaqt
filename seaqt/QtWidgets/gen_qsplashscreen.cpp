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
#include <QPixmap>
#include <QPoint>
#include <QResizeEvent>
#include <QScreen>
#include <QShowEvent>
#include <QSize>
#include <QSplashScreen>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsplashscreen.h>
#include "gen_qsplashscreen.h"
class VirtualQSplashScreen final : public QSplashScreen {
	const QSplashScreen_VTable* vtbl;
	void* vdata;
public:
	friend const QSplashScreen_VTable* QSplashScreen_vtbl(const VirtualQSplashScreen* self);
	friend void* QSplashScreen_vdata(const VirtualQSplashScreen* self);
	friend void QSplashScreen_setVdata(VirtualQSplashScreen* self, void* vdata);

	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata, QWidget* parent): QSplashScreen(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata): QSplashScreen(), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen): QSplashScreen(screen), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata, const QPixmap& pixmap): QSplashScreen(pixmap), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata, const QPixmap& pixmap, Qt::WindowFlags f): QSplashScreen(pixmap, f), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen, const QPixmap& pixmap): QSplashScreen(screen, pixmap), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen, const QPixmap& pixmap, Qt::WindowFlags f): QSplashScreen(screen, pixmap, f), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata, QWidget* parent, const QPixmap& pixmap): QSplashScreen(parent, pixmap), vtbl(vtbl), vdata(vdata) {}
	VirtualQSplashScreen(const QSplashScreen_VTable* vtbl, void* vdata, QWidget* parent, const QPixmap& pixmap, Qt::WindowFlags f): QSplashScreen(parent, pixmap, f), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQSplashScreen() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSplashScreen::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QSplashScreen_virtualbase_metaObject(const VirtualQSplashScreen* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSplashScreen::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QSplashScreen_virtualbase_metacast(VirtualQSplashScreen* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSplashScreen::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplashScreen_virtualbase_metacall(VirtualQSplashScreen* self, int param1, int param2, void** param3);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QSplashScreen::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QSplashScreen_virtualbase_event(VirtualQSplashScreen* self, QEvent* e);

	virtual void drawContents(QPainter* painter) override {
		if (vtbl->drawContents == 0) {
			QSplashScreen::drawContents(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->drawContents(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_drawContents(VirtualQSplashScreen* self, QPainter* painter);

	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QSplashScreen::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_mousePressEvent(VirtualQSplashScreen* self, QMouseEvent* param1);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSplashScreen::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplashScreen_virtualbase_devType(const VirtualQSplashScreen* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSplashScreen::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_setVisible(VirtualQSplashScreen* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSplashScreen::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSplashScreen_virtualbase_sizeHint(const VirtualQSplashScreen* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSplashScreen::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QSplashScreen_virtualbase_minimumSizeHint(const VirtualQSplashScreen* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSplashScreen::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplashScreen_virtualbase_heightForWidth(const VirtualQSplashScreen* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSplashScreen::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QSplashScreen_virtualbase_hasHeightForWidth(const VirtualQSplashScreen* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSplashScreen::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QSplashScreen_virtualbase_paintEngine(const VirtualQSplashScreen* self);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSplashScreen::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_mouseReleaseEvent(VirtualQSplashScreen* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSplashScreen::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_mouseDoubleClickEvent(VirtualQSplashScreen* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSplashScreen::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_mouseMoveEvent(VirtualQSplashScreen* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSplashScreen::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_wheelEvent(VirtualQSplashScreen* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSplashScreen::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_keyPressEvent(VirtualQSplashScreen* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSplashScreen::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_keyReleaseEvent(VirtualQSplashScreen* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSplashScreen::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_focusInEvent(VirtualQSplashScreen* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSplashScreen::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_focusOutEvent(VirtualQSplashScreen* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSplashScreen::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_enterEvent(VirtualQSplashScreen* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSplashScreen::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_leaveEvent(VirtualQSplashScreen* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QSplashScreen::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_paintEvent(VirtualQSplashScreen* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSplashScreen::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_moveEvent(VirtualQSplashScreen* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSplashScreen::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_resizeEvent(VirtualQSplashScreen* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSplashScreen::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_closeEvent(VirtualQSplashScreen* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSplashScreen::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_contextMenuEvent(VirtualQSplashScreen* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSplashScreen::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_tabletEvent(VirtualQSplashScreen* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSplashScreen::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_actionEvent(VirtualQSplashScreen* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSplashScreen::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_dragEnterEvent(VirtualQSplashScreen* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSplashScreen::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_dragMoveEvent(VirtualQSplashScreen* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSplashScreen::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_dragLeaveEvent(VirtualQSplashScreen* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSplashScreen::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_dropEvent(VirtualQSplashScreen* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSplashScreen::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_showEvent(VirtualQSplashScreen* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSplashScreen::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_hideEvent(VirtualQSplashScreen* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSplashScreen::nativeEvent(eventType, message, result);
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

	friend bool QSplashScreen_virtualbase_nativeEvent(VirtualQSplashScreen* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSplashScreen::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_changeEvent(VirtualQSplashScreen* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSplashScreen::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QSplashScreen_virtualbase_metric(const VirtualQSplashScreen* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSplashScreen::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_initPainter(const VirtualQSplashScreen* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSplashScreen::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QSplashScreen_virtualbase_redirected(const VirtualQSplashScreen* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSplashScreen::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QSplashScreen_virtualbase_sharedPainter(const VirtualQSplashScreen* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSplashScreen::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_inputMethodEvent(VirtualQSplashScreen* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSplashScreen::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QSplashScreen_virtualbase_inputMethodQuery(const VirtualQSplashScreen* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSplashScreen::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QSplashScreen_virtualbase_focusNextPrevChild(VirtualQSplashScreen* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSplashScreen::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QSplashScreen_virtualbase_eventFilter(VirtualQSplashScreen* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSplashScreen::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_timerEvent(VirtualQSplashScreen* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSplashScreen::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_childEvent(VirtualQSplashScreen* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSplashScreen::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_customEvent(VirtualQSplashScreen* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSplashScreen::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_connectNotify(VirtualQSplashScreen* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSplashScreen::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QSplashScreen_virtualbase_disconnectNotify(VirtualQSplashScreen* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QSplashScreen_protectedbase_updateMicroFocus(VirtualQSplashScreen* self);
	friend void QSplashScreen_protectedbase_create(VirtualQSplashScreen* self);
	friend void QSplashScreen_protectedbase_destroy(VirtualQSplashScreen* self);
	friend bool QSplashScreen_protectedbase_focusNextChild(VirtualQSplashScreen* self);
	friend bool QSplashScreen_protectedbase_focusPreviousChild(VirtualQSplashScreen* self);
	friend QObject* QSplashScreen_protectedbase_sender(const VirtualQSplashScreen* self);
	friend int QSplashScreen_protectedbase_senderSignalIndex(const VirtualQSplashScreen* self);
	friend int QSplashScreen_protectedbase_receivers(const VirtualQSplashScreen* self, const char* signal);
	friend bool QSplashScreen_protectedbase_isSignalConnected(const VirtualQSplashScreen* self, QMetaMethod* signal);
};

VirtualQSplashScreen* QSplashScreen_new(const QSplashScreen_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQSplashScreen(vtbl, vdata, parent);
}

VirtualQSplashScreen* QSplashScreen_new2(const QSplashScreen_VTable* vtbl, void* vdata) {
	return new VirtualQSplashScreen(vtbl, vdata);
}

VirtualQSplashScreen* QSplashScreen_new3(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen) {
	return new VirtualQSplashScreen(vtbl, vdata, screen);
}

VirtualQSplashScreen* QSplashScreen_new4(const QSplashScreen_VTable* vtbl, void* vdata, QPixmap* pixmap) {
	return new VirtualQSplashScreen(vtbl, vdata, *pixmap);
}

VirtualQSplashScreen* QSplashScreen_new5(const QSplashScreen_VTable* vtbl, void* vdata, QPixmap* pixmap, int f) {
	return new VirtualQSplashScreen(vtbl, vdata, *pixmap, static_cast<Qt::WindowFlags>(f));
}

VirtualQSplashScreen* QSplashScreen_new6(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen, QPixmap* pixmap) {
	return new VirtualQSplashScreen(vtbl, vdata, screen, *pixmap);
}

VirtualQSplashScreen* QSplashScreen_new7(const QSplashScreen_VTable* vtbl, void* vdata, QScreen* screen, QPixmap* pixmap, int f) {
	return new VirtualQSplashScreen(vtbl, vdata, screen, *pixmap, static_cast<Qt::WindowFlags>(f));
}

VirtualQSplashScreen* QSplashScreen_new8(const QSplashScreen_VTable* vtbl, void* vdata, QWidget* parent, QPixmap* pixmap) {
	return new VirtualQSplashScreen(vtbl, vdata, parent, *pixmap);
}

VirtualQSplashScreen* QSplashScreen_new9(const QSplashScreen_VTable* vtbl, void* vdata, QWidget* parent, QPixmap* pixmap, int f) {
	return new VirtualQSplashScreen(vtbl, vdata, parent, *pixmap, static_cast<Qt::WindowFlags>(f));
}

void QSplashScreen_virtbase(QSplashScreen* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QSplashScreen_metaObject(const QSplashScreen* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSplashScreen_metacast(QSplashScreen* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSplashScreen_metacall(QSplashScreen* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSplashScreen_tr(const char* s) {
	QString _ret = QSplashScreen::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplashScreen_trUtf8(const char* s) {
	QString _ret = QSplashScreen::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplashScreen_setPixmap(QSplashScreen* self, QPixmap* pixmap) {
	self->setPixmap(*pixmap);
}

QPixmap* QSplashScreen_pixmap(const QSplashScreen* self) {
	return new QPixmap(self->pixmap());
}

void QSplashScreen_finish(QSplashScreen* self, QWidget* w) {
	self->finish(w);
}

void QSplashScreen_repaint(QSplashScreen* self) {
	self->repaint();
}

struct miqt_string QSplashScreen_message(const QSplashScreen* self) {
	QString _ret = self->message();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplashScreen_showMessage(QSplashScreen* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->showMessage(message_QString);
}

void QSplashScreen_clearMessage(QSplashScreen* self) {
	self->clearMessage();
}

void QSplashScreen_messageChanged(QSplashScreen* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->messageChanged(message_QString);
}

void QSplashScreen_connect_messageChanged(VirtualQSplashScreen* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& message) {
			const QString message_ret = message;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray message_b = message_ret.toUtf8();
			struct miqt_string message_ms;
			message_ms.len = message_b.length();
			message_ms.data = static_cast<char*>(malloc(message_ms.len));
			memcpy(message_ms.data, message_b.data(), message_ms.len);
			struct miqt_string sigval1 = message_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQSplashScreen::connect(self, static_cast<void (QSplashScreen::*)(const QString&)>(&QSplashScreen::messageChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QSplashScreen_tr2(const char* s, const char* c) {
	QString _ret = QSplashScreen::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplashScreen_tr3(const char* s, const char* c, int n) {
	QString _ret = QSplashScreen::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplashScreen_trUtf82(const char* s, const char* c) {
	QString _ret = QSplashScreen::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplashScreen_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSplashScreen::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplashScreen_showMessage2(QSplashScreen* self, struct miqt_string message, int alignment) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->showMessage(message_QString, static_cast<int>(alignment));
}

void QSplashScreen_showMessage3(QSplashScreen* self, struct miqt_string message, int alignment, QColor* color) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->showMessage(message_QString, static_cast<int>(alignment), *color);
}

QMetaObject* QSplashScreen_virtualbase_metaObject(const VirtualQSplashScreen* self) {

	return (QMetaObject*) self->QSplashScreen::metaObject();
}

void* QSplashScreen_virtualbase_metacast(VirtualQSplashScreen* self, const char* param1) {

	return self->QSplashScreen::qt_metacast(param1);
}

int QSplashScreen_virtualbase_metacall(VirtualQSplashScreen* self, int param1, int param2, void** param3) {

	return self->QSplashScreen::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QSplashScreen_virtualbase_event(VirtualQSplashScreen* self, QEvent* e) {

	return self->QSplashScreen::event(e);
}

void QSplashScreen_virtualbase_drawContents(VirtualQSplashScreen* self, QPainter* painter) {

	self->QSplashScreen::drawContents(painter);
}

void QSplashScreen_virtualbase_mousePressEvent(VirtualQSplashScreen* self, QMouseEvent* param1) {

	self->QSplashScreen::mousePressEvent(param1);
}

int QSplashScreen_virtualbase_devType(const VirtualQSplashScreen* self) {

	return self->QSplashScreen::devType();
}

void QSplashScreen_virtualbase_setVisible(VirtualQSplashScreen* self, bool visible) {

	self->QSplashScreen::setVisible(visible);
}

QSize* QSplashScreen_virtualbase_sizeHint(const VirtualQSplashScreen* self) {

	return new QSize(self->QSplashScreen::sizeHint());
}

QSize* QSplashScreen_virtualbase_minimumSizeHint(const VirtualQSplashScreen* self) {

	return new QSize(self->QSplashScreen::minimumSizeHint());
}

int QSplashScreen_virtualbase_heightForWidth(const VirtualQSplashScreen* self, int param1) {

	return self->QSplashScreen::heightForWidth(static_cast<int>(param1));
}

bool QSplashScreen_virtualbase_hasHeightForWidth(const VirtualQSplashScreen* self) {

	return self->QSplashScreen::hasHeightForWidth();
}

QPaintEngine* QSplashScreen_virtualbase_paintEngine(const VirtualQSplashScreen* self) {

	return self->QSplashScreen::paintEngine();
}

void QSplashScreen_virtualbase_mouseReleaseEvent(VirtualQSplashScreen* self, QMouseEvent* event) {

	self->QSplashScreen::mouseReleaseEvent(event);
}

void QSplashScreen_virtualbase_mouseDoubleClickEvent(VirtualQSplashScreen* self, QMouseEvent* event) {

	self->QSplashScreen::mouseDoubleClickEvent(event);
}

void QSplashScreen_virtualbase_mouseMoveEvent(VirtualQSplashScreen* self, QMouseEvent* event) {

	self->QSplashScreen::mouseMoveEvent(event);
}

void QSplashScreen_virtualbase_wheelEvent(VirtualQSplashScreen* self, QWheelEvent* event) {

	self->QSplashScreen::wheelEvent(event);
}

void QSplashScreen_virtualbase_keyPressEvent(VirtualQSplashScreen* self, QKeyEvent* event) {

	self->QSplashScreen::keyPressEvent(event);
}

void QSplashScreen_virtualbase_keyReleaseEvent(VirtualQSplashScreen* self, QKeyEvent* event) {

	self->QSplashScreen::keyReleaseEvent(event);
}

void QSplashScreen_virtualbase_focusInEvent(VirtualQSplashScreen* self, QFocusEvent* event) {

	self->QSplashScreen::focusInEvent(event);
}

void QSplashScreen_virtualbase_focusOutEvent(VirtualQSplashScreen* self, QFocusEvent* event) {

	self->QSplashScreen::focusOutEvent(event);
}

void QSplashScreen_virtualbase_enterEvent(VirtualQSplashScreen* self, QEvent* event) {

	self->QSplashScreen::enterEvent(event);
}

void QSplashScreen_virtualbase_leaveEvent(VirtualQSplashScreen* self, QEvent* event) {

	self->QSplashScreen::leaveEvent(event);
}

void QSplashScreen_virtualbase_paintEvent(VirtualQSplashScreen* self, QPaintEvent* event) {

	self->QSplashScreen::paintEvent(event);
}

void QSplashScreen_virtualbase_moveEvent(VirtualQSplashScreen* self, QMoveEvent* event) {

	self->QSplashScreen::moveEvent(event);
}

void QSplashScreen_virtualbase_resizeEvent(VirtualQSplashScreen* self, QResizeEvent* event) {

	self->QSplashScreen::resizeEvent(event);
}

void QSplashScreen_virtualbase_closeEvent(VirtualQSplashScreen* self, QCloseEvent* event) {

	self->QSplashScreen::closeEvent(event);
}

void QSplashScreen_virtualbase_contextMenuEvent(VirtualQSplashScreen* self, QContextMenuEvent* event) {

	self->QSplashScreen::contextMenuEvent(event);
}

void QSplashScreen_virtualbase_tabletEvent(VirtualQSplashScreen* self, QTabletEvent* event) {

	self->QSplashScreen::tabletEvent(event);
}

void QSplashScreen_virtualbase_actionEvent(VirtualQSplashScreen* self, QActionEvent* event) {

	self->QSplashScreen::actionEvent(event);
}

void QSplashScreen_virtualbase_dragEnterEvent(VirtualQSplashScreen* self, QDragEnterEvent* event) {

	self->QSplashScreen::dragEnterEvent(event);
}

void QSplashScreen_virtualbase_dragMoveEvent(VirtualQSplashScreen* self, QDragMoveEvent* event) {

	self->QSplashScreen::dragMoveEvent(event);
}

void QSplashScreen_virtualbase_dragLeaveEvent(VirtualQSplashScreen* self, QDragLeaveEvent* event) {

	self->QSplashScreen::dragLeaveEvent(event);
}

void QSplashScreen_virtualbase_dropEvent(VirtualQSplashScreen* self, QDropEvent* event) {

	self->QSplashScreen::dropEvent(event);
}

void QSplashScreen_virtualbase_showEvent(VirtualQSplashScreen* self, QShowEvent* event) {

	self->QSplashScreen::showEvent(event);
}

void QSplashScreen_virtualbase_hideEvent(VirtualQSplashScreen* self, QHideEvent* event) {

	self->QSplashScreen::hideEvent(event);
}

bool QSplashScreen_virtualbase_nativeEvent(VirtualQSplashScreen* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QSplashScreen::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QSplashScreen_virtualbase_changeEvent(VirtualQSplashScreen* self, QEvent* param1) {

	self->QSplashScreen::changeEvent(param1);
}

int QSplashScreen_virtualbase_metric(const VirtualQSplashScreen* self, int param1) {

	return self->QSplashScreen::metric(static_cast<VirtualQSplashScreen::PaintDeviceMetric>(param1));
}

void QSplashScreen_virtualbase_initPainter(const VirtualQSplashScreen* self, QPainter* painter) {

	self->QSplashScreen::initPainter(painter);
}

QPaintDevice* QSplashScreen_virtualbase_redirected(const VirtualQSplashScreen* self, QPoint* offset) {

	return self->QSplashScreen::redirected(offset);
}

QPainter* QSplashScreen_virtualbase_sharedPainter(const VirtualQSplashScreen* self) {

	return self->QSplashScreen::sharedPainter();
}

void QSplashScreen_virtualbase_inputMethodEvent(VirtualQSplashScreen* self, QInputMethodEvent* param1) {

	self->QSplashScreen::inputMethodEvent(param1);
}

QVariant* QSplashScreen_virtualbase_inputMethodQuery(const VirtualQSplashScreen* self, int param1) {

	return new QVariant(self->QSplashScreen::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QSplashScreen_virtualbase_focusNextPrevChild(VirtualQSplashScreen* self, bool next) {

	return self->QSplashScreen::focusNextPrevChild(next);
}

bool QSplashScreen_virtualbase_eventFilter(VirtualQSplashScreen* self, QObject* watched, QEvent* event) {

	return self->QSplashScreen::eventFilter(watched, event);
}

void QSplashScreen_virtualbase_timerEvent(VirtualQSplashScreen* self, QTimerEvent* event) {

	self->QSplashScreen::timerEvent(event);
}

void QSplashScreen_virtualbase_childEvent(VirtualQSplashScreen* self, QChildEvent* event) {

	self->QSplashScreen::childEvent(event);
}

void QSplashScreen_virtualbase_customEvent(VirtualQSplashScreen* self, QEvent* event) {

	self->QSplashScreen::customEvent(event);
}

void QSplashScreen_virtualbase_connectNotify(VirtualQSplashScreen* self, QMetaMethod* signal) {

	self->QSplashScreen::connectNotify(*signal);
}

void QSplashScreen_virtualbase_disconnectNotify(VirtualQSplashScreen* self, QMetaMethod* signal) {

	self->QSplashScreen::disconnectNotify(*signal);
}

const QMetaObject* QSplashScreen_staticMetaObject() { return &QSplashScreen::staticMetaObject; }

const QSplashScreen_VTable* QSplashScreen_vtbl(const VirtualQSplashScreen* self) { return self->vtbl; }
void* QSplashScreen_vdata(const VirtualQSplashScreen* self) { return self->vdata; }
void QSplashScreen_setVdata(VirtualQSplashScreen* self, void* vdata) { self->vdata = vdata; }

void QSplashScreen_protectedbase_updateMicroFocus(VirtualQSplashScreen* self) {
	self->updateMicroFocus();
}

void QSplashScreen_protectedbase_create(VirtualQSplashScreen* self) {
	self->create();
}

void QSplashScreen_protectedbase_destroy(VirtualQSplashScreen* self) {
	self->destroy();
}

bool QSplashScreen_protectedbase_focusNextChild(VirtualQSplashScreen* self) {
	return self->focusNextChild();
}

bool QSplashScreen_protectedbase_focusPreviousChild(VirtualQSplashScreen* self) {
	return self->focusPreviousChild();
}

QObject* QSplashScreen_protectedbase_sender(const VirtualQSplashScreen* self) {
	return self->sender();
}

int QSplashScreen_protectedbase_senderSignalIndex(const VirtualQSplashScreen* self) {
	return self->senderSignalIndex();
}

int QSplashScreen_protectedbase_receivers(const VirtualQSplashScreen* self, const char* signal) {
	return self->receivers(signal);
}

bool QSplashScreen_protectedbase_isSignalConnected(const VirtualQSplashScreen* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QSplashScreen_delete(QSplashScreen* self) {
	delete self;
}

