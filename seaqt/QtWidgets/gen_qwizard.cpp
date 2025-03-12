#include <QAbstractButton>
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
#include <QPixmap>
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
#include <QWizard>
#include <QWizardPage>
#include <qwizard.h>
#include "gen_qwizard.h"
class VirtualQWizard final : public QWizard {
	const QWizard_VTable* vtbl;
	void* vdata;
public:
	friend const QWizard_VTable* QWizard_vtbl(const VirtualQWizard* self);
	friend void* QWizard_vdata(const VirtualQWizard* self);
	friend void QWizard_setVdata(VirtualQWizard* self, void* vdata);

	VirtualQWizard(const QWizard_VTable* vtbl, void* vdata, QWidget* parent): QWizard(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQWizard(const QWizard_VTable* vtbl, void* vdata): QWizard(), vtbl(vtbl), vdata(vdata) {}
	VirtualQWizard(const QWizard_VTable* vtbl, void* vdata, QWidget* parent, Qt::WindowFlags flags): QWizard(parent, flags), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWizard() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWizard::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWizard_virtualbase_metaObject(const VirtualQWizard* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWizard::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWizard_virtualbase_metacast(VirtualQWizard* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWizard::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizard_virtualbase_metacall(VirtualQWizard* self, int param1, int param2, void** param3);

	virtual bool validateCurrentPage() override {
		if (vtbl->validateCurrentPage == 0) {
			return QWizard::validateCurrentPage();
		}


		bool callback_return_value = vtbl->validateCurrentPage(this);

		return callback_return_value;
	}

	friend bool QWizard_virtualbase_validateCurrentPage(VirtualQWizard* self);

	virtual int nextId() const override {
		if (vtbl->nextId == 0) {
			return QWizard::nextId();
		}


		int callback_return_value = vtbl->nextId(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizard_virtualbase_nextId(const VirtualQWizard* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QWizard::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QWizard_virtualbase_setVisible(VirtualQWizard* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWizard::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWizard_virtualbase_sizeHint(const VirtualQWizard* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWizard::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWizard_virtualbase_event(VirtualQWizard* self, QEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QWizard::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_resizeEvent(VirtualQWizard* self, QResizeEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QWizard::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_paintEvent(VirtualQWizard* self, QPaintEvent* event);

	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QWizard::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(this, sigval1);

	}

	friend void QWizard_virtualbase_done(VirtualQWizard* self, int result);

	virtual void initializePage(int id) override {
		if (vtbl->initializePage == 0) {
			QWizard::initializePage(id);
			return;
		}

		int sigval1 = id;

		vtbl->initializePage(this, sigval1);

	}

	friend void QWizard_virtualbase_initializePage(VirtualQWizard* self, int id);

	virtual void cleanupPage(int id) override {
		if (vtbl->cleanupPage == 0) {
			QWizard::cleanupPage(id);
			return;
		}

		int sigval1 = id;

		vtbl->cleanupPage(this, sigval1);

	}

	friend void QWizard_virtualbase_cleanupPage(VirtualQWizard* self, int id);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QWizard::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWizard_virtualbase_minimumSizeHint(const VirtualQWizard* self);

	virtual void open() override {
		if (vtbl->open == 0) {
			QWizard::open();
			return;
		}


		vtbl->open(this);

	}

	friend void QWizard_virtualbase_open(VirtualQWizard* self);

	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QWizard::exec();
		}


		int callback_return_value = vtbl->exec(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizard_virtualbase_exec(VirtualQWizard* self);

	virtual void accept() override {
		if (vtbl->accept == 0) {
			QWizard::accept();
			return;
		}


		vtbl->accept(this);

	}

	friend void QWizard_virtualbase_accept(VirtualQWizard* self);

	virtual void reject() override {
		if (vtbl->reject == 0) {
			QWizard::reject();
			return;
		}


		vtbl->reject(this);

	}

	friend void QWizard_virtualbase_reject(VirtualQWizard* self);

	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QWizard::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_keyPressEvent(VirtualQWizard* self, QKeyEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QWizard::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_closeEvent(VirtualQWizard* self, QCloseEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QWizard::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_showEvent(VirtualQWizard* self, QShowEvent* param1);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QWizard::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_contextMenuEvent(VirtualQWizard* self, QContextMenuEvent* param1);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QWizard::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWizard_virtualbase_eventFilter(VirtualQWizard* self, QObject* param1, QEvent* param2);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QWizard::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizard_virtualbase_devType(const VirtualQWizard* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWizard::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizard_virtualbase_heightForWidth(const VirtualQWizard* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWizard::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QWizard_virtualbase_hasHeightForWidth(const VirtualQWizard* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QWizard::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QWizard_virtualbase_paintEngine(const VirtualQWizard* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QWizard::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_mousePressEvent(VirtualQWizard* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWizard::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_mouseReleaseEvent(VirtualQWizard* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWizard::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_mouseDoubleClickEvent(VirtualQWizard* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWizard::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_mouseMoveEvent(VirtualQWizard* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QWizard::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_wheelEvent(VirtualQWizard* self, QWheelEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWizard::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_keyReleaseEvent(VirtualQWizard* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QWizard::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_focusInEvent(VirtualQWizard* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QWizard::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_focusOutEvent(VirtualQWizard* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QWizard::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_enterEvent(VirtualQWizard* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QWizard::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_leaveEvent(VirtualQWizard* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QWizard::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_moveEvent(VirtualQWizard* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QWizard::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_tabletEvent(VirtualQWizard* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QWizard::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_actionEvent(VirtualQWizard* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QWizard::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_dragEnterEvent(VirtualQWizard* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QWizard::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_dragMoveEvent(VirtualQWizard* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QWizard::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_dragLeaveEvent(VirtualQWizard* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QWizard::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_dropEvent(VirtualQWizard* self, QDropEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QWizard::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_hideEvent(VirtualQWizard* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWizard::nativeEvent(eventType, message, result);
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

	friend bool QWizard_virtualbase_nativeEvent(VirtualQWizard* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QWizard::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_changeEvent(VirtualQWizard* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QWizard::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizard_virtualbase_metric(const VirtualQWizard* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QWizard::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QWizard_virtualbase_initPainter(const VirtualQWizard* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QWizard::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QWizard_virtualbase_redirected(const VirtualQWizard* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QWizard::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QWizard_virtualbase_sharedPainter(const VirtualQWizard* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QWizard::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_inputMethodEvent(VirtualQWizard* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QWizard::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QWizard_virtualbase_inputMethodQuery(const VirtualQWizard* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QWizard::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QWizard_virtualbase_focusNextPrevChild(VirtualQWizard* self, bool next);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWizard::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_timerEvent(VirtualQWizard* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWizard::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_childEvent(VirtualQWizard* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWizard::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWizard_virtualbase_customEvent(VirtualQWizard* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWizard::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWizard_virtualbase_connectNotify(VirtualQWizard* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWizard::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWizard_virtualbase_disconnectNotify(VirtualQWizard* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QWizard_protectedbase_adjustPosition(VirtualQWizard* self, QWidget* param1);
	friend void QWizard_protectedbase_updateMicroFocus(VirtualQWizard* self);
	friend void QWizard_protectedbase_create(VirtualQWizard* self);
	friend void QWizard_protectedbase_destroy(VirtualQWizard* self);
	friend bool QWizard_protectedbase_focusNextChild(VirtualQWizard* self);
	friend bool QWizard_protectedbase_focusPreviousChild(VirtualQWizard* self);
	friend QObject* QWizard_protectedbase_sender(const VirtualQWizard* self);
	friend int QWizard_protectedbase_senderSignalIndex(const VirtualQWizard* self);
	friend int QWizard_protectedbase_receivers(const VirtualQWizard* self, const char* signal);
	friend bool QWizard_protectedbase_isSignalConnected(const VirtualQWizard* self, QMetaMethod* signal);
};

VirtualQWizard* QWizard_new(const QWizard_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQWizard(vtbl, vdata, parent);
}

VirtualQWizard* QWizard_new2(const QWizard_VTable* vtbl, void* vdata) {
	return new VirtualQWizard(vtbl, vdata);
}

VirtualQWizard* QWizard_new3(const QWizard_VTable* vtbl, void* vdata, QWidget* parent, int flags) {
	return new VirtualQWizard(vtbl, vdata, parent, static_cast<Qt::WindowFlags>(flags));
}

void QWizard_virtbase(QWizard* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QWizard_metaObject(const QWizard* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWizard_metacast(QWizard* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWizard_metacall(QWizard* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWizard_tr(const char* s) {
	QString _ret = QWizard::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWizard_trUtf8(const char* s) {
	QString _ret = QWizard::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QWizard_addPage(QWizard* self, QWizardPage* page) {
	return self->addPage(page);
}

void QWizard_setPage(QWizard* self, int id, QWizardPage* page) {
	self->setPage(static_cast<int>(id), page);
}

void QWizard_removePage(QWizard* self, int id) {
	self->removePage(static_cast<int>(id));
}

QWizardPage* QWizard_page(const QWizard* self, int id) {
	return self->page(static_cast<int>(id));
}

bool QWizard_hasVisitedPage(const QWizard* self, int id) {
	return self->hasVisitedPage(static_cast<int>(id));
}

struct miqt_array /* of int */  QWizard_visitedPages(const QWizard* self) {
	QList<int> _ret = self->visitedPages();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of int */  QWizard_visitedIds(const QWizard* self) {
	QList<int> _ret = self->visitedIds();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of int */  QWizard_pageIds(const QWizard* self) {
	QList<int> _ret = self->pageIds();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QWizard_setStartId(QWizard* self, int id) {
	self->setStartId(static_cast<int>(id));
}

int QWizard_startId(const QWizard* self) {
	return self->startId();
}

QWizardPage* QWizard_currentPage(const QWizard* self) {
	return self->currentPage();
}

int QWizard_currentId(const QWizard* self) {
	return self->currentId();
}

bool QWizard_validateCurrentPage(QWizard* self) {
	return self->validateCurrentPage();
}

int QWizard_nextId(const QWizard* self) {
	return self->nextId();
}

void QWizard_setField(QWizard* self, struct miqt_string name, QVariant* value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setField(name_QString, *value);
}

QVariant* QWizard_field(const QWizard* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new QVariant(self->field(name_QString));
}

void QWizard_setWizardStyle(QWizard* self, int style) {
	self->setWizardStyle(static_cast<QWizard::WizardStyle>(style));
}

int QWizard_wizardStyle(const QWizard* self) {
	QWizard::WizardStyle _ret = self->wizardStyle();
	return static_cast<int>(_ret);
}

void QWizard_setOption(QWizard* self, int option) {
	self->setOption(static_cast<QWizard::WizardOption>(option));
}

bool QWizard_testOption(const QWizard* self, int option) {
	return self->testOption(static_cast<QWizard::WizardOption>(option));
}

void QWizard_setOptions(QWizard* self, int options) {
	self->setOptions(static_cast<QWizard::WizardOptions>(options));
}

int QWizard_options(const QWizard* self) {
	QWizard::WizardOptions _ret = self->options();
	return static_cast<int>(_ret);
}

void QWizard_setButtonText(QWizard* self, int which, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setButtonText(static_cast<QWizard::WizardButton>(which), text_QString);
}

struct miqt_string QWizard_buttonText(const QWizard* self, int which) {
	QString _ret = self->buttonText(static_cast<QWizard::WizardButton>(which));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWizard_setButtonLayout(QWizard* self, struct miqt_array /* of int */  layout) {
	QList<QWizard::WizardButton> layout_QList;
	layout_QList.reserve(layout.len);
	int* layout_arr = static_cast<int*>(layout.data);
	for(size_t i = 0; i < layout.len; ++i) {
		layout_QList.push_back(static_cast<QWizard::WizardButton>(layout_arr[i]));
	}
	self->setButtonLayout(layout_QList);
}

void QWizard_setButton(QWizard* self, int which, QAbstractButton* button) {
	self->setButton(static_cast<QWizard::WizardButton>(which), button);
}

QAbstractButton* QWizard_button(const QWizard* self, int which) {
	return self->button(static_cast<QWizard::WizardButton>(which));
}

void QWizard_setTitleFormat(QWizard* self, int format) {
	self->setTitleFormat(static_cast<Qt::TextFormat>(format));
}

int QWizard_titleFormat(const QWizard* self) {
	Qt::TextFormat _ret = self->titleFormat();
	return static_cast<int>(_ret);
}

void QWizard_setSubTitleFormat(QWizard* self, int format) {
	self->setSubTitleFormat(static_cast<Qt::TextFormat>(format));
}

int QWizard_subTitleFormat(const QWizard* self) {
	Qt::TextFormat _ret = self->subTitleFormat();
	return static_cast<int>(_ret);
}

void QWizard_setPixmap(QWizard* self, int which, QPixmap* pixmap) {
	self->setPixmap(static_cast<QWizard::WizardPixmap>(which), *pixmap);
}

QPixmap* QWizard_pixmap(const QWizard* self, int which) {
	return new QPixmap(self->pixmap(static_cast<QWizard::WizardPixmap>(which)));
}

void QWizard_setSideWidget(QWizard* self, QWidget* widget) {
	self->setSideWidget(widget);
}

QWidget* QWizard_sideWidget(const QWizard* self) {
	return self->sideWidget();
}

void QWizard_setDefaultProperty(QWizard* self, const char* className, const char* property, const char* changedSignal) {
	self->setDefaultProperty(className, property, changedSignal);
}

void QWizard_setVisible(QWizard* self, bool visible) {
	self->setVisible(visible);
}

QSize* QWizard_sizeHint(const QWizard* self) {
	return new QSize(self->sizeHint());
}

void QWizard_currentIdChanged(QWizard* self, int id) {
	self->currentIdChanged(static_cast<int>(id));
}

void QWizard_connect_currentIdChanged(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int id) {
			int sigval1 = id;
			callback(slot, sigval1);
		}
	};
	VirtualQWizard::connect(self, static_cast<void (QWizard::*)(int)>(&QWizard::currentIdChanged), self, local_caller{slot, callback, release});
}

void QWizard_helpRequested(QWizard* self) {
	self->helpRequested();
}

void QWizard_connect_helpRequested(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWizard::connect(self, static_cast<void (QWizard::*)()>(&QWizard::helpRequested), self, local_caller{slot, callback, release});
}

void QWizard_customButtonClicked(QWizard* self, int which) {
	self->customButtonClicked(static_cast<int>(which));
}

void QWizard_connect_customButtonClicked(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int which) {
			int sigval1 = which;
			callback(slot, sigval1);
		}
	};
	VirtualQWizard::connect(self, static_cast<void (QWizard::*)(int)>(&QWizard::customButtonClicked), self, local_caller{slot, callback, release});
}

void QWizard_pageAdded(QWizard* self, int id) {
	self->pageAdded(static_cast<int>(id));
}

void QWizard_connect_pageAdded(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int id) {
			int sigval1 = id;
			callback(slot, sigval1);
		}
	};
	VirtualQWizard::connect(self, static_cast<void (QWizard::*)(int)>(&QWizard::pageAdded), self, local_caller{slot, callback, release});
}

void QWizard_pageRemoved(QWizard* self, int id) {
	self->pageRemoved(static_cast<int>(id));
}

void QWizard_connect_pageRemoved(VirtualQWizard* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int id) {
			int sigval1 = id;
			callback(slot, sigval1);
		}
	};
	VirtualQWizard::connect(self, static_cast<void (QWizard::*)(int)>(&QWizard::pageRemoved), self, local_caller{slot, callback, release});
}

void QWizard_back(QWizard* self) {
	self->back();
}

void QWizard_next(QWizard* self) {
	self->next();
}

void QWizard_restart(QWizard* self) {
	self->restart();
}

struct miqt_string QWizard_tr2(const char* s, const char* c) {
	QString _ret = QWizard::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWizard_tr3(const char* s, const char* c, int n) {
	QString _ret = QWizard::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWizard_trUtf82(const char* s, const char* c) {
	QString _ret = QWizard::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWizard_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWizard::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWizard_setOption2(QWizard* self, int option, bool on) {
	self->setOption(static_cast<QWizard::WizardOption>(option), on);
}

QMetaObject* QWizard_virtualbase_metaObject(const VirtualQWizard* self) {

	return (QMetaObject*) self->QWizard::metaObject();
}

void* QWizard_virtualbase_metacast(VirtualQWizard* self, const char* param1) {

	return self->QWizard::qt_metacast(param1);
}

int QWizard_virtualbase_metacall(VirtualQWizard* self, int param1, int param2, void** param3) {

	return self->QWizard::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

bool QWizard_virtualbase_validateCurrentPage(VirtualQWizard* self) {

	return self->QWizard::validateCurrentPage();
}

int QWizard_virtualbase_nextId(const VirtualQWizard* self) {

	return self->QWizard::nextId();
}

void QWizard_virtualbase_setVisible(VirtualQWizard* self, bool visible) {

	self->QWizard::setVisible(visible);
}

QSize* QWizard_virtualbase_sizeHint(const VirtualQWizard* self) {

	return new QSize(self->QWizard::sizeHint());
}

bool QWizard_virtualbase_event(VirtualQWizard* self, QEvent* event) {

	return self->QWizard::event(event);
}

void QWizard_virtualbase_resizeEvent(VirtualQWizard* self, QResizeEvent* event) {

	self->QWizard::resizeEvent(event);
}

void QWizard_virtualbase_paintEvent(VirtualQWizard* self, QPaintEvent* event) {

	self->QWizard::paintEvent(event);
}

void QWizard_virtualbase_done(VirtualQWizard* self, int result) {

	self->QWizard::done(static_cast<int>(result));
}

void QWizard_virtualbase_initializePage(VirtualQWizard* self, int id) {

	self->QWizard::initializePage(static_cast<int>(id));
}

void QWizard_virtualbase_cleanupPage(VirtualQWizard* self, int id) {

	self->QWizard::cleanupPage(static_cast<int>(id));
}

QSize* QWizard_virtualbase_minimumSizeHint(const VirtualQWizard* self) {

	return new QSize(self->QWizard::minimumSizeHint());
}

void QWizard_virtualbase_open(VirtualQWizard* self) {

	self->QWizard::open();
}

int QWizard_virtualbase_exec(VirtualQWizard* self) {

	return self->QWizard::exec();
}

void QWizard_virtualbase_accept(VirtualQWizard* self) {

	self->QWizard::accept();
}

void QWizard_virtualbase_reject(VirtualQWizard* self) {

	self->QWizard::reject();
}

void QWizard_virtualbase_keyPressEvent(VirtualQWizard* self, QKeyEvent* param1) {

	self->QWizard::keyPressEvent(param1);
}

void QWizard_virtualbase_closeEvent(VirtualQWizard* self, QCloseEvent* param1) {

	self->QWizard::closeEvent(param1);
}

void QWizard_virtualbase_showEvent(VirtualQWizard* self, QShowEvent* param1) {

	self->QWizard::showEvent(param1);
}

void QWizard_virtualbase_contextMenuEvent(VirtualQWizard* self, QContextMenuEvent* param1) {

	self->QWizard::contextMenuEvent(param1);
}

bool QWizard_virtualbase_eventFilter(VirtualQWizard* self, QObject* param1, QEvent* param2) {

	return self->QWizard::eventFilter(param1, param2);
}

int QWizard_virtualbase_devType(const VirtualQWizard* self) {

	return self->QWizard::devType();
}

int QWizard_virtualbase_heightForWidth(const VirtualQWizard* self, int param1) {

	return self->QWizard::heightForWidth(static_cast<int>(param1));
}

bool QWizard_virtualbase_hasHeightForWidth(const VirtualQWizard* self) {

	return self->QWizard::hasHeightForWidth();
}

QPaintEngine* QWizard_virtualbase_paintEngine(const VirtualQWizard* self) {

	return self->QWizard::paintEngine();
}

void QWizard_virtualbase_mousePressEvent(VirtualQWizard* self, QMouseEvent* event) {

	self->QWizard::mousePressEvent(event);
}

void QWizard_virtualbase_mouseReleaseEvent(VirtualQWizard* self, QMouseEvent* event) {

	self->QWizard::mouseReleaseEvent(event);
}

void QWizard_virtualbase_mouseDoubleClickEvent(VirtualQWizard* self, QMouseEvent* event) {

	self->QWizard::mouseDoubleClickEvent(event);
}

void QWizard_virtualbase_mouseMoveEvent(VirtualQWizard* self, QMouseEvent* event) {

	self->QWizard::mouseMoveEvent(event);
}

void QWizard_virtualbase_wheelEvent(VirtualQWizard* self, QWheelEvent* event) {

	self->QWizard::wheelEvent(event);
}

void QWizard_virtualbase_keyReleaseEvent(VirtualQWizard* self, QKeyEvent* event) {

	self->QWizard::keyReleaseEvent(event);
}

void QWizard_virtualbase_focusInEvent(VirtualQWizard* self, QFocusEvent* event) {

	self->QWizard::focusInEvent(event);
}

void QWizard_virtualbase_focusOutEvent(VirtualQWizard* self, QFocusEvent* event) {

	self->QWizard::focusOutEvent(event);
}

void QWizard_virtualbase_enterEvent(VirtualQWizard* self, QEvent* event) {

	self->QWizard::enterEvent(event);
}

void QWizard_virtualbase_leaveEvent(VirtualQWizard* self, QEvent* event) {

	self->QWizard::leaveEvent(event);
}

void QWizard_virtualbase_moveEvent(VirtualQWizard* self, QMoveEvent* event) {

	self->QWizard::moveEvent(event);
}

void QWizard_virtualbase_tabletEvent(VirtualQWizard* self, QTabletEvent* event) {

	self->QWizard::tabletEvent(event);
}

void QWizard_virtualbase_actionEvent(VirtualQWizard* self, QActionEvent* event) {

	self->QWizard::actionEvent(event);
}

void QWizard_virtualbase_dragEnterEvent(VirtualQWizard* self, QDragEnterEvent* event) {

	self->QWizard::dragEnterEvent(event);
}

void QWizard_virtualbase_dragMoveEvent(VirtualQWizard* self, QDragMoveEvent* event) {

	self->QWizard::dragMoveEvent(event);
}

void QWizard_virtualbase_dragLeaveEvent(VirtualQWizard* self, QDragLeaveEvent* event) {

	self->QWizard::dragLeaveEvent(event);
}

void QWizard_virtualbase_dropEvent(VirtualQWizard* self, QDropEvent* event) {

	self->QWizard::dropEvent(event);
}

void QWizard_virtualbase_hideEvent(VirtualQWizard* self, QHideEvent* event) {

	self->QWizard::hideEvent(event);
}

bool QWizard_virtualbase_nativeEvent(VirtualQWizard* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QWizard::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QWizard_virtualbase_changeEvent(VirtualQWizard* self, QEvent* param1) {

	self->QWizard::changeEvent(param1);
}

int QWizard_virtualbase_metric(const VirtualQWizard* self, int param1) {

	return self->QWizard::metric(static_cast<VirtualQWizard::PaintDeviceMetric>(param1));
}

void QWizard_virtualbase_initPainter(const VirtualQWizard* self, QPainter* painter) {

	self->QWizard::initPainter(painter);
}

QPaintDevice* QWizard_virtualbase_redirected(const VirtualQWizard* self, QPoint* offset) {

	return self->QWizard::redirected(offset);
}

QPainter* QWizard_virtualbase_sharedPainter(const VirtualQWizard* self) {

	return self->QWizard::sharedPainter();
}

void QWizard_virtualbase_inputMethodEvent(VirtualQWizard* self, QInputMethodEvent* param1) {

	self->QWizard::inputMethodEvent(param1);
}

QVariant* QWizard_virtualbase_inputMethodQuery(const VirtualQWizard* self, int param1) {

	return new QVariant(self->QWizard::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QWizard_virtualbase_focusNextPrevChild(VirtualQWizard* self, bool next) {

	return self->QWizard::focusNextPrevChild(next);
}

void QWizard_virtualbase_timerEvent(VirtualQWizard* self, QTimerEvent* event) {

	self->QWizard::timerEvent(event);
}

void QWizard_virtualbase_childEvent(VirtualQWizard* self, QChildEvent* event) {

	self->QWizard::childEvent(event);
}

void QWizard_virtualbase_customEvent(VirtualQWizard* self, QEvent* event) {

	self->QWizard::customEvent(event);
}

void QWizard_virtualbase_connectNotify(VirtualQWizard* self, QMetaMethod* signal) {

	self->QWizard::connectNotify(*signal);
}

void QWizard_virtualbase_disconnectNotify(VirtualQWizard* self, QMetaMethod* signal) {

	self->QWizard::disconnectNotify(*signal);
}

const QMetaObject* QWizard_staticMetaObject() { return &QWizard::staticMetaObject; }

const QWizard_VTable* QWizard_vtbl(const VirtualQWizard* self) { return self->vtbl; }
void* QWizard_vdata(const VirtualQWizard* self) { return self->vdata; }
void QWizard_setVdata(VirtualQWizard* self, void* vdata) { self->vdata = vdata; }

void QWizard_protectedbase_adjustPosition(VirtualQWizard* self, QWidget* param1) {
	self->adjustPosition(param1);
}

void QWizard_protectedbase_updateMicroFocus(VirtualQWizard* self) {
	self->updateMicroFocus();
}

void QWizard_protectedbase_create(VirtualQWizard* self) {
	self->create();
}

void QWizard_protectedbase_destroy(VirtualQWizard* self) {
	self->destroy();
}

bool QWizard_protectedbase_focusNextChild(VirtualQWizard* self) {
	return self->focusNextChild();
}

bool QWizard_protectedbase_focusPreviousChild(VirtualQWizard* self) {
	return self->focusPreviousChild();
}

QObject* QWizard_protectedbase_sender(const VirtualQWizard* self) {
	return self->sender();
}

int QWizard_protectedbase_senderSignalIndex(const VirtualQWizard* self) {
	return self->senderSignalIndex();
}

int QWizard_protectedbase_receivers(const VirtualQWizard* self, const char* signal) {
	return self->receivers(signal);
}

bool QWizard_protectedbase_isSignalConnected(const VirtualQWizard* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWizard_delete(QWizard* self) {
	delete self;
}

class VirtualQWizardPage final : public QWizardPage {
	const QWizardPage_VTable* vtbl;
	void* vdata;
public:
	friend const QWizardPage_VTable* QWizardPage_vtbl(const VirtualQWizardPage* self);
	friend void* QWizardPage_vdata(const VirtualQWizardPage* self);
	friend void QWizardPage_setVdata(VirtualQWizardPage* self, void* vdata);

	VirtualQWizardPage(const QWizardPage_VTable* vtbl, void* vdata, QWidget* parent): QWizardPage(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQWizardPage(const QWizardPage_VTable* vtbl, void* vdata): QWizardPage(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWizardPage() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWizardPage::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWizardPage_virtualbase_metaObject(const VirtualQWizardPage* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWizardPage::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWizardPage_virtualbase_metacast(VirtualQWizardPage* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWizardPage::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizardPage_virtualbase_metacall(VirtualQWizardPage* self, int param1, int param2, void** param3);

	virtual void initializePage() override {
		if (vtbl->initializePage == 0) {
			QWizardPage::initializePage();
			return;
		}


		vtbl->initializePage(this);

	}

	friend void QWizardPage_virtualbase_initializePage(VirtualQWizardPage* self);

	virtual void cleanupPage() override {
		if (vtbl->cleanupPage == 0) {
			QWizardPage::cleanupPage();
			return;
		}


		vtbl->cleanupPage(this);

	}

	friend void QWizardPage_virtualbase_cleanupPage(VirtualQWizardPage* self);

	virtual bool validatePage() override {
		if (vtbl->validatePage == 0) {
			return QWizardPage::validatePage();
		}


		bool callback_return_value = vtbl->validatePage(this);

		return callback_return_value;
	}

	friend bool QWizardPage_virtualbase_validatePage(VirtualQWizardPage* self);

	virtual bool isComplete() const override {
		if (vtbl->isComplete == 0) {
			return QWizardPage::isComplete();
		}


		bool callback_return_value = vtbl->isComplete(this);

		return callback_return_value;
	}

	friend bool QWizardPage_virtualbase_isComplete(const VirtualQWizardPage* self);

	virtual int nextId() const override {
		if (vtbl->nextId == 0) {
			return QWizardPage::nextId();
		}


		int callback_return_value = vtbl->nextId(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizardPage_virtualbase_nextId(const VirtualQWizardPage* self);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QWizardPage::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizardPage_virtualbase_devType(const VirtualQWizardPage* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QWizardPage::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QWizardPage_virtualbase_setVisible(VirtualQWizardPage* self, bool visible);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWizardPage::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWizardPage_virtualbase_sizeHint(const VirtualQWizardPage* self);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QWizardPage::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWizardPage_virtualbase_minimumSizeHint(const VirtualQWizardPage* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWizardPage::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizardPage_virtualbase_heightForWidth(const VirtualQWizardPage* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWizardPage::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QWizardPage_virtualbase_hasHeightForWidth(const VirtualQWizardPage* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QWizardPage::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QWizardPage_virtualbase_paintEngine(const VirtualQWizardPage* self);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWizardPage::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWizardPage_virtualbase_event(VirtualQWizardPage* self, QEvent* event);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QWizardPage::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_mousePressEvent(VirtualQWizardPage* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWizardPage::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_mouseReleaseEvent(VirtualQWizardPage* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWizardPage::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_mouseDoubleClickEvent(VirtualQWizardPage* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWizardPage::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_mouseMoveEvent(VirtualQWizardPage* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QWizardPage::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_wheelEvent(VirtualQWizardPage* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QWizardPage::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_keyPressEvent(VirtualQWizardPage* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWizardPage::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_keyReleaseEvent(VirtualQWizardPage* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QWizardPage::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_focusInEvent(VirtualQWizardPage* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QWizardPage::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_focusOutEvent(VirtualQWizardPage* self, QFocusEvent* event);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QWizardPage::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_enterEvent(VirtualQWizardPage* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QWizardPage::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_leaveEvent(VirtualQWizardPage* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QWizardPage::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_paintEvent(VirtualQWizardPage* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QWizardPage::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_moveEvent(VirtualQWizardPage* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QWizardPage::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_resizeEvent(VirtualQWizardPage* self, QResizeEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QWizardPage::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_closeEvent(VirtualQWizardPage* self, QCloseEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QWizardPage::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_contextMenuEvent(VirtualQWizardPage* self, QContextMenuEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QWizardPage::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_tabletEvent(VirtualQWizardPage* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QWizardPage::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_actionEvent(VirtualQWizardPage* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QWizardPage::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_dragEnterEvent(VirtualQWizardPage* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QWizardPage::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_dragMoveEvent(VirtualQWizardPage* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QWizardPage::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_dragLeaveEvent(VirtualQWizardPage* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QWizardPage::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_dropEvent(VirtualQWizardPage* self, QDropEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QWizardPage::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_showEvent(VirtualQWizardPage* self, QShowEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QWizardPage::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_hideEvent(VirtualQWizardPage* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWizardPage::nativeEvent(eventType, message, result);
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

	friend bool QWizardPage_virtualbase_nativeEvent(VirtualQWizardPage* self, struct miqt_string eventType, void* message, long* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QWizardPage::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_changeEvent(VirtualQWizardPage* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QWizardPage::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWizardPage_virtualbase_metric(const VirtualQWizardPage* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QWizardPage::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QWizardPage_virtualbase_initPainter(const VirtualQWizardPage* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QWizardPage::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QWizardPage_virtualbase_redirected(const VirtualQWizardPage* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QWizardPage::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QWizardPage_virtualbase_sharedPainter(const VirtualQWizardPage* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QWizardPage::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_inputMethodEvent(VirtualQWizardPage* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QWizardPage::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QWizardPage_virtualbase_inputMethodQuery(const VirtualQWizardPage* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QWizardPage::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QWizardPage_virtualbase_focusNextPrevChild(VirtualQWizardPage* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWizardPage::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWizardPage_virtualbase_eventFilter(VirtualQWizardPage* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWizardPage::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_timerEvent(VirtualQWizardPage* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWizardPage::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_childEvent(VirtualQWizardPage* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWizardPage::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWizardPage_virtualbase_customEvent(VirtualQWizardPage* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWizardPage::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWizardPage_virtualbase_connectNotify(VirtualQWizardPage* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWizardPage::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWizardPage_virtualbase_disconnectNotify(VirtualQWizardPage* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QWizardPage_protectedbase_setField(VirtualQWizardPage* self, struct miqt_string name, QVariant* value);
	friend QVariant* QWizardPage_protectedbase_field(const VirtualQWizardPage* self, struct miqt_string name);
	friend void QWizardPage_protectedbase_registerField(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget);
	friend QWizard* QWizardPage_protectedbase_wizard(const VirtualQWizardPage* self);
	friend void QWizardPage_protectedbase_registerField3(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget, const char* property);
	friend void QWizardPage_protectedbase_registerField4(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget, const char* property, const char* changedSignal);
	friend void QWizardPage_protectedbase_updateMicroFocus(VirtualQWizardPage* self);
	friend void QWizardPage_protectedbase_create(VirtualQWizardPage* self);
	friend void QWizardPage_protectedbase_destroy(VirtualQWizardPage* self);
	friend bool QWizardPage_protectedbase_focusNextChild(VirtualQWizardPage* self);
	friend bool QWizardPage_protectedbase_focusPreviousChild(VirtualQWizardPage* self);
	friend QObject* QWizardPage_protectedbase_sender(const VirtualQWizardPage* self);
	friend int QWizardPage_protectedbase_senderSignalIndex(const VirtualQWizardPage* self);
	friend int QWizardPage_protectedbase_receivers(const VirtualQWizardPage* self, const char* signal);
	friend bool QWizardPage_protectedbase_isSignalConnected(const VirtualQWizardPage* self, QMetaMethod* signal);
};

VirtualQWizardPage* QWizardPage_new(const QWizardPage_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQWizardPage(vtbl, vdata, parent);
}

VirtualQWizardPage* QWizardPage_new2(const QWizardPage_VTable* vtbl, void* vdata) {
	return new VirtualQWizardPage(vtbl, vdata);
}

void QWizardPage_virtbase(QWizardPage* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QWizardPage_metaObject(const QWizardPage* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWizardPage_metacast(QWizardPage* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWizardPage_metacall(QWizardPage* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWizardPage_tr(const char* s) {
	QString _ret = QWizardPage::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWizardPage_trUtf8(const char* s) {
	QString _ret = QWizardPage::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWizardPage_setTitle(QWizardPage* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setTitle(title_QString);
}

struct miqt_string QWizardPage_title(const QWizardPage* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWizardPage_setSubTitle(QWizardPage* self, struct miqt_string subTitle) {
	QString subTitle_QString = QString::fromUtf8(subTitle.data, subTitle.len);
	self->setSubTitle(subTitle_QString);
}

struct miqt_string QWizardPage_subTitle(const QWizardPage* self) {
	QString _ret = self->subTitle();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWizardPage_setPixmap(QWizardPage* self, int which, QPixmap* pixmap) {
	self->setPixmap(static_cast<QWizard::WizardPixmap>(which), *pixmap);
}

QPixmap* QWizardPage_pixmap(const QWizardPage* self, int which) {
	return new QPixmap(self->pixmap(static_cast<QWizard::WizardPixmap>(which)));
}

void QWizardPage_setFinalPage(QWizardPage* self, bool finalPage) {
	self->setFinalPage(finalPage);
}

bool QWizardPage_isFinalPage(const QWizardPage* self) {
	return self->isFinalPage();
}

void QWizardPage_setCommitPage(QWizardPage* self, bool commitPage) {
	self->setCommitPage(commitPage);
}

bool QWizardPage_isCommitPage(const QWizardPage* self) {
	return self->isCommitPage();
}

void QWizardPage_setButtonText(QWizardPage* self, int which, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setButtonText(static_cast<QWizard::WizardButton>(which), text_QString);
}

struct miqt_string QWizardPage_buttonText(const QWizardPage* self, int which) {
	QString _ret = self->buttonText(static_cast<QWizard::WizardButton>(which));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWizardPage_initializePage(QWizardPage* self) {
	self->initializePage();
}

void QWizardPage_cleanupPage(QWizardPage* self) {
	self->cleanupPage();
}

bool QWizardPage_validatePage(QWizardPage* self) {
	return self->validatePage();
}

bool QWizardPage_isComplete(const QWizardPage* self) {
	return self->isComplete();
}

int QWizardPage_nextId(const QWizardPage* self) {
	return self->nextId();
}

void QWizardPage_completeChanged(QWizardPage* self) {
	self->completeChanged();
}

void QWizardPage_connect_completeChanged(VirtualQWizardPage* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWizardPage::connect(self, static_cast<void (QWizardPage::*)()>(&QWizardPage::completeChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QWizardPage_tr2(const char* s, const char* c) {
	QString _ret = QWizardPage::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWizardPage_tr3(const char* s, const char* c, int n) {
	QString _ret = QWizardPage::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWizardPage_trUtf82(const char* s, const char* c) {
	QString _ret = QWizardPage::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWizardPage_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWizardPage::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWizardPage_virtualbase_metaObject(const VirtualQWizardPage* self) {

	return (QMetaObject*) self->QWizardPage::metaObject();
}

void* QWizardPage_virtualbase_metacast(VirtualQWizardPage* self, const char* param1) {

	return self->QWizardPage::qt_metacast(param1);
}

int QWizardPage_virtualbase_metacall(VirtualQWizardPage* self, int param1, int param2, void** param3) {

	return self->QWizardPage::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QWizardPage_virtualbase_initializePage(VirtualQWizardPage* self) {

	self->QWizardPage::initializePage();
}

void QWizardPage_virtualbase_cleanupPage(VirtualQWizardPage* self) {

	self->QWizardPage::cleanupPage();
}

bool QWizardPage_virtualbase_validatePage(VirtualQWizardPage* self) {

	return self->QWizardPage::validatePage();
}

bool QWizardPage_virtualbase_isComplete(const VirtualQWizardPage* self) {

	return self->QWizardPage::isComplete();
}

int QWizardPage_virtualbase_nextId(const VirtualQWizardPage* self) {

	return self->QWizardPage::nextId();
}

int QWizardPage_virtualbase_devType(const VirtualQWizardPage* self) {

	return self->QWizardPage::devType();
}

void QWizardPage_virtualbase_setVisible(VirtualQWizardPage* self, bool visible) {

	self->QWizardPage::setVisible(visible);
}

QSize* QWizardPage_virtualbase_sizeHint(const VirtualQWizardPage* self) {

	return new QSize(self->QWizardPage::sizeHint());
}

QSize* QWizardPage_virtualbase_minimumSizeHint(const VirtualQWizardPage* self) {

	return new QSize(self->QWizardPage::minimumSizeHint());
}

int QWizardPage_virtualbase_heightForWidth(const VirtualQWizardPage* self, int param1) {

	return self->QWizardPage::heightForWidth(static_cast<int>(param1));
}

bool QWizardPage_virtualbase_hasHeightForWidth(const VirtualQWizardPage* self) {

	return self->QWizardPage::hasHeightForWidth();
}

QPaintEngine* QWizardPage_virtualbase_paintEngine(const VirtualQWizardPage* self) {

	return self->QWizardPage::paintEngine();
}

bool QWizardPage_virtualbase_event(VirtualQWizardPage* self, QEvent* event) {

	return self->QWizardPage::event(event);
}

void QWizardPage_virtualbase_mousePressEvent(VirtualQWizardPage* self, QMouseEvent* event) {

	self->QWizardPage::mousePressEvent(event);
}

void QWizardPage_virtualbase_mouseReleaseEvent(VirtualQWizardPage* self, QMouseEvent* event) {

	self->QWizardPage::mouseReleaseEvent(event);
}

void QWizardPage_virtualbase_mouseDoubleClickEvent(VirtualQWizardPage* self, QMouseEvent* event) {

	self->QWizardPage::mouseDoubleClickEvent(event);
}

void QWizardPage_virtualbase_mouseMoveEvent(VirtualQWizardPage* self, QMouseEvent* event) {

	self->QWizardPage::mouseMoveEvent(event);
}

void QWizardPage_virtualbase_wheelEvent(VirtualQWizardPage* self, QWheelEvent* event) {

	self->QWizardPage::wheelEvent(event);
}

void QWizardPage_virtualbase_keyPressEvent(VirtualQWizardPage* self, QKeyEvent* event) {

	self->QWizardPage::keyPressEvent(event);
}

void QWizardPage_virtualbase_keyReleaseEvent(VirtualQWizardPage* self, QKeyEvent* event) {

	self->QWizardPage::keyReleaseEvent(event);
}

void QWizardPage_virtualbase_focusInEvent(VirtualQWizardPage* self, QFocusEvent* event) {

	self->QWizardPage::focusInEvent(event);
}

void QWizardPage_virtualbase_focusOutEvent(VirtualQWizardPage* self, QFocusEvent* event) {

	self->QWizardPage::focusOutEvent(event);
}

void QWizardPage_virtualbase_enterEvent(VirtualQWizardPage* self, QEvent* event) {

	self->QWizardPage::enterEvent(event);
}

void QWizardPage_virtualbase_leaveEvent(VirtualQWizardPage* self, QEvent* event) {

	self->QWizardPage::leaveEvent(event);
}

void QWizardPage_virtualbase_paintEvent(VirtualQWizardPage* self, QPaintEvent* event) {

	self->QWizardPage::paintEvent(event);
}

void QWizardPage_virtualbase_moveEvent(VirtualQWizardPage* self, QMoveEvent* event) {

	self->QWizardPage::moveEvent(event);
}

void QWizardPage_virtualbase_resizeEvent(VirtualQWizardPage* self, QResizeEvent* event) {

	self->QWizardPage::resizeEvent(event);
}

void QWizardPage_virtualbase_closeEvent(VirtualQWizardPage* self, QCloseEvent* event) {

	self->QWizardPage::closeEvent(event);
}

void QWizardPage_virtualbase_contextMenuEvent(VirtualQWizardPage* self, QContextMenuEvent* event) {

	self->QWizardPage::contextMenuEvent(event);
}

void QWizardPage_virtualbase_tabletEvent(VirtualQWizardPage* self, QTabletEvent* event) {

	self->QWizardPage::tabletEvent(event);
}

void QWizardPage_virtualbase_actionEvent(VirtualQWizardPage* self, QActionEvent* event) {

	self->QWizardPage::actionEvent(event);
}

void QWizardPage_virtualbase_dragEnterEvent(VirtualQWizardPage* self, QDragEnterEvent* event) {

	self->QWizardPage::dragEnterEvent(event);
}

void QWizardPage_virtualbase_dragMoveEvent(VirtualQWizardPage* self, QDragMoveEvent* event) {

	self->QWizardPage::dragMoveEvent(event);
}

void QWizardPage_virtualbase_dragLeaveEvent(VirtualQWizardPage* self, QDragLeaveEvent* event) {

	self->QWizardPage::dragLeaveEvent(event);
}

void QWizardPage_virtualbase_dropEvent(VirtualQWizardPage* self, QDropEvent* event) {

	self->QWizardPage::dropEvent(event);
}

void QWizardPage_virtualbase_showEvent(VirtualQWizardPage* self, QShowEvent* event) {

	self->QWizardPage::showEvent(event);
}

void QWizardPage_virtualbase_hideEvent(VirtualQWizardPage* self, QHideEvent* event) {

	self->QWizardPage::hideEvent(event);
}

bool QWizardPage_virtualbase_nativeEvent(VirtualQWizardPage* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QWizardPage::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

void QWizardPage_virtualbase_changeEvent(VirtualQWizardPage* self, QEvent* param1) {

	self->QWizardPage::changeEvent(param1);
}

int QWizardPage_virtualbase_metric(const VirtualQWizardPage* self, int param1) {

	return self->QWizardPage::metric(static_cast<VirtualQWizardPage::PaintDeviceMetric>(param1));
}

void QWizardPage_virtualbase_initPainter(const VirtualQWizardPage* self, QPainter* painter) {

	self->QWizardPage::initPainter(painter);
}

QPaintDevice* QWizardPage_virtualbase_redirected(const VirtualQWizardPage* self, QPoint* offset) {

	return self->QWizardPage::redirected(offset);
}

QPainter* QWizardPage_virtualbase_sharedPainter(const VirtualQWizardPage* self) {

	return self->QWizardPage::sharedPainter();
}

void QWizardPage_virtualbase_inputMethodEvent(VirtualQWizardPage* self, QInputMethodEvent* param1) {

	self->QWizardPage::inputMethodEvent(param1);
}

QVariant* QWizardPage_virtualbase_inputMethodQuery(const VirtualQWizardPage* self, int param1) {

	return new QVariant(self->QWizardPage::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QWizardPage_virtualbase_focusNextPrevChild(VirtualQWizardPage* self, bool next) {

	return self->QWizardPage::focusNextPrevChild(next);
}

bool QWizardPage_virtualbase_eventFilter(VirtualQWizardPage* self, QObject* watched, QEvent* event) {

	return self->QWizardPage::eventFilter(watched, event);
}

void QWizardPage_virtualbase_timerEvent(VirtualQWizardPage* self, QTimerEvent* event) {

	self->QWizardPage::timerEvent(event);
}

void QWizardPage_virtualbase_childEvent(VirtualQWizardPage* self, QChildEvent* event) {

	self->QWizardPage::childEvent(event);
}

void QWizardPage_virtualbase_customEvent(VirtualQWizardPage* self, QEvent* event) {

	self->QWizardPage::customEvent(event);
}

void QWizardPage_virtualbase_connectNotify(VirtualQWizardPage* self, QMetaMethod* signal) {

	self->QWizardPage::connectNotify(*signal);
}

void QWizardPage_virtualbase_disconnectNotify(VirtualQWizardPage* self, QMetaMethod* signal) {

	self->QWizardPage::disconnectNotify(*signal);
}

const QMetaObject* QWizardPage_staticMetaObject() { return &QWizardPage::staticMetaObject; }

const QWizardPage_VTable* QWizardPage_vtbl(const VirtualQWizardPage* self) { return self->vtbl; }
void* QWizardPage_vdata(const VirtualQWizardPage* self) { return self->vdata; }
void QWizardPage_setVdata(VirtualQWizardPage* self, void* vdata) { self->vdata = vdata; }

void QWizardPage_protectedbase_setField(VirtualQWizardPage* self, struct miqt_string name, QVariant* value) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setField(name_QString, *value);
}

QVariant* QWizardPage_protectedbase_field(const VirtualQWizardPage* self, struct miqt_string name) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	return new QVariant(self->field(name_QString));
}

void QWizardPage_protectedbase_registerField(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	self->registerField(name_QString, widget);
}

QWizard* QWizardPage_protectedbase_wizard(const VirtualQWizardPage* self) {
	return self->wizard();
}

void QWizardPage_protectedbase_registerField3(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget, const char* property) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	self->registerField(name_QString, widget, property);
}

void QWizardPage_protectedbase_registerField4(VirtualQWizardPage* self, struct miqt_string name, QWidget* widget, const char* property, const char* changedSignal) {
		QString name_QString = QString::fromUtf8(name.data, name.len);
	self->registerField(name_QString, widget, property, changedSignal);
}

void QWizardPage_protectedbase_updateMicroFocus(VirtualQWizardPage* self) {
	self->updateMicroFocus();
}

void QWizardPage_protectedbase_create(VirtualQWizardPage* self) {
	self->create();
}

void QWizardPage_protectedbase_destroy(VirtualQWizardPage* self) {
	self->destroy();
}

bool QWizardPage_protectedbase_focusNextChild(VirtualQWizardPage* self) {
	return self->focusNextChild();
}

bool QWizardPage_protectedbase_focusPreviousChild(VirtualQWizardPage* self) {
	return self->focusPreviousChild();
}

QObject* QWizardPage_protectedbase_sender(const VirtualQWizardPage* self) {
	return self->sender();
}

int QWizardPage_protectedbase_senderSignalIndex(const VirtualQWizardPage* self) {
	return self->senderSignalIndex();
}

int QWizardPage_protectedbase_receivers(const VirtualQWizardPage* self, const char* signal) {
	return self->receivers(signal);
}

bool QWizardPage_protectedbase_isSignalConnected(const VirtualQWizardPage* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWizardPage_delete(QWizardPage* self) {
	delete self;
}

