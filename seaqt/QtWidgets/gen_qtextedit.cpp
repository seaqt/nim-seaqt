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
#include <QRegExp>
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

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QTextEdit_textChanged(intptr_t);
void miqt_exec_callback_QTextEdit_undoAvailable(intptr_t, bool);
void miqt_exec_callback_QTextEdit_redoAvailable(intptr_t, bool);
void miqt_exec_callback_QTextEdit_currentCharFormatChanged(intptr_t, QTextCharFormat*);
void miqt_exec_callback_QTextEdit_copyAvailable(intptr_t, bool);
void miqt_exec_callback_QTextEdit_selectionChanged(intptr_t);
void miqt_exec_callback_QTextEdit_cursorPositionChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQTextEdit final : public QTextEdit {
	struct QTextEdit_VTable* vtbl;
public:

	VirtualQTextEdit(struct QTextEdit_VTable* vtbl, QWidget* parent): QTextEdit(parent), vtbl(vtbl) {};
	VirtualQTextEdit(struct QTextEdit_VTable* vtbl): QTextEdit(), vtbl(vtbl) {};
	VirtualQTextEdit(struct QTextEdit_VTable* vtbl, const QString& text): QTextEdit(text), vtbl(vtbl) {};
	VirtualQTextEdit(struct QTextEdit_VTable* vtbl, const QString& text, QWidget* parent): QTextEdit(text, parent), vtbl(vtbl) {};

	virtual ~VirtualQTextEdit() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTextEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTextEdit_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTextEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTextEdit_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTextEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QVariant loadResource(int type, const QUrl& name) override {
		if (vtbl->loadResource == 0) {
			return QTextEdit::loadResource(type, name);
		}

		int sigval1 = type;
		const QUrl& name_ret = name;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&name_ret);

		QVariant* callback_return_value = vtbl->loadResource(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	friend QVariant* QTextEdit_virtualbase_loadResource(void* self, int type, QUrl* name);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery property) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTextEdit::inputMethodQuery(property);
		}

		Qt::InputMethodQuery property_ret = property;
		int sigval1 = static_cast<int>(property_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QTextEdit_virtualbase_inputMethodQuery(const void* self, int property);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QTextEdit::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QTextEdit::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_timerEvent(void* self, QTimerEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QTextEdit::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTextEdit::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QTextEdit::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_resizeEvent(void* self, QResizeEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QTextEdit::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_paintEvent(void* self, QPaintEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QTextEdit::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTextEdit::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTextEdit::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* e) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTextEdit::mouseDoubleClickEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTextEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QTextEdit::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* e) override {
		if (vtbl->dragEnterEvent == 0) {
			QTextEdit::dragEnterEvent(e);
			return;
		}

		QDragEnterEvent* sigval1 = e;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTextEdit::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QTextEdit::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QTextEdit::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_dropEvent(void* self, QDropEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QTextEdit::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_focusInEvent(void* self, QFocusEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QTextEdit::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QTextEdit::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_showEvent(void* self, QShowEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QTextEdit::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QTextEdit::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_wheelEvent(void* self, QWheelEvent* e);

	// Subclass to allow providing a Go implementation
	virtual QMimeData* createMimeDataFromSelection() const override {
		if (vtbl->createMimeDataFromSelection == 0) {
			return QTextEdit::createMimeDataFromSelection();
		}


		QMimeData* callback_return_value = vtbl->createMimeDataFromSelection(vtbl, this);

		return callback_return_value;
	}

	friend QMimeData* QTextEdit_virtualbase_createMimeDataFromSelection(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool canInsertFromMimeData(const QMimeData* source) const override {
		if (vtbl->canInsertFromMimeData == 0) {
			return QTextEdit::canInsertFromMimeData(source);
		}

		QMimeData* sigval1 = (QMimeData*) source;

		bool callback_return_value = vtbl->canInsertFromMimeData(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_canInsertFromMimeData(const void* self, QMimeData* source);

	// Subclass to allow providing a Go implementation
	virtual void insertFromMimeData(const QMimeData* source) override {
		if (vtbl->insertFromMimeData == 0) {
			QTextEdit::insertFromMimeData(source);
			return;
		}

		QMimeData* sigval1 = (QMimeData*) source;

		vtbl->insertFromMimeData(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_insertFromMimeData(void* self, QMimeData* source);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTextEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTextEdit::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	friend void QTextEdit_virtualbase_scrollContentsBy(void* self, int dx, int dy);

	// Subclass to allow providing a Go implementation
	virtual void doSetTextCursor(const QTextCursor& cursor) override {
		if (vtbl->doSetTextCursor == 0) {
			QTextEdit::doSetTextCursor(cursor);
			return;
		}

		const QTextCursor& cursor_ret = cursor;
		// Cast returned reference into pointer
		QTextCursor* sigval1 = const_cast<QTextCursor*>(&cursor_ret);

		vtbl->doSetTextCursor(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_doSetTextCursor(void* self, QTextCursor* cursor);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTextEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTextEdit_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTextEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTextEdit_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTextEdit::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_setupViewport(void* self, QWidget* viewport);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QTextEdit::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QTextEdit::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_viewportEvent(void* self, QEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTextEdit::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTextEdit_virtualbase_viewportSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTextEdit::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextEdit_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTextEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTextEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextEdit_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTextEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTextEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QTextEdit_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTextEdit::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTextEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTextEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTextEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTextEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTextEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTextEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
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
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTextEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTextEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTextEdit_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTextEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTextEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTextEdit_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTextEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QTextEdit_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTextEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTextEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTextEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTextEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTextEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTextEdit_protectedbase_zoomInF(bool* _dynamic_cast_ok, void* self, float range);
	friend void QTextEdit_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
	friend QMargins* QTextEdit_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
	friend void QTextEdit_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QTextEdit_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
	friend void QTextEdit_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QTextEdit_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QTextEdit_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QTextEdit_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QTextEdit_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QTextEdit_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTextEdit_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTextEdit_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTextEdit_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTextEdit* QTextEdit_new(struct QTextEdit_VTable* vtbl, QWidget* parent) {
	return new VirtualQTextEdit(vtbl, parent);
}

QTextEdit* QTextEdit_new2(struct QTextEdit_VTable* vtbl) {
	return new VirtualQTextEdit(vtbl);
}

QTextEdit* QTextEdit_new3(struct QTextEdit_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQTextEdit(vtbl, text_QString);
}

QTextEdit* QTextEdit_new4(struct QTextEdit_VTable* vtbl, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new VirtualQTextEdit(vtbl, text_QString, parent);
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

struct miqt_string QTextEdit_trUtf8(const char* s) {
	QString _ret = QTextEdit::trUtf8(s);
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

bool QTextEdit_findWithExp(QTextEdit* self, QRegExp* exp) {
	return self->find(*exp);
}

bool QTextEdit_find2(QTextEdit* self, QRegularExpression* exp) {
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

int QTextEdit_tabStopWidth(const QTextEdit* self) {
	return self->tabStopWidth();
}

void QTextEdit_setTabStopWidth(QTextEdit* self, int width) {
	self->setTabStopWidth(static_cast<int>(width));
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

void QTextEdit_connect_textChanged(QTextEdit* self, intptr_t slot) {
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)()>(&QTextEdit::textChanged), self, [=]() {
		miqt_exec_callback_QTextEdit_textChanged(slot);
	});
}

void QTextEdit_undoAvailable(QTextEdit* self, bool b) {
	self->undoAvailable(b);
}

void QTextEdit_connect_undoAvailable(QTextEdit* self, intptr_t slot) {
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)(bool)>(&QTextEdit::undoAvailable), self, [=](bool b) {
		bool sigval1 = b;
		miqt_exec_callback_QTextEdit_undoAvailable(slot, sigval1);
	});
}

void QTextEdit_redoAvailable(QTextEdit* self, bool b) {
	self->redoAvailable(b);
}

void QTextEdit_connect_redoAvailable(QTextEdit* self, intptr_t slot) {
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)(bool)>(&QTextEdit::redoAvailable), self, [=](bool b) {
		bool sigval1 = b;
		miqt_exec_callback_QTextEdit_redoAvailable(slot, sigval1);
	});
}

void QTextEdit_currentCharFormatChanged(QTextEdit* self, QTextCharFormat* format) {
	self->currentCharFormatChanged(*format);
}

void QTextEdit_connect_currentCharFormatChanged(QTextEdit* self, intptr_t slot) {
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)(const QTextCharFormat&)>(&QTextEdit::currentCharFormatChanged), self, [=](const QTextCharFormat& format) {
		const QTextCharFormat& format_ret = format;
		// Cast returned reference into pointer
		QTextCharFormat* sigval1 = const_cast<QTextCharFormat*>(&format_ret);
		miqt_exec_callback_QTextEdit_currentCharFormatChanged(slot, sigval1);
	});
}

void QTextEdit_copyAvailable(QTextEdit* self, bool b) {
	self->copyAvailable(b);
}

void QTextEdit_connect_copyAvailable(QTextEdit* self, intptr_t slot) {
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)(bool)>(&QTextEdit::copyAvailable), self, [=](bool b) {
		bool sigval1 = b;
		miqt_exec_callback_QTextEdit_copyAvailable(slot, sigval1);
	});
}

void QTextEdit_selectionChanged(QTextEdit* self) {
	self->selectionChanged();
}

void QTextEdit_connect_selectionChanged(QTextEdit* self, intptr_t slot) {
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)()>(&QTextEdit::selectionChanged), self, [=]() {
		miqt_exec_callback_QTextEdit_selectionChanged(slot);
	});
}

void QTextEdit_cursorPositionChanged(QTextEdit* self) {
	self->cursorPositionChanged();
}

void QTextEdit_connect_cursorPositionChanged(QTextEdit* self, intptr_t slot) {
	VirtualQTextEdit::connect(self, static_cast<void (QTextEdit::*)()>(&QTextEdit::cursorPositionChanged), self, [=]() {
		miqt_exec_callback_QTextEdit_cursorPositionChanged(slot);
	});
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

struct miqt_string QTextEdit_trUtf82(const char* s, const char* c) {
	QString _ret = QTextEdit::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextEdit_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTextEdit::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTextEdit_find22(QTextEdit* self, struct miqt_string exp, int options) {
	QString exp_QString = QString::fromUtf8(exp.data, exp.len);
	return self->find(exp_QString, static_cast<QTextDocument::FindFlags>(options));
}

bool QTextEdit_find23(QTextEdit* self, QRegExp* exp, int options) {
	return self->find(*exp, static_cast<QTextDocument::FindFlags>(options));
}

bool QTextEdit_find24(QTextEdit* self, QRegularExpression* exp, int options) {
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

QMetaObject* QTextEdit_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQTextEdit*)(self) )->QTextEdit::metaObject();

}

void* QTextEdit_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQTextEdit*)(self) )->QTextEdit::qt_metacast(param1);

}

int QTextEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQTextEdit*)(self) )->QTextEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QVariant* QTextEdit_virtualbase_loadResource(void* self, int type, QUrl* name) {

	return new QVariant(( (VirtualQTextEdit*)(self) )->QTextEdit::loadResource(static_cast<int>(type), *name));

}

QVariant* QTextEdit_virtualbase_inputMethodQuery(const void* self, int property) {

	return new QVariant(( (const VirtualQTextEdit*)(self) )->QTextEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));

}

