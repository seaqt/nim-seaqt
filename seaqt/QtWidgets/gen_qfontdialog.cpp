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
#include <QFont>
#include <QFontDialog>
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
#include <qfontdialog.h>
#include "gen_qfontdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QFontDialog_currentFontChanged(intptr_t, QFont*);
void miqt_exec_callback_QFontDialog_fontSelected(intptr_t, QFont*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQFontDialog final : public QFontDialog {
	struct QFontDialog_VTable* vtbl;
public:

	VirtualQFontDialog(struct QFontDialog_VTable* vtbl, QWidget* parent): QFontDialog(parent), vtbl(vtbl) {};
	VirtualQFontDialog(struct QFontDialog_VTable* vtbl): QFontDialog(), vtbl(vtbl) {};
	VirtualQFontDialog(struct QFontDialog_VTable* vtbl, const QFont& initial): QFontDialog(initial), vtbl(vtbl) {};
	VirtualQFontDialog(struct QFontDialog_VTable* vtbl, const QFont& initial, QWidget* parent): QFontDialog(initial, parent), vtbl(vtbl) {};

	virtual ~VirtualQFontDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFontDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QFontDialog_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFontDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QFontDialog_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFontDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFontDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QFontDialog::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QFontDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_done(void* self, int result);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFontDialog::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFontDialog_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFontDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QFontDialog_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFontDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QFontDialog_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QFontDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QFontDialog_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QFontDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QFontDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QFontDialog_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QFontDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QFontDialog_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QFontDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QFontDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QFontDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QFontDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QFontDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFontDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFontDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFontDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QFontDialog_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFontDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QFontDialog_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFontDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFontDialog_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QFontDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFontDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFontDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFontDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QFontDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFontDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QFontDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QFontDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFontDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFontDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QFontDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFontDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFontDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFontDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFontDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFontDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFontDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFontDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QFontDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFontDialog::nativeEvent(eventType, message, result);
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

	friend bool QFontDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFontDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontDialog_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFontDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFontDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QFontDialog_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFontDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QFontDialog_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFontDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFontDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QFontDialog_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFontDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFontDialog_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFontDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFontDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFontDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFontDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFontDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QFontDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QFontDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QFontDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QFontDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QFontDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QFontDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QFontDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QFontDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QFontDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QFontDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QFontDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QFontDialog* QFontDialog_new(struct QFontDialog_VTable* vtbl, QWidget* parent) {
	return new VirtualQFontDialog(vtbl, parent);
}

QFontDialog* QFontDialog_new2(struct QFontDialog_VTable* vtbl) {
	return new VirtualQFontDialog(vtbl);
}

QFontDialog* QFontDialog_new3(struct QFontDialog_VTable* vtbl, QFont* initial) {
	return new VirtualQFontDialog(vtbl, *initial);
}

QFontDialog* QFontDialog_new4(struct QFontDialog_VTable* vtbl, QFont* initial, QWidget* parent) {
	return new VirtualQFontDialog(vtbl, *initial, parent);
}

void QFontDialog_virtbase(QFontDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QFontDialog_metaObject(const QFontDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFontDialog_metacast(QFontDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFontDialog_metacall(QFontDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFontDialog_tr(const char* s) {
	QString _ret = QFontDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontDialog_trUtf8(const char* s) {
	QString _ret = QFontDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontDialog_setCurrentFont(QFontDialog* self, QFont* font) {
	self->setCurrentFont(*font);
}

QFont* QFontDialog_currentFont(const QFontDialog* self) {
	return new QFont(self->currentFont());
}

QFont* QFontDialog_selectedFont(const QFontDialog* self) {
	return new QFont(self->selectedFont());
}

void QFontDialog_setOption(QFontDialog* self, int option) {
	self->setOption(static_cast<QFontDialog::FontDialogOption>(option));
}

bool QFontDialog_testOption(const QFontDialog* self, int option) {
	return self->testOption(static_cast<QFontDialog::FontDialogOption>(option));
}

void QFontDialog_setOptions(QFontDialog* self, int options) {
	self->setOptions(static_cast<QFontDialog::FontDialogOptions>(options));
}

int QFontDialog_options(const QFontDialog* self) {
	QFontDialog::FontDialogOptions _ret = self->options();
	return static_cast<int>(_ret);
}

void QFontDialog_setVisible(QFontDialog* self, bool visible) {
	self->setVisible(visible);
}

QFont* QFontDialog_getFont(bool* ok) {
	return new QFont(QFontDialog::getFont(ok));
}

QFont* QFontDialog_getFont2(bool* ok, QFont* initial) {
	return new QFont(QFontDialog::getFont(ok, *initial));
}

void QFontDialog_currentFontChanged(QFontDialog* self, QFont* font) {
	self->currentFontChanged(*font);
}

void QFontDialog_connect_currentFontChanged(QFontDialog* self, intptr_t slot) {
	VirtualQFontDialog::connect(self, static_cast<void (QFontDialog::*)(const QFont&)>(&QFontDialog::currentFontChanged), self, [=](const QFont& font) {
		const QFont& font_ret = font;
		// Cast returned reference into pointer
		QFont* sigval1 = const_cast<QFont*>(&font_ret);
		miqt_exec_callback_QFontDialog_currentFontChanged(slot, sigval1);
	});
}

void QFontDialog_fontSelected(QFontDialog* self, QFont* font) {
	self->fontSelected(*font);
}

void QFontDialog_connect_fontSelected(QFontDialog* self, intptr_t slot) {
	VirtualQFontDialog::connect(self, static_cast<void (QFontDialog::*)(const QFont&)>(&QFontDialog::fontSelected), self, [=](const QFont& font) {
		const QFont& font_ret = font;
		// Cast returned reference into pointer
		QFont* sigval1 = const_cast<QFont*>(&font_ret);
		miqt_exec_callback_QFontDialog_fontSelected(slot, sigval1);
	});
}

struct miqt_string QFontDialog_tr2(const char* s, const char* c) {
	QString _ret = QFontDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QFontDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QFontDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFontDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontDialog_setOption2(QFontDialog* self, int option, bool on) {
	self->setOption(static_cast<QFontDialog::FontDialogOption>(option), on);
}

QFont* QFontDialog_getFont22(bool* ok, QWidget* parent) {
	return new QFont(QFontDialog::getFont(ok, parent));
}

QFont* QFontDialog_getFont3(bool* ok, QFont* initial, QWidget* parent) {
	return new QFont(QFontDialog::getFont(ok, *initial, parent));
}

QFont* QFontDialog_getFont4(bool* ok, QFont* initial, QWidget* parent, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new QFont(QFontDialog::getFont(ok, *initial, parent, title_QString));
}

QFont* QFontDialog_getFont5(bool* ok, QFont* initial, QWidget* parent, struct miqt_string title, int options) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new QFont(QFontDialog::getFont(ok, *initial, parent, title_QString, static_cast<QFontDialog::FontDialogOptions>(options)));
}

QMetaObject* QFontDialog_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQFontDialog*)(self) )->QFontDialog::metaObject();

}

void* QFontDialog_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQFontDialog*)(self) )->QFontDialog::qt_metacast(param1);

}

int QFontDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQFontDialog*)(self) )->QFontDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QFontDialog_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::setVisible(visible);

}

