#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDialog>
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
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qdialog.h>
#include "gen_qdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QDialog_finished(intptr_t, int);
void miqt_exec_callback_QDialog_accepted(intptr_t);
void miqt_exec_callback_QDialog_rejected(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQDialog final : public QDialog {
	struct QDialog_VTable* vtbl;
public:

	VirtualQDialog(struct QDialog_VTable* vtbl, QWidget* parent): QDialog(parent), vtbl(vtbl) {};
	VirtualQDialog(struct QDialog_VTable* vtbl): QDialog(), vtbl(vtbl) {};
	VirtualQDialog(struct QDialog_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QDialog(parent, f), vtbl(vtbl) {};

	virtual ~VirtualQDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QDialog_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QDialog_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDialog_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDialog_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QDialog_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QDialog::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_done(void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QDialog_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QDialog_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QDialog_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QDialog_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDialog_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDialog::nativeEvent(eventType, message, result);
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

	friend bool QDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_changeEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDialog_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDialog_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QDialog_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QDialog_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDialog_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QDialog* QDialog_new(struct QDialog_VTable* vtbl, QWidget* parent) {
	return new VirtualQDialog(vtbl, parent);
}

QDialog* QDialog_new2(struct QDialog_VTable* vtbl) {
	return new VirtualQDialog(vtbl);
}

QDialog* QDialog_new3(struct QDialog_VTable* vtbl, QWidget* parent, int f) {
	return new VirtualQDialog(vtbl, parent, static_cast<Qt::WindowFlags>(f));
}

void QDialog_virtbase(QDialog* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDialog_metaObject(const QDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDialog_metacast(QDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDialog_metacall(QDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDialog_tr(const char* s) {
	QString _ret = QDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_trUtf8(const char* s) {
	QString _ret = QDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDialog_result(const QDialog* self) {
	return self->result();
}

void QDialog_setVisible(QDialog* self, bool visible) {
	self->setVisible(visible);
}

void QDialog_setOrientation(QDialog* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QDialog_orientation(const QDialog* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QDialog_setExtension(QDialog* self, QWidget* extension) {
	self->setExtension(extension);
}

QWidget* QDialog_extension(const QDialog* self) {
	return self->extension();
}

QSize* QDialog_sizeHint(const QDialog* self) {
	return new QSize(self->sizeHint());
}

QSize* QDialog_minimumSizeHint(const QDialog* self) {
	return new QSize(self->minimumSizeHint());
}

void QDialog_setSizeGripEnabled(QDialog* self, bool sizeGripEnabled) {
	self->setSizeGripEnabled(sizeGripEnabled);
}

bool QDialog_isSizeGripEnabled(const QDialog* self) {
	return self->isSizeGripEnabled();
}

void QDialog_setModal(QDialog* self, bool modal) {
	self->setModal(modal);
}

void QDialog_setResult(QDialog* self, int r) {
	self->setResult(static_cast<int>(r));
}

void QDialog_finished(QDialog* self, int result) {
	self->finished(static_cast<int>(result));
}

void QDialog_connect_finished(QDialog* self, intptr_t slot) {
	VirtualQDialog::connect(self, static_cast<void (QDialog::*)(int)>(&QDialog::finished), self, [=](int result) {
		int sigval1 = result;
		miqt_exec_callback_QDialog_finished(slot, sigval1);
	});
}

void QDialog_accepted(QDialog* self) {
	self->accepted();
}

void QDialog_connect_accepted(QDialog* self, intptr_t slot) {
	VirtualQDialog::connect(self, static_cast<void (QDialog::*)()>(&QDialog::accepted), self, [=]() {
		miqt_exec_callback_QDialog_accepted(slot);
	});
}

void QDialog_rejected(QDialog* self) {
	self->rejected();
}

void QDialog_connect_rejected(QDialog* self, intptr_t slot) {
	VirtualQDialog::connect(self, static_cast<void (QDialog::*)()>(&QDialog::rejected), self, [=]() {
		miqt_exec_callback_QDialog_rejected(slot);
	});
}

void QDialog_open(QDialog* self) {
	self->open();
}

int QDialog_exec(QDialog* self) {
	return self->exec();
}

void QDialog_done(QDialog* self, int param1) {
	self->done(static_cast<int>(param1));
}

void QDialog_accept(QDialog* self) {
	self->accept();
}

void QDialog_reject(QDialog* self) {
	self->reject();
}

void QDialog_showExtension(QDialog* self, bool param1) {
	self->showExtension(param1);
}

struct miqt_string QDialog_tr2(const char* s, const char* c) {
	QString _ret = QDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDialog_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQDialog*)(self) )->QDialog::metaObject();

}

void* QDialog_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQDialog*)(self) )->QDialog::qt_metacast(param1);

}

int QDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQDialog*)(self) )->QDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QDialog_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQDialog*)(self) )->QDialog::setVisible(visible);

}

QSize* QDialog_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQDialog*)(self) )->QDialog::sizeHint());

}

