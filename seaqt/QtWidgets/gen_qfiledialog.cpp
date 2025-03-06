#include <QAbstractFileIconProvider>
#include <QAbstractItemDelegate>
#include <QAbstractProxyModel>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDialog>
#include <QDir>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFileDialog>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
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
#include <QUrl>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qfiledialog.h>
#include "gen_qfiledialog.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQFileDialog final : public QFileDialog {
	struct QFileDialog_VTable* vtbl;
public:

	VirtualQFileDialog(struct QFileDialog_VTable* vtbl, QWidget* parent): QFileDialog(parent), vtbl(vtbl) {};
	VirtualQFileDialog(struct QFileDialog_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QFileDialog(parent, f), vtbl(vtbl) {};
	VirtualQFileDialog(struct QFileDialog_VTable* vtbl): QFileDialog(), vtbl(vtbl) {};
	VirtualQFileDialog(struct QFileDialog_VTable* vtbl, QWidget* parent, const QString& caption): QFileDialog(parent, caption), vtbl(vtbl) {};
	VirtualQFileDialog(struct QFileDialog_VTable* vtbl, QWidget* parent, const QString& caption, const QString& directory): QFileDialog(parent, caption, directory), vtbl(vtbl) {};
	VirtualQFileDialog(struct QFileDialog_VTable* vtbl, QWidget* parent, const QString& caption, const QString& directory, const QString& filter): QFileDialog(parent, caption, directory, filter), vtbl(vtbl) {};

	virtual ~VirtualQFileDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFileDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QFileDialog_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFileDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QFileDialog_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFileDialog::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFileDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QFileDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_done(void* self, int result);

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QFileDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	friend void QFileDialog_virtualbase_accept(void* self);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QFileDialog::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFileDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QFileDialog_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFileDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QFileDialog_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QFileDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	friend void QFileDialog_virtualbase_open(void* self);

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QFileDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileDialog_virtualbase_exec(void* self);

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QFileDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	friend void QFileDialog_virtualbase_reject(void* self);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QFileDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QFileDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QFileDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QFileDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QFileDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QFileDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFileDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFileDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileDialog_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFileDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileDialog_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFileDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QFileDialog_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFileDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QFileDialog_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFileDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFileDialog_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QFileDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFileDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFileDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFileDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QFileDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFileDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QFileDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QFileDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFileDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFileDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QFileDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFileDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFileDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFileDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFileDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFileDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFileDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFileDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QFileDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFileDialog::nativeEvent(eventType, message, result);
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

	friend bool QFileDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFileDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFileDialog_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFileDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFileDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QFileDialog_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFileDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QFileDialog_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFileDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFileDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QFileDialog_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFileDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFileDialog_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFileDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFileDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFileDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFileDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFileDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QFileDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QFileDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QFileDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QFileDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QFileDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QFileDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QFileDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QFileDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QFileDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QFileDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QFileDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QFileDialog* QFileDialog_new(struct QFileDialog_VTable* vtbl, QWidget* parent) {
	return new VirtualQFileDialog(vtbl, parent);
}

QFileDialog* QFileDialog_new2(struct QFileDialog_VTable* vtbl, QWidget* parent, int f) {
	return new VirtualQFileDialog(vtbl, parent, static_cast<Qt::WindowFlags>(f));
}

QFileDialog* QFileDialog_new3(struct QFileDialog_VTable* vtbl) {
	return new VirtualQFileDialog(vtbl);
}

QFileDialog* QFileDialog_new4(struct QFileDialog_VTable* vtbl, QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	return new VirtualQFileDialog(vtbl, parent, caption_QString);
}

QFileDialog* QFileDialog_new5(struct QFileDialog_VTable* vtbl, QWidget* parent, struct miqt_string caption, struct miqt_string directory) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	return new VirtualQFileDialog(vtbl, parent, caption_QString, directory_QString);
}

QFileDialog* QFileDialog_new6(struct QFileDialog_VTable* vtbl, QWidget* parent, struct miqt_string caption, struct miqt_string directory, struct miqt_string filter) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	return new VirtualQFileDialog(vtbl, parent, caption_QString, directory_QString, filter_QString);
}

