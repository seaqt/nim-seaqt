#include <QAbstractButton>
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
#include <QRadioButton>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionButton>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qradiobutton.h>
#include "gen_qradiobutton.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQRadioButton final : public QRadioButton {
	struct QRadioButton_VTable* vtbl;
public:

	VirtualQRadioButton(struct QRadioButton_VTable* vtbl, QWidget* parent): QRadioButton(parent), vtbl(vtbl) {};
	VirtualQRadioButton(struct QRadioButton_VTable* vtbl): QRadioButton(), vtbl(vtbl) {};
	VirtualQRadioButton(struct QRadioButton_VTable* vtbl, const QString& text): QRadioButton(text), vtbl(vtbl) {};
	VirtualQRadioButton(struct QRadioButton_VTable* vtbl, const QString& text, QWidget* parent): QRadioButton(text, parent), vtbl(vtbl) {};

	virtual ~VirtualQRadioButton() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QRadioButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QRadioButton_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QRadioButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QRadioButton_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QRadioButton::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioButton_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QRadioButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QRadioButton_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QRadioButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QRadioButton_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QRadioButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool hitButton(const QPoint& param1) const override {
		if (vtbl->hitButton == 0) {
			return QRadioButton::hitButton(param1);
		}

		const QPoint& param1_ret = param1;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&param1_ret);

		bool callback_return_value = vtbl->hitButton(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_hitButton(const void* self, QPoint* param1);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QRadioButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QRadioButton::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QRadioButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(vtbl, this);

	}

	friend void QRadioButton_virtualbase_checkStateSet(void* self);

	// Subclass to allow providing a Go implementation
	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QRadioButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(vtbl, this);

	}

	friend void QRadioButton_virtualbase_nextCheckState(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QRadioButton::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_keyPressEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QRadioButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QRadioButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QRadioButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QRadioButton::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_focusInEvent(void* self, QFocusEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QRadioButton::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_focusOutEvent(void* self, QFocusEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QRadioButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QRadioButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_timerEvent(void* self, QTimerEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QRadioButton::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioButton_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QRadioButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QRadioButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioButton_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QRadioButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QRadioButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QRadioButton_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QRadioButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QRadioButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QRadioButton::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QRadioButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QRadioButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QRadioButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QRadioButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QRadioButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QRadioButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QRadioButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QRadioButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QRadioButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QRadioButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QRadioButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QRadioButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QRadioButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QRadioButton::nativeEvent(eventType, message, result);
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

	friend bool QRadioButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QRadioButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QRadioButton_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QRadioButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QRadioButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QRadioButton_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QRadioButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QRadioButton_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QRadioButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QRadioButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QRadioButton_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QRadioButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QRadioButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QRadioButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QRadioButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QRadioButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QRadioButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QRadioButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QRadioButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QRadioButton_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionButton* button);
	friend void QRadioButton_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QRadioButton_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QRadioButton_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QRadioButton_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QRadioButton_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QRadioButton_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QRadioButton_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QRadioButton_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QRadioButton_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QRadioButton* QRadioButton_new(struct QRadioButton_VTable* vtbl, QWidget* parent) {
	return new VirtualQRadioButton(vtbl, parent);
}

QRadioButton* QRadioButton_new2(struct QRadioButton_VTable* vtbl) {
	return new VirtualQRadioButton(vtbl);
}

QRadioButton* QRadioButton_new3(struct QRadioButton_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQRadioButton(vtbl, text_QString);
}

QRadioButton* QRadioButton_new4(struct QRadioButton_VTable* vtbl, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQRadioButton(vtbl, text_QString, parent);
}

void QRadioButton_virtbase(QRadioButton* src, QAbstractButton** outptr_QAbstractButton) {
	*outptr_QAbstractButton = static_cast<QAbstractButton*>(src);
}

QMetaObject* QRadioButton_metaObject(const QRadioButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QRadioButton_metacast(QRadioButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QRadioButton_metacall(QRadioButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QRadioButton_tr(const char* s) {
	QString _ret = QRadioButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioButton_trUtf8(const char* s) {
	QString _ret = QRadioButton::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QRadioButton_sizeHint(const QRadioButton* self) {
	return new QSize(self->sizeHint());
}

QSize* QRadioButton_minimumSizeHint(const QRadioButton* self) {
	return new QSize(self->minimumSizeHint());
}

struct miqt_string QRadioButton_tr2(const char* s, const char* c) {
	QString _ret = QRadioButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QRadioButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioButton_trUtf82(const char* s, const char* c) {
	QString _ret = QRadioButton::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QRadioButton_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QRadioButton::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QRadioButton_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQRadioButton*)(self) )->QRadioButton::metaObject();

}

void* QRadioButton_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQRadioButton*)(self) )->QRadioButton::qt_metacast(param1);

}

int QRadioButton_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQRadioButton*)(self) )->QRadioButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QRadioButton_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQRadioButton*)(self) )->QRadioButton::sizeHint());

}

