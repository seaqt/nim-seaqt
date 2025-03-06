#include <QAbstractButton>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QCommandLinkButton>
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
#include <QPushButton>
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
#include <qcommandlinkbutton.h>
#include "gen_qcommandlinkbutton.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQCommandLinkButton final : public QCommandLinkButton {
	struct QCommandLinkButton_VTable* vtbl;
public:

	VirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, QWidget* parent): QCommandLinkButton(parent), vtbl(vtbl) {};
	VirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl): QCommandLinkButton(), vtbl(vtbl) {};
	VirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, const QString& text): QCommandLinkButton(text), vtbl(vtbl) {};
	VirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, const QString& text, const QString& description): QCommandLinkButton(text, description), vtbl(vtbl) {};
	VirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, const QString& text, QWidget* parent): QCommandLinkButton(text, parent), vtbl(vtbl) {};
	VirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, const QString& text, const QString& description, QWidget* parent): QCommandLinkButton(text, description, parent), vtbl(vtbl) {};

	virtual ~VirtualQCommandLinkButton() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCommandLinkButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QCommandLinkButton_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCommandLinkButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QCommandLinkButton_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCommandLinkButton::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCommandLinkButton_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCommandLinkButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QCommandLinkButton_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCommandLinkButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCommandLinkButton_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCommandLinkButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QCommandLinkButton_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionButton* option) const override {
		if (vtbl->initStyleOption == 0) {
			QCommandLinkButton::initStyleOption(option);
			return;
		}

		QStyleOptionButton* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_initStyleOption(const void* self, QStyleOptionButton* option);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QCommandLinkButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QCommandLinkButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QCommandLinkButton::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QCommandLinkButton::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_focusInEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QCommandLinkButton::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCommandLinkButton::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QCommandLinkButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_hitButton(const void* self, QPoint* pos);

	// Subclass to allow providing a Go implementation
	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QCommandLinkButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(vtbl, this);

	}

	friend void QCommandLinkButton_virtualbase_checkStateSet(void* self);

	// Subclass to allow providing a Go implementation
	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QCommandLinkButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(vtbl, this);

	}

	friend void QCommandLinkButton_virtualbase_nextCheckState(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCommandLinkButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QCommandLinkButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCommandLinkButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QCommandLinkButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QCommandLinkButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_timerEvent(void* self, QTimerEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCommandLinkButton::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QCommandLinkButton_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCommandLinkButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCommandLinkButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCommandLinkButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QCommandLinkButton_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCommandLinkButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCommandLinkButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCommandLinkButton::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCommandLinkButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCommandLinkButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCommandLinkButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCommandLinkButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCommandLinkButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCommandLinkButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCommandLinkButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCommandLinkButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCommandLinkButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCommandLinkButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCommandLinkButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCommandLinkButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCommandLinkButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCommandLinkButton::nativeEvent(eventType, message, result);
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

	friend bool QCommandLinkButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCommandLinkButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCommandLinkButton_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCommandLinkButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCommandLinkButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QCommandLinkButton_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCommandLinkButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QCommandLinkButton_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCommandLinkButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCommandLinkButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QCommandLinkButton_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCommandLinkButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCommandLinkButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCommandLinkButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCommandLinkButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCommandLinkButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCommandLinkButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCommandLinkButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QCommandLinkButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCommandLinkButton_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QCommandLinkButton_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QCommandLinkButton_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QCommandLinkButton_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QCommandLinkButton_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QCommandLinkButton_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QCommandLinkButton_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QCommandLinkButton_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QCommandLinkButton_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QCommandLinkButton* QCommandLinkButton_new(struct QCommandLinkButton_VTable* vtbl, QWidget* parent) {
	return new VirtualQCommandLinkButton(vtbl, parent);
}

QCommandLinkButton* QCommandLinkButton_new2(struct QCommandLinkButton_VTable* vtbl) {
	return new VirtualQCommandLinkButton(vtbl);
}

QCommandLinkButton* QCommandLinkButton_new3(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQCommandLinkButton(vtbl, text_QString);
}

QCommandLinkButton* QCommandLinkButton_new4(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, struct miqt_string description) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString description_QString = QString::fromUtf8(description.data, description.len);
	return new VirtualQCommandLinkButton(vtbl, text_QString, description_QString);
}

QCommandLinkButton* QCommandLinkButton_new5(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQCommandLinkButton(vtbl, text_QString, parent);
}

QCommandLinkButton* QCommandLinkButton_new6(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, struct miqt_string description, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString description_QString = QString::fromUtf8(description.data, description.len);
	return new VirtualQCommandLinkButton(vtbl, text_QString, description_QString, parent);
}

void QCommandLinkButton_virtbase(QCommandLinkButton* src, QPushButton** outptr_QPushButton) {
	*outptr_QPushButton = static_cast<QPushButton*>(src);
}

QMetaObject* QCommandLinkButton_metaObject(const QCommandLinkButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCommandLinkButton_metacast(QCommandLinkButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCommandLinkButton_metacall(QCommandLinkButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCommandLinkButton_tr(const char* s) {
	QString _ret = QCommandLinkButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_description(const QCommandLinkButton* self) {
	QString _ret = self->description();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCommandLinkButton_setDescription(QCommandLinkButton* self, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->setDescription(description_QString);
}

QSize* QCommandLinkButton_sizeHint(const QCommandLinkButton* self) {
	return new QSize(self->sizeHint());
}

int QCommandLinkButton_heightForWidth(const QCommandLinkButton* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

QSize* QCommandLinkButton_minimumSizeHint(const QCommandLinkButton* self) {
	return new QSize(self->minimumSizeHint());
}

void QCommandLinkButton_initStyleOption(const QCommandLinkButton* self, QStyleOptionButton* option) {
	self->initStyleOption(option);
}

struct miqt_string QCommandLinkButton_tr2(const char* s, const char* c) {
	QString _ret = QCommandLinkButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QCommandLinkButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QCommandLinkButton_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::metaObject();

}

void* QCommandLinkButton_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::qt_metacast(param1);

}

int QCommandLinkButton_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QCommandLinkButton_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::sizeHint());

}

int QCommandLinkButton_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::heightForWidth(static_cast<int>(param1));

}

QSize* QCommandLinkButton_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::minimumSizeHint());

}

void QCommandLinkButton_virtualbase_initStyleOption(const void* self, QStyleOptionButton* option) {

	( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::initStyleOption(option);

}

bool QCommandLinkButton_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::event(e);

}

void QCommandLinkButton_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::paintEvent(param1);

}