void QFileDialog_virtbase(QFileDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QFileDialog_metaObject(const QFileDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFileDialog_metacast(QFileDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFileDialog_metacall(QFileDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFileDialog_tr(const char* s) {
	QString _ret = QFileDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFileDialog_setDirectory(QFileDialog* self, struct miqt_string directory) {
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	self->setDirectory(directory_QString);
}

void QFileDialog_setDirectoryWithDirectory(QFileDialog* self, QDir* directory) {
	self->setDirectory(*directory);
}

QDir* QFileDialog_directory(const QFileDialog* self) {
	return new QDir(self->directory());
}

void QFileDialog_setDirectoryUrl(QFileDialog* self, QUrl* directory) {
	self->setDirectoryUrl(*directory);
}

QUrl* QFileDialog_directoryUrl(const QFileDialog* self) {
	return new QUrl(self->directoryUrl());
}

void QFileDialog_selectFile(QFileDialog* self, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	self->selectFile(filename_QString);
}

struct miqt_array /* of struct miqt_string */  QFileDialog_selectedFiles(const QFileDialog* self) {
	QStringList _ret = self->selectedFiles();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QFileDialog_selectUrl(QFileDialog* self, QUrl* url) {
	self->selectUrl(*url);
}

struct miqt_array /* of QUrl* */  QFileDialog_selectedUrls(const QFileDialog* self) {
	QList<QUrl> _ret = self->selectedUrls();
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QFileDialog_setNameFilter(QFileDialog* self, struct miqt_string filter) {
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	self->setNameFilter(filter_QString);
}

void QFileDialog_setNameFilters(QFileDialog* self, struct miqt_array /* of struct miqt_string */  filters) {
	QStringList filters_QList;
	filters_QList.reserve(filters.len);
	struct miqt_string* filters_arr = static_cast<struct miqt_string*>(filters.data);
	for(size_t i = 0; i < filters.len; ++i) {
		QString filters_arr_i_QString = QString::fromUtf8(filters_arr[i].data, filters_arr[i].len);
		filters_QList.push_back(filters_arr_i_QString);
	}
	self->setNameFilters(filters_QList);
}

struct miqt_array /* of struct miqt_string */  QFileDialog_nameFilters(const QFileDialog* self) {
	QStringList _ret = self->nameFilters();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QFileDialog_selectNameFilter(QFileDialog* self, struct miqt_string filter) {
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	self->selectNameFilter(filter_QString);
}

struct miqt_string QFileDialog_selectedMimeTypeFilter(const QFileDialog* self) {
	QString _ret = self->selectedMimeTypeFilter();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_selectedNameFilter(const QFileDialog* self) {
	QString _ret = self->selectedNameFilter();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFileDialog_setMimeTypeFilters(QFileDialog* self, struct miqt_array /* of struct miqt_string */  filters) {
	QStringList filters_QList;
	filters_QList.reserve(filters.len);
	struct miqt_string* filters_arr = static_cast<struct miqt_string*>(filters.data);
	for(size_t i = 0; i < filters.len; ++i) {
		QString filters_arr_i_QString = QString::fromUtf8(filters_arr[i].data, filters_arr[i].len);
		filters_QList.push_back(filters_arr_i_QString);
	}
	self->setMimeTypeFilters(filters_QList);
}

struct miqt_array /* of struct miqt_string */  QFileDialog_mimeTypeFilters(const QFileDialog* self) {
	QStringList _ret = self->mimeTypeFilters();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QFileDialog_selectMimeTypeFilter(QFileDialog* self, struct miqt_string filter) {
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	self->selectMimeTypeFilter(filter_QString);
}

int QFileDialog_filter(const QFileDialog* self) {
	QDir::Filters _ret = self->filter();
	return static_cast<int>(_ret);
}

void QFileDialog_setFilter(QFileDialog* self, int filters) {
	self->setFilter(static_cast<QDir::Filters>(filters));
}

void QFileDialog_setViewMode(QFileDialog* self, int mode) {
	self->setViewMode(static_cast<QFileDialog::ViewMode>(mode));
}

int QFileDialog_viewMode(const QFileDialog* self) {
	QFileDialog::ViewMode _ret = self->viewMode();
	return static_cast<int>(_ret);
}

void QFileDialog_setFileMode(QFileDialog* self, int mode) {
	self->setFileMode(static_cast<QFileDialog::FileMode>(mode));
}

int QFileDialog_fileMode(const QFileDialog* self) {
	QFileDialog::FileMode _ret = self->fileMode();
	return static_cast<int>(_ret);
}

void QFileDialog_setAcceptMode(QFileDialog* self, int mode) {
	self->setAcceptMode(static_cast<QFileDialog::AcceptMode>(mode));
}

int QFileDialog_acceptMode(const QFileDialog* self) {
	QFileDialog::AcceptMode _ret = self->acceptMode();
	return static_cast<int>(_ret);
}

void QFileDialog_setSidebarUrls(QFileDialog* self, struct miqt_array /* of QUrl* */  urls) {
	QList<QUrl> urls_QList;
	urls_QList.reserve(urls.len);
	QUrl** urls_arr = static_cast<QUrl**>(urls.data);
	for(size_t i = 0; i < urls.len; ++i) {
		urls_QList.push_back(*(urls_arr[i]));
	}
	self->setSidebarUrls(urls_QList);
}

struct miqt_array /* of QUrl* */  QFileDialog_sidebarUrls(const QFileDialog* self) {
	QList<QUrl> _ret = self->sidebarUrls();
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QFileDialog_saveState(const QFileDialog* self) {
	QByteArray _qb = self->saveState();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QFileDialog_restoreState(QFileDialog* self, struct miqt_string state) {
	QByteArray state_QByteArray(state.data, state.len);
	return self->restoreState(state_QByteArray);
}

void QFileDialog_setDefaultSuffix(QFileDialog* self, struct miqt_string suffix) {
	QString suffix_QString = QString::fromUtf8(suffix.data, suffix.len);
	self->setDefaultSuffix(suffix_QString);
}

struct miqt_string QFileDialog_defaultSuffix(const QFileDialog* self) {
	QString _ret = self->defaultSuffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFileDialog_setHistory(QFileDialog* self, struct miqt_array /* of struct miqt_string */  paths) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	self->setHistory(paths_QList);
}

struct miqt_array /* of struct miqt_string */  QFileDialog_history(const QFileDialog* self) {
	QStringList _ret = self->history();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QFileDialog_setItemDelegate(QFileDialog* self, QAbstractItemDelegate* delegate) {
	self->setItemDelegate(delegate);
}

QAbstractItemDelegate* QFileDialog_itemDelegate(const QFileDialog* self) {
	return self->itemDelegate();
}

void QFileDialog_setIconProvider(QFileDialog* self, QAbstractFileIconProvider* provider) {
	self->setIconProvider(provider);
}

QAbstractFileIconProvider* QFileDialog_iconProvider(const QFileDialog* self) {
	return self->iconProvider();
}

void QFileDialog_setLabelText(QFileDialog* self, int label, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setLabelText(static_cast<QFileDialog::DialogLabel>(label), text_QString);
}

struct miqt_string QFileDialog_labelText(const QFileDialog* self, int label) {
	QString _ret = self->labelText(static_cast<QFileDialog::DialogLabel>(label));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFileDialog_setSupportedSchemes(QFileDialog* self, struct miqt_array /* of struct miqt_string */  schemes) {
	QStringList schemes_QList;
	schemes_QList.reserve(schemes.len);
	struct miqt_string* schemes_arr = static_cast<struct miqt_string*>(schemes.data);
	for(size_t i = 0; i < schemes.len; ++i) {
		QString schemes_arr_i_QString = QString::fromUtf8(schemes_arr[i].data, schemes_arr[i].len);
		schemes_QList.push_back(schemes_arr_i_QString);
	}
	self->setSupportedSchemes(schemes_QList);
}

struct miqt_array /* of struct miqt_string */  QFileDialog_supportedSchemes(const QFileDialog* self) {
	QStringList _ret = self->supportedSchemes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QFileDialog_setProxyModel(QFileDialog* self, QAbstractProxyModel* model) {
	self->setProxyModel(model);
}

QAbstractProxyModel* QFileDialog_proxyModel(const QFileDialog* self) {
	return self->proxyModel();
}

void QFileDialog_setOption(QFileDialog* self, int option) {
	self->setOption(static_cast<QFileDialog::Option>(option));
}

bool QFileDialog_testOption(const QFileDialog* self, int option) {
	return self->testOption(static_cast<QFileDialog::Option>(option));
}

void QFileDialog_setOptions(QFileDialog* self, int options) {
	self->setOptions(static_cast<QFileDialog::Options>(options));
}

int QFileDialog_options(const QFileDialog* self) {
	QFileDialog::Options _ret = self->options();
	return static_cast<int>(_ret);
}

void QFileDialog_setVisible(QFileDialog* self, bool visible) {
	self->setVisible(visible);
}

void QFileDialog_fileSelected(QFileDialog* self, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	self->fileSelected(file_QString);
}

void QFileDialog_connect_fileSelected(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& file) {
			const QString file_ret = file;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray file_b = file_ret.toUtf8();
			struct miqt_string file_ms;
			file_ms.len = file_b.length();
			file_ms.data = static_cast<char*>(malloc(file_ms.len));
			memcpy(file_ms.data, file_b.data(), file_ms.len);
			struct miqt_string sigval1 = file_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QString&)>(&QFileDialog::fileSelected), self, local_caller{slot, callback, release});
}

void QFileDialog_filesSelected(QFileDialog* self, struct miqt_array /* of struct miqt_string */  files) {
	QStringList files_QList;
	files_QList.reserve(files.len);
	struct miqt_string* files_arr = static_cast<struct miqt_string*>(files.data);
	for(size_t i = 0; i < files.len; ++i) {
		QString files_arr_i_QString = QString::fromUtf8(files_arr[i].data, files_arr[i].len);
		files_QList.push_back(files_arr_i_QString);
	}
	self->filesSelected(files_QList);
}

void QFileDialog_connect_filesSelected(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of struct miqt_string */ ), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of struct miqt_string */ ), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of struct miqt_string */ );
		void operator()(const QStringList& files) {
			const QStringList& files_ret = files;
			// Convert QList<> from C++ memory to manually-managed C memory
			struct miqt_string* files_arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * files_ret.length()));
			for (size_t i = 0, e = files_ret.length(); i < e; ++i) {
				QString files_lv_ret = files_ret[i];
				// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
				QByteArray files_lv_b = files_lv_ret.toUtf8();
				struct miqt_string files_lv_ms;
				files_lv_ms.len = files_lv_b.length();
				files_lv_ms.data = static_cast<char*>(malloc(files_lv_ms.len));
				memcpy(files_lv_ms.data, files_lv_b.data(), files_lv_ms.len);
				files_arr[i] = files_lv_ms;
			}
			struct miqt_array files_out;
			files_out.len = files_ret.length();
			files_out.data = static_cast<void*>(files_arr);
			struct miqt_array /* of struct miqt_string */  sigval1 = files_out;
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QStringList&)>(&QFileDialog::filesSelected), self, local_caller{slot, callback, release});
}

void QFileDialog_currentChanged(QFileDialog* self, struct miqt_string path) {
	QString path_QString = QString::fromUtf8(path.data, path.len);
	self->currentChanged(path_QString);
}

void QFileDialog_connect_currentChanged(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& path) {
			const QString path_ret = path;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray path_b = path_ret.toUtf8();
			struct miqt_string path_ms;
			path_ms.len = path_b.length();
			path_ms.data = static_cast<char*>(malloc(path_ms.len));
			memcpy(path_ms.data, path_b.data(), path_ms.len);
			struct miqt_string sigval1 = path_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QString&)>(&QFileDialog::currentChanged), self, local_caller{slot, callback, release});
}

void QFileDialog_directoryEntered(QFileDialog* self, struct miqt_string directory) {
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	self->directoryEntered(directory_QString);
}

void QFileDialog_connect_directoryEntered(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& directory) {
			const QString directory_ret = directory;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray directory_b = directory_ret.toUtf8();
			struct miqt_string directory_ms;
			directory_ms.len = directory_b.length();
			directory_ms.data = static_cast<char*>(malloc(directory_ms.len));
			memcpy(directory_ms.data, directory_b.data(), directory_ms.len);
			struct miqt_string sigval1 = directory_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QString&)>(&QFileDialog::directoryEntered), self, local_caller{slot, callback, release});
}

void QFileDialog_urlSelected(QFileDialog* self, QUrl* url) {
	self->urlSelected(*url);
}

void QFileDialog_connect_urlSelected(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& url) {
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QUrl&)>(&QFileDialog::urlSelected), self, local_caller{slot, callback, release});
}

void QFileDialog_urlsSelected(QFileDialog* self, struct miqt_array /* of QUrl* */  urls) {
	QList<QUrl> urls_QList;
	urls_QList.reserve(urls.len);
	QUrl** urls_arr = static_cast<QUrl**>(urls.data);
	for(size_t i = 0; i < urls.len; ++i) {
		urls_QList.push_back(*(urls_arr[i]));
	}
	self->urlsSelected(urls_QList);
}

void QFileDialog_connect_urlsSelected(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QUrl* */ ), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_array /* of QUrl* */ ), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_array /* of QUrl* */ );
		void operator()(const QList<QUrl>& urls) {
			const QList<QUrl>& urls_ret = urls;
			// Convert QList<> from C++ memory to manually-managed C memory
			QUrl** urls_arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * urls_ret.length()));
			for (size_t i = 0, e = urls_ret.length(); i < e; ++i) {
				urls_arr[i] = new QUrl(urls_ret[i]);
			}
			struct miqt_array urls_out;
			urls_out.len = urls_ret.length();
			urls_out.data = static_cast<void*>(urls_arr);
			struct miqt_array /* of QUrl* */  sigval1 = urls_out;
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QList<QUrl>&)>(&QFileDialog::urlsSelected), self, local_caller{slot, callback, release});
}

