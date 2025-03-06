#include <QAbstractButton>
#include <QActionEvent>
#include <QByteArray>
#include <QCheckBox>
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
#include <qcheckbox.h>
#include "gen_qcheckbox.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QCheckBox_stateChanged(intptr_t, int);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQCheckBox final : public QCheckBox {
	struct QCheckBox_VTable* vtbl;
public:

	VirtualQCheckBox(struct QCheckBox_VTable* vtbl, QWidget* parent): QCheckBox(parent), vtbl(vtbl) {};
	VirtualQCheckBox(struct QCheckBox_VTable* vtbl): QCheckBox(), vtbl(vtbl) {};
	VirtualQCheckBox(struct QCheckBox_VTable* vtbl, const QString& text): QCheckBox(text), vtbl(vtbl) {};
	VirtualQCheckBox(struct QCheckBox_VTable* vtbl, const QString& text, QWidget* parent): QCheckBox(text, parent), vtbl(vtbl) {};

	virtual ~VirtualQCheckBox() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCheckBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QCheckBox_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCheckBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QCheckBox_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCheckBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QCheckBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCheckBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QCheckBox_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCheckBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QCheckBox_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QCheckBox::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QCheckBox::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_hitButton(const void* self, QPoint* pos);

	// Subclass to allow providing a Go implementation
	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QCheckBox::checkStateSet();
			return;
		}


		vtbl->checkStateSet(vtbl, this);

	}

	friend void QCheckBox_virtualbase_checkStateSet(void* self);

	// Subclass to allow providing a Go implementation
	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QCheckBox::nextCheckState();
			return;
		}


		vtbl->nextCheckState(vtbl, this);

	}

	friend void QCheckBox_virtualbase_nextCheckState(void* self);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QCheckBox::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_paintEvent(void* self, QPaintEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCheckBox::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QCheckBox::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_keyPressEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCheckBox::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QCheckBox::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_mousePressEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCheckBox::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QCheckBox::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_focusInEvent(void* self, QFocusEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QCheckBox::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_focusOutEvent(void* self, QFocusEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QCheckBox::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QCheckBox::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_timerEvent(void* self, QTimerEvent* e);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCheckBox::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QCheckBox_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCheckBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCheckBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCheckBox_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCheckBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCheckBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QCheckBox_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCheckBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCheckBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCheckBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCheckBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCheckBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCheckBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCheckBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCheckBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCheckBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCheckBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCheckBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCheckBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCheckBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCheckBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCheckBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCheckBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCheckBox::nativeEvent(eventType, message, result);
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

	friend bool QCheckBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCheckBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QCheckBox_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCheckBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCheckBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QCheckBox_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCheckBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QCheckBox_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCheckBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCheckBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QCheckBox_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCheckBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCheckBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QCheckBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCheckBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCheckBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCheckBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCheckBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QCheckBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QCheckBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionButton* option);
	friend void QCheckBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QCheckBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QCheckBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QCheckBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QCheckBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QCheckBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QCheckBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QCheckBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QCheckBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QCheckBox* QCheckBox_new(struct QCheckBox_VTable* vtbl, QWidget* parent) {
	return new VirtualQCheckBox(vtbl, parent);
}

QCheckBox* QCheckBox_new2(struct QCheckBox_VTable* vtbl) {
	return new VirtualQCheckBox(vtbl);
}

QCheckBox* QCheckBox_new3(struct QCheckBox_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQCheckBox(vtbl, text_QString);
}

QCheckBox* QCheckBox_new4(struct QCheckBox_VTable* vtbl, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQCheckBox(vtbl, text_QString, parent);
}

void QCheckBox_virtbase(QCheckBox* src, QAbstractButton** outptr_QAbstractButton) {
	*outptr_QAbstractButton = static_cast<QAbstractButton*>(src);
}

QMetaObject* QCheckBox_metaObject(const QCheckBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCheckBox_metacast(QCheckBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCheckBox_metacall(QCheckBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCheckBox_tr(const char* s) {
	QString _ret = QCheckBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCheckBox_trUtf8(const char* s) {
	QString _ret = QCheckBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QCheckBox_sizeHint(const QCheckBox* self) {
	return new QSize(self->sizeHint());
}

QSize* QCheckBox_minimumSizeHint(const QCheckBox* self) {
	return new QSize(self->minimumSizeHint());
}

void QCheckBox_setTristate(QCheckBox* self) {
	self->setTristate();
}

bool QCheckBox_isTristate(const QCheckBox* self) {
	return self->isTristate();
}

int QCheckBox_checkState(const QCheckBox* self) {
	Qt::CheckState _ret = self->checkState();
	return static_cast<int>(_ret);
}

void QCheckBox_setCheckState(QCheckBox* self, int state) {
	self->setCheckState(static_cast<Qt::CheckState>(state));
}

void QCheckBox_stateChanged(QCheckBox* self, int param1) {
	self->stateChanged(static_cast<int>(param1));
}

void QCheckBox_connect_stateChanged(QCheckBox* self, intptr_t slot) {
	VirtualQCheckBox::connect(self, static_cast<void (QCheckBox::*)(int)>(&QCheckBox::stateChanged), self, [=](int param1) {
		int sigval1 = param1;
		miqt_exec_callback_QCheckBox_stateChanged(slot, sigval1);
	});
}

struct miqt_string QCheckBox_tr2(const char* s, const char* c) {
	QString _ret = QCheckBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCheckBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QCheckBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCheckBox_trUtf82(const char* s, const char* c) {
	QString _ret = QCheckBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCheckBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QCheckBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCheckBox_setTristate1(QCheckBox* self, bool y) {
	self->setTristate(y);
}

QMetaObject* QCheckBox_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQCheckBox*)(self) )->QCheckBox::metaObject();

}

void* QCheckBox_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQCheckBox*)(self) )->QCheckBox::qt_metacast(param1);

}

int QCheckBox_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQCheckBox*)(self) )->QCheckBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QCheckBox_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQCheckBox*)(self) )->QCheckBox::sizeHint());

}

