#include <QAbstractScrollArea>
#include <QAbstractTextDocumentLayout>
#define WORKAROUND_INNER_CLASS_DEFINITION_QAbstractTextDocumentLayout__PaintContext
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
#include <QPlainTextDocumentLayout>
#include <QPlainTextEdit>
#include <QPoint>
#include <QPointF>
#include <QRect>
#include <QRectF>
#include <QRegularExpression>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTextBlock>
#include <QTextCharFormat>
#include <QTextCursor>
#include <QTextDocument>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTextEdit__ExtraSelection
#include <QTextFormat>
#include <QTextFrame>
#include <QTextInlineObject>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qplaintextedit.h>
#include "gen_qplaintextedit.h"
class VirtualQPlainTextEdit final : public QPlainTextEdit {
	const QPlainTextEdit_VTable* vtbl;
	void* vdata;
public:
	friend const QPlainTextEdit_VTable* QPlainTextEdit_vtbl(const VirtualQPlainTextEdit* self);
	friend void* QPlainTextEdit_vdata(const VirtualQPlainTextEdit* self);
	friend void QPlainTextEdit_setVdata(VirtualQPlainTextEdit* self, void* vdata);

	VirtualQPlainTextEdit(const QPlainTextEdit_VTable* vtbl, void* vdata, QWidget* parent): QPlainTextEdit(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQPlainTextEdit(const QPlainTextEdit_VTable* vtbl, void* vdata): QPlainTextEdit(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPlainTextEdit(const QPlainTextEdit_VTable* vtbl, void* vdata, const QString& text): QPlainTextEdit(text), vtbl(vtbl), vdata(vdata) {}
	VirtualQPlainTextEdit(const QPlainTextEdit_VTable* vtbl, void* vdata, const QString& text, QWidget* parent): QPlainTextEdit(text, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPlainTextEdit() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPlainTextEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPlainTextEdit_virtualbase_metaObject(const VirtualQPlainTextEdit* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPlainTextEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPlainTextEdit_virtualbase_metacast(VirtualQPlainTextEdit* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPlainTextEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPlainTextEdit_virtualbase_metacall(VirtualQPlainTextEdit* self, int param1, int param2, void** param3);

	virtual QVariant loadResource(int type, const QUrl& name) override {
		if (vtbl->loadResource == 0) {
			return QPlainTextEdit::loadResource(type, name);
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

	friend QVariant* QPlainTextEdit_virtualbase_loadResource(VirtualQPlainTextEdit* self, int type, QUrl* name);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery property) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPlainTextEdit::inputMethodQuery(property);
		}

		Qt::InputMethodQuery property_ret = property;
		int sigval1 = static_cast<int>(property_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QPlainTextEdit_virtualbase_inputMethodQuery(const VirtualQPlainTextEdit* self, int property);

	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QPlainTextEdit::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPlainTextEdit_virtualbase_event(VirtualQPlainTextEdit* self, QEvent* e);

	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QPlainTextEdit::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_timerEvent(VirtualQPlainTextEdit* self, QTimerEvent* e);

	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QPlainTextEdit::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_keyPressEvent(VirtualQPlainTextEdit* self, QKeyEvent* e);

	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPlainTextEdit::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_keyReleaseEvent(VirtualQPlainTextEdit* self, QKeyEvent* e);

	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QPlainTextEdit::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_resizeEvent(VirtualQPlainTextEdit* self, QResizeEvent* e);

	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QPlainTextEdit::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_paintEvent(VirtualQPlainTextEdit* self, QPaintEvent* e);

	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QPlainTextEdit::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_mousePressEvent(VirtualQPlainTextEdit* self, QMouseEvent* e);

	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPlainTextEdit::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_mouseMoveEvent(VirtualQPlainTextEdit* self, QMouseEvent* e);

	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPlainTextEdit::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_mouseReleaseEvent(VirtualQPlainTextEdit* self, QMouseEvent* e);

	virtual void mouseDoubleClickEvent(QMouseEvent* e) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPlainTextEdit::mouseDoubleClickEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_mouseDoubleClickEvent(VirtualQPlainTextEdit* self, QMouseEvent* e);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPlainTextEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QPlainTextEdit_virtualbase_focusNextPrevChild(VirtualQPlainTextEdit* self, bool next);

	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QPlainTextEdit::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_contextMenuEvent(VirtualQPlainTextEdit* self, QContextMenuEvent* e);

	virtual void dragEnterEvent(QDragEnterEvent* e) override {
		if (vtbl->dragEnterEvent == 0) {
			QPlainTextEdit::dragEnterEvent(e);
			return;
		}

		QDragEnterEvent* sigval1 = e;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_dragEnterEvent(VirtualQPlainTextEdit* self, QDragEnterEvent* e);

	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPlainTextEdit::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_dragLeaveEvent(VirtualQPlainTextEdit* self, QDragLeaveEvent* e);

	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QPlainTextEdit::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_dragMoveEvent(VirtualQPlainTextEdit* self, QDragMoveEvent* e);

	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QPlainTextEdit::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_dropEvent(VirtualQPlainTextEdit* self, QDropEvent* e);

	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QPlainTextEdit::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_focusInEvent(VirtualQPlainTextEdit* self, QFocusEvent* e);

	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QPlainTextEdit::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_focusOutEvent(VirtualQPlainTextEdit* self, QFocusEvent* e);

	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QPlainTextEdit::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_showEvent(VirtualQPlainTextEdit* self, QShowEvent* param1);

	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QPlainTextEdit::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_changeEvent(VirtualQPlainTextEdit* self, QEvent* e);

	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QPlainTextEdit::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_wheelEvent(VirtualQPlainTextEdit* self, QWheelEvent* e);

	virtual QMimeData* createMimeDataFromSelection() const override {
		if (vtbl->createMimeDataFromSelection == 0) {
			return QPlainTextEdit::createMimeDataFromSelection();
		}


		QMimeData* callback_return_value = vtbl->createMimeDataFromSelection(this);

		return callback_return_value;
	}

	friend QMimeData* QPlainTextEdit_virtualbase_createMimeDataFromSelection(const VirtualQPlainTextEdit* self);

	virtual bool canInsertFromMimeData(const QMimeData* source) const override {
		if (vtbl->canInsertFromMimeData == 0) {
			return QPlainTextEdit::canInsertFromMimeData(source);
		}

		QMimeData* sigval1 = (QMimeData*) source;

		bool callback_return_value = vtbl->canInsertFromMimeData(this, sigval1);

		return callback_return_value;
	}

	friend bool QPlainTextEdit_virtualbase_canInsertFromMimeData(const VirtualQPlainTextEdit* self, QMimeData* source);

	virtual void insertFromMimeData(const QMimeData* source) override {
		if (vtbl->insertFromMimeData == 0) {
			QPlainTextEdit::insertFromMimeData(source);
			return;
		}

		QMimeData* sigval1 = (QMimeData*) source;

		vtbl->insertFromMimeData(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_insertFromMimeData(VirtualQPlainTextEdit* self, QMimeData* source);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPlainTextEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_inputMethodEvent(VirtualQPlainTextEdit* self, QInputMethodEvent* param1);

	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QPlainTextEdit::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(this, sigval1, sigval2);

	}

	friend void QPlainTextEdit_virtualbase_scrollContentsBy(VirtualQPlainTextEdit* self, int dx, int dy);

	virtual void doSetTextCursor(const QTextCursor& cursor) override {
		if (vtbl->doSetTextCursor == 0) {
			QPlainTextEdit::doSetTextCursor(cursor);
			return;
		}

		const QTextCursor& cursor_ret = cursor;
		// Cast returned reference into pointer
		QTextCursor* sigval1 = const_cast<QTextCursor*>(&cursor_ret);

		vtbl->doSetTextCursor(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_doSetTextCursor(VirtualQPlainTextEdit* self, QTextCursor* cursor);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPlainTextEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPlainTextEdit_virtualbase_minimumSizeHint(const VirtualQPlainTextEdit* self);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPlainTextEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPlainTextEdit_virtualbase_sizeHint(const VirtualQPlainTextEdit* self);

	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QPlainTextEdit::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_setupViewport(VirtualQPlainTextEdit* self, QWidget* viewport);

	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPlainTextEdit::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPlainTextEdit_virtualbase_eventFilter(VirtualQPlainTextEdit* self, QObject* param1, QEvent* param2);

	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QPlainTextEdit::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(this, sigval1);

		return callback_return_value;
	}

	friend bool QPlainTextEdit_virtualbase_viewportEvent(VirtualQPlainTextEdit* self, QEvent* param1);

	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QPlainTextEdit::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QPlainTextEdit_virtualbase_viewportSizeHint(const VirtualQPlainTextEdit* self);

	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QPlainTextEdit::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_initStyleOption(const VirtualQPlainTextEdit* self, QStyleOptionFrame* option);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPlainTextEdit::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPlainTextEdit_virtualbase_devType(const VirtualQPlainTextEdit* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPlainTextEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_setVisible(VirtualQPlainTextEdit* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPlainTextEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPlainTextEdit_virtualbase_heightForWidth(const VirtualQPlainTextEdit* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPlainTextEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QPlainTextEdit_virtualbase_hasHeightForWidth(const VirtualQPlainTextEdit* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPlainTextEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPlainTextEdit_virtualbase_paintEngine(const VirtualQPlainTextEdit* self);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPlainTextEdit::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_enterEvent(VirtualQPlainTextEdit* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPlainTextEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_leaveEvent(VirtualQPlainTextEdit* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPlainTextEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_moveEvent(VirtualQPlainTextEdit* self, QMoveEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QPlainTextEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_closeEvent(VirtualQPlainTextEdit* self, QCloseEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPlainTextEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_tabletEvent(VirtualQPlainTextEdit* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPlainTextEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_actionEvent(VirtualQPlainTextEdit* self, QActionEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPlainTextEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_hideEvent(VirtualQPlainTextEdit* self, QHideEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPlainTextEdit::nativeEvent(eventType, message, result);
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

	friend bool QPlainTextEdit_virtualbase_nativeEvent(VirtualQPlainTextEdit* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPlainTextEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPlainTextEdit_virtualbase_metric(const VirtualQPlainTextEdit* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPlainTextEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_initPainter(const VirtualQPlainTextEdit* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPlainTextEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPlainTextEdit_virtualbase_redirected(const VirtualQPlainTextEdit* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPlainTextEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPlainTextEdit_virtualbase_sharedPainter(const VirtualQPlainTextEdit* self);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPlainTextEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_childEvent(VirtualQPlainTextEdit* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPlainTextEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_customEvent(VirtualQPlainTextEdit* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPlainTextEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_connectNotify(VirtualQPlainTextEdit* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPlainTextEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPlainTextEdit_virtualbase_disconnectNotify(VirtualQPlainTextEdit* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QTextBlock* QPlainTextEdit_protectedbase_firstVisibleBlock(const VirtualQPlainTextEdit* self);
	friend QPointF* QPlainTextEdit_protectedbase_contentOffset(const VirtualQPlainTextEdit* self);
	friend QRectF* QPlainTextEdit_protectedbase_blockBoundingRect(const VirtualQPlainTextEdit* self, QTextBlock* block);
	friend QRectF* QPlainTextEdit_protectedbase_blockBoundingGeometry(const VirtualQPlainTextEdit* self, QTextBlock* block);
	friend QAbstractTextDocumentLayout__PaintContext* QPlainTextEdit_protectedbase_getPaintContext(const VirtualQPlainTextEdit* self);
	friend void QPlainTextEdit_protectedbase_zoomInF(VirtualQPlainTextEdit* self, float range);
	friend void QPlainTextEdit_protectedbase_setViewportMargins(VirtualQPlainTextEdit* self, int left, int top, int right, int bottom);
	friend QMargins* QPlainTextEdit_protectedbase_viewportMargins(const VirtualQPlainTextEdit* self);
	friend void QPlainTextEdit_protectedbase_drawFrame(VirtualQPlainTextEdit* self, QPainter* param1);
	friend void QPlainTextEdit_protectedbase_updateMicroFocus(VirtualQPlainTextEdit* self);
	friend void QPlainTextEdit_protectedbase_create(VirtualQPlainTextEdit* self);
	friend void QPlainTextEdit_protectedbase_destroy(VirtualQPlainTextEdit* self);
	friend bool QPlainTextEdit_protectedbase_focusNextChild(VirtualQPlainTextEdit* self);
	friend bool QPlainTextEdit_protectedbase_focusPreviousChild(VirtualQPlainTextEdit* self);
	friend QObject* QPlainTextEdit_protectedbase_sender(const VirtualQPlainTextEdit* self);
	friend int QPlainTextEdit_protectedbase_senderSignalIndex(const VirtualQPlainTextEdit* self);
	friend int QPlainTextEdit_protectedbase_receivers(const VirtualQPlainTextEdit* self, const char* signal);
	friend bool QPlainTextEdit_protectedbase_isSignalConnected(const VirtualQPlainTextEdit* self, QMetaMethod* signal);
};

VirtualQPlainTextEdit* QPlainTextEdit_new(const QPlainTextEdit_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQPlainTextEdit(vtbl, vdata, parent);
}

VirtualQPlainTextEdit* QPlainTextEdit_new2(const QPlainTextEdit_VTable* vtbl, void* vdata) {
	return new VirtualQPlainTextEdit(vtbl, vdata);
}

VirtualQPlainTextEdit* QPlainTextEdit_new3(const QPlainTextEdit_VTable* vtbl, void* vdata, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQPlainTextEdit(vtbl, vdata, text_QString);
}

VirtualQPlainTextEdit* QPlainTextEdit_new4(const QPlainTextEdit_VTable* vtbl, void* vdata, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQPlainTextEdit(vtbl, vdata, text_QString, parent);
}

void QPlainTextEdit_virtbase(QPlainTextEdit* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QPlainTextEdit_metaObject(const QPlainTextEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPlainTextEdit_metacast(QPlainTextEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPlainTextEdit_metacall(QPlainTextEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPlainTextEdit_tr(const char* s) {
	QString _ret = QPlainTextEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPlainTextEdit_setDocument(QPlainTextEdit* self, QTextDocument* document) {
	self->setDocument(document);
}

QTextDocument* QPlainTextEdit_document(const QPlainTextEdit* self) {
	return self->document();
}

void QPlainTextEdit_setPlaceholderText(QPlainTextEdit* self, struct miqt_string placeholderText) {
	QString placeholderText_QString = QString::fromUtf8(placeholderText.data, placeholderText.len);
	self->setPlaceholderText(placeholderText_QString);
}

struct miqt_string QPlainTextEdit_placeholderText(const QPlainTextEdit* self) {
	QString _ret = self->placeholderText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPlainTextEdit_setTextCursor(QPlainTextEdit* self, QTextCursor* cursor) {
	self->setTextCursor(*cursor);
}

QTextCursor* QPlainTextEdit_textCursor(const QPlainTextEdit* self) {
	return new QTextCursor(self->textCursor());
}

bool QPlainTextEdit_isReadOnly(const QPlainTextEdit* self) {
	return self->isReadOnly();
}

void QPlainTextEdit_setReadOnly(QPlainTextEdit* self, bool ro) {
	self->setReadOnly(ro);
}

void QPlainTextEdit_setTextInteractionFlags(QPlainTextEdit* self, int flags) {
	self->setTextInteractionFlags(static_cast<Qt::TextInteractionFlags>(flags));
}

int QPlainTextEdit_textInteractionFlags(const QPlainTextEdit* self) {
	Qt::TextInteractionFlags _ret = self->textInteractionFlags();
	return static_cast<int>(_ret);
}

void QPlainTextEdit_mergeCurrentCharFormat(QPlainTextEdit* self, QTextCharFormat* modifier) {
	self->mergeCurrentCharFormat(*modifier);
}

void QPlainTextEdit_setCurrentCharFormat(QPlainTextEdit* self, QTextCharFormat* format) {
	self->setCurrentCharFormat(*format);
}

QTextCharFormat* QPlainTextEdit_currentCharFormat(const QPlainTextEdit* self) {
	return new QTextCharFormat(self->currentCharFormat());
}

bool QPlainTextEdit_tabChangesFocus(const QPlainTextEdit* self) {
	return self->tabChangesFocus();
}

void QPlainTextEdit_setTabChangesFocus(QPlainTextEdit* self, bool b) {
	self->setTabChangesFocus(b);
}

void QPlainTextEdit_setDocumentTitle(QPlainTextEdit* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setDocumentTitle(title_QString);
}

struct miqt_string QPlainTextEdit_documentTitle(const QPlainTextEdit* self) {
	QString _ret = self->documentTitle();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QPlainTextEdit_isUndoRedoEnabled(const QPlainTextEdit* self) {
	return self->isUndoRedoEnabled();
}

void QPlainTextEdit_setUndoRedoEnabled(QPlainTextEdit* self, bool enable) {
	self->setUndoRedoEnabled(enable);
}

void QPlainTextEdit_setMaximumBlockCount(QPlainTextEdit* self, int maximum) {
	self->setMaximumBlockCount(static_cast<int>(maximum));
}

int QPlainTextEdit_maximumBlockCount(const QPlainTextEdit* self) {
	return self->maximumBlockCount();
}

int QPlainTextEdit_lineWrapMode(const QPlainTextEdit* self) {
	QPlainTextEdit::LineWrapMode _ret = self->lineWrapMode();
	return static_cast<int>(_ret);
}

void QPlainTextEdit_setLineWrapMode(QPlainTextEdit* self, int mode) {
	self->setLineWrapMode(static_cast<QPlainTextEdit::LineWrapMode>(mode));
}

int QPlainTextEdit_wordWrapMode(const QPlainTextEdit* self) {
	QTextOption::WrapMode _ret = self->wordWrapMode();
	return static_cast<int>(_ret);
}

void QPlainTextEdit_setWordWrapMode(QPlainTextEdit* self, int policy) {
	self->setWordWrapMode(static_cast<QTextOption::WrapMode>(policy));
}

void QPlainTextEdit_setBackgroundVisible(QPlainTextEdit* self, bool visible) {
	self->setBackgroundVisible(visible);
}

bool QPlainTextEdit_backgroundVisible(const QPlainTextEdit* self) {
	return self->backgroundVisible();
}

void QPlainTextEdit_setCenterOnScroll(QPlainTextEdit* self, bool enabled) {
	self->setCenterOnScroll(enabled);
}

bool QPlainTextEdit_centerOnScroll(const QPlainTextEdit* self) {
	return self->centerOnScroll();
}

bool QPlainTextEdit_find(QPlainTextEdit* self, struct miqt_string exp) {
	QString exp_QString = QString::fromUtf8(exp.data, exp.len);
	return self->find(exp_QString);
}

bool QPlainTextEdit_findWithExp(QPlainTextEdit* self, QRegularExpression* exp) {
	return self->find(*exp);
}

struct miqt_string QPlainTextEdit_toPlainText(const QPlainTextEdit* self) {
	QString _ret = self->toPlainText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPlainTextEdit_ensureCursorVisible(QPlainTextEdit* self) {
	self->ensureCursorVisible();
}

QVariant* QPlainTextEdit_loadResource(QPlainTextEdit* self, int type, QUrl* name) {
	return new QVariant(self->loadResource(static_cast<int>(type), *name));
}

QMenu* QPlainTextEdit_createStandardContextMenu(QPlainTextEdit* self) {
	return self->createStandardContextMenu();
}

QMenu* QPlainTextEdit_createStandardContextMenuWithPosition(QPlainTextEdit* self, QPoint* position) {
	return self->createStandardContextMenu(*position);
}

QTextCursor* QPlainTextEdit_cursorForPosition(const QPlainTextEdit* self, QPoint* pos) {
	return new QTextCursor(self->cursorForPosition(*pos));
}

QRect* QPlainTextEdit_cursorRect(const QPlainTextEdit* self, QTextCursor* cursor) {
	return new QRect(self->cursorRect(*cursor));
}

QRect* QPlainTextEdit_cursorRect2(const QPlainTextEdit* self) {
	return new QRect(self->cursorRect());
}

struct miqt_string QPlainTextEdit_anchorAt(const QPlainTextEdit* self, QPoint* pos) {
	QString _ret = self->anchorAt(*pos);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QPlainTextEdit_overwriteMode(const QPlainTextEdit* self) {
	return self->overwriteMode();
}

void QPlainTextEdit_setOverwriteMode(QPlainTextEdit* self, bool overwrite) {
	self->setOverwriteMode(overwrite);
}

double QPlainTextEdit_tabStopDistance(const QPlainTextEdit* self) {
	qreal _ret = self->tabStopDistance();
	return static_cast<double>(_ret);
}

void QPlainTextEdit_setTabStopDistance(QPlainTextEdit* self, double distance) {
	self->setTabStopDistance(static_cast<qreal>(distance));
}

int QPlainTextEdit_cursorWidth(const QPlainTextEdit* self) {
	return self->cursorWidth();
}

void QPlainTextEdit_setCursorWidth(QPlainTextEdit* self, int width) {
	self->setCursorWidth(static_cast<int>(width));
}

void QPlainTextEdit_setExtraSelections(QPlainTextEdit* self, struct miqt_array /* of QTextEdit__ExtraSelection* */  selections) {
	QList<QTextEdit::ExtraSelection> selections_QList;
	selections_QList.reserve(selections.len);
	QTextEdit__ExtraSelection** selections_arr = static_cast<QTextEdit__ExtraSelection**>(selections.data);
	for(size_t i = 0; i < selections.len; ++i) {
		selections_QList.push_back(*(selections_arr[i]));
	}
	self->setExtraSelections(selections_QList);
}

struct miqt_array /* of QTextEdit__ExtraSelection* */  QPlainTextEdit_extraSelections(const QPlainTextEdit* self) {
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

void QPlainTextEdit_moveCursor(QPlainTextEdit* self, int operation) {
	self->moveCursor(static_cast<QTextCursor::MoveOperation>(operation));
}

bool QPlainTextEdit_canPaste(const QPlainTextEdit* self) {
	return self->canPaste();
}

void QPlainTextEdit_print(const QPlainTextEdit* self, QPagedPaintDevice* printer) {
	self->print(printer);
}

int QPlainTextEdit_blockCount(const QPlainTextEdit* self) {
	return self->blockCount();
}

QVariant* QPlainTextEdit_inputMethodQuery(const QPlainTextEdit* self, int property) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));
}

QVariant* QPlainTextEdit_inputMethodQuery2(const QPlainTextEdit* self, int query, QVariant* argument) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query), *argument));
}

void QPlainTextEdit_setPlainText(QPlainTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setPlainText(text_QString);
}

void QPlainTextEdit_cut(QPlainTextEdit* self) {
	self->cut();
}

void QPlainTextEdit_copy(QPlainTextEdit* self) {
	self->copy();
}

void QPlainTextEdit_paste(QPlainTextEdit* self) {
	self->paste();
}

void QPlainTextEdit_undo(QPlainTextEdit* self) {
	self->undo();
}

void QPlainTextEdit_redo(QPlainTextEdit* self) {
	self->redo();
}

void QPlainTextEdit_clear(QPlainTextEdit* self) {
	self->clear();
}

void QPlainTextEdit_selectAll(QPlainTextEdit* self) {
	self->selectAll();
}

void QPlainTextEdit_insertPlainText(QPlainTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertPlainText(text_QString);
}

void QPlainTextEdit_appendPlainText(QPlainTextEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->appendPlainText(text_QString);
}

void QPlainTextEdit_appendHtml(QPlainTextEdit* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->appendHtml(html_QString);
}

void QPlainTextEdit_centerCursor(QPlainTextEdit* self) {
	self->centerCursor();
}

void QPlainTextEdit_zoomIn(QPlainTextEdit* self) {
	self->zoomIn();
}

void QPlainTextEdit_zoomOut(QPlainTextEdit* self) {
	self->zoomOut();
}

void QPlainTextEdit_textChanged(QPlainTextEdit* self) {
	self->textChanged();
}

void QPlainTextEdit_connect_textChanged(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)()>(&QPlainTextEdit::textChanged), self, local_caller{slot, callback, release});
}

void QPlainTextEdit_undoAvailable(QPlainTextEdit* self, bool b) {
	self->undoAvailable(b);
}

void QPlainTextEdit_connect_undoAvailable(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool b) {
			bool sigval1 = b;
			callback(slot, sigval1);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)(bool)>(&QPlainTextEdit::undoAvailable), self, local_caller{slot, callback, release});
}

void QPlainTextEdit_redoAvailable(QPlainTextEdit* self, bool b) {
	self->redoAvailable(b);
}

void QPlainTextEdit_connect_redoAvailable(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool b) {
			bool sigval1 = b;
			callback(slot, sigval1);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)(bool)>(&QPlainTextEdit::redoAvailable), self, local_caller{slot, callback, release});
}

void QPlainTextEdit_copyAvailable(QPlainTextEdit* self, bool b) {
	self->copyAvailable(b);
}

void QPlainTextEdit_connect_copyAvailable(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool b) {
			bool sigval1 = b;
			callback(slot, sigval1);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)(bool)>(&QPlainTextEdit::copyAvailable), self, local_caller{slot, callback, release});
}

void QPlainTextEdit_selectionChanged(QPlainTextEdit* self) {
	self->selectionChanged();
}

void QPlainTextEdit_connect_selectionChanged(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)()>(&QPlainTextEdit::selectionChanged), self, local_caller{slot, callback, release});
}

void QPlainTextEdit_cursorPositionChanged(QPlainTextEdit* self) {
	self->cursorPositionChanged();
}

void QPlainTextEdit_connect_cursorPositionChanged(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)()>(&QPlainTextEdit::cursorPositionChanged), self, local_caller{slot, callback, release});
}

void QPlainTextEdit_updateRequest(QPlainTextEdit* self, QRect* rect, int dy) {
	self->updateRequest(*rect, static_cast<int>(dy));
}

void QPlainTextEdit_connect_updateRequest(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t, QRect*, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QRect*, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QRect*, int);
		void operator()(const QRect& rect, int dy) {
			const QRect& rect_ret = rect;
			// Cast returned reference into pointer
			QRect* sigval1 = const_cast<QRect*>(&rect_ret);
			int sigval2 = dy;
			callback(slot, sigval1, sigval2);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)(const QRect&, int)>(&QPlainTextEdit::updateRequest), self, local_caller{slot, callback, release});
}

void QPlainTextEdit_blockCountChanged(QPlainTextEdit* self, int newBlockCount) {
	self->blockCountChanged(static_cast<int>(newBlockCount));
}

void QPlainTextEdit_connect_blockCountChanged(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, int);
		void operator()(int newBlockCount) {
			int sigval1 = newBlockCount;
			callback(slot, sigval1);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)(int)>(&QPlainTextEdit::blockCountChanged), self, local_caller{slot, callback, release});
}

void QPlainTextEdit_modificationChanged(QPlainTextEdit* self, bool param1) {
	self->modificationChanged(param1);
}

void QPlainTextEdit_connect_modificationChanged(VirtualQPlainTextEdit* self, intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, bool), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, bool);
		void operator()(bool param1) {
			bool sigval1 = param1;
			callback(slot, sigval1);
		}
	};
	VirtualQPlainTextEdit::connect(self, static_cast<void (QPlainTextEdit::*)(bool)>(&QPlainTextEdit::modificationChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QPlainTextEdit_tr2(const char* s, const char* c) {
	QString _ret = QPlainTextEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPlainTextEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QPlainTextEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QPlainTextEdit_find2(QPlainTextEdit* self, struct miqt_string exp, int options) {
	QString exp_QString = QString::fromUtf8(exp.data, exp.len);
	return self->find(exp_QString, static_cast<QTextDocument::FindFlags>(options));
}

bool QPlainTextEdit_find22(QPlainTextEdit* self, QRegularExpression* exp, int options) {
	return self->find(*exp, static_cast<QTextDocument::FindFlags>(options));
}

void QPlainTextEdit_moveCursor2(QPlainTextEdit* self, int operation, int mode) {
	self->moveCursor(static_cast<QTextCursor::MoveOperation>(operation), static_cast<QTextCursor::MoveMode>(mode));
}

void QPlainTextEdit_zoomIn1(QPlainTextEdit* self, int range) {
	self->zoomIn(static_cast<int>(range));
}

void QPlainTextEdit_zoomOut1(QPlainTextEdit* self, int range) {
	self->zoomOut(static_cast<int>(range));
}

QMetaObject* QPlainTextEdit_virtualbase_metaObject(const VirtualQPlainTextEdit* self) {

	return (QMetaObject*) self->QPlainTextEdit::metaObject();
}

void* QPlainTextEdit_virtualbase_metacast(VirtualQPlainTextEdit* self, const char* param1) {

	return self->QPlainTextEdit::qt_metacast(param1);
}

int QPlainTextEdit_virtualbase_metacall(VirtualQPlainTextEdit* self, int param1, int param2, void** param3) {

	return self->QPlainTextEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QVariant* QPlainTextEdit_virtualbase_loadResource(VirtualQPlainTextEdit* self, int type, QUrl* name) {

	return new QVariant(self->QPlainTextEdit::loadResource(static_cast<int>(type), *name));
}

QVariant* QPlainTextEdit_virtualbase_inputMethodQuery(const VirtualQPlainTextEdit* self, int property) {

	return new QVariant(self->QPlainTextEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));
}

bool QPlainTextEdit_virtualbase_event(VirtualQPlainTextEdit* self, QEvent* e) {

	return self->QPlainTextEdit::event(e);
}

void QPlainTextEdit_virtualbase_timerEvent(VirtualQPlainTextEdit* self, QTimerEvent* e) {

	self->QPlainTextEdit::timerEvent(e);
}

void QPlainTextEdit_virtualbase_keyPressEvent(VirtualQPlainTextEdit* self, QKeyEvent* e) {

	self->QPlainTextEdit::keyPressEvent(e);
}

void QPlainTextEdit_virtualbase_keyReleaseEvent(VirtualQPlainTextEdit* self, QKeyEvent* e) {

	self->QPlainTextEdit::keyReleaseEvent(e);
}

void QPlainTextEdit_virtualbase_resizeEvent(VirtualQPlainTextEdit* self, QResizeEvent* e) {

	self->QPlainTextEdit::resizeEvent(e);
}

void QPlainTextEdit_virtualbase_paintEvent(VirtualQPlainTextEdit* self, QPaintEvent* e) {

	self->QPlainTextEdit::paintEvent(e);
}

void QPlainTextEdit_virtualbase_mousePressEvent(VirtualQPlainTextEdit* self, QMouseEvent* e) {

	self->QPlainTextEdit::mousePressEvent(e);
}

void QPlainTextEdit_virtualbase_mouseMoveEvent(VirtualQPlainTextEdit* self, QMouseEvent* e) {

	self->QPlainTextEdit::mouseMoveEvent(e);
}

void QPlainTextEdit_virtualbase_mouseReleaseEvent(VirtualQPlainTextEdit* self, QMouseEvent* e) {

	self->QPlainTextEdit::mouseReleaseEvent(e);
}

void QPlainTextEdit_virtualbase_mouseDoubleClickEvent(VirtualQPlainTextEdit* self, QMouseEvent* e) {

	self->QPlainTextEdit::mouseDoubleClickEvent(e);
}

bool QPlainTextEdit_virtualbase_focusNextPrevChild(VirtualQPlainTextEdit* self, bool next) {

	return self->QPlainTextEdit::focusNextPrevChild(next);
}

void QPlainTextEdit_virtualbase_contextMenuEvent(VirtualQPlainTextEdit* self, QContextMenuEvent* e) {

	self->QPlainTextEdit::contextMenuEvent(e);
}

void QPlainTextEdit_virtualbase_dragEnterEvent(VirtualQPlainTextEdit* self, QDragEnterEvent* e) {

	self->QPlainTextEdit::dragEnterEvent(e);
}

void QPlainTextEdit_virtualbase_dragLeaveEvent(VirtualQPlainTextEdit* self, QDragLeaveEvent* e) {

	self->QPlainTextEdit::dragLeaveEvent(e);
}

void QPlainTextEdit_virtualbase_dragMoveEvent(VirtualQPlainTextEdit* self, QDragMoveEvent* e) {

	self->QPlainTextEdit::dragMoveEvent(e);
}

void QPlainTextEdit_virtualbase_dropEvent(VirtualQPlainTextEdit* self, QDropEvent* e) {

	self->QPlainTextEdit::dropEvent(e);
}

void QPlainTextEdit_virtualbase_focusInEvent(VirtualQPlainTextEdit* self, QFocusEvent* e) {

	self->QPlainTextEdit::focusInEvent(e);
}

void QPlainTextEdit_virtualbase_focusOutEvent(VirtualQPlainTextEdit* self, QFocusEvent* e) {

	self->QPlainTextEdit::focusOutEvent(e);
}

void QPlainTextEdit_virtualbase_showEvent(VirtualQPlainTextEdit* self, QShowEvent* param1) {

	self->QPlainTextEdit::showEvent(param1);
}

void QPlainTextEdit_virtualbase_changeEvent(VirtualQPlainTextEdit* self, QEvent* e) {

	self->QPlainTextEdit::changeEvent(e);
}

void QPlainTextEdit_virtualbase_wheelEvent(VirtualQPlainTextEdit* self, QWheelEvent* e) {

	self->QPlainTextEdit::wheelEvent(e);
}

QMimeData* QPlainTextEdit_virtualbase_createMimeDataFromSelection(const VirtualQPlainTextEdit* self) {

	return self->QPlainTextEdit::createMimeDataFromSelection();
}

bool QPlainTextEdit_virtualbase_canInsertFromMimeData(const VirtualQPlainTextEdit* self, QMimeData* source) {

	return self->QPlainTextEdit::canInsertFromMimeData(source);
}

void QPlainTextEdit_virtualbase_insertFromMimeData(VirtualQPlainTextEdit* self, QMimeData* source) {

	self->QPlainTextEdit::insertFromMimeData(source);
}

void QPlainTextEdit_virtualbase_inputMethodEvent(VirtualQPlainTextEdit* self, QInputMethodEvent* param1) {

	self->QPlainTextEdit::inputMethodEvent(param1);
}

void QPlainTextEdit_virtualbase_scrollContentsBy(VirtualQPlainTextEdit* self, int dx, int dy) {

	self->QPlainTextEdit::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));
}

void QPlainTextEdit_virtualbase_doSetTextCursor(VirtualQPlainTextEdit* self, QTextCursor* cursor) {

	self->QPlainTextEdit::doSetTextCursor(*cursor);
}

QSize* QPlainTextEdit_virtualbase_minimumSizeHint(const VirtualQPlainTextEdit* self) {

	return new QSize(self->QPlainTextEdit::minimumSizeHint());
}

QSize* QPlainTextEdit_virtualbase_sizeHint(const VirtualQPlainTextEdit* self) {

	return new QSize(self->QPlainTextEdit::sizeHint());
}

void QPlainTextEdit_virtualbase_setupViewport(VirtualQPlainTextEdit* self, QWidget* viewport) {

	self->QPlainTextEdit::setupViewport(viewport);
}

bool QPlainTextEdit_virtualbase_eventFilter(VirtualQPlainTextEdit* self, QObject* param1, QEvent* param2) {

	return self->QPlainTextEdit::eventFilter(param1, param2);
}

bool QPlainTextEdit_virtualbase_viewportEvent(VirtualQPlainTextEdit* self, QEvent* param1) {

	return self->QPlainTextEdit::viewportEvent(param1);
}

QSize* QPlainTextEdit_virtualbase_viewportSizeHint(const VirtualQPlainTextEdit* self) {

	return new QSize(self->QPlainTextEdit::viewportSizeHint());
}

void QPlainTextEdit_virtualbase_initStyleOption(const VirtualQPlainTextEdit* self, QStyleOptionFrame* option) {

	self->QPlainTextEdit::initStyleOption(option);
}

int QPlainTextEdit_virtualbase_devType(const VirtualQPlainTextEdit* self) {

	return self->QPlainTextEdit::devType();
}

void QPlainTextEdit_virtualbase_setVisible(VirtualQPlainTextEdit* self, bool visible) {

	self->QPlainTextEdit::setVisible(visible);
}

int QPlainTextEdit_virtualbase_heightForWidth(const VirtualQPlainTextEdit* self, int param1) {

	return self->QPlainTextEdit::heightForWidth(static_cast<int>(param1));
}

bool QPlainTextEdit_virtualbase_hasHeightForWidth(const VirtualQPlainTextEdit* self) {

	return self->QPlainTextEdit::hasHeightForWidth();
}

QPaintEngine* QPlainTextEdit_virtualbase_paintEngine(const VirtualQPlainTextEdit* self) {

	return self->QPlainTextEdit::paintEngine();
}

void QPlainTextEdit_virtualbase_enterEvent(VirtualQPlainTextEdit* self, QEnterEvent* event) {

	self->QPlainTextEdit::enterEvent(event);
}

void QPlainTextEdit_virtualbase_leaveEvent(VirtualQPlainTextEdit* self, QEvent* event) {

	self->QPlainTextEdit::leaveEvent(event);
}

void QPlainTextEdit_virtualbase_moveEvent(VirtualQPlainTextEdit* self, QMoveEvent* event) {

	self->QPlainTextEdit::moveEvent(event);
}

void QPlainTextEdit_virtualbase_closeEvent(VirtualQPlainTextEdit* self, QCloseEvent* event) {

	self->QPlainTextEdit::closeEvent(event);
}

void QPlainTextEdit_virtualbase_tabletEvent(VirtualQPlainTextEdit* self, QTabletEvent* event) {

	self->QPlainTextEdit::tabletEvent(event);
}

void QPlainTextEdit_virtualbase_actionEvent(VirtualQPlainTextEdit* self, QActionEvent* event) {

	self->QPlainTextEdit::actionEvent(event);
}

void QPlainTextEdit_virtualbase_hideEvent(VirtualQPlainTextEdit* self, QHideEvent* event) {

	self->QPlainTextEdit::hideEvent(event);
}

bool QPlainTextEdit_virtualbase_nativeEvent(VirtualQPlainTextEdit* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QPlainTextEdit::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QPlainTextEdit_virtualbase_metric(const VirtualQPlainTextEdit* self, int param1) {

	return self->QPlainTextEdit::metric(static_cast<VirtualQPlainTextEdit::PaintDeviceMetric>(param1));
}

void QPlainTextEdit_virtualbase_initPainter(const VirtualQPlainTextEdit* self, QPainter* painter) {

	self->QPlainTextEdit::initPainter(painter);
}

QPaintDevice* QPlainTextEdit_virtualbase_redirected(const VirtualQPlainTextEdit* self, QPoint* offset) {

	return self->QPlainTextEdit::redirected(offset);
}

QPainter* QPlainTextEdit_virtualbase_sharedPainter(const VirtualQPlainTextEdit* self) {

	return self->QPlainTextEdit::sharedPainter();
}

void QPlainTextEdit_virtualbase_childEvent(VirtualQPlainTextEdit* self, QChildEvent* event) {

	self->QPlainTextEdit::childEvent(event);
}

void QPlainTextEdit_virtualbase_customEvent(VirtualQPlainTextEdit* self, QEvent* event) {

	self->QPlainTextEdit::customEvent(event);
}

void QPlainTextEdit_virtualbase_connectNotify(VirtualQPlainTextEdit* self, QMetaMethod* signal) {

	self->QPlainTextEdit::connectNotify(*signal);
}

void QPlainTextEdit_virtualbase_disconnectNotify(VirtualQPlainTextEdit* self, QMetaMethod* signal) {

	self->QPlainTextEdit::disconnectNotify(*signal);
}

const QMetaObject* QPlainTextEdit_staticMetaObject() { return &QPlainTextEdit::staticMetaObject; }

const QPlainTextEdit_VTable* QPlainTextEdit_vtbl(const VirtualQPlainTextEdit* self) { return self->vtbl; }
void* QPlainTextEdit_vdata(const VirtualQPlainTextEdit* self) { return self->vdata; }
void QPlainTextEdit_setVdata(VirtualQPlainTextEdit* self, void* vdata) { self->vdata = vdata; }

QTextBlock* QPlainTextEdit_protectedbase_firstVisibleBlock(const VirtualQPlainTextEdit* self) {
	return new QTextBlock(self->firstVisibleBlock());
}

QPointF* QPlainTextEdit_protectedbase_contentOffset(const VirtualQPlainTextEdit* self) {
	return new QPointF(self->contentOffset());
}

QRectF* QPlainTextEdit_protectedbase_blockBoundingRect(const VirtualQPlainTextEdit* self, QTextBlock* block) {
	return new QRectF(self->blockBoundingRect(*block));
}

QRectF* QPlainTextEdit_protectedbase_blockBoundingGeometry(const VirtualQPlainTextEdit* self, QTextBlock* block) {
	return new QRectF(self->blockBoundingGeometry(*block));
}

QAbstractTextDocumentLayout__PaintContext* QPlainTextEdit_protectedbase_getPaintContext(const VirtualQPlainTextEdit* self) {
	return new QAbstractTextDocumentLayout::PaintContext(self->getPaintContext());
}

void QPlainTextEdit_protectedbase_zoomInF(VirtualQPlainTextEdit* self, float range) {
	self->zoomInF(static_cast<float>(range));
}

void QPlainTextEdit_protectedbase_setViewportMargins(VirtualQPlainTextEdit* self, int left, int top, int right, int bottom) {
	self->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

QMargins* QPlainTextEdit_protectedbase_viewportMargins(const VirtualQPlainTextEdit* self) {
	return new QMargins(self->viewportMargins());
}

void QPlainTextEdit_protectedbase_drawFrame(VirtualQPlainTextEdit* self, QPainter* param1) {
	self->drawFrame(param1);
}

void QPlainTextEdit_protectedbase_updateMicroFocus(VirtualQPlainTextEdit* self) {
	self->updateMicroFocus();
}

void QPlainTextEdit_protectedbase_create(VirtualQPlainTextEdit* self) {
	self->create();
}

void QPlainTextEdit_protectedbase_destroy(VirtualQPlainTextEdit* self) {
	self->destroy();
}

bool QPlainTextEdit_protectedbase_focusNextChild(VirtualQPlainTextEdit* self) {
	return self->focusNextChild();
}

bool QPlainTextEdit_protectedbase_focusPreviousChild(VirtualQPlainTextEdit* self) {
	return self->focusPreviousChild();
}

QObject* QPlainTextEdit_protectedbase_sender(const VirtualQPlainTextEdit* self) {
	return self->sender();
}

int QPlainTextEdit_protectedbase_senderSignalIndex(const VirtualQPlainTextEdit* self) {
	return self->senderSignalIndex();
}

int QPlainTextEdit_protectedbase_receivers(const VirtualQPlainTextEdit* self, const char* signal) {
	return self->receivers(signal);
}

bool QPlainTextEdit_protectedbase_isSignalConnected(const VirtualQPlainTextEdit* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPlainTextEdit_delete(QPlainTextEdit* self) {
	delete self;
}

class VirtualQPlainTextDocumentLayout final : public QPlainTextDocumentLayout {
	const QPlainTextDocumentLayout_VTable* vtbl;
	void* vdata;
public:
	friend const QPlainTextDocumentLayout_VTable* QPlainTextDocumentLayout_vtbl(const VirtualQPlainTextDocumentLayout* self);
	friend void* QPlainTextDocumentLayout_vdata(const VirtualQPlainTextDocumentLayout* self);
	friend void QPlainTextDocumentLayout_setVdata(VirtualQPlainTextDocumentLayout* self, void* vdata);

	VirtualQPlainTextDocumentLayout(const QPlainTextDocumentLayout_VTable* vtbl, void* vdata, QTextDocument* document): QPlainTextDocumentLayout(document), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPlainTextDocumentLayout() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPlainTextDocumentLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QPlainTextDocumentLayout_virtualbase_metaObject(const VirtualQPlainTextDocumentLayout* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPlainTextDocumentLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QPlainTextDocumentLayout_virtualbase_metacast(VirtualQPlainTextDocumentLayout* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPlainTextDocumentLayout::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QPlainTextDocumentLayout_virtualbase_metacall(VirtualQPlainTextDocumentLayout* self, int param1, int param2, void** param3);

	virtual void draw(QPainter* param1, const QAbstractTextDocumentLayout::PaintContext& param2) override {
		if (vtbl->draw == 0) {
			QPlainTextDocumentLayout::draw(param1, param2);
			return;
		}

		QPainter* sigval1 = param1;
		const QAbstractTextDocumentLayout::PaintContext& param2_ret = param2;
		// Cast returned reference into pointer
		QAbstractTextDocumentLayout__PaintContext* sigval2 = const_cast<QAbstractTextDocumentLayout::PaintContext*>(&param2_ret);

		vtbl->draw(this, sigval1, sigval2);

	}

	friend void QPlainTextDocumentLayout_virtualbase_draw(VirtualQPlainTextDocumentLayout* self, QPainter* param1, QAbstractTextDocumentLayout__PaintContext* param2);

	virtual int hitTest(const QPointF& param1, Qt::HitTestAccuracy param2) const override {
		if (vtbl->hitTest == 0) {
			return QPlainTextDocumentLayout::hitTest(param1, param2);
		}

		const QPointF& param1_ret = param1;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&param1_ret);
		Qt::HitTestAccuracy param2_ret = param2;
		int sigval2 = static_cast<int>(param2_ret);

		int callback_return_value = vtbl->hitTest(this, sigval1, sigval2);

		return static_cast<int>(callback_return_value);
	}

	friend int QPlainTextDocumentLayout_virtualbase_hitTest(const VirtualQPlainTextDocumentLayout* self, QPointF* param1, int param2);

	virtual int pageCount() const override {
		if (vtbl->pageCount == 0) {
			return QPlainTextDocumentLayout::pageCount();
		}


		int callback_return_value = vtbl->pageCount(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPlainTextDocumentLayout_virtualbase_pageCount(const VirtualQPlainTextDocumentLayout* self);

	virtual QSizeF documentSize() const override {
		if (vtbl->documentSize == 0) {
			return QPlainTextDocumentLayout::documentSize();
		}


		QSizeF* callback_return_value = vtbl->documentSize(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSizeF* QPlainTextDocumentLayout_virtualbase_documentSize(const VirtualQPlainTextDocumentLayout* self);

	virtual QRectF frameBoundingRect(QTextFrame* param1) const override {
		if (vtbl->frameBoundingRect == 0) {
			return QPlainTextDocumentLayout::frameBoundingRect(param1);
		}

		QTextFrame* sigval1 = param1;

		QRectF* callback_return_value = vtbl->frameBoundingRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QPlainTextDocumentLayout_virtualbase_frameBoundingRect(const VirtualQPlainTextDocumentLayout* self, QTextFrame* param1);

	virtual QRectF blockBoundingRect(const QTextBlock& block) const override {
		if (vtbl->blockBoundingRect == 0) {
			return QPlainTextDocumentLayout::blockBoundingRect(block);
		}

		const QTextBlock& block_ret = block;
		// Cast returned reference into pointer
		QTextBlock* sigval1 = const_cast<QTextBlock*>(&block_ret);

		QRectF* callback_return_value = vtbl->blockBoundingRect(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QRectF* QPlainTextDocumentLayout_virtualbase_blockBoundingRect(const VirtualQPlainTextDocumentLayout* self, QTextBlock* block);

	virtual void documentChanged(int from, int param2, int charsAdded) override {
		if (vtbl->documentChanged == 0) {
			QPlainTextDocumentLayout::documentChanged(from, param2, charsAdded);
			return;
		}

		int sigval1 = from;
		int sigval2 = param2;
		int sigval3 = charsAdded;

		vtbl->documentChanged(this, sigval1, sigval2, sigval3);

	}

	friend void QPlainTextDocumentLayout_virtualbase_documentChanged(VirtualQPlainTextDocumentLayout* self, int from, int param2, int charsAdded);

	virtual void resizeInlineObject(QTextInlineObject item, int posInDocument, const QTextFormat& format) override {
		if (vtbl->resizeInlineObject == 0) {
			QPlainTextDocumentLayout::resizeInlineObject(item, posInDocument, format);
			return;
		}

		QTextInlineObject* sigval1 = new QTextInlineObject(item);
		int sigval2 = posInDocument;
		const QTextFormat& format_ret = format;
		// Cast returned reference into pointer
		QTextFormat* sigval3 = const_cast<QTextFormat*>(&format_ret);

		vtbl->resizeInlineObject(this, sigval1, sigval2, sigval3);

	}

	friend void QPlainTextDocumentLayout_virtualbase_resizeInlineObject(VirtualQPlainTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);

	virtual void positionInlineObject(QTextInlineObject item, int posInDocument, const QTextFormat& format) override {
		if (vtbl->positionInlineObject == 0) {
			QPlainTextDocumentLayout::positionInlineObject(item, posInDocument, format);
			return;
		}

		QTextInlineObject* sigval1 = new QTextInlineObject(item);
		int sigval2 = posInDocument;
		const QTextFormat& format_ret = format;
		// Cast returned reference into pointer
		QTextFormat* sigval3 = const_cast<QTextFormat*>(&format_ret);

		vtbl->positionInlineObject(this, sigval1, sigval2, sigval3);

	}

	friend void QPlainTextDocumentLayout_virtualbase_positionInlineObject(VirtualQPlainTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format);

	virtual void drawInlineObject(QPainter* painter, const QRectF& rect, QTextInlineObject object, int posInDocument, const QTextFormat& format) override {
		if (vtbl->drawInlineObject == 0) {
			QPlainTextDocumentLayout::drawInlineObject(painter, rect, object, posInDocument, format);
			return;
		}

		QPainter* sigval1 = painter;
		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&rect_ret);
		QTextInlineObject* sigval3 = new QTextInlineObject(object);
		int sigval4 = posInDocument;
		const QTextFormat& format_ret = format;
		// Cast returned reference into pointer
		QTextFormat* sigval5 = const_cast<QTextFormat*>(&format_ret);

		vtbl->drawInlineObject(this, sigval1, sigval2, sigval3, sigval4, sigval5);

	}

	friend void QPlainTextDocumentLayout_virtualbase_drawInlineObject(VirtualQPlainTextDocumentLayout* self, QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPlainTextDocumentLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QPlainTextDocumentLayout_virtualbase_event(VirtualQPlainTextDocumentLayout* self, QEvent* event);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPlainTextDocumentLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QPlainTextDocumentLayout_virtualbase_eventFilter(VirtualQPlainTextDocumentLayout* self, QObject* watched, QEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPlainTextDocumentLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QPlainTextDocumentLayout_virtualbase_timerEvent(VirtualQPlainTextDocumentLayout* self, QTimerEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPlainTextDocumentLayout::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QPlainTextDocumentLayout_virtualbase_childEvent(VirtualQPlainTextDocumentLayout* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPlainTextDocumentLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QPlainTextDocumentLayout_virtualbase_customEvent(VirtualQPlainTextDocumentLayout* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPlainTextDocumentLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QPlainTextDocumentLayout_virtualbase_connectNotify(VirtualQPlainTextDocumentLayout* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPlainTextDocumentLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QPlainTextDocumentLayout_virtualbase_disconnectNotify(VirtualQPlainTextDocumentLayout* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend int QPlainTextDocumentLayout_protectedbase_formatIndex(VirtualQPlainTextDocumentLayout* self, int pos);
	friend QTextCharFormat* QPlainTextDocumentLayout_protectedbase_format(VirtualQPlainTextDocumentLayout* self, int pos);
	friend QObject* QPlainTextDocumentLayout_protectedbase_sender(const VirtualQPlainTextDocumentLayout* self);
	friend int QPlainTextDocumentLayout_protectedbase_senderSignalIndex(const VirtualQPlainTextDocumentLayout* self);
	friend int QPlainTextDocumentLayout_protectedbase_receivers(const VirtualQPlainTextDocumentLayout* self, const char* signal);
	friend bool QPlainTextDocumentLayout_protectedbase_isSignalConnected(const VirtualQPlainTextDocumentLayout* self, QMetaMethod* signal);
};

VirtualQPlainTextDocumentLayout* QPlainTextDocumentLayout_new(const QPlainTextDocumentLayout_VTable* vtbl, void* vdata, QTextDocument* document) {
	return new VirtualQPlainTextDocumentLayout(vtbl, vdata, document);
}

void QPlainTextDocumentLayout_virtbase(QPlainTextDocumentLayout* src, QAbstractTextDocumentLayout** outptr_QAbstractTextDocumentLayout) {
	*outptr_QAbstractTextDocumentLayout = static_cast<QAbstractTextDocumentLayout*>(src);
}

QMetaObject* QPlainTextDocumentLayout_metaObject(const QPlainTextDocumentLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPlainTextDocumentLayout_metacast(QPlainTextDocumentLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPlainTextDocumentLayout_metacall(QPlainTextDocumentLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPlainTextDocumentLayout_tr(const char* s) {
	QString _ret = QPlainTextDocumentLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPlainTextDocumentLayout_draw(QPlainTextDocumentLayout* self, QPainter* param1, QAbstractTextDocumentLayout__PaintContext* param2) {
	self->draw(param1, *param2);
}

int QPlainTextDocumentLayout_hitTest(const QPlainTextDocumentLayout* self, QPointF* param1, int param2) {
	return self->hitTest(*param1, static_cast<Qt::HitTestAccuracy>(param2));
}

int QPlainTextDocumentLayout_pageCount(const QPlainTextDocumentLayout* self) {
	return self->pageCount();
}

QSizeF* QPlainTextDocumentLayout_documentSize(const QPlainTextDocumentLayout* self) {
	return new QSizeF(self->documentSize());
}

QRectF* QPlainTextDocumentLayout_frameBoundingRect(const QPlainTextDocumentLayout* self, QTextFrame* param1) {
	return new QRectF(self->frameBoundingRect(param1));
}

QRectF* QPlainTextDocumentLayout_blockBoundingRect(const QPlainTextDocumentLayout* self, QTextBlock* block) {
	return new QRectF(self->blockBoundingRect(*block));
}

void QPlainTextDocumentLayout_ensureBlockLayout(const QPlainTextDocumentLayout* self, QTextBlock* block) {
	self->ensureBlockLayout(*block);
}

void QPlainTextDocumentLayout_setCursorWidth(QPlainTextDocumentLayout* self, int width) {
	self->setCursorWidth(static_cast<int>(width));
}

int QPlainTextDocumentLayout_cursorWidth(const QPlainTextDocumentLayout* self) {
	return self->cursorWidth();
}

void QPlainTextDocumentLayout_requestUpdate(QPlainTextDocumentLayout* self) {
	self->requestUpdate();
}

struct miqt_string QPlainTextDocumentLayout_tr2(const char* s, const char* c) {
	QString _ret = QPlainTextDocumentLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPlainTextDocumentLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QPlainTextDocumentLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPlainTextDocumentLayout_virtualbase_metaObject(const VirtualQPlainTextDocumentLayout* self) {

	return (QMetaObject*) self->QPlainTextDocumentLayout::metaObject();
}

void* QPlainTextDocumentLayout_virtualbase_metacast(VirtualQPlainTextDocumentLayout* self, const char* param1) {

	return self->QPlainTextDocumentLayout::qt_metacast(param1);
}

int QPlainTextDocumentLayout_virtualbase_metacall(VirtualQPlainTextDocumentLayout* self, int param1, int param2, void** param3) {

	return self->QPlainTextDocumentLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

void QPlainTextDocumentLayout_virtualbase_draw(VirtualQPlainTextDocumentLayout* self, QPainter* param1, QAbstractTextDocumentLayout__PaintContext* param2) {

	self->QPlainTextDocumentLayout::draw(param1, *param2);
}

int QPlainTextDocumentLayout_virtualbase_hitTest(const VirtualQPlainTextDocumentLayout* self, QPointF* param1, int param2) {

	return self->QPlainTextDocumentLayout::hitTest(*param1, static_cast<Qt::HitTestAccuracy>(param2));
}

int QPlainTextDocumentLayout_virtualbase_pageCount(const VirtualQPlainTextDocumentLayout* self) {

	return self->QPlainTextDocumentLayout::pageCount();
}

QSizeF* QPlainTextDocumentLayout_virtualbase_documentSize(const VirtualQPlainTextDocumentLayout* self) {

	return new QSizeF(self->QPlainTextDocumentLayout::documentSize());
}

QRectF* QPlainTextDocumentLayout_virtualbase_frameBoundingRect(const VirtualQPlainTextDocumentLayout* self, QTextFrame* param1) {

	return new QRectF(self->QPlainTextDocumentLayout::frameBoundingRect(param1));
}

QRectF* QPlainTextDocumentLayout_virtualbase_blockBoundingRect(const VirtualQPlainTextDocumentLayout* self, QTextBlock* block) {

	return new QRectF(self->QPlainTextDocumentLayout::blockBoundingRect(*block));
}

void QPlainTextDocumentLayout_virtualbase_documentChanged(VirtualQPlainTextDocumentLayout* self, int from, int param2, int charsAdded) {

	self->QPlainTextDocumentLayout::documentChanged(static_cast<int>(from), static_cast<int>(param2), static_cast<int>(charsAdded));
}

void QPlainTextDocumentLayout_virtualbase_resizeInlineObject(VirtualQPlainTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format) {

	self->QPlainTextDocumentLayout::resizeInlineObject(*item, static_cast<int>(posInDocument), *format);
}

void QPlainTextDocumentLayout_virtualbase_positionInlineObject(VirtualQPlainTextDocumentLayout* self, QTextInlineObject* item, int posInDocument, QTextFormat* format) {

	self->QPlainTextDocumentLayout::positionInlineObject(*item, static_cast<int>(posInDocument), *format);
}

void QPlainTextDocumentLayout_virtualbase_drawInlineObject(VirtualQPlainTextDocumentLayout* self, QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format) {

	self->QPlainTextDocumentLayout::drawInlineObject(painter, *rect, *object, static_cast<int>(posInDocument), *format);
}

bool QPlainTextDocumentLayout_virtualbase_event(VirtualQPlainTextDocumentLayout* self, QEvent* event) {

	return self->QPlainTextDocumentLayout::event(event);
}

bool QPlainTextDocumentLayout_virtualbase_eventFilter(VirtualQPlainTextDocumentLayout* self, QObject* watched, QEvent* event) {

	return self->QPlainTextDocumentLayout::eventFilter(watched, event);
}

void QPlainTextDocumentLayout_virtualbase_timerEvent(VirtualQPlainTextDocumentLayout* self, QTimerEvent* event) {

	self->QPlainTextDocumentLayout::timerEvent(event);
}

void QPlainTextDocumentLayout_virtualbase_childEvent(VirtualQPlainTextDocumentLayout* self, QChildEvent* event) {

	self->QPlainTextDocumentLayout::childEvent(event);
}

void QPlainTextDocumentLayout_virtualbase_customEvent(VirtualQPlainTextDocumentLayout* self, QEvent* event) {

	self->QPlainTextDocumentLayout::customEvent(event);
}

void QPlainTextDocumentLayout_virtualbase_connectNotify(VirtualQPlainTextDocumentLayout* self, QMetaMethod* signal) {

	self->QPlainTextDocumentLayout::connectNotify(*signal);
}

void QPlainTextDocumentLayout_virtualbase_disconnectNotify(VirtualQPlainTextDocumentLayout* self, QMetaMethod* signal) {

	self->QPlainTextDocumentLayout::disconnectNotify(*signal);
}

const QMetaObject* QPlainTextDocumentLayout_staticMetaObject() { return &QPlainTextDocumentLayout::staticMetaObject; }

const QPlainTextDocumentLayout_VTable* QPlainTextDocumentLayout_vtbl(const VirtualQPlainTextDocumentLayout* self) { return self->vtbl; }
void* QPlainTextDocumentLayout_vdata(const VirtualQPlainTextDocumentLayout* self) { return self->vdata; }
void QPlainTextDocumentLayout_setVdata(VirtualQPlainTextDocumentLayout* self, void* vdata) { self->vdata = vdata; }

int QPlainTextDocumentLayout_protectedbase_formatIndex(VirtualQPlainTextDocumentLayout* self, int pos) {
	return self->formatIndex(static_cast<int>(pos));
}

QTextCharFormat* QPlainTextDocumentLayout_protectedbase_format(VirtualQPlainTextDocumentLayout* self, int pos) {
	return new QTextCharFormat(self->format(static_cast<int>(pos)));
}

QObject* QPlainTextDocumentLayout_protectedbase_sender(const VirtualQPlainTextDocumentLayout* self) {
	return self->sender();
}

int QPlainTextDocumentLayout_protectedbase_senderSignalIndex(const VirtualQPlainTextDocumentLayout* self) {
	return self->senderSignalIndex();
}

int QPlainTextDocumentLayout_protectedbase_receivers(const VirtualQPlainTextDocumentLayout* self, const char* signal) {
	return self->receivers(signal);
}

bool QPlainTextDocumentLayout_protectedbase_isSignalConnected(const VirtualQPlainTextDocumentLayout* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QPlainTextDocumentLayout_delete(QPlainTextDocumentLayout* self) {
	delete self;
}