void QFileDialog_currentUrlChanged(QFileDialog* self, QUrl* url) {
	self->currentUrlChanged(*url);
}

void QFileDialog_connect_currentUrlChanged(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& url) {
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QUrl&)>(&QFileDialog::currentUrlChanged), self, local_caller{slot, callback, release});
}

void QFileDialog_directoryUrlEntered(QFileDialog* self, QUrl* directory) {
	self->directoryUrlEntered(*directory);
}

void QFileDialog_connect_directoryUrlEntered(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& directory) {
			const QUrl& directory_ret = directory;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&directory_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QUrl&)>(&QFileDialog::directoryUrlEntered), self, local_caller{slot, callback, release});
}

void QFileDialog_filterSelected(QFileDialog* self, struct miqt_string filter) {
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	self->filterSelected(filter_QString);
}

void QFileDialog_connect_filterSelected(QFileDialog* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& filter) {
			const QString filter_ret = filter;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray filter_b = filter_ret.toUtf8();
			struct miqt_string filter_ms;
			filter_ms.len = filter_b.length();
			filter_ms.data = static_cast<char*>(malloc(filter_ms.len));
			memcpy(filter_ms.data, filter_b.data(), filter_ms.len);
			struct miqt_string sigval1 = filter_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQFileDialog::connect(self, static_cast<void (QFileDialog::*)(const QString&)>(&QFileDialog::filterSelected), self, local_caller{slot, callback, release});
}