void QCommandLinkButton_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::keyPressEvent(param1);

}

void QCommandLinkButton_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::focusInEvent(param1);

}

void QCommandLinkButton_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::focusOutEvent(param1);

}

void QCommandLinkButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::mouseMoveEvent(param1);

}

bool QCommandLinkButton_virtualbase_hitButton(const void* self, QPoint* pos) {

	return ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::hitButton(*pos);

}

void QCommandLinkButton_virtualbase_checkStateSet(void* self) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::checkStateSet();

}

void QCommandLinkButton_virtualbase_nextCheckState(void* self) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::nextCheckState();

}

void QCommandLinkButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::keyReleaseEvent(e);

}

void QCommandLinkButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::mousePressEvent(e);

}

void QCommandLinkButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::mouseReleaseEvent(e);

}

void QCommandLinkButton_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::changeEvent(e);

}

void QCommandLinkButton_virtualbase_timerEvent(void* self, QTimerEvent* e) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::timerEvent(e);

}

int QCommandLinkButton_virtualbase_devType(const void* self) {

	return ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::devType();

}

void QCommandLinkButton_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::setVisible(visible);

}

bool QCommandLinkButton_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::hasHeightForWidth();

}

QPaintEngine* QCommandLinkButton_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::paintEngine();

}

void QCommandLinkButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::mouseDoubleClickEvent(event);

}

void QCommandLinkButton_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::wheelEvent(event);

}

void QCommandLinkButton_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::enterEvent(event);

}

void QCommandLinkButton_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::leaveEvent(event);

}

void QCommandLinkButton_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::moveEvent(event);

}

void QCommandLinkButton_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::resizeEvent(event);

}

void QCommandLinkButton_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::closeEvent(event);

}

void QCommandLinkButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::contextMenuEvent(event);

}

void QCommandLinkButton_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::tabletEvent(event);

}

void QCommandLinkButton_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::actionEvent(event);

}

void QCommandLinkButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::dragEnterEvent(event);

}

void QCommandLinkButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::dragMoveEvent(event);

}

void QCommandLinkButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::dragLeaveEvent(event);

}

void QCommandLinkButton_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::dropEvent(event);

}

void QCommandLinkButton_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::showEvent(event);

}

void QCommandLinkButton_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::hideEvent(event);

}

bool QCommandLinkButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QCommandLinkButton_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::metric(static_cast<VirtualQCommandLinkButton::PaintDeviceMetric>(param1));

}

void QCommandLinkButton_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::initPainter(painter);

}

QPaintDevice* QCommandLinkButton_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::redirected(offset);

}

QPainter* QCommandLinkButton_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::sharedPainter();

}

void QCommandLinkButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::inputMethodEvent(param1);

}

QVariant* QCommandLinkButton_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QCommandLinkButton_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::focusNextPrevChild(next);

}

bool QCommandLinkButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::eventFilter(watched, event);

}

void QCommandLinkButton_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::childEvent(event);

}

void QCommandLinkButton_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::customEvent(event);

}

void QCommandLinkButton_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::connectNotify(*signal);

}

void QCommandLinkButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCommandLinkButton*)(self) )->QCommandLinkButton::disconnectNotify(*signal);

}

const QMetaObject* QCommandLinkButton_staticMetaObject() { return &QCommandLinkButton::staticMetaObject; }
void QCommandLinkButton_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QCommandLinkButton_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QCommandLinkButton_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QCommandLinkButton_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QCommandLinkButton_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QCommandLinkButton_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QCommandLinkButton_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QCommandLinkButton_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QCommandLinkButton_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQCommandLinkButton* self_cast = dynamic_cast<VirtualQCommandLinkButton*>( (QCommandLinkButton*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QCommandLinkButton_delete(QCommandLinkButton* self) {
	delete self;
}