void QFontDialog_virtualbase_changeEvent(void* self, QEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::changeEvent(event);

}

void QFontDialog_virtualbase_done(void* self, int result) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::done(static_cast<int>(result));

}

bool QFontDialog_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {

	return ( (VirtualQFontDialog*)(self) )->QFontDialog::eventFilter(object, event);

}

QSize* QFontDialog_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQFontDialog*)(self) )->QFontDialog::sizeHint());

}

QSize* QFontDialog_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQFontDialog*)(self) )->QFontDialog::minimumSizeHint());

}

void QFontDialog_virtualbase_open(void* self) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::open();

}

int QFontDialog_virtualbase_exec(void* self) {

	return ( (VirtualQFontDialog*)(self) )->QFontDialog::exec();

}

void QFontDialog_virtualbase_accept(void* self) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::accept();

}

void QFontDialog_virtualbase_reject(void* self) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::reject();

}

void QFontDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::keyPressEvent(param1);

}

void QFontDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::closeEvent(param1);

}

void QFontDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::showEvent(param1);

}

void QFontDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::resizeEvent(param1);

}

void QFontDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::contextMenuEvent(param1);

}

int QFontDialog_virtualbase_devType(const void* self) {

	return ( (const VirtualQFontDialog*)(self) )->QFontDialog::devType();

}