bool QTextEdit_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQTextEdit*)(self) )->QTextEdit::event(e);

}

void QTextEdit_virtualbase_timerEvent(void* self, QTimerEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::timerEvent(e);

}

void QTextEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::keyPressEvent(e);

}

void QTextEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::keyReleaseEvent(e);

}

void QTextEdit_virtualbase_resizeEvent(void* self, QResizeEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::resizeEvent(e);

}

void QTextEdit_virtualbase_paintEvent(void* self, QPaintEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::paintEvent(e);

}

void QTextEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::mousePressEvent(e);

}

void QTextEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::mouseMoveEvent(e);

}

void QTextEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::mouseReleaseEvent(e);

}

void QTextEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::mouseDoubleClickEvent(e);

}

bool QTextEdit_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQTextEdit*)(self) )->QTextEdit::focusNextPrevChild(next);

}

void QTextEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::contextMenuEvent(e);

}

void QTextEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::dragEnterEvent(e);

}

void QTextEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::dragLeaveEvent(e);

}

void QTextEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::dragMoveEvent(e);

}

void QTextEdit_virtualbase_dropEvent(void* self, QDropEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::dropEvent(e);

}

void QTextEdit_virtualbase_focusInEvent(void* self, QFocusEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::focusInEvent(e);

}

void QTextEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::focusOutEvent(e);

}

void QTextEdit_virtualbase_showEvent(void* self, QShowEvent* param1) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::showEvent(param1);

}

void QTextEdit_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::changeEvent(e);

}

void QTextEdit_virtualbase_wheelEvent(void* self, QWheelEvent* e) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::wheelEvent(e);

}

QMimeData* QTextEdit_virtualbase_createMimeDataFromSelection(const void* self) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::createMimeDataFromSelection();

}

bool QTextEdit_virtualbase_canInsertFromMimeData(const void* self, QMimeData* source) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::canInsertFromMimeData(source);

}

void QTextEdit_virtualbase_insertFromMimeData(void* self, QMimeData* source) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::insertFromMimeData(source);

}

void QTextEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::inputMethodEvent(param1);

}

void QTextEdit_virtualbase_scrollContentsBy(void* self, int dx, int dy) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

}

void QTextEdit_virtualbase_doSetTextCursor(void* self, QTextCursor* cursor) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::doSetTextCursor(*cursor);

}

QSize* QTextEdit_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQTextEdit*)(self) )->QTextEdit::minimumSizeHint());

}

QSize* QTextEdit_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQTextEdit*)(self) )->QTextEdit::sizeHint());

}

void QTextEdit_virtualbase_setupViewport(void* self, QWidget* viewport) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::setupViewport(viewport);

}

