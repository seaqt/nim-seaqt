#include <QAbstractScrollArea>
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
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMargins>
#include <QMenu>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPagedPaintDevice>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QRect>
#include <QRegularExpression>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTextCharFormat>
#include <QTextCursor>
#include <QTextDocument>
#include <QTextEdit>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTextEdit__ExtraSelection
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtextedit.h>
#include "gen_qtextedit.h"
class VirtualQTextEdit final : public QTextEdit {
	const QTextEdit_VTable* vtbl;
	void* vdata;
public:
	friend const QTextEdit_VTable* QTextEdit_vtbl(const VirtualQTextEdit* self);
	friend void* QTextEdit_vdata(const VirtualQTextEdit* self);
	friend void QTextEdit_setVdata(VirtualQTextEdit* self, void* vdata);

	VirtualQTextEdit(const QTextEdit_VTable* vtbl, void* vdata, QWidget* parent): QTextEdit(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTextEdit(const QTextEdit_VTable* vtbl, void* vdata): QTextEdit(), vtbl(vtbl), vdata(vdata) {}
	VirtualQTextEdit(const QTextEdit_VTable* vtbl, void* vdata, const QString& text): QTextEdit(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQTextEdit(const QTextEdit_VTable* vtbl, void* vdata, const QString& text, QWidget* parent): QTextEdit(text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTextEdit() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTextEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTextEdit_virtualbase_metaObject(const VirtualQTextEdit* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTextEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTextEdit_virtualbase_metacast(VirtualQTextEdit* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTextEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextEdit_virtualbase_metacall(VirtualQTextEdit* self, int param1, int param2, void** param3);

	virtual QVariant loadResource(int type, const QUrl& name) override {
		if (vtbl->loadResource == 0) {
			return QTextEdit::loadResource(type, name);
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

	friend QVariant* QTextEdit_virtualbase_loadResource(VirtualQTextEdit* self, int type, QUrl* name);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery property) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTextEdit::inputMethodQuery(property);
		}

		Qt::InputMethodQuery property_ret = property;
		int sigval1 = static_cast<int>(property_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTextEdit_virtualbase_inputMethodQuery(const VirtualQTextEdit* self, int property);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QTextEdit::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_event(VirtualQTextEdit* self, QEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QTextEdit::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_timerEvent(VirtualQTextEdit* self, QTimerEvent* e);

	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QTextEdit::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_keyPressEvent(VirtualQTextEdit* self, QKeyEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTextEdit::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_keyReleaseEvent(VirtualQTextEdit* self, QKeyEvent* e);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QTextEdit::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_resizeEvent(VirtualQTextEdit* self, QResizeEvent* e);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QTextEdit::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_paintEvent(VirtualQTextEdit* self, QPaintEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QTextEdit::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_mousePressEvent(VirtualQTextEdit* self, QMouseEvent* e);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTextEdit::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_mouseMoveEvent(VirtualQTextEdit* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTextEdit::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_mouseReleaseEvent(VirtualQTextEdit* self, QMouseEvent* e);

	virtual void mouseDoubleClickEvent(QMouseEvent* e) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTextEdit::mouseDoubleClickEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_mouseDoubleClickEvent(VirtualQTextEdit* self, QMouseEvent* e);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTextEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_focusNextPrevChild(VirtualQTextEdit* self, bool next);

	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QTextEdit::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_contextMenuEvent(VirtualQTextEdit* self, QContextMenuEvent* e);

	virtual void dragEnterEvent(QDragEnterEvent* e) override {
		if (vtbl->dragEnterEvent == 0) {
			QTextEdit::dragEnterEvent(e);
			return;
		}

		QDragEnterEvent* sigval1 = e;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_dragEnterEvent(VirtualQTextEdit* self, QDragEnterEvent* e);

	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTextEdit::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_dragLeaveEvent(VirtualQTextEdit* self, QDragLeaveEvent* e);

	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QTextEdit::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_dragMoveEvent(VirtualQTextEdit* self, QDragMoveEvent* e);

	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QTextEdit::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_dropEvent(VirtualQTextEdit* self, QDropEvent* e);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QTextEdit::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_focusInEvent(VirtualQTextEdit* self, QFocusEvent* e);

	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QTextEdit::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_focusOutEvent(VirtualQTextEdit* self, QFocusEvent* e);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QTextEdit::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_showEvent(VirtualQTextEdit* self, QShowEvent* param1);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QTextEdit::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_changeEvent(VirtualQTextEdit* self, QEvent* e);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QTextEdit::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_wheelEvent(VirtualQTextEdit* self, QWheelEvent* e);

	virtual QMimeData* createMimeDataFromSelection() const override {
		if (vtbl->createMimeDataFromSelection == 0) {
			return QTextEdit::createMimeDataFromSelection();
		}


		QMimeData* callback_return_value = vtbl->createMimeDataFromSelection(this);

		return callback_return_value;
	}

	friend QMimeData* QTextEdit_virtualbase_createMimeDataFromSelection(const VirtualQTextEdit* self);

	virtual bool canInsertFromMimeData(const QMimeData* source) const override {
		if (vtbl->canInsertFromMimeData == 0) {
			return QTextEdit::canInsertFromMimeData(source);
		}

		QMimeData* sigval1 = (QMimeData*) source;

		bool callback_return_value = vtbl->canInsertFromMimeData(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_canInsertFromMimeData(const VirtualQTextEdit* self, QMimeData* source);

	virtual void insertFromMimeData(const QMimeData* source) override {
		if (vtbl->insertFromMimeData == 0) {
			QTextEdit::insertFromMimeData(source);
			return;
		}

		QMimeData* sigval1 = (QMimeData*) source;

		vtbl->insertFromMimeData(this, sigval1);

	}

	friend void QTextEdit_virtualbase_insertFromMimeData(VirtualQTextEdit* self, QMimeData* source);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTextEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_inputMethodEvent(VirtualQTextEdit* self, QInputMethodEvent* param1);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTextEdit::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QTextEdit_virtualbase_scrollContentsBy(VirtualQTextEdit* self, int dx, int dy);

	virtual void doSetTextCursor(const QTextCursor& cursor) override {
		if (vtbl->doSetTextCursor == 0) {
			QTextEdit::doSetTextCursor(cursor);
			return;
		}

		const QTextCursor& cursor_ret = cursor;
		// Cast returned reference into pointer
		QTextCursor* sigval1 = const_cast<QTextCursor*>(&cursor_ret);

		vtbl->doSetTextCursor(this, sigval1);

	}

	friend void QTextEdit_virtualbase_doSetTextCursor(VirtualQTextEdit* self, QTextCursor* cursor);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTextEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTextEdit_virtualbase_minimumSizeHint(const VirtualQTextEdit* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTextEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTextEdit_virtualbase_sizeHint(const VirtualQTextEdit* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTextEdit::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QTextEdit_virtualbase_setupViewport(VirtualQTextEdit* self, QWidget* viewport);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QTextEdit::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_eventFilter(VirtualQTextEdit* self, QObject* param1, QEvent* param2);

	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QTextEdit::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_viewportEvent(VirtualQTextEdit* self, QEvent* param1);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTextEdit::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTextEdit_virtualbase_viewportSizeHint(const VirtualQTextEdit* self);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QTextEdit::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QTextEdit_virtualbase_initStyleOption(const VirtualQTextEdit* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTextEdit::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextEdit_virtualbase_devType(const VirtualQTextEdit* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTextEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QTextEdit_virtualbase_setVisible(VirtualQTextEdit* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTextEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextEdit_virtualbase_heightForWidth(const VirtualQTextEdit* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTextEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_hasHeightForWidth(const VirtualQTextEdit* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTextEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QTextEdit_virtualbase_paintEngine(const VirtualQTextEdit* self);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTextEdit::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_enterEvent(VirtualQTextEdit* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTextEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_leaveEvent(VirtualQTextEdit* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTextEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_moveEvent(VirtualQTextEdit* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTextEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_closeEvent(VirtualQTextEdit* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTextEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_tabletEvent(VirtualQTextEdit* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTextEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_actionEvent(VirtualQTextEdit* self, QActionEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTextEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_hideEvent(VirtualQTextEdit* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTextEdit::nativeEvent(eventType, message, result);
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

	friend bool QTextEdit_virtualbase_nativeEvent(VirtualQTextEdit* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTextEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextEdit_virtualbase_metric(const VirtualQTextEdit* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTextEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QTextEdit_virtualbase_initPainter(const VirtualQTextEdit* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTextEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTextEdit_virtualbase_redirected(const VirtualQTextEdit* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTextEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QTextEdit_virtualbase_sharedPainter(const VirtualQTextEdit* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTextEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_childEvent(VirtualQTextEdit* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTextEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTextEdit_virtualbase_customEvent(VirtualQTextEdit* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTextEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTextEdit_virtualbase_connectNotify(VirtualQTextEdit* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTextEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTextEdit_virtualbase_disconnectNotify(VirtualQTextEdit* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTextEdit_protectedbase_zoomInF(VirtualQTextEdit* self, float range);
	friend void QTextEdit_protectedbase_setViewportMargins(VirtualQTextEdit* self, int left, int top, int right, int bottom);
	friend QMargins* QTextEdit_protectedbase_viewportMargins(const VirtualQTextEdit* self);
	friend void QTextEdit_protectedbase_drawFrame(VirtualQTextEdit* self, QPainter* param1);
	friend void QTextEdit_protectedbase_updateMicroFocus(VirtualQTextEdit* self);
	friend void QTextEdit_protectedbase_create(VirtualQTextEdit* self);
	friend void QTextEdit_protectedbase_destroy(VirtualQTextEdit* self);
	friend bool QTextEdit_protectedbase_focusNextChild(VirtualQTextEdit* self);
	friend bool QTextEdit_protectedbase_focusPreviousChild(VirtualQTextEdit* self);
	friend QObject* QTextEdit_protectedbase_sender(const VirtualQTextEdit* self);
	friend int QTextEdit_protectedbase_senderSignalIndex(const VirtualQTextEdit* self);
	friend int QTextEdit_protectedbase_receivers(const VirtualQTextEdit* self, const char* signal);
	friend bool QTextEdit_protectedbase_isSignalConnected(const VirtualQTextEdit* self, QMetaMethod* signal);
};

VirtualQTextEdit* QTextEdit_new(const QTextEdit_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQTextEdit(vtbl, vdata, parent);
}

VirtualQTextEdit* QTextEdit_new2(const QTextEdit_VTable* vtbl, void* vdata) {
	return new VirtualQTextEdit(vtbl, vdata);
}

VirtualQTextEdit* QTextEdit_new3(const QTextEdit_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQTextEdit(vtbl, vdata, text_QString);
}

VirtualQTextEdit* QTextEdit_new4(const QTextEdit_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQTextEdit(vtbl, vdata, text_QString, parent);
}

void QTextEdit_virtbase(QTextEdit* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QTextEdit_metaObject(const QTextEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTextEdit_metacast(QTextEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTextEdit_metacall(QTextEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTextEdit_tr(const char* s) {
	QString _ret = QTextEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTextEdit_setDocument(QTextEdit* self, QTextDocument* document) {
	self->setDocument(document);
}

QTextDocument* QTextEdit_document(const QTextEdit* self) {
	return self->document();
}

void QTextEdit_setPlaceholderText(QTextEdit* self, struct miqt_string placeholderText) {
	QString placeholderText_QString = QString::fromUtf8(placeholderText.data, placeholderText.len);
	self->setPlaceholderText(placeholderText_QString);
}

struct miqt_string QTextEdit_placeholderText(const QTextEdit* self) {
	QString _ret = self->placeholderText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTextEdit_setTextCursor(QTextEdit* self, QTextCursor* cursor) {
	self->setTextCursor(*cursor);
}

QTextCursor* QTextEdit_textCursor(const QTextEdit* self) {
	return new QTextCursor(self->textCursor());
}

bool QTextEdit_isReadOnly(const QTextEdit* self) {
	return self->isReadOnly();
}

void QTextEdit_setReadOnly(QTextEdit* self, bool ro) {
	self->setReadOnly(ro);
}

void QTextEdit_setTextInteractionFlags(QTextEdit* self, int flags) {
	self->setTextInteractionFlags(static_cast<Qt::TextInteractionFlags>(flags));
}

int QTextEdit_textInteractionFlags(const QTextEdit* self) {
	Qt::TextInteractionFlags _ret = self->textInteractionFlags();
	return static_cast<int>(_ret);
}

double QTextEdit_fontPointSize(const QTextEdit* self) {
	qreal _ret = self->fontPointSize();
	return static_cast<double>(_ret);
}

struct miqt_string QTextEdit_fontFamily(const QTextEdit* self) {
	QString _ret = self->fontFamily();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTextEdit_fontWeight(const QTextEdit* self) {
	return self->fontWeight();
}

bool QTextEdit_fontUnderline(const QTextEdit* self) {
	return self->fontUnderline();
}

bool QTextEdit_fontItalic(const QTextEdit* self) {
	return self->fontItalic();
}

QColor* QTextEdit_textColor(const QTextEdit* self) {
	return new QColor(self->textColor());
}

QColor* QTextEdit_textBackgroundColor(const QTextEdit* self) {
	return new QColor(self->textBackgroundColor());
}

QFont* QTextEdit_currentFont(const QTextEdit* self) {
	return new QFont(self->currentFont());
}

int QTextEdit_alignment(const QTextEdit* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QTextEdit_mergeCurrentCharFormat(QTextEdit* self, QTextCharFormat* modifier) {
	self->mergeCurrentCharFormat(*modifier);
}

void QTextEdit_setCurrentCharFormat(QTextEdit* self, QTextCharFormat* format) {
	self->setCurrentCharFormat(*format);
}

QTextCharFormat* QTextEdit_currentCharFormat(const QTextEdit* self) {
	return new QTextCharFormat(self->currentCharFormat());
}

int QTextEdit_autoFormatting(const QTextEdit* self) {
	QTextEdit::AutoFormatting _ret = self->autoFormatting();
	return static_cast<int>(_ret);
}

void QTextEdit_setAutoFormatting(QTextEdit* self, int features) {
	self->setAutoFormatting(static_cast<QTextEdit::AutoFormatting>(features));
}

bool QTextEdit_tabChangesFocus(const QTextEdit* self) {
	return self->tabChangesFocus();
}

void QTextEdit_setTabChangesFocus(QTextEdit* self, bool b) {
	self->setTabChangesFocus(b);
}

void QTextEdit_setDocumentTitle(QTextEdit* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setDocumentTitle(title_QString);
}

struct miqt_string QTextEdit_documentTitle(const QTextEdit* self) {
	QString _ret = self->documentTitle();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTextEdit_isUndoRedoEnabled(const QTextEdit* self) {
	return self->isUndoRedoEnabled();
}

void QTextEdit_setUndoRedoEnabled(QTextEdit* self, bool enable) {
	self->setUndoRedoEnabled(enable);
}

int QTextEdit_lineWrapMode(const QTextEdit* self) {
	QTextEdit::LineWrapMode _ret = self->lineWrapMode();
	return static_cast<int>(_ret);
}

void QTextEdit_setLineWrapMode(QTextEdit* self, int mode) {
	self->setLineWrapMode(static_cast<QTextEdit::LineWrapMode>(mode));
}

int QTextEdit_lineWrapColumnOrWidth(const QTextEdit* self) {
	return self->lineWrapColumnOrWidth();
}

void QTextEdit_setLineWrapColumnOrWidth(QTextEdit* self, int w) {
	self->setLineWrapColumnOrWidth(static_cast<int>(w));
}

int QTextEdit_wordWrapMode(const QTextEdit* self) {
	QTextOption::WrapMode _ret = self->wordWrapMode();
	return static_cast<int>(_ret);
}

void QTextEdit_setWordWrapMode(QTextEdit* self, int policy) {
	self->setWordWrapMode(static_cast<QTextOption::WrapMode>(policy));
}

bool QTextEdit_find(QTextEdit* self, struct miqt_string exp) {
	QString exp_QString = QString::fromUtf8(exp.data, exp.len);
	return self->find(exp_QString);
}

bool QTextEdit_findWithExp(QTextEdit* self, QRegularExpression* exp) {
	return self->find(*exp);
}

struct miqt_string QTextEdit_toPlainText(const QTextEdit* self) {
	QString _ret = self->toPlainText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextEdit_toHtml(const QTextEdit* self) {
	QString _ret = self->toHtml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextEdit_toMarkdown(const QTextEdit* self) {
	QString _ret = self->toMarkdown();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTextEdit_ensureCursorVisible(QTextEdit* self) {
	self->ensureCursorVisible();
}

QVariant* QTextEdit_loadResource(QTextEdit* self, int type, QUrl* name) {
	return new QVariant(self->loadResource(static_cast<int>(type), *name));
}

QMenu* QTextEdit_createStandardContextMenu(QTextEdit* self) {
	return self->createStandardContextMenu();
}

QMenu* QTextEdit_createStandardContextMenuWithPosition(QTextEdit* self, QPoint* position) {
	return self->createStandardContextMenu(*position);
}

QTextCursor* QTextEdit_cursorForPosition(const QTextEdit* self, QPoint* pos) {
	return new QTextCursor(self->cursorForPosition(*pos));
}

QRect* QTextEdit_cursorRect(const QTextEdit* self, QTextCursor* cursor) {
	return new QRect(self->cursorRect(*cursor));
}

QRect* QTextEdit_cursorRect2(const QTextEdit* self) {
	return new QRect(self->cursorRect());
}

struct miqt_string QTextEdit_anchorAt(const QTextEdit* self, QPoint* pos) {
	QString _ret = self->anchorAt(*pos);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTextEdit_overwriteMode(const QTextEdit* self) {
	return self->overwriteMode();
}

void QTextEdit_setOverwriteMode(QTextEdit* self, bool overwrite) {
	self->setOverwriteMode(overwrite);
}

double QTextEdit_tabStopDistance(const QTextEdit* self) {
	qreal _ret = self->tabStopDistance();
	return static_cast<double>(_ret);
}

void QTextEdit_setTabStopDistance(QTextEdit* self, double distance) {
	self->setTabStopDistance(static_cast<qreal>(distance));
}

int QTextEdit_cursorWidth(const QTextEdit* self) {
	return self->cursorWidth();
}

void QTextEdit_setCursorWidth(QTextEdit* self, int width) {
	self->setCursorWidth(static_cast<int>(width));
}

bool QTextEdit_acceptRichText(const QTextEdit* self) {
	return self->acceptRichText();
}

void QTextEdit_setAcceptRichText(QTextEdit* self, bool accept) {
	self->setAcceptRichText(accept);
}

void QTextEdit_setExtraSelections(QTextEdit* self, struct miqt_array /* of QTextEdit__ExtraSelection* */  selections) {
	QList<QTextEdit::ExtraSelection> selections_QList;
	selections_QList.reserve(selections.len);
	QTextEdit__ExtraSelection** selections_arr = static_cast<QTextEdit__ExtraSelection**>(selections.data);
	for(size_t i = 0; i < selections.len; ++i) {
		selections_QList.push_back(*(selections_arr[i]));
	}
	self->setExtraSelections(selections_QList);
}

struct miqt_array /* of QTextEdit__ExtraSelection* */  QTextEdit_extraSelections(const QTextEdit* self) {
	QList<QTextEdit::ExtraSelection> _ret = self->extraSelections();
	// Convert QList<> from C++ memory to manually-managed C memory
	QTextEdit__ExtraSelection** _arr = static_cast<QTextEdit__ExtraSelection**>(malloc(sizeof(QTextEdit__ExtraSelection*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QTextEdit::ExtraSelection(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QTextEdit_moveCursor(QTextEdit* self, int operation) {
	self->moveCursor(static_cast<QTextCursor::MoveOperation>(operation));
}

bool QTextEdit_canPaste(const QTextEdit* self) {
	return self->canPaste();
}

void QTextEdit_print(const QTextEdit* self, QPagedPaintDevice* printer) {
	self->print(printer);
}

QVariant* QTextEdit_inputMethodQuery(const QTextEdit* self, int property) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));
}

QVariant* QTextEdit_inputMethodQuery2(const QTextEdit* self, int query, QVariant* argument) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query), *argument));
}

void QTextEdit_setFontPointSize(QTextEdit* self, double s) {
	self->setFontPointSize(static_cast<qreal>(s));
}

void QTextEdit_setFontFamily(QTextEdit* self, struct miqt_string fontFamily) {
	QString fontFamily_QString = QString::fromUtf8(fontFamily.data, fontFamily.len);
	self->setFontFamily(fontFamily_QString);
}

void QTextEdit_setFontWeight(QTextEdit* self, int w) {
	self->setFontWeight(static_cast<int>(w));
}

void QTextEdit_setFontUnderline(QTextEdit* self, bool b) {
	self->setFontUnderline(b);
}

void QTextEdit_setFontItalic(QTextEdit* self, bool b) {
	self->setFontItalic(b);
}

void QTextEdit_setTextColor(QTextEdit* self, QColor* c) {
	self->setTextColor(*c);
}

void QTextEdit_setTextBackgroundColor(QTextEdit* self, QColor* c) {
	self->setTextBackgroundColor(*c);
}

void QTextEdit_setCurrentFont(QTextEdit* self, QFont* f) {
	self->setCurrentFont(*f);
}

void QTextEdit_setAlignment(QTextEdit* self, int a) {
	self->setAlignment(static_cast<Qt::Alignment>(a));
}

void QTextEdit_setPlainText(QTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setPlainText(text_QString);
}

void QTextEdit_setHtml(QTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setHtml(text_QString);
}

void QTextEdit_setMarkdown(QTextEdit* self, struct miqt_string markdown) {
	QString markdown_QString = QString::fromUtf8(markdown.data, markdown.len);
	self->setMarkdown(markdown_QString);
}

void QTextEdit_setText(QTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

void QTextEdit_cut(QTextEdit* self) {
	self->cut();
}

void QTextEdit_copy(QTextEdit* self) {
	self->copy();
}

void QTextEdit_paste(QTextEdit* self) {
	self->paste();
}

void QTextEdit_undo(QTextEdit* self) {
	self->undo();
}

void QTextEdit_redo(QTextEdit* self) {
	self->redo();
}

void QTextEdit_clear(QTextEdit* self) {
	self->clear();
}

void QTextEdit_selectAll(QTextEdit* self) {
	self->selectAll();
}

void QTextEdit_insertPlainText(QTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertPlainText(text_QString);
}

void QTextEdit_insertHtml(QTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertHtml(text_QString);
}

void QTextEdit_append(QTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->append(text_QString);
}

void QTextEdit_scrollToAnchor(QTextEdit* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->scrollToAnchor(name_QString);
}

void QTextEdit_zoomIn(QTextEdit* self) {
	self->zoomIn();
}

void QTextEdit_zoomOut(QTextEdit* self) {
	self->zoomOut();
}

void QTextEdit_textChanged(QTextEdit* self) {
	self->textChanged();
}

void QTextEdit_connect_textChanged(VirtualQTextEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)()>(&QTextEdit::textChanged), self, local_caller{slot, callback, release});
}

void QTextEdit_undoAvailable(QTextEdit* self, bool b) {
	self->undoAvailable(b);
}

void QTextEdit_connect_undoAvailable(VirtualQTextEdit* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool b) {
			bool sigval1 = b;
			callback(slot, sigval1);
		}
	};
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)(bool)>(&QTextEdit::undoAvailable), self, local_caller{slot, callback, release});
}

void QTextEdit_redoAvailable(QTextEdit* self, bool b) {
	self->redoAvailable(b);
}

void QTextEdit_connect_redoAvailable(VirtualQTextEdit* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool b) {
			bool sigval1 = b;
			callback(slot, sigval1);
		}
	};
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)(bool)>(&QTextEdit::redoAvailable), self, local_caller{slot, callback, release});
}

void QTextEdit_currentCharFormatChanged(QTextEdit* self, QTextCharFormat* format) {
	self->currentCharFormatChanged(*format);
}

void QTextEdit_connect_currentCharFormatChanged(VirtualQTextEdit* self, intptr_t slot, void (*callback)(intptr_t, QTextCharFormat*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTextCharFormat*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTextCharFormat*);
		void operator()(const QTextCharFormat& format) {
			const QTextCharFormat& format_ret = format;
			// Cast returned reference into pointer
			QTextCharFormat* sigval1 = const_cast<QTextCharFormat*>(&format_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)(const QTextCharFormat&)>(&QTextEdit::currentCharFormatChanged), self, local_caller{slot, callback, release});
}

void QTextEdit_copyAvailable(QTextEdit* self, bool b) {
	self->copyAvailable(b);
}

void QTextEdit_connect_copyAvailable(VirtualQTextEdit* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool b) {
			bool sigval1 = b;
			callback(slot, sigval1);
		}
	};
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)(bool)>(&QTextEdit::copyAvailable), self, local_caller{slot, callback, release});
}

void QTextEdit_selectionChanged(QTextEdit* self) {
	self->selectionChanged();
}

void QTextEdit_connect_selectionChanged(VirtualQTextEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)()>(&QTextEdit::selectionChanged), self, local_caller{slot, callback, release});
}

void QTextEdit_cursorPositionChanged(QTextEdit* self) {
	self->cursorPositionChanged();
}

void QTextEdit_connect_cursorPositionChanged(VirtualQTextEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)()>(&QTextEdit::cursorPositionChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QTextEdit_tr2(const char* s, const char* c) {
	QString _ret = QTextEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QTextEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTextEdit_find2(QTextEdit* self, struct miqt_string exp, int options) {
	QString exp_QString = QString::fromUtf8(exp.data, exp.len);
	return self->find(exp_QString, static_cast<QTextDocument::FindFlags>(options));
}

bool QTextEdit_find22(QTextEdit* self, QRegularExpression* exp, int options) {
	return self->find(*exp, static_cast<QTextDocument::FindFlags>(options));
}

struct miqt_string QTextEdit_toMarkdown1(const QTextEdit* self, int features) {
	QString _ret = self->toMarkdown(static_cast<QTextDocument::MarkdownFeatures>(features));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTextEdit_moveCursor2(QTextEdit* self, int operation, int mode) {
	self->moveCursor(static_cast<QTextCursor::MoveOperation>(operation), static_cast<QTextCursor::MoveMode>(mode));
}

void QTextEdit_zoomIn1(QTextEdit* self, int range) {
	self->zoomIn(static_cast<int>(range));
}

void QTextEdit_zoomOut1(QTextEdit* self, int range) {
	self->zoomOut(static_cast<int>(range));
}

QMetaObject* QTextEdit_virtualbase_metaObject(const VirtualQTextEdit* self) {

	return (QMetaObject*) self->QTextEdit::metaObject();
}

void* QTextEdit_virtualbase_metacast(VirtualQTextEdit* self, const char* param1) {

	return self->QTextEdit::qt_metacast(param1);
}

int QTextEdit_virtualbase_metacall(VirtualQTextEdit* self, int param1, int param2, void** param3) {

	return self->QTextEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QVariant* QTextEdit_virtualbase_loadResource(VirtualQTextEdit* self, int type, QUrl* name) {

	return new QVariant(self->QTextEdit::loadResource(static_cast<int>(type), *name));
}

QVariant* QTextEdit_virtualbase_inputMethodQuery(const VirtualQTextEdit* self, int property) {

	return new QVariant(self->QTextEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));
}

bool QTextEdit_virtualbase_event(VirtualQTextEdit* self, QEvent* e) {

	return self->QTextEdit::event(e);
}

void QTextEdit_virtualbase_timerEvent(VirtualQTextEdit* self, QTimerEvent* e) {

	self->QTextEdit::timerEvent(e);
}

void QTextEdit_virtualbase_keyPressEvent(VirtualQTextEdit* self, QKeyEvent* e) {

	self->QTextEdit::keyPressEvent(e);
}

void QTextEdit_virtualbase_keyReleaseEvent(VirtualQTextEdit* self, QKeyEvent* e) {

	self->QTextEdit::keyReleaseEvent(e);
}

void QTextEdit_virtualbase_resizeEvent(VirtualQTextEdit* self, QResizeEvent* e) {

	self->QTextEdit::resizeEvent(e);
}

void QTextEdit_virtualbase_paintEvent(VirtualQTextEdit* self, QPaintEvent* e) {

	self->QTextEdit::paintEvent(e);
}

void QTextEdit_virtualbase_mousePressEvent(VirtualQTextEdit* self, QMouseEvent* e) {

	self->QTextEdit::mousePressEvent(e);
}

void QTextEdit_virtualbase_mouseMoveEvent(VirtualQTextEdit* self, QMouseEvent* e) {

	self->QTextEdit::mouseMoveEvent(e);
}

void QTextEdit_virtualbase_mouseReleaseEvent(VirtualQTextEdit* self, QMouseEvent* e) {

	self->QTextEdit::mouseReleaseEvent(e);
}

void QTextEdit_virtualbase_mouseDoubleClickEvent(VirtualQTextEdit* self, QMouseEvent* e) {

	self->QTextEdit::mouseDoubleClickEvent(e);
}

bool QTextEdit_virtualbase_focusNextPrevChild(VirtualQTextEdit* self, bool next) {

	return self->QTextEdit::focusNextPrevChild(next);
}

void QTextEdit_virtualbase_contextMenuEvent(VirtualQTextEdit* self, QContextMenuEvent* e) {

	self->QTextEdit::contextMenuEvent(e);
}

void QTextEdit_virtualbase_dragEnterEvent(VirtualQTextEdit* self, QDragEnterEvent* e) {

	self->QTextEdit::dragEnterEvent(e);
}

void QTextEdit_virtualbase_dragLeaveEvent(VirtualQTextEdit* self, QDragLeaveEvent* e) {

	self->QTextEdit::dragLeaveEvent(e);
}

void QTextEdit_virtualbase_dragMoveEvent(VirtualQTextEdit* self, QDragMoveEvent* e) {

	self->QTextEdit::dragMoveEvent(e);
}

void QTextEdit_virtualbase_dropEvent(VirtualQTextEdit* self, QDropEvent* e) {

	self->QTextEdit::dropEvent(e);
}

void QTextEdit_virtualbase_focusInEvent(VirtualQTextEdit* self, QFocusEvent* e) {

	self->QTextEdit::focusInEvent(e);
}

void QTextEdit_virtualbase_focusOutEvent(VirtualQTextEdit* self, QFocusEvent* e) {

	self->QTextEdit::focusOutEvent(e);
}

void QTextEdit_virtualbase_showEvent(VirtualQTextEdit* self, QShowEvent* param1) {

	self->QTextEdit::showEvent(param1);
}

void QTextEdit_virtualbase_changeEvent(VirtualQTextEdit* self, QEvent* e) {

	self->QTextEdit::changeEvent(e);
}

void QTextEdit_virtualbase_wheelEvent(VirtualQTextEdit* self, QWheelEvent* e) {

	self->QTextEdit::wheelEvent(e);
}

QMimeData* QTextEdit_virtualbase_createMimeDataFromSelection(const VirtualQTextEdit* self) {

	return self->QTextEdit::createMimeDataFromSelection();
}

bool QTextEdit_virtualbase_canInsertFromMimeData(const VirtualQTextEdit* self, QMimeData* source) {

	return self->QTextEdit::canInsertFromMimeData(source);
}

void QTextEdit_virtualbase_insertFromMimeData(VirtualQTextEdit* self, QMimeData* source) {

	self->QTextEdit::insertFromMimeData(source);
}

void QTextEdit_virtualbase_inputMethodEvent(VirtualQTextEdit* self, QInputMethodEvent* param1) {

	self->QTextEdit::inputMethodEvent(param1);
}

void QTextEdit_virtualbase_scrollContentsBy(VirtualQTextEdit* self, int dx, int dy) {

	self->QTextEdit::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QTextEdit_virtualbase_doSetTextCursor(VirtualQTextEdit* self, QTextCursor* cursor) {

	self->QTextEdit::doSetTextCursor(*cursor);
}

QSize* QTextEdit_virtualbase_minimumSizeHint(const VirtualQTextEdit* self) {

	return new QSize(self->QTextEdit::minimumSizeHint());
}

QSize* QTextEdit_virtualbase_sizeHint(const VirtualQTextEdit* self) {

	return new QSize(self->QTextEdit::sizeHint());
}

void QTextEdit_virtualbase_setupViewport(VirtualQTextEdit* self, QWidget* viewport) {

	self->QTextEdit::setupViewport(viewport);
}

bool QTextEdit_virtualbase_eventFilter(VirtualQTextEdit* self, QObject* param1, QEvent* param2) {

	return self->QTextEdit::eventFilter(param1, param2);
}

bool QTextEdit_virtualbase_viewportEvent(VirtualQTextEdit* self, QEvent* param1) {

	return self->QTextEdit::viewportEvent(param1);
}

QSize* QTextEdit_virtualbase_viewportSizeHint(const VirtualQTextEdit* self) {

	return new QSize(self->QTextEdit::viewportSizeHint());
}

void QTextEdit_virtualbase_initStyleOption(const VirtualQTextEdit* self, QStyleOptionFrame* option) {

	self->QTextEdit::initStyleOption(option);
}

int QTextEdit_virtualbase_devType(const VirtualQTextEdit* self) {

	return self->QTextEdit::devType();
}

void QTextEdit_virtualbase_setVisible(VirtualQTextEdit* self, bool visible) {

	self->QTextEdit::setVisible(visible);
}

int QTextEdit_virtualbase_heightForWidth(const VirtualQTextEdit* self, int param1) {

	return self->QTextEdit::heightForWidth(static_cast<int>(param1));
}

bool QTextEdit_virtualbase_hasHeightForWidth(const VirtualQTextEdit* self) {

	return self->QTextEdit::hasHeightForWidth();
}

QPaintEngine* QTextEdit_virtualbase_paintEngine(const VirtualQTextEdit* self) {

	return self->QTextEdit::paintEngine();
}

void QTextEdit_virtualbase_enterEvent(VirtualQTextEdit* self, QEnterEvent* event) {

	self->QTextEdit::enterEvent(event);
}

void QTextEdit_virtualbase_leaveEvent(VirtualQTextEdit* self, QEvent* event) {

	self->QTextEdit::leaveEvent(event);
}

void QTextEdit_virtualbase_moveEvent(VirtualQTextEdit* self, QMoveEvent* event) {

	self->QTextEdit::moveEvent(event);
}

void QTextEdit_virtualbase_closeEvent(VirtualQTextEdit* self, QCloseEvent* event) {

	self->QTextEdit::closeEvent(event);
}

void QTextEdit_virtualbase_tabletEvent(VirtualQTextEdit* self, QTabletEvent* event) {

	self->QTextEdit::tabletEvent(event);
}

void QTextEdit_virtualbase_actionEvent(VirtualQTextEdit* self, QActionEvent* event) {

	self->QTextEdit::actionEvent(event);
}

void QTextEdit_virtualbase_hideEvent(VirtualQTextEdit* self, QHideEvent* event) {

	self->QTextEdit::hideEvent(event);
}

bool QTextEdit_virtualbase_nativeEvent(VirtualQTextEdit* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QTextEdit::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QTextEdit_virtualbase_metric(const VirtualQTextEdit* self, int param1) {

	return self->QTextEdit::metric(static_cast<VirtualQTextEdit::PaintDeviceMetric>(param1));
}

void QTextEdit_virtualbase_initPainter(const VirtualQTextEdit* self, QPainter* painter) {

	self->QTextEdit::initPainter(painter);
}

QPaintDevice* QTextEdit_virtualbase_redirected(const VirtualQTextEdit* self, QPoint* offset) {

	return self->QTextEdit::redirected(offset);
}

QPainter* QTextEdit_virtualbase_sharedPainter(const VirtualQTextEdit* self) {

	return self->QTextEdit::sharedPainter();
}

void QTextEdit_virtualbase_childEvent(VirtualQTextEdit* self, QChildEvent* event) {

	self->QTextEdit::childEvent(event);
}

void QTextEdit_virtualbase_customEvent(VirtualQTextEdit* self, QEvent* event) {

	self->QTextEdit::customEvent(event);
}

void QTextEdit_virtualbase_connectNotify(VirtualQTextEdit* self, QMetaMethod* signal) {

	self->QTextEdit::connectNotify(*signal);
}

void QTextEdit_virtualbase_disconnectNotify(VirtualQTextEdit* self, QMetaMethod* signal) {

	self->QTextEdit::disconnectNotify(*signal);
}

const QMetaObject* QTextEdit_staticMetaObject() { return &QTextEdit::staticMetaObject; }

const QTextEdit_VTable* QTextEdit_vtbl(const VirtualQTextEdit* self) { return self->vtbl; }
void* QTextEdit_vdata(const VirtualQTextEdit* self) { return self->vdata; }
void QTextEdit_setVdata(VirtualQTextEdit* self, void* vdata) { self->vdata = vdata; }

void QTextEdit_protectedbase_zoomInF(VirtualQTextEdit* self, float range) {
	self->zoomInF(static_cast<float>(range));
}

void QTextEdit_protectedbase_setViewportMargins(VirtualQTextEdit* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QTextEdit_protectedbase_viewportMargins(const VirtualQTextEdit* self) {
	return new QMargins(self->viewportMargins());
}

void QTextEdit_protectedbase_drawFrame(VirtualQTextEdit* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QTextEdit_protectedbase_updateMicroFocus(VirtualQTextEdit* self) {
	self->updateMicroFocus();
}

void QTextEdit_protectedbase_create(VirtualQTextEdit* self) {
	self->create();
}

void QTextEdit_protectedbase_destroy(VirtualQTextEdit* self) {
	self->destroy();
}

bool QTextEdit_protectedbase_focusNextChild(VirtualQTextEdit* self) {
	return self->focusNextChild();
}

bool QTextEdit_protectedbase_focusPreviousChild(VirtualQTextEdit* self) {
	return self->focusPreviousChild();
}

QObject* QTextEdit_protectedbase_sender(const VirtualQTextEdit* self) {
	return self->sender();
}

int QTextEdit_protectedbase_senderSignalIndex(const VirtualQTextEdit* self) {
	return self->senderSignalIndex();
}

int QTextEdit_protectedbase_receivers(const VirtualQTextEdit* self, const char* signal) {
	return self->receivers(signal);
}

bool QTextEdit_protectedbase_isSignalConnected(const VirtualQTextEdit* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTextEdit_delete(QTextEdit* self) {
	delete self;
}

QTextEdit__ExtraSelection* QTextEdit__ExtraSelection_new(QTextEdit__ExtraSelection* param1) {
	return new QTextEdit__ExtraSelection(*param1);
}

void QTextEdit__ExtraSelection_operatorAssign(QTextEdit__ExtraSelection* self, QTextEdit__ExtraSelection* param1) {
	self->operator=(*param1);
}

void QTextEdit__ExtraSelection_delete(QTextEdit__ExtraSelection* self) {
	delete self;
}

