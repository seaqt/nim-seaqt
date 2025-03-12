#include <QAction>
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
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMenu>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPageLayout>
#include <QPageRanges>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QPrinter>
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
#include <QWebEngineContextMenuRequest>
#include <QWebEngineHistory>
#include <QWebEngineHttpRequest>
#include <QWebEnginePage>
#include <QWebEngineProfile>
#include <QWebEngineSettings>
#include <QWebEngineView>
#include <QWheelEvent>
#include <QWidget>
#include <qwebengineview.h>
#include "gen_qwebengineview.h"
class VirtualQWebEngineView final : public QWebEngineView {
	const QWebEngineView_VTable* vtbl;
	void* vdata;
public:
	friend const QWebEngineView_VTable* QWebEngineView_vtbl(const VirtualQWebEngineView* self);
	friend void* QWebEngineView_vdata(const VirtualQWebEngineView* self);
	friend void QWebEngineView_setVdata(VirtualQWebEngineView* self, void* vdata);

	VirtualQWebEngineView(const QWebEngineView_VTable* vtbl, void* vdata, QWidget* parent): QWebEngineView(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebEngineView(const QWebEngineView_VTable* vtbl, void* vdata): QWebEngineView(), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebEngineView(const QWebEngineView_VTable* vtbl, void* vdata, QWebEngineProfile* profile): QWebEngineView(profile), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebEngineView(const QWebEngineView_VTable* vtbl, void* vdata, QWebEnginePage* page): QWebEngineView(page), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebEngineView(const QWebEngineView_VTable* vtbl, void* vdata, QWebEngineProfile* profile, QWidget* parent): QWebEngineView(profile, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQWebEngineView(const QWebEngineView_VTable* vtbl, void* vdata, QWebEnginePage* page, QWidget* parent): QWebEngineView(page, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQWebEngineView() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebEngineView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QWebEngineView_virtualbase_metaObject(const VirtualQWebEngineView* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebEngineView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QWebEngineView_virtualbase_metacast(VirtualQWebEngineView* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebEngineView::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineView_virtualbase_metacall(VirtualQWebEngineView* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWebEngineView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWebEngineView_virtualbase_sizeHint(const VirtualQWebEngineView* self);

	virtual QWebEngineView* createWindow(QWebEnginePage::WebWindowType type) override {
		if (vtbl->createWindow == 0) {
			return QWebEngineView::createWindow(type);
		}

		QWebEnginePage::WebWindowType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);

		QWebEngineView* callback_return_value = vtbl->createWindow(this, sigval1);

		return callback_return_value;
	}

	friend QWebEngineView* QWebEngineView_virtualbase_createWindow(VirtualQWebEngineView* self, int type);

	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QWebEngineView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_contextMenuEvent(VirtualQWebEngineView* self, QContextMenuEvent* param1);

	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWebEngineView::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QWebEngineView_virtualbase_event(VirtualQWebEngineView* self, QEvent* param1);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QWebEngineView::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_showEvent(VirtualQWebEngineView* self, QShowEvent* param1);

	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QWebEngineView::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_hideEvent(VirtualQWebEngineView* self, QHideEvent* param1);

	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QWebEngineView::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_closeEvent(VirtualQWebEngineView* self, QCloseEvent* param1);

	virtual void dragEnterEvent(QDragEnterEvent* e) override {
		if (vtbl->dragEnterEvent == 0) {
			QWebEngineView::dragEnterEvent(e);
			return;
		}

		QDragEnterEvent* sigval1 = e;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_dragEnterEvent(VirtualQWebEngineView* self, QDragEnterEvent* e);

	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QWebEngineView::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_dragLeaveEvent(VirtualQWebEngineView* self, QDragLeaveEvent* e);

	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QWebEngineView::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_dragMoveEvent(VirtualQWebEngineView* self, QDragMoveEvent* e);

	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QWebEngineView::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_dropEvent(VirtualQWebEngineView* self, QDropEvent* e);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QWebEngineView::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineView_virtualbase_devType(const VirtualQWebEngineView* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QWebEngineView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_setVisible(VirtualQWebEngineView* self, bool visible);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QWebEngineView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QWebEngineView_virtualbase_minimumSizeHint(const VirtualQWebEngineView* self);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWebEngineView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineView_virtualbase_heightForWidth(const VirtualQWebEngineView* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWebEngineView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QWebEngineView_virtualbase_hasHeightForWidth(const VirtualQWebEngineView* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QWebEngineView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QWebEngineView_virtualbase_paintEngine(const VirtualQWebEngineView* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QWebEngineView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_mousePressEvent(VirtualQWebEngineView* self, QMouseEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWebEngineView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_mouseReleaseEvent(VirtualQWebEngineView* self, QMouseEvent* event);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWebEngineView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_mouseDoubleClickEvent(VirtualQWebEngineView* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWebEngineView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_mouseMoveEvent(VirtualQWebEngineView* self, QMouseEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QWebEngineView::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_wheelEvent(VirtualQWebEngineView* self, QWheelEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QWebEngineView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_keyPressEvent(VirtualQWebEngineView* self, QKeyEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWebEngineView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_keyReleaseEvent(VirtualQWebEngineView* self, QKeyEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QWebEngineView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_focusInEvent(VirtualQWebEngineView* self, QFocusEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QWebEngineView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_focusOutEvent(VirtualQWebEngineView* self, QFocusEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QWebEngineView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_enterEvent(VirtualQWebEngineView* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QWebEngineView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_leaveEvent(VirtualQWebEngineView* self, QEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QWebEngineView::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_paintEvent(VirtualQWebEngineView* self, QPaintEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QWebEngineView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_moveEvent(VirtualQWebEngineView* self, QMoveEvent* event);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QWebEngineView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_resizeEvent(VirtualQWebEngineView* self, QResizeEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QWebEngineView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_tabletEvent(VirtualQWebEngineView* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QWebEngineView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_actionEvent(VirtualQWebEngineView* self, QActionEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWebEngineView::nativeEvent(eventType, message, result);
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

	friend bool QWebEngineView_virtualbase_nativeEvent(VirtualQWebEngineView* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QWebEngineView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_changeEvent(VirtualQWebEngineView* self, QEvent* param1);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QWebEngineView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QWebEngineView_virtualbase_metric(const VirtualQWebEngineView* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QWebEngineView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_initPainter(const VirtualQWebEngineView* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QWebEngineView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QWebEngineView_virtualbase_redirected(const VirtualQWebEngineView* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QWebEngineView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QWebEngineView_virtualbase_sharedPainter(const VirtualQWebEngineView* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QWebEngineView::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_inputMethodEvent(VirtualQWebEngineView* self, QInputMethodEvent* param1);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QWebEngineView::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QWebEngineView_virtualbase_inputMethodQuery(const VirtualQWebEngineView* self, int param1);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QWebEngineView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QWebEngineView_virtualbase_focusNextPrevChild(VirtualQWebEngineView* self, bool next);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebEngineView::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QWebEngineView_virtualbase_eventFilter(VirtualQWebEngineView* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebEngineView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_timerEvent(VirtualQWebEngineView* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebEngineView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_childEvent(VirtualQWebEngineView* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebEngineView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_customEvent(VirtualQWebEngineView* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebEngineView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_connectNotify(VirtualQWebEngineView* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebEngineView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QWebEngineView_virtualbase_disconnectNotify(VirtualQWebEngineView* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QWebEngineView_protectedbase_updateMicroFocus(VirtualQWebEngineView* self);
	friend void QWebEngineView_protectedbase_create(VirtualQWebEngineView* self);
	friend void QWebEngineView_protectedbase_destroy(VirtualQWebEngineView* self);
	friend bool QWebEngineView_protectedbase_focusNextChild(VirtualQWebEngineView* self);
	friend bool QWebEngineView_protectedbase_focusPreviousChild(VirtualQWebEngineView* self);
	friend QObject* QWebEngineView_protectedbase_sender(const VirtualQWebEngineView* self);
	friend int QWebEngineView_protectedbase_senderSignalIndex(const VirtualQWebEngineView* self);
	friend int QWebEngineView_protectedbase_receivers(const VirtualQWebEngineView* self, const char* signal);
	friend bool QWebEngineView_protectedbase_isSignalConnected(const VirtualQWebEngineView* self, QMetaMethod* signal);
};

VirtualQWebEngineView* QWebEngineView_new(const QWebEngineView_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQWebEngineView(vtbl, vdata, parent);
}

VirtualQWebEngineView* QWebEngineView_new2(const QWebEngineView_VTable* vtbl, void* vdata) {
	return new VirtualQWebEngineView(vtbl, vdata);
}

VirtualQWebEngineView* QWebEngineView_new3(const QWebEngineView_VTable* vtbl, void* vdata, QWebEngineProfile* profile) {
	return new VirtualQWebEngineView(vtbl, vdata, profile);
}

VirtualQWebEngineView* QWebEngineView_new4(const QWebEngineView_VTable* vtbl, void* vdata, QWebEnginePage* page) {
	return new VirtualQWebEngineView(vtbl, vdata, page);
}

VirtualQWebEngineView* QWebEngineView_new5(const QWebEngineView_VTable* vtbl, void* vdata, QWebEngineProfile* profile, QWidget* parent) {
	return new VirtualQWebEngineView(vtbl, vdata, profile, parent);
}

VirtualQWebEngineView* QWebEngineView_new6(const QWebEngineView_VTable* vtbl, void* vdata, QWebEnginePage* page, QWidget* parent) {
	return new VirtualQWebEngineView(vtbl, vdata, page, parent);
}

void QWebEngineView_virtbase(QWebEngineView* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QWebEngineView_metaObject(const QWebEngineView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineView_metacast(QWebEngineView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineView_metacall(QWebEngineView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineView_tr(const char* s) {
	QString _ret = QWebEngineView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebEngineView* QWebEngineView_forPage(QWebEnginePage* page) {
	return QWebEngineView::forPage(page);
}

QWebEnginePage* QWebEngineView_page(const QWebEngineView* self) {
	return self->page();
}

void QWebEngineView_setPage(QWebEngineView* self, QWebEnginePage* page) {
	self->setPage(page);
}

void QWebEngineView_load(QWebEngineView* self, QUrl* url) {
	self->load(*url);
}

void QWebEngineView_loadWithRequest(QWebEngineView* self, QWebEngineHttpRequest* request) {
	self->load(*request);
}

void QWebEngineView_setHtml(QWebEngineView* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

void QWebEngineView_setContent(QWebEngineView* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->setContent(data_QByteArray);
}

QWebEngineHistory* QWebEngineView_history(const QWebEngineView* self) {
	return self->history();
}

struct miqt_string QWebEngineView_title(const QWebEngineView* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineView_setUrl(QWebEngineView* self, QUrl* url) {
	self->setUrl(*url);
}

QUrl* QWebEngineView_url(const QWebEngineView* self) {
	return new QUrl(self->url());
}

QUrl* QWebEngineView_iconUrl(const QWebEngineView* self) {
	return new QUrl(self->iconUrl());
}

QIcon* QWebEngineView_icon(const QWebEngineView* self) {
	return new QIcon(self->icon());
}

bool QWebEngineView_hasSelection(const QWebEngineView* self) {
	return self->hasSelection();
}

struct miqt_string QWebEngineView_selectedText(const QWebEngineView* self) {
	QString _ret = self->selectedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAction* QWebEngineView_pageAction(const QWebEngineView* self, int action) {
	return self->pageAction(static_cast<QWebEnginePage::WebAction>(action));
}

void QWebEngineView_triggerPageAction(QWebEngineView* self, int action) {
	self->triggerPageAction(static_cast<QWebEnginePage::WebAction>(action));
}

double QWebEngineView_zoomFactor(const QWebEngineView* self) {
	qreal _ret = self->zoomFactor();
	return static_cast<double>(_ret);
}

void QWebEngineView_setZoomFactor(QWebEngineView* self, double factor) {
	self->setZoomFactor(static_cast<qreal>(factor));
}

QSize* QWebEngineView_sizeHint(const QWebEngineView* self) {
	return new QSize(self->sizeHint());
}

QWebEngineSettings* QWebEngineView_settings(const QWebEngineView* self) {
	return self->settings();
}

QMenu* QWebEngineView_createStandardContextMenu(QWebEngineView* self) {
	return self->createStandardContextMenu();
}

QWebEngineContextMenuRequest* QWebEngineView_lastContextMenuRequest(const QWebEngineView* self) {
	return self->lastContextMenuRequest();
}

void QWebEngineView_printToPdf(QWebEngineView* self, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->printToPdf(filePath_QString);
}

void QWebEngineView_print(QWebEngineView* self, QPrinter* printer) {
	self->print(printer);
}

void QWebEngineView_stop(QWebEngineView* self) {
	self->stop();
}

void QWebEngineView_back(QWebEngineView* self) {
	self->back();
}

void QWebEngineView_forward(QWebEngineView* self) {
	self->forward();
}

void QWebEngineView_reload(QWebEngineView* self) {
	self->reload();
}

void QWebEngineView_loadStarted(QWebEngineView* self) {
	self->loadStarted();
}

void QWebEngineView_connect_loadStarted(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)()>(&QWebEngineView::loadStarted), self, local_caller{slot, callback, release});
}

void QWebEngineView_loadProgress(QWebEngineView* self, int progress) {
	self->loadProgress(static_cast<int>(progress));
}

void QWebEngineView_connect_loadProgress(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int progress) {
			int sigval1 = progress;
			callback(slot, sigval1);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(int)>(&QWebEngineView::loadProgress), self, local_caller{slot, callback, release});
}

void QWebEngineView_loadFinished(QWebEngineView* self, bool param1) {
	self->loadFinished(param1);
}

void QWebEngineView_connect_loadFinished(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(bool)>(&QWebEngineView::loadFinished), self, local_caller{slot, callback, release});
}

void QWebEngineView_titleChanged(QWebEngineView* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->titleChanged(title_QString);
}

void QWebEngineView_connect_titleChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& title) {
			const QString title_ret = title;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray title_b = title_ret.toUtf8();
			struct miqt_string title_ms;
			title_ms.len = title_b.length();
			title_ms.data = static_cast<char*>(malloc(title_ms.len));
			memcpy(title_ms.data, title_b.data(), title_ms.len);
			struct miqt_string sigval1 = title_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QString&)>(&QWebEngineView::titleChanged), self, local_caller{slot, callback, release});
}

void QWebEngineView_selectionChanged(QWebEngineView* self) {
	self->selectionChanged();
}

void QWebEngineView_connect_selectionChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)()>(&QWebEngineView::selectionChanged), self, local_caller{slot, callback, release});
}

void QWebEngineView_urlChanged(QWebEngineView* self, QUrl* param1) {
	self->urlChanged(*param1);
}

void QWebEngineView_connect_urlChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QUrl&)>(&QWebEngineView::urlChanged), self, local_caller{slot, callback, release});
}

void QWebEngineView_iconUrlChanged(QWebEngineView* self, QUrl* param1) {
	self->iconUrlChanged(*param1);
}

void QWebEngineView_connect_iconUrlChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QUrl*);
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QUrl&)>(&QWebEngineView::iconUrlChanged), self, local_caller{slot, callback, release});
}

void QWebEngineView_iconChanged(QWebEngineView* self, QIcon* param1) {
	self->iconChanged(*param1);
}

void QWebEngineView_connect_iconChanged(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, QIcon*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QIcon*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QIcon*);
		void operator()(const QIcon& param1) {
			const QIcon& param1_ret = param1;
			// Cast returned reference into pointer
			QIcon* sigval1 = const_cast<QIcon*>(&param1_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QIcon&)>(&QWebEngineView::iconChanged), self, local_caller{slot, callback, release});
}

void QWebEngineView_renderProcessTerminated(QWebEngineView* self, int terminationStatus, int exitCode) {
	self->renderProcessTerminated(static_cast<QWebEnginePage::RenderProcessTerminationStatus>(terminationStatus), static_cast<int>(exitCode));
}

void QWebEngineView_connect_renderProcessTerminated(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int, int);
		void operator()(QWebEnginePage::RenderProcessTerminationStatus terminationStatus, int exitCode) {
			QWebEnginePage::RenderProcessTerminationStatus terminationStatus_ret = terminationStatus;
			int sigval1 = static_cast<int>(terminationStatus_ret);
			int sigval2 = exitCode;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(QWebEnginePage::RenderProcessTerminationStatus, int)>(&QWebEngineView::renderProcessTerminated), self, local_caller{slot, callback, release});
}

void QWebEngineView_pdfPrintingFinished(QWebEngineView* self, struct miqt_string filePath, bool success) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->pdfPrintingFinished(filePath_QString, success);
}

void QWebEngineView_connect_pdfPrintingFinished(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string, bool);
		void operator()(const QString& filePath, bool success) {
			const QString filePath_ret = filePath;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray filePath_b = filePath_ret.toUtf8();
			struct miqt_string filePath_ms;
			filePath_ms.len = filePath_b.length();
			filePath_ms.data = static_cast<char*>(malloc(filePath_ms.len));
			memcpy(filePath_ms.data, filePath_b.data(), filePath_ms.len);
			struct miqt_string sigval1 = filePath_ms;
			bool sigval2 = success;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QString&, bool)>(&QWebEngineView::pdfPrintingFinished), self, local_caller{slot, callback, release});
}

void QWebEngineView_printRequested(QWebEngineView* self) {
	self->printRequested();
}

void QWebEngineView_connect_printRequested(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)()>(&QWebEngineView::printRequested), self, local_caller{slot, callback, release});
}

void QWebEngineView_printFinished(QWebEngineView* self, bool success) {
	self->printFinished(success);
}

void QWebEngineView_connect_printFinished(VirtualQWebEngineView* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool success) {
			bool sigval1 = success;
			callback(slot, sigval1);
		}
	};
	VirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(bool)>(&QWebEngineView::printFinished), self, local_caller{slot, callback, release});
}

struct miqt_string QWebEngineView_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineView_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineView_setHtml2(QWebEngineView* self, struct miqt_string html, QUrl* baseUrl) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString, *baseUrl);
}

void QWebEngineView_setContent2(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString);
}

void QWebEngineView_setContent3(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString, *baseUrl);
}

void QWebEngineView_triggerPageAction2(QWebEngineView* self, int action, bool checked) {
	self->triggerPageAction(static_cast<QWebEnginePage::WebAction>(action), checked);
}

void QWebEngineView_printToPdf2(QWebEngineView* self, struct miqt_string filePath, QPageLayout* layout) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->printToPdf(filePath_QString, *layout);
}

void QWebEngineView_printToPdf3(QWebEngineView* self, struct miqt_string filePath, QPageLayout* layout, QPageRanges* ranges) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->printToPdf(filePath_QString, *layout, *ranges);
}

QMetaObject* QWebEngineView_virtualbase_metaObject(const VirtualQWebEngineView* self) {

	return (QMetaObject*) self->QWebEngineView::metaObject();
}

void* QWebEngineView_virtualbase_metacast(VirtualQWebEngineView* self, const char* param1) {

	return self->QWebEngineView::qt_metacast(param1);
}

int QWebEngineView_virtualbase_metacall(VirtualQWebEngineView* self, int param1, int param2, void** param3) {

	return self->QWebEngineView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QWebEngineView_virtualbase_sizeHint(const VirtualQWebEngineView* self) {

	return new QSize(self->QWebEngineView::sizeHint());
}

QWebEngineView* QWebEngineView_virtualbase_createWindow(VirtualQWebEngineView* self, int type) {

	return self->QWebEngineView::createWindow(static_cast<QWebEnginePage::WebWindowType>(type));
}

void QWebEngineView_virtualbase_contextMenuEvent(VirtualQWebEngineView* self, QContextMenuEvent* param1) {

	self->QWebEngineView::contextMenuEvent(param1);
}

bool QWebEngineView_virtualbase_event(VirtualQWebEngineView* self, QEvent* param1) {

	return self->QWebEngineView::event(param1);
}

void QWebEngineView_virtualbase_showEvent(VirtualQWebEngineView* self, QShowEvent* param1) {

	self->QWebEngineView::showEvent(param1);
}

void QWebEngineView_virtualbase_hideEvent(VirtualQWebEngineView* self, QHideEvent* param1) {

	self->QWebEngineView::hideEvent(param1);
}

void QWebEngineView_virtualbase_closeEvent(VirtualQWebEngineView* self, QCloseEvent* param1) {

	self->QWebEngineView::closeEvent(param1);
}

void QWebEngineView_virtualbase_dragEnterEvent(VirtualQWebEngineView* self, QDragEnterEvent* e) {

	self->QWebEngineView::dragEnterEvent(e);
}

void QWebEngineView_virtualbase_dragLeaveEvent(VirtualQWebEngineView* self, QDragLeaveEvent* e) {

	self->QWebEngineView::dragLeaveEvent(e);
}

void QWebEngineView_virtualbase_dragMoveEvent(VirtualQWebEngineView* self, QDragMoveEvent* e) {

	self->QWebEngineView::dragMoveEvent(e);
}

void QWebEngineView_virtualbase_dropEvent(VirtualQWebEngineView* self, QDropEvent* e) {

	self->QWebEngineView::dropEvent(e);
}

int QWebEngineView_virtualbase_devType(const VirtualQWebEngineView* self) {

	return self->QWebEngineView::devType();
}

void QWebEngineView_virtualbase_setVisible(VirtualQWebEngineView* self, bool visible) {

	self->QWebEngineView::setVisible(visible);
}

QSize* QWebEngineView_virtualbase_minimumSizeHint(const VirtualQWebEngineView* self) {

	return new QSize(self->QWebEngineView::minimumSizeHint());
}

int QWebEngineView_virtualbase_heightForWidth(const VirtualQWebEngineView* self, int param1) {

	return self->QWebEngineView::heightForWidth(static_cast<int>(param1));
}

bool QWebEngineView_virtualbase_hasHeightForWidth(const VirtualQWebEngineView* self) {

	return self->QWebEngineView::hasHeightForWidth();
}

QPaintEngine* QWebEngineView_virtualbase_paintEngine(const VirtualQWebEngineView* self) {

	return self->QWebEngineView::paintEngine();
}

void QWebEngineView_virtualbase_mousePressEvent(VirtualQWebEngineView* self, QMouseEvent* event) {

	self->QWebEngineView::mousePressEvent(event);
}

void QWebEngineView_virtualbase_mouseReleaseEvent(VirtualQWebEngineView* self, QMouseEvent* event) {

	self->QWebEngineView::mouseReleaseEvent(event);
}

void QWebEngineView_virtualbase_mouseDoubleClickEvent(VirtualQWebEngineView* self, QMouseEvent* event) {

	self->QWebEngineView::mouseDoubleClickEvent(event);
}

void QWebEngineView_virtualbase_mouseMoveEvent(VirtualQWebEngineView* self, QMouseEvent* event) {

	self->QWebEngineView::mouseMoveEvent(event);
}

void QWebEngineView_virtualbase_wheelEvent(VirtualQWebEngineView* self, QWheelEvent* event) {

	self->QWebEngineView::wheelEvent(event);
}

void QWebEngineView_virtualbase_keyPressEvent(VirtualQWebEngineView* self, QKeyEvent* event) {

	self->QWebEngineView::keyPressEvent(event);
}

void QWebEngineView_virtualbase_keyReleaseEvent(VirtualQWebEngineView* self, QKeyEvent* event) {

	self->QWebEngineView::keyReleaseEvent(event);
}

void QWebEngineView_virtualbase_focusInEvent(VirtualQWebEngineView* self, QFocusEvent* event) {

	self->QWebEngineView::focusInEvent(event);
}

void QWebEngineView_virtualbase_focusOutEvent(VirtualQWebEngineView* self, QFocusEvent* event) {

	self->QWebEngineView::focusOutEvent(event);
}

void QWebEngineView_virtualbase_enterEvent(VirtualQWebEngineView* self, QEnterEvent* event) {

	self->QWebEngineView::enterEvent(event);
}

void QWebEngineView_virtualbase_leaveEvent(VirtualQWebEngineView* self, QEvent* event) {

	self->QWebEngineView::leaveEvent(event);
}

void QWebEngineView_virtualbase_paintEvent(VirtualQWebEngineView* self, QPaintEvent* event) {

	self->QWebEngineView::paintEvent(event);
}

void QWebEngineView_virtualbase_moveEvent(VirtualQWebEngineView* self, QMoveEvent* event) {

	self->QWebEngineView::moveEvent(event);
}

void QWebEngineView_virtualbase_resizeEvent(VirtualQWebEngineView* self, QResizeEvent* event) {

	self->QWebEngineView::resizeEvent(event);
}

void QWebEngineView_virtualbase_tabletEvent(VirtualQWebEngineView* self, QTabletEvent* event) {

	self->QWebEngineView::tabletEvent(event);
}

void QWebEngineView_virtualbase_actionEvent(VirtualQWebEngineView* self, QActionEvent* event) {

	self->QWebEngineView::actionEvent(event);
}

bool QWebEngineView_virtualbase_nativeEvent(VirtualQWebEngineView* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QWebEngineView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

void QWebEngineView_virtualbase_changeEvent(VirtualQWebEngineView* self, QEvent* param1) {

	self->QWebEngineView::changeEvent(param1);
}

int QWebEngineView_virtualbase_metric(const VirtualQWebEngineView* self, int param1) {

	return self->QWebEngineView::metric(static_cast<VirtualQWebEngineView::PaintDeviceMetric>(param1));
}

void QWebEngineView_virtualbase_initPainter(const VirtualQWebEngineView* self, QPainter* painter) {

	self->QWebEngineView::initPainter(painter);
}

QPaintDevice* QWebEngineView_virtualbase_redirected(const VirtualQWebEngineView* self, QPoint* offset) {

	return self->QWebEngineView::redirected(offset);
}

QPainter* QWebEngineView_virtualbase_sharedPainter(const VirtualQWebEngineView* self) {

	return self->QWebEngineView::sharedPainter();
}

void QWebEngineView_virtualbase_inputMethodEvent(VirtualQWebEngineView* self, QInputMethodEvent* param1) {

	self->QWebEngineView::inputMethodEvent(param1);
}

QVariant* QWebEngineView_virtualbase_inputMethodQuery(const VirtualQWebEngineView* self, int param1) {

	return new QVariant(self->QWebEngineView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

bool QWebEngineView_virtualbase_focusNextPrevChild(VirtualQWebEngineView* self, bool next) {

	return self->QWebEngineView::focusNextPrevChild(next);
}

bool QWebEngineView_virtualbase_eventFilter(VirtualQWebEngineView* self, QObject* watched, QEvent* event) {

	return self->QWebEngineView::eventFilter(watched, event);
}

void QWebEngineView_virtualbase_timerEvent(VirtualQWebEngineView* self, QTimerEvent* event) {

	self->QWebEngineView::timerEvent(event);
}

void QWebEngineView_virtualbase_childEvent(VirtualQWebEngineView* self, QChildEvent* event) {

	self->QWebEngineView::childEvent(event);
}

void QWebEngineView_virtualbase_customEvent(VirtualQWebEngineView* self, QEvent* event) {

	self->QWebEngineView::customEvent(event);
}

void QWebEngineView_virtualbase_connectNotify(VirtualQWebEngineView* self, QMetaMethod* signal) {

	self->QWebEngineView::connectNotify(*signal);
}

void QWebEngineView_virtualbase_disconnectNotify(VirtualQWebEngineView* self, QMetaMethod* signal) {

	self->QWebEngineView::disconnectNotify(*signal);
}

const QMetaObject* QWebEngineView_staticMetaObject() { return &QWebEngineView::staticMetaObject; }

const QWebEngineView_VTable* QWebEngineView_vtbl(const VirtualQWebEngineView* self) { return self->vtbl; }
void* QWebEngineView_vdata(const VirtualQWebEngineView* self) { return self->vdata; }
void QWebEngineView_setVdata(VirtualQWebEngineView* self, void* vdata) { self->vdata = vdata; }

void QWebEngineView_protectedbase_updateMicroFocus(VirtualQWebEngineView* self) {
	self->updateMicroFocus();
}

void QWebEngineView_protectedbase_create(VirtualQWebEngineView* self) {
	self->create();
}

void QWebEngineView_protectedbase_destroy(VirtualQWebEngineView* self) {
	self->destroy();
}

bool QWebEngineView_protectedbase_focusNextChild(VirtualQWebEngineView* self) {
	return self->focusNextChild();
}

bool QWebEngineView_protectedbase_focusPreviousChild(VirtualQWebEngineView* self) {
	return self->focusPreviousChild();
}

QObject* QWebEngineView_protectedbase_sender(const VirtualQWebEngineView* self) {
	return self->sender();
}

int QWebEngineView_protectedbase_senderSignalIndex(const VirtualQWebEngineView* self) {
	return self->senderSignalIndex();
}

int QWebEngineView_protectedbase_receivers(const VirtualQWebEngineView* self, const char* signal) {
	return self->receivers(signal);
}

bool QWebEngineView_protectedbase_isSignalConnected(const VirtualQWebEngineView* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QWebEngineView_delete(QWebEngineView* self) {
	delete self;
}

