#include <QAbstractScrollArea>
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
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
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
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTextBrowser>
#include <QTextCursor>
#include <QTextEdit>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtextbrowser.h>
#include "gen_qtextbrowser.h"
class VirtualQTextBrowser final : public QTextBrowser {
	const QTextBrowser_VTable* vtbl;
	void* vdata;
public:
	friend const QTextBrowser_VTable* QTextBrowser_vtbl(const VirtualQTextBrowser* self);
	friend void* QTextBrowser_vdata(const VirtualQTextBrowser* self);
	friend void QTextBrowser_setVdata(VirtualQTextBrowser* self, void* vdata);

	VirtualQTextBrowser(const QTextBrowser_VTable* vtbl, void* vdata, QWidget* parent): QTextBrowser(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTextBrowser(const QTextBrowser_VTable* vtbl, void* vdata): QTextBrowser(), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTextBrowser() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTextBrowser::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTextBrowser_virtualbase_metaObject(const VirtualQTextBrowser* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTextBrowser::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTextBrowser_virtualbase_metacast(VirtualQTextBrowser* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTextBrowser::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextBrowser_virtualbase_metacall(VirtualQTextBrowser* self, int param1, int param2, void** param3);

	virtual QVariant loadResource(int type, const QUrl& name) override {
		if (vtbl->loadResource == 0) {
			return QTextBrowser::loadResource(type, name);
		}

		int sigval1 = type;
		const QUrl& name_ret = name;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&name_ret);

		QVariant* callback_return_value = vtbl->loadResource(this, sigval1, sigval2);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTextBrowser_virtualbase_loadResource(VirtualQTextBrowser* self, int type, QUrl* name);

	virtual void setSource(const QUrl& name) override {
		if (vtbl->setSource == 0) {
			QTextBrowser::setSource(name);
			return;
		}

		const QUrl& name_ret = name;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&name_ret);

		vtbl->setSource(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_setSource(VirtualQTextBrowser* self, QUrl* name);

	virtual void backward() override {
		if (vtbl->backward == 0) {
			QTextBrowser::backward();
			return;
		}


		vtbl->backward(this);

	}

	friend void QTextBrowser_virtualbase_backward(VirtualQTextBrowser* self);

	virtual void forward() override {
		if (vtbl->forward == 0) {
			QTextBrowser::forward();
			return;
		}


		vtbl->forward(this);

	}

	friend void QTextBrowser_virtualbase_forward(VirtualQTextBrowser* self);

	virtual void home() override {
		if (vtbl->home == 0) {
			QTextBrowser::home();
			return;
		}


		vtbl->home(this);

	}

	friend void QTextBrowser_virtualbase_home(VirtualQTextBrowser* self);

	virtual void reload() override {
		if (vtbl->reload == 0) {
			QTextBrowser::reload();
			return;
		}


		vtbl->reload(this);

	}

	friend void QTextBrowser_virtualbase_reload(VirtualQTextBrowser* self);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QTextBrowser::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextBrowser_virtualbase_event(VirtualQTextBrowser* self, QEvent* e);

	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QTextBrowser::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_keyPressEvent(VirtualQTextBrowser* self, QKeyEvent* ev);

	virtual void mouseMoveEvent(QMouseEvent* ev) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTextBrowser::mouseMoveEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_mouseMoveEvent(VirtualQTextBrowser* self, QMouseEvent* ev);

	virtual void mousePressEvent(QMouseEvent* ev) override {
		if (vtbl->mousePressEvent == 0) {
			QTextBrowser::mousePressEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_mousePressEvent(VirtualQTextBrowser* self, QMouseEvent* ev);

	virtual void mouseReleaseEvent(QMouseEvent* ev) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTextBrowser::mouseReleaseEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_mouseReleaseEvent(VirtualQTextBrowser* self, QMouseEvent* ev);

	virtual void focusOutEvent(QFocusEvent* ev) override {
		if (vtbl->focusOutEvent == 0) {
			QTextBrowser::focusOutEvent(ev);
			return;
		}

		QFocusEvent* sigval1 = ev;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_focusOutEvent(VirtualQTextBrowser* self, QFocusEvent* ev);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTextBrowser::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextBrowser_virtualbase_focusNextPrevChild(VirtualQTextBrowser* self, bool next);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QTextBrowser::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_paintEvent(VirtualQTextBrowser* self, QPaintEvent* e);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery property) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTextBrowser::inputMethodQuery(property);
		}

		Qt::InputMethodQuery property_ret = property;
		int sigval1 = static_cast<int>(property_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTextBrowser_virtualbase_inputMethodQuery(const VirtualQTextBrowser* self, int property);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QTextBrowser::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_timerEvent(VirtualQTextBrowser* self, QTimerEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTextBrowser::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_keyReleaseEvent(VirtualQTextBrowser* self, QKeyEvent* e);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QTextBrowser::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_resizeEvent(VirtualQTextBrowser* self, QResizeEvent* e);

	virtual void mouseDoubleClickEvent(QMouseEvent* e) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTextBrowser::mouseDoubleClickEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_mouseDoubleClickEvent(VirtualQTextBrowser* self, QMouseEvent* e);

	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QTextBrowser::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_contextMenuEvent(VirtualQTextBrowser* self, QContextMenuEvent* e);

	virtual void dragEnterEvent(QDragEnterEvent* e) override {
		if (vtbl->dragEnterEvent == 0) {
			QTextBrowser::dragEnterEvent(e);
			return;
		}

		QDragEnterEvent* sigval1 = e;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_dragEnterEvent(VirtualQTextBrowser* self, QDragEnterEvent* e);

	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTextBrowser::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_dragLeaveEvent(VirtualQTextBrowser* self, QDragLeaveEvent* e);

	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QTextBrowser::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_dragMoveEvent(VirtualQTextBrowser* self, QDragMoveEvent* e);

	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QTextBrowser::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_dropEvent(VirtualQTextBrowser* self, QDropEvent* e);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QTextBrowser::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_focusInEvent(VirtualQTextBrowser* self, QFocusEvent* e);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QTextBrowser::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_showEvent(VirtualQTextBrowser* self, QShowEvent* param1);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QTextBrowser::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_changeEvent(VirtualQTextBrowser* self, QEvent* e);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QTextBrowser::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_wheelEvent(VirtualQTextBrowser* self, QWheelEvent* e);

	virtual QMimeData* createMimeDataFromSelection() const override {
		if (vtbl->createMimeDataFromSelection == 0) {
			return QTextBrowser::createMimeDataFromSelection();
		}


		QMimeData* callback_return_value = vtbl->createMimeDataFromSelection(this);

		return callback_return_value;
	}

	friend QMimeData* QTextBrowser_virtualbase_createMimeDataFromSelection(const VirtualQTextBrowser* self);

	virtual bool canInsertFromMimeData(const QMimeData* source) const override {
		if (vtbl->canInsertFromMimeData == 0) {
			return QTextBrowser::canInsertFromMimeData(source);
		}

		QMimeData* sigval1 = (QMimeData*) source;

		bool callback_return_value = vtbl->canInsertFromMimeData(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextBrowser_virtualbase_canInsertFromMimeData(const VirtualQTextBrowser* self, QMimeData* source);

	virtual void insertFromMimeData(const QMimeData* source) override {
		if (vtbl->insertFromMimeData == 0) {
			QTextBrowser::insertFromMimeData(source);
			return;
		}

		QMimeData* sigval1 = (QMimeData*) source;

		vtbl->insertFromMimeData(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_insertFromMimeData(VirtualQTextBrowser* self, QMimeData* source);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTextBrowser::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_inputMethodEvent(VirtualQTextBrowser* self, QInputMethodEvent* param1);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTextBrowser::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QTextBrowser_virtualbase_scrollContentsBy(VirtualQTextBrowser* self, int dx, int dy);

	virtual void doSetTextCursor(const QTextCursor& cursor) override {
		if (vtbl->doSetTextCursor == 0) {
			QTextBrowser::doSetTextCursor(cursor);
			return;
		}

		const QTextCursor& cursor_ret = cursor;
		// Cast returned reference into pointer
		QTextCursor* sigval1 = const_cast<QTextCursor*>(&cursor_ret);

		vtbl->doSetTextCursor(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_doSetTextCursor(VirtualQTextBrowser* self, QTextCursor* cursor);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTextBrowser::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTextBrowser_virtualbase_minimumSizeHint(const VirtualQTextBrowser* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTextBrowser::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTextBrowser_virtualbase_sizeHint(const VirtualQTextBrowser* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTextBrowser::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_setupViewport(VirtualQTextBrowser* self, QWidget* viewport);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QTextBrowser::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTextBrowser_virtualbase_eventFilter(VirtualQTextBrowser* self, QObject* param1, QEvent* param2);

	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QTextBrowser::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextBrowser_virtualbase_viewportEvent(VirtualQTextBrowser* self, QEvent* param1);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTextBrowser::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTextBrowser_virtualbase_viewportSizeHint(const VirtualQTextBrowser* self);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTextBrowser::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextBrowser_virtualbase_devType(const VirtualQTextBrowser* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTextBrowser::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_setVisible(VirtualQTextBrowser* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTextBrowser::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextBrowser_virtualbase_heightForWidth(const VirtualQTextBrowser* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTextBrowser::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QTextBrowser_virtualbase_hasHeightForWidth(const VirtualQTextBrowser* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTextBrowser::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QTextBrowser_virtualbase_paintEngine(const VirtualQTextBrowser* self);

	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTextBrowser::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_enterEvent(VirtualQTextBrowser* self, QEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTextBrowser::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_leaveEvent(VirtualQTextBrowser* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTextBrowser::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_moveEvent(VirtualQTextBrowser* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTextBrowser::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_closeEvent(VirtualQTextBrowser* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTextBrowser::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_tabletEvent(VirtualQTextBrowser* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTextBrowser::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_actionEvent(VirtualQTextBrowser* self, QActionEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTextBrowser::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_hideEvent(VirtualQTextBrowser* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTextBrowser::nativeEvent(eventType, message, result);
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

	friend bool QTextBrowser_virtualbase_nativeEvent(VirtualQTextBrowser* self, struct miqt_string eventType, void* message, long* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTextBrowser::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextBrowser_virtualbase_metric(const VirtualQTextBrowser* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTextBrowser::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_initPainter(const VirtualQTextBrowser* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTextBrowser::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTextBrowser_virtualbase_redirected(const VirtualQTextBrowser* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTextBrowser::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QTextBrowser_virtualbase_sharedPainter(const VirtualQTextBrowser* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTextBrowser::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_childEvent(VirtualQTextBrowser* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTextBrowser::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_customEvent(VirtualQTextBrowser* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTextBrowser::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_connectNotify(VirtualQTextBrowser* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTextBrowser::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTextBrowser_virtualbase_disconnectNotify(VirtualQTextBrowser* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTextBrowser_protectedbase_doSetSource(VirtualQTextBrowser* self, QUrl* name);
	friend void QTextBrowser_protectedbase_doSetSource2(VirtualQTextBrowser* self, QUrl* name, int type);
	friend void QTextBrowser_protectedbase_zoomInF(VirtualQTextBrowser* self, float range);
	friend void QTextBrowser_protectedbase_setViewportMargins(VirtualQTextBrowser* self, int left, int top, int right, int bottom);
	friend QMargins* QTextBrowser_protectedbase_viewportMargins(const VirtualQTextBrowser* self);
	friend void QTextBrowser_protectedbase_drawFrame(VirtualQTextBrowser* self, QPainter* param1);
	friend void QTextBrowser_protectedbase_initStyleOption(const VirtualQTextBrowser* self, QStyleOptionFrame* option);
	friend void QTextBrowser_protectedbase_updateMicroFocus(VirtualQTextBrowser* self);
	friend void QTextBrowser_protectedbase_create(VirtualQTextBrowser* self);
	friend void QTextBrowser_protectedbase_destroy(VirtualQTextBrowser* self);
	friend bool QTextBrowser_protectedbase_focusNextChild(VirtualQTextBrowser* self);
	friend bool QTextBrowser_protectedbase_focusPreviousChild(VirtualQTextBrowser* self);
	friend QObject* QTextBrowser_protectedbase_sender(const VirtualQTextBrowser* self);
	friend int QTextBrowser_protectedbase_senderSignalIndex(const VirtualQTextBrowser* self);
	friend int QTextBrowser_protectedbase_receivers(const VirtualQTextBrowser* self, const char* signal);
	friend bool QTextBrowser_protectedbase_isSignalConnected(const VirtualQTextBrowser* self, QMetaMethod* signal);
};

VirtualQTextBrowser* QTextBrowser_new(const QTextBrowser_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQTextBrowser(vtbl, vdata, parent);
}

VirtualQTextBrowser* QTextBrowser_new2(const QTextBrowser_VTable* vtbl, void* vdata) {
	return new VirtualQTextBrowser(vtbl, vdata);
}

void QTextBrowser_virtbase(QTextBrowser* src, QTextEdit** outptr_QTextEdit) {
	*outptr_QTextEdit = static_cast<QTextEdit*>(src);
}

QMetaObject* QTextBrowser_metaObject(const QTextBrowser* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTextBrowser_metacast(QTextBrowser* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTextBrowser_metacall(QTextBrowser* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTextBrowser_tr(const char* s) {
	QString _ret = QTextBrowser::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextBrowser_trUtf8(const char* s) {
	QString _ret = QTextBrowser::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QTextBrowser_source(const QTextBrowser* self) {
	return new QUrl(self->source());
}

int QTextBrowser_sourceType(const QTextBrowser* self) {
	QTextDocument::ResourceType _ret = self->sourceType();
	return static_cast<int>(_ret);
}

struct miqt_array /* of struct miqt_string */  QTextBrowser_searchPaths(const QTextBrowser* self) {
	QStringList _ret = self->searchPaths();
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

void QTextBrowser_setSearchPaths(QTextBrowser* self, struct miqt_array /* of struct miqt_string */  paths) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	self->setSearchPaths(paths_QList);
}

QVariant* QTextBrowser_loadResource(QTextBrowser* self, int type, QUrl* name) {
	return new QVariant(self->loadResource(static_cast<int>(type), *name));
}

bool QTextBrowser_isBackwardAvailable(const QTextBrowser* self) {
	return self->isBackwardAvailable();
}

bool QTextBrowser_isForwardAvailable(const QTextBrowser* self) {
	return self->isForwardAvailable();
}

void QTextBrowser_clearHistory(QTextBrowser* self) {
	self->clearHistory();
}

struct miqt_string QTextBrowser_historyTitle(const QTextBrowser* self, int param1) {
	QString _ret = self->historyTitle(static_cast<int>(param1));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QTextBrowser_historyUrl(const QTextBrowser* self, int param1) {
	return new QUrl(self->historyUrl(static_cast<int>(param1)));
}

int QTextBrowser_backwardHistoryCount(const QTextBrowser* self) {
	return self->backwardHistoryCount();
}

int QTextBrowser_forwardHistoryCount(const QTextBrowser* self) {
	return self->forwardHistoryCount();
}

bool QTextBrowser_openExternalLinks(const QTextBrowser* self) {
	return self->openExternalLinks();
}

void QTextBrowser_setOpenExternalLinks(QTextBrowser* self, bool open) {
	self->setOpenExternalLinks(open);
}

bool QTextBrowser_openLinks(const QTextBrowser* self) {
	return self->openLinks();
}

void QTextBrowser_setOpenLinks(QTextBrowser* self, bool open) {
	self->setOpenLinks(open);
}

void QTextBrowser_setSource(QTextBrowser* self, QUrl* name) {
	self->setSource(*name);
}

void QTextBrowser_setSource2(QTextBrowser* self, QUrl* name, int type) {
	self->setSource(*name, static_cast<QTextDocument::ResourceType>(type));
}

void QTextBrowser_backward(QTextBrowser* self) {
	self->backward();
}

void QTextBrowser_forward(QTextBrowser* self) {
	self->forward();
}

void QTextBrowser_home(QTextBrowser* self) {
	self->home();
}

void QTextBrowser_reload(QTextBrowser* self) {
	self->reload();
}

void QTextBrowser_backwardAvailable(QTextBrowser* self, bool param1) {
	self->backwardAvailable(param1);
}

void QTextBrowser_connect_backwardAvailable(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(bool)>(&QTextBrowser::backwardAvailable), self, local_caller{slot, callback, release});
}

void QTextBrowser_forwardAvailable(QTextBrowser* self, bool param1) {
	self->forwardAvailable(param1);
}

void QTextBrowser_connect_forwardAvailable(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(bool)>(&QTextBrowser::forwardAvailable), self, local_caller{slot, callback, release});
}

void QTextBrowser_historyChanged(QTextBrowser* self) {
	self->historyChanged();
}

void QTextBrowser_connect_historyChanged(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)()>(&QTextBrowser::historyChanged), self, local_caller{slot, callback, release});
}

void QTextBrowser_sourceChanged(QTextBrowser* self, QUrl* param1) {
	self->sourceChanged(*param1);
}

void QTextBrowser_connect_sourceChanged(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
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
	VirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(const QUrl&)>(&QTextBrowser::sourceChanged), self, local_caller{slot, callback, release});
}

void QTextBrowser_highlighted(QTextBrowser* self, QUrl* param1) {
	self->highlighted(*param1);
}

void QTextBrowser_connect_highlighted(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
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
	VirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(const QUrl&)>(&QTextBrowser::highlighted), self, local_caller{slot, callback, release});
}

void QTextBrowser_highlightedWithQString(QTextBrowser* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->highlighted(param1_QString);
}

void QTextBrowser_connect_highlightedWithQString(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, struct miqt_string), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, struct miqt_string);
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			callback(slot, sigval1);
		}
	};
	VirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(const QString&)>(&QTextBrowser::highlighted), self, local_caller{slot, callback, release});
}

void QTextBrowser_anchorClicked(QTextBrowser* self, QUrl* param1) {
	self->anchorClicked(*param1);
}

void QTextBrowser_connect_anchorClicked(VirtualQTextBrowser* self, intptr_t slot, void (*callback)(intptr_t, QUrl*), void (*release)(intptr_t)) {
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
	VirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(const QUrl&)>(&QTextBrowser::anchorClicked), self, local_caller{slot, callback, release});
}

struct miqt_string QTextBrowser_tr2(const char* s, const char* c) {
	QString _ret = QTextBrowser::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextBrowser_tr3(const char* s, const char* c, int n) {
	QString _ret = QTextBrowser::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextBrowser_trUtf82(const char* s, const char* c) {
	QString _ret = QTextBrowser::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextBrowser_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTextBrowser::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTextBrowser_virtualbase_metaObject(const VirtualQTextBrowser* self) {

	return (QMetaObject*) self->QTextBrowser::metaObject();
}

void* QTextBrowser_virtualbase_metacast(VirtualQTextBrowser* self, const char* param1) {

	return self->QTextBrowser::qt_metacast(param1);
}

int QTextBrowser_virtualbase_metacall(VirtualQTextBrowser* self, int param1, int param2, void** param3) {

	return self->QTextBrowser::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QVariant* QTextBrowser_virtualbase_loadResource(VirtualQTextBrowser* self, int type, QUrl* name) {

	return new QVariant(self->QTextBrowser::loadResource(static_cast<int>(type), *name));
}

void QTextBrowser_virtualbase_setSource(VirtualQTextBrowser* self, QUrl* name) {

	self->QTextBrowser::setSource(*name);
}

void QTextBrowser_virtualbase_backward(VirtualQTextBrowser* self) {

	self->QTextBrowser::backward();
}

void QTextBrowser_virtualbase_forward(VirtualQTextBrowser* self) {

	self->QTextBrowser::forward();
}

void QTextBrowser_virtualbase_home(VirtualQTextBrowser* self) {

	self->QTextBrowser::home();
}

void QTextBrowser_virtualbase_reload(VirtualQTextBrowser* self) {

	self->QTextBrowser::reload();
}

bool QTextBrowser_virtualbase_event(VirtualQTextBrowser* self, QEvent* e) {

	return self->QTextBrowser::event(e);
}

void QTextBrowser_virtualbase_keyPressEvent(VirtualQTextBrowser* self, QKeyEvent* ev) {

	self->QTextBrowser::keyPressEvent(ev);
}

void QTextBrowser_virtualbase_mouseMoveEvent(VirtualQTextBrowser* self, QMouseEvent* ev) {

	self->QTextBrowser::mouseMoveEvent(ev);
}

void QTextBrowser_virtualbase_mousePressEvent(VirtualQTextBrowser* self, QMouseEvent* ev) {

	self->QTextBrowser::mousePressEvent(ev);
}

void QTextBrowser_virtualbase_mouseReleaseEvent(VirtualQTextBrowser* self, QMouseEvent* ev) {

	self->QTextBrowser::mouseReleaseEvent(ev);
}

void QTextBrowser_virtualbase_focusOutEvent(VirtualQTextBrowser* self, QFocusEvent* ev) {

	self->QTextBrowser::focusOutEvent(ev);
}

bool QTextBrowser_virtualbase_focusNextPrevChild(VirtualQTextBrowser* self, bool next) {

	return self->QTextBrowser::focusNextPrevChild(next);
}

void QTextBrowser_virtualbase_paintEvent(VirtualQTextBrowser* self, QPaintEvent* e) {

	self->QTextBrowser::paintEvent(e);
}

QVariant* QTextBrowser_virtualbase_inputMethodQuery(const VirtualQTextBrowser* self, int property) {

	return new QVariant(self->QTextBrowser::inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));
}

void QTextBrowser_virtualbase_timerEvent(VirtualQTextBrowser* self, QTimerEvent* e) {

	self->QTextBrowser::timerEvent(e);
}

void QTextBrowser_virtualbase_keyReleaseEvent(VirtualQTextBrowser* self, QKeyEvent* e) {

	self->QTextBrowser::keyReleaseEvent(e);
}

void QTextBrowser_virtualbase_resizeEvent(VirtualQTextBrowser* self, QResizeEvent* e) {

	self->QTextBrowser::resizeEvent(e);
}

void QTextBrowser_virtualbase_mouseDoubleClickEvent(VirtualQTextBrowser* self, QMouseEvent* e) {

	self->QTextBrowser::mouseDoubleClickEvent(e);
}

void QTextBrowser_virtualbase_contextMenuEvent(VirtualQTextBrowser* self, QContextMenuEvent* e) {

	self->QTextBrowser::contextMenuEvent(e);
}

void QTextBrowser_virtualbase_dragEnterEvent(VirtualQTextBrowser* self, QDragEnterEvent* e) {

	self->QTextBrowser::dragEnterEvent(e);
}

void QTextBrowser_virtualbase_dragLeaveEvent(VirtualQTextBrowser* self, QDragLeaveEvent* e) {

	self->QTextBrowser::dragLeaveEvent(e);
}

void QTextBrowser_virtualbase_dragMoveEvent(VirtualQTextBrowser* self, QDragMoveEvent* e) {

	self->QTextBrowser::dragMoveEvent(e);
}

void QTextBrowser_virtualbase_dropEvent(VirtualQTextBrowser* self, QDropEvent* e) {

	self->QTextBrowser::dropEvent(e);
}

void QTextBrowser_virtualbase_focusInEvent(VirtualQTextBrowser* self, QFocusEvent* e) {

	self->QTextBrowser::focusInEvent(e);
}

void QTextBrowser_virtualbase_showEvent(VirtualQTextBrowser* self, QShowEvent* param1) {

	self->QTextBrowser::showEvent(param1);
}

void QTextBrowser_virtualbase_changeEvent(VirtualQTextBrowser* self, QEvent* e) {

	self->QTextBrowser::changeEvent(e);
}

void QTextBrowser_virtualbase_wheelEvent(VirtualQTextBrowser* self, QWheelEvent* e) {

	self->QTextBrowser::wheelEvent(e);
}

QMimeData* QTextBrowser_virtualbase_createMimeDataFromSelection(const VirtualQTextBrowser* self) {

	return self->QTextBrowser::createMimeDataFromSelection();
}

bool QTextBrowser_virtualbase_canInsertFromMimeData(const VirtualQTextBrowser* self, QMimeData* source) {

	return self->QTextBrowser::canInsertFromMimeData(source);
}

void QTextBrowser_virtualbase_insertFromMimeData(VirtualQTextBrowser* self, QMimeData* source) {

	self->QTextBrowser::insertFromMimeData(source);
}

void QTextBrowser_virtualbase_inputMethodEvent(VirtualQTextBrowser* self, QInputMethodEvent* param1) {

	self->QTextBrowser::inputMethodEvent(param1);
}

void QTextBrowser_virtualbase_scrollContentsBy(VirtualQTextBrowser* self, int dx, int dy) {

	self->QTextBrowser::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QTextBrowser_virtualbase_doSetTextCursor(VirtualQTextBrowser* self, QTextCursor* cursor) {

	self->QTextBrowser::doSetTextCursor(*cursor);
}

QSize* QTextBrowser_virtualbase_minimumSizeHint(const VirtualQTextBrowser* self) {

	return new QSize(self->QTextBrowser::minimumSizeHint());
}

QSize* QTextBrowser_virtualbase_sizeHint(const VirtualQTextBrowser* self) {

	return new QSize(self->QTextBrowser::sizeHint());
}

void QTextBrowser_virtualbase_setupViewport(VirtualQTextBrowser* self, QWidget* viewport) {

	self->QTextBrowser::setupViewport(viewport);
}

bool QTextBrowser_virtualbase_eventFilter(VirtualQTextBrowser* self, QObject* param1, QEvent* param2) {

	return self->QTextBrowser::eventFilter(param1, param2);
}

bool QTextBrowser_virtualbase_viewportEvent(VirtualQTextBrowser* self, QEvent* param1) {

	return self->QTextBrowser::viewportEvent(param1);
}

QSize* QTextBrowser_virtualbase_viewportSizeHint(const VirtualQTextBrowser* self) {

	return new QSize(self->QTextBrowser::viewportSizeHint());
}

int QTextBrowser_virtualbase_devType(const VirtualQTextBrowser* self) {

	return self->QTextBrowser::devType();
}

void QTextBrowser_virtualbase_setVisible(VirtualQTextBrowser* self, bool visible) {

	self->QTextBrowser::setVisible(visible);
}

int QTextBrowser_virtualbase_heightForWidth(const VirtualQTextBrowser* self, int param1) {

	return self->QTextBrowser::heightForWidth(static_cast<int>(param1));
}

bool QTextBrowser_virtualbase_hasHeightForWidth(const VirtualQTextBrowser* self) {

	return self->QTextBrowser::hasHeightForWidth();
}

QPaintEngine* QTextBrowser_virtualbase_paintEngine(const VirtualQTextBrowser* self) {

	return self->QTextBrowser::paintEngine();
}

void QTextBrowser_virtualbase_enterEvent(VirtualQTextBrowser* self, QEvent* event) {

	self->QTextBrowser::enterEvent(event);
}

void QTextBrowser_virtualbase_leaveEvent(VirtualQTextBrowser* self, QEvent* event) {

	self->QTextBrowser::leaveEvent(event);
}

void QTextBrowser_virtualbase_moveEvent(VirtualQTextBrowser* self, QMoveEvent* event) {

	self->QTextBrowser::moveEvent(event);
}

void QTextBrowser_virtualbase_closeEvent(VirtualQTextBrowser* self, QCloseEvent* event) {

	self->QTextBrowser::closeEvent(event);
}

void QTextBrowser_virtualbase_tabletEvent(VirtualQTextBrowser* self, QTabletEvent* event) {

	self->QTextBrowser::tabletEvent(event);
}

void QTextBrowser_virtualbase_actionEvent(VirtualQTextBrowser* self, QActionEvent* event) {

	self->QTextBrowser::actionEvent(event);
}

void QTextBrowser_virtualbase_hideEvent(VirtualQTextBrowser* self, QHideEvent* event) {

	self->QTextBrowser::hideEvent(event);
}

bool QTextBrowser_virtualbase_nativeEvent(VirtualQTextBrowser* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QTextBrowser::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));
}

int QTextBrowser_virtualbase_metric(const VirtualQTextBrowser* self, int param1) {

	return self->QTextBrowser::metric(static_cast<VirtualQTextBrowser::PaintDeviceMetric>(param1));
}

void QTextBrowser_virtualbase_initPainter(const VirtualQTextBrowser* self, QPainter* painter) {

	self->QTextBrowser::initPainter(painter);
}

QPaintDevice* QTextBrowser_virtualbase_redirected(const VirtualQTextBrowser* self, QPoint* offset) {

	return self->QTextBrowser::redirected(offset);
}

QPainter* QTextBrowser_virtualbase_sharedPainter(const VirtualQTextBrowser* self) {

	return self->QTextBrowser::sharedPainter();
}

void QTextBrowser_virtualbase_childEvent(VirtualQTextBrowser* self, QChildEvent* event) {

	self->QTextBrowser::childEvent(event);
}

void QTextBrowser_virtualbase_customEvent(VirtualQTextBrowser* self, QEvent* event) {

	self->QTextBrowser::customEvent(event);
}

void QTextBrowser_virtualbase_connectNotify(VirtualQTextBrowser* self, QMetaMethod* signal) {

	self->QTextBrowser::connectNotify(*signal);
}

void QTextBrowser_virtualbase_disconnectNotify(VirtualQTextBrowser* self, QMetaMethod* signal) {

	self->QTextBrowser::disconnectNotify(*signal);
}

const QMetaObject* QTextBrowser_staticMetaObject() { return &QTextBrowser::staticMetaObject; }

const QTextBrowser_VTable* QTextBrowser_vtbl(const VirtualQTextBrowser* self) { return self->vtbl; }
void* QTextBrowser_vdata(const VirtualQTextBrowser* self) { return self->vdata; }
void QTextBrowser_setVdata(VirtualQTextBrowser* self, void* vdata) { self->vdata = vdata; }

void QTextBrowser_protectedbase_doSetSource(VirtualQTextBrowser* self, QUrl* name) {
	self->doSetSource(*name);
}

void QTextBrowser_protectedbase_doSetSource2(VirtualQTextBrowser* self, QUrl* name, int type) {
	self->doSetSource(*name, static_cast<QTextDocument::ResourceType>(type));
}

void QTextBrowser_protectedbase_zoomInF(VirtualQTextBrowser* self, float range) {
	self->zoomInF(static_cast<float>(range));
}

void QTextBrowser_protectedbase_setViewportMargins(VirtualQTextBrowser* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QTextBrowser_protectedbase_viewportMargins(const VirtualQTextBrowser* self) {
	return new QMargins(self->viewportMargins());
}

void QTextBrowser_protectedbase_drawFrame(VirtualQTextBrowser* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QTextBrowser_protectedbase_initStyleOption(const VirtualQTextBrowser* self, QStyleOptionFrame* option) {
	self->initStyleOption(option);
}

void QTextBrowser_protectedbase_updateMicroFocus(VirtualQTextBrowser* self) {
	self->updateMicroFocus();
}

void QTextBrowser_protectedbase_create(VirtualQTextBrowser* self) {
	self->create();
}

void QTextBrowser_protectedbase_destroy(VirtualQTextBrowser* self) {
	self->destroy();
}

bool QTextBrowser_protectedbase_focusNextChild(VirtualQTextBrowser* self) {
	return self->focusNextChild();
}

bool QTextBrowser_protectedbase_focusPreviousChild(VirtualQTextBrowser* self) {
	return self->focusPreviousChild();
}

QObject* QTextBrowser_protectedbase_sender(const VirtualQTextBrowser* self) {
	return self->sender();
}

int QTextBrowser_protectedbase_senderSignalIndex(const VirtualQTextBrowser* self) {
	return self->senderSignalIndex();
}

int QTextBrowser_protectedbase_receivers(const VirtualQTextBrowser* self, const char* signal) {
	return self->receivers(signal);
}

bool QTextBrowser_protectedbase_isSignalConnected(const VirtualQTextBrowser* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTextBrowser_delete(QTextBrowser* self) {
	delete self;
}