QSize* QCheckBox_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQCheckBox*)(self) )->QCheckBox::minimumSizeHint());

}

bool QCheckBox_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQCheckBox*)(self) )->QCheckBox::event(e);

}

bool QCheckBox_virtualbase_hitButton(const void* self, QPoint* pos) {

	return ( (const VirtualQCheckBox*)(self) )->QCheckBox::hitButton(*pos);

}

void QCheckBox_virtualbase_checkStateSet(void* self) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::checkStateSet();

}

void QCheckBox_virtualbase_nextCheckState(void* self) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::nextCheckState();

}

void QCheckBox_virtualbase_paintEvent(void* self, QPaintEvent* param1) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::paintEvent(param1);

}

void QCheckBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::mouseMoveEvent(param1);

}

void QCheckBox_virtualbase_keyPressEvent(void* self, QKeyEvent* e) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::keyPressEvent(e);

}

void QCheckBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::keyReleaseEvent(e);

}

void QCheckBox_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::mousePressEvent(e);

}

void QCheckBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::mouseReleaseEvent(e);

}

void QCheckBox_virtualbase_focusInEvent(void* self, QFocusEvent* e) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::focusInEvent(e);

}

void QCheckBox_virtualbase_focusOutEvent(void* self, QFocusEvent* e) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::focusOutEvent(e);

}

void QCheckBox_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::changeEvent(e);

}

void QCheckBox_virtualbase_timerEvent(void* self, QTimerEvent* e) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::timerEvent(e);

}

int QCheckBox_virtualbase_devType(const void* self) {

	return ( (const VirtualQCheckBox*)(self) )->QCheckBox::devType();

}

void QCheckBox_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::setVisible(visible);

}

int QCheckBox_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQCheckBox*)(self) )->QCheckBox::heightForWidth(static_cast<int>(param1));

}

bool QCheckBox_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQCheckBox*)(self) )->QCheckBox::hasHeightForWidth();

}

QPaintEngine* QCheckBox_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQCheckBox*)(self) )->QCheckBox::paintEngine();

}

void QCheckBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::mouseDoubleClickEvent(event);

}

void QCheckBox_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::wheelEvent(event);

}

void QCheckBox_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::enterEvent(event);

}

void QCheckBox_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::leaveEvent(event);

}

void QCheckBox_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::moveEvent(event);

}

void QCheckBox_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::resizeEvent(event);

}

void QCheckBox_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::closeEvent(event);

}

void QCheckBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::contextMenuEvent(event);

}

void QCheckBox_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::tabletEvent(event);

}

void QCheckBox_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::actionEvent(event);

}

void QCheckBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::dragEnterEvent(event);

}

void QCheckBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::dragMoveEvent(event);

}

void QCheckBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::dragLeaveEvent(event);

}

void QCheckBox_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::dropEvent(event);

}

void QCheckBox_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::showEvent(event);

}

void QCheckBox_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::hideEvent(event);

}

bool QCheckBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQCheckBox*)(self) )->QCheckBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QCheckBox_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQCheckBox*)(self) )->QCheckBox::metric(static_cast<VirtualQCheckBox::PaintDeviceMetric>(param1));

}

void QCheckBox_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQCheckBox*)(self) )->QCheckBox::initPainter(painter);

}

QPaintDevice* QCheckBox_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQCheckBox*)(self) )->QCheckBox::redirected(offset);

}

QPainter* QCheckBox_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQCheckBox*)(self) )->QCheckBox::sharedPainter();

}

void QCheckBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::inputMethodEvent(param1);

}

QVariant* QCheckBox_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQCheckBox*)(self) )->QCheckBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QCheckBox_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQCheckBox*)(self) )->QCheckBox::focusNextPrevChild(next);

}

bool QCheckBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQCheckBox*)(self) )->QCheckBox::eventFilter(watched, event);

}

void QCheckBox_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::childEvent(event);

}

void QCheckBox_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::customEvent(event);

}

void QCheckBox_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::connectNotify(*signal);

}

void QCheckBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQCheckBox*)(self) )->QCheckBox::disconnectNotify(*signal);

}

const QMetaObject* QCheckBox_staticMetaObject() { return &QCheckBox::staticMetaObject; }
void QCheckBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionButton* option) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QCheckBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QCheckBox_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QCheckBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QCheckBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QCheckBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QCheckBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QCheckBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QCheckBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QCheckBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQCheckBox* self_cast = dynamic_cast<VirtualQCheckBox*>( (QCheckBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QCheckBox_delete(QCheckBox* self) {
	delete self;
}