struct miqt_string QFileDialog_getOpenFileName() {
	QString _ret = QFileDialog::getOpenFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileDialog_getOpenFileUrl() {
	return new QUrl(QFileDialog::getOpenFileUrl());
}

struct miqt_string QFileDialog_getSaveFileName() {
	QString _ret = QFileDialog::getSaveFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileDialog_getSaveFileUrl() {
	return new QUrl(QFileDialog::getSaveFileUrl());
}

struct miqt_string QFileDialog_getExistingDirectory() {
	QString _ret = QFileDialog::getExistingDirectory();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileDialog_getExistingDirectoryUrl() {
	return new QUrl(QFileDialog::getExistingDirectoryUrl());
}

struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames() {
	QStringList _ret = QFileDialog::getOpenFileNames();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls() {
	QList<QUrl> _ret = QFileDialog::getOpenFileUrls();
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QFileDialog_saveFileContent(struct miqt_string fileContent, struct miqt_string fileNameHint) {
	QByteArray fileContent_QByteArray(fileContent.data, fileContent.len);
	QString fileNameHint_QString = QString::fromUtf8(fileNameHint.data, fileNameHint.len);
	QFileDialog::saveFileContent(fileContent_QByteArray, fileNameHint_QString);
}

struct miqt_string QFileDialog_tr2(const char* s, const char* c) {
	QString _ret = QFileDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QFileDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFileDialog_setOption2(QFileDialog* self, int option, bool on) {
	self->setOption(static_cast<QFileDialog::Option>(option), on);
}

struct miqt_string QFileDialog_getOpenFileName1(QWidget* parent) {
	QString _ret = QFileDialog::getOpenFileName(parent);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getOpenFileName2(QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString _ret = QFileDialog::getOpenFileName(parent, caption_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getOpenFileName3(QWidget* parent, struct miqt_string caption, struct miqt_string dir) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QString _ret = QFileDialog::getOpenFileName(parent, caption_QString, dir_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getOpenFileName4(QWidget* parent, struct miqt_string caption, struct miqt_string dir, struct miqt_string filter) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	QString _ret = QFileDialog::getOpenFileName(parent, caption_QString, dir_QString, filter_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileDialog_getOpenFileUrl1(QWidget* parent) {
	return new QUrl(QFileDialog::getOpenFileUrl(parent));
}

QUrl* QFileDialog_getOpenFileUrl2(QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	return new QUrl(QFileDialog::getOpenFileUrl(parent, caption_QString));
}

QUrl* QFileDialog_getOpenFileUrl3(QWidget* parent, struct miqt_string caption, QUrl* dir) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	return new QUrl(QFileDialog::getOpenFileUrl(parent, caption_QString, *dir));
}

QUrl* QFileDialog_getOpenFileUrl4(QWidget* parent, struct miqt_string caption, QUrl* dir, struct miqt_string filter) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	return new QUrl(QFileDialog::getOpenFileUrl(parent, caption_QString, *dir, filter_QString));
}

struct miqt_string QFileDialog_getSaveFileName1(QWidget* parent) {
	QString _ret = QFileDialog::getSaveFileName(parent);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getSaveFileName2(QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString _ret = QFileDialog::getSaveFileName(parent, caption_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getSaveFileName3(QWidget* parent, struct miqt_string caption, struct miqt_string dir) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QString _ret = QFileDialog::getSaveFileName(parent, caption_QString, dir_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getSaveFileName4(QWidget* parent, struct miqt_string caption, struct miqt_string dir, struct miqt_string filter) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	QString _ret = QFileDialog::getSaveFileName(parent, caption_QString, dir_QString, filter_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileDialog_getSaveFileUrl1(QWidget* parent) {
	return new QUrl(QFileDialog::getSaveFileUrl(parent));
}

QUrl* QFileDialog_getSaveFileUrl2(QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	return new QUrl(QFileDialog::getSaveFileUrl(parent, caption_QString));
}

QUrl* QFileDialog_getSaveFileUrl3(QWidget* parent, struct miqt_string caption, QUrl* dir) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	return new QUrl(QFileDialog::getSaveFileUrl(parent, caption_QString, *dir));
}

QUrl* QFileDialog_getSaveFileUrl4(QWidget* parent, struct miqt_string caption, QUrl* dir, struct miqt_string filter) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	return new QUrl(QFileDialog::getSaveFileUrl(parent, caption_QString, *dir, filter_QString));
}

struct miqt_string QFileDialog_getExistingDirectory1(QWidget* parent) {
	QString _ret = QFileDialog::getExistingDirectory(parent);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getExistingDirectory2(QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString _ret = QFileDialog::getExistingDirectory(parent, caption_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getExistingDirectory3(QWidget* parent, struct miqt_string caption, struct miqt_string dir) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QString _ret = QFileDialog::getExistingDirectory(parent, caption_QString, dir_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileDialog_getExistingDirectory4(QWidget* parent, struct miqt_string caption, struct miqt_string dir, int options) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QString _ret = QFileDialog::getExistingDirectory(parent, caption_QString, dir_QString, static_cast<QFileDialog::Options>(options));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QFileDialog_getExistingDirectoryUrl1(QWidget* parent) {
	return new QUrl(QFileDialog::getExistingDirectoryUrl(parent));
}

QUrl* QFileDialog_getExistingDirectoryUrl2(QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	return new QUrl(QFileDialog::getExistingDirectoryUrl(parent, caption_QString));
}

QUrl* QFileDialog_getExistingDirectoryUrl3(QWidget* parent, struct miqt_string caption, QUrl* dir) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	return new QUrl(QFileDialog::getExistingDirectoryUrl(parent, caption_QString, *dir));
}

QUrl* QFileDialog_getExistingDirectoryUrl4(QWidget* parent, struct miqt_string caption, QUrl* dir, int options) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	return new QUrl(QFileDialog::getExistingDirectoryUrl(parent, caption_QString, *dir, static_cast<QFileDialog::Options>(options)));
}

QUrl* QFileDialog_getExistingDirectoryUrl5(QWidget* parent, struct miqt_string caption, QUrl* dir, int options, struct miqt_array /* of struct miqt_string */  supportedSchemes) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QStringList supportedSchemes_QList;
	supportedSchemes_QList.reserve(supportedSchemes.len);
	struct miqt_string* supportedSchemes_arr = static_cast<struct miqt_string*>(supportedSchemes.data);
	for(size_t i = 0; i < supportedSchemes.len; ++i) {
		QString supportedSchemes_arr_i_QString = QString::fromUtf8(supportedSchemes_arr[i].data, supportedSchemes_arr[i].len);
		supportedSchemes_QList.push_back(supportedSchemes_arr_i_QString);
	}
	return new QUrl(QFileDialog::getExistingDirectoryUrl(parent, caption_QString, *dir, static_cast<QFileDialog::Options>(options), supportedSchemes_QList));
}

struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames1(QWidget* parent) {
	QStringList _ret = QFileDialog::getOpenFileNames(parent);
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames2(QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QStringList _ret = QFileDialog::getOpenFileNames(parent, caption_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames3(QWidget* parent, struct miqt_string caption, struct miqt_string dir) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QStringList _ret = QFileDialog::getOpenFileNames(parent, caption_QString, dir_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of struct miqt_string */  QFileDialog_getOpenFileNames4(QWidget* parent, struct miqt_string caption, struct miqt_string dir, struct miqt_string filter) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	QStringList _ret = QFileDialog::getOpenFileNames(parent, caption_QString, dir_QString, filter_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls1(QWidget* parent) {
	QList<QUrl> _ret = QFileDialog::getOpenFileUrls(parent);
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls2(QWidget* parent, struct miqt_string caption) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QList<QUrl> _ret = QFileDialog::getOpenFileUrls(parent, caption_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls3(QWidget* parent, struct miqt_string caption, QUrl* dir) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QList<QUrl> _ret = QFileDialog::getOpenFileUrls(parent, caption_QString, *dir);
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QUrl* */  QFileDialog_getOpenFileUrls4(QWidget* parent, struct miqt_string caption, QUrl* dir, struct miqt_string filter) {
	QString caption_QString = QString::fromUtf8(caption.data, caption.len);
	QString filter_QString = QString::fromUtf8(filter.data, filter.len);
	QList<QUrl> _ret = QFileDialog::getOpenFileUrls(parent, caption_QString, *dir, filter_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMetaObject* QFileDialog_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQFileDialog*)(self) )->QFileDialog::metaObject();

}

void* QFileDialog_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQFileDialog*)(self) )->QFileDialog::qt_metacast(param1);

}

int QFileDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQFileDialog*)(self) )->QFileDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

void QFileDialog_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::setVisible(visible);

}

void QFileDialog_virtualbase_done(void* self, int result) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::done(static_cast<int>(result));

}

void QFileDialog_virtualbase_accept(void* self) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::accept();

}

void QFileDialog_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::changeEvent(e);

}

QSize* QFileDialog_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQFileDialog*)(self) )->QFileDialog::sizeHint());

}

QSize* QFileDialog_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQFileDialog*)(self) )->QFileDialog::minimumSizeHint());

}

void QFileDialog_virtualbase_open(void* self) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::open();

}

int QFileDialog_virtualbase_exec(void* self) {

	return ( (VirtualQFileDialog*)(self) )->QFileDialog::exec();

}

void QFileDialog_virtualbase_reject(void* self) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::reject();

}

void QFileDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::keyPressEvent(param1);

}

void QFileDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::closeEvent(param1);

}

void QFileDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::showEvent(param1);

}

void QFileDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::resizeEvent(param1);

}

void QFileDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::contextMenuEvent(param1);

}

bool QFileDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQFileDialog*)(self) )->QFileDialog::eventFilter(param1, param2);

}

int QFileDialog_virtualbase_devType(const void* self) {

	return ( (const VirtualQFileDialog*)(self) )->QFileDialog::devType();

}

int QFileDialog_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQFileDialog*)(self) )->QFileDialog::heightForWidth(static_cast<int>(param1));

}

bool QFileDialog_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQFileDialog*)(self) )->QFileDialog::hasHeightForWidth();

}

QPaintEngine* QFileDialog_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQFileDialog*)(self) )->QFileDialog::paintEngine();

}

bool QFileDialog_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQFileDialog*)(self) )->QFileDialog::event(event);

}

void QFileDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::mousePressEvent(event);

}

void QFileDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::mouseReleaseEvent(event);

}

void QFileDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::mouseDoubleClickEvent(event);

}

void QFileDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::mouseMoveEvent(event);

}

void QFileDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::wheelEvent(event);

}

void QFileDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::keyReleaseEvent(event);

}

void QFileDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::focusInEvent(event);

}

void QFileDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::focusOutEvent(event);

}

void QFileDialog_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::enterEvent(event);

}

void QFileDialog_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::leaveEvent(event);

}

void QFileDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::paintEvent(event);

}

void QFileDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::moveEvent(event);

}

void QFileDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::tabletEvent(event);

}

void QFileDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::actionEvent(event);

}

void QFileDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::dragEnterEvent(event);

}

void QFileDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::dragMoveEvent(event);

}

void QFileDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::dragLeaveEvent(event);

}

void QFileDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::dropEvent(event);

}

void QFileDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::hideEvent(event);

}

bool QFileDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQFileDialog*)(self) )->QFileDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QFileDialog_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQFileDialog*)(self) )->QFileDialog::metric(static_cast<VirtualQFileDialog::PaintDeviceMetric>(param1));

}

void QFileDialog_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQFileDialog*)(self) )->QFileDialog::initPainter(painter);

}

QPaintDevice* QFileDialog_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQFileDialog*)(self) )->QFileDialog::redirected(offset);

}

QPainter* QFileDialog_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQFileDialog*)(self) )->QFileDialog::sharedPainter();

}

void QFileDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::inputMethodEvent(param1);

}

QVariant* QFileDialog_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQFileDialog*)(self) )->QFileDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

bool QFileDialog_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQFileDialog*)(self) )->QFileDialog::focusNextPrevChild(next);

}

void QFileDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::timerEvent(event);

}

void QFileDialog_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::childEvent(event);

}

void QFileDialog_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::customEvent(event);

}

void QFileDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::connectNotify(*signal);

}

void QFileDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFileDialog*)(self) )->QFileDialog::disconnectNotify(*signal);

}

const QMetaObject* QFileDialog_staticMetaObject() { return &QFileDialog::staticMetaObject; }
void QFileDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->adjustPosition(param1);

}

void QFileDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QFileDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QFileDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QFileDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QFileDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QFileDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QFileDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QFileDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QFileDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQFileDialog* self_cast = dynamic_cast<VirtualQFileDialog*>( (QFileDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QFileDialog_delete(QFileDialog* self) {
	delete self;
}