int QFontDialog_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQFontDialog*)(self) )->QFontDialog::heightForWidth(static_cast<int>(param1));

}

bool QFontDialog_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQFontDialog*)(self) )->QFontDialog::hasHeightForWidth();

}

QPaintEngine* QFontDialog_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQFontDialog*)(self) )->QFontDialog::paintEngine();

}

bool QFontDialog_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQFontDialog*)(self) )->QFontDialog::event(event);

}

void QFontDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::mousePressEvent(event);

}

void QFontDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::mouseReleaseEvent(event);

}

void QFontDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::mouseDoubleClickEvent(event);

}

void QFontDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::mouseMoveEvent(event);

}

void QFontDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::wheelEvent(event);

}

void QFontDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::keyReleaseEvent(event);

}

void QFontDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::focusInEvent(event);

}

void QFontDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::focusOutEvent(event);

}

void QFontDialog_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::enterEvent(event);

}

void QFontDialog_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::leaveEvent(event);

}

void QFontDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::paintEvent(event);

}

void QFontDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::moveEvent(event);

}

void QFontDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::tabletEvent(event);

}

void QFontDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::actionEvent(event);

}

void QFontDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::dragEnterEvent(event);

}

void QFontDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::dragMoveEvent(event);

}

void QFontDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::dragLeaveEvent(event);

}

void QFontDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::dropEvent(event);

}

void QFontDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::hideEvent(event);

}

bool QFontDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQFontDialog*)(self) )->QFontDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QFontDialog_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQFontDialog*)(self) )->QFontDialog::metric(static_cast<VirtualQFontDialog::PaintDeviceMetric>(param1));

}

void QFontDialog_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQFontDialog*)(self) )->QFontDialog::initPainter(painter);

}

QPaintDevice* QFontDialog_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQFontDialog*)(self) )->QFontDialog::redirected(offset);

}

QPainter* QFontDialog_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQFontDialog*)(self) )->QFontDialog::sharedPainter();

}

void QFontDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::inputMethodEvent(param1);

}

QVariant* QFontDialog_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQFontDialog*)(self) )->QFontDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QFontDialog_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQFontDialog*)(self) )->QFontDialog::focusNextPrevChild(next);

}

void QFontDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::timerEvent(event);

}

void QFontDialog_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::childEvent(event);

}

void QFontDialog_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::customEvent(event);

}

void QFontDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::connectNotify(*signal);

}

void QFontDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFontDialog*)(self) )->QFontDialog::disconnectNotify(*signal);

}

const QMetaObject* QFontDialog_staticMetaObject() { return &QFontDialog::staticMetaObject; }
void QFontDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->adjustPosition(param1);

}

void QFontDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QFontDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QFontDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QFontDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QFontDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QFontDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QFontDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QFontDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QFontDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQFontDialog* self_cast = dynamic_cast<VirtualQFontDialog*>( (QFontDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QFontDialog_delete(QFontDialog* self) {
	delete self;
}