QSize* QDialog_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQDialog*)(self) )->QDialog::minimumSizeHint());

}

void QDialog_virtualbase_open(void* self) {

	( (VirtualQDialog*)(self) )->QDialog::open();

}

int QDialog_virtualbase_exec(void* self) {

	return ( (VirtualQDialog*)(self) )->QDialog::exec();

}

void QDialog_virtualbase_done(void* self, int param1) {

	( (VirtualQDialog*)(self) )->QDialog::done(static_cast<int>(param1));

}

void QDialog_virtualbase_accept(void* self) {

	( (VirtualQDialog*)(self) )->QDialog::accept();

}

void QDialog_virtualbase_reject(void* self) {

	( (VirtualQDialog*)(self) )->QDialog::reject();

}

void QDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQDialog*)(self) )->QDialog::keyPressEvent(param1);

}

void QDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQDialog*)(self) )->QDialog::closeEvent(param1);

}

void QDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQDialog*)(self) )->QDialog::showEvent(param1);

}

void QDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQDialog*)(self) )->QDialog::resizeEvent(param1);

}

void QDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQDialog*)(self) )->QDialog::contextMenuEvent(param1);

}

bool QDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQDialog*)(self) )->QDialog::eventFilter(param1, param2);

}

int QDialog_virtualbase_devType(const void* self) {

	return ( (const VirtualQDialog*)(self) )->QDialog::devType();

}

int QDialog_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQDialog*)(self) )->QDialog::heightForWidth(static_cast<int>(param1));

}

bool QDialog_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQDialog*)(self) )->QDialog::hasHeightForWidth();

}

QPaintEngine* QDialog_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQDialog*)(self) )->QDialog::paintEngine();

}

bool QDialog_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQDialog*)(self) )->QDialog::event(event);

}

void QDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::mousePressEvent(event);

}

void QDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::mouseReleaseEvent(event);

}

void QDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::mouseDoubleClickEvent(event);

}

void QDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::mouseMoveEvent(event);

}

void QDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::wheelEvent(event);

}

void QDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::keyReleaseEvent(event);

}

void QDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::focusInEvent(event);

}

void QDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::focusOutEvent(event);

}

void QDialog_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::enterEvent(event);

}

void QDialog_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::leaveEvent(event);

}

void QDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::paintEvent(event);

}

void QDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::moveEvent(event);

}

void QDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::tabletEvent(event);

}

void QDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::actionEvent(event);

}

void QDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::dragEnterEvent(event);

}

void QDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::dragMoveEvent(event);

}

void QDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::dragLeaveEvent(event);

}

void QDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::dropEvent(event);

}

void QDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::hideEvent(event);

}

bool QDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQDialog*)(self) )->QDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

void QDialog_virtualbase_changeEvent(void* self, QEvent* param1) {

	( (VirtualQDialog*)(self) )->QDialog::changeEvent(param1);

}

int QDialog_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQDialog*)(self) )->QDialog::metric(static_cast<VirtualQDialog::PaintDeviceMetric>(param1));

}

void QDialog_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQDialog*)(self) )->QDialog::initPainter(painter);

}

QPaintDevice* QDialog_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQDialog*)(self) )->QDialog::redirected(offset);

}

QPainter* QDialog_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQDialog*)(self) )->QDialog::sharedPainter();

}

void QDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQDialog*)(self) )->QDialog::inputMethodEvent(param1);

}

QVariant* QDialog_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQDialog*)(self) )->QDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QDialog_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQDialog*)(self) )->QDialog::focusNextPrevChild(next);

}

void QDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::timerEvent(event);

}

void QDialog_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::childEvent(event);

}

void QDialog_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQDialog*)(self) )->QDialog::customEvent(event);

}

void QDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQDialog*)(self) )->QDialog::connectNotify(*signal);

}

void QDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQDialog*)(self) )->QDialog::disconnectNotify(*signal);

}

const QMetaObject* QDialog_staticMetaObject() { return &QDialog::staticMetaObject; }
void QDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->adjustPosition(param1);

}

void QDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQDialog* self_cast = dynamic_cast<VirtualQDialog*>( (QDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QDialog_delete(QDialog* self) {
	delete self;
}