bool QTextEdit_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {

	return ( (VirtualQTextEdit*)(self) )->QTextEdit::eventFilter(param1, param2);

}

bool QTextEdit_virtualbase_viewportEvent(void* self, QEvent* param1) {

	return ( (VirtualQTextEdit*)(self) )->QTextEdit::viewportEvent(param1);

}

QSize* QTextEdit_virtualbase_viewportSizeHint(const void* self) {

	return new QSize(( (const VirtualQTextEdit*)(self) )->QTextEdit::viewportSizeHint());

}

int QTextEdit_virtualbase_devType(const void* self) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::devType();

}

void QTextEdit_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::setVisible(visible);

}

int QTextEdit_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::heightForWidth(static_cast<int>(param1));

}

bool QTextEdit_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::hasHeightForWidth();

}

QPaintEngine* QTextEdit_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::paintEngine();

}

void QTextEdit_virtualbase_enterEvent(void* self, QEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::enterEvent(event);

}

void QTextEdit_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::leaveEvent(event);

}

void QTextEdit_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::moveEvent(event);

}

void QTextEdit_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::closeEvent(event);

}

void QTextEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::tabletEvent(event);

}

void QTextEdit_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::actionEvent(event);

}

void QTextEdit_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::hideEvent(event);

}

bool QTextEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQTextEdit*)(self) )->QTextEdit::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QTextEdit_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::metric(static_cast<VirtualQTextEdit::PaintDeviceMetric>(param1));

}

void QTextEdit_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQTextEdit*)(self) )->QTextEdit::initPainter(painter);

}

QPaintDevice* QTextEdit_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::redirected(offset);

}

QPainter* QTextEdit_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQTextEdit*)(self) )->QTextEdit::sharedPainter();

}

void QTextEdit_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::childEvent(event);

}

void QTextEdit_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::customEvent(event);

}

void QTextEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::connectNotify(*signal);

}

void QTextEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQTextEdit*)(self) )->QTextEdit::disconnectNotify(*signal);

}

const QMetaObject* QTextEdit_staticMetaObject() { return &QTextEdit::staticMetaObject; }
void QTextEdit_protectedbase_zoomInF(bool* _dynamic_cast_ok, void* self, float range) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->zoomInF(static_cast<float>(range));

}

void QTextEdit_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QTextEdit_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QMargins(self_cast->viewportMargins());

}

void QTextEdit_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QTextEdit_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QTextEdit_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QTextEdit_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QTextEdit_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QTextEdit_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QTextEdit_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QTextEdit_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTextEdit_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTextEdit_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTextEdit_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQTextEdit* self_cast = dynamic_cast<VirtualQTextEdit*>( (QTextEdit*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTextEdit_delete(QTextEdit* self) {
	delete self;
}

QTextEdit__ExtraSelection* QTextEdit__ExtraSelection_new(QTextEdit__ExtraSelection* param1) {
	return new QTextEdit::ExtraSelection(*param1);
}

void QTextEdit__ExtraSelection_operatorAssign(QTextEdit__ExtraSelection* self, QTextEdit__ExtraSelection* param1) {
	self->operator=(*param1);
}

void QTextEdit__ExtraSelection_delete(QTextEdit__ExtraSelection* self) {
	delete self;
}