QSize* QRadioButton_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQRadioButton*)(self) )->QRadioButton::minimumSizeHint());

}

bool QRadioButton_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQRadioButton*)(self) )->QRadioButton::event(e);

}

bool QRadioButton_virtualbase_hitButton(const void* self, QPoint* param1) {

	return ( (const VirtualQRadioButton*)(self) )->QRadioButton::hitButton(*param1);

}

void QRadioButton_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::paintEvent(param1);

}

void QRadioButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::mouseMoveEvent(param1);

}

void QRadioButton_virtualbase_checkStateSet(void* self) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::checkStateSet();

}

void QRadioButton_virtualbase_nextCheckState(void* self) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::nextCheckState();

}

void QRadioButton_virtualbase_keyPressEvent(void* self, QKeyEvent* e) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::keyPressEvent(e);

}

void QRadioButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::keyReleaseEvent(e);

}

void QRadioButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::mousePressEvent(e);

}

void QRadioButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::mouseReleaseEvent(e);

}

void QRadioButton_virtualbase_focusInEvent(void* self, QFocusEvent* e) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::focusInEvent(e);

}

void QRadioButton_virtualbase_focusOutEvent(void* self, QFocusEvent* e) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::focusOutEvent(e);

}

void QRadioButton_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::changeEvent(e);

}

void QRadioButton_virtualbase_timerEvent(void* self, QTimerEvent* e) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::timerEvent(e);

}

int QRadioButton_virtualbase_devType(const void* self) {

	return ( (const VirtualQRadioButton*)(self) )->QRadioButton::devType();

}

void QRadioButton_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::setVisible(visible);

}

int QRadioButton_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQRadioButton*)(self) )->QRadioButton::heightForWidth(static_cast<int>(param1));

}

bool QRadioButton_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQRadioButton*)(self) )->QRadioButton::hasHeightForWidth();

}

QPaintEngine* QRadioButton_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQRadioButton*)(self) )->QRadioButton::paintEngine();

}

void QRadioButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::mouseDoubleClickEvent(event);

}

void QRadioButton_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::wheelEvent(event);

}

void QRadioButton_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::enterEvent(event);

}

void QRadioButton_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::leaveEvent(event);

}

void QRadioButton_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::moveEvent(event);

}

void QRadioButton_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::resizeEvent(event);

}

void QRadioButton_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::closeEvent(event);

}

void QRadioButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::contextMenuEvent(event);

}

void QRadioButton_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::tabletEvent(event);

}

void QRadioButton_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::actionEvent(event);

}

void QRadioButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::dragEnterEvent(event);

}

void QRadioButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::dragMoveEvent(event);

}

void QRadioButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::dragLeaveEvent(event);

}

void QRadioButton_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::dropEvent(event);

}

void QRadioButton_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::showEvent(event);

}

void QRadioButton_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::hideEvent(event);

}

bool QRadioButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQRadioButton*)(self) )->QRadioButton::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QRadioButton_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQRadioButton*)(self) )->QRadioButton::metric(static_cast<VirtualQRadioButton::PaintDeviceMetric>(param1));

}

void QRadioButton_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQRadioButton*)(self) )->QRadioButton::initPainter(painter);

}

QPaintDevice* QRadioButton_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQRadioButton*)(self) )->QRadioButton::redirected(offset);

}

QPainter* QRadioButton_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQRadioButton*)(self) )->QRadioButton::sharedPainter();

}

void QRadioButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::inputMethodEvent(param1);

}

QVariant* QRadioButton_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQRadioButton*)(self) )->QRadioButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QRadioButton_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQRadioButton*)(self) )->QRadioButton::focusNextPrevChild(next);

}

bool QRadioButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQRadioButton*)(self) )->QRadioButton::eventFilter(watched, event);

}

void QRadioButton_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::childEvent(event);

}

void QRadioButton_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::customEvent(event);

}

void QRadioButton_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::connectNotify(*signal);

}

void QRadioButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQRadioButton*)(self) )->QRadioButton::disconnectNotify(*signal);

}

const QMetaObject* QRadioButton_staticMetaObject() { return &QRadioButton::staticMetaObject; }
void QRadioButton_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionButton* button) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(button);

}

void QRadioButton_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QRadioButton_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QRadioButton_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QRadioButton_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QRadioButton_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QRadioButton_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QRadioButton_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QRadioButton_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QRadioButton_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQRadioButton* self_cast = dynamic_cast<VirtualQRadioButton*>( (QRadioButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QRadioButton_delete(QRadioButton* self) {
	delete self;
}

